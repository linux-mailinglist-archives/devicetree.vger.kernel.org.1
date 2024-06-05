Return-Path: <devicetree+bounces-72623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E74E98FC685
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:34:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 090F91C23069
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 08:34:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0338F1946AA;
	Wed,  5 Jun 2024 08:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GxTjNi1S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E65F1946AE
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 08:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717576426; cv=none; b=sUXR4RO5pkCsyOREU5bJDegQKJHU8aXTC61HgSsHP9eYLPZeVEnx6WcGrOqbVB7Co76Yi1YL2ZsQZv5ab9VjAw5Lu4jJcW8nZovvFBlKLCE/we9MRALNvOILFMY3ACNC2oG6Hgatxp50Rvf44dZieMmBT2/3AXr0wDPv07odfrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717576426; c=relaxed/simple;
	bh=+2dpwytsHAFadNvNNyr8Z0IJETa74QkIAaYgNGH8zsE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nSlT6aJjriXsKJ4F4Rc6HcFVWLMY6UjXzI5/ZeORjDI/O6VdtOqbjxYtI8WPTB6XnS0Rx6ZS786iPhl1tRqz67O3Qe4ewPEqntINNonD9fk7bwxIJAWdwK+rTFTw07uOf+Som/S+uB/pgfkJRu++uoWAnQLZdFDUZpiF/dYx/PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GxTjNi1S; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-57a32b0211aso2359586a12.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 01:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717576423; x=1718181223; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ex6A2/mgyBpAL4l6YJr/6SSE/U5Gfv8JsUF8UcKUvPk=;
        b=GxTjNi1SaB9sjdxGEZFG3GLZtaC4Bg6yXIYPu3feslZ0TwERSpN1/L81ixBxFbx9Xq
         fVJSI37tms3fNu66it6QktYs9ZuLoAPmyI3P79g7h7qYRxpIw/L+f7+yGz45i3s242JD
         MYbGgKEdnc487/cb6KmuPbv8iokfC7U3aG7pUTqNO0A5LK3Ugd5BpWFS8TasdAbZH1K1
         DlBwB6A+qGi1I7ywk5oO/d1tIV0jYabJ2VBSfMSAisJaZP939BmUWKlVaDfd+hIVTXBS
         TZR2Vzjwr1mP/4meWR7Bw8+7/XChUfoo0HdeKEoj8+PNvfzNbYiuvKkL/lKYQ6sq5iAZ
         FotQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717576423; x=1718181223;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ex6A2/mgyBpAL4l6YJr/6SSE/U5Gfv8JsUF8UcKUvPk=;
        b=LDDNt7zmtT4CQu3ZIMJlT+QC7r5M9+Xablnp8w0pTz6OyyITiZTkKpMK2zO0vL8evV
         fIZFxNgVTyzfJBHpY4UHrMFqAMO/4riM+ZtNaPb2JvB8jEL5xamPqpq6P2E2I+VB7iWP
         817Hp7ifzTmKwDWzVKheOo/pag6UbwwndQe0JU14+usl1Wr1h/K9JU8t305ZjH/Niy0j
         67qzUFNRTNadCPnfzDcLJItPmErMraIWqkUGf41XwrZyowq4+su5W33NzIe08u3ACA5i
         TjPORI6MjdGtEKsDWFwmlkXtHc0/zutjWlfzFyZt3NeUIXA5OvwVYWKV13/a2XjuGgDz
         KQUw==
X-Gm-Message-State: AOJu0YwIj5mXRxSo0zlDhcLezN8s4TeXh6rG/ZOpB9+pIY+yrYhIjFY9
	zLKJLitGLovd+ZIhTAaVvL2cDb5uAr7Bc9MgzDJh3td1uYxtJhrU
X-Google-Smtp-Source: AGHT+IEWKGgOjqu1QSPSCaHO1QvsON8vv5P3pPNKEfedXz3Jw/1RfTyiIY5HHHULhqjc9vFeJjBg8Q==
X-Received: by 2002:a50:cd55:0:b0:578:5f1b:421a with SMTP id 4fb4d7f45d1cf-57a8bca0fe6mr1110548a12.27.1717576423390;
        Wed, 05 Jun 2024 01:33:43 -0700 (PDT)
Received: from localhost.ch ([185.144.39.44])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-57a31c6d330sm8724501a12.67.2024.06.05.01.33.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 01:33:42 -0700 (PDT)
From: Florian Vaussard <florian.vaussard@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dinh Nguyen <dinguyen@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Florian Vaussard <florian.vaussard@gmail.com>
Subject: [PATCH 2/2] ARM: dts: socfpga: Add support for Terasic DE1-SOC board
Date: Wed,  5 Jun 2024 10:33:05 +0200
Message-ID: <20240605083321.1211198-3-florian.vaussard@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240605083321.1211198-1-florian.vaussard@gmail.com>
References: <20240605083321.1211198-1-florian.vaussard@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Compared to Terasic SoCKit, here are some of the notable differences
on the HPS side:
- Only 1 user LED and 1 user KEY
- The QSPI Flash is not populated
- The ADXL345 accelerometer is on I2C0 instead of I2C1

Tested to be working:
- LED / KEY
- Ethernet
- Both USB Host ports
- SD card
- ADXL345 accelerometer

Signed-off-by: Florian Vaussard <florian.vaussard@gmail.com>
---
 arch/arm/boot/dts/intel/socfpga/Makefile      |   1 +
 .../socfpga/socfpga_cyclone5_de1_soc.dts      | 106 ++++++++++++++++++
 2 files changed, 107 insertions(+)
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts

diff --git a/arch/arm/boot/dts/intel/socfpga/Makefile b/arch/arm/boot/dts/intel/socfpga/Makefile
index c467828aeb4b..1d5140b238da 100644
--- a/arch/arm/boot/dts/intel/socfpga/Makefile
+++ b/arch/arm/boot/dts/intel/socfpga/Makefile
@@ -10,6 +10,7 @@ dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += \
 	socfpga_cyclone5_mcvevk.dtb \
 	socfpga_cyclone5_socdk.dtb \
 	socfpga_cyclone5_de0_nano_soc.dtb \
+	socfpga_cyclone5_de1_soc.dtb \
 	socfpga_cyclone5_sockit.dtb \
 	socfpga_cyclone5_socrates.dtb \
 	socfpga_cyclone5_sodia.dtb \
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts
new file mode 100644
index 000000000000..7d811be5f5a7
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts
@@ -0,0 +1,106 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2024 Florian Vaussard <florian.vaussard@gmail.com>
+ */
+
+#include "socfpga_cyclone5.dtsi"
+
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Terasic DE1-SOC";
+	compatible = "terasic,de1-soc", "altr,socfpga-cyclone5", "altr,socfpga";
+
+	chosen {
+		bootargs = "earlyprintk";
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@0 {
+		name = "memory";
+		device_type = "memory";
+		reg = <0x0 0x40000000>; /* 1GB */
+	};
+
+	aliases {
+		/* this allow the ethaddr uboot environmnet variable contents
+		 * to be added to the gmac1 device tree blob.
+		 */
+		ethernet0 = &gmac1;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		hps_led {
+			label = "hps:green:led";
+			gpios = <&portb 24 0>;	/* HPS_GPIO53 */
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		hps_key {
+			label = "hps_key";
+			gpios = <&portb 25 0>;	/* HPS_GPIO54 */
+			linux,code = <BTN_0>;
+		};
+	};
+
+	regulator_3_3v: regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+};
+
+&gmac1 {
+	status = "okay";
+	phy-mode = "rgmii";
+
+	rxd0-skew-ps = <0>;
+	rxd1-skew-ps = <0>;
+	rxd2-skew-ps = <0>;
+	rxd3-skew-ps = <0>;
+	txen-skew-ps = <0>;
+	txc-skew-ps = <2600>;
+	rxdv-skew-ps = <0>;
+	rxc-skew-ps = <2000>;
+};
+
+&gpio0 {	/* GPIO 0..29 */
+	status = "okay";
+};
+
+&gpio1 {	/* GPIO 30..57 */
+	status = "okay";
+};
+
+&gpio2 {	/* GPIO 58..66 (HLGPI 0..13 at offset 13) */
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	accel1: accelerometer@53 {
+		compatible = "adi,adxl345";
+		reg = <0x53>;
+
+		interrupt-parent = <&portc>;
+		interrupts = <3 2>;
+	};
+};
+
+&mmc0 {
+	vmmc-supply = <&regulator_3_3v>;
+	vqmmc-supply = <&regulator_3_3v>;
+	status = "okay";
+};
+
+&usb1 {
+	status = "okay";
+};
-- 
2.45.1


