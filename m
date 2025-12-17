Return-Path: <devicetree+bounces-247225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 159F9CC5CDF
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 03:43:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD7C4304F12C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 02:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9369283C83;
	Wed, 17 Dec 2025 02:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aKiim5QG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8209E27FB1F
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765939342; cv=none; b=uYSgTxwVFA0QiYPnn3RX7+Lfg/CM/rGhBHGhRR9/PRUCZ7MhtmKXxZ/LTg4zroJrxVgaO/tsWUvX1gsAOpTiIX6b2vcG+BiPQ0jft9v8KVtX49N7ZRvnSdpMGmBCHQdnOln7YT+UiGaQ8ujn2cPtZ6PDkMZVdqBR4Vq+2PSfKVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765939342; c=relaxed/simple;
	bh=iLBtqKxrn4YZBWcGh2bqC3Ad0Vkn38GSenAW4j0SXoM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o++QrIEgu+dxjyq5TLVGfhfJ14u7uDrxuu0uggWyDTqWNDo5jFb1N3OIpwZUqpKrmaFxKQFXGEuj8FewywwyfsYyODiz4tP+DpMRa5HdUwpvMFzRDjrEdYFIw2oW52YHKnUjfNghIH6Inp7De4MBa9DkgWl28MMl3zaAxcAZEKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aKiim5QG; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7f1243792f2so3568081b3a.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 18:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765939340; x=1766544140; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g+r102hR9zDuFntSAOHLz1qhcLIKv7rvOLb1bWkWV94=;
        b=aKiim5QGufVD7JxPgpRSPfbXHHbNx5uIIEw3s5l7M4qNJVOksm7H55xQY0zsnqtkWm
         q35bWBZUANy0pbgDPFbeBOJZp8CE7hgXa0LqIkQwyrhoG8cHGcEMna/6AaV26cA8y2Yf
         L3lJxVmsMNKs5gViFmixJhgXms1Uw4piNAUDtdsqGmC7jlnmPviYBnw+iNqGvYuyOr9P
         qtHuFLwjo4y8NwALyfsmENGKsjNQkmEwgoWUP85OFxSh+uTepZcedxnNI9Z3JG3Zl+3R
         CndWWtprmMYcJUxTsVI8zEUg7lvYxXALzfPJbgf6t0yay746qMrcqwI4gL0bjm2j5zy0
         JQpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765939340; x=1766544140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=g+r102hR9zDuFntSAOHLz1qhcLIKv7rvOLb1bWkWV94=;
        b=TSKV9OsTueM2GdsFp1KLsGAPIxd0nrV3mazDNGJqK6MxMnquzY6X+l5AYG7/mi9eJC
         GgZHe8IFhUXa8PscsQvVMkyPYc7asp72CbtpLV3Y4csHaF2lhxzv9itJmjBuEyXd+CUt
         HwBLYY4aTmgRZlZY3k7v9zOx0+k8XV4h7GzCK+Bvjb3bFTL8FIXIiTRFx0XdlZn1aq50
         1gUI99Eo00hxE286uvwe88JDrWTJKyhn8uGYo5yewUjkC6rlujBlcGe0b8E27/1F9emG
         O9ta709/dfmWmDkjZca/QKDKq0w94CnthZzOQ4KkIuJ75PeIH9YbwQh+4YXq7mBYV3J5
         9NPg==
X-Gm-Message-State: AOJu0YzP5wU6Du8UVczI1dGrriQyfoYMgAJCXXqMTOD/4uCMt8UfUjmw
	Ma27IQiL++zRQt7NbYXeTmrApbCdjJsD/lBJXf6/pY7nWjjEviB9bjwq
X-Gm-Gg: AY/fxX4asgYbJl08eGsH+DyrEyoZadoho9Eh92KHcMdX3AjjsvR/MAjCts4jBY6Fh98
	katyHvzyLMkxaTDreej6I9d0AgRYRD9wvQxqpNobSwNt8c3e8LOJnQrSC7X916psMAkUSC8AJ0Q
	hiL5NHCpatkyJfSkSBa4KJ72wKDgFwtCeKlHmJO0QWgat1UFlNgQOprKhx4Vzg0n5o3C2jVrWdF
	9MHRSYBngOK0hodjSGwE4/yZ0CJFEEXt2uCthvR5AiqDRnsOLuDxarxTzm/fRPhMP0GmcNdBcNP
	C1DFXbdVsEaclH8nDIWHEp+AsIUFvs5AMC39F1bo3rDuTjnKEWt8HL/oJKMyF+Yr964DlEodg+5
	CAJKC6GMAw0AM3Ra/wdP4RO0G1Gbn19aBlL75Hs7Q3YwivkKlVYWqcv39cUZ13j5pDKRdoIBkG+
	81ugdruSYbNbDcZfDH8A83L71xPZNYI7Vr1kolRbdadtJB08Qql93MRHUZ/hmilfnTjNzScALZt
	O7/9vumqWDNLY0WmYsWLExWRA==
X-Google-Smtp-Source: AGHT+IGzXtV/pP5X31xR86Zl+foQoI5ZOx0o6hr3iWfkE+akqdst4RveLg7C30cUfY07vcJgFJiDIQ==
X-Received: by 2002:a05:6a00:6c95:b0:7e8:43f5:bd3f with SMTP id d2e1a72fcca58-7f6692aadf6mr15691763b3a.43.1765939339626;
        Tue, 16 Dec 2025 18:42:19 -0800 (PST)
Received: from cosmo-ubuntu-2404.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7fcb8c29738sm941342b3a.17.2025.12.16.18.42.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 18:42:19 -0800 (PST)
From: Cosmo Chou <chou.cosmo@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	cosmo.chou@quantatw.com,
	Cosmo Chou <chou.cosmo@gmail.com>
Subject: [PATCH v2 1/5] ARM: dts: aspeed: bletchley: Use generic node names
Date: Wed, 17 Dec 2025 10:39:34 +0800
Message-ID: <20251217023938.445721-2-chou.cosmo@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251217023938.445721-1-chou.cosmo@gmail.com>
References: <20251217023938.445721-1-chou.cosmo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use generic node names to fix dt-schema warnings:
- spi1_gpio: rename to generic "spi" node name
- LED nodes: rename to led-N and move names to label properties
- GPIO key nodes: add "-switch" suffix to node names

Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
---
 .../aspeed/aspeed-bmc-facebook-bletchley.dts  | 77 ++++++++++++-------
 1 file changed, 49 insertions(+), 28 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
index abdb1562115a..9cb01381e482 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
@@ -34,7 +34,7 @@ iio-hwmon {
 			<&adc1 4>, <&adc1 5>, <&adc1 6>, <&adc1 7>;
 	};
 
-	spi1_gpio: spi1-gpio {
+	spi1_gpio: spi {
 		compatible = "spi-gpio";
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -54,7 +54,8 @@ tpm@0 {
 
 	front_gpio_leds {
 		compatible = "gpio-leds";
-		sys_log_id {
+		led-0 {
+			label = "sys_log_id";
 			default-state = "off";
 			gpios = <&front_leds 0 GPIO_ACTIVE_LOW>;
 		};
@@ -62,42 +63,50 @@ sys_log_id {
 
 	fan_gpio_leds {
 		compatible = "gpio-leds";
-		fan0_blue {
+		led-0 {
+			label = "fan0_blue";
 			retain-state-shutdown;
 			default-state = "on";
 			gpios = <&fan_leds 8 GPIO_ACTIVE_HIGH>;
 		};
-		fan1_blue {
+		led-1 {
+			label = "fan1_blue";
 			retain-state-shutdown;
 			default-state = "on";
 			gpios = <&fan_leds 9 GPIO_ACTIVE_HIGH>;
 		};
-		fan2_blue {
+		led-2 {
+			label = "fan2_blue";
 			retain-state-shutdown;
 			default-state = "on";
 			gpios = <&fan_leds 10 GPIO_ACTIVE_HIGH>;
 		};
-		fan3_blue {
+		led-3 {
+			label = "fan3_blue";
 			retain-state-shutdown;
 			default-state = "on";
 			gpios = <&fan_leds 11 GPIO_ACTIVE_HIGH>;
 		};
-		fan0_amber {
+		led-4 {
+			label = "fan0_amber";
 			retain-state-shutdown;
 			default-state = "off";
 			gpios = <&fan_leds 12 GPIO_ACTIVE_HIGH>;
 		};
-		fan1_amber {
+		led-5 {
+			label = "fan1_amber";
 			retain-state-shutdown;
 			default-state = "off";
 			gpios = <&fan_leds 13 GPIO_ACTIVE_HIGH>;
 		};
-		fan2_amber {
+		led-6 {
+			label = "fan2_amber";
 			retain-state-shutdown;
 			default-state = "off";
 			gpios = <&fan_leds 14 GPIO_ACTIVE_HIGH>;
 		};
-		fan3_amber {
+		led-7 {
+			label = "fan3_amber";
 			retain-state-shutdown;
 			default-state = "off";
 			gpios = <&fan_leds 15 GPIO_ACTIVE_HIGH>;
@@ -106,12 +115,14 @@ fan3_amber {
 
 	sled1_gpio_leds {
 		compatible = "gpio-leds";
-		sled1_amber {
+		led-0 {
+			label = "sled1_amber";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled1_leds 0 GPIO_ACTIVE_LOW>;
 		};
-		sled1_blue {
+		led-1 {
+			label = "sled1_blue";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled1_leds 1 GPIO_ACTIVE_LOW>;
@@ -120,12 +131,14 @@ sled1_blue {
 
 	sled2_gpio_leds {
 		compatible = "gpio-leds";
-		sled2_amber {
+		led-0 {
+			label = "sled2_amber";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled2_leds 0 GPIO_ACTIVE_LOW>;
 		};
-		sled2_blue {
+		led-1 {
+			label = "sled2_blue";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled2_leds 1 GPIO_ACTIVE_LOW>;
@@ -134,12 +147,14 @@ sled2_blue {
 
 	sled3_gpio_leds {
 		compatible = "gpio-leds";
-		sled3_amber {
+		led-0 {
+			label = "sled3_amber";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled3_leds 0 GPIO_ACTIVE_LOW>;
 		};
-		sled3_blue {
+		led-1 {
+			label = "sled3_blue";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled3_leds 1 GPIO_ACTIVE_LOW>;
@@ -148,12 +163,14 @@ sled3_blue {
 
 	sled4_gpio_leds {
 		compatible = "gpio-leds";
-		sled4_amber {
+		led-0 {
+			label = "sled4_amber";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled4_leds 0 GPIO_ACTIVE_LOW>;
 		};
-		sled4_blue {
+		led-1 {
+			label = "sled4_blue";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled4_leds 1 GPIO_ACTIVE_LOW>;
@@ -162,12 +179,14 @@ sled4_blue {
 
 	sled5_gpio_leds {
 		compatible = "gpio-leds";
-		sled5_amber {
+		led-0 {
+			label = "sled5_amber";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled5_leds 0 GPIO_ACTIVE_LOW>;
 		};
-		sled5_blue {
+		led-1 {
+			label = "sled5_blue";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled5_leds 1 GPIO_ACTIVE_LOW>;
@@ -176,12 +195,14 @@ sled5_blue {
 
 	sled6_gpio_leds {
 		compatible = "gpio-leds";
-		sled6_amber {
+		led-0 {
+			label = "sled6_amber";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled6_leds 0 GPIO_ACTIVE_LOW>;
 		};
-		sled6_blue {
+		led-1 {
+			label = "sled6_blue";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled6_leds 1 GPIO_ACTIVE_LOW>;
@@ -191,32 +212,32 @@ sled6_blue {
 	gpio-keys {
 		compatible = "gpio-keys";
 
-		presence-sled1 {
+		presence-sled1-switch {
 			label = "presence-sled1";
 			gpios = <&gpio0 ASPEED_GPIO(H, 2) GPIO_ACTIVE_LOW>;
 			linux,code = <ASPEED_GPIO(H, 2)>;
 		};
-		presence-sled2 {
+		presence-sled2-switch {
 			label = "presence-sled2";
 			gpios = <&gpio0 ASPEED_GPIO(H, 3) GPIO_ACTIVE_LOW>;
 			linux,code = <ASPEED_GPIO(H, 3)>;
 		};
-		presence-sled3 {
+		presence-sled3-switch {
 			label = "presence-sled3";
 			gpios = <&gpio0 ASPEED_GPIO(H, 4) GPIO_ACTIVE_LOW>;
 			linux,code = <ASPEED_GPIO(H, 4)>;
 		};
-		presence-sled4 {
+		presence-sled4-switch {
 			label = "presence-sled4";
 			gpios = <&gpio0 ASPEED_GPIO(H, 5) GPIO_ACTIVE_LOW>;
 			linux,code = <ASPEED_GPIO(H, 5)>;
 		};
-		presence-sled5 {
+		presence-sled5-switch {
 			label = "presence-sled5";
 			gpios = <&gpio0 ASPEED_GPIO(H, 6) GPIO_ACTIVE_LOW>;
 			linux,code = <ASPEED_GPIO(H, 6)>;
 		};
-		presence-sled6 {
+		presence-sled6-switch {
 			label = "presence-sled6";
 			gpios = <&gpio0 ASPEED_GPIO(H, 7) GPIO_ACTIVE_LOW>;
 			linux,code = <ASPEED_GPIO(H, 7)>;
-- 
2.43.0


