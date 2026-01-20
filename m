Return-Path: <devicetree+bounces-257245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC02D3C48E
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:06:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 86D95700AE8
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 09:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A020A3B8D60;
	Tue, 20 Jan 2026 09:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="nBKB4/EA"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E402F9985
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 09:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768901973; cv=none; b=udOQ3Lnt/ZR08rg9fOUwj9nGz1fZpqirI0B7kLXigviwE+OLrtNKBb2snfQCP4yL3vcCpct4UC4+za/SExl5eTM5iyL75kfaCPGoXFQJJWYyCoZyQshDYY54heRhn8oa5ZZRZHIxEl6oaE8BiqxhNksaASNhwjs4/nssRbu4h2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768901973; c=relaxed/simple;
	bh=ufHFDH1/50zvhnPhhKhH1Lcz4iz9U2zVIXJvSWztIlA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GxaIoe0IO7jfUfWTMTPVQP5G7BgUZncMDLEGZ9HL6R5I4xqzt8qJ8COC5ATeenC2MzFoVn3Im/nLoEM+eO1iJCxtQUHE0Uxw72wAKMe6qfa/XyaMFT6/zbQZmtt9jBTK3w+30JfDmDjFUEn6TclJIbEz7vSYfhgtK97ljBYcj0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=nBKB4/EA; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=PFutUY1+i2Abz9/+lY5B5zMjLAf/XXdfuIZO3h7kvBM=; b=nBKB4/EAuIVUXD7uTW+HFPaqwH
	8SoYNERmA9r66r3fPJ0dl+CIwPnBX+/yck3ZaK36E1UHlrjnLd3oKf1PR0IZd2YzEHak1qHhy0EzM
	5Snni4/f96kjJz2/HmlcMvWL8xNZ5G1nDWWZTokDXADQDUxJptjz2Dfv658Z1ZnfxLFlLajLQCTOX
	JgQv+LoQgcTYjMBqTzQGFRZ6BDHLMWKPvjwteQU24ZVYjVvgM84HV3PHKlRLWcohApaTsUHDNuexJ
	PRnnbtwe0fiGq2DXCxrJaAMNirW8JXpu8HGBl5QPlX6vTmNDE97l/SmvnJmAnPstW8fpahRwykmk/
	oKGbEWoQ==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vi8Cv-003KZM-5h; Tue, 20 Jan 2026 10:39:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Luis Garcia <git@luigi311.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Olivier Benjamin <olivier.benjamin@bootlin.com>,
	megi@xff.cz
Subject: Re: [PATCH 0/1] Fix imx258 variant on pinephone pro
Date: Tue, 20 Jan 2026 10:39:26 +0100
Message-ID: <176890189889.310054.17634541522861042266.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260118214620.3319040-1-git@luigi311.com>
References: <20260118214620.3319040-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 18 Jan 2026 14:46:19 -0700, Luis Garcia wrote:
> imx258 had the driver updated a while back and it introduced
> two variants, the imx258 and imx258-pdaf. The pinephone pro
> is using the pdaf variant so this switches it to the correct
> variant and eliminates the pdaf pixels from the sensor output
> resulting in a much cleaner image.
> 
> Luis Garcia (1):
>   arm64: dts: rockchip: Fix imx258 variant on pinephone pro
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix imx258 variant on pinephone pro
      commit: 6742b998166485558ccb0e89b5d5fd93c1aae3ca

In the future, please don't send v2 patches as replies to the
previous version and instead start a new thread.

Next versions as replies, does sometimes confusing tooling.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

