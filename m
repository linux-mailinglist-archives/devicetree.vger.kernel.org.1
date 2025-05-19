Return-Path: <devicetree+bounces-178425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0367CABBC40
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 13:21:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95C93169640
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:21:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8840A274673;
	Mon, 19 May 2025 11:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="DlYsL0Xn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E3D267387
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 11:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747653680; cv=none; b=MG+m0bP5Pzho7LrdfYXUYP/ufiu+MIdzdkn+s/GL8TduQC0yyMOALCm+LBnCjrNaiTRkpdQikfvRS3JA3zl1e1GydOusol7gdoi3Vdiz0GWm/Nt/KfhA7YatdW/uDdWEE9C7j/YGNHSi6fy7QVloRmY8PJ/Bnq/sDi4QwHL3qY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747653680; c=relaxed/simple;
	bh=316770CFLUEkRVaNt2fNuUf1BuA9FzzzeVtgsYB+GTQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B01m+ycOOHYHIFAiy2NXpErtWWB4xfgUdn0kpc+Ffzpqgh90MJg3WbrtegRA8plbrNMlVzUCrXRcGRdAnhllFgR7P+B7HrelGoZK/NEeaFHka3y/WXP/g6UxyYT3zImbA+Ddjw3ObOOybpotbczWfenhzOyRpTJA8DseFPLWotM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=DlYsL0Xn; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=e4LcevUqTyv8EUE5kKNpZ8nJ8NaB8FI9zImysmJ+Ij4=; b=DlYsL0
	XneW3DTEkNzWkXszmcGPdUz1I/lO7g6yhQN1JL6UDnNadmi1PwN2q/C25GaXjvhv
	cETD/xev1tIIKKtMGA95cQa7vbQww+HcuFv6M7f0pxumNtV9O5o0kYJRRkKcI8EW
	bvERhENK97FufqJmbsZDiiNDHhwAvsZiumtTjcfxGU1AdFFUCXxtMM45JmxfbXEi
	WxOtWP95ttTjjgJ8+Ris56pCJvZWx/6IN8wpcOdIZosARSKUu57CG8RdcF37IlNO
	pUMj6An6QysL7m6NO89ZKhDskWx7jzqxv9Dw2RCoSdqnhO17eUcYjilWAPUWwY6a
	eEM9XC0LJautfKpw==
Received: (qmail 2456941 invoked from network); 19 May 2025 13:21:16 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 19 May 2025 13:21:16 +0200
X-UD-Smtp-Session: l3s3148p1@Tl+FVHs1/N1Zz6+V
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	devicetree@vger.kernel.org
Subject: [PATCH 3/4] ARM: dts: microchip: use recent scl/sda gpio bindings
Date: Mon, 19 May 2025 13:21:05 +0200
Message-ID: <20250519112107.2980-4-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250519112107.2980-1-wsa+renesas@sang-engineering.com>
References: <20250519112107.2980-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We have dedictaded bindings for scl/sda nowadays. Switch away from the
deprecated plain 'gpios' property.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/microchip/at91rm9200.dtsi  |  5 ++---
 arch/arm/boot/dts/microchip/at91sam9260.dtsi |  5 ++---
 arch/arm/boot/dts/microchip/at91sam9261.dtsi |  4 ++--
 arch/arm/boot/dts/microchip/at91sam9263.dtsi |  5 ++---
 arch/arm/boot/dts/microchip/at91sam9g45.dtsi |  5 ++---
 arch/arm/boot/dts/microchip/at91sam9n12.dtsi |  5 ++---
 arch/arm/boot/dts/microchip/at91sam9rl.dtsi  |  8 ++++----
 arch/arm/boot/dts/microchip/at91sam9x5.dtsi  | 15 ++++++---------
 8 files changed, 22 insertions(+), 30 deletions(-)

diff --git a/arch/arm/boot/dts/microchip/at91rm9200.dtsi b/arch/arm/boot/dts/microchip/at91rm9200.dtsi
index 2a4c83d88733..e105ad855ce8 100644
--- a/arch/arm/boot/dts/microchip/at91rm9200.dtsi
+++ b/arch/arm/boot/dts/microchip/at91rm9200.dtsi
@@ -714,9 +714,8 @@ usb0: usb@300000 {
 
 	i2c-gpio-0 {
 		compatible = "i2c-gpio";
-		gpios = <&pioA 25 GPIO_ACTIVE_HIGH /* sda */
-			 &pioA 26 GPIO_ACTIVE_HIGH /* scl */
-			>;
+		sda-gpios = <&pioA 25 GPIO_ACTIVE_HIGH>;
+		scl-gpios = <&pioA 26 GPIO_ACTIVE_HIGH>;
 		i2c-gpio,sda-open-drain;
 		i2c-gpio,scl-open-drain;
 		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
diff --git a/arch/arm/boot/dts/microchip/at91sam9260.dtsi b/arch/arm/boot/dts/microchip/at91sam9260.dtsi
index ec973f07a961..fc0b6a73204f 100644
--- a/arch/arm/boot/dts/microchip/at91sam9260.dtsi
+++ b/arch/arm/boot/dts/microchip/at91sam9260.dtsi
@@ -781,9 +781,8 @@ nand_controller: nand-controller {
 
 	i2c_gpio0: i2c-gpio-0 {
 		compatible = "i2c-gpio";
-		gpios = <&pioA 23 GPIO_ACTIVE_HIGH /* sda */
-			 &pioA 24 GPIO_ACTIVE_HIGH /* scl */
-			>;
+		sda-gpios = <&pioA 23 GPIO_ACTIVE_HIGH>;
+		scl-gpios = <&pioA 24 GPIO_ACTIVE_HIGH>;
 		i2c-gpio,sda-open-drain;
 		i2c-gpio,scl-open-drain;
 		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
diff --git a/arch/arm/boot/dts/microchip/at91sam9261.dtsi b/arch/arm/boot/dts/microchip/at91sam9261.dtsi
index 0b556c234557..d1d678b77e84 100644
--- a/arch/arm/boot/dts/microchip/at91sam9261.dtsi
+++ b/arch/arm/boot/dts/microchip/at91sam9261.dtsi
@@ -655,8 +655,8 @@ i2c-gpio-0 {
 		compatible = "i2c-gpio";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_i2c_bitbang>;
-		gpios = <&pioA 7 GPIO_ACTIVE_HIGH>, /* sda */
-			<&pioA 8 GPIO_ACTIVE_HIGH>; /* scl */
+		sda-gpios = <&pioA 7 GPIO_ACTIVE_HIGH>;
+		scl-gpios = <&pioA 8 GPIO_ACTIVE_HIGH>;
 		i2c-gpio,sda-open-drain;
 		i2c-gpio,scl-open-drain;
 		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
diff --git a/arch/arm/boot/dts/microchip/at91sam9263.dtsi b/arch/arm/boot/dts/microchip/at91sam9263.dtsi
index 3e9e5ce7c6c8..a4b5d1f228f9 100644
--- a/arch/arm/boot/dts/microchip/at91sam9263.dtsi
+++ b/arch/arm/boot/dts/microchip/at91sam9263.dtsi
@@ -826,9 +826,8 @@ nand_controller1: nand-controller {
 
 	i2c-gpio-0 {
 		compatible = "i2c-gpio";
-		gpios = <&pioB 4 GPIO_ACTIVE_HIGH /* sda */
-			 &pioB 5 GPIO_ACTIVE_HIGH /* scl */
-			>;
+		sda-gpios = <&pioB 4 GPIO_ACTIVE_HIGH>;
+		scl-gpios = <&pioB 5 GPIO_ACTIVE_HIGH>;
 		i2c-gpio,sda-open-drain;
 		i2c-gpio,scl-open-drain;
 		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
diff --git a/arch/arm/boot/dts/microchip/at91sam9g45.dtsi b/arch/arm/boot/dts/microchip/at91sam9g45.dtsi
index 535e26e05e99..4e00ed2d3ecd 100644
--- a/arch/arm/boot/dts/microchip/at91sam9g45.dtsi
+++ b/arch/arm/boot/dts/microchip/at91sam9g45.dtsi
@@ -1010,9 +1010,8 @@ nand_controller: nand-controller {
 
 	i2c-gpio-0 {
 		compatible = "i2c-gpio";
-		gpios = <&pioA 20 GPIO_ACTIVE_HIGH /* sda */
-			 &pioA 21 GPIO_ACTIVE_HIGH /* scl */
-			>;
+		sda-gpios = <&pioA 20 GPIO_ACTIVE_HIGH>;
+		scl-gpios = <&pioA 21 GPIO_ACTIVE_HIGH>;
 		i2c-gpio,sda-open-drain;
 		i2c-gpio,scl-open-drain;
 		i2c-gpio,delay-us = <5>;	/* ~100 kHz */
diff --git a/arch/arm/boot/dts/microchip/at91sam9n12.dtsi b/arch/arm/boot/dts/microchip/at91sam9n12.dtsi
index 2f930c39ce4d..af41c3dbb4bf 100644
--- a/arch/arm/boot/dts/microchip/at91sam9n12.dtsi
+++ b/arch/arm/boot/dts/microchip/at91sam9n12.dtsi
@@ -786,9 +786,8 @@ nand_controller: nand-controller {
 
 	i2c-gpio-0 {
 		compatible = "i2c-gpio";
-		gpios = <&pioA 30 GPIO_ACTIVE_HIGH /* sda */
-			 &pioA 31 GPIO_ACTIVE_HIGH /* scl */
-			>;
+		sda-gpios = <&pioA 30 GPIO_ACTIVE_HIGH>;
+		scl-gpios = <&pioA 31 GPIO_ACTIVE_HIGH>;
 		i2c-gpio,sda-open-drain;
 		i2c-gpio,scl-open-drain;
 		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
diff --git a/arch/arm/boot/dts/microchip/at91sam9rl.dtsi b/arch/arm/boot/dts/microchip/at91sam9rl.dtsi
index 1fec9fcc7cd1..de74cf2980a0 100644
--- a/arch/arm/boot/dts/microchip/at91sam9rl.dtsi
+++ b/arch/arm/boot/dts/microchip/at91sam9rl.dtsi
@@ -833,8 +833,8 @@ rtc@fffffe00 {
 
 	i2c-gpio-0 {
 		compatible = "i2c-gpio";
-		gpios = <&pioA 23 GPIO_ACTIVE_HIGH>, /* sda */
-			<&pioA 24 GPIO_ACTIVE_HIGH>; /* scl */
+		sda-gpios = <&pioA 23 GPIO_ACTIVE_HIGH>;
+		scl-gpios = <&pioA 24 GPIO_ACTIVE_HIGH>;
 		i2c-gpio,sda-open-drain;
 		i2c-gpio,scl-open-drain;
 		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
@@ -847,8 +847,8 @@ i2c-gpio-0 {
 
 	i2c-gpio-1 {
 		compatible = "i2c-gpio";
-		gpios = <&pioD 10 GPIO_ACTIVE_HIGH>, /* sda */
-			<&pioD 11 GPIO_ACTIVE_HIGH>; /* scl */
+		sda-gpios = <&pioD 10 GPIO_ACTIVE_HIGH>;
+		scl-gpios = <&pioD 11 GPIO_ACTIVE_HIGH>;
 		i2c-gpio,sda-open-drain;
 		i2c-gpio,scl-open-drain;
 		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
diff --git a/arch/arm/boot/dts/microchip/at91sam9x5.dtsi b/arch/arm/boot/dts/microchip/at91sam9x5.dtsi
index 17bdf1e4db01..9070fd06995a 100644
--- a/arch/arm/boot/dts/microchip/at91sam9x5.dtsi
+++ b/arch/arm/boot/dts/microchip/at91sam9x5.dtsi
@@ -933,9 +933,8 @@ nand_controller: nand-controller {
 
 	i2c-gpio-0 {
 		compatible = "i2c-gpio";
-		gpios = <&pioA 30 GPIO_ACTIVE_HIGH /* sda */
-			 &pioA 31 GPIO_ACTIVE_HIGH /* scl */
-			>;
+		sda-gpios = <&pioA 30 GPIO_ACTIVE_HIGH>;
+		scl-gpios = <&pioA 31 GPIO_ACTIVE_HIGH>;
 		i2c-gpio,sda-open-drain;
 		i2c-gpio,scl-open-drain;
 		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
@@ -948,9 +947,8 @@ &pioA 31 GPIO_ACTIVE_HIGH /* scl */
 
 	i2c-gpio-1 {
 		compatible = "i2c-gpio";
-		gpios = <&pioC 0 GPIO_ACTIVE_HIGH /* sda */
-			 &pioC 1 GPIO_ACTIVE_HIGH /* scl */
-			>;
+		sda-gpios = <&pioC 0 GPIO_ACTIVE_HIGH>;
+		scl-gpios = <&pioC 1 GPIO_ACTIVE_HIGH>;
 		i2c-gpio,sda-open-drain;
 		i2c-gpio,scl-open-drain;
 		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
@@ -963,9 +961,8 @@ &pioC 1 GPIO_ACTIVE_HIGH /* scl */
 
 	i2c-gpio-2 {
 		compatible = "i2c-gpio";
-		gpios = <&pioB 4 GPIO_ACTIVE_HIGH /* sda */
-			 &pioB 5 GPIO_ACTIVE_HIGH /* scl */
-			>;
+		sda-gpios = <&pioB 4 GPIO_ACTIVE_HIGH>;
+		scl-gpios = <&pioB 5 GPIO_ACTIVE_HIGH>;
 		i2c-gpio,sda-open-drain;
 		i2c-gpio,scl-open-drain;
 		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
-- 
2.47.2


