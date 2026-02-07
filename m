Return-Path: <devicetree+bounces-263611-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIRpFqg7h2l+VQQAu9opvQ
	(envelope-from <devicetree+bounces-263611-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 14:18:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D6456105F51
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 14:18:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 01B253004DB2
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 13:18:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD69331352F;
	Sat,  7 Feb 2026 13:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d+akm0ru"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75EF030ACE3
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 13:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770470303; cv=none; b=HDX52Jp63O23mBl0XL5x9KWjRDn4lzq1ebF/oUzNnSHAV+IBrBFJT5At8ktIfLbc+CYOs0D/OE/hDLAxpJJqt2LIB9oS2sqKledzPU/8pqPkIF/SxHMCe6Vw5iJOucaF/4uIvZEHXxvJ9jGHnpqcgBJMM6MRYnlwhU6oCbVHjKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770470303; c=relaxed/simple;
	bh=0hF+AVoyb+xRecp+ETgTXYXb0+GOfYqNuQjK1Jf2Ce4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BZHzMmnvZDz4RgYgVPNL+XDbjtquzNgkkj44hHzE+ZJiMd10KkL8D+vsXFFBnALyNhdD5/9LJiJrNhUgDaj9GwitslY4ZnThqlz1uHju5vQJnlNIqg0sQoNzUfZ0GD9J8A3TnoOqhiEoLt8xa4mQZ5mDViucayakRp73zPZ+2r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d+akm0ru; arc=none smtp.client-ip=74.125.82.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-2ba64b5a53aso31452eec.0
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 05:18:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770470303; x=1771075103; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QAMsCJ7WM0LvMqOJgK6pz8e5Nk/hEPgkVpMXdjp+pWs=;
        b=d+akm0ruA5IAP+YgWEYckPAuyMgiDlmc0BXNsULXQM5eKP3V7++5WIlPnNqWHS3W4Z
         xZEwKLw76NlyNAoSuzMlJb0AMpSwOnIc9Nc3LZmwYS/MKI6vax9M+T5ndlt5lTedSHAG
         yp9ODBm2E9XZl4PyjLNF/5G+JXHzHG07iC4+vRRxB0NBxjExyo7dnJ+0PIOc4Q2XjXKm
         lSbrP8fZdItH6BBoYqJgDyoHPDIYa34Rp4qFrLSDb9WryZTVFC/aPz2vCFMEM/Yso8Rr
         Mv1WMVx66qfNil5A2CcDtUVWPr4DOVnfu4HsykJXfHLkRhe2yOwuGPKsrwwp/mBDpIRs
         O43g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770470303; x=1771075103;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QAMsCJ7WM0LvMqOJgK6pz8e5Nk/hEPgkVpMXdjp+pWs=;
        b=E2CqLUkLGYjpm4WfIS9i+0QK/LMUxGZVmiWtst555IYVm0bTtLyrzAtnqGAk+lm8yk
         MhOsDvL0nfCabFf2g4XGNKOFv9ZssKJES41m1X1rxg7lz6q4bPDGFqxzNsckmyTgXxdq
         e9FfycwZBcFYgt87MPLm3H6A6o1/t5Z3wiXGotfGWj+VN5+FMlll2Ngl3P7PtBoy2hMW
         zN7+jYYVeJ9Lgj5EK1WwHQ4UyheW8dBh1ol9ka29r3oKH3wn0gAXPYY8t2E2k4Xdomsy
         IOEal3q49ijNGJJ1whyXkNNA4a+J4ViOf9iaUwI17jbzHEXcHcuPMpzOOAkIWEw8ok4Z
         O6Lg==
X-Forwarded-Encrypted: i=1; AJvYcCV/3nx5Jdxi3GdQs2OuBsY3CmNhsTIF5CfMfLt1v9a3LJcEdYGLZr8/52qwAMt1e6pB1j5w4bn5qVb2@vger.kernel.org
X-Gm-Message-State: AOJu0YyHFkr50g0iSQeR2LC8k+R4LCpSDJAUnz3RIxRL7zMe05MG2OaL
	j8J2Is9x2ojTGdWBINjN/gxHtFqR9oDzOq9P/aCwyd/PR/xdIrUBJnFWyX9r6w==
X-Gm-Gg: AZuq6aIlhZaWlWQcIPFsQhT7HssPWr3nyIDcrU97qKnRN6VpkgQbHHib/FCZ0/5I0NM
	s+rK3pn/J0x6e91LLh9WArxwCsA3L2THYaEht0zfc5hzcOMti9MUT7W4er5W0kEXcUYY0tMLjGD
	GbPU1QeWpZ2eKhmXwh4sSlkHnHM34TOXsa3jJNmLCtl7QeZwIdb3TrzgKvZU/wj5OmHVvnvqKra
	ZbI8t+R6nMsI96EOpwUXyVvPG2WaQwxugYaJEd4eN1jgaBjGhwavsQmdr32m3s2EGdhOLhgWrL5
	X7BrbtNYG3VVEI7SjJDqBgxavPWnJFHSeZoyq0lrkHXGfOsijOxS88hGqiQfeq1IdSfEy8OHtD3
	+Nsllwsfr1Qwt7vSsVGS/dDKJBENfsNxbOEue3lmZGn9P4wdKE8y62/y4FVHPVNsMIqnzBL++S/
	pu9M+i1EAcHm41Gs1HdSn/10Ld
X-Received: by 2002:a05:7301:19a5:b0:2b0:4c5f:c05c with SMTP id 5a478bee46e88-2b85644eb2amr2741172eec.4.1770470302536;
        Sat, 07 Feb 2026 05:18:22 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b1ab:5cb0:a2f8:764b])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b855c7f5fcsm3688627eec.29.2026.02.07.05.18.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 05:18:22 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2 4/4] ARM: dts: rockchip: Add Onion RV1103B Omega4
Date: Sat,  7 Feb 2026 10:18:03 -0300
Message-Id: <20260207131803.2834749-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260207131803.2834749-1-festevam@gmail.com>
References: <20260207131803.2834749-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263611-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.997];
	DBL_PROHIBIT(0.00)[0.0.156.64:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:email,0.0.0.0:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,plan44.ch:url,a40000:email,0.3.169.128:email,0.2.34.224:email]
X-Rspamd-Queue-Id: D6456105F51
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

Onion Omega4 board is a board based on the RV1103B SoC that has:

 - 256 MB of RAM
 - 256 MB of SPI-NAND
 - Ethernet
 - USB OTG
 - Wifi
 - SD card
 - Camera connector

Add the initial support for this board so that it can fully boot into
Linux with the root file system stored in the SPI NAND.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
- Removed memory node.
- Added serial0 alias and used stdout-path = "serial0:115200n8";
- Added color, function and pinctrl entries to the LED node.
- Used bootph-pre-ram and bootph-some-ram.

 arch/arm/boot/dts/rockchip/Makefile           |   1 +
 arch/arm/boot/dts/rockchip/rv1103b-omega4.dts | 106 ++++++++++++++++++
 2 files changed, 107 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-omega4.dts

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index 716f5540e438..d8cd5df138cc 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
+	rv1103b-omega4.dtb \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
 	rv1109-relfor-saib.dtb \
diff --git a/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
new file mode 100644
index 000000000000..bcfc9b321dd6
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
@@ -0,0 +1,106 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2025 plan44.ch/luz
+ * Copyright (c) 2025 Onion Corporation
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include "rv1103b.dtsi"
+
+/ {
+	model = "Onion RV1103 Omega4 Board";
+	compatible = "onion,rv1103b-omega4", "rockchip,rv1103b";
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
+			pinctrl-0 = <&led_pin>;
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
+
+	flash@0 {
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
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0m0_xfer_pins>;
+	bootph-all;
+	status = "okay";
+};
+
+&wdt {
+	bootph-all;
+	status = "okay";
+};
+
+&pinctrl {
+	leds {
+		led_pin: led-pin {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
-- 
2.34.1


