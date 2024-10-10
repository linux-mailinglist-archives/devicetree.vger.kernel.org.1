Return-Path: <devicetree+bounces-110120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4E29994EB
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 00:07:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FBCD2854A5
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 22:07:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D4F31E47A3;
	Thu, 10 Oct 2024 22:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MXOiSLeY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BA11E47CE
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 22:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728598037; cv=none; b=Zibxp8K8C3rTYLStMLNrNlWS2koJPEWOQ2XPfUXh8NL0PqttFWAXc5iYuG+rIJe66i2VHjFqpOf/A3/enCjXPkCZx+9URy3Mp0eXQo5WFYSyPSwka8TzNmt9MFVBiH4idOMwVDyGW+kJwuF0C8N4wrdQmtWMX7+Jh5u3T2LyLEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728598037; c=relaxed/simple;
	bh=/WSb5CeCyGWIV8ntgZZh15/avn82T1bUErheMfcaF1Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T+Q8Ch53dgHXin7DWaP6In1rkj2gJg4GzMFqhOIXQry3tU9GS7lCbHGEL/vjQGLJYGtqlDEqj+a2ssxy11Fkxgy0vS3KyMa21cTgWJmdsIn5s/0ROMo0tBFb2FbhbIscKA+/dYGaWKCtGzXFUPJj0mKWAVuUhq833l+r4dwWANc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MXOiSLeY; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a99422c796eso228516866b.3
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 15:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728598034; x=1729202834; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0dEMPSv5xphvOh5Xq8FMvCt68pBBmIf3u2KGvjXht9A=;
        b=MXOiSLeY3fagMsc6PBPJfNdl5tuBMi4fO0Ewbzu+E0Zx81lPOOfnbARmasYywChfRu
         czLoMJMTuPcXG+3rATXTYBJYARKdYUMDU/5yCwzfC4eOIqcHABCVNJsFK7crA+tz9o3j
         osJTA6x5BLhkQA/HdPLYkNQL2AyswPkSridja9lEBBi5x11UnAJ1LYwcMQkHnPAqxdCP
         EMoBuroQj4EDDQZvgrFpwomb4efGm6vtkOS8pgF0ZzOiQpFL9w2VZc9zdNqaOvZMyy+x
         Gjy3n0TLVZbCdQ5xm0btcGwrWsMtHZ16NrFduXJ4mmEZrmaruOe1Nt638yAqeN3N+UNG
         +qHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728598034; x=1729202834;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0dEMPSv5xphvOh5Xq8FMvCt68pBBmIf3u2KGvjXht9A=;
        b=jTTbEioPcqncv6jWL62v07VWQb7V0UlQAyYcdEojTUem2RjWjz/zCoSripE3ICQ2BG
         14v/vG11hAZ4ZeigpQA2pRfQ7V242sIL8e6tq23svPSiRD5nBU/3fVUVwbZ8ES0hkwrD
         S7EdP93lJ7FCnSSVNVdDI/dZb8ytuOs4Whbamkcrt2/8d4afMC5o3Sgw7mYfxg2+8YMj
         OPTlyoh6wOo0qM74o/aSh2iVnrgCxcdiGSxei8uWPxdQyZz9Q77hwkQkvxbZazpOqvP9
         4zW64GMFbpv7oAJOLHP+sqvPMtqPz18giH3wk52g1NfgxZKRdftugZF2r6lRlZrLvRev
         j90w==
X-Gm-Message-State: AOJu0YyyrYoAr2d1acpOg2pqq7+RUBjHYqPSdI1RIeQdwMPtW9KmnQU0
	UjGbu/BsbNtOkdcVhqWn6rUbYwaLWYgs8I2qYwRWFQ0g+jPdJhKDxtPHOjYzX2I=
X-Google-Smtp-Source: AGHT+IHCwW+0Ol+Olvlp4g0cmVfxufmf4URAuvtSaWo6RW/KFztNmqL4E/D3vThFqKGZROATxf74Fw==
X-Received: by 2002:a17:907:e90:b0:a99:5cb4:9ab4 with SMTP id a640c23a62f3a-a99b937b808mr34727166b.23.1728598033681;
        Thu, 10 Oct 2024 15:07:13 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a7f27e5esm140825466b.80.2024.10.10.15.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 15:07:12 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Oct 2024 00:07:06 +0200
Subject: [PATCH 8/8] ARM: dts: broadcom: Add Genexis XG6846B DTS file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241011-genexis-xg6846b-base-v1-8-f04d6f6f93ce@linaro.org>
References: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
In-Reply-To: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
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


