Return-Path: <devicetree+bounces-27579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 307B681AEA3
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 07:09:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD40A1F245D9
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 06:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C860B664;
	Thu, 21 Dec 2023 06:09:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7D1DAD5E;
	Thu, 21 Dec 2023 06:09:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3D8441A06C0;
	Thu, 21 Dec 2023 07:04:29 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 079A31A0280;
	Thu, 21 Dec 2023 07:04:29 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 7EB8B180226C;
	Thu, 21 Dec 2023 14:04:27 +0800 (+08)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: imx8mn-evk: Add PDM micphone sound card support
Date: Thu, 21 Dec 2023 13:23:08 +0800
Message-Id: <1703136188-7222-2-git-send-email-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1703136188-7222-1-git-send-email-shengjiu.wang@nxp.com>
References: <1703136188-7222-1-git-send-email-shengjiu.wang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add PDM micphone sound card support, configure the pinmux.

This sound card supports recording sound from PDM micphone
and convert the PDM format data to PCM data.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
index a0e13d3324ed..7d055b63535a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
@@ -110,6 +110,18 @@ sound-spdif {
 		spdif-out;
 		spdif-in;
 	};
+
+	sound-micfil {
+		compatible = "fsl,imx-audio-card";
+		model = "micfil-audio";
+		pri-dai-link {
+			link-name = "micfil hifi";
+			format = "i2s";
+			cpu {
+				sound-dai = <&micfil>;
+			};
+		};
+	};
 };
 
 &easrc {
@@ -285,6 +297,16 @@ &isi {
 	status = "okay";
 };
 
+&micfil {
+	#sound-dai-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pdm>;
+	assigned-clocks = <&clk IMX8MN_CLK_PDM>;
+	assigned-clock-parents = <&clk IMX8MN_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <196608000>;
+	status = "okay";
+};
+
 &mipi_csi {
 	status = "okay";
 
@@ -522,6 +544,18 @@ MX8MN_IOMUXC_I2C3_SDA_GPIO5_IO19	0x1c3
 		>;
 	};
 
+	pinctrl_pdm: pdmgrp {
+		fsl,pins = <
+			MX8MN_IOMUXC_SAI5_MCLK_SAI5_MCLK	0xd6
+			MX8MN_IOMUXC_SAI5_RXC_PDM_CLK		0xd6
+			MX8MN_IOMUXC_SAI5_RXFS_SAI5_RX_SYNC	0xd6
+			MX8MN_IOMUXC_SAI5_RXD0_PDM_BIT_STREAM0	0xd6
+			MX8MN_IOMUXC_SAI5_RXD1_PDM_BIT_STREAM1	0xd6
+			MX8MN_IOMUXC_SAI5_RXD2_PDM_BIT_STREAM2	0xd6
+			MX8MN_IOMUXC_SAI5_RXD3_PDM_BIT_STREAM3	0xd6
+		>;
+	};
+
 	pinctrl_pmic: pmicirqgrp {
 		fsl,pins = <
 			MX8MN_IOMUXC_GPIO1_IO03_GPIO1_IO3	0x141
-- 
2.34.1


