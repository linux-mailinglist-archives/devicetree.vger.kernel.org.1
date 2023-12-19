Return-Path: <devicetree+bounces-26888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FB481878D
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 13:34:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA9A11F24A9B
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 12:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB2D9179AD;
	Tue, 19 Dec 2023 12:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="eYjnk5Hs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D1417758
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 12:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702989286; x=1734525286;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=WWTF/q1urjBpYGjn2DODNi9niiH26mYw3FlZz7HcEDo=;
  b=eYjnk5HsOPRc5Kjb8YgT4dg8FoVwQxQRMqDclzUikkjEATrT7kIV1szp
   ajrXg5LbL9NoZse4vula5mLewntkXNZIE5Lz+VD5J716RsFk2re4xaGbH
   G1pFHQlKImNTJniU+xgyilkUSghFvuEzQfbEV1ghkmYiv0fMmlOUaEf0q
   VBQcK3Tlchnh9P90LWbVMfr24Oa/YTgEf7eQcMQp5cWLyktBvoaYXKldm
   dexFGTIBKE2+tsLFze0ewQfZxvK6ZGUVKJVYkWJQy9eD80QzLKbxFU4II
   FgswR6dsUgxn9AlI9U3+Dbee71pDlU1/S3RlXfHclYUTn1eCy1D+8fs67
   Q==;
X-IronPort-AV: E=Sophos;i="6.04,288,1695679200"; 
   d="scan'208";a="34586424"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Dec 2023 13:34:41 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id D4037280084;
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
Subject: [PATCH 2/2] arm64: dts: imx8: Fix lpuart DMA channel order
Date: Tue, 19 Dec 2023 13:34:39 +0100
Message-Id: <20231219123439.3359318-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231219123439.3359318-1-alexander.stein@ew.tq-group.com>
References: <20231219123439.3359318-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings say DMA channels are in order Rx, Tx. Adjust the DT nodes
accordingly.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
index a180893ac81e..0f48796e32b2 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
@@ -93,8 +93,8 @@ lpuart0: serial@5a060000 {
 		assigned-clocks = <&clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <80000000>;
 		power-domains = <&pd IMX_SC_R_UART_0>;
-		dma-names = "tx","rx";
-		dmas = <&edma2 9 0 0>, <&edma2 8 0 1>;
+		dma-names = "rx", "tx";
+		dmas = <&edma2 8 0 0>, <&edma2 9 0 1>;
 		status = "disabled";
 	};
 
@@ -107,8 +107,8 @@ lpuart1: serial@5a070000 {
 		assigned-clocks = <&clk IMX_SC_R_UART_1 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <80000000>;
 		power-domains = <&pd IMX_SC_R_UART_1>;
-		dma-names = "tx","rx";
-		dmas = <&edma2 11 0 0>, <&edma2 10 0 1>;
+		dma-names = "rx", "tx";
+		dmas = <&edma2 10 0 0>, <&edma2 11 0 1>;
 		status = "disabled";
 	};
 
@@ -121,8 +121,8 @@ lpuart2: serial@5a080000 {
 		assigned-clocks = <&clk IMX_SC_R_UART_2 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <80000000>;
 		power-domains = <&pd IMX_SC_R_UART_2>;
-		dma-names = "tx","rx";
-		dmas = <&edma2 13 0 0>, <&edma2 12 0 1>;
+		dma-names = "rx", "tx";
+		dmas = <&edma2 12 0 0>, <&edma2 13 0 1>;
 		status = "disabled";
 	};
 
@@ -135,8 +135,8 @@ lpuart3: serial@5a090000 {
 		assigned-clocks = <&clk IMX_SC_R_UART_3 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <80000000>;
 		power-domains = <&pd IMX_SC_R_UART_3>;
-		dma-names = "tx","rx";
-		dmas = <&edma2 15 0 0>, <&edma2 14 0 1>;
+		dma-names = "rx", "tx";
+		dmas = <&edma2 14 0 0>, <&edma2 15 0 1>;
 		status = "disabled";
 	};
 
-- 
2.34.1


