Return-Path: <devicetree+bounces-132143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 904269F5FE6
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 09:08:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD1111675DA
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 08:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D31D6198822;
	Wed, 18 Dec 2024 08:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="dUvQ43iM"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D9435949;
	Wed, 18 Dec 2024 08:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734509103; cv=none; b=hlzeb3Nf6TzqRA19vtJ73isY4lLUEHLCBmhpmHqE1po9j2+zhPzHPGxJ3QJiUY8D5dWniH65YkyKIHGyPZ/YH9ELTEBXosjWsGIqJWR3tuFXdUrjnb26Ki+xQ0ebtTe2CoJU+CFA4M15TZF/HVyuY9gIznwjyz/Am0xDw/+Y/7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734509103; c=relaxed/simple;
	bh=yjlDOJGWzT/4izor2c2IpKm3XYaSgcXwaIVH7GcD7l8=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=K6qv4/JQlGUf0RXjkMPrJO+UTxiWOmwSegihR61gbULsQiOiZ+5CnIIbo26tHTDhgSivsfe2wZVxk8RJkz7IUoziuVy0Ru4XbC1pBuuGk13iO91WVV12YIrQrOvAZfizj4nvrinkjiZBfkWOaPyFKxZhLxZXBIrtLi3b0IuLTDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=dUvQ43iM; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1734509103; x=1766045103;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=yjlDOJGWzT/4izor2c2IpKm3XYaSgcXwaIVH7GcD7l8=;
  b=dUvQ43iMdth8tuXrcRFUshh0/XgTNdcDmw0UAyAJW51JWQbimtkfb4Ha
   bZ7ee0AbXYcJNVQBSfXxE4KpuvzzmaBJe8t/mXBSoT2YIE4JEt6KDYdin
   fj1RciNcyZL1tica1WuwSvT30TBhetlXZNOIfcjmJlZyE41AJ4ADrzTRk
   oK6cYOUHtH8USuc9hG3tLEH7/nOq1JZNGxWLnDNhUXF7iyRhsGqgT4R3J
   LaL638ciT9lONPyUi+6SdZP3oDz7RXHgmC0W9rsJdy+hiptA6ulaY2vLe
   4ZNstJU6LB1l1UEEskmpwlSb06FW1SKWHdkDF6OyXkCvapY8yp/436/+V
   g==;
X-CSE-ConnectionGUID: xTeLUC79Q52BURM6x9sMBQ==
X-CSE-MsgGUID: IhPrvPJ0StSDC9RZq2fICQ==
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; 
   d="scan'208";a="266906841"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Dec 2024 01:05:00 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 18 Dec 2024 01:04:45 -0700
Received: from archlinux.mchp-main.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Wed, 18 Dec 2024 01:04:43 -0700
From: Mihai Sain <mihai.sain@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Mihai Sain <mihai.sain@microchip.com>
Subject: [PATCH 2/2] ARM: dts: microchip: sam9x7: Add address/size to spi-controller nodes
Date: Wed, 18 Dec 2024 10:03:33 +0200
Message-ID: <20241218080333.2225-3-mihai.sain@microchip.com>
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
 arch/arm/boot/dts/microchip/sam9x7.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/sam9x7.dtsi b/arch/arm/boot/dts/microchip/sam9x7.dtsi
index aedba0a8318f..b217a908f525 100644
--- a/arch/arm/boot/dts/microchip/sam9x7.dtsi
+++ b/arch/arm/boot/dts/microchip/sam9x7.dtsi
@@ -132,6 +132,8 @@ spi4: spi@400 {
 				compatible = "microchip,sam9x7-spi", "atmel,at91rm9200-spi";
 				reg = <0x400 0x200>;
 				interrupts = <13 IRQ_TYPE_LEVEL_HIGH 7>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 13>;
 				clock-names = "spi_clk";
 				dmas = <&dma0
@@ -203,6 +205,8 @@ spi5: spi@400 {
 				compatible = "microchip,sam9x7-spi", "atmel,at91rm9200-spi";
 				reg = <0x400 0x200>;
 				interrupts = <14 IRQ_TYPE_LEVEL_HIGH 7>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 14>;
 				clock-names = "spi_clk";
 				dmas = <&dma0
@@ -697,6 +701,8 @@ spi0: spi@400 {
 				compatible = "microchip,sam9x7-spi", "atmel,at91rm9200-spi";
 				reg = <0x400 0x200>;
 				interrupts = <5 IRQ_TYPE_LEVEL_HIGH 7>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 5>;
 				clock-names = "spi_clk";
 				dmas = <&dma0
@@ -768,6 +774,8 @@ spi1: spi@400 {
 				compatible = "microchip,sam9x7-spi", "atmel,at91rm9200-spi";
 				reg = <0x400 0x200>;
 				interrupts = <6 IRQ_TYPE_LEVEL_HIGH 7>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 6>;
 				clock-names = "spi_clk";
 				dmas = <&dma0
@@ -839,6 +847,8 @@ spi2: spi@400 {
 				compatible = "microchip,sam9x7-spi", "atmel,at91rm9200-spi";
 				reg = <0x400 0x200>;
 				interrupts = <7 IRQ_TYPE_LEVEL_HIGH 7>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 7>;
 				clock-names = "spi_clk";
 				dmas = <&dma0
@@ -910,6 +920,8 @@ spi3: spi@400 {
 				compatible = "microchip,sam9x7-spi", "atmel,at91rm9200-spi";
 				reg = <0x400 0x200>;
 				interrupts = <8 IRQ_TYPE_LEVEL_HIGH 7>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 8>;
 				clock-names = "spi_clk";
 				dmas = <&dma0
-- 
2.47.1


