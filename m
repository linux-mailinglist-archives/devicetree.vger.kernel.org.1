Return-Path: <devicetree+bounces-26570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5E6816F8C
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:06:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08A941F26AD1
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:06:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50DCD37888;
	Mon, 18 Dec 2023 12:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="IlpMBMWX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3471D15E
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702904103; x=1734440103;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=76ds8r9MyKsEPsAc1KcF+yYhEUmJy5v4is5x2d7KBmc=;
  b=IlpMBMWXAcIZvA04CpRPx3LTssIniM5QeO8qrMAfrkE0RaedAf45NXYJ
   mq/ABcX98uhFMKx6cWo71iNVqsMqB0vCFtIZ5sFEefPVe8Zw7ZgsmlBmY
   8WvavAzNwYBHSOBc99NdQYIY6WEtH1v5aYzYHR5zBWf+6W/8QWjn1UhZ3
   4Lb2+omNLlUYPZgr72ffr0YczmQwwnlZAj1gXZicQM/X6LFxecQLioNC2
   lVFPejmp3BE67YfU9RYhbals4bhy9cgbnpe6dYjmsxn0izBenmh7b2Wfn
   R6NLkpZK1a4wTAjPfV+QUcV0LjMRCIgaQ9hNoQJtfGJhv4HFF/vfP5co9
   g==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34562688"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 13:54:59 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 04478280084;
	Mon, 18 Dec 2023 13:54:59 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 01/23] ARM: dts: imx7-tqma7/mba7: convert fsl,pins to uint32-matrix
Date: Mon, 18 Dec 2023 13:54:37 +0100
Message-Id: <20231218125459.2769733-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
References: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

make dtbs_check does not warn about this anymore, but bindings mandate
a uint32-matrix.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi  | 242 ++++++++++------------
 arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi | 114 +++++-----
 arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts  |  51 +++--
 3 files changed, 187 insertions(+), 220 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
index 3df6dff7734a..2e406cc7d292 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
@@ -334,213 +334,191 @@ &iomuxc {
 	pinctrl-0 = <&pinctrl_hog_mba7_1>;
 
 	pinctrl_ecspi1: ecspi1grp {
-		fsl,pins = <
-			MX7D_PAD_ECSPI1_MISO__ECSPI1_MISO		0x7c
-			MX7D_PAD_ECSPI1_MOSI__ECSPI1_MOSI		0x74
-			MX7D_PAD_ECSPI1_SCLK__ECSPI1_SCLK		0x74
-			MX7D_PAD_UART1_RX_DATA__GPIO4_IO0		0x74
-			MX7D_PAD_UART1_TX_DATA__GPIO4_IO1		0x74
-			MX7D_PAD_UART2_RX_DATA__GPIO4_IO2		0x74
-		>;
+		fsl,pins =
+			<MX7D_PAD_ECSPI1_MISO__ECSPI1_MISO		0x7c>,
+			<MX7D_PAD_ECSPI1_MOSI__ECSPI1_MOSI		0x74>,
+			<MX7D_PAD_ECSPI1_SCLK__ECSPI1_SCLK		0x74>,
+			<MX7D_PAD_UART1_RX_DATA__GPIO4_IO0		0x74>,
+			<MX7D_PAD_UART1_TX_DATA__GPIO4_IO1		0x74>,
+			<MX7D_PAD_UART2_RX_DATA__GPIO4_IO2		0x74>;
 	};
 
 	pinctrl_ecspi2: ecspi2grp {
-		fsl,pins = <
-			MX7D_PAD_ECSPI2_MISO__ECSPI2_MISO		0x7c
-			MX7D_PAD_ECSPI2_MOSI__ECSPI2_MOSI		0x74
-			MX7D_PAD_ECSPI2_SCLK__ECSPI2_SCLK		0x74
-			MX7D_PAD_ECSPI2_SS0__ECSPI2_SS0			0x74
-		>;
+		fsl,pins =
+			<MX7D_PAD_ECSPI2_MISO__ECSPI2_MISO		0x7c>,
+			<MX7D_PAD_ECSPI2_MOSI__ECSPI2_MOSI		0x74>,
+			<MX7D_PAD_ECSPI2_SCLK__ECSPI2_SCLK		0x74>,
+			<MX7D_PAD_ECSPI2_SS0__ECSPI2_SS0		0x74>;
 	};
 
 	pinctrl_enet1: enet1grp {
-		fsl,pins = <
-			MX7D_PAD_GPIO1_IO10__ENET1_MDIO			0x02
-			MX7D_PAD_GPIO1_IO11__ENET1_MDC			0x00
-			MX7D_PAD_ENET1_RGMII_TXC__ENET1_RGMII_TXC	0x71
-			MX7D_PAD_ENET1_RGMII_TD0__ENET1_RGMII_TD0	0x71
-			MX7D_PAD_ENET1_RGMII_TD1__ENET1_RGMII_TD1	0x71
-			MX7D_PAD_ENET1_RGMII_TD2__ENET1_RGMII_TD2	0x71
-			MX7D_PAD_ENET1_RGMII_TD3__ENET1_RGMII_TD3	0x71
-			MX7D_PAD_ENET1_RGMII_TX_CTL__ENET1_RGMII_TX_CTL	0x71
-			MX7D_PAD_ENET1_RGMII_RXC__ENET1_RGMII_RXC	0x79
-			MX7D_PAD_ENET1_RGMII_RD0__ENET1_RGMII_RD0	0x79
-			MX7D_PAD_ENET1_RGMII_RD1__ENET1_RGMII_RD1	0x79
-			MX7D_PAD_ENET1_RGMII_RD2__ENET1_RGMII_RD2	0x79
-			MX7D_PAD_ENET1_RGMII_RD3__ENET1_RGMII_RD3	0x79
-			MX7D_PAD_ENET1_RGMII_RX_CTL__ENET1_RGMII_RX_CTL	0x79
+		fsl,pins =
+			<MX7D_PAD_GPIO1_IO10__ENET1_MDIO			0x02>,
+			<MX7D_PAD_GPIO1_IO11__ENET1_MDC				0x00>,
+			<MX7D_PAD_ENET1_RGMII_TXC__ENET1_RGMII_TXC		0x71>,
+			<MX7D_PAD_ENET1_RGMII_TD0__ENET1_RGMII_TD0		0x71>,
+			<MX7D_PAD_ENET1_RGMII_TD1__ENET1_RGMII_TD1		0x71>,
+			<MX7D_PAD_ENET1_RGMII_TD2__ENET1_RGMII_TD2		0x71>,
+			<MX7D_PAD_ENET1_RGMII_TD3__ENET1_RGMII_TD3		0x71>,
+			<MX7D_PAD_ENET1_RGMII_TX_CTL__ENET1_RGMII_TX_CTL	0x71>,
+			<MX7D_PAD_ENET1_RGMII_RXC__ENET1_RGMII_RXC		0x79>,
+			<MX7D_PAD_ENET1_RGMII_RD0__ENET1_RGMII_RD0		0x79>,
+			<MX7D_PAD_ENET1_RGMII_RD1__ENET1_RGMII_RD1		0x79>,
+			<MX7D_PAD_ENET1_RGMII_RD2__ENET1_RGMII_RD2		0x79>,
+			<MX7D_PAD_ENET1_RGMII_RD3__ENET1_RGMII_RD3		0x79>,
+			<MX7D_PAD_ENET1_RGMII_RX_CTL__ENET1_RGMII_RX_CTL	0x79>,
 			/* Reset: SION, 100kPU, SRE_FAST, DSE_X1 */
-			MX7D_PAD_ENET1_COL__GPIO7_IO15		0x40000070
+			<MX7D_PAD_ENET1_COL__GPIO7_IO15				0x40000070>,
 			/* INT/PWDN: SION, 100kPU, HYS, SRE_FAST, DSE_X1 */
-			MX7D_PAD_GPIO1_IO09__GPIO1_IO9		0x40000078
-		>;
+			<MX7D_PAD_GPIO1_IO09__GPIO1_IO9				0x40000078>;
 	};
 
 	pinctrl_flexcan1: flexcan1grp {
-		fsl,pins = <
-			MX7D_PAD_GPIO1_IO12__FLEXCAN1_RX	0x5a
-			MX7D_PAD_GPIO1_IO13__FLEXCAN1_TX	0x52
-		>;
+		fsl,pins =
+			<MX7D_PAD_GPIO1_IO12__FLEXCAN1_RX	0x5a>,
+			<MX7D_PAD_GPIO1_IO13__FLEXCAN1_TX	0x52>;
 	};
 
 	pinctrl_flexcan2: flexcan2grp {
-		fsl,pins = <
-			MX7D_PAD_GPIO1_IO14__FLEXCAN2_RX	0x5a
-			MX7D_PAD_GPIO1_IO15__FLEXCAN2_TX	0x52
-		>;
+		fsl,pins =
+			<MX7D_PAD_GPIO1_IO14__FLEXCAN2_RX	0x5a>,
+			<MX7D_PAD_GPIO1_IO15__FLEXCAN2_TX	0x52>;
 	};
 
 	pinctrl_hog_mba7_1: hogmba71grp {
-		fsl,pins = <
+		fsl,pins =
 			/* Limitation: WDOG2_B / WDOG2_RESET not usable */
-			MX7D_PAD_ENET1_RX_CLK__GPIO7_IO13	0x4000007c
-			MX7D_PAD_ENET1_CRS__GPIO7_IO14		0x40000074
+			<MX7D_PAD_ENET1_RX_CLK__GPIO7_IO13	0x4000007c>,
+			<MX7D_PAD_ENET1_CRS__GPIO7_IO14		0x40000074>,
 			/* #BOOT_EN */
-			MX7D_PAD_UART2_TX_DATA__GPIO4_IO3	0x40000010
-		>;
+			<MX7D_PAD_UART2_TX_DATA__GPIO4_IO3	0x40000010>;
 	};
 
 	pinctrl_i2c2: i2c2grp {
-		fsl,pins = <
-			MX7D_PAD_I2C2_SCL__I2C2_SCL		0x40000078
-			MX7D_PAD_I2C2_SDA__I2C2_SDA		0x40000078
-		>;
+		fsl,pins =
+			<MX7D_PAD_I2C2_SCL__I2C2_SCL		0x40000078>,
+			<MX7D_PAD_I2C2_SDA__I2C2_SDA		0x40000078>;
 	};
 
 	pinctrl_i2c3: i2c3grp {
-		fsl,pins = <
-			MX7D_PAD_I2C3_SCL__I2C3_SCL		0x40000078
-			MX7D_PAD_I2C3_SDA__I2C3_SDA		0x40000078
-		>;
+		fsl,pins =
+			<MX7D_PAD_I2C3_SCL__I2C3_SCL		0x40000078>,
+			<MX7D_PAD_I2C3_SDA__I2C3_SDA		0x40000078>;
 	};
 
 	pinctrl_pca9555: pca95550grp {
-		fsl,pins = <
-			MX7D_PAD_ENET1_TX_CLK__GPIO7_IO12	0x78
-		>;
+		fsl,pins =
+			<MX7D_PAD_ENET1_TX_CLK__GPIO7_IO12	0x78>;
 	};
 
 	pinctrl_sai1: sai1grp {
-		fsl,pins = <
-			MX7D_PAD_SAI1_MCLK__SAI1_MCLK		0x11
-			MX7D_PAD_SAI1_RX_BCLK__SAI1_RX_BCLK	0x1c
-			MX7D_PAD_SAI1_RX_DATA__SAI1_RX_DATA0	0x1c
-			MX7D_PAD_SAI1_RX_SYNC__SAI2_RX_SYNC	0x1c
+		fsl,pins =
+			<MX7D_PAD_SAI1_MCLK__SAI1_MCLK		0x11>,
+			<MX7D_PAD_SAI1_RX_BCLK__SAI1_RX_BCLK	0x1c>,
+			<MX7D_PAD_SAI1_RX_DATA__SAI1_RX_DATA0	0x1c>,
+			<MX7D_PAD_SAI1_RX_SYNC__SAI2_RX_SYNC	0x1c>,
 
-			MX7D_PAD_SAI1_TX_BCLK__SAI1_TX_BCLK	0x1c
-			MX7D_PAD_SAI1_TX_DATA__SAI1_TX_DATA0	0x14
-			MX7D_PAD_SAI1_TX_SYNC__SAI1_TX_SYNC	0x14
-		>;
+			<MX7D_PAD_SAI1_TX_BCLK__SAI1_TX_BCLK	0x1c>,
+			<MX7D_PAD_SAI1_TX_DATA__SAI1_TX_DATA0	0x14>,
+			<MX7D_PAD_SAI1_TX_SYNC__SAI1_TX_SYNC	0x14>;
 	};
 
 	pinctrl_uart3: uart3grp {
-		fsl,pins = <
-			MX7D_PAD_UART3_RX_DATA__UART3_DCE_RX	0x7e
-			MX7D_PAD_UART3_TX_DATA__UART3_DCE_TX	0x76
-			MX7D_PAD_UART3_CTS_B__UART3_DCE_CTS	0x76
-			MX7D_PAD_UART3_RTS_B__UART3_DCE_RTS	0x7e
-		>;
+		fsl,pins =
+			<MX7D_PAD_UART3_RX_DATA__UART3_DCE_RX	0x7e>,
+			<MX7D_PAD_UART3_TX_DATA__UART3_DCE_TX	0x76>,
+			<MX7D_PAD_UART3_CTS_B__UART3_DCE_CTS	0x76>,
+			<MX7D_PAD_UART3_RTS_B__UART3_DCE_RTS	0x7e>;
 	};
 
 	pinctrl_uart4: uart4grp {
-		fsl,pins = <
-			MX7D_PAD_SAI2_TX_SYNC__UART4_DCE_RX	0x7e
-			MX7D_PAD_SAI2_TX_BCLK__UART4_DCE_TX	0x76
-			MX7D_PAD_SAI2_RX_DATA__UART4_DCE_CTS	0x76
-			MX7D_PAD_SAI2_TX_DATA__UART4_DCE_RTS	0x7e
-		>;
+		fsl,pins =
+			<MX7D_PAD_SAI2_TX_SYNC__UART4_DCE_RX	0x7e>,
+			<MX7D_PAD_SAI2_TX_BCLK__UART4_DCE_TX	0x76>,
+			<MX7D_PAD_SAI2_RX_DATA__UART4_DCE_CTS	0x76>,
+			<MX7D_PAD_SAI2_TX_DATA__UART4_DCE_RTS	0x7e>;
 	};
 
 	pinctrl_uart5: uart5grp {
-		fsl,pins = <
-			MX7D_PAD_I2C4_SCL__UART5_DCE_RX		0x7e
-			MX7D_PAD_I2C4_SDA__UART5_DCE_TX		0x76
-		>;
+		fsl,pins =
+			<MX7D_PAD_I2C4_SCL__UART5_DCE_RX	0x7e>,
+			<MX7D_PAD_I2C4_SDA__UART5_DCE_TX	0x76>;
 	};
 
 	pinctrl_uart6: uart6grp {
-		fsl,pins = <
-			MX7D_PAD_EPDC_DATA08__UART6_DCE_RX	0x7d
-			MX7D_PAD_EPDC_DATA09__UART6_DCE_TX	0x75
-			MX7D_PAD_EPDC_DATA11__UART6_DCE_CTS	0x75
-			MX7D_PAD_EPDC_DATA10__UART6_DCE_RTS	0x7d
-		>;
+		fsl,pins =
+			<MX7D_PAD_EPDC_DATA08__UART6_DCE_RX	0x7d>,
+			<MX7D_PAD_EPDC_DATA09__UART6_DCE_TX	0x75>,
+			<MX7D_PAD_EPDC_DATA11__UART6_DCE_CTS	0x75>,
+			<MX7D_PAD_EPDC_DATA10__UART6_DCE_RTS	0x7d>;
 	};
 
 	pinctrl_uart7: uart7grp {
-		fsl,pins = <
-			MX7D_PAD_EPDC_DATA12__UART7_DCE_RX	0x7e
-			MX7D_PAD_EPDC_DATA13__UART7_DCE_TX	0x76
-			MX7D_PAD_EPDC_DATA15__UART7_DCE_CTS	0x76
+		fsl,pins =
+			<MX7D_PAD_EPDC_DATA12__UART7_DCE_RX	0x7e>,
+			<MX7D_PAD_EPDC_DATA13__UART7_DCE_TX	0x76>,
+			<MX7D_PAD_EPDC_DATA15__UART7_DCE_CTS	0x76>,
 			/* Limitation: RTS is not connected */
-			MX7D_PAD_EPDC_DATA14__UART7_DCE_RTS	0x7e
-		>;
+			<MX7D_PAD_EPDC_DATA14__UART7_DCE_RTS	0x7e>;
 	};
 
 	pinctrl_usdhc1_gpio: usdhc1grp_gpio {
-		fsl,pins = <
+		fsl,pins =
 			/* WP */
-			MX7D_PAD_SD1_WP__GPIO5_IO1		0x7c
+			<MX7D_PAD_SD1_WP__GPIO5_IO1		0x7c>,
 			/* CD */
-			MX7D_PAD_SD1_CD_B__GPIO5_IO0		0x7c
+			<MX7D_PAD_SD1_CD_B__GPIO5_IO0		0x7c>,
 			/* VSELECT */
-			MX7D_PAD_GPIO1_IO08__SD1_VSELECT	0x59
-		>;
+			<MX7D_PAD_GPIO1_IO08__SD1_VSELECT	0x59>;
 	};
 
 	pinctrl_usdhc1: usdhc1grp {
-		fsl,pins = <
-			MX7D_PAD_SD1_CMD__SD1_CMD		0x5e
-			MX7D_PAD_SD1_CLK__SD1_CLK		0x57
-			MX7D_PAD_SD1_DATA0__SD1_DATA0		0x5e
-			MX7D_PAD_SD1_DATA1__SD1_DATA1		0x5e
-			MX7D_PAD_SD1_DATA2__SD1_DATA2		0x5e
-			MX7D_PAD_SD1_DATA3__SD1_DATA3		0x5e
-		>;
+		fsl,pins =
+			<MX7D_PAD_SD1_CMD__SD1_CMD		0x5e>,
+			<MX7D_PAD_SD1_CLK__SD1_CLK		0x57>,
+			<MX7D_PAD_SD1_DATA0__SD1_DATA0		0x5e>,
+			<MX7D_PAD_SD1_DATA1__SD1_DATA1		0x5e>,
+			<MX7D_PAD_SD1_DATA2__SD1_DATA2		0x5e>,
+			<MX7D_PAD_SD1_DATA3__SD1_DATA3		0x5e>;
 	};
 
 	pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
-		fsl,pins = <
-			MX7D_PAD_SD1_CMD__SD1_CMD		0x5a
-			MX7D_PAD_SD1_CLK__SD1_CLK		0x57
-			MX7D_PAD_SD1_DATA0__SD1_DATA0		0x5a
-			MX7D_PAD_SD1_DATA1__SD1_DATA1		0x5a
-			MX7D_PAD_SD1_DATA2__SD1_DATA2		0x5a
-			MX7D_PAD_SD1_DATA3__SD1_DATA3		0x5a
-		>;
+		fsl,pins =
+			<MX7D_PAD_SD1_CMD__SD1_CMD		0x5a>,
+			<MX7D_PAD_SD1_CLK__SD1_CLK		0x57>,
+			<MX7D_PAD_SD1_DATA0__SD1_DATA0		0x5a>,
+			<MX7D_PAD_SD1_DATA1__SD1_DATA1		0x5a>,
+			<MX7D_PAD_SD1_DATA2__SD1_DATA2		0x5a>,
+			<MX7D_PAD_SD1_DATA3__SD1_DATA3		0x5a>;
 	};
 
 	pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {
-		fsl,pins = <
-			MX7D_PAD_SD1_CMD__SD1_CMD		0x5b
-			MX7D_PAD_SD1_CLK__SD1_CLK		0x57
-			MX7D_PAD_SD1_DATA0__SD1_DATA0		0x5b
-			MX7D_PAD_SD1_DATA1__SD1_DATA1		0x5b
-			MX7D_PAD_SD1_DATA2__SD1_DATA2		0x5b
-			MX7D_PAD_SD1_DATA3__SD1_DATA3		0x5b
-		>;
+		fsl,pins =
+			<MX7D_PAD_SD1_CMD__SD1_CMD		0x5b>,
+			<MX7D_PAD_SD1_CLK__SD1_CLK		0x57>,
+			<MX7D_PAD_SD1_DATA0__SD1_DATA0		0x5b>,
+			<MX7D_PAD_SD1_DATA1__SD1_DATA1		0x5b>,
+			<MX7D_PAD_SD1_DATA2__SD1_DATA2		0x5b>,
+			<MX7D_PAD_SD1_DATA3__SD1_DATA3		0x5b>;
 	};
 };
 
 &iomuxc_lpsr {
 	pinctrl_pwm1: pwm1grp {
-		fsl,pins = <
+		fsl,pins =
 			/* LCD_CONTRAST */
-			MX7D_PAD_LPSR_GPIO1_IO01__PWM1_OUT	0x50
-		>;
+			<MX7D_PAD_LPSR_GPIO1_IO01__PWM1_OUT	0x50>;
 	};
 
 	pinctrl_usbotg1: usbotg1grp {
-		fsl,pins = <
-			MX7D_PAD_LPSR_GPIO1_IO04__USB_OTG1_OC	0x5c
-			MX7D_PAD_LPSR_GPIO1_IO05__GPIO1_IO5	0x59
-		>;
+		fsl,pins =
+			<MX7D_PAD_LPSR_GPIO1_IO04__USB_OTG1_OC	0x5c>,
+			<MX7D_PAD_LPSR_GPIO1_IO05__GPIO1_IO5	0x59>;
 	};
 
 	pinctrl_wdog1: wdog1grp {
-		fsl,pins = <
-			MX7D_PAD_LPSR_GPIO1_IO00__WDOG1_WDOG_B	0x30
-		>;
+		fsl,pins =
+			<MX7D_PAD_LPSR_GPIO1_IO00__WDOG1_WDOG_B	0x30>;
 	};
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
index 3fc3130f9def..e6e40747d5b9 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
@@ -163,91 +163,83 @@ ds1339: rtc@68 {
 
 &iomuxc {
 	pinctrl_i2c1: i2c1grp {
-		fsl,pins = <
-			MX7D_PAD_I2C1_SDA__I2C1_SDA	0x40000078
-			MX7D_PAD_I2C1_SCL__I2C1_SCL	0x40000078
-		>;
+		fsl,pins =
+			<MX7D_PAD_I2C1_SDA__I2C1_SDA	0x40000078>,
+			<MX7D_PAD_I2C1_SCL__I2C1_SCL	0x40000078>;
 	};
 
 	pinctrl_pmic1: pmic1grp {
-		fsl,pins = <
-			MX7D_PAD_SD2_RESET_B__GPIO5_IO11	0x4000005C
-		>;
+		fsl,pins =
+			<MX7D_PAD_SD2_RESET_B__GPIO5_IO11	0x4000005C>;
 	};
 
 	pinctrl_qspi: qspigrp {
-		fsl,pins = <
-			MX7D_PAD_EPDC_DATA00__QSPI_A_DATA0	0x5A
-			MX7D_PAD_EPDC_DATA01__QSPI_A_DATA1	0x5A
-			MX7D_PAD_EPDC_DATA02__QSPI_A_DATA2	0x5A
-			MX7D_PAD_EPDC_DATA03__QSPI_A_DATA3	0x5A
-			MX7D_PAD_EPDC_DATA05__QSPI_A_SCLK	0x11
-			MX7D_PAD_EPDC_DATA06__QSPI_A_SS0_B	0x54
-			MX7D_PAD_EPDC_DATA07__QSPI_A_SS1_B	0x54
-		>;
+		fsl,pins =
+			<MX7D_PAD_EPDC_DATA00__QSPI_A_DATA0	0x5A>,
+			<MX7D_PAD_EPDC_DATA01__QSPI_A_DATA1	0x5A>,
+			<MX7D_PAD_EPDC_DATA02__QSPI_A_DATA2	0x5A>,
+			<MX7D_PAD_EPDC_DATA03__QSPI_A_DATA3	0x5A>,
+			<MX7D_PAD_EPDC_DATA05__QSPI_A_SCLK	0x11>,
+			<MX7D_PAD_EPDC_DATA06__QSPI_A_SS0_B	0x54>,
+			<MX7D_PAD_EPDC_DATA07__QSPI_A_SS1_B	0x54>;
 	};
 
 	pinctrl_qspi_reset: qspi_resetgrp {
-		fsl,pins = <
+		fsl,pins =
 			/* #QSPI_RESET */
-			MX7D_PAD_EPDC_DATA04__GPIO2_IO4		0x52
-		>;
+			<MX7D_PAD_EPDC_DATA04__GPIO2_IO4	0x52>;
 	};
 
 	pinctrl_usdhc3: usdhc3grp {
-		fsl,pins = <
-			MX7D_PAD_SD3_CMD__SD3_CMD		0x59
-			MX7D_PAD_SD3_CLK__SD3_CLK		0x56
-			MX7D_PAD_SD3_DATA0__SD3_DATA0		0x59
-			MX7D_PAD_SD3_DATA1__SD3_DATA1		0x59
-			MX7D_PAD_SD3_DATA2__SD3_DATA2		0x59
-			MX7D_PAD_SD3_DATA3__SD3_DATA3		0x59
-			MX7D_PAD_SD3_DATA4__SD3_DATA4		0x59
-			MX7D_PAD_SD3_DATA5__SD3_DATA5		0x59
-			MX7D_PAD_SD3_DATA6__SD3_DATA6		0x59
-			MX7D_PAD_SD3_DATA7__SD3_DATA7		0x59
-			MX7D_PAD_SD3_STROBE__SD3_STROBE		0x19
-		>;
+		fsl,pins =
+			<MX7D_PAD_SD3_CMD__SD3_CMD		0x59>,
+			<MX7D_PAD_SD3_CLK__SD3_CLK		0x56>,
+			<MX7D_PAD_SD3_DATA0__SD3_DATA0		0x59>,
+			<MX7D_PAD_SD3_DATA1__SD3_DATA1		0x59>,
+			<MX7D_PAD_SD3_DATA2__SD3_DATA2		0x59>,
+			<MX7D_PAD_SD3_DATA3__SD3_DATA3		0x59>,
+			<MX7D_PAD_SD3_DATA4__SD3_DATA4		0x59>,
+			<MX7D_PAD_SD3_DATA5__SD3_DATA5		0x59>,
+			<MX7D_PAD_SD3_DATA6__SD3_DATA6		0x59>,
+			<MX7D_PAD_SD3_DATA7__SD3_DATA7		0x59>,
+			<MX7D_PAD_SD3_STROBE__SD3_STROBE	0x19>;
 	};
 
 	pinctrl_usdhc3_100mhz: usdhc3grp_100mhz {
-		fsl,pins = <
-			MX7D_PAD_SD3_CMD__SD3_CMD               0x5a
-			MX7D_PAD_SD3_CLK__SD3_CLK               0x51
-			MX7D_PAD_SD3_DATA0__SD3_DATA0           0x5a
-			MX7D_PAD_SD3_DATA1__SD3_DATA1           0x5a
-			MX7D_PAD_SD3_DATA2__SD3_DATA2           0x5a
-			MX7D_PAD_SD3_DATA3__SD3_DATA3           0x5a
-			MX7D_PAD_SD3_DATA4__SD3_DATA4           0x5a
-			MX7D_PAD_SD3_DATA5__SD3_DATA5           0x5a
-			MX7D_PAD_SD3_DATA6__SD3_DATA6           0x5a
-			MX7D_PAD_SD3_DATA7__SD3_DATA7           0x5a
-			MX7D_PAD_SD3_STROBE__SD3_STROBE         0x1a
-		>;
+		fsl,pins =
+			<MX7D_PAD_SD3_CMD__SD3_CMD               0x5a>,
+			<MX7D_PAD_SD3_CLK__SD3_CLK               0x51>,
+			<MX7D_PAD_SD3_DATA0__SD3_DATA0           0x5a>,
+			<MX7D_PAD_SD3_DATA1__SD3_DATA1           0x5a>,
+			<MX7D_PAD_SD3_DATA2__SD3_DATA2           0x5a>,
+			<MX7D_PAD_SD3_DATA3__SD3_DATA3           0x5a>,
+			<MX7D_PAD_SD3_DATA4__SD3_DATA4           0x5a>,
+			<MX7D_PAD_SD3_DATA5__SD3_DATA5           0x5a>,
+			<MX7D_PAD_SD3_DATA6__SD3_DATA6           0x5a>,
+			<MX7D_PAD_SD3_DATA7__SD3_DATA7           0x5a>,
+			<MX7D_PAD_SD3_STROBE__SD3_STROBE         0x1a>;
 	};
 
 	pinctrl_usdhc3_200mhz: usdhc3grp_200mhz {
-		fsl,pins = <
-			MX7D_PAD_SD3_CMD__SD3_CMD               0x5b
-			MX7D_PAD_SD3_CLK__SD3_CLK               0x51
-			MX7D_PAD_SD3_DATA0__SD3_DATA0           0x5b
-			MX7D_PAD_SD3_DATA1__SD3_DATA1           0x5b
-			MX7D_PAD_SD3_DATA2__SD3_DATA2           0x5b
-			MX7D_PAD_SD3_DATA3__SD3_DATA3           0x5b
-			MX7D_PAD_SD3_DATA4__SD3_DATA4           0x5b
-			MX7D_PAD_SD3_DATA5__SD3_DATA5           0x5b
-			MX7D_PAD_SD3_DATA6__SD3_DATA6           0x5b
-			MX7D_PAD_SD3_DATA7__SD3_DATA7           0x5b
-			MX7D_PAD_SD3_STROBE__SD3_STROBE         0x1b
-		>;
+		fsl,pins =
+			<MX7D_PAD_SD3_CMD__SD3_CMD               0x5b>,
+			<MX7D_PAD_SD3_CLK__SD3_CLK               0x51>,
+			<MX7D_PAD_SD3_DATA0__SD3_DATA0           0x5b>,
+			<MX7D_PAD_SD3_DATA1__SD3_DATA1           0x5b>,
+			<MX7D_PAD_SD3_DATA2__SD3_DATA2           0x5b>,
+			<MX7D_PAD_SD3_DATA3__SD3_DATA3           0x5b>,
+			<MX7D_PAD_SD3_DATA4__SD3_DATA4           0x5b>,
+			<MX7D_PAD_SD3_DATA5__SD3_DATA5           0x5b>,
+			<MX7D_PAD_SD3_DATA6__SD3_DATA6           0x5b>,
+			<MX7D_PAD_SD3_DATA7__SD3_DATA7           0x5b>,
+			<MX7D_PAD_SD3_STROBE__SD3_STROBE         0x1b>;
 	};
 };
 
 &iomuxc_lpsr {
 	pinctrl_wdog1: wdog1grp {
-		fsl,pins = <
-			MX7D_PAD_LPSR_GPIO1_IO00__WDOG1_WDOG_B	0x30
-		>;
+		fsl,pins =
+			<MX7D_PAD_LPSR_GPIO1_IO00__WDOG1_WDOG_B	0x30>;
 	};
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
index 32bf9fa9d00e..79a6d82b453a 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
@@ -48,46 +48,43 @@ &iomuxc {
 	pinctrl-0 = <&pinctrl_hog_mba7_1>;
 
 	pinctrl_enet2: enet2grp {
-		fsl,pins = <
-			MX7D_PAD_SD2_CD_B__ENET2_MDIO			0x02
-			MX7D_PAD_SD2_WP__ENET2_MDC			0x00
-			MX7D_PAD_EPDC_GDSP__ENET2_RGMII_TXC		0x71
-			MX7D_PAD_EPDC_SDCE2__ENET2_RGMII_TD0		0x71
-			MX7D_PAD_EPDC_SDCE3__ENET2_RGMII_TD1		0x71
-			MX7D_PAD_EPDC_GDCLK__ENET2_RGMII_TD2		0x71
-			MX7D_PAD_EPDC_GDOE__ENET2_RGMII_TD3		0x71
-			MX7D_PAD_EPDC_GDRL__ENET2_RGMII_TX_CTL		0x71
-			MX7D_PAD_EPDC_SDCE1__ENET2_RGMII_RXC		0x79
-			MX7D_PAD_EPDC_SDCLK__ENET2_RGMII_RD0		0x79
-			MX7D_PAD_EPDC_SDLE__ENET2_RGMII_RD1		0x79
-			MX7D_PAD_EPDC_SDOE__ENET2_RGMII_RD2		0x79
-			MX7D_PAD_EPDC_SDSHR__ENET2_RGMII_RD3		0x79
-			MX7D_PAD_EPDC_SDCE0__ENET2_RGMII_RX_CTL		0x79
+		fsl,pins =
+			<MX7D_PAD_SD2_CD_B__ENET2_MDIO			0x02>,
+			<MX7D_PAD_SD2_WP__ENET2_MDC			0x00>,
+			<MX7D_PAD_EPDC_GDSP__ENET2_RGMII_TXC		0x71>,
+			<MX7D_PAD_EPDC_SDCE2__ENET2_RGMII_TD0		0x71>,
+			<MX7D_PAD_EPDC_SDCE3__ENET2_RGMII_TD1		0x71>,
+			<MX7D_PAD_EPDC_GDCLK__ENET2_RGMII_TD2		0x71>,
+			<MX7D_PAD_EPDC_GDOE__ENET2_RGMII_TD3		0x71>,
+			<MX7D_PAD_EPDC_GDRL__ENET2_RGMII_TX_CTL		0x71>,
+			<MX7D_PAD_EPDC_SDCE1__ENET2_RGMII_RXC		0x79>,
+			<MX7D_PAD_EPDC_SDCLK__ENET2_RGMII_RD0		0x79>,
+			<MX7D_PAD_EPDC_SDLE__ENET2_RGMII_RD1		0x79>,
+			<MX7D_PAD_EPDC_SDOE__ENET2_RGMII_RD2		0x79>,
+			<MX7D_PAD_EPDC_SDSHR__ENET2_RGMII_RD3		0x79>,
+			<MX7D_PAD_EPDC_SDCE0__ENET2_RGMII_RX_CTL	0x79>,
 			/* Reset: SION, 100kPU, SRE_FAST, DSE_X1 */
-			MX7D_PAD_EPDC_BDR0__GPIO2_IO28		0x40000070
+			<MX7D_PAD_EPDC_BDR0__GPIO2_IO28		0x40000070>,
 			/* INT/PWDN: SION, 100kPU, HYS, SRE_FAST, DSE_X1 */
-			MX7D_PAD_EPDC_PWR_STAT__GPIO2_IO31	0x40000078
-		>;
+			<MX7D_PAD_EPDC_PWR_STAT__GPIO2_IO31	0x40000078>;
 	};
 
 	pinctrl_pcie: pciegrp {
-		fsl,pins = <
+		fsl,pins =
 			/* #pcie_wake */
-			MX7D_PAD_EPDC_PWR_COM__GPIO2_IO30		0x70
+			<MX7D_PAD_EPDC_PWR_COM__GPIO2_IO30		0x70>,
 			/* #pcie_rst */
-			MX7D_PAD_SD2_CLK__GPIO5_IO12			0x70
+			<MX7D_PAD_SD2_CLK__GPIO5_IO12			0x70>,
 			/* #pcie_dis */
-			MX7D_PAD_EPDC_BDR1__GPIO2_IO29			0x70
-		>;
+			<MX7D_PAD_EPDC_BDR1__GPIO2_IO29			0x70>;
 	};
 };
 
 &iomuxc_lpsr {
 	pinctrl_usbotg2: usbotg2grp {
-		fsl,pins = <
-			MX7D_PAD_LPSR_GPIO1_IO06__USB_OTG2_OC	0x5c
-			MX7D_PAD_LPSR_GPIO1_IO07__GPIO1_IO7	0x59
-		>;
+		fsl,pins =
+			<MX7D_PAD_LPSR_GPIO1_IO06__USB_OTG2_OC	0x5c>,
+			<MX7D_PAD_LPSR_GPIO1_IO07__GPIO1_IO7	0x59>;
 	};
 };
 
-- 
2.34.1


