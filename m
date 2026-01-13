Return-Path: <devicetree+bounces-254721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF03D1B497
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 21:49:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B14D304C2A7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 20:47:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6B5031AF07;
	Tue, 13 Jan 2026 20:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="q4zE4dhN"
X-Original-To: devicetree@vger.kernel.org
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847B931A7FB;
	Tue, 13 Jan 2026 20:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.181.215.36
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768337249; cv=none; b=YqINp+1PTYkK13PXrCAsUJJ9XcCO+udtArF/LXmVqPbG9p66X/3kJ8haVGaIcdgNOrXP0aidbu3SjoEFnERuAY96JQNd+oFKk6ip5Id+rabhvfny5cb0H4fwb9/zxacL9XwEhljm5ohDqDP6z7PsoRzdZnqGzTClFHgSlJWAwTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768337249; c=relaxed/simple;
	bh=hWrZZunWsipzcghZEAhCAL3jHCIwP3xLLsKe63y96aw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xv4USQNGM8oxfTE9W9mQ8b2XOGQgMxfP5JbJdeioxPRJiCbYRg1izcsyyK2Jul1kghg9Z+T4sXOi5lrU5mVU0QfpIjukMXsi3+vg2OgOTCgr5Mfkhg5tSEbzl+DXwEsmS8nop6AsTrbgroMF6PRr81jdyRMZb1HhUYlwhufg0gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz; spf=pass smtp.mailfrom=xff.cz; dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b=q4zE4dhN; arc=none smtp.client-ip=195.181.215.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xff.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1768337245; bh=hWrZZunWsipzcghZEAhCAL3jHCIwP3xLLsKe63y96aw=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=q4zE4dhNymRMRVwEENUGImW2GppYGQLpzE7No0RPawTtNhaG3Srv/ap3p3vSZd+4o
	 /qCWZE0OAQnzxi9hsg6z0pfwIZ01oImCDR+Y6wWCbFJnloMxINicKyXF04Oir0pvwR
	 e7JT1/IIBm95ogLzn4UgziDNf4rKn32ZxptWU850=
Date: Tue, 13 Jan 2026 21:47:25 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: guptarud@gmail.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Martijn Braam <martijn@brixit.nl>, Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>, 
	Danct12 <danct12@disroot.org>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add modem to the Pinephone Pro
Message-ID: <ngikrgfwonxbgim2cp3xiqbahgxhsmsaou6lblcbna7wrb6wdr@djb46eqys7tx>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	guptarud@gmail.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Martijn Braam <martijn@brixit.nl>, Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>, 
	Danct12 <danct12@disroot.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
 <20260112-ppp_connectivity-v1-1-284d6e83b212@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260112-ppp_connectivity-v1-1-284d6e83b212@gmail.com>

Hello Rudraksha,

On Mon, Jan 12, 2026 at 10:42:24PM -0800, Rudraksha Gupta via B4 Relay wrote:
> From: Rudraksha Gupta <guptarud@gmail.com>
> 
> This adds the Quectel EG25-G modem to the Pinephone Pro.
> 
> Co-developed-by: Martijn Braam <martijn@brixit.nl>
> Signed-off-by: Martijn Braam <martijn@brixit.nl>
> Co-developed-by: Kamil Trzciński <ayufan@ayufan.eu>
> Signed-off-by: Kamil Trzciński <ayufan@ayufan.eu>
> Co-developed-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Co-developed-by: Danct12 <danct12@disroot.org>
> Signed-off-by: Danct12 <danct12@disroot.org>
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3399-pinephone-pro.dts     | 83 ++++++++++++++++++++++
>  1 file changed, 83 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index 6b35f59cd58e..97d0bf455258 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -97,6 +97,46 @@ multi-led {
>  		leds = <&led_red>, <&led_green>, <&led_blue>;
>  	};
>  
> +	vcc_4g_5v: regulator-vcc-4g-5v {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PC7 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc_4g_5v_en>;
> +		regulator-name = "vcc_4g_5v";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc5v0_sys>;
> +		regulator-always-on;
> +	};
> +
> +	vcc_4g: regulator-vcc-4g {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PC7 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc_4g_en>;
> +		regulator-name = "vcc_4g";
> +		regulator-min-microvolt = <3800000>;
> +		regulator-max-microvolt = <3800000>;
> +		vin-supply = <&vcc_sys>;
> +		regulator-always-on;
> +	};
> +
> +	vcc5v0_sys: regulator-vcc5v0-host {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&boost_otg>;
> +
> +		regulator-state-mem {
> +			regulator-on-in-suspend;
> +		};

This does nothing for regulator-fixed. And in any case, there's no such
regulator in the schematic. vcc5v0_sys is just alias for boost output from
RK818.

See: https://xff.cz/dl/tmp/0864afaf8d21b1a5.png

So you can remove this completely and just add vcc5v0_sys alias to DCDC_BOOST.

Best regards,
	o.

> +	};
> +
>  	vcc_sys: regulator-vcc-sys {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc_sys";
> @@ -274,6 +314,17 @@ rk818: pmic@1c {
>  		vcc9-supply = <&vcc3v3_sys>;
>  
>  		regulators {
> +			boost_otg: DCDC_BOOST {
> +				regulator-name = "boost_otg";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <5000000>;
> +				regulator-max-microvolt = <5000000>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
>  			vdd_cpu_l: DCDC_REG1 {
>  				regulator-name = "vdd_cpu_l";
>  				regulator-always-on;
> @@ -702,6 +753,16 @@ blue_led_pin: blue-led-pin {
>  		};
>  	};
>  
> +	modem {
> +		vcc_4g_5v_en: vcc-4g-5v-en-pin {
> +			rockchip,pins = <1 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc_4g_en: vcc-4g-en-pin {
> +			rockchip,pins = <4 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	pmic {
>  		pmic_int_l: pmic-int-l {
>  			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
> @@ -827,6 +888,16 @@ &tsadc {
>  	status = "okay";
>  };
>  
> +
> +&u2phy1 {
> +	status = "okay";
> +};
> +
> +&u2phy1_host {
> +	status = "okay";
> +	phy-supply = <&vcc5v0_sys>;
> +};
> +
>  &uart0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
> @@ -852,6 +923,18 @@ &uart2 {
>  	status = "okay";
>  };
>  
> +&uart3 {
> +	status = "okay";
> +};
> +
> +&usb_host1_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host1_ohci {
> +	status = "okay";
> +};
> +
>  &vopb {
>  	status = "okay";
>  	assigned-clocks = <&cru DCLK_VOP0_DIV>, <&cru DCLK_VOP0>,
> 
> -- 
> 2.52.0
> 
> 

