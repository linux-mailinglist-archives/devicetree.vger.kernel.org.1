Return-Path: <devicetree+bounces-25429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B207E8133CD
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:02:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F288283324
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B3395B5CD;
	Thu, 14 Dec 2023 15:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="ghHKDJD5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 915F710F
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 07:02:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702566167; x=1734102167;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ntZXZCgAo08DHpFb/9nNhS/xpUgp98Z+o0yfQiEXmaI=;
  b=ghHKDJD5FA8T0kLjhal/tpiyydt/JCRFpa9nOm8mEF1+bDE/LNYiBjkw
   1jndjEGrIuoiMHMwVWNcA070HUh8opjE68kMmRcwfmS/hfklG+J5N48QO
   fhbxgEapseZpRWNiXJrMa2snbGmKZ0DWhYWfw1GH0Uf3Oq3dTLboVBNHH
   oKbiiZ7GOsFj7BLUvNY2Pn9lK2dupnzHeeoaC2ezl1qXEeksBDwtCna/1
   gnqZwFE9BfpRJSJLVLbdbK4xGHQ5tM7/NW+DCU3YiOtwnCBcxX0rCJzaS
   HxLdF2Zqbux/7wPjqd2COraHrYAE+hd1KO+W20Vw3OwITZ21zQo4A5rbl
   g==;
X-IronPort-AV: E=Sophos;i="6.04,275,1695679200"; 
   d="scan'208";a="34513397"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2023 16:02:44 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 24A03280084;
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
Subject: [PATCH 1/5] arm64: dts: imx8qxp: Add ACM input clock gates
Date: Thu, 14 Dec 2023 16:02:39 +0100
Message-Id: <20231214150243.1991532-2-alexander.stein@ew.tq-group.com>
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

These clock gates provide input clocks for ACM. They can be selected by
IMX_ADMA_ACM_* macros. As SAI driver does not provide Tx/Rx bitclock
clocks yet, add dummy clocks for the unimplemented inputs.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
ACM needs a lot of input clocks, while currently only 4 (aud_rec*_lpcg and
aud_pll_div*_lpcg) do have an actual clock provider. For each unsupported
clock there is a 0Hz fixed-clock added. This should be removed once a proper
clock provider is added.
This is different to the clock-dummy in imx8qxp.dtsi which provides a dummy
clock for an invalid mux settings.

 .../boot/dts/freescale/imx8-ss-audio.dtsi     | 138 ++++++++++++++++++
 1 file changed, 138 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
index f057c6b21b301..f080be75c4219 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
@@ -14,6 +14,104 @@ audio_ipg_clk: clock-audio-ipg {
 	clock-output-names = "audio_ipg_clk";
 };
 
+clk_ext_aud_mclk0: clock-ext-aud-mclk0 {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <0>;
+	clock-output-names = "ext_aud_mclk0";
+};
+
+clk_ext_aud_mclk1: clock-ext-aud-mclk1 {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <0>;
+	clock-output-names = "ext_aud_mclk1";
+};
+
+clk_esai0_rx_clk: clock-esai0-rx {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <0>;
+	clock-output-names = "esai0_rx_clk";
+};
+
+clk_esai0_rx_hf_clk: clock-esai0-rx-hf {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <0>;
+	clock-output-names = "esai0_rx_hf_clk";
+};
+
+clk_esai0_tx_clk: clock-esai0-tx {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <0>;
+	clock-output-names = "esai0_tx_clk";
+};
+
+clk_esai0_tx_hf_clk: clock-esai0-tx-hf {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <0>;
+	clock-output-names = "esai0_tx_hf_clk";
+};
+
+clk_spdif0_rx: clock-spdif0-rx {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <0>;
+	clock-output-names = "spdif0_rx";
+};
+
+clk_sai0_rx_bclk: clock-sai0-rx-bclk {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <0>;
+	clock-output-names = "sai0_rx_bclk";
+};
+
+clk_sai0_tx_bclk: clock-sai0-tx-bclk {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <0>;
+	clock-output-names = "sai0_tx_bclk";
+};
+
+clk_sai1_rx_bclk: clock-sai1-rx-bclk {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <0>;
+	clock-output-names = "sai1_rx_bclk";
+};
+
+clk_sai1_tx_bclk: clock-sai1-tx-bclk {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <0>;
+	clock-output-names = "sai1_tx_bclk";
+};
+
+clk_sai2_rx_bclk: clock-sai2-rx-bclk {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <0>;
+	clock-output-names = "sai2_rx_bclk";
+};
+
+clk_sai3_rx_bclk: clock-sai3-rx-bclk {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <0>;
+	clock-output-names = "sai3_rx_bclk";
+};
+
+clk_sai4_rx_bclk: clock-sai4-rx-bclk {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <0>;
+	clock-output-names = "sai4_rx_bclk";
+};
+
 audio_subsys: bus@59000000 {
 	compatible = "simple-bus";
 	#address-cells = <1>;
@@ -151,4 +249,44 @@ edma1: dma-controller@599f0000 {
 				<&pd IMX_SC_R_DMA_1_CH9>,
 				<&pd IMX_SC_R_DMA_1_CH10>;
 	};
+
+	aud_rec0_lpcg: clock-controller@59d00000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x59d00000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_MST_BUS>;
+		clock-indices = <IMX_LPCG_CLK_0>;
+		clock-output-names = "aud_rec_clk0_lpcg_clk";
+		power-domains = <&pd IMX_SC_R_AUDIO_PLL_0>;
+	};
+
+	aud_rec1_lpcg: clock-controller@59d10000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x59d10000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_AUDIO_PLL_1 IMX_SC_PM_CLK_MST_BUS>;
+		clock-indices = <IMX_LPCG_CLK_0>;
+		clock-output-names = "aud_rec_clk1_lpcg_clk";
+		power-domains = <&pd IMX_SC_R_AUDIO_PLL_1>;
+	};
+
+	aud_pll_div0_lpcg: clock-controller@59d20000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x59d20000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_SLV_BUS>;
+		clock-indices = <IMX_LPCG_CLK_0>;
+		clock-output-names = "aud_pll_div_clk0_lpcg_clk";
+		power-domains = <&pd IMX_SC_R_AUDIO_PLL_0>;
+	};
+
+	aud_pll_div1_lpcg: clock-controller@59d30000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x59d30000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_AUDIO_PLL_1 IMX_SC_PM_CLK_SLV_BUS>;
+		clock-indices = <IMX_LPCG_CLK_0>;
+		clock-output-names = "aud_pll_div_clk1_lpcg_clk";
+		power-domains = <&pd IMX_SC_R_AUDIO_PLL_1>;
+	};
 };
-- 
2.34.1


