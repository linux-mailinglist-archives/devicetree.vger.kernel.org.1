Return-Path: <devicetree+bounces-111817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 525189A0198
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:41:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 98932B252FA
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 06:41:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41A85193089;
	Wed, 16 Oct 2024 06:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QF8trj6T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679FB18E359
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 06:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729060885; cv=none; b=CfJGFwCqMBQEJkXK+y1QYM+U8FB1Nj0u9HnU7At2vAnmG5mP3uLIGeKywFgm5E6XLbIZU1f8J+luLyt7Xvh5H2JnDEb3KLD5FC5FepSx65Z9F6UuDgeNP/75bOU8vX8e8ZkGQIX9DHcmF/8yh5GAlOacDWp5a/6EOAa7EYGE420=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729060885; c=relaxed/simple;
	bh=/WSb5CeCyGWIV8ntgZZh15/avn82T1bUErheMfcaF1Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E35zByUBAPRJLlM0V6nEt1kcZCKUN+B/vYilHWBxEq/EUDj428nIORx7+0il/bTCpFpTrOlJS/dJ7lYLU9GFxA3hm5EK2fxdMx431dBR/xnxM7LxEiCpHt7W96V3OjX/XCxSKuDx5atZV1YqQJaXiR5vjGU+Q/OmKZwPgLMis5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QF8trj6T; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-539f84907caso3509456e87.3
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 23:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729060881; x=1729665681; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0dEMPSv5xphvOh5Xq8FMvCt68pBBmIf3u2KGvjXht9A=;
        b=QF8trj6TWSTLnhI8xof/1RZyZ51lcbo0wxZH1LAqtLmXULaAPjyvg5WSrjPycu3C5O
         MejPXAh9g5n7i5Jxr71GGAALEFU7MvYbEiZXa9ZeiSHsxyBLDn/Kr7PNAVqOKvJHtDMN
         kF2olegHcqcDnxn4tTAvN0RhJferCDT3CfdL+6blLAf962i6ZxpZhK9zUezNfSgkSwWJ
         xJWBjAi5YjcMG/K3mephhShe2LJwGnSZqa2H9ZHBzR1Rx9qGQvQHefs3wJd/WPJ56lKj
         I/8Re6fVVR/2bGVf5KCICUsFYB3KV6aKNKolGu0jI0+5/oZMXlqW7DQm/XrV7HE9WcMu
         Vnmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729060881; x=1729665681;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0dEMPSv5xphvOh5Xq8FMvCt68pBBmIf3u2KGvjXht9A=;
        b=scg9Bl0NQGgBIoeT55LfI0eCFnsVtCUs4E/01H2uELqxtAZaO/h4VXzAHq7huOSzsZ
         4UlTkDpteA2FVNf1cAm7ilLIiIuRRF1/r1NCwyWBpOT0tx0uybK8+xXaKdWgJoYTXeYf
         rIbFPgJLfk1z/wanEaCf8YMFrdV915x8aEDw0u+iWgaq+trCmd9Z3x25dLZ/qq89/cs9
         +aGqbu/fWMRvyPwcLPWxBdfrbt/pfCG4zDRwyfuOQzP7tEAFBT3F2Hs6tJWorJAX9Nby
         BMTq37FZmDp+xUYl055WBFDGpxRQocjv8OOGUJeokst3f8Unx4sHLKIlgTObz+G8+BjJ
         lhiw==
X-Gm-Message-State: AOJu0Yzhr2ot8bhKYgXq2XzJ18vgRRzDmQOR2Jnhy2OlkPE3wqESBovT
	5IayXILzf4Nxgv2krwsRYRopxQ6HT0pdt2UY+eeiYtim59snZ6AMWf2RsS+kBd6fFcd5HIicWi6
	I
X-Google-Smtp-Source: AGHT+IE1uwJsu4omVJZUuXDa+VUU3bsy1rWYXx0Mw4z24bvaSwhAuZkLlEhhmePOw0bz5A8igadJAQ==
X-Received: by 2002:a05:6512:281c:b0:539:edd1:e56a with SMTP id 2adb3069b0e04-53a03f8dc08mr1737804e87.59.1729060881261;
        Tue, 15 Oct 2024 23:41:21 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539ffff3a50sm357455e87.144.2024.10.15.23.41.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 23:41:19 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2024 08:41:09 +0200
Subject: [PATCH v2 9/9] ARM: dts: broadcom: Add Genexis XG6846B DTS file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241016-genexis-xg6846b-base-v2-9-6a7cc2ee57eb@linaro.org>
References: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
In-Reply-To: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
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


