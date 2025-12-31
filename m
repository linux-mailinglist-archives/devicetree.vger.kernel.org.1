Return-Path: <devicetree+bounces-250867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 77936CEC9E4
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 22:58:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E028030115D3
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 21:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AE9330EF95;
	Wed, 31 Dec 2025 21:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="GX1knaki";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="GX1knaki"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4FCE30EF81
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 21:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767218302; cv=none; b=DI5FMF7TAFsLUF2pvW0fGlBCE0C1KHcF6XnPPBDwICcUL1r8b6+mqx333LrLTgPmB1Aw57KZg8n0NFLD/j+rqrHhc1hvaBtIli4POpntVk9VkAHlToH77fQmLtZDC0zdU6/ACMcNOz62zd03CKlswliN+rdeb+nTjMmhzofziDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767218302; c=relaxed/simple;
	bh=nAQpSiX9cztVCMP9D4cWPsbvQDddnDAyGcd4tMO7LU0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kHJ+B4PyYOO4sref/rDZ58pvSXw2mFW2o2OussDXK5JnQCXyEzczCAf+mXwmmV8go5faXUkV6bFs+a5hh8E/4g/RXnOaTEbHuwXFRTrnvFmqo6fPHQzZL5AeWWNzJKidczOZUc9kuaP8HPV3Sw9qXquUx2ACH+Fq086PPDb85JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=GX1knaki; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=GX1knaki; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1767218299; bh=nAQpSiX9cztVCMP9D4cWPsbvQDddnDAyGcd4tMO7LU0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GX1knakicIsZKhFLS/NvQZmy0dbme0AnVVfBG0Nc1TiVGxxQGFQ02UYgGbBYObrfp
	 HBHUB+b58WOIm47btAnd9XIT76i7tT7EgyPWosFiJaZ8urdT7BnbRAcAfk3myVDdF1
	 RadSb9rELjRcoSoXUjS50yAb+86SqSn0GuN6baelYEjgPpfgyOxZKBOzQrl2pj7ANo
	 x5KNF1rg9UB+FN+Ke+bP5AnpiIRnqx7jucri71fkqjRDbC+wHnU1LgbRzzwWLdc9qt
	 12XX6mCyDISsBwZDNesvLRez7DPJ2yTxJLARh4rPpK75IMA3jfLqFwj8SZiGanmRZR
	 DLoCvjR1hHUGQ==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 267543E99A5;
	Wed, 31 Dec 2025 21:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1767218299; bh=nAQpSiX9cztVCMP9D4cWPsbvQDddnDAyGcd4tMO7LU0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GX1knakicIsZKhFLS/NvQZmy0dbme0AnVVfBG0Nc1TiVGxxQGFQ02UYgGbBYObrfp
	 HBHUB+b58WOIm47btAnd9XIT76i7tT7EgyPWosFiJaZ8urdT7BnbRAcAfk3myVDdF1
	 RadSb9rELjRcoSoXUjS50yAb+86SqSn0GuN6baelYEjgPpfgyOxZKBOzQrl2pj7ANo
	 x5KNF1rg9UB+FN+Ke+bP5AnpiIRnqx7jucri71fkqjRDbC+wHnU1LgbRzzwWLdc9qt
	 12XX6mCyDISsBwZDNesvLRez7DPJ2yTxJLARh4rPpK75IMA3jfLqFwj8SZiGanmRZR
	 DLoCvjR1hHUGQ==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id 955273E99A7;
	Wed, 31 Dec 2025 21:58:18 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/5] ARM: dts: lpc32xx: Add missing DMA properties
Date: Wed, 31 Dec 2025 23:57:52 +0200
Message-ID: <20251231215754.2222308-4-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251231215754.2222308-1-vz@mleia.com>
References: <20251231215754.2222308-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251231_215819_175314_410A11F8 
X-CRM114-Status: GOOD (  13.39  )

From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>

Add properties declared in the new DT binding nxp,lpc3220-dmamux.yaml
and corresponding phandles.

[vzapolskiy]:
1. rebased the change,
2. dmamux unit address shall be 0x78 instead of 0x7c,
3. removed unsupported 'dmas' properties from sd, ssp0, ssp1 and HS UARTs,
4. more non-functional updates by reordering properies,
5. minor updates to the commit message.

Link to the original change:
* https://lore.kernel.org/linux-arm-kernel/20240627150046.258795-6-piotr.wojtaszczyk@timesys.com/

Signed-off-by: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 89e621dfb950..4f3944d6d765 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -66,6 +66,8 @@ slc: flash@20020000 {
 			compatible = "nxp,lpc3220-slc";
 			reg = <0x20020000 0x1000>;
 			clocks = <&clk LPC32XX_CLK_SLC>;
+			dmas = <&dma 1 1>;
+			dma-names = "rx-tx";
 			status = "disabled";
 		};
 
@@ -74,6 +76,8 @@ mlc: flash@200a8000 {
 			reg = <0x200a8000 0x11000>;
 			interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk LPC32XX_CLK_MLC>;
+			dmas = <&dma 12 1>;
+			dma-names = "rx-tx";
 			status = "disabled";
 		};
 
@@ -83,6 +87,12 @@ dma: dma-controller@31000000 {
 			interrupts = <28 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk LPC32XX_CLK_DMA>;
 			clock-names = "apb_pclk";
+			dma-channels = <8>;
+			dma-requests = <16>;
+			lli-bus-interface-ahb1;
+			mem-bus-interface-ahb1;
+			memcpy-burst-size = <256>;
+			memcpy-bus-width = <32>;
 			#dma-cells = <2>;
 		};
 
@@ -190,6 +200,8 @@ spi1: spi@20088000 {
 				compatible = "nxp,lpc3220-spi";
 				reg = <0x20088000 0x1000>;
 				clocks = <&clk LPC32XX_CLK_SPI1>;
+				dmas = <&dmamux 11 1 0>;
+				dma-names = "rx-tx";
 				#address-cells = <1>;
 				#size-cells = <0>;
 				status = "disabled";
@@ -214,6 +226,8 @@ spi2: spi@20090000 {
 				compatible = "nxp,lpc3220-spi";
 				reg = <0x20090000 0x1000>;
 				clocks = <&clk LPC32XX_CLK_SPI2>;
+				dmas = <&dmamux 3 1 0>;
+				dma-names = "rx-tx";
 				#address-cells = <1>;
 				#size-cells = <0>;
 				status = "disabled";
@@ -222,6 +236,8 @@ spi2: spi@20090000 {
 			i2s0: i2s@20094000 {
 				compatible = "nxp,lpc3220-i2s";
 				reg = <0x20094000 0x1000>;
+				dmas = <&dma 0 1>, <&dma 13 1>;
+				dma-names = "rx", "tx";
 				status = "disabled";
 			};
 
@@ -238,6 +254,8 @@ sd: mmc@20098000 {
 			i2s1: i2s@2009c000 {
 				compatible = "nxp,lpc3220-i2s";
 				reg = <0x2009c000 0x1000>;
+				dmas = <&dma 2 1>, <&dmamux 10 1 1>;
+				dma-names = "rx", "tx";
 				status = "disabled";
 			};
 
@@ -328,6 +346,13 @@ clk: clock-controller@0 {
 					clocks = <&xtal_32k>, <&xtal>;
 					clock-names = "xtal_32k", "xtal";
 				};
+
+				dmamux: dma-router@78 {
+					compatible = "nxp,lpc3220-dmamux";
+					reg = <0x78 0x8>;
+					dma-masters = <&dma>;
+					#dma-cells = <3>;
+				};
 			};
 
 			mic: interrupt-controller@40008000 {
-- 
2.43.0


