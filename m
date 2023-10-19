Return-Path: <devicetree+bounces-10151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBBA7CFD01
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:40:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD521282000
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6625E1C29;
	Thu, 19 Oct 2023 14:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Znm28M5/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C76A2FE0D
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:40:11 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::226])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A15DB134;
	Thu, 19 Oct 2023 07:40:08 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id C5BFFC0003;
	Thu, 19 Oct 2023 14:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1697726407;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Pmm8Q07dkPahTgNLJtB+xWmt+V5zpMFGkuu9DbCNKbA=;
	b=Znm28M5/V7eKHrQ5JvZIOYpojF07AS8pLeHES7wDRVCPnm6dp+BBsV/c6Tzd9+K2fv4lfZ
	CSfA3zrU+aH/MqGxqE3wY+q/a+oB2nTmDaSnzALEkazmxlFrV7AAvnxJY9l4plVs9gabHs
	aH6TVJGKRyXHhDkYCaspv5nYWuv5p2ObO3o4STFACudCkDnVIKpjL6NT+SATrhfJtZavnC
	gv/hJycHILV9ICwxYmcmGqGlhyhaZ9DXRoUylDupp3V3yIGNy0mrHUh/z2PEb+R5G65yOb
	W9FSqaYSIJXp5jwJswx6MDuTlEGtf5aGEvoh6RcPmwvYKBP8tcRU6E1NxFlI0A==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 andi.shyti@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 pierre.gondois@arm.com
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chris Packham
 <chris.packham@alliedtelesis.co.nz>
Subject: Re: [PATCH v2 2/3] arm64: dts: marvell: AC5: use I2C unstuck function
In-Reply-To: <20231006003321.2100016-3-chris.packham@alliedtelesis.co.nz>
References: <20231006003321.2100016-1-chris.packham@alliedtelesis.co.nz>
 <20231006003321.2100016-3-chris.packham@alliedtelesis.co.nz>
Date: Thu, 19 Oct 2023 16:40:05 +0200
Message-ID: <87a5sead6i.fsf@BL-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-GND-Sasl: gregory.clement@bootlin.com

Hello Chris,

> The AC5 SoC supports using a controller based I2C unstuck function for
> recovery. Use this instead of the generic GPIO recovery.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
>  arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi b/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
> index c9ce1010c415..e52d3c3496d5 100644
> --- a/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
> +++ b/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
> @@ -137,7 +137,7 @@ mdio: mdio@22004 {
>  
>  			i2c0: i2c@11000{
>  				compatible = "marvell,mv78230-i2c";
> -				reg = <0x11000 0x20>;
> +				reg = <0x11000 0x20>, <0x110a0 0x4>;
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  
> @@ -146,17 +146,14 @@ i2c0: i2c@11000{
>  				interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
>  				clock-frequency=<100000>;
>  
> -				pinctrl-names = "default", "gpio";
> +				pinctrl-names = "default";
>  				pinctrl-0 = <&i2c0_pins>;
> -				pinctrl-1 = <&i2c0_gpio>;
> -				scl-gpios = <&gpio0 26 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> -				sda-gpios = <&gpio0 27 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;

By doing this then older kernel won't be able to do recovery, while if
you keep it, the new kernels will still use new way to support recovery
thanks to the new reg filed added and old kernels will continue to work.

However, what we try to maintain is running new kernel on old dtb not
the opposite which is just a nice to have. At the end it is up to you,
if you really want to remove this chunk I will apply it once the driver
part of the series will be accepted.

Gregory


>  				status = "disabled";
>  			};
>  
>  			i2c1: i2c@11100{
>  				compatible = "marvell,mv78230-i2c";
> -				reg = <0x11100 0x20>;
> +				reg = <0x11100 0x20>, <0x110a4 0x4>;
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  
> @@ -165,11 +162,8 @@ i2c1: i2c@11100{
>  				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
>  				clock-frequency=<100000>;
>  
> -				pinctrl-names = "default", "gpio";
> +				pinctrl-names = "default";
>  				pinctrl-0 = <&i2c1_pins>;
> -				pinctrl-1 = <&i2c1_gpio>;
> -				scl-gpios = <&gpio0 20 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> -				sda-gpios = <&gpio0 21 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  				status = "disabled";
>  			};
>  
> -- 
> 2.42.0
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

