Return-Path: <devicetree+bounces-274860-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIdeF2N6s2kZXAAAu9opvQ
	(envelope-from <devicetree+bounces-274860-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:45:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9C627CE23
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:45:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 57C3D306F0CE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B4C934B1A5;
	Fri, 13 Mar 2026 02:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W+9Fli3M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A186234B1BE
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773369916; cv=none; b=CUh0DFgypvWsfXQWfereWItimeHwsJVYga4T80GR0jvQ9V34L/lnGTszhV4S7Ij3/+4RGLDBGN0taRoTGG1hEwqvZjh2S9Us5vZ2D4QPgari0NXxJIppEUZXoKmAF7AOQpyj0u94rDlbF3Rn3PzW7S2RrFBVmpS2A1+vkWQSVHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773369916; c=relaxed/simple;
	bh=O4OGVzzOxrBGvYutioNvFxJnxWE95ACrCRVri9+D7V8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=g3xVTtu5mGyc0Fc+VOLwxWUKxPqCgV7Qrjj0Ntmu0/TW6U9skcpbRNUWoPAI7wXFEeeXNzRy4y1nDrWMyuwHvZkpeZRjExXHrWuqfCbjyddqa/6aQDJuDPLPzeUHddydlowLpcbMMti6PIdnmLWjgXXLvsnayTcOhF72Pt7sv0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W+9Fli3M; arc=none smtp.client-ip=74.125.82.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2bd9a485bd6so1625580eec.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773369914; x=1773974714; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iSe5UvRoNIjilncVOeKf8HYNdIXHPW/64eBhtdMG84o=;
        b=W+9Fli3Mv49ymJJgc3otj0A/9T+ewXQgeU7Wqju4URIjPGMcjkdZu5ahqpk3fev5Lp
         RgvLqHqkqeXhKkqyM/gQ3GsW13iKcoAw4tNnAM67w8PEa2aFFviMU7zNlmsqzQdLQUjH
         P/ZzkOJ4upsdETUcPvjwF+QWylcoycAAV+DaQiwEue3CJ4fzqnhL2KdwhnU5omcSjThe
         XzLyseGP08XrKPgRfdfWtLXDWGm17ersZmzLpkHLAIlnKStfQltUc7uQ8rtwFbZmhRMJ
         K9se9QXQrwQRKwvcksYIpnbS49e/Tj/ab4yqoE4izQKUrYh8/bQHItLlBHv7/QUQFzQT
         oXiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773369914; x=1773974714;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iSe5UvRoNIjilncVOeKf8HYNdIXHPW/64eBhtdMG84o=;
        b=Lli/x2gd/FA0kFxVgC5ticLVUaH3asU+QW+JZBvFGkT0XqPivp6Y8n1WhlgwTPSouB
         LSnlbX+eJdiN70UkhkKyP96KBL+2cMrePUHn5LhOLnBgBJ+yVlPf4ryoRlnve69JI4aM
         NXDIJH1XCGddJPK66yaFMfEN8yezhbujseVaUHlLMhQi10LlBphum70/Ck1DXbnjqAMk
         BriNB7TFD7UtJQ/wYq01lCJyACvP+lSsLQy4c39/qoJ9Zv14+Lw5pHWsFzFCnb3QEjcb
         L2P9BVd27HaSe07HHeNlQr2tlQ1czPYbRmTg3PhzhnrdL6HPF+T9qNRQlckKDgXP1eFV
         wN+w==
X-Forwarded-Encrypted: i=1; AJvYcCVAew8KmX7TZoqW/YNTPbvDvC+KzPqAdCtW82Aoa2Uz376dqnE6LB1nzdZFUYZAzsfh8mXJIR0vHY6M@vger.kernel.org
X-Gm-Message-State: AOJu0YweIxHdMi+XLqzFjkWH3VhmgiOV+81Y74ssPZe5epiZPJKjyiqx
	ngEtCWJ25LtdO5B/oj6fpBM6A0dFxWfuxrmnYZRo/66NMVN3OTpDOTyZ
X-Gm-Gg: ATEYQzygpvPj7lALApDLUozfdJdgPoquAqAhU6ji4N4/5lA04Fyxp0UcI3H3qv4OFwG
	XcAKpF7shROQ3R2WIbKxue9S9W301g22Y34P7Yok1nX8T9XgZBL2NukJG4V9CvyFhf0h4s/mqGV
	JcRHnb434W+4/xxkCQ6KgEeRMymj63QCJvodTzGOFawh5fPq3bFLooIiEOMRo/kkTtCRKLKxfkj
	yF9bszvh9mDcM8c0dZNm2/6lbawPrpeMA3uw9FSOWdiZ7Dabw5pjYUZ5ETxs3TlCxyzwnaKiWgM
	rv5k1E6O/x1d8KVQwMmjHhh8VYcYgw1lxAwmdVftpDfNUUU5M6ynz1gXWHmvpAFAkVqPjp7QWzE
	w9+N73gPL6Gbes+PPEEWs314vgORvFlQgJD3qX3qBI/14qceHNBjDO1PEBIbWOezPcFdfFV4wxh
	WeOaJZBAGTvslGMMYkJi0mw4vnaJaugF3NjBXE7z9HsH1FBNCitRJw+N5inGqnySfEFWNm
X-Received: by 2002:a05:7301:5f09:b0:2be:ca4:e118 with SMTP id 5a478bee46e88-2bea55ef377mr990892eec.28.1773369913687;
        Thu, 12 Mar 2026 19:45:13 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:62cd:a5bc:7e0f:18c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab526db0sm947919eec.20.2026.03.12.19.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 19:45:13 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v6 4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation Board
Date: Thu, 12 Mar 2026 23:44:51 -0300
Message-ID: <20260313024452.625064-4-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260313024452.625064-1-festevam@gmail.com>
References: <20260313024452.625064-1-festevam@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-274860-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_PROHIBIT(0.00)[0.3.169.128:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.156.64:email,0.2.34.224:email,onioniot.com:url,nabladev.com:email]
X-Rspamd-Queue-Id: CC9C627CE23
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
Changes since v5:
- None.

 arch/arm/boot/dts/rockchip/Makefile           |  1 +
 .../boot/dts/rockchip/rv1103b-omega4-evb.dts  | 55 ++++++++++++++++
 .../arm/boot/dts/rockchip/rv1103b-omega4.dtsi | 65 +++++++++++++++++++
 3 files changed, 121 insertions(+)
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
index 000000000000..3016492e15d3
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts
@@ -0,0 +1,55 @@
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
index 000000000000..58aebffda9cd
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2025 plan44.ch/luz
+ * Copyright (c) 2025 Onion Corporation
+ */
+
+/dts-v1/;
+
+#include "rv1103b.dtsi"
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
+&wdt {
+	status = "okay";
+};
-- 
2.43.0


