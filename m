Return-Path: <devicetree+bounces-263515-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKncNttRhmnQLwQAu9opvQ
	(envelope-from <devicetree+bounces-263515-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:40:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E46321032E1
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:40:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6525D302FAB7
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 20:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02CE830EF8E;
	Fri,  6 Feb 2026 20:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Sy6IV+cV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A725630E858
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 20:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770410435; cv=none; b=IW/3Ofh2GoQm+z14qMR0E8WKwEIM15KlBUpEljw6eNVD2XBUtygXCPO+97FaijkcT1GxH3DHL3L8bV4MSloxhqzNjXQB0wLZtFFRBrQKnhnQzr9N7k21jZ18c+eGLUIZEo0SDfYQ32Nfh5lVIcd9egfWl5aFJtnG+Sl3kpQT03c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770410435; c=relaxed/simple;
	bh=z+gF6gGFzpwuCkS2e9sXBIJTj7OvTnjx9FeP0Kq9CNs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=RVevbZYJc+x2VF2aPECuP3/xwxYHh88NbSBEDQazGctoEhzffhBUv+bCy1M23cj9MQvHKQZ7Xn6DLcQokJKcc13wq3kSBAQZ4KPnWw0mGb5/VzboiNE3uKtqcFAhmDyMBA0XbBgZWOPb34KHHGDLBpS8y5xMU5y0oPxjlkG0mMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Sy6IV+cV; arc=none smtp.client-ip=209.85.219.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-88ffcb14e11so35388596d6.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 12:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770410434; x=1771015234; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f0zUp2P+g2uFd6hUAI+gJemyvrScR2wFdYRxcOydHJg=;
        b=Sy6IV+cVffwD2892oUmyj0HtjAgLKBqefnGmTEY7ocP4VTd1v2oToWpIfGc2er8JqU
         qA/Wa6p2mojvWgtRLHEf0iDbtDowtvB+RhSfOLRQlk0L9s3Cpgj7ABZSQBcXsp2F39y/
         211a1zcd9p6SpjwSt2NDDoATLOiMts+5eh+vxfFbUVCLBHKvHyiJkibHgP+jjTx8Ch+P
         VmNE0xcG/XQk85ovtnZ5f3klxsbA6hTy+KE7NLmGfgvVNIlSsLb6bm3zhxVhjrW/hPPr
         8FFwKvPPzoPE/aTc/tbD5Q1s3AEEuj2xz0/iV+WjyrcMZCbqxwhkfELyUXceCZ0GDGpn
         H8Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770410434; x=1771015234;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f0zUp2P+g2uFd6hUAI+gJemyvrScR2wFdYRxcOydHJg=;
        b=CCjz0h2jQUzLE48US3gra4TMF8mGByJ4ivpAqiM+lDk8C7nJTcq1aRaTmN7AKYro73
         eP7Se1MSS73xLgxPzz1Lz2KqjnE0NsozML5Erk+Ok1X4Q9itriV4gaUYglLh9guv0/e2
         e//mEaJovdMq2BZyn6GsvWnSn0I7aOjIJOS+lJ5vzg0lvjnmFG48SMbv/twlh+xAwTpi
         zEDLrn2ugzqD1vgNsqpcqiu2j4W3Seslq/fn37dFXWA7wouGv6lcAdAu3O/pSFHVGsmi
         cf+kU9vIh3dPgkb1k2mllvJ31npknvcrzfzE5y+wK5S4mWvREf3wQ5xxWiw/DZLMrVau
         Wp9w==
X-Forwarded-Encrypted: i=1; AJvYcCX1d2CQMNKHvk2C0WTczkHvCsDthWM2C8Sd6vU+vrfFYo7F5KaC81w9PdEC3ekk7QT1Lw9mld6cDPHM@vger.kernel.org
X-Gm-Message-State: AOJu0YwwiLqqCr5mbRRVlVAn2d0vAJ1+otvttUZao5mQSZy/3m3R6w3j
	XuQga3cELBLfi5AYE+tMVUrmUUmOtPTFT4vwtTIUvjSX0Qi6EL6YFuDFwsn2Eg==
X-Gm-Gg: AZuq6aJ7HrJW/MJxE4wPQN2xnAvNemVzZsFXdtAQSgcKw81A2cpqyM3x71gN/lQ3f8J
	vZGvbarBUObtSVbk3TLYsw0iNIn+rfCDYkNZu6W2C89R78pPEeI/G3H4hBa2rEUOkisqPWndisY
	aWiXBlr3TJI8u8thWdWAlKdrNQcvlfoC+xVpZuonX5l/tlzkwh9hSssGJ0tVHufzteA6JSajx2g
	A/uHNuJ74FAiuQhyjTv+gC5F+anuubiAh6TYeMSV8pIaHmeUklHSRonMyhJOrwPaw99kPgA4LsX
	rFz0KuzEUS6NaIfyEgit2Zijj+xM2lH11kv2uiC3jZgLcjwWZMDbPQTyumNXpjAAcRumBOqV7qN
	n3M9LDLvHfgxiB5BI/kXa1nP+hye5ChfVULaPh4mH54UGPRBNSwr11W9WvCZ9o66lijD1nYy6wT
	YOjoI1L93mWG2/Zvf66850bch0
X-Received: by 2002:a05:7022:51e:b0:124:9f67:6b6f with SMTP id a92af1059eb24-12704025a8amr1636130c88.20.1770403354070;
        Fri, 06 Feb 2026 10:42:34 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270d8e25f1sm576839c88.9.2026.02.06.10.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:42:33 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 11/11] ARM: dts: rockchip: Add Onion RV1103B Omega4
Date: Fri,  6 Feb 2026 15:42:27 -0300
Message-Id: <20260206184227.2702488-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263515-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,nabladev.com:email,plan44.ch:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.2.34.224:email,0.3.169.128:email,0.0.156.64:email,a40000:email]
X-Rspamd-Queue-Id: E46321032E1
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
 arch/arm/boot/dts/rockchip/Makefile           |  1 +
 arch/arm/boot/dts/rockchip/rv1103b-omega4.dts | 92 +++++++++++++++++++
 2 files changed, 93 insertions(+)
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
index 000000000000..512b063bceb1
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
@@ -0,0 +1,92 @@
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
+/ {
+	model = "Onion RV1103 Omega4 Board";
+	compatible = "onion,rv1103b-omega4", "rockchip,rv1103b";
+
+	chosen {
+		stdout-path = &uart0;
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x10000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0	{
+			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+			label = "sys";
+			default-state = "on";
+		};
+	};
+};
+
+&fspi0 {
+	bootph-all;
+	status = "okay";
+
+	flash@0 {
+		compatible = "spi-nand";
+		reg = <0>;
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
-- 
2.34.1


