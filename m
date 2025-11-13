Return-Path: <devicetree+bounces-238364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD0DC5A749
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:05:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8393D354346
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 865FB328623;
	Thu, 13 Nov 2025 23:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="sSt1Bii9"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7487327210;
	Thu, 13 Nov 2025 23:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763075083; cv=none; b=O+8FqWd39/JqkqpbmH3AyGLcHvWJ6/8Z6CIFt2/i55vSnuSMp2KTRS5xPqPJjSh0jZu3pSIWGiIA7hQD+ll+5+MRkfVThKIMOUhw8EmGs5wSUCvn18bXSBs09l2MJszNuH9x6JpIRUAdOUOa8KL+bM6WLe9fApeIG2IBvTOWwTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763075083; c=relaxed/simple;
	bh=KPwb6cEnXaljsRKsBF+IB+boWxvq0diJgZbRoFuSWec=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tWHW0pV996xrS0cmssnvYWZQu8eh+aVFpyB7S38Uto/p/7UxeaApS6W4K8qZxFzWDZmK4DD5LecXrcT+izp/2tFvcHk6mS8L++mTjyGFo1u941mXBQnt7r1aZwC8dkaOl04Bk9t3p4nCBmyeYwYnSL9/8jU7wkAW3MvY92gs3UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=sSt1Bii9; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Qb9QVWLvQSLjszFx/cD4yNV/N7YJOyJ+nOOkxxmz2SQ=; b=sSt1Bii9OWPINrJJF8UotjfpPk
	B48T7ehLnvlEcg+eAWlmuo45tUBLAQ5sT060YF7Sckg2vi90GeHOZW6Jdl9TKbD7VLufiERHhetm+
	i7aZWswd5UaiBAcTz690xIcCFhwEosACwY0EhWbx0lYZrvOM/wa55I5BG7oto+oMDzwseRSZe1rP6
	mN5oRyi9q/yHsGaRUNNktfMi1zaMz3EU28AR926TYkVjkmeUKJo8JKIutj+qEbs+hTbdBut5xad+N
	GdB+uUnilwdghAIcNaW3xNp2zHCYpIPtAfRVdPNVk1fx0hfwyet7C/GTF+TaWvQD8/SFKkI7+5m0g
	+arKaUpg==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgMk-0005bo-2s; Fri, 14 Nov 2025 00:04:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Hsun Lai <i@chainsx.cn>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 1/6] arm64: dts: rockchip: add mmc aliases for 100ASK DshanPi A1
Date: Fri, 14 Nov 2025 00:04:21 +0100
Message-ID: <176307502906.495066.9339764118786240746.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251101120010.41729-1-amadeus@jmu.edu.cn>
References: <20251101120010.41729-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 01 Nov 2025 20:00:05 +0800, Chukun Pan wrote:
> Add missing MMC aliases. Remove the max-frequency property
> from the MMC node, which is already defined in rk3576.dtsi.
> 
> 

Applied, thanks!

[2/6] arm64: dts: rockchip: fixes regulator for 100ASK DshanPi A1
      commit: 0b822c59c826f47dc63d9470b4710bd251266cae
[3/6] arm64: dts: rockchip: fixes ethernet for 100ASK DshanPi A1
      commit: 9c79c9e03547068404cca5139dfea281d655ff90
[4/6] arm64: dts: rockchip: fixes supply for 100ASK DshanPi A1
      commit: 621bb09a76fa12a9e61c9d745ae524db86abf781
[5/6] arm64: dts: rockchip: fixes audio for 100ASK DshanPi A1
      commit: e99d922d37351ddcd6e1d3f4623340db547c8398

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

