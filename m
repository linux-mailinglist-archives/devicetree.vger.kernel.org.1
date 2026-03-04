Return-Path: <devicetree+bounces-271174-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0E5oBURmqGl3uQAAu9opvQ
	(envelope-from <devicetree+bounces-271174-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:05:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1260F204D28
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:05:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AFED93055009
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 17:00:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37B76379ECC;
	Wed,  4 Mar 2026 17:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K1r2yAKF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F6537997D
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 17:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772643618; cv=none; b=Rejw5szuGfGL9ow1PbQyIeXh6YN/6yAAWZMuN91JZ628EE/kZwJy0kPH0f49Z4Ypo6nJh97KvenhQFhNfEkZwKN684TaUi6jLwtfU5tn5P0zlbYPT3NpsSP6SpdC28UwuvXIhMAoJPsWHSA/9b2paUcq+3SjW8TzV8P4eOR9KmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772643618; c=relaxed/simple;
	bh=YquwKjQDJK4Y9nS1MxD4evSebXQbdjAQbj4BULxOEuc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jyS70dAc9v206fuKrm7BSH+3+RLeBobfVU1/kY/pMSQSDj58zAAMu8QeH6VwqcgeX8LiWAk62xem/eivGbnD17I+3afxkMd4FK41wJol7YgUWkYA7Vb7a9R1svOC58EADxnavaFTdPbP1CYSSLi66g9mMMPKjJ23je8NvKFl1iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K1r2yAKF; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-483a233819aso70015445e9.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 09:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772643614; x=1773248414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5A4B+lhL5P+UnFl50KgzO7KqwgJaQcZRVqnZFWRC+60=;
        b=K1r2yAKFMSn6BL1TWHO+X6UkrIXOBGbJnLT/OfrIT96f0Vq/JCr/FmJI4RbwyYhevK
         X8D760ENj7ruGdq3Jqaoj3+SJm2Nt/gAmcmxqlsos9BBQoWlJVd5nBh2xdDGkpphpoNW
         9Ex2ODDBCdHBtLIVxdUvtgd0itIUxOzVUcxk9tN0QDVmA+7RD4+B7xLMA/ut+c3VxKWd
         BAnqayn8T+VDcGCa8JvD1S5EdUS3vt9YHnBd3uk4l1B2z/VE/4UmfnG1ToO4F8tJidWc
         7cpQnn+C5J83JKunFHqTiYPifvsUc7CfFH1kYQV2roOKoVxXrFC0f7T4hQB4QQ8vXZsW
         nlhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772643614; x=1773248414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5A4B+lhL5P+UnFl50KgzO7KqwgJaQcZRVqnZFWRC+60=;
        b=g3Kw9kUO+iK2E8p3w7GZ08HSg5fnjniegYgN++2wWLMvSVx4g7MSXFVkJDAYXKQ84h
         qhFUxvZA0IYPYAMjTKZmCWFn82FflQrR/EEkqIulMmangMP/tIR4+xgodhHIwFIwyGOj
         hNDBJSVl1lyPzzljoc0wTER6DlkTwd+lIDkmqF0B00PU+7YR3BLZk7BAwhswncwvLHuw
         wxfiMQAtw8IX93JjycuHD2xOr8VLrY5RU/u2ZKJ5aQwvQw2g3wdBEslXYB9755HDJ+5G
         kJSdjm3ZEs/8uA6azRr2ycUeb+ismOGQaKX6Uo6G/bkhvBVAgthO3+hIESWto6WBKOzb
         otBQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2kuZ37OMzCnYQSfakcgKrO1NJEVHtXFuGkKHp6ma/MyJPIvQFcvbbhm/3hJ5vKl5BjyxJhOPPoPs7@vger.kernel.org
X-Gm-Message-State: AOJu0YxqionP3hMGnWZFgGL4qJUcRfBvIPuTlu0hmY/z4KhF3sZzuSUu
	Ks8veynXiOyrH6X2FCaVb3NdJDAZz4HOQr7fi8g6C5/ALCWYwVcXBCYjDHaR5Obo
X-Gm-Gg: ATEYQzzzllZuyTl3kU4kqWTv03N//UYnuxuyeoPNJZEkB7ObHBqXu5dhMuI9VJrZQ1M
	tHJXWbvW7ytDGFh0/fU4q0w3IZtbWGNK6fXRmRMfCBzSRLzmlOgx/3TDCj52paHDnXmA8TC42pU
	gjE504wPfGSamvQfAOQCINkqpNtGhzjfW/5PTYzC1tM9V9pe0fG9UU4YOGk7Rh312wkJjmVIiSd
	bdDReLN1O6IjO8GLuo+i45Zg+3SVne9+9rQSgG/CFg0eu++jw25wgyHjVSNhqkdp77aaalCDzUs
	ZLa/3jb4jtBVovUzWNWO2x1PzwWFx6lH1MqdeOGQIlKXx1Pl+b6ImzqCAwPA1mHkSDVORyigSet
	S2gyrxGZ52XmMlnX+KlHgzH3KAbJuegmBF+c53ro4wvJKVYXBEj+n/KSYDfyptTcyUFwX7ruQ4F
	L3oss/RWsMwLaZfODQjRwNCGMjgUi5E0fCuncVVpbrZMIpW0ba4rSLkGDcgINPbRIvoIg1/+BME
	qvpsmRAALJWiTog361BKI2sBKSmi2SOON+kW8re
X-Received: by 2002:a05:600c:474e:b0:477:6374:6347 with SMTP id 5b1f17b1804b1-4851988d564mr39818325e9.22.1772643614231;
        Wed, 04 Mar 2026 09:00:14 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851887fc54sm69946295e9.10.2026.03.04.09.00.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 09:00:13 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: Frank Li <Frank.Li@nxp.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Matthias Schiffer <matthias.schiffer@tq-group.com>,
	Yannic Moog <y.moog@phytec.de>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 3/3] arm64: dts: imx91-var-dart: Add support for Variscite Sonata board
Date: Wed,  4 Mar 2026 17:59:55 +0100
Message-ID: <faad85bacc334557ac25965647100c5dbf22297f.1772642881.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772642881.git.stefano.r@variscite.com>
References: <cover.1772642881.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 1260F204D28
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-271174-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,pengutronix.de,gmail.com,ew.tq-group.com,amarulasolutions.com,tq-group.com,phytec.de,norik.com,toradex.com,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Add device tree support for the Variscite Sonata carrier board with
the DART-MX91 system on module.

The Sonata board includes
- uSD Card support
- USB ports and OTG
- Additional Gigabit Ethernet interface
- Uart interfaces
- GPIO Expanders
- RTC module
- TPM module

Link: https://variscite.com/carrier-boards/sonata-board/
Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v3->v4:
 - Fix space between BUCK4/BUCK5 aned parenthesis
 - Remove unused pinctrl groups

v2->v3:
 - Rebased the series to fix DTS apply issues.

v1->v2:
 - Ordering by hex and node name.

 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx91-var-dart-sonata.dts   | 471 ++++++++++++++++++
 2 files changed, 472 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx91-var-dart-sonata.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index e0738525d37e..8ee7d41a367d 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -411,6 +411,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx91-11x11-frdm.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx91-11x11-frdm-s.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx91-phyboard-segin.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx91-tqma9131-mba91xxca.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx91-var-dart-sonata.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-9x9-qsb.dtb
 
 imx93-9x9-qsb-can1-dtbs += imx93-9x9-qsb.dtb imx93-9x9-qsb-can1.dtbo
diff --git a/arch/arm64/boot/dts/freescale/imx91-var-dart-sonata.dts b/arch/arm64/boot/dts/freescale/imx91-var-dart-sonata.dts
new file mode 100644
index 000000000000..afa39dab240a
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx91-var-dart-sonata.dts
@@ -0,0 +1,471 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Variscite Sonata carrier board for DART-MX91
+ *
+ * Link: https://variscite.com/carrier-boards/sonata-board/
+ *
+ * Copyright (C) 2025 Variscite Ltd. - https://www.variscite.com/
+ *
+ */
+
+/dts-v1/;
+
+#include "imx91-var-dart.dtsi"
+
+/ {
+	model = "Variscite DART-MX91 on Sonata-Board";
+	compatible = "variscite,var-dart-mx91-sonata",
+		     "variscite,var-dart-mx91",
+		     "fsl,imx91";
+
+	aliases {
+		ethernet0 = &eqos;
+		ethernet1 = &fec;
+		gpio0 = &gpio1;
+		gpio1 = &gpio2;
+		gpio2 = &gpio3;
+		i2c0 = &lpi2c1;
+		i2c1 = &lpi2c2;
+		i2c2 = &lpi2c3;
+		mmc0 = &usdhc1;
+		mmc1 = &usdhc2;
+		serial0 = &lpuart1;
+		serial1 = &lpuart2;
+		serial2 = &lpuart3;
+		serial3 = &lpuart4;
+		serial4 = &lpuart5;
+		serial5 = &lpuart6;
+	};
+
+	chosen {
+		stdout-path = &lpuart1;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		button-home {
+			label = "Home";
+			linux,code = <KEY_HOME>;
+			gpios = <&pca6408_1 4 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+
+		button-up {
+			label = "Up";
+			linux,code = <KEY_UP>;
+			gpios = <&pca6408_1 5 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+
+		button-down {
+			label = "Down";
+			linux,code = <KEY_DOWN>;
+			gpios = <&pca6408_1 6 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+
+		button-back {
+			label = "Back";
+			linux,code = <KEY_BACK>;
+			gpios = <&pca6408_1 7 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		led-emmc {
+			label = "eMMC";
+			gpios = <&pca6408_2 7 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "mmc0";
+		};
+	};
+
+	reg_vref_1v8: regulator-adc-vref {
+		compatible = "regulator-fixed";
+		regulator-name = "vref_1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
+	reg_usdhc2_vmmc: regulator-vmmc-usdhc2 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
+		regulator-name = "VDD_SD2_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio4 28 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		off-on-delay-us = <20000>;
+	};
+
+	reserved-memory {
+		ranges;
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		linux,cma {
+			compatible = "shared-dma-pool";
+			alloc-ranges = <0 0x80000000 0 0x40000000>;
+			reusable;
+			size = <0 0x10000000>;
+			linux,cma-default;
+		};
+	};
+};
+
+&adc1 {
+	vref-supply = <&reg_vref_1v8>;
+	status = "okay";
+};
+
+/* Use external instead of internal RTC */
+&bbnsm_rtc {
+	status = "disabled";
+};
+
+&eqos {
+	mdio {
+		ethphy1: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
+			reset-gpios = <&pca6408_2 0 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <15000>;
+			reset-deassert-us = <100000>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					color = <LED_COLOR_ID_YELLOW>;
+					function = LED_FUNCTION_LAN;
+					linux,default-trigger = "netdev";
+				};
+
+				led@1 {
+					reg = <1>;
+					color = <LED_COLOR_ID_GREEN>;
+					function = LED_FUNCTION_LAN;
+					linux,default-trigger = "netdev";
+				};
+			};
+		};
+	};
+};
+
+&fec {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_fec>;
+	pinctrl-1 = <&pinctrl_fec_sleep>;
+	/*
+	 * The required RGMII TX and RX 2ns delays are implemented directly
+	 * in hardware via passive delay elements on the SOM PCB.
+	 * No delay configuration is needed in software via PHY driver.
+	 */
+	phy-mode = "rgmii";
+	phy-handle = <&ethphy1>;
+	status = "okay";
+};
+
+&flexcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	status = "okay";
+};
+
+&lpi2c1 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default", "sleep", "gpio";
+	pinctrl-0 = <&pinctrl_lpi2c1>;
+	pinctrl-1 = <&pinctrl_lpi2c1_gpio>;
+	pinctrl-2 = <&pinctrl_lpi2c1_gpio>;
+	scl-gpios = <&gpio1 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio1 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+
+	pca6408_1: gpio@20 {
+		compatible = "nxp,pcal6408";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	pca6408_2: gpio@21 {
+		compatible = "nxp,pcal6408";
+		reg = <0x21>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	pca9534: gpio@22 {
+		compatible = "nxp,pca9534";
+		reg = <0x22>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	st33ktpm2xi2c: tpm@2e {
+		compatible = "st,st33ktpm2xi2c", "tcg,tpm-tis-i2c";
+		reg = <0x2e>;
+	};
+
+	/* Capacitive touch controller */
+	ft5x06_ts: touchscreen@38 {
+		compatible = "edt,edt-ft5206";
+		reg = <0x38>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_captouch>;
+		reset-gpios = <&pca6408_2 4 GPIO_ACTIVE_LOW>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
+		touchscreen-size-x = <800>;
+		touchscreen-size-y = <480>;
+		touchscreen-inverted-x;
+		touchscreen-inverted-y;
+		wakeup-source;
+	};
+
+	/* USB Type-C Controller */
+	typec@3d {
+		compatible = "nxp,ptn5150";
+		reg = <0x3d>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_extcon>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <29 IRQ_TYPE_LEVEL_HIGH>;
+
+		port {
+			typec1_dr_sw: endpoint {
+				remote-endpoint = <&usb1_drd_sw>;
+			};
+		};
+	};
+
+	rtc@68 {
+		compatible = "dallas,ds1337";
+		reg = <0x68>;
+	};
+};
+
+/* Console (J10) */
+&lpuart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+/* Header (J12.4, J12.6) */
+&lpuart6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart6>;
+	status = "okay";
+};
+
+&usbotg1 {
+	dr_mode = "otg";
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	usb-role-switch;
+	disable-over-current;
+	samsung,picophy-pre-emp-curr-control = <3>;
+	samsung,picophy-dc-vol-level-adjust = <7>;
+	status = "okay";
+
+	port {
+		usb1_drd_sw: endpoint {
+			remote-endpoint = <&typec1_dr_sw>;
+		};
+	};
+};
+
+&usbotg2 {
+	disable-over-current;
+	dr_mode = "host";
+	status = "okay";
+};
+
+/* SD */
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-3 = <&pinctrl_usdhc2_sleep>, <&pinctrl_usdhc2_gpio_sleep>;
+	cd-gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	bus-width = <4>;
+	no-sdio;
+	no-mmc;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	pinctrl_hog: hoggrp {
+		fsl,pins = <
+			/* GPIO Expanders shared IRQ */
+			MX91_PAD_PDM_BIT_STREAM1__GPIO1_IO10            0x31e
+		>;
+	};
+
+	pinctrl_captouch: captouchgrp {
+		fsl,pins = <
+			MX91_PAD_CCM_CLKO2__GPIO3_IO27			0x31e
+		>;
+	};
+
+	pinctrl_extcon: extcongrp {
+		fsl,pins = <
+			MX91_PAD_CCM_CLKO4__GPIO4_IO29			0x31e
+		>;
+	};
+
+	pinctrl_fec: fecgrp {
+		fsl,pins = <
+			MX91_PAD_ENET2_RD0__ENET2_RGMII_RD0             0x57e
+			MX91_PAD_ENET2_RD1__ENET2_RGMII_RD1             0x57e
+			MX91_PAD_ENET2_RD2__ENET2_RGMII_RD2             0x57e
+			MX91_PAD_ENET2_RD3__ENET2_RGMII_RD3             0x37e
+			MX91_PAD_ENET2_RXC__ENET2_RGMII_RXC             0x5fe
+			MX91_PAD_ENET2_RX_CTL__ENET2_RGMII_RX_CTL       0x57e
+			MX91_PAD_ENET2_TD0__ENET2_RGMII_TD0             0x57e
+			MX91_PAD_ENET2_TD1__ENET2_RGMII_TD1             0x57e
+			MX91_PAD_ENET2_TD2__ENET2_RGMII_TD2             0x57e
+			MX91_PAD_ENET2_TD3__ENET2_RGMII_TD3             0x57e
+			MX91_PAD_ENET2_TXC__ENET2_RGMII_TXC             0x5fe
+			MX91_PAD_ENET2_TX_CTL__ENET2_RGMII_TX_CTL       0x57e
+		>;
+	};
+
+	pinctrl_fec_sleep: fecsleepgrp {
+		fsl,pins = <
+			MX91_PAD_ENET2_RD0__GPIO4_IO24                  0x51e
+			MX91_PAD_ENET2_RD1__GPIO4_IO25                  0x51e
+			MX91_PAD_ENET2_RD2__GPIO4_IO26                  0x51e
+			MX91_PAD_ENET2_RD3__GPIO4_IO27                  0x31e
+			MX91_PAD_ENET2_RXC__GPIO4_IO23                  0x51e
+			MX91_PAD_ENET2_RX_CTL__GPIO4_IO22               0x51e
+			MX91_PAD_ENET2_TD0__GPIO4_IO19                  0x51e
+			MX91_PAD_ENET2_TD1__GPIO4_IO18                  0x51e
+			MX91_PAD_ENET2_TD2__GPIO4_IO17                  0x51e
+			MX91_PAD_ENET2_TD3__GPIO4_IO16                  0x51e
+			MX91_PAD_ENET2_TXC__GPIO4_IO21                  0x51e
+			MX91_PAD_ENET2_TX_CTL__GPIO4_IO20               0x51e
+		>;
+	};
+
+	pinctrl_flexcan1: flexcan1grp {
+		fsl,pins = <
+			MX91_PAD_PDM_CLK__CAN1_TX			0x139e
+			MX91_PAD_PDM_BIT_STREAM0__CAN1_RX		0x139e
+		>;
+	};
+
+	pinctrl_lpi2c1: lpi2c1grp {
+		fsl,pins = <
+			MX91_PAD_I2C1_SCL__LPI2C1_SCL			0x40000b9e
+			MX91_PAD_I2C1_SDA__LPI2C1_SDA			0x40000b9e
+		>;
+	};
+
+	pinctrl_lpi2c1_gpio: lpi2c1-gpiogrp {
+		fsl,pins = <
+			MX91_PAD_I2C1_SCL__GPIO1_IO0			0x31e
+			MX91_PAD_I2C1_SDA__GPIO1_IO1			0x31e
+		>;
+	};
+
+	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
+		fsl,pins = <
+			MX91_PAD_CCM_CLKO3__GPIO4_IO28			0x31e
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX91_PAD_UART1_RXD__LPUART1_RX			0x31e
+			MX91_PAD_UART1_TXD__LPUART1_TX			0x31e
+		>;
+	};
+
+	pinctrl_uart6: uart6grp {
+		fsl,pins = <
+			MX91_PAD_GPIO_IO05__LPUART6_RX			0x31e
+			MX91_PAD_GPIO_IO04__LPUART6_TX			0x31e
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX91_PAD_SD2_CLK__USDHC2_CLK			0x1582
+			MX91_PAD_SD2_CMD__USDHC2_CMD			0x1382
+			MX91_PAD_SD2_DATA0__USDHC2_DATA0		0x1382
+			MX91_PAD_SD2_DATA1__USDHC2_DATA1		0x1382
+			MX91_PAD_SD2_DATA2__USDHC2_DATA2		0x1382
+			MX91_PAD_SD2_DATA3__USDHC2_DATA3		0x1382
+			MX91_PAD_SD2_VSELECT__USDHC2_VSELECT		0x51e
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			MX91_PAD_SD2_CLK__USDHC2_CLK			0x158e
+			MX91_PAD_SD2_CMD__USDHC2_CMD			0x138e
+			MX91_PAD_SD2_DATA0__USDHC2_DATA0		0x138e
+			MX91_PAD_SD2_DATA1__USDHC2_DATA1		0x138e
+			MX91_PAD_SD2_DATA2__USDHC2_DATA2		0x138e
+			MX91_PAD_SD2_DATA3__USDHC2_DATA3		0x138e
+			MX91_PAD_SD2_VSELECT__USDHC2_VSELECT		0x51e
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <
+			MX91_PAD_SD2_CLK__USDHC2_CLK			0x15fe
+			MX91_PAD_SD2_CMD__USDHC2_CMD			0x13fe
+			MX91_PAD_SD2_DATA0__USDHC2_DATA0		0x13fe
+			MX91_PAD_SD2_DATA1__USDHC2_DATA1		0x13fe
+			MX91_PAD_SD2_DATA2__USDHC2_DATA2		0x13fe
+			MX91_PAD_SD2_DATA3__USDHC2_DATA3		0x13fe
+			MX91_PAD_SD2_VSELECT__USDHC2_VSELECT		0x51e
+		>;
+	};
+
+	pinctrl_usdhc2_sleep: usdhc2sleepgrp {
+		fsl,pins = <
+			MX91_PAD_SD2_CLK__GPIO3_IO1			0x51e
+			MX91_PAD_SD2_CMD__GPIO3_IO2			0x51e
+			MX91_PAD_SD2_DATA0__GPIO3_IO3			0x51e
+			MX91_PAD_SD2_DATA1__GPIO3_IO4			0x51e
+			MX91_PAD_SD2_DATA2__GPIO3_IO5			0x51e
+			MX91_PAD_SD2_DATA3__GPIO3_IO6			0x51e
+			MX91_PAD_SD2_VSELECT__GPIO3_IO19		0x51e
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
+		fsl,pins = <
+			MX91_PAD_SD2_CD_B__GPIO3_IO0			0x31e
+		>;
+	};
+
+	pinctrl_usdhc2_gpio_sleep: usdhc2gpiosleepgrp {
+		fsl,pins = <
+			MX91_PAD_SD2_CD_B__GPIO3_IO0			0x51e
+		>;
+	};
+};
-- 
2.47.3


