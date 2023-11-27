Return-Path: <devicetree+bounces-19062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB3C7F98FA
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 06:58:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2BE5DB20A35
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 05:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B25563CC;
	Mon, 27 Nov 2023 05:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B8F4139
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 21:58:39 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7Ude-0003l6-As; Mon, 27 Nov 2023 06:58:34 +0100
Message-ID: <962e1d33-bc97-6bf8-b94d-581762dd6afa@pengutronix.de>
Date: Mon, 27 Nov 2023 06:58:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 2/4] arm64: dts: freescale: Add support for the
 Variscite DART-MX8M-PLUS SoM
Content-Language: en-US
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Marco Contenti <marco.c@variscite.com>, Nate Drude <nate.d@variscite.com>,
 FrancescoFerraro <francesco.f@variscite.com>,
 Harshesh Valera <harshesh.v@variscite.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20231025165058.31697-1-laurent.pinchart@ideasonboard.com>
 <20231025165058.31697-3-laurent.pinchart@ideasonboard.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231025165058.31697-3-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello Laurent,

On 25.10.23 18:50, Laurent Pinchart wrote:
> +	reg_eqos_phy: regulator-eqos-phy {
> +		compatible = "regulator-fixed";
> +		regulator-name = "eqos-phy";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio2 20 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;

Apparently, https://lore.kernel.org/all/20230721110345.3925719-1-m.felsch@pengutronix.de/
didn't make it upstream. Perhaps you mentioning that you could use this would help get
it unstuck? :)

> +&eqos {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_eqos>;
> +	phy-mode = "rgmii";
> +	phy-handle = <&ethphy0>;
> +	status = "okay";
> +
> +	mdio {
> +		compatible = "snps,dwmac-mdio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +			eee-broken-1000t;
> +			reset-gpios = <&gpio2 11 GPIO_ACTIVE_LOW>;

Nitpick: Separate pinctrl entry for PHY GPIOs that's added to the PHY node?
Makes it easier to check that all used signals are indeed muxed.

> +	pmic@25 {
> +		compatible = "nxp,pca9450c";
> +		reg = <0x25>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +
> +		regulators {
> +			BUCK1 {
> +				regulator-name = "BUCK1";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <2187500>;

Nitpick: These may be the limits of what the BUCK can output, but they
don't look like a safe operating range for the board. The Linux driver already
has ranges hardcoded to cover what's possible by the hardware, so if you specify
regulator range here, it should pertain to what the board and SoC are designed
to handle.

> +/* eMMC */
> +&usdhc3 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> +	bus-width = <8>;
> +	non-removable;

no-sd
no-sdio

may give you a tiny bit of speedup during probe, if you know that there will
always be an eMMC here.

> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL					0x400001c2
> +			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA					0x400001c2
> +		>;
> +	};
> +
> +	pinctrl_i2c1_gpio: i2c1gpiogrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C1_SCL__GPIO5_IO14				0x1c2
> +			MX8MP_IOMUXC_I2C1_SDA__GPIO5_IO15				0x1c2

This surprises me. I'd expect that the SION bit needs to be set for GPIO bus recovery.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


