Return-Path: <devicetree+bounces-113285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 569919A50C5
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 22:39:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CAC11C2139E
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 20:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C85141922EF;
	Sat, 19 Oct 2024 20:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GRNA9hE7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F35A191F7C
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 20:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729370391; cv=none; b=MLcRDs7t491MmzdC6JP8DaHBeivlKUrytTo5ebThs104Mx2ehQd/wYB0ajBgtgyHs4cpYIsqaYe7lY/Y3G52UVuwmCpBnYM1BTbbtAvN+MqPP+bV3X8Xsy5EXVaNZ+tl0KrW+qHPu2v6xf8K9JWvCTWRJeYsb+S9JfrRmfG0P6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729370391; c=relaxed/simple;
	bh=/WSb5CeCyGWIV8ntgZZh15/avn82T1bUErheMfcaF1Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UAyUA6BHJauhVUgTUDahRZWp8DgdVg/vt5jxWA27vzIKE0skWbJ/GlbLIsHzyywSNAzDkUpi9Fj26H2rJP5IHQTIpl240jFdRwU0F2T/nYrfguOOY/Rg5DT8BI5wUyMF/jB8/1l9mo2sspHJIrhE4a58YqLETDgg0HXZc92eDwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GRNA9hE7; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53a007743e7so3900229e87.1
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 13:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729370388; x=1729975188; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0dEMPSv5xphvOh5Xq8FMvCt68pBBmIf3u2KGvjXht9A=;
        b=GRNA9hE7VTyUGj7cOusrnJpbhb7LCHcmqiIUQF/9v+9wgkqjxT9odIchPGDImVS6ss
         iZqca8EBakF+YZsuXTUJOZj9OBTWOBok4kTIY/R8yGhGaiQ2wXjqoN1p9oWwFymM/KJw
         ZwP2tKUSMhj3WDYbjG8b+/UOAaH3kxZZsVTR9pXRoQCWOB5RB0svZSu3Vs+EKK87FO3A
         HiB8bab8xFIF+VK6Osy3tj3+17X2A2Fg0CldZ3aZCqb7nxTYLe2YaiBc0wg7FQs1GEkh
         +fyhI4X+HLNQX3W4bQL4mpEhV+vSb4twYQEzb7/L4LBDp7NJXpo1i9qlH388qQjyTo3h
         p9aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729370388; x=1729975188;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0dEMPSv5xphvOh5Xq8FMvCt68pBBmIf3u2KGvjXht9A=;
        b=aoSUed5b8lgXzs16fCodo868cMHuy3hdV0NWwdbPMjXlRVI191WSSe/STHL1JGM5np
         IPrOn5pfB435azbZ8SWEz2kEqSSLZtde9MgkzJfJ3G4xKiXIcXUnu4JttNsS/OjnbA3V
         ivcfJeEZR6Ogziq8AgzcuekaKNx6opoJCgJUw0qEY1YwS2n8tzNAwg3QJHRvjwrGvv1f
         dkYtl5TrVfjuZMNjXf5cG1Pf2b2Mj5hW6QtwQS75MJ6nxzJat6zP0NzTgcbcP1bDNMCU
         YuaBsiBTRhqp9AU8w5FudN4/tFD6L8V5txnNlp1ijm0aWbnj4bL6u3iO94WamEB7rb+p
         5v+g==
X-Gm-Message-State: AOJu0Yw6wLm6/edWrsBXgIB2CWPDQz7t/OwsCco+ibQbD5+uNPfI+rSU
	iLHdtDPogKwI84tiFNh0BVpgv8PDEwGY+QbPFEpIR0aNv50bwfaLApix7Vd2bLA=
X-Google-Smtp-Source: AGHT+IEZ5zJhvLk21M0QMDvdH2lZRAvmpEkBETr07H5q2BeH89fBuOx4DzEhYrnRQo/8BoQwqOrliA==
X-Received: by 2002:a05:6512:1055:b0:539:fbfa:4a9f with SMTP id 2adb3069b0e04-53a1550ca17mr3358576e87.58.1729370387600;
        Sat, 19 Oct 2024 13:39:47 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a224202d5sm37564e87.136.2024.10.19.13.39.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 13:39:46 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 19 Oct 2024 22:39:38 +0200
Subject: [PATCH v3 9/9] ARM: dts: broadcom: Add Genexis XG6846B DTS file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241019-genexis-xg6846b-base-v3-9-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
In-Reply-To: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Benjamin Larsson <benjamin.larsson@genexis.eu>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

This adds a device tree for the Genexis XG6846B router.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/Makefile                |   1 +
 .../boot/dts/broadcom/bcm6846-genexis-xg6846b.dts  | 244 +++++++++++++++++++++
 2 files changed, 245 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/Makefile b/arch/arm/boot/dts/broadcom/Makefile
index 5881bcc95eba..d23cf466127b 100644
--- a/arch/arm/boot/dts/broadcom/Makefile
+++ b/arch/arm/boot/dts/broadcom/Makefile
@@ -36,6 +36,7 @@ dtb-$(CONFIG_ARCH_BCM2835) += \
 	bcm2835-rpi-zero.dtb \
 	bcm2835-rpi-zero-w.dtb
 dtb-$(CONFIG_ARCH_BCMBCA) += \
+	bcm6846-genexis-xg6846b.dtb \
 	bcm947622.dtb \
 	bcm963138.dtb \
 	bcm963138dvt.dtb \
diff --git a/arch/arm/boot/dts/broadcom/bcm6846-genexis-xg6846b.dts b/arch/arm/boot/dts/broadcom/bcm6846-genexis-xg6846b.dts
new file mode 100644
index 000000000000..a3616fb7b3a8
--- /dev/null
+++ b/arch/arm/boot/dts/broadcom/bcm6846-genexis-xg6846b.dts
@@ -0,0 +1,244 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2024 Linus Walleij <linus.walleij@linaro.org>
+ */
+
+/dts-v1/;
+
+#include "bcm6846.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "Genexis XG6846B Ethernet layer 2/3 router";
+	compatible = "genexis,xg6846b", "brcm,bcm6846", "brcm,bcmbca";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	/* Micron D9PTK 256 MB RAM */
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x10000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		secondary-boot@0 {
+			no-map;
+			reg = <0x00000000 0x00008000>;
+		};
+		pmc3-firmware@8000 {
+			no-map;
+			reg = <0x00008000 0x00100000>;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <20000>;
+
+		/* Called "canyon rescue button" in the vendor DTB */
+		button-restart {
+			label = "Reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio0 41 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&gpio0 {
+	status = "okay";
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&gpio2 {
+	status = "okay";
+	/* Totally 79 GPIOs are available */
+	ngpios = <15>;
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&leds {
+	status = "okay";
+	brcm,serial-shift-bits = <16>;
+
+	led@0 {
+		reg = <0>;
+		active-low;
+		function = "ext";
+		color = <LED_COLOR_ID_GREEN>;
+	};
+
+	led@1 {
+		reg = <1>;
+		active-low;
+		function = "ext";
+		color = <LED_COLOR_ID_AMBER>;
+	};
+
+	led@3 {
+		reg = <3>;
+		active-low;
+		function = LED_FUNCTION_WAN;
+		color = <LED_COLOR_ID_AMBER>;
+	};
+
+	led@4 {
+		reg = <4>;
+		active-low;
+		function = LED_FUNCTION_WAN;
+		color = <LED_COLOR_ID_GREEN>;
+	};
+
+	led@5 {
+		reg = <5>;
+		active-low;
+		function = LED_FUNCTION_POWER;
+		color = <LED_COLOR_ID_GREEN>;
+	};
+
+	led@6 {
+		reg = <6>;
+		active-low;
+		function = LED_FUNCTION_POWER;
+		color = <LED_COLOR_ID_RED>;
+	};
+
+	led@15 {
+		reg = <15>;
+		active-low;
+		function = LED_FUNCTION_USB;
+		color = <LED_COLOR_ID_GREEN>;
+	};
+
+	led@7 {
+		/* Activity 03 */
+		reg = <7>;
+		active-low;
+		function = "lan1";
+		color = <LED_COLOR_ID_AMBER>;
+	};
+
+	led@8 {
+		/* Activity 04 */
+		reg = <8>;
+		active-low;
+		function = "lan1";
+		color = <LED_COLOR_ID_GREEN>;
+	};
+
+	led@9 {
+		/* Activity 03 */
+		reg = <9>;
+		active-low;
+		function = "lan2";
+		color = <LED_COLOR_ID_AMBER>;
+	};
+
+	led@10 {
+		/* Activity 04 */
+		reg = <10>;
+		active-low;
+		function = "lan2";
+		color = <LED_COLOR_ID_GREEN>;
+	};
+
+	led@11 {
+		/* Activity 03 */
+		reg = <11>;
+		active-low;
+		function = "lan3";
+		color = <LED_COLOR_ID_AMBER>;
+	};
+
+	led@12 {
+		/* Activity 04 */
+		reg = <12>;
+		active-low;
+		function = "lan3";
+		color = <LED_COLOR_ID_GREEN>;
+	};
+
+	led@13 {
+		/* Activity 03 */
+		reg = <13>;
+		active-low;
+		function = "lan4";
+		color = <LED_COLOR_ID_AMBER>;
+	};
+
+	led@14 {
+		/* Activity 04 */
+		reg = <14>;
+		active-low;
+		function = "lan4";
+		color = <LED_COLOR_ID_GREEN>;
+	};
+};
+
+&hsspi {
+	status = "okay";
+};
+
+&nand_controller {
+	brcm,wp-not-connected;
+	status = "okay";
+};
+
+&nandcs {
+	nand-on-flash-bbt;
+	brcm,nand-ecc-use-strap;
+
+	/* Winbond W29N02GV, 256MB with 128KB erase blocks */
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		loader@0 {
+			label = "loader";
+			reg = <0x00000000 0x00400000>;
+		};
+		image@400000 {
+			label = "image";
+			reg = <0x00400000 0x0fb00000>;
+		};
+		/* 0x00ff0000-0x00ffffff: bad block list */
+	};
+};
+
+&mdio {
+	status = "okay";
+
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+	phy2: ethernet-phy@2 {
+		reg = <2>;
+	};
+	phy3: ethernet-phy@3 {
+		reg = <3>;
+	};
+	phy4: ethernet-phy@4 {
+		reg = <4>;
+	};
+	phy21: ethernet-phy@21 {
+		reg = <21>;
+	};
+};

-- 
2.46.2


