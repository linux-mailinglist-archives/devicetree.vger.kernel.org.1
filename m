Return-Path: <devicetree+bounces-195871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEF1B03679
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 08:02:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 734EA172586
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 06:02:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F11628634F;
	Mon, 14 Jul 2025 06:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7fEW1NM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC81837160
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752472958; cv=none; b=enay+G+gaNT0J9mqi5ryXHFXzhlJs+o5z130sUJdQkmB+aZDufW5g2BzYGbfELPHxrqdJMszbdPKMRqmuYYo7xn8awm/j9fbN76vMtDJvSJs5Hy2OEVtSP+WQi33jYpGBn9HwOrq2Zv+FxqWN88SJAvq6pfiI7duAcSCwEgzZ6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752472958; c=relaxed/simple;
	bh=mwksL5g+ek+4+NJV5sWXHoC3uZulpG3hdPudzC2//WE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HEZWM+/OcCO/9LzehqHhxy5eJ8xGaex87jHmlugB8uQsG9vQcM/mHnUKAMS4ty0yyygfH05TCoPbSSTL96mcWwBzYQaj23+VdTgmG2jZdrUB6FZj0kvEM9Ntp9JZ8cM1e3Y0HKupLepYyoVVQV0lSDiqIwpKzmttzLPEr8yhdv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7fEW1NM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD1D4C4CEED;
	Mon, 14 Jul 2025 06:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752472958;
	bh=mwksL5g+ek+4+NJV5sWXHoC3uZulpG3hdPudzC2//WE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q7fEW1NMcgVLY9/EsCySsOSV7cx9B4TKxh2qRERIQArZhdyyo4rv3au33Vc4dELw8
	 Qqf2CbS7Kotn+iqHYNSPbJfZzR+qcv0XMuauiO7s8aSe+5kXEV7+ebbhujDzeZHu4M
	 3Gqgf92zITOpwotvUdwKgVgeJR7SCBD6AA5qRaN9wqCCuemCgal+pTMb1Fpvg84GU0
	 2Q9QjteS6bNoM6P1FQUvx7PVz0HR9x5UOLKotU/RA7lzw1/N8C9857lCGtj6Fy7HsZ
	 PtBo5+qJ4CvLPJPsisCHnmZq5MBUXcz/FJ6SPqAUL4FhD7GCo+gV2NQfjF2vevFRCv
	 tZGAS++M3X4pQ==
Date: Mon, 14 Jul 2025 08:02:35 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	heiko@sntech.de, quentin.schulz@cherry.de, dsimic@manjaro.org, naoki@radxa.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add OneThing Cloud OEC turbo
Message-ID: <20250714-wise-tall-parrot-3e4347@krzk-bin>
References: <20250713163255.163669-1-jerrysteve1101@gmail.com>
 <20250713163255.163669-4-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250713163255.163669-4-jerrysteve1101@gmail.com>

On Mon, Jul 14, 2025 at 12:32:55AM +0800, Jun Yan wrote:
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3566.dtsi"
> +
> +/ {
> +	model = "OneThing Cloud OEC turbo";
> +	compatible = "onething,cloud-oec-turbo", "rockchip,rk3566";
> +
> +	aliases {
> +		ethernet0 = &gmac1;
> +		mmc0 = &sdhci;
> +	};
> +
> +	chosen: chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	/* No hardware video output port */
> +	/delete-node/ display-subsystem;

Nodes should be disabled, not removed. What does it mean it is being
removed? You physically take it out from the hardware? How could it
exist in the first place in the SoC if it is not present on the board?

> +
> +	gmac1_clkin: external-gmac1-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <125000000>;
> +		clock-output-names = "gmac1_clkin";
> +		#clock-cells = <0>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		rgb_led_r: rgb-led-r {

led-0

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +			color = <LED_COLOR_ID_RED>;
> +			default-state = "off";
> +			function = LED_FUNCTION_STATUS;
> +			gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_LOW>;
> +		};

...

> +
> +&gmac1 {
> +	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
> +	phy-mode = "rgmii";
> +	clock_in_out = "input";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac1m1_miim
> +		    &gmac1m1_tx_bus2
> +		    &gmac1m1_rx_bus2
> +		    &gmac1m1_rgmii_clk
> +		    &gmac1m1_rgmii_bus
> +		    &gmac1m1_clkinout>;
> +	snps,reset-gpio = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	/* Reset time is 20ms, 100ms for rtl8211f */
> +	snps,reset-delays-us = <0 20000 100000>;
> +
> +	tx_delay = <0x4f>;
> +	rx_delay = <0x2d>;
> +	phy-handle = <&rgmii_phy1>;
> +	status = "okay";
> +};
> +
> +&gpu {
> +	status = "okay";
> +};
> +
> +&mdio1 {
> +	rgmii_phy1: ethernet-phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x1>;
> +	};
> +};
> +
> +&pinctrl {
> +	usb {
> +		vcc5v0_usb_host_en: vcc5v0_usb_host_en {

Follow DTS coding style.

> +			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +};

Best regards,
Krzysztof


