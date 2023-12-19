Return-Path: <devicetree+bounces-26887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AA381878C
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 13:34:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59BA5283818
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 12:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0484913AF5;
	Tue, 19 Dec 2023 12:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="ktIDCWE8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2C41804D
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 12:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702989283; x=1734525283;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=qULu1jXJ+mZx5egdHeQ5qjRxTtgo3XOVkFwjP86id40=;
  b=ktIDCWE8WAeJQRKkEiK4PUgWgltGj7axvQIBuK5+aIDJ4ZJhw69YPDLO
   O1uG+oXcwIY+h+2zPT5d26BQK+Dv2zClb68a+40TsOYWd4J8vlRnnXhWh
   HopzV2+kkSydPqhc5NGPeYruEDpwiT0zQjSmpTAde5n/CHFIA6x5g1FtH
   pSuxKClBEQKAH12Z4VAil5rQ1njlM1VEtPSnaJFdXi6qIOoagZlCl7uZo
   8OJMycTXG7TULez/3tyqq903OfzzV5JnkchU4CyvfFrWrGIomC+oHaRfD
   UdVJUWZclabHIz+ByeEr9+hdGDF1fu1WQ8rEOsqcJb/sp4LsK8g3shTdM
   Q==;
X-IronPort-AV: E=Sophos;i="6.04,288,1695679200"; 
   d="scan'208";a="34586423"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Dec 2023 13:34:40 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 3D88D280075;
	Tue, 19 Dec 2023 13:34:40 +0100 (CET)
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
Subject: [PATCH 1/2] arm64: dts: freescale: imx8-ss-dma: Fix edma3's location
Date: Tue, 19 Dec 2023 13:34:38 +0100
Message-Id: <20231219123439.3359318-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Sort nodes by base address. edma3 comes later in the memory map.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 46 +++++++++----------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
index b0bb77150adc..a180893ac81e 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
@@ -192,29 +192,6 @@ edma2: dma-controller@5a1f0000 {
 				<&pd IMX_SC_R_DMA_2_CH15>;
 	};
 
-	edma3: dma-controller@5a9f0000 {
-		compatible = "fsl,imx8qm-edma";
-		reg = <0x5a9f0000 0x90000>;
-		#dma-cells = <3>;
-		dma-channels = <8>;
-		interrupts = <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 426 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 427 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 428 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 429 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 430 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 431 IRQ_TYPE_LEVEL_HIGH>;
-		power-domains = <&pd IMX_SC_R_DMA_3_CH0>,
-				<&pd IMX_SC_R_DMA_3_CH1>,
-				<&pd IMX_SC_R_DMA_3_CH2>,
-				<&pd IMX_SC_R_DMA_3_CH3>,
-				<&pd IMX_SC_R_DMA_3_CH4>,
-				<&pd IMX_SC_R_DMA_3_CH5>,
-				<&pd IMX_SC_R_DMA_3_CH6>,
-				<&pd IMX_SC_R_DMA_3_CH7>;
-	};
-
 	spi0_lpcg: clock-controller@5a400000 {
 		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5a400000 0x10000>;
@@ -460,6 +437,29 @@ flexcan3: can@5a8f0000 {
 		status = "disabled";
 	};
 
+	edma3: dma-controller@5a9f0000 {
+		compatible = "fsl,imx8qm-edma";
+		reg = <0x5a9f0000 0x90000>;
+		#dma-cells = <3>;
+		dma-channels = <8>;
+		interrupts = <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 426 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 427 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 428 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 429 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 430 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 431 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&pd IMX_SC_R_DMA_3_CH0>,
+				<&pd IMX_SC_R_DMA_3_CH1>,
+				<&pd IMX_SC_R_DMA_3_CH2>,
+				<&pd IMX_SC_R_DMA_3_CH3>,
+				<&pd IMX_SC_R_DMA_3_CH4>,
+				<&pd IMX_SC_R_DMA_3_CH5>,
+				<&pd IMX_SC_R_DMA_3_CH6>,
+				<&pd IMX_SC_R_DMA_3_CH7>;
+	};
+
 	i2c0_lpcg: clock-controller@5ac00000 {
 		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5ac00000 0x10000>;
-- 
2.34.1


