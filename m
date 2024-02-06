Return-Path: <devicetree+bounces-38950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E35884AF96
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 09:07:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF14E1F2376B
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 08:06:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66F9E12AACA;
	Tue,  6 Feb 2024 08:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="cQf0ptnS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83E8412AAD3
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 08:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707206705; cv=none; b=Cuj/8DDOkgBvpCt4lnIZ69S5fuIuqdREE71Nk5jIlJg/6l9G5hgDeSSx0WMF0l7OE8MHeF0R6caEvvuLhilRhIJ9Q7Uozeyhinbah778rNT8PXQAj2tJJh0CUULSwLzzzwV8TkG/ovj7Bt1hc5N1OANtjg18lEW1imVB8PQ4bO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707206705; c=relaxed/simple;
	bh=8XSc5FZ2RemBb7fBEMYnlNfD//5f4giEdPKZFA0uyYM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=VAkmkyMImeia+5MZezzg/I42s9JcoBDZSDysuhNIOxTZVix/UV7CmNL0sBWDamCjD+wAKVjTxb10DCp/+2dSSS9JJi/unND31EGBozGUAWeQXBvWzlws9NekEou23BnGaqgQvjLqpNEbYyct5gSc0Y7tkM9E3a8OrwjD3LWU1Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=cQf0ptnS; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1707206702; x=1738742702;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=OgqxG0tTkmiryaP0vOeUzkn9GRHBN7/TPk8D9Jn8St0=;
  b=cQf0ptnS0uJSjnq8VHU9pIGAkJIxUsxImH4IXSRx01RaFXbxxVBPbSIV
   L1owH4nNFVCftJo2DktBe+pfBQIvGUWe4dKgSAwLEkpr3rCFJQ0IfCp5e
   blgUXgflYIysi72x8EySm5OP2GMX5wUFF5SAdG3eODRijnPnGe5S2+MXQ
   EyvZ7o6Rcgg1Y0YUS1hOo0Y7BkJTe/aXC6kdHHeeVGTqlP17O9s+fTNE1
   fmqsvU3BtavKtZobAPichcXVIwXwiD0y7dwLOl0EYX3lmn+b8bLFF2M2K
   50cpuC1w0usngq9485I+rKhOnXhShKikXPNvkM6500HCVmz1GiZqh8sGu
   Q==;
X-IronPort-AV: E=Sophos;i="6.05,246,1701126000"; 
   d="scan'208";a="35262219"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Feb 2024 09:05:00 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id DE5C4280075;
	Tue,  6 Feb 2024 09:04:59 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
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
Subject: [PATCH v2 1/2] arm64: dts: freescale: imx8-ss-dma: Fix edma3's location
Date: Tue,  6 Feb 2024 09:04:58 +0100
Message-Id: <20240206080459.1741172-1-alexander.stein@ew.tq-group.com>
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
index b0bb77150adcc..a180893ac81e0 100644
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


