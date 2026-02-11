Return-Path: <devicetree+bounces-264750-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGUkEbxijGkFmgAAu9opvQ
	(envelope-from <devicetree+bounces-264750-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:06:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7042B123BDD
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:06:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A9690301E992
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:06:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BB4924E4A1;
	Wed, 11 Feb 2026 11:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G7OfZjSu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEEB32A3FF
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770807983; cv=none; b=WnWm3yNyZAsy/u0y0Twxco/JFGN+1GzcPXlUCtIDPJpfdlVBSDAoo2sKIlrSBhzaYwQoYscVqFCkqnDoGtaDWCZW8rfscMUL8MaAdKPFWuBny1JmGRTtrZqNhEfehdQDsefOrvB1nmlcszH6qZ0FIGlKvlmHx9PX6PNx+wklRxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770807983; c=relaxed/simple;
	bh=VlJwSB7EtclSOVAMp+Wp3H9wTWdoL8YSRoZnZRKo4u0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AIKLvetfG1fcj7L+aQDsyXUMA6sGCMLTQdV1Xwkq+OH4tVp6LwgOXZZlNZHghcGj50yrXCa5IMdghyvNoIJBSckT+1hAPrGGtjtGVd0N9NbcEvsEQe+ew9//sZIqFETw+LpwjQkw8m7E5Lcijl7Xv5APpyEJ2bca7iap8H9rwCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G7OfZjSu; arc=none smtp.client-ip=74.125.224.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-64ad8435f46so4506431d50.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 03:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770807981; x=1771412781; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d9tdadWMEAjs2MsQfFbeN/61LVoitAwCN0EJqEzhips=;
        b=G7OfZjSuRFfHFOf6oLUptn0ZuPQWiz9ccCurrKgFSJ813ObWWMQbYlzLu/Lf/qnAhe
         R8YxVQM8MVjPhyl0Euc/0iP4MvZSbTN1kg+k3xRWY0eG3Ot8atyLyHtR0ZNmNrYqDkkT
         A7b8hBX06YafZv6RwxMyxaCoCqb/hTEtRgWSHlNaOzEc6tQG0hzJd9RZs6+4wRXUdh/1
         I2aJWsjy1kkHa6iY7f+j4Ci4FGJtaiqv1TLRTAZgGNnAOlLlJgURPasnVbs5kBHNiFV6
         SMgJPNWtZZz3pLIFN7eMElZaYFyZZ6T5SF7kTWjKoJ9JOsNDV57RWYcTj7qS10/zHJQS
         uX/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770807981; x=1771412781;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d9tdadWMEAjs2MsQfFbeN/61LVoitAwCN0EJqEzhips=;
        b=UIWzdrsfJpdZma4Xv3w6nrj+FWPkYtF0mZ8UNuXb9R0FlQKly2o1Gi1IHTq0UJ6/iJ
         pkaxlJ8PW7O0xAvqvf6y/K7iAh4Kne3jb8yltQqGtsukfg7zxt0JIFX5DP9aXbsoa7iB
         sRHqqYh14n57X3eWCGHqzo1RYh1b09n2H4ihIXLvd0wG2T0J6IqrHhAnRjxRGjhiHyAm
         HedIlMLtad+jNIE0mZ57glBudKv0tIwcivItUyk2u3tuSvIQGi8O74NbKVGGwfQutvxi
         +OC9kBpHJuvG8g65bEJZs4TfcxxjJkGHoKhWUuCXihpbbkE1QSMsZTlqgUbksdMBAz+R
         C3aw==
X-Forwarded-Encrypted: i=1; AJvYcCXvNspZAL7hK4csQvfKuWXAEUCKIeuouM1jW2/UuTGavdUTv6wF8bnbaux1N9axwXrgHO7EicLjiIkO@vger.kernel.org
X-Gm-Message-State: AOJu0YwKqAja8LQHHPB6hLSRHPjGTYHeJRabRinlUUVU9dshpzeXFozE
	ObMwmVgomgBsonbn6ZPNDHVFqawLzKVcet3wLUa7w2Wf8cblkwOJbD9+
X-Gm-Gg: AZuq6aLnki7sts8PrlYPQ2xIOe2hi4wCs8S9VSHTqkghrII5+WLiRvjm5Vc/CO9fdYi
	32mHjkHKZtZH8eUkKMh2S+7Mt+MaKhpQIrfjh79yMg7YLx8IoAB+KTHyswFY2JYnskYJd8yG2Cq
	nzuPMCx91PdEJX1F/IXmV6uNArZZihguMDHf4/Op+H1qVWiNewM5x1ME2mH+3LGqX+eTOl3rfj6
	tvxx6IziOy4nP8dywYCBMi06jPsqFuevLzT2wxVLZZx8KQG56gi1OomcySy7JEarPS5g8gxI7I+
	PH9/yyhty3GKmEpDWrzKRdgQuD9V28E3aYnJSzJP9qIoUxNqMNdG+xSDMxrTQAgb/K4FDB+PKbU
	P9uBc7SkBTFt4HRBiYbFXPW/jia195Z5s9Y+xyYiB6iFIg+5uy98WjXresJ8aNILyQMVB5MWZX4
	KhJ4x7bJJnbVwttZ/Zph0+dbigCfRftYhZCB4=
X-Received: by 2002:a05:690e:2502:10b0:649:b2cd:eb7d with SMTP id 956f58d0204a3-64afba1b9b1mr1234054d50.68.1770807980742;
        Wed, 11 Feb 2026 03:06:20 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4ffb:e36d:8763:a188:5dcb])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64afc87ff20sm1533719d50.10.2026.02.11.03.06.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 03:06:20 -0800 (PST)
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
Subject: [PATCH v4 4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation Board
Date: Wed, 11 Feb 2026 08:05:50 -0300
Message-Id: <20260211110550.580474-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260211110550.580474-1-festevam@gmail.com>
References: <20260211110550.580474-1-festevam@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-264750-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_PROHIBIT(0.00)[0.0.156.64:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email,nabladev.com:email,onioniot.com:url,a40000:email,0.2.34.224:email,0.3.169.128:email,plan44.ch:url]
X-Rspamd-Queue-Id: 7042B123BDD
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

The Onion Omega4 Evaluation Board is based on the Omega4 SoM and has:

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
Changes since v3:
- Split into SoM and base board.

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
index 000000000000..c42e99841be4
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
+	compatible = "onion,rv1103b-omega4-evb", "onion,rv1103b-omega4", "rockchip,rv1103b";
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


