Return-Path: <devicetree+bounces-264452-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLMcIZdFi2mfRwAAu9opvQ
	(envelope-from <devicetree+bounces-264452-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:49:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B048F11C12B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:49:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5B2D73012970
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27C3D3803FE;
	Tue, 10 Feb 2026 14:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bEB0WHHp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CDC32A3D7
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 14:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770734967; cv=none; b=ctLOkwirYTuOjeUF+U2tncYiT/h5DlB5Y/jCXJbc+8G5ZFYP+bwxeLBMFQFS392so4pkZjn5HYMhGBfxYcrtVPSpSI1vSW1FvFBrvSOMNEiUnuwFx6L8Q/I7wNHzbiDac42mln9rxV07iemYR/A9xnL4QdVdmHOoFAXlx1Ns+54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770734967; c=relaxed/simple;
	bh=s+u+pQE5MF5R0f6DpnVBXrF/ZbfBtQgck00DGIPuy2I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fjIV9D9Rk+lFsl7MHNR4zHTLRPBMd4cBvDdK48g608uqfQZF2z0fLaxxaoWtqE8xKuJZQ1gr8xDLyLlpd0bdwMXsVLUQiro/fUcen8khuu6VjdQBhw/z28XJRDapxudKlSlU79jmGf8rQWs6ghNy2I9lE8MRQutbvokWTc10D2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bEB0WHHp; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-79627af6349so10486267b3.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 06:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770734965; x=1771339765; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6r7XJGPI4Eu2nijObW0lD2FssoR7X5MTuREbg2w6rVY=;
        b=bEB0WHHpJacezMHfOgqR96w8pGYNRC63OzATsVqimBWBwwlGYZRxuG5QLxTg9JUSoU
         oZUD++GYp8v4gUJLZV/vgNuyy9B46yhTISWCaZH4S/kAbH1ziEpVo8LQcrAp1OuUrfk0
         BYagpKrsLAI1evm13ds5gkzYCknMyoAsfC5zMDmQKb4NZ7gEZaB/vHFwutXMjxYGV5nS
         RlX7ukKwKpPcothFB/bjyWXZ06wvY4ofG3uvfQWripz/PfLPseho5+uFvxIcXjO6U11d
         Ei0bXBu8Ibrs+eMeJcdwKvglsZP8ER/KpeIJ7Z4EN3M9970b+wL+RYSw9YJRTAi6qfSD
         LLoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770734965; x=1771339765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6r7XJGPI4Eu2nijObW0lD2FssoR7X5MTuREbg2w6rVY=;
        b=ky3GXgjCA46zs4nqTvbr1yYsFS5DPqBln+PxKG/LnKRfNAtGwu57VhPmF6otPgCh34
         mcpJhFUkdvINPKvB8s5vsoM6xgNJtp9VsaYvabHlQrXgzSgjnoIt9MeVRENGQJSs/b9F
         ObVw8oF24VBte7EsyZg8URmh8+r8kv5EoGtemvM1gN6rXhCebNm9X3X+sxqsjl+0Ou7V
         E1hs/rDME4vX5eKPtp7ndwecVayjq0e78ik5lEUp03AyMMAz91BpSd8bX6iicHpRUAeF
         j7AXS/ZnGjnvBESBiUhn4Z11HPoytQ+hw/j1O7y89a5ifI4tIF8ne4LZdzB8pGcFS1p5
         cjHw==
X-Forwarded-Encrypted: i=1; AJvYcCXVdGEbfUAu0KZdp0LL8u3rqnnVUylgeQmgoFWHxxleTGmDfMbbl8ERjbLZmySRtlcEyFcehV6BqyOj@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0w26FQsav2qs+yna7b1mcxoH4N/Pmob3EWT6SuYYmvoJU+dSK
	OeNX88hHldlZq3kyCwS4Prc8V3N04pJiDKxw98nN2IUWYxLf9vTzCHE30IksJA==
X-Gm-Gg: AZuq6aI7aXdJNBT3MWnHefuuZQsMVQMh+EHCgIVLB/vRhSGYFJODpVtJro1jAMaNm79
	T1c85dgVSRLqZKSfltHuU00DkkdgnsFlnVnnt1BjolREkfI5wzmls2Fw4DeibUEGu02U2jHqCxy
	iU2z3K8FLAiJgUyNBk/18xTb6HPS0hn4g3P/MKVlIIjfBO3yCXQVKKNhRpn1GJpM7D+YdUZc9Wn
	GpwzN2WHLZVqloqQRIwseDaf9aofv5DsNdrx3h7TzH5qq5TtflaLPliAiC5u8smSHmCBh0AQzXu
	OfX7dVOOu4rzGIQlknggOdX+cw91Vy3p4Y/Ru0EMYSMKozNELEj0ZG4BaAxrFSYTDWVagw3w+e8
	dCx82SnIcDFFijc5KEeWxAADY6Qn96XGGJhY9nH8bmCxJBwDd8ynIalKy05Kbb/3dnquftZ2Akk
	fa+onCudgqQWO9euVnZGMXs2oIQT1LqWxULxZD
X-Received: by 2002:a05:690c:60c6:b0:794:d4c3:3152 with SMTP id 00721157ae682-7952aaa7866mr287712077b3.31.1770734964654;
        Tue, 10 Feb 2026 06:49:24 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:7e95:428c:8802:872e])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64acd247ee5sm12086263d50.6.2026.02.10.06.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 06:49:23 -0800 (PST)
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
Subject: [PATCH v3 4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation Board
Date: Tue, 10 Feb 2026 11:48:45 -0300
Message-Id: <20260210144845.317048-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260210144845.317048-1-festevam@gmail.com>
References: <20260210144845.317048-1-festevam@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264452-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.3.169.128:email,nabladev.com:email,0.0.0.0:email,plan44.ch:url,0.2.34.224:email]
X-Rspamd-Queue-Id: B048F11C12B
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
Changes since v3:
- Split it in the EVB and SoM dtsi.

 arch/arm/boot/dts/rockchip/Makefile           |  1 +
 .../boot/dts/rockchip/rv1103b-omega4-evb.dts  | 94 +++++++++++++++++++
 .../arm/boot/dts/rockchip/rv1103b-omega4.dtsi | 21 +++++
 3 files changed, 116 insertions(+)
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
index 000000000000..686f2dd28eab
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts
@@ -0,0 +1,94 @@
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
+
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
+&pinctrl {
+	leds {
+		led: led {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi
new file mode 100644
index 000000000000..bf245b547ea2
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi
@@ -0,0 +1,21 @@
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
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0m0_xfer>;
+	bootph-all;
+	status = "okay";
+};
+
+&wdt {
+	status = "okay";
+};
-- 
2.34.1


