Return-Path: <devicetree+bounces-235872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B858C3DB4C
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 23:58:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A5C174E2750
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 22:58:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DDBF309F18;
	Thu,  6 Nov 2025 22:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="0oIE+TDk"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0BF2330B2D
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 22:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762469921; cv=none; b=sKDTfFoeBXQfpviheqLfy5fKna+sV3jtDTkZ6ApLWT7eokL6UPDm3mhiHJJYgmWVQilJNEJUeaCkiBq6buMG2GJGsPdJTjsq9MzTU+aiKxXGrwonaL8xdI1TmCM8Z2ianJ1EMsqQM1J9+WTeQSmxSmXNzyorXFU2OP2FjoYRTQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762469921; c=relaxed/simple;
	bh=/k5pajOWno4WAO84wwtFL3pOVGas3cRNxM7b0eCqNUg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JfCgGzi3DtMslVvKfq8EZHYsGdFeVDFQeMcMc+o+buUF2Y1uhAtiY67NWCR/T1FkyDX9DihDlrpvES65cdiU3xdK4kTPCim9ziPWUsNAl2hr3LHqkG+E+bpc/60EY/thxbabDkTEC54AiVgs1eYJfF1wMKTt1U5ajt+WQnKqQXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=0oIE+TDk; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=yLGl7PzNPrdk/BRbrx08T1/GhgcZAys2R92RWoPbyHU=; b=0oIE+TDkUR5Xe9oW4u1KQvnBDI
	mvNZlhFQ93tSoMj+tW+QRijfF+cVMrnkH4YLtQKQDX4dDbmpCD1Khn8vhsyOqddP0yYsQbOL9PFlS
	z0yJTeUEqSvf7YuX7cMvrm6iR4GSWjeLFzq3IKLYXztiuj9oKUEUn2kXTFGGX0d2H95FlrCHAfRWZ
	eIV/0h8Rv8TLknTZvJgmHnzi2hd4nDGdBqzrJfgFZaOhHzK0fLK3/hVf2q7mvF0a9DZugVtue6f8R
	293OZgDEJUPy/mTr6/cfih+Z3jYNAruQJEwf3VqaSKm+wIZv3g47ggaS9MMeQ1JvtKOCzou20/+qD
	86TFcWfw==;
Received: from i53875bac.versanet.de ([83.135.91.172] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vH8w9-0001pr-PN; Thu, 06 Nov 2025 23:58:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Andrey Leonchikov <andreil499@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix USB power enable pin for BTT CB2 and Pi2
Date: Thu,  6 Nov 2025 23:58:31 +0100
Message-ID: <176246989731.210200.17367570635141107915.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251105210741.850031-1-andreil499@gmail.com>
References: <20251105210741.850031-1-andreil499@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 05 Nov 2025 22:07:33 +0100, Andrey Leonchikov wrote:
>  Fix typo into regulator GPIO definition. With current
>  definition - USB powered off. Valid definition can be found on "pinctrl"
>  section:
>  		vcc5v0_usb2t_en: vcc5v0-usb2t-en {
>  				rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
>  				 		};
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix USB power enable pin for BTT CB2 and Pi2
      commit: a59e927ff46a967f84ddf94e89cbb045810e8974

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

