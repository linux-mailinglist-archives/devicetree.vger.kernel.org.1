Return-Path: <devicetree+bounces-275229-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FzBJNANtGlvfwAAu9opvQ
	(envelope-from <devicetree+bounces-275229-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:14:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1E32838C8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:14:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5381E30DBFA0
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 033A93164B4;
	Fri, 13 Mar 2026 13:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="am/j2K+6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E7138C426
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773407491; cv=none; b=CWyYLB/5t9VBQvMIytpVpLr7QF9pMIF4NDDrxN1YUojlZPM+YV3k/fLE6rVcwN/9WqNZ5cQLshWXXoaZ5ad4TZ4owmpg5h1XwazSrEan/jwhJ3apo7hMe8iZs6pQNsqrSUWLs5/rgg56DWvOwa0TzrnYWlwaJxyzpip3UzTMuoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773407491; c=relaxed/simple;
	bh=oUZtqjaZ6hsoxQP3lQ/P9bgrAyclLtkqKy+q9rKkHK0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hWr58dR6DHks2jcLd32N4KGUb9rO3ijsu7wxZ0eebvshMkmtOsclgbbriX9ncgbRQdqxblJj8BFBJdr6iibGPXxbYViW6aZkD4Tbhmuc99mD6AH89uZvj7HMmSh8NNqYyFzIEOxicE0o3Ng3P0+xP8pJrk8Da3o6FJ2NnpmnJJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=am/j2K+6; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2bea8220c38so1500273eec.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773407490; x=1774012290; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=96wIKyTh0AzqeditJlQ3kQuExY/YGJnegboCLTZQauE=;
        b=am/j2K+6R3mUGSFrjaHdPmB1Frm7eW3PJ0QJX1TI6ZVZTVh5zDOLlpdCPtJ4utcgEA
         RFUw5qDACVwTG+HQ+TsOktcjc3uOTxZzd5MUDHToEmfSwDWYMKBlcZGDXjEyxqZXr7RV
         Faz+aq/nzdrSdM+AfXdIXyLUrUxRIYIjKcf+4231rPeAw+fH2pP6y7OzCgmO2uKV4eYP
         uH6gL0zHomQY/KI+BoqUeG+Rc8TQHQCWFA/V64QQLNTkPO7zPd7D0ca7worxFZkW1/Qq
         PV7Wylr6FNIxGlgrt8i/4sDkvNrGyZVVgw4O1EelzivCST9QWCorAt9sEMaaTxdtgWKE
         QHrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773407490; x=1774012290;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=96wIKyTh0AzqeditJlQ3kQuExY/YGJnegboCLTZQauE=;
        b=cA2TU/pYFXbvp9XwI2GbbqUh7xUtZ875NFkdmppBBJSExxhmP4ui04qd0njdgJEtRT
         jGJbFf6ws7LTnBFy8e8RIZcllc/SG8xJ4ilyABf04CFqjaeFQLqrlBkVAqznrLqpWqeM
         5UobQvIGVz9x81DjkYjRmukFLKaiqlZFal58i1jQmbLc8oSZFb+XJC2lDgD09d0ITGZ9
         KqunpBA9OB9xLrh/3O/Yu6As6sbTqDYBCcEsiUsGCKXCOo4jDTAyIVj4K+4rCJBevCg4
         8qU3QhNtmLWqNmYsZm9ETHE//N8EIVNT3rfQhMWySabLd5FUu6ocS4OTGG1MPuMYDNeo
         tS/w==
X-Forwarded-Encrypted: i=1; AJvYcCVM0FAfgB/CvfP5cY1a+utHnlmoYU/cB9TtZn6PnRLzrMv6E2atUZPIzt7gnQh/niKs975VnuibXYRy@vger.kernel.org
X-Gm-Message-State: AOJu0YyuUO6t9qvTSoNX2arBy34iTCWujschpN5oTYfgVqlTRZfCMaxY
	Nh7J8RgOZQK+QpwoujNptF8qqzOp2RYJKqZq99udONyijYkTGsuXsF8S
X-Gm-Gg: ATEYQzy82oclCrNbHtupNbHAzF6PUm7ywVIHeswApEc2usRHY7VavJ2TuhGoTuOLQIp
	l+zWfyVu+Atgs9DAFsPAnUernVekP/3j9h+U9IptI+/zhPcTO4wOPWr5cEdvsX070WyMzGtRVO1
	NrhvD9uW8kchdm+fszmvFXOPaRH/UlnMgl+A5DCm/LvC54/+GF1ySmz3B+kE7e+3UjXOlIbDz3u
	qM19uJIb34/klH+V+Mj9xbyZGpZd/bvrYUG0+WYkqph6Sqpf8jVEOoEpkPWnUlaCaYrMTqTLA9l
	Y6lEpdK2icI7u5b5t8dLGlscoDPQFSkWelFiFccKEUCTlKKOO4WI8oLkiSFsgCP6VtuO0PRSVfO
	oQSIdtvCmaNQKNGnC6peZ5uMOFaTfmKIFfZiKJLFVLBlkJQ9y/Xo8QlCEk/gfczZL6BpcSc82Gb
	2Sm3R/30f5JFwkmWc1LgEpZnDIiAtMgHARCPRNtLSxK0bRcuPll3a7rZHsKfZuEU9bHsmcfrFFx
	ooc
X-Received: by 2002:a05:7301:1688:b0:2be:ca4:e13d with SMTP id 5a478bee46e88-2bea55f5207mr1416328eec.30.1773407489117;
        Fri, 13 Mar 2026 06:11:29 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:b6b5:4:db6e:9a2c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab5702e5sm2602315eec.29.2026.03.13.06.11.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 06:11:27 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	shawn.lin@rock-chips.com,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v7 4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation Board
Date: Fri, 13 Mar 2026 10:10:58 -0300
Message-ID: <20260313131058.708361-4-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260313131058.708361-1-festevam@gmail.com>
References: <20260313131058.708361-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[tor.lore.kernel.org:server fail];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275229-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.998];
	DBL_PROHIBIT(0.00)[0.3.169.128:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,nabladev.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,a40000:email,0.0.156.64:email,0.2.34.224:email]
X-Rspamd-Queue-Id: 0D1E32838C8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Fabio Estevam <festevam@nabladev.com>

The Onion Omega4 Evaluation Board is based on the RV1103B SoC and has:

 - 256 MB of RAM
 - 256 MB of SPI-NAND
 - Ethernet
 - USB OTG
 - Wifi
 - SD card
 - Camera connector

The details can be found at:
https://documentation.onioniot.com/omega4/getting-started/

Add the initial support for this board so that it can fully boot into
Linux with the root file system stored in the SPI NAND.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v6:
- Added SD card and SDIO support.

 arch/arm/boot/dts/rockchip/Makefile           |   1 +
 .../boot/dts/rockchip/rv1103b-omega4-evb.dts  |  63 ++++++++
 .../arm/boot/dts/rockchip/rv1103b-omega4.dtsi | 151 ++++++++++++++++++
 3 files changed, 215 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index 716f5540e438..d0154fd7ff24 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
+	rv1103b-omega4-evb.dtb \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
 	rv1109-relfor-saib.dtb \
diff --git a/arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts b/arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts
new file mode 100644
index 000000000000..d63aa3515403
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts
@@ -0,0 +1,63 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2025 plan44.ch/luz
+ * Copyright (c) 2026 Onion Corporation
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include "rv1103b-omega4.dtsi"
+
+/ {
+	model = "Onion Omega4 Evaluation Board";
+	compatible = "onion,omega4-evb", "onion,omega4", "rockchip,rv1103b";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0	{
+			pinctrl-names = "default";
+			pinctrl-0 = <&led>;
+			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_BLUE>;
+			label = "sys";
+			default-state = "on";
+		};
+	};
+};
+
+&fspi0 {
+	status = "okay";
+};
+
+&sdmmc0 {
+	status = "okay";
+};
+
+&sdmmc1 {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&pinctrl {
+	leds {
+		led: led {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi
new file mode 100644
index 000000000000..eda0189af7a8
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi
@@ -0,0 +1,151 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2025 plan44.ch/luz
+ * Copyright (c) 2026 Onion Corporation
+ */
+
+/dts-v1/;
+
+#include "rv1103b.dtsi"
+
+/ {
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		post-power-on-delay-ms = <300>;
+		reset-gpios = <&gpio2 RK_PB2 GPIO_ACTIVE_LOW>;
+	};
+
+	vcc3v3_sd: vcc3v3-sd {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc_pwren>;
+		gpio = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
+		regulator-name = "vcc3v3_sd";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	vccio_sd: vccio-sd {
+		compatible = "regulator-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc_volt>;
+		regulator-name = "vccio_sd";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&gpio0 RK_PA3 GPIO_ACTIVE_HIGH>;
+		states = <3300000 1 1800000 0>;
+	};
+};
+
+&uart0 {
+	bootph-all;
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0m0_xfer>;
+};
+
+&fspi0 {
+	spi_nand: flash@0 {
+		compatible = "spi-nand";
+		reg = <0>;
+		bootph-pre-ram;
+		bootph-some-ram;
+		spi-max-frequency = <75000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "env";
+				reg = <0x00000000 0x00040000>;
+			};
+
+			partition@40000 {
+				label = "idblock";
+				reg = <0x00040000 0x00100000>;
+				read-only;
+			};
+
+			partition@140000 {
+				label = "uboot";
+				reg = <0x00140000 0x00100000>;
+				read-only;
+			};
+
+			partition@240000 {
+				label = "boot";
+				reg = <0x00240000 0x00800000>;
+			};
+
+			partition@a40000 {
+				label = "ubi";
+				reg = <0x00a40000 0x0f5c0000>;
+			};
+		};
+	};
+};
+
+&sdmmc0 {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	no-sdio;
+	no-mmc;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sd>;
+	vqmmc-supply = <&vccio_sd>;
+	status = "disabled";
+};
+
+&sdmmc1 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	no-sd;
+	no-mmc;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc1_cmd &sdmmc1_clk &sdmmc1_bus4>;
+	status = "disabled";
+};
+
+&wdt {
+	status = "okay";
+};
+
+&pinctrl {
+	sdio-pwrseq {
+		/omit-if-no-ref/
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <2 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc {
+		/omit-if-no-ref/
+		sdmmc_pwren: sdmmc-pwren {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc_volt: sdmmc-volt {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	wireless-wlan {
+		/omit-if-no-ref/
+		wifi_host_wake_irq: wifi-host-wake-irq {
+			rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
-- 
2.43.0


