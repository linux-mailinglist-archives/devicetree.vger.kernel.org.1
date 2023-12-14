Return-Path: <devicetree+bounces-25432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E59C68133D0
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:02:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 73EC91F221B1
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 355625B5CD;
	Thu, 14 Dec 2023 15:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="dAI5lAUv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 562D7120
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 07:02:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702566169; x=1734102169;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=/JzvmgCuE5/vwqnmvfp26TZymQHwHO2e89lNzTTRkW0=;
  b=dAI5lAUvdLnvElg8p8h5Yb0/51HrHCCSeVSP6xpsmdT/DZv9pGz2vmZt
   MMdOXdcmvmM91r/GyuUwD9gcTe1ko9Gi0bRlEG0srMFK0plpQmmY27NmL
   m6eAVqync7M3ANPRczoZvuXeTIhJJrnjdxV5vC1lKuCdJGL64Xz3yf0+y
   QPsj+aYVPQCgW2mkTvptn/fsiIaL8UfEszkHHfl1jAe4J07nrVbCN0Q5z
   G0himBazDdklA1ofu4oO3UmaiRTcK5fC9P7xee4UxCWXMs5fzy4zCUSD0
   DafHxyNRxid29/teqUMs6CgZTN+KWT1bAz0nqR8Cf+TAXQpPaeutiBm5i
   g==;
X-IronPort-AV: E=Sophos;i="6.04,275,1695679200"; 
   d="scan'208";a="34513399"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2023 16:02:44 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 8F366280084;
	Thu, 14 Dec 2023 16:02:44 +0100 (CET)
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
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/5] arm64: dts: imx8qxp: Add audio SAI nodes
Date: Thu, 14 Dec 2023 16:02:41 +0100
Message-Id: <20231214150243.1991532-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214150243.1991532-1-alexander.stein@ew.tq-group.com>
References: <20231214150243.1991532-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds the sai nodes attached to aips1 bus. These can be shared with
imx8qm as well. Input clock from ACM is always feed to mclk1 only. Others
are unused and are connected to a dummy clock.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This SAI list is not complete, but re-usable on imx8qm without any further
change. Adding SAI4/5 needs to be done in a SoC-specific file
imx8qxp-ss-audio.dtsi. They are hard-wired to the internal audio mixer as well.

 .../boot/dts/freescale/imx8-ss-audio.dtsi     | 113 ++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    |   7 ++
 2 files changed, 120 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
index 61ef0272b06e6..29a7d10f7db3d 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
@@ -4,6 +4,7 @@
  *	Dong Aisheng <aisheng.dong@nxp.com>
  */
 
+#include <dt-bindings/clock/imx8-clock.h>
 #include <dt-bindings/clock/imx8-lpcg.h>
 #include <dt-bindings/firmware/imx/rsrc.h>
 
@@ -118,6 +119,70 @@ audio_subsys: bus@59000000 {
 	#size-cells = <1>;
 	ranges = <0x59000000 0x0 0x59000000 0x1000000>;
 
+	sai0: sai@59040000 {
+		compatible = "fsl,imx8qm-sai";
+		reg = <0x59040000 0x10000>;
+		interrupts = <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&sai0_lpcg 1>,
+			 <&clk_dummy>,
+			 <&sai0_lpcg 0>,
+			 <&clk_dummy>,
+			 <&clk_dummy>;
+		clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
+		dma-names = "rx", "tx";
+		dmas = <&edma0 12 0 1>, <&edma0 13 0 0>;
+		power-domains = <&pd IMX_SC_R_SAI_0>;
+		status = "disabled";
+	};
+
+	sai1: sai@59050000 {
+		compatible = "fsl,imx8qm-sai";
+		reg = <0x59050000 0x10000>;
+		interrupts = <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&sai1_lpcg 1>,
+			 <&clk_dummy>,
+			 <&sai1_lpcg 0>,
+			 <&clk_dummy>,
+			 <&clk_dummy>;
+		clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
+		dma-names = "rx", "tx";
+		dmas = <&edma0 14 0 1>, <&edma0 15 0 0>;
+		power-domains = <&pd IMX_SC_R_SAI_1>;
+		status = "disabled";
+	};
+
+	sai2: sai@59060000 {
+		compatible = "fsl,imx8qm-sai";
+		reg = <0x59060000 0x10000>;
+		interrupts = <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&sai2_lpcg 1>,
+			 <&clk_dummy>,
+			 <&sai2_lpcg 0>,
+			 <&clk_dummy>,
+			 <&clk_dummy>;
+		clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
+		dma-names = "rx";
+		dmas = <&edma0 16 0 1>;
+		power-domains = <&pd IMX_SC_R_SAI_2>;
+		status = "disabled";
+	};
+
+	sai3: sai@59070000 {
+		compatible = "fsl,imx8qm-sai";
+		reg = <0x59070000 0x10000>;
+		interrupts = <GIC_SPI 323 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&sai3_lpcg 1>,
+			 <&clk_dummy>,
+			 <&sai3_lpcg 0>,
+			 <&clk_dummy>,
+			 <&clk_dummy>;
+		clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
+		dma-names = "rx";
+		dmas = <&edma0 17 0 1>;
+		power-domains = <&pd IMX_SC_R_SAI_3>;
+		status = "disabled";
+	};
+
 	edma0: dma-controller@591f0000 {
 		compatible = "fsl,imx8qm-edma";
 		reg = <0x591f0000 0x190000>;
@@ -174,6 +239,54 @@ edma0: dma-controller@591f0000 {
 				<&pd IMX_SC_R_DMA_0_CH23>;
 	};
 
+	sai0_lpcg: clock-controller@59440000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x59440000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&acm IMX_ADMA_ACM_SAI0_MCLK_SEL>,
+			 <&audio_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "sai0_lpcg_mclk",
+				     "sai0_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_SAI_0>;
+	};
+
+	sai1_lpcg: clock-controller@59450000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x59450000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&acm IMX_ADMA_ACM_SAI1_MCLK_SEL>,
+			 <&audio_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "sai1_lpcg_mclk",
+				     "sai1_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_SAI_1>;
+	};
+
+	sai2_lpcg: clock-controller@59460000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x59460000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&acm IMX_ADMA_ACM_SAI2_MCLK_SEL>,
+			 <&audio_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "sai2_lpcg_mclk",
+				     "sai2_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_SAI_2>;
+	};
+
+	sai3_lpcg: clock-controller@59470000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x59470000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&acm IMX_ADMA_ACM_SAI3_MCLK_SEL>,
+			 <&audio_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "sai3_lpcg_mclk",
+				     "sai3_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_SAI_3>;
+	};
+
 	dsp_lpcg: clock-controller@59580000 {
 		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x59580000 0x10000>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 958267b333403..fdbb4242b157c 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -260,6 +260,13 @@ timer {
 			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>; /* Hypervisor */
 	};
 
+	clk_dummy: clock-dummy {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+		clock-output-names = "clk_dummy";
+	};
+
 	xtal32k: clock-xtal32k {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-- 
2.34.1


