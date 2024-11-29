Return-Path: <devicetree+bounces-125527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 311B99DE2C0
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 13:20:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B42EFB21E01
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 12:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E130E19CC08;
	Fri, 29 Nov 2024 12:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="2yVkBRBm"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798B119A298
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 12:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732882840; cv=none; b=Qn7wve6v42R7hsHYRTirvzOW09fh6cEsSTUqAYt0lfXgFLaLXTd4XbiHMjH2XIbMF4vn9VRfkAru7KtFCQ0EthP0QXiBU96QeXyhRYhiP8PR0PEw76IpYczW1wRDzv9cxri3hH1DBqDDRNWO+/yFpWz0IkWGMUnQnHCfsdyhehI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732882840; c=relaxed/simple;
	bh=g4hpO1RCDYSO9kOtgbxzEaGdpYTqaArHzXqRY41Gh1A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iTcAJq5OlZT40L2HjvkCmJdrdxRor8W/UqUhq7Tsvzm9a2+lFLdC7m8QYp92+69dhEQy3B5GLLxa3Bl6Kc+FMZju5hUcfxTeclfNUb+HGXWYWcGRDOaYvL7fBlr+E4gja9t7yIlbgg24vFFqOkSDAUlRkSqiaLRV3rG9H9y199g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=2yVkBRBm; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=W5a3HwcPTaak4cutycrCi/YaxLnuO0j5R5s4U8p5IJo=; b=2yVkBRBmkEBP0bBxu4TchU+Oiu
	8/H4rEuUVYymo0Y+ITzXhAZCR7Uk/gbYx0ycL6bKFsFpapEmEnkbZyvqiZleXy9SONyxyWW+HxDy+
	iFrDBfJ+RPW4fRMXbdsigA1rI0RsADGmK9VsGn/RQZa/nxUvl5CWIUbAhIHs5J3f7euivggAQomr6
	n0L7zlpRzKoToswfRMJS634BG+NEagUNv1iu+Q68ZwWmrJ2XfeIAzK9isNWRWJd/8Pj5nSEqQY4b3
	nCO2HtWVODuxoAKcXp41/Lmwmtfq67thI7Q34dMpVohiJ3YiwmC7FFcgCrHtVzzH+XQXu9cd3ZKZ6
	RIAI9YYw==;
Received: from i5e86190f.versanet.de ([94.134.25.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tGzyn-0006p4-BZ; Fri, 29 Nov 2024 13:20:13 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 macromorgan@hotmail.com, jonas@kwiboo.se, andyshrk@163.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>, dsimic@manjaro.org, didi.debian@cknow.org
Subject:
 Re: [PATCH] arm64: dts: rockchip: add support for device tree overlays for
 Radxa devices
Date: Fri, 29 Nov 2024 13:20:12 +0100
Message-ID: <1952472.6tgchFWduM@diego>
In-Reply-To: <20241129002419.60404-1-naoki@radxa.com>
References: <20241129002419.60404-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hey,

Am Freitag, 29. November 2024, 01:24:19 CET schrieb FUKAUMI Naoki:
> since Radxa devices use device tree overlays[1][2][3], make base .dts
> support them.

this essentially doubles the sizes of generated DTBs.

In previous iterations there were concerns that this might overload
allocated memory in legacy firmware that might still run on people's
devices.

I'm not sure if someone did look deeper into that meanwhile and you
can't of course not require people to update u-boot just for a kernel
upgrade. Hence previous overlays do not enable those options but instead
depend on "distributions" to handle that.

So I'm definitly not sure how to proceed with this.


Heiko

> [1] arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
> [2] arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-srns.dtso
> [3] https://github.com/radxa-pkg/radxa-overlays
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile | 28 +++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 86cc418a2255..cac3f39af82a 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -1,4 +1,32 @@
>  # SPDX-License-Identifier: GPL-2.0
> +
> +# Enables support for device tree overlays for Radxa devices
> +DTC_FLAGS_rk3308-rock-pi-s := -@
> +DTC_FLAGS_rk3308-rock-s0 := -@
> +DTC_FLAGS_rk3328-rock-pi-e := -@
> +DTC_FLAGS_rk3399-rock-4c-plus := -@
> +DTC_FLAGS_rk3399-rock-4se := -@
> +DTC_FLAGS_rk3399-rock-pi-4a-plus := -@
> +DTC_FLAGS_rk3399-rock-pi-4a := -@
> +DTC_FLAGS_rk3399-rock-pi-4b-plus := -@
> +DTC_FLAGS_rk3399-rock-pi-4b := -@
> +DTC_FLAGS_rk3399-rock-pi-4c := -@
> +DTC_FLAGS_rk3399pro-rock-pi-n10 := -@
> +DTC_FLAGS_rk3528-radxa-e20c := -@
> +DTC_FLAGS_rk3566-radxa-cm3-io := -@
> +DTC_FLAGS_rk3566-radxa-cm3.dtsi := -@
> +DTC_FLAGS_rk3566-radxa-zero-3e := -@
> +DTC_FLAGS_rk3566-radxa-zero-3w := -@
> +DTC_FLAGS_rk3566-rock-3c := -@
> +DTC_FLAGS_rk3568-radxa-cm3i.dtsi := -@
> +DTC_FLAGS_rk3568-radxa-e25 := -@
> +DTC_FLAGS_rk3568-rock-3a := -@
> +DTC_FLAGS_rk3568-rock-3b := -@
> +DTC_FLAGS_rk3588-rock-5-itx := -@
> +DTC_FLAGS_rk3588-rock-5b := -@
> +DTC_FLAGS_rk3588s-rock-5a := -@
> +DTC_FLAGS_rk3588s-rock-5c := -@
> +
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
> 





