Return-Path: <devicetree+bounces-137498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E23A093B6
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 15:42:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 48BC8188C537
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DC72211295;
	Fri, 10 Jan 2025 14:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thorsis.com header.i=@thorsis.com header.b="RGXH9KoV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.thorsis.com (mail.thorsis.com [217.92.40.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531E621128A;
	Fri, 10 Jan 2025 14:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.92.40.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736520131; cv=none; b=GPKbk/KmEKHFCTjNga72rH46XDDBjgkvgxMxbgL1ybHEWWpxzVkUQgYJ//WJ9z7vZf9gH/MQUMj8uAhunOSW9CXaMhtBXWMHGD/6px8t2BIuKQSi24n1wyuuzydmQmRX1SIeNTImbRx4wWG/x3D5MX2uwqzf/ZfwY/GUr34lO3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736520131; c=relaxed/simple;
	bh=paTMVghMKdv6dJ3HRwcGaOqQGhNfa6gD/p3U82HvoWQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=sItDMvaaZsMJkbT4oI6CG3CSe3FdEKFOmixP+Azy9ecD6NOpXsP23TEgVc3CXmWjpX5MPoDYurNyGHanVducaoAHZG0u9wU9yQJXsy2upNux87UiJonsZKvI2f+V/6+iXzzJGP5ZeS9NHiaVlPosYmp2eY+oIlszc6OsJpVgMWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=thorsis.com; spf=pass smtp.mailfrom=thorsis.com; dkim=pass (2048-bit key) header.d=thorsis.com header.i=@thorsis.com header.b=RGXH9KoV; arc=none smtp.client-ip=217.92.40.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=thorsis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thorsis.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 652E414867A3;
	Fri, 10 Jan 2025 15:42:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thorsis.com; s=dkim;
	t=1736520125;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3B+7xW3A+hBNawXWpX5L5XqlvWj4cEiq29OLLyd2VrE=;
	b=RGXH9KoVGDkvTHzliSDjEYC2PihHK/MND2FYnQ4tUGDudInB3lgPPP7BkoIjjhr7SvQItX
	05nAST2vJ+0XqWz4pHod24BKyVyG7zOE47umIXYewTY7B4dGRzy+Gu5LoSB2PmVmrsvdRT
	cqTo7jhgJSV3b8pXt90/fU+wvE//kgro+LLat67zhX5Co5O5IsRttv/wx4G+ZgLKhaz8+x
	OnkTVTMfR3Smqym/pSFJ5GyVnRmbH095SUBYUO87dQcd8Yhr5DtmJpaIy354uD+sc/7p5f
	0HqHCKE8kUGuMSG9ElI2u3HLJS7P/Ob/MBGMMj3ANcgqGQtBRLXMtmx8O4wbeA==
From: Alexander Dahl <ada@thorsis.com>
To: devicetree@vger.kernel.org
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Microchip (AT91) SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] ARM: dts: microchip: sam9x60: Add missing address/size cells for spi nodes
Date: Fri, 10 Jan 2025 15:41:59 +0100
Message-Id: <20250110144159.379344-1-ada@thorsis.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Complies with generic spi-controller and atmel,at91rm9200-spi bindings.
Fixes dtc warnings, when actually adding spi target device nodes on
board dts files including this soc dtsi.

Signed-off-by: Alexander Dahl <ada@thorsis.com>
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

base-commit: 9d89551994a430b50c4fffcb1e617a057fa76e20
-- 
2.39.5


