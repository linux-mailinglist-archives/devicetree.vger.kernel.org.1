Return-Path: <devicetree+bounces-263508-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CtHLRtMhmndLgQAu9opvQ
	(envelope-from <devicetree+bounces-263508-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:16:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F11521030E8
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:16:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E27F830045BE
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 20:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D622F28D8DB;
	Fri,  6 Feb 2026 20:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V5CDufmK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A01BD42A82
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 20:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770408983; cv=none; b=hoe0FC+tT6O0AoZoHpizxcl0k/YTeCHekgLX2s5fWHg0/r2PrZIvhKwlMMlcRLBohdfaDhNurCrzoJOroEyyQJOGfNKnAYjAyz/TO+thvFHQPLbReucvxCV04QBvRsoa6I3oR/250HcConny7BaWIwJQwIFTk+gypcZsV15+Jeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770408983; c=relaxed/simple;
	bh=/LxQB1aJLGqOQI+0beAjl5qoGFou0xW/natOhwzjEh8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aylndcSmmXMnfg+fYuJ/MpDmPZ8BBqZsYe6MKDPmOwMKgp6qLlSydY5TbnUpgDnfdMgv7FBfuzZpUGV6l7ehRLki/bYjuB1TTbLKIMCA+Zy79UA9tOGR79Cgp20pPtgEwvF3wY7i+4DCOOx7JdYhAPZrPzJeQyYWFljrehZa5wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V5CDufmK; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b4755f37c3eso692675a12.3
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 12:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770408983; x=1771013783; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lOn3TJ8VDiSndOjVHpbjRor/zx6dF6y8oFuDewRL8ck=;
        b=V5CDufmKn8XWLCMePDV9SymR4JYUpwiJX/Y380qOOYQWXSyhjxARFS3u/M+d723HkJ
         6g/L8kuDUnQ4yMHXS21XciBuryhElQuwXAGXadYlcn7OqmSwcNrFkLOSjDXxXUFLQBKo
         S1ptTV8JN2CPSSPt1mI5mo3zs8cMnQ2bOKmmuuO5JmiEk6oT6YRMaWAfloqW27BLB+FO
         uV2sgmD8wH8gw054qJ+4UdU84CO8gY2Gt2D96Mv252SXQyNBEfNBmFC8xsWEQ2XJY3Sq
         xMGSbfbdXeYnP9y6ARPJEZybE116rkPbeKADtrql2+vHitvMWMWTh0fUFiXUadPRFV9R
         01Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770408983; x=1771013783;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lOn3TJ8VDiSndOjVHpbjRor/zx6dF6y8oFuDewRL8ck=;
        b=urMQ3TowyRjx7Z6p0mNFVf2D1ENg4og3Ty5cMq5Lcb8qib8Jno9vbd8CrDCgyqmuTg
         9St1XkTYdkUXqtvZXQb+WfPOt+l02uPZhYznPN4rGMaFEhPjXRl/vmTLLvxZUSWW8fDP
         2/SLmBVgQbnEcLE9zx+ZSRuNuxALu8BvI3b5i4liyr4f4gxYXnHslFO7lwyI4UGdipC5
         FjZYsNAUP4E38s6VWYY3pRxd6tC5RlDR4uvQNga41awtxQcplv2PZAvd0hOeIG0ZChO8
         5sWfMIgyxVzpir1KYRoFEoBAeAIJG6Qwk/RacAGKj9nsLUfq0HnOkaaGvWUTuHrp+R4r
         GTLQ==
X-Forwarded-Encrypted: i=1; AJvYcCULK6EREL779Yr6e5B5YwOYTq+iRcTkijXO/6BQESLEyjRtG/pu5VkCQQWLWiuyUMhIKCUUq1QkY/rI@vger.kernel.org
X-Gm-Message-State: AOJu0YwERBpnIJDuaIbWKcuuV8JR8dBnra1zU7CnYOIGVwJpt3UKMFCX
	tlUmbTqS9aoMZd9ufI+XnylWBGzETo5x849Ind30L+SeU1S/yl9Bg7HhH2mBmQ==
X-Gm-Gg: AZuq6aLKyOwNku9M0gmQytSUkiod+7o09S4OzCm+TYo8874R2pg6KgmvjDop6yr7IWz
	vH+QF9DgK3n5k+H2LTZ6jfB/vj6qjLvebw3dtjaIqfYimITIl9pZezJ2uYSINx8DTyls2Eo+4Ay
	xD3Mx2AuX32TPO70D2PJYJLK2+4hYt/E3RwiFv50iEVkM1b+ngS/oKrQhtnybFG6O0ap5psnfcn
	60KAEO5qmi6TpHsUq1Gs8A3UZ7QlsVgpeCvgdBNdDTap2InmZMaUfH9985xMeh0hqnXzmZKzfwf
	1UJomJiJX9a/taetSnAaLNT947qMgs9GABbWvTuFK/Uh8N+UY+ZNcKPkCFdnzGHl3PFLttQAGjg
	VIqsmTQNNccL8aoN15MEqnz5g9tJLK1POXf44fKJupP0JZW0M9rQYBXNb5KlDad1jnrUyQ9Jg0F
	kp44greQeGfFpIrjrPVlpc/scQ
X-Received: by 2002:a05:7301:129a:b0:2b7:1243:7790 with SMTP id 5a478bee46e88-2b856a531admr1468477eec.40.1770401633925;
        Fri, 06 Feb 2026 10:13:53 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433ab31sm2782500c88.11.2026.02.06.10.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:13:53 -0800 (PST)
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
Date: Fri,  6 Feb 2026 15:13:09 -0300
Message-Id: <20260206181309.2696095-12-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206181309.2696095-1-festevam@gmail.com>
References: <20260206181309.2696095-1-festevam@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263508-lists,devicetree=lfdr.de];
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
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.3.169.128:email,0.2.34.224:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[plan44.ch:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nabladev.com:email,0.0.156.64:email]
X-Rspamd-Queue-Id: F11521030E8
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


