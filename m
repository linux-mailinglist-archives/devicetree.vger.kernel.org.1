Return-Path: <devicetree+bounces-263513-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBRwH0NPhmlpLwQAu9opvQ
	(envelope-from <devicetree+bounces-263513-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:29:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DEE1031E3
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:29:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 33DD5300D4F3
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 20:29:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B289B30C630;
	Fri,  6 Feb 2026 20:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NkEvlxiF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EA430C600
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 20:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770409775; cv=none; b=USmH49BZG8nA/y6m2MtuEdVM6aBzrk4dYehjekhbrvGIb6onHfDk8lxxv3K7ym024mg9HbyP/Im8gSh5lN+/oLin1Bs/4ynaKPh4pzPK9P9Sx4XEy3HEaSyZXBneZrHSTyZYNkv/nksU2KSWwV1E3sOxVavG1P8Gn/gA9js98yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770409775; c=relaxed/simple;
	bh=/LxQB1aJLGqOQI+0beAjl5qoGFou0xW/natOhwzjEh8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hPrc8smWZOLL7IWFAZVwXbvez+SxzmucU3xRxD05UeLoW6oUgqx3K6OCae21E0ZEASl2EHLFwjtdmKrN9P7FQ9EcysBC6v0JR130zX2c+5/gGpSVUz999GheBLFlYY5tmu63lfi55aDnJQidMu03+2ln2rsjU1ge3xcIt2M9/hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NkEvlxiF; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-8c5386f1c9fso148260885a.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 12:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770409774; x=1771014574; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lOn3TJ8VDiSndOjVHpbjRor/zx6dF6y8oFuDewRL8ck=;
        b=NkEvlxiFzaSzeGsJKIPjdIMRQ6rzMDy1dJxeRFFjw+M/vZ6+y9V2GsBnZvKN8Epkbn
         APHI7wbvXkh0gxk/II5zcOxniRPA+9cN1D8stDxxJUccKFMniThaB2c8kF0elA60vc0J
         W7NMfSgciyufbepB2FY7x+j60CBcJ97CEDb4RcPpuQm0qqeS5/KITPx2XiFzLu6UvrYm
         sgLHplV8fcxKiVuYevlxWhaTfrXJH813mZngx6tTL/yRO7WMuCtjIP++80B1rT5xYZ64
         6oGjByh7R4kbTM8FvIWpwLeIBmTWYMtBxwAcsinbEC4fsE02J3Ue935+LkztLbHxegNX
         wnJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770409774; x=1771014574;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lOn3TJ8VDiSndOjVHpbjRor/zx6dF6y8oFuDewRL8ck=;
        b=KxJeHNKTdZfULxhn8KLf3C0oQpl6QoGQ1x9srkYNQ8LXc8nAIHeZ72J8r7uROQJcVJ
         gKcDOGMo/aF8tv6+UThK6SptpwH4SGwHw2Z/6R8d34dzcq6YmFWnIjJFUt41wgZ0uTAb
         61jkUOfmL0U3chRjouxwB8weUK9QMX390VwkDEzMgPoUS4Sv9k5aKo62+2UnW6FE8AbZ
         G2JwILpGmSz5UfD7GwKAtbLYeQwynDbDVyqYA6x5fPCLp7u7VZ2KBP3OlECZAmdIrVMP
         N1SOkRK82Ji2F6oqWRSfv1AK4CIYPVoxgWX09iyvN6rbtbedqXoBtb3+z9tx1Ev+mixt
         PFtw==
X-Forwarded-Encrypted: i=1; AJvYcCVOEKAv071+dlY7Qy/Y3cSd47YWTdUWk1Ehy3hyFOtRlWfGSeJJAgHm5UYawjFOhWjspKJb8y76mh3q@vger.kernel.org
X-Gm-Message-State: AOJu0YzJhilvAffcsDGGAxB7PDKX0VjxBMW1cYL2ZnLi2Ra6XFeWrG3Q
	cIqgFlcNMlVbkhJoU29miiKsF+L1dfZ5P9CnFVhU1spR5IzS7wDLafJU2Ol38Q==
X-Gm-Gg: AZuq6aKqome1fSIcPiQ6ob0jxaGHqHkIn/wQrX2zCvRk4QPaayMWkd6/ru2K0ksdIoX
	7IZ5udkMh9ZvSfxJDFmYBZefnzVuembxZOYQy9Cu7Vf+hmSenLmo0XSYlIy6Fn5DNcWhJRGyQSM
	1ChOQhgU7NeIJ09fJyyYTaXKzZoKKm8LoHmC2qyvm++Gvs1+eYZKtIa39Fdj3SBlUq55NooRMVe
	zTmtsPhghlx6PRs+eomplSxWRa9o7VsXnlc2xa1PMgFN3vE5DAwCHNihkqaVcfvmM7F5+TI2vBI
	M1CxXAi9zTKB+wiUA9uiKEmcqPCgbTTHWT9dQeZERLk59i4p/n11EX4Mb0OPvae3OzrNGDuVVpC
	UdJH5wtEIf+TivDRyUvGeOwzX0ahmmTklT0eVhIQQOBQixOB+mlSZW3xonooWfPb8kxws+cBHLs
	C6UN+8IfDy3X0ulUX2W2iIjY94
X-Received: by 2002:a05:690c:d95:b0:795:1fbd:2cf7 with SMTP id 00721157ae682-7952aaa90b6mr35940217b3.27.1770403066852;
        Fri, 06 Feb 2026 10:37:46 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7952a1d9b38sm28008437b3.27.2026.02.06.10.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:37:46 -0800 (PST)
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
Date: Fri,  6 Feb 2026 15:37:37 -0300
Message-Id: <20260206183737.2701570-1-festevam@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263513-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.996];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,plan44.ch:url,0.0.156.64:email,nabladev.com:email,0.2.34.224:email,0.3.169.128:email]
X-Rspamd-Queue-Id: 95DEE1031E3
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


