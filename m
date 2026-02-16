Return-Path: <devicetree+bounces-265650-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCfcCd1skmmMtwEAu9opvQ
	(envelope-from <devicetree+bounces-265650-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 02:03:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E49914089B
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 02:03:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 064393020FD5
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 01:02:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B01822857EA;
	Mon, 16 Feb 2026 01:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CixbXjY+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED4E2868AD
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 01:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771203763; cv=none; b=FyoP6LucniGj7jQyxjPizFo6eRucQILTUFQmhZMg81yggXYHN7Vy55+1exWx/fezi01uYRcvQmCX2KrqWDe5phmY4ixPC3CQrdJH8sgpf+zp63XkDbIwEdqxf9Fzg4MMw1Myc0pz9n4T7uqv6eZ60iKvxbR3iP3csJ7TPX8zkh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771203763; c=relaxed/simple;
	bh=d+2FOxo+y997I+5XX3rtDc2iRUYuvy4TUuq/ht8gTTE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qPRmAyIe4YU/G7W3lc/v/kAoQfQyu83GHeILjILEv6U8SKzvSM5ezu9vzQY/7lXTU3iFX1y7ixD7Vl8CZYgSKhHffmxy5U13TZaG+29cCLQ7c5BsiQ0stE75sNSQ6CH4wyWxkoQ060O0nicQ3G+D7bl3QsrR9+TItrWpXpc2zMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CixbXjY+; arc=none smtp.client-ip=74.125.82.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f51.google.com with SMTP id a92af1059eb24-124a635476fso3022869c88.0
        for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 17:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771203761; x=1771808561; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q0fKyKWI4980jZn5M5FggHqzBxrEKL/SGjXzNzw8NrU=;
        b=CixbXjY+zAzMxaQ/pz4Esx6WJicoXTPXbVy6LfZEW6Ho6bPGIsLSCSi/khpNO7ZlAG
         BvR8LklGnetAjiTBGJ5/mbTvouL1seHzxlXAonMZPTd33kNfUHW92xjPDEh7OwLiSrfc
         b3pcbBRqFjNfDcJ3aZB6uDLACeTEbJY0JJI36fr68oqAyyotqNVZ89K+OscxVNikwRla
         EkHjSdtynDsQijlJh/f8K8ZA6RzDdPBR0kwSOEqsHHr1SxjWU0erYJfyhGhcx+taa8d4
         8ARN6bPDlCa/fjsETl6q6cpA6qGp2wFYr7j4c2r6ChAJuIXFTnlSHKYSaGb8Q3WCV/zM
         zqVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771203761; x=1771808561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q0fKyKWI4980jZn5M5FggHqzBxrEKL/SGjXzNzw8NrU=;
        b=tUz9z/yt+8pDLvD2olhculuRO0Za7fq1CT+QMFgceIj4ce1EMRxFgJJzd9SLbx8DqX
         ToYhTZREBV+AASKY2yPQ03egybIKVJyG4qtCbHU1jCQCr/9wBM1mwKjM0X9a1RQDb1cI
         x4EjXWRpA5bt6KK6pXjEGdCfx/ZZDFmS+nzT66VwptQjxMoWCFIfGerYaBjI4GCsChCm
         cl1WE+ObGJlMOYJjOH+cEtiLcCDqzurMtDUnUR/kP89W1ZjH3E6utli/1RJdInXj7AKb
         P8sjXcFKxhadjs9bXdPEdOrqptE8XrKnAlBURkDfa5JVGYLjp1x+4loF0D4fTzSCCNHU
         yR/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVk8ZruYpGU12V5Md1ohPZrKmzr/zq4I831zVaAeeba+pYETTzOsa0HQ6icZa4OUPlSlFeS6clpu3Sp@vger.kernel.org
X-Gm-Message-State: AOJu0YzaLdwguRj9GPE2wKpbhdCFWElCx5GHxqCl3isgHgN55Vz+59TK
	234RVvtogc3apQUgH6bK2e+Qp0rB1KQWsfEhgZWVo1i51cGird/tfOBw
X-Gm-Gg: AZuq6aKTZjUcxZ2K48icgbWI7jDbJxL1d/KD+52XqosPzoTHDZ+aXRGSFHo1RMHQxmd
	c2mp7oWzozW28UUZxUDmfTh8c1NjiWzigRERKe6LPRuPKJ/rINPw6RWamgEGU8EsMCFj3l+Q0Qp
	GIi9UClJzkiQtDe2XUsc0DasxPMfNS5CQ9TvkYxRVDniYPStFAMX+tyiASqGZIZ+41JScKBaqyL
	6+wMvJcMeXLs/lapkZVBVNOAVO73ZgNcGS2qLHcASI2kExGADr39g+T0IEqkDs3pdTcN3WLToVo
	BtGv+UvBBbKU2gqPh4qdgkRNDDnS9Ot6IIl/w3iqjlZ5EtL7/Uh1wSVfYjxEFUjQLsD8dDAuaSv
	5yDmqgeufAfKlr2vj+vjrlX3toPr68Ej7ss2MR3BozhU1CWU1b2N5z2XpmFLJ0LcIUNS+RiQ8pO
	TM1SbIWpZIoVT1nn7ctSeZ7EwEAQdXON9TUtJKPXnO0PSO6OgWN+cZWw7aMpnhKXav7n2Q64jM3
	Evr
X-Received: by 2002:a05:7022:793:b0:127:366f:8bb7 with SMTP id a92af1059eb24-1273ae2f14bmr4124070c88.25.1771203761453;
        Sun, 15 Feb 2026 17:02:41 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4ffb:cd7:e7e8:c526:2074])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12742cadb25sm9158160c88.10.2026.02.15.17.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 17:02:41 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v5 4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation Board
Date: Sun, 15 Feb 2026 22:02:19 -0300
Message-Id: <20260216010219.2131484-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260216010219.2131484-1-festevam@gmail.com>
References: <20260216010219.2131484-1-festevam@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265650-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_PROHIBIT(0.00)[0.3.169.128:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,nabladev.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,plan44.ch:url,0.0.156.64:email,0.2.34.224:email]
X-Rspamd-Queue-Id: 8E49914089B
X-Rspamd-Action: no action

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
Changes since v4:
- Use compatible = "onion,omega4-evb", "onion,omega4", "rockchip,rv1103b";

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
2.34.1


