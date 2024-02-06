Return-Path: <devicetree+bounces-38951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F4784AF97
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 09:07:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC77A282B26
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 08:06:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7396312AAEE;
	Tue,  6 Feb 2024 08:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="jHA46NTB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C307812AAD3
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 08:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707206708; cv=none; b=qxRIPJJTh9xqrSmSpkDGILXZLShf76NFAvi3sXasCmQ598v4CVHcylsKAd3YnUcd2sewbnD4IwHD/fRjTiyFH3GXfO7064JkOzk5lGxlDFEYyUuTaYLA8/MKWbIJhUJP5EWUOU5n2BxumlfEo1kM0C4RfX/CxrMT8Yv/7tzBPmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707206708; c=relaxed/simple;
	bh=Rk2wKzIsJpfANH2zJH2/FcBbPMPYpN8fReqx5mg2FZ8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=o1dV+SkKM2x5bnMk+8uWsf8u307k9eE1qFvc+620n7prM2ew+tJOwr2IavyY9+U5+e+JeM5vU1sCcbNr+LgQPjL1GJvY9nSL7lH79QruKjC6RgjFJn1TKNOtVcY8vqKmvvrQfmgswNPz2D8Pc1QYYi2IO9Bd9ePCsOVEYqDAiLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=jHA46NTB; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1707206706; x=1738742706;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=aWrqDxHBsGTji97qijgREMNdfOCrUPOUesPyo61Tvgs=;
  b=jHA46NTBSGh7ErLctArc4NCWMU+holu71F69kViGK+dkfFwBHnyKnYzZ
   +i8l5AGo62d++DLPlXnYtCGl1SW4ocfOo0OCyco6tw395Z1bBsNu1CKtQ
   o7hwAziipU7lveb340y0z8jSctCduD6Dw0jF2qsYVKdwBr6OTHn+UPh/X
   h+pyxBCYHs/AD0vb8qtYNboE8pQf3Tl41go6n8TjmO0Ij5y1u3k+mk2xl
   lT2U9OFet/2VyPvdluKMb1lhLIrMQigks6l8GEPzetsQTkoDRRsxCdpn3
   6kOw+bGg29Ke/FVxIn3reFByjzQ+zLS4yBtyUaIMT1Hs8094JqJrMNyBF
   Q==;
X-IronPort-AV: E=Sophos;i="6.05,246,1701126000"; 
   d="scan'208";a="35262220"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Feb 2024 09:05:00 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 1B49E280084;
	Tue,  6 Feb 2024 09:05:00 +0100 (CET)
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
Subject: [PATCH v2 2/2] arm64: dts: imx8: Fix lpuart DMA channel order
Date: Tue,  6 Feb 2024 09:04:59 +0100
Message-Id: <20240206080459.1741172-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240206080459.1741172-1-alexander.stein@ew.tq-group.com>
References: <20240206080459.1741172-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings say DMA channels are in order Rx, Tx. Adjust the DT nodes
accordingly. While at it, use defines for the flags.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Use defines from dt-bindings/dma/fsl-edma.h
* Switch DMA channel flags as well

 arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
index a180893ac81e0..cab3468b1875e 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
@@ -5,6 +5,7 @@
  */
 
 #include <dt-bindings/clock/imx8-lpcg.h>
+#include <dt-bindings/dma/fsl-edma.h>
 #include <dt-bindings/firmware/imx/rsrc.h>
 
 dma_ipg_clk: clock-dma-ipg {
@@ -93,8 +94,8 @@ lpuart0: serial@5a060000 {
 		assigned-clocks = <&clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <80000000>;
 		power-domains = <&pd IMX_SC_R_UART_0>;
-		dma-names = "tx","rx";
-		dmas = <&edma2 9 0 0>, <&edma2 8 0 1>;
+		dma-names = "rx", "tx";
+		dmas = <&edma2 8 0 FSL_EDMA_RX>, <&edma2 9 0 0>;
 		status = "disabled";
 	};
 
@@ -107,8 +108,8 @@ lpuart1: serial@5a070000 {
 		assigned-clocks = <&clk IMX_SC_R_UART_1 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <80000000>;
 		power-domains = <&pd IMX_SC_R_UART_1>;
-		dma-names = "tx","rx";
-		dmas = <&edma2 11 0 0>, <&edma2 10 0 1>;
+		dma-names = "rx", "tx";
+		dmas = <&edma2 10 0 FSL_EDMA_RX>, <&edma2 11 0 0>;
 		status = "disabled";
 	};
 
@@ -121,8 +122,8 @@ lpuart2: serial@5a080000 {
 		assigned-clocks = <&clk IMX_SC_R_UART_2 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <80000000>;
 		power-domains = <&pd IMX_SC_R_UART_2>;
-		dma-names = "tx","rx";
-		dmas = <&edma2 13 0 0>, <&edma2 12 0 1>;
+		dma-names = "rx", "tx";
+		dmas = <&edma2 12 0 FSL_EDMA_RX>, <&edma2 13 0 0>;
 		status = "disabled";
 	};
 
@@ -135,8 +136,8 @@ lpuart3: serial@5a090000 {
 		assigned-clocks = <&clk IMX_SC_R_UART_3 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <80000000>;
 		power-domains = <&pd IMX_SC_R_UART_3>;
-		dma-names = "tx","rx";
-		dmas = <&edma2 15 0 0>, <&edma2 14 0 1>;
+		dma-names = "rx", "tx";
+		dmas = <&edma2 14 0 FSL_EDMA_RX>, <&edma2 15 0 0>;
 		status = "disabled";
 	};
 
-- 
2.34.1


