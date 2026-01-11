Return-Path: <devicetree+bounces-253651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A4AD0FC5B
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 21:11:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 03D6130312FA
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 20:11:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D535243964;
	Sun, 11 Jan 2026 20:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a0JYIGrR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED92923FC49
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 20:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768162281; cv=none; b=CSD87I1wHw8UBrXqab5Uok5VfS851NoaOOLh547lpIyScmm9QhfXT2zjxukMRU4Pf32iSUx0wgML/0vLmyZS2QT4iiD+z+odTGEfP0eAfluRm5aFSVP8ZXd/AO28G0Erl711BwFcFVY+nC6xjPxfvJn/Pr372NA9ApqUIia8mcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768162281; c=relaxed/simple;
	bh=Tae5IbVQt0hFhg/JSTRKayl/oCPje1lXcmR49WBA/lQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZGm9nBSxmXqGDb4LXNsVCXpE2ZtJ9z9GP0LQD/Y/tttKIX8g9WS4CkHkOQF49Jhijsj8G/GHWWILnc/Y8/V5pvb2zOYdCumOBiiZZQ6fsSSI6nxgQPGQXCccBQl8XSJrQq0nZB3KTa68c7/JEcH+V1MXp9/EK3gV8u6YawARzBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a0JYIGrR; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-78fc3572431so64443217b3.0
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 12:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768162279; x=1768767079; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MI+UfjdZ4KBl70/kcazNDAuL61XOS5jgfeZZ52BwtA0=;
        b=a0JYIGrRdczTqqb6fRjJ6Ep0wyh4JGQkNuErdKbc8SwzzKzIujIyAjfle5mr542k9v
         J0uOD6ZxO65kEYCgqa+y/f+cbWwfMQ5MCBc7yw4LfWUMo4gyJcYzVmZmrcvneGC4UeQL
         pzn6Fr6RCn2ca7BQxw2R9quGL0T+45OsjBz8mI71twFND/5Nl+6iA0f/JV0lgfs2K8Y+
         b6CK4J1Xfv8QbnbwP6/CqTmlA+0QbTXq36cf2BLB/YNM7bhPAbXNPqRqwLt/wD7CQVHr
         VqyXhEBG0JeaHI1cjK4VnVgHLrW5w1XtivvGPYruTPUGlvS0zjbdUm/+Rizl46/2gdhe
         u7Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768162279; x=1768767079;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MI+UfjdZ4KBl70/kcazNDAuL61XOS5jgfeZZ52BwtA0=;
        b=w4na82n104cv7ZRRfsaq/kA532REiax+Asz/3L6FvMXM7nPtAg0DN0/QUfzWmrCTdn
         +/FbGd0W/ZRx2r1UjwPZQ6bHCpLK/vIRZ2el9zJS7Zy28p7BoNJfwdLJFvULIjTFJYg6
         YbUal5PmkNo3EtnEWkHe6DBr/i/GSIg8gtCBqbv4bHiX3GnlZ+fN9it5rDDrfr45KEv4
         Q2xWiH88j3QjmbPvCkqZZFjOAZH/kFm//V9ivLqwV1sbhCjmeAl62OniaOgmcEhiNHaV
         Ia4NA4Y6NjFR0GEA2uw5IS860KMJfMrEONE0ZAtVVytiv2OeFSDcmIrWIMYC8Z1jQOLE
         OVHw==
X-Forwarded-Encrypted: i=1; AJvYcCW5EO2igwMONmngq96B2swli+Xy4NffT7jet3ka3hrqU4GZf/qcwRSP5HWhOoGQb8X5O+PmYFcEd7OC@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm8C2B68Vfc5VELQ8mtCbFFsDlIXT+ZHx/un+Wm3ijpCXWvxuC
	5D3LCLTgKN4O+TK/G2z2+jZ9zpqapRM4Zcab79XMBn2d6JzdoE4ebhdP
X-Gm-Gg: AY/fxX6eBqc9Eh9D/tWqARNav2mISvucbrTq/YYj4MCFRhgGOKagPeRWZxJbQqeaGzX
	H2CQ086wRITSsnTm8YF5KSWTcwmmah3tP8VWZ6efk4ECby0RvG+5+GAYFDc89VZMHUgeODJJBqC
	RUtPnkQ0o6Agnfi1Cihy6tlky4dJAjatF7jBYJObgcX2IufaA8nk3A4Y4wzEXi8WZCaoCUbnd6B
	s1lX1EehuLChAofg+QOFxcB0NYYJTCCpWLqZHsVrk6TdR1bEtvqmzRnvgKyjbhv1Y+xZRJ1/pPL
	Hz3XfoT9bcq+lg9lzqcTsusKQrWghrikB1DGLUbWoktfDl+i43UL+trwjf+I44izj/3eU2GBpX4
	zUJco7JdH2PR9Xd5yLgX/WKIrsPsCgc/3ADyc2oc80mG/G9vyblbINM74T38e37jYhaKI
X-Google-Smtp-Source: AGHT+IHgokj+1DLIRRT5f41nJ6r1E0Go/K7YSYrys1I9AtjEk7wX5wSAvv1S4isYPAgdLHvOV/iVBg==
X-Received: by 2002:a05:690c:5:b0:786:45ce:9bd3 with SMTP id 00721157ae682-790b57942f1mr140423197b3.34.1768162278890;
        Sun, 11 Jan 2026 12:11:18 -0800 (PST)
Received: from toolbx ([2600:1700:220:59e0::914])
        by smtp.googlemail.com with ESMTPSA id 00721157ae682-790aa5762f6sm62175717b3.15.2026.01.11.12.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 12:11:18 -0800 (PST)
From: Anirudh Srinivasan <anirudhsriniv@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: anirudhsriniv@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: aspeed: Add Asus IPMI card
Date: Sun, 11 Jan 2026 14:10:32 -0600
Message-ID: <20260111201040.162880-3-anirudhsriniv@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260111201040.162880-1-anirudhsriniv@gmail.com>
References: <20260111201040.162880-1-anirudhsriniv@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree for Asus IPMI card, an AST2600 BMC PCIe card

Signed-off-by: Anirudh Srinivasan <anirudhsriniv@gmail.com>
---
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../dts/aspeed/aspeed-bmc-asus-ipmi-card.dts  | 136 ++++++++++++++++++
 2 files changed, 137 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asus-ipmi-card.dts

diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspeed/Makefile
index 9adf9278dc94..ff40d9ab88b7 100644
--- a/arch/arm/boot/dts/aspeed/Makefile
+++ b/arch/arm/boot/dts/aspeed/Makefile
@@ -15,6 +15,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-bmc-asrock-spc621d8hm3.dtb \
 	aspeed-bmc-asrock-x570d4u.dtb \
 	aspeed-bmc-asus-x4tf.dtb \
+	aspeed-bmc-asus-ipmi-card.dtb \
 	aspeed-bmc-bytedance-g220a.dtb \
 	aspeed-bmc-delta-ahe50dc.dtb \
 	aspeed-bmc-facebook-bletchley.dtb \
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-asus-ipmi-card.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-asus-ipmi-card.dts
new file mode 100644
index 000000000000..fea94360245c
--- /dev/null
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-asus-ipmi-card.dts
@@ -0,0 +1,136 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright 2025 Anirudh Srinivasan
+
+/dts-v1/;
+
+#include "aspeed-g6.dtsi"
+#include "aspeed-g6-pinctrl.dtsi"
+#include <dt-bindings/i2c/i2c.h>
+#include <dt-bindings/gpio/aspeed-gpio.h>
+
+/ {
+	model = "ASUS IPMI Card BMC";
+	compatible = "asus,ipmi-card-bmc", "aspeed,ast2600";
+
+	aliases {
+		serial4 = &uart5;
+	};
+
+	chosen {
+		stdout-path = "serial4:115200n8";
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x40000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		video_engine_memory: video {
+			size = <0x04000000>;
+			alignment = <0x01000000>;
+			compatible = "shared-dma-pool";
+			reusable;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-fault {
+			gpios = <&gpio1 ASPEED_GPIO(C, 5) GPIO_ACTIVE_HIGH>;
+			panic-indicator;
+			default-state = "off";
+		};
+
+		led-heartbeat {
+			gpios = <&gpio0 ASPEED_GPIO(A, 7) GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "timer";
+		};
+
+	};
+};
+
+&mdio2 {
+	status = "okay";
+
+	ethphy2: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+	};
+};
+
+&mac2 {
+	status = "okay";
+
+	/* Bootloader sets up the MAC to insert delay */
+	phy-mode = "rgmii";
+	phy-handle = <&ethphy2>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_rgmii3_default>;
+};
+
+
+&fmc {
+	status = "okay";
+
+	flash@0 {
+		status = "okay";
+		m25p,fast-read;
+		label = "bmc";
+		spi-max-frequency = <50000000>;
+#include "openbmc-flash-layout-64.dtsi"
+	};
+};
+
+&video {
+	status = "okay";
+	memory-region = <&video_engine_memory>;
+};
+
+&vhub {
+	status = "okay";
+};
+
+&gpio0 {
+	gpio-line-names =
+	/*A0 0*/	"", "", "", "", "", "", "", "BMC_HBLED",
+	/*B0 8*/	"", "", "", "", "", "", "", "",
+	/*C0 16*/	"", "", "", "", "", "", "", "",
+	/*D0 24*/	"", "", "", "", "", "", "", "",
+	/*E0 32*/	"", "", "", "", "", "", "", "",
+	/*F0 40*/	"", "", "", "", "", "", "", "",
+	/*G0 48*/	"", "", "", "", "", "", "", "",
+	/*H0 56*/	"", "", "", "", "", "", "", "",
+	/*I0 64*/	"", "", "", "BMC_RSTBTN", "", "", "", "",
+	/*J0 72*/	"", "", "", "", "", "", "", "",
+	/*K0 80*/	"", "", "", "", "", "", "", "",
+	/*L0 88*/	"", "", "", "", "", "", "", "",
+	/*M0 96*/	"", "", "", "", "", "", "", "",
+	/*N0 104*/	"", "", "", "", "", "", "", "",
+	/*O0 112*/	"", "", "", "", "", "", "", "",
+	/*P0 120*/	"", "", "", "", "", "", "", "",
+	/*Q0 128*/	"", "", "", "", "", "", "", "",
+	/*R0 136*/	"", "", "", "", "", "", "", "",
+	/*S0 144*/	"", "", "", "", "", "", "", "",
+	/*T0 152*/	"", "", "", "", "", "", "", "",
+	/*U0 160*/	"", "", "", "", "", "", "", "",
+	/*V0 168*/	"", "", "", "", "BMC_PWRBTN", "", "MB_S0_DETECT", "",
+	/*W0 176*/	"", "", "", "", "", "", "", "",
+	/*X0 184*/	"", "", "", "", "", "", "", "",
+	/*Y0 192*/	"", "", "", "", "", "", "", "",
+	/*Z0 200*/	"", "", "", "", "", "", "", "";
+};
+
+&gpio1 {
+	gpio-line-names =
+	/*18A0 0*/  "","","","","","","","",
+	/*18B0 8*/  "","","","","","","","",
+	/*18C0 16*/ "","","","","","BMC_MLED","","",
+	/*18D0 24*/ "","","","","","","","",
+	/*18E0 32*/ "","","","","","","","";
+};
-- 
2.52.0


