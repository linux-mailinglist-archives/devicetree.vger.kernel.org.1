Return-Path: <devicetree+bounces-1777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2437A7A83E5
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:51:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2CCD281B9C
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:51:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC01638BA5;
	Wed, 20 Sep 2023 13:51:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AAB036AEE
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 13:51:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5521C433C9;
	Wed, 20 Sep 2023 13:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695217893;
	bh=oSMyNiDXoJuUyoWUNdQBoEB5PwVFvLx/yDJhCLzbTdk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sk2ITEn0e05fqviKABjiBpNFK6jpvIXideMqubJnAG9WVgjngBLQqf2Ru2E1GElS3
	 c27BMC/VmcX7p/epzSb5K6V2RwHdyRxxOTRC3o2zAW+Tuniqnuv0K+ZO/PnWEOWp6I
	 8u8Y71oj4ozl7Xdr3K3YUqtSSGwOn3NvrfLum11xyONpYcs64LKNU6QCU4/n+SwCTM
	 vElm2d7vvfh+epAAimGRToyr5HR8aYzYoZC7Yia8qhxBKsryb7SA78W3M3e+8QIym4
	 DQBY0NYxXjT6KqMkPaPithOx62HPs7EYUcX4ssbtySGd713/YTcnjrogR8v8yX0zoS
	 8mUmelV8tzi7w==
Date: Wed, 20 Sep 2023 15:51:25 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: James Hilliard <james.hilliard1@gmail.com>
Cc: devicetree@vger.kernel.org,
	Pierluigi Passaro <pierluigi.p@variscite.com>,
	Fabio Estevam <festevam@gmail.com>,
	Gregory CLEMENT <gregory.clement@bootlin.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, Marek Vasut <marex@denx.de>,
	Stefan Wahren <stefan.wahren@chargebyte.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Andreas Kemnade <andreas@kemnade.info>,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	Li Yang <leoyang.li@nxp.com>, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v8 2/3] ARM: dts: imx6qdl: Add Variscite VAR-SOM-MX6 SoM
 support
Message-ID: <20230920135124.GE11740@T480>
References: <20230811072009.55400-1-james.hilliard1@gmail.com>
 <20230811072009.55400-2-james.hilliard1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230811072009.55400-2-james.hilliard1@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Aug 11, 2023 at 01:20:05AM -0600, James Hilliard wrote:
> This patch adds support for the Variscite VAR_SOM-MX6 SoM with :
> - i.MX6 Quad or Dual Lite SoC
> - 256 – 4096 MB DDR3
> - 4-64 GB eMMC
> - 128 – 1024 MB SLC NAND
> - Camera Interface
> - HDMI+CEC interface
> - LVDS / DSI / Parallel RGB interfaces
> - Ethernet RGMII interface
> - On-SoM Wi-Fi/Bluetooth with WiLink wl183x SDIO Module
> - SD/MMC/SDIO interface
> - USB Host + USB OTG interface
> - I2C interfaces
> - SPI interfaces
> - PCI-Express 2.0 interface
> - on-SoM Audio Codec with HP/Line-In interfaces + DMIC interface
> - Digital Audio interface
> - S/PDIF interface
> 
> Product website : https://www.variscite.com/product/system-on-module-som/cortex-a9/var-som-mx6-cpu-freescale-imx6/
> 
> Support is handled with a SoM-centric dtsi exporting the default interfaces
> along the default pinmuxing to be enabled by the board dts file.
> 
> This file is based on the one provided by Variscite on their own
> kernel, but adapted for mainline.
> 
> Cc: Pierluigi Passaro <pierluigi.p@variscite.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
> ---
>  .../arm/boot/dts/nxp/imx/imx6qdl-var-som.dtsi | 589 ++++++++++++++++++
>  1 file changed, 589 insertions(+)
>  create mode 100644 arch/arm/boot/dts/nxp/imx/imx6qdl-var-som.dtsi
> 
> diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-var-som.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-var-som.dtsi
> new file mode 100644
> index 000000000000..5bdde20c1e88
> --- /dev/null
> +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-var-som.dtsi
> @@ -0,0 +1,589 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Support for Variscite VAR-SOM-MX6 Module
> + *
> + * Copyright 2011 Linaro Ltd.
> + * Copyright 2012 Freescale Semiconductor, Inc.
> + * Copyright (C) 2014-2016 Variscite, Ltd.
> + * Author: Donio Ron <ron.d@variscite.com>
> + * Copyright 2022 Bootlin
> + */
> +
> +/dts-v1/;
> +
> +#include "imx6q.dtsi"
> +#include <dt-bindings/clock/imx6qdl-clock.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/sound/fsl-imx-audmux.h>
> +
> +/ {
> +	model = "Variscite VAR-SOM-MX6 module";
> +	compatible = "variscite,var-som-imx6q", "fsl,imx6q";
> +
> +	chosen {
> +		stdout-path = &uart1;
> +	};
> +
> +	memory@10000000 {
> +		device_type = "memory";
> +		reg = <0x10000000 0x40000000>;
> +	};
> +
> +	reg_usb_otg_vbus: regulator-usb-otg-vbus {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb_otg_vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	reg_usb_h1_vbus: regulator-usb-h1-vbud {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb_h1_vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	reg_1p8v: regulator-1p8v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "1P8V";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_3p3v: regulator-3p3v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3P3V";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_wl18xx_vmmc: regulator-wl18xx {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vwl1807";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		gpio = <&gpio7 8 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		startup-delay-us = <70000>;
> +	};
> +
> +	sound: sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "var-som-audio";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,bitclock-master = <&sound_codec>;
> +		simple-audio-card,frame-master = <&sound_codec>;
> +		simple-audio-card,widgets = "Headphone", "Headphone Jack",
> +					    "Line", "Line In", "Microphone", "Mic Jack";
> +		simple-audio-card,routing = "Headphone Jack", "HPLOUT",
> +					    "Headphone Jack", "HPROUT",
> +					    "LINE1L", "Line In",
> +					    "LINE1R", "Line In";
> +
> +		sound_cpu: simple-audio-card,cpu {
> +			sound-dai = <&ssi2>;
> +		};
> +
> +		sound_codec: simple-audio-card,codec {
> +			sound-dai = <&tlv320aic3106>;
> +			clocks = <&clks IMX6QDL_CLK_CKO>;
> +		};
> +	};
> +
> +	rfkill {
> +		compatible = "rfkill-gpio";
> +		name = "rfkill";
> +		radio-type = "bluetooth";
> +		shutdown-gpios = <&gpio6 18 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
> +&cpu0 {
> +	operating-points = <
> +		/* kHz    uV */
> +		1200000 1350000
> +		996000  1250000
> +		852000  1250000
> +		792000  1175000
> +		396000  1175000
> +	>;
> +
> +	fsl,soc-operating-points = <
> +		/* ARM kHz  SOC-PU uV */
> +		1200000 1275000
> +		996000	1250000
> +		852000	1250000
> +		792000	1250000
> +		396000	1250000
> +	>;

Could you add some comments here saying why you need a custom OPP table?

> +};
> +
> +&audmux {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_audmux>;
> +	status = "okay";
> +
> +	mux-ssi2 {
> +		fsl,audmux-port = <1>;
> +		fsl,port-config = <
> +			(IMX_AUDMUX_V2_PTCR_SYN |
> +			IMX_AUDMUX_V2_PTCR_TFSDIR |
> +			IMX_AUDMUX_V2_PTCR_TFSEL(2) |
> +			IMX_AUDMUX_V2_PTCR_TCLKDIR |
> +			IMX_AUDMUX_V2_PTCR_TCSEL(2))
> +			IMX_AUDMUX_V2_PDCR_RXDSEL(2)
> +		>;
> +	};
> +
> +	mux-aud3 {
> +		fsl,audmux-port = <2>;
> +		fsl,port-config = <
> +			IMX_AUDMUX_V2_PTCR_SYN
> +			IMX_AUDMUX_V2_PDCR_RXDSEL(1)
> +		>;
> +	};
> +};
> +
> +&ecspi3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi3>;
> +	cs-gpios = <&gpio4 24 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rgmii";
> +	phy-handle = <&rgmii_phy>;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		rgmii_phy: ethernet-phy@7 {
> +			reg = <7>;
> +			reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
> +			reset-assert-us = <10000>;
> +		};
> +	};
> +};
> +
> +&i2c2 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +
> +	pmic@8 {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		compatible = "fsl,pfuze100";
> +		reg = <0x08>;

We usually start property list from compatible and reg.  So can you move
pinctrl ones after?

> +
> +		regulators {
> +			sw1a_reg: sw1ab {
> +				regulator-min-microvolt = <300000>;
> +				regulator-max-microvolt = <1875000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <6250>;
> +			};
> +
> +			sw1c_reg: sw1c {
> +				regulator-min-microvolt = <300000>;
> +				regulator-max-microvolt = <1875000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <6250>;
> +			};
> +
> +			sw2_reg: sw2 {
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			sw3a_reg: sw3a {
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3950000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			sw3b_reg: sw3b {
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3950000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			sw4_reg: sw4 {
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3950000>;
> +			};
> +
> +			snvs_reg: vsnvs {
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			vref_reg: vrefddr {
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			vgen1_reg: vgen1 {
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1550000>;
> +			};
> +
> +			vgen2_reg: vgen2 {
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1550000>;
> +			};
> +
> +			vgen3_reg: vgen3 {
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +			};
> +
> +			vgen4_reg: vgen4 {
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +			};
> +
> +			vgen5_reg: vgen5 {
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +			};
> +
> +			vgen6_reg: vgen6 {
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +			};
> +		};
> +	};
> +
> +	tlv320aic3106: codec@1b {

audio-codec as the node name?

> +		compatible = "ti,tlv320aic3106";
> +		reg = <0x1b>;
> +		#sound-dai-cells = <0>;
> +		DRVDD-supply = <&reg_3p3v>;
> +		AVDD-supply = <&reg_3p3v>;
> +		IOVDD-supply = <&reg_3p3v>;
> +		DVDD-supply = <&reg_1p8v>;
> +		ai3x-ocmv = <0>;
> +		reset-gpios = <&gpio4 5 GPIO_ACTIVE_LOW>;
> +		ai3x-gpio-func = <
> +			0 /* AIC3X_GPIO1_FUNC_DISABLED */
> +			5 /* AIC3X_GPIO2_FUNC_DIGITAL_MIC_INPUT */
> +		>;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hog>;
> +
> +	pinctrl_hog: hoggrp {
> +		fsl,pins = <
> +			/* CTW6120 IRQ */
> +			MX6QDL_PAD_EIM_DA7__GPIO3_IO07		0xb0b1
> +			/* SDMMC2 CD/WP */
> +			MX6QDL_PAD_KEY_COL4__GPIO4_IO14		0x1b0b0
> +			MX6QDL_PAD_KEY_ROW4__GPIO4_IO15		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_audmux: audmuxgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_CSI0_DAT7__AUD3_RXD		0x130b0
> +			MX6QDL_PAD_CSI0_DAT4__AUD3_TXC		0x130b0
> +			MX6QDL_PAD_CSI0_DAT5__AUD3_TXD		0x110b0
> +			MX6QDL_PAD_CSI0_DAT6__AUD3_TXFS		0x130b0
> +			/* Audio Clock */
> +			MX6QDL_PAD_GPIO_0__CCM_CLKO1		0x130b0
> +		>;
> +	};
> +
> +	pinctrl_bt: btgrp {
> +		fsl,pins = <
> +			/* Bluetooth/wifi enable */
> +			MX6QDL_PAD_SD3_DAT6__GPIO6_IO18		0x1b0b1
> +			/* Wifi Slow Clock */
> +			MX6QDL_PAD_ENET_RXD0__OSC32K_32K_OUT	0x000b0
> +		>;
> +	};
> +
> +	pinctrl_ecspi3: ecspi3grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_DISP0_DAT2__ECSPI3_MISO	0x100b1
> +			MX6QDL_PAD_DISP0_DAT1__ECSPI3_MOSI	0x100b1
> +			MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK	0x100b1
> +		>;
> +	};
> +
> +	pinctrl_enet: enetgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
> +			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
> +			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
> +			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
> +			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
> +			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
> +			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
> +			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
> +			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
> +			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
> +			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
> +			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
> +			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
> +			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
> +			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_enet_irq: enetirqgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_6__ENET_IRQ	0x000b1
> +		>;
> +	};
> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_CSI0_DAT8__I2C1_SDA	0x4001b8b1
> +			MX6QDL_PAD_CSI0_DAT9__I2C1_SCL	0x4001b8b1
> +		>;
> +	};
> +
> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_KEY_COL3__I2C2_SCL	0x4001b8b1
> +			MX6QDL_PAD_KEY_ROW3__I2C2_SDA	0x4001b8b1
> +		>;
> +	};
> +
> +	pinctrl_i2c3: i2c3grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_5__I2C3_SCL	0x4001b8b1
> +			MX6QDL_PAD_GPIO_16__I2C3_SDA	0x4001b8b1
> +		>;
> +	};
> +
> +	pinctrl_pmic: pmicgrp {
> +		fsl,pins = <
> +			/* PMIC INT */
> +			MX6QDL_PAD_GPIO_17__GPIO7_IO12	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_pwm2: pwm2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_DISP0_DAT9__PWM2_OUT	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_uart1: uart1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA 0x1b0b1
> +			MX6QDL_PAD_CSI0_DAT11__UART1_RX_DATA 0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD3_DAT4__UART2_RX_DATA	0x1b0b1
> +			MX6QDL_PAD_SD3_DAT5__UART2_TX_DATA	0x1b0b1
> +			MX6QDL_PAD_EIM_D28__UART2_CTS_B		0x1b0b1
> +			MX6QDL_PAD_EIM_D29__UART2_RTS_B		0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_usdhc3: usdhc3grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD3_CMD__SD3_CMD	0x17069
> +			MX6QDL_PAD_SD3_CLK__SD3_CLK	0x10069
> +			MX6QDL_PAD_SD3_DAT0__SD3_DATA0	0x17069
> +			MX6QDL_PAD_SD3_DAT1__SD3_DATA1	0x17069
> +			MX6QDL_PAD_SD3_DAT2__SD3_DATA2	0x17069
> +			MX6QDL_PAD_SD3_DAT3__SD3_DATA3	0x17069
> +			/* WL_EN */
> +			MX6QDL_PAD_SD3_DAT7__GPIO6_IO17 0x13059
> +			/* WL_IRQ */
> +			MX6QDL_PAD_SD3_RST__GPIO7_IO08  0x13059
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_100mhz: usdhc3grp100mhzgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD3_CMD__SD3_CMD	0x170B9
> +			MX6QDL_PAD_SD3_CLK__SD3_CLK	0x100B9
> +			MX6QDL_PAD_SD3_DAT0__SD3_DATA0	0x170B9
> +			MX6QDL_PAD_SD3_DAT1__SD3_DATA1	0x170B9
> +			MX6QDL_PAD_SD3_DAT3__SD3_DATA3	0x170B9
> +			MX6QDL_PAD_SD3_DAT3__SD3_DATA3	0x170B9
> +			/* WL_EN */
> +			MX6QDL_PAD_SD3_DAT7__GPIO6_IO17 0x130B9
> +			/* WL_IRQ */
> +			MX6QDL_PAD_SD3_RST__GPIO7_IO08  0x130B9
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_200mhz: usdhc3grp200mhzgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD3_CMD__SD3_CMD	0x170F9
> +			MX6QDL_PAD_SD3_CLK__SD3_CLK	0x100F9
> +			MX6QDL_PAD_SD3_DAT0__SD3_DATA0	0x170F9
> +			MX6QDL_PAD_SD3_DAT1__SD3_DATA1	0x170F9
> +			MX6QDL_PAD_SD3_DAT2__SD3_DATA2	0x170F9
> +			MX6QDL_PAD_SD3_DAT3__SD3_DATA3	0x170F9
> +			/* WL_EN */
> +			MX6QDL_PAD_SD3_DAT7__GPIO6_IO17 0x130F9
> +			/* WL_IRQ */
> +			MX6QDL_PAD_SD3_RST__GPIO7_IO08  0x130F9
> +		>;
> +	};
> +
> +	pinctrl_gpmi_nand: gpminandgrp {

I see that the pinctrl nodes are mostly sorted alphabetically.  Can you
put this in order?

> +		fsl,pins = <
> +			MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
> +			MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
> +			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
> +			MX6QDL_PAD_NANDF_CS1__NAND_CE1_B	0xb0b1
> +			MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb0b1
> +			MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
> +			MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
> +			MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
> +			MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
> +			MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
> +			MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
> +			MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
> +			MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
> +			MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
> +			MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
> +			MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
> +		>;
> +	};
> +};
> +
> +&pwm2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm2>;
> +	status = "okay";
> +};
> +
> +&reg_arm {
> +	vin-supply = <&sw1a_reg>;
> +};
> +
> +&reg_pu {
> +	vin-supply = <&sw1c_reg>;
> +};
> +
> +&reg_soc {
> +	vin-supply = <&sw1c_reg>;
> +};
> +
> +&snvs_poweroff {
> +	status = "okay";
> +};
> +
> +&ssi2 {
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2 &pinctrl_bt>;
> +	uart-has-rtscts;
> +	status = "okay";
> +};
> +
> +&gpmi {

The labeling nodes are sorted alphabetically.  Can you put this one in
order?

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_gpmi_nand>;
> +	status = "okay";
> +};
> +
> +&usbh1 {
> +	vbus-supply = <&reg_usb_h1_vbus>;
> +	status = "okay";
> +};
> +
> +&usbotg {
> +	vbus-supply = <&reg_usb_otg_vbus>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usbotg_var>;
> +	disable-over-current;
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&usbphy1 {
> +	fsl,tx-d-cal = <0x5>;
> +};
> +
> +&usbphy2 {
> +	fsl,tx-d-cal = <0x5>;
> +};
> +
> +&usdhc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	non-removable;
> +	keep-power-in-suspend;
> +	status = "okay";
> +};
> +
> +&usdhc3 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> +	bus-width = <4>;
> +	vmmc-supply = <&reg_wl18xx_vmmc>;
> +	non-removable;
> +	wakeup-source;
> +	keep-power-in-suspend;
> +	cap-power-off-card;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	wifi: wifi@2 {
> +		compatible = "ti,wl1835";
> +		reg = <2>;
> +		interrupt-parent = <&gpio6>;
> +		interrupts = <17 IRQ_TYPE_EDGE_RISING>;
> +		ref-clock-frequency = <38400000>;
> +	};
> +};
> +
> +&reg_vdd1p1 {
> +	vin-supply = <&vgen5_reg>;
> +};
> +
> +&reg_vdd2p5 {

Ditto 

Shawn

> +	vin-supply = <&vgen5_reg>;
> +};
> -- 
> 2.34.1
> 

