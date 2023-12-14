Return-Path: <devicetree+bounces-25430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9B48133CE
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:02:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A0C571C21B2C
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA35B5B5D8;
	Thu, 14 Dec 2023 15:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="TVC6NtTL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7E1C115
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 07:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702566169; x=1734102169;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=o8EuK7qwzhwbIeeb5t+r0heHX3qcrOP+vnYDQfYuk0s=;
  b=TVC6NtTLzDZgTJEFqoMmTcY24Zbi06rISqqG/R6V3wsBFzz3n9Q/V0Ty
   w3UtSTyGemOxAKGAtvjPCS8TB0qCZ+GWML2IVYkJjBkKcb90y4/0BNVyz
   a0vftH8/Ts0xTgWaeBuPrv7/OsnGWw+mClsBV3lPqHvQU7L7M6Z7uKhJ3
   vz+dzs6qmfRQL40wkmpyWueNTNySbTxcSX23S1J+h0Gj8CyIGQ31SUjkd
   JW1dI9wzqazCykrDAFytRoMlBFw1hI3qb2Oz1Zf1L/vSdKHIzm2SbBix0
   VmhGvzN1V5fDhwpcmz8YxsrDbqrkOGu+DnWj4pmip3Ukm2lgJy7GhmzsV
   A==;
X-IronPort-AV: E=Sophos;i="6.04,275,1695679200"; 
   d="scan'208";a="34513398"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2023 16:02:44 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 58F36280075;
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
Subject: [PATCH 2/5] arm64: dts: imx8qxp: Add audio clock mux node
Date: Thu, 14 Dec 2023 16:02:40 +0100
Message-Id: <20231214150243.1991532-3-alexander.stein@ew.tq-group.com>
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

The audio clock mux (ACM) selects the input clock for each attached
consumer, referenced by clock-cell.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This node is essentially copied from
Documentation/devicetree/bindings/clock/fsl,imx8-acm.yaml.

 .../boot/dts/freescale/imx8-ss-audio.dtsi     | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
index f080be75c4219..61ef0272b06e6 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
@@ -289,4 +289,63 @@ aud_pll_div1_lpcg: clock-controller@59d30000 {
 		clock-output-names = "aud_pll_div_clk1_lpcg_clk";
 		power-domains = <&pd IMX_SC_R_AUDIO_PLL_1>;
 	};
+
+	acm: acm@59e00000 {
+		compatible = "fsl,imx8qxp-acm";
+		reg = <0x59e00000 0x1d0000>;
+		#clock-cells = <1>;
+		power-domains = <&pd IMX_SC_R_AUDIO_CLK_0>,
+				<&pd IMX_SC_R_AUDIO_CLK_1>,
+				<&pd IMX_SC_R_MCLK_OUT_0>,
+				<&pd IMX_SC_R_MCLK_OUT_1>,
+				<&pd IMX_SC_R_AUDIO_PLL_0>,
+				<&pd IMX_SC_R_AUDIO_PLL_1>,
+				<&pd IMX_SC_R_ASRC_0>,
+				<&pd IMX_SC_R_ASRC_1>,
+				<&pd IMX_SC_R_ESAI_0>,
+				<&pd IMX_SC_R_SAI_0>,
+				<&pd IMX_SC_R_SAI_1>,
+				<&pd IMX_SC_R_SAI_2>,
+				<&pd IMX_SC_R_SAI_3>,
+				<&pd IMX_SC_R_SAI_4>,
+				<&pd IMX_SC_R_SAI_5>,
+				<&pd IMX_SC_R_SPDIF_0>,
+				<&pd IMX_SC_R_MQS_0>;
+		clocks = <&aud_rec0_lpcg IMX_LPCG_CLK_0>,
+			 <&aud_rec1_lpcg IMX_LPCG_CLK_0>,
+			 <&aud_pll_div0_lpcg IMX_LPCG_CLK_0>,
+			 <&aud_pll_div1_lpcg IMX_LPCG_CLK_0>,
+			 <&clk_ext_aud_mclk0>,
+			 <&clk_ext_aud_mclk1>,
+			 <&clk_esai0_rx_clk>,
+			 <&clk_esai0_rx_hf_clk>,
+			 <&clk_esai0_tx_clk>,
+			 <&clk_esai0_tx_hf_clk>,
+			 <&clk_spdif0_rx>,
+			 <&clk_sai0_rx_bclk>,
+			 <&clk_sai0_tx_bclk>,
+			 <&clk_sai1_rx_bclk>,
+			 <&clk_sai1_tx_bclk>,
+			 <&clk_sai2_rx_bclk>,
+			 <&clk_sai3_rx_bclk>,
+			 <&clk_sai4_rx_bclk>;
+		clock-names = "aud_rec_clk0_lpcg_clk",
+			      "aud_rec_clk1_lpcg_clk",
+			      "aud_pll_div_clk0_lpcg_clk",
+			      "aud_pll_div_clk1_lpcg_clk",
+			      "ext_aud_mclk0",
+			      "ext_aud_mclk1",
+			      "esai0_rx_clk",
+			      "esai0_rx_hf_clk",
+			      "esai0_tx_clk",
+			      "esai0_tx_hf_clk",
+			      "spdif0_rx",
+			      "sai0_rx_bclk",
+			      "sai0_tx_bclk",
+			      "sai1_rx_bclk",
+			      "sai1_tx_bclk",
+			      "sai2_rx_bclk",
+			      "sai3_rx_bclk",
+			      "sai4_rx_bclk";
+	};
 };
-- 
2.34.1


