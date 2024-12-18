Return-Path: <devicetree+bounces-132142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC0F9F5FE4
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 09:07:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D5A21679F0
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 08:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C505193074;
	Wed, 18 Dec 2024 08:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="GhHWcxWF"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A2EF15E5D4;
	Wed, 18 Dec 2024 08:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734509102; cv=none; b=M01bYfy7QMoi4x2DMZCiyhetzy+SSEiT9IeWEuUMNE2deTgTQSsd+0FC0mmIgC8sZ4oiOh0MAPXXDumE7kB11dn5YyhltFEbrriOqjaf2ydlZRQCLe1DUaBL6cv1RBfiAhlVUftrOl3PTh/ypV/4iCupxPYB6SEfAijBW7eUdEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734509102; c=relaxed/simple;
	bh=tHhUwVI89duGuApu6c+HrvoQwjjesU12xZgxqJCiBXI=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Kjr03ZvlwBwwC2l+z94BV46SG0Y92eC7ldplPe0ocf2jGTDz074kOeUMXGkklxeTH2YlZhR70nl1Mm6x3g1oEjvBRsAGKxeo011U43n9yEcbhNjT9rAlBKmU5fLJDMDTNYVquLFDnBn80LQD5McDPPjeEsfUD9jVrSfJREQr86k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=GhHWcxWF; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1734509101; x=1766045101;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=tHhUwVI89duGuApu6c+HrvoQwjjesU12xZgxqJCiBXI=;
  b=GhHWcxWFibgwQOT6WlNKPIWbVjKsYAryZrJXtX73GIdINeiJ/EjPxuz+
   q5lJNsn32B9Ms2+koaBkxzAGWotwvrXqz/7Wk3Vdk+eyKBHdJNtNmj2NE
   5MRN5YcUfyZFqNWtQO5aKwV/LcLPRRPVjHsCxYd2eJdXbrxjO+tcKORvs
   9yKaBDv5cRo8OLjJuCpLWLhYcjhtxFfIBufbDsgqQjEi9t6ZOFx0QBSTK
   PDKY2OmzbiVsaLgscKhRCMDloS8eUA3sy9O7gquU8MBeor2O9jl9TmB0X
   iJqiOo+oKlhfS1pupAtQclrIxlrROL+B9H6aaDhginc9Gds4u8qnv/MfT
   w==;
X-CSE-ConnectionGUID: xTeLUC79Q52BURM6x9sMBQ==
X-CSE-MsgGUID: RQAWdpp8QhW9zjl9+yrjaA==
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; 
   d="scan'208";a="266906840"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Dec 2024 01:04:59 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 18 Dec 2024 01:04:43 -0700
Received: from archlinux.mchp-main.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Wed, 18 Dec 2024 01:04:41 -0700
From: Mihai Sain <mihai.sain@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Mihai Sain <mihai.sain@microchip.com>
Subject: [PATCH 1/2] ARM: dts: microchip: sam9x60: Add address/size to spi-controller nodes
Date: Wed, 18 Dec 2024 10:03:32 +0200
Message-ID: <20241218080333.2225-2-mihai.sain@microchip.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241218080333.2225-1-mihai.sain@microchip.com>
References: <20241218080333.2225-1-mihai.sain@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Since these properties are common for all spi subnodes,
add them to SoC dtsi instead of board dts.

Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
---
 arch/arm/boot/dts/microchip/sam9x60.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/sam9x60.dtsi b/arch/arm/boot/dts/microchip/sam9x60.dtsi
index 36944e18a329..b8b2c1ddf3f1 100644
--- a/arch/arm/boot/dts/microchip/sam9x60.dtsi
+++ b/arch/arm/boot/dts/microchip/sam9x60.dtsi
@@ -197,6 +197,8 @@ spi4: spi@400 {
 					compatible = "microchip,sam9x60-spi", "atmel,at91rm9200-spi";
 					reg = <0x400 0x200>;
 					interrupts = <13 IRQ_TYPE_LEVEL_HIGH 7>;
+					#address-cells = <1>;
+					#size-cells = <0>;
 					clocks = <&pmc PMC_TYPE_PERIPHERAL 13>;
 					clock-names = "spi_clk";
 					dmas = <&dma0
@@ -268,6 +270,8 @@ spi5: spi@400 {
 					compatible = "microchip,sam9x60-spi", "atmel,at91rm9200-spi";
 					reg = <0x400 0x200>;
 					interrupts = <14 IRQ_TYPE_LEVEL_HIGH 7>;
+					#address-cells = <1>;
+					#size-cells = <0>;
 					clocks = <&pmc PMC_TYPE_PERIPHERAL 14>;
 					clock-names = "spi_clk";
 					dmas = <&dma0
@@ -768,6 +772,8 @@ spi0: spi@400 {
 					compatible = "microchip,sam9x60-spi", "atmel,at91rm9200-spi";
 					reg = <0x400 0x200>;
 					interrupts = <5 IRQ_TYPE_LEVEL_HIGH 7>;
+					#address-cells = <1>;
+					#size-cells = <0>;
 					clocks = <&pmc PMC_TYPE_PERIPHERAL 5>;
 					clock-names = "spi_clk";
 					dmas = <&dma0
@@ -839,6 +845,8 @@ spi1: spi@400 {
 					compatible = "microchip,sam9x60-spi", "atmel,at91rm9200-spi";
 					reg = <0x400 0x200>;
 					interrupts = <6 IRQ_TYPE_LEVEL_HIGH 7>;
+					#address-cells = <1>;
+					#size-cells = <0>;
 					clocks = <&pmc PMC_TYPE_PERIPHERAL 6>;
 					clock-names = "spi_clk";
 					dmas = <&dma0
@@ -910,6 +918,8 @@ spi2: spi@400 {
 					compatible = "microchip,sam9x60-spi", "atmel,at91rm9200-spi";
 					reg = <0x400 0x200>;
 					interrupts = <7 IRQ_TYPE_LEVEL_HIGH 7>;
+					#address-cells = <1>;
+					#size-cells = <0>;
 					clocks = <&pmc PMC_TYPE_PERIPHERAL 7>;
 					clock-names = "spi_clk";
 					dmas = <&dma0
@@ -981,6 +991,8 @@ spi3: spi@400 {
 					compatible = "microchip,sam9x60-spi", "atmel,at91rm9200-spi";
 					reg = <0x400 0x200>;
 					interrupts = <8 IRQ_TYPE_LEVEL_HIGH 7>;
+					#address-cells = <1>;
+					#size-cells = <0>;
 					clocks = <&pmc PMC_TYPE_PERIPHERAL 8>;
 					clock-names = "spi_clk";
 					dmas = <&dma0
-- 
2.47.1


