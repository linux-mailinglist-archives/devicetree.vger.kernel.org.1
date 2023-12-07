Return-Path: <devicetree+bounces-22734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C531E808927
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 14:28:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E784D1C20B3C
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 13:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B552D40BE4;
	Thu,  7 Dec 2023 13:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="lakURs+W"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59B4710C2;
	Thu,  7 Dec 2023 05:28:09 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B7DRwAS064537;
	Thu, 7 Dec 2023 07:27:58 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701955678;
	bh=pZBFMNr6/5Bfg5xHkyDDA6oWaIZEocSMoppIXxGwOnQ=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=lakURs+WbCa3KqjEGEoQl8vgSxyaAwIcjgkJgBGwaqAaRHczTLc+Q6h7Te0UK2kGH
	 XLpSY+Hq/OSppt78D6evUcOw4s+t6N9AyxKelbvXgMcrPKYSdZ0KSQfQ4DA4smIJy1
	 aX5KlTfqidjrcao3S1N7KjjD+LEWM+QIickzAbc0=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B7DRwdv005184
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 7 Dec 2023 07:27:58 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 7
 Dec 2023 07:27:58 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 7 Dec 2023 07:27:58 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B7DRwAa109629;
	Thu, 7 Dec 2023 07:27:58 -0600
Date: Thu, 7 Dec 2023 07:27:58 -0600
From: Nishanth Menon <nm@ti.com>
To: MD Danish Anwar <danishanwar@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring
	<robh+dt@kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Tero
 Kristo <kristo@kernel.org>, <srk@ti.com>, <r-gunasekaran@ti.com>
Subject: Re: [PATCH 3/3] arm64: dts: ti: k3-am642-evm: add overlay for icssg1
 2nd port
Message-ID: <20231207132758.wbfn7timsqevdjpu@mortuary>
References: <20231207081917.340167-1-danishanwar@ti.com>
 <20231207081917.340167-4-danishanwar@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231207081917.340167-4-danishanwar@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 13:49-20231207, MD Danish Anwar wrote:
> The am642-evm doesn't allow to enable 2 x CPSW3g ports and 2 x ICSSG1 ports
> all together, so base k3-am642-evm.dts enables by default 2 x CPSW3g ports
> and 1 x ICSSG1 ports, but it also possible to support 1 x CPSW3g ports and
> 2 x ICSSG1 ports configuration.
> 
> This patch adds overlay to support 1 x CPSW3g ports and 2 x ICSSG1 ports
> configuration:
> - disable 2nd CPSW3g port
> - update CPSW3g pinmuxes to not use RGMII2
> - disable mdio-mux-1 and define mdio-mux-2 to route ICSSG1 MDIO to the
>   shared DP83869 PHY
> - add and enable ICSSG1 RGMII2 pinmuxes
> - enable ICSSG1 MII1 port
> 
> Signed-off-by: MD Danish Anwar <danishanwar@ti.com>
> ---
>  arch/arm64/boot/dts/ti/Makefile               |  2 +
>  .../dts/ti/k3-am642-evm-icssg1-dualemac.dtso  | 80 +++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am642-evm.dts       |  2 +-
>  3 files changed, 83 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm-icssg1-dualemac.dtso
> 
> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> index 5ef49b02c71f..99a4dce47f02 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
> @@ -35,12 +35,14 @@ dtb-$(CONFIG_ARCH_K3) += k3-am62x-sk-csi2-imx219.dtbo
>  dtb-$(CONFIG_ARCH_K3) += k3-am62x-sk-hdmi-audio.dtbo
>  
>  # Boards with AM64x SoC
> +k3-am642-evm-icssg1-dtbs := k3-am642-evm.dtb k3-am642-evm-icssg1-dualemac.dtbo

Why not handle this for CONFIG_OF_ALL_DTBS alone? See commit
b0044823a6607e535fdb083c89f487fbf183b171

>  dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-rdk.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am642-sk.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am642-tqma64xxl-mbax4xxl.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am64-tqma64xxl-mbax4xxl-sdcard.dtbo
>  dtb-$(CONFIG_ARCH_K3) += k3-am64-tqma64xxl-mbax4xxl-wlan.dtbo
> +dtb-$(CONFIG_ARCH_K3) += k3-am642-evm-icssg1.dtb
>  
>  # Boards with AM65x SoC
>  k3-am654-gp-evm-dtbs := k3-am654-base-board.dtb k3-am654-base-board-rocktech-rk101-panel.dtbo
> diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm-icssg1-dualemac.dtso b/arch/arm64/boot/dts/ti/k3-am642-evm-icssg1-dualemac.dtso
> new file mode 100644
> index 000000000000..6f33290c1ad6
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am642-evm-icssg1-dualemac.dtso
> @@ -0,0 +1,80 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/**
> + * DT overlay for enabling 2nd ICSSG1 port on AM642 EVM
> + *
> + * Copyright (C) 2023 Texas Instruments Incorporated - https://www.ti.com/
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include "k3-pinctrl.h"
> +
> +&{/} {
> +	aliases {
> +		ethernet1 = "/icssg1-eth/ethernet-ports/port@0";
> +		ethernet2 = "/icssg1-eth/ethernet-ports/port@1";

I don't understand what you are overriding here. isn't patch #2 in your
series already introducing this in the base dts?

> +	};
> +
> +	mdio-mux-2 {
> +		compatible = "mdio-mux-multiplexer";
> +		mux-controls = <&mdio_mux>;
> +		mdio-parent-bus = <&icssg1_mdio>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		mdio@0 {
> +			reg = <0x0>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			icssg1_phy2: ethernet-phy@3 {
> +				reg = <3>;
> +				tx-internal-delay-ps = <250>;
> +				rx-internal-delay-ps = <2000>;
> +			};
> +		};
> +	};
> +};
> +
> +&main_pmx0 {
> +	icssg1_rgmii2_pins_default: icssg1-rgmii2-default-pins {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0108, PIN_INPUT, 2) /* (W11) PRG1_PRU1_GPO0.RGMII2_RD0 */
> +			AM64X_IOPAD(0x010c, PIN_INPUT, 2) /* (V11) PRG1_PRU1_GPO1.RGMII2_RD1 */
> +			AM64X_IOPAD(0x0110, PIN_INPUT, 2) /* (AA12) PRG1_PRU1_GPO2.RGMII2_RD2 */
> +			AM64X_IOPAD(0x0114, PIN_INPUT, 2) /* (Y12) PRG1_PRU1_GPO3.RGMII2_RD3 */
> +			AM64X_IOPAD(0x0120, PIN_INPUT, 2) /* (U11) PRG1_PRU1_GPO6.RGMII2_RXC */
> +			AM64X_IOPAD(0x0118, PIN_INPUT, 2) /* (W12) PRG1_PRU1_GPO4.RGMII2_RX_CTL */
> +			AM64X_IOPAD(0x0134, PIN_OUTPUT, 2) /* (AA10) PRG1_PRU1_GPO11.RGMII2_TD0 */
> +			AM64X_IOPAD(0x0138, PIN_OUTPUT, 2) /* (V10) PRG1_PRU1_GPO12.RGMII2_TD1 */
> +			AM64X_IOPAD(0x013c, PIN_OUTPUT, 2) /* (U10) PRG1_PRU1_GPO13.RGMII2_TD2 */
> +			AM64X_IOPAD(0x0140, PIN_OUTPUT, 2) /* (AA11) PRG1_PRU1_GPO14.RGMII2_TD3 */
> +			AM64X_IOPAD(0x0148, PIN_OUTPUT, 2) /* (Y10) PRG1_PRU1_GPO16.RGMII2_TXC */
> +			AM64X_IOPAD(0x0144, PIN_OUTPUT, 2) /* (Y11) PRG1_PRU1_GPO15.RGMII2_TX_CTL */
> +		>;
> +	};
> +};
> +
> +&cpsw3g {
> +	pinctrl-0 = <&rgmii1_pins_default>;
> +};
> +
> +&cpsw_port2 {
> +	status = "disabled";
> +};
> +
> +&mdio_mux_1 {
> +	status = "disabled";
> +};
> +
> +&icssg1_eth {
> +	pinctrl-0 = <&icssg1_rgmii1_pins_default &icssg1_rgmii2_pins_default>;

Grrr... No! I have been cleaning up after you folks and you folks should
take notice.

pinctrl-0 = <&icssg1_rgmii1_pins_default>, <&icssg1_rgmii2_pins_default>;


> +};
> +
> +&icssg1_emac1 {
> +	status = "okay";
> +	phy-handle = <&icssg1_phy2>;
> +	phy-mode = "rgmii-id";
> +};
> diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
> index 04d1c0602d31..90867090e725 100644
> --- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
> @@ -203,7 +203,7 @@ mdio_mux: mux-controller {
>  		mux-gpios = <&exp1 12 GPIO_ACTIVE_HIGH>;
>  	};
>  
> -	mdio-mux-1 {
> +	mdio_mux_1: mdio-mux-1 {

Commit message doesn't warn me for this change.
>  		compatible = "mdio-mux-multiplexer";
>  		mux-controls = <&mdio_mux>;
>  		mdio-parent-bus = <&cpsw3g_mdio>;
> -- 
> 2.34.1
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

