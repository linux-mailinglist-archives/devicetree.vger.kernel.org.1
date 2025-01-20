Return-Path: <devicetree+bounces-139769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DA7A16D00
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 14:10:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8947A160922
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 13:10:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44A281E2610;
	Mon, 20 Jan 2025 13:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Pz41wpbO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379DC1E22FB
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 13:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737378590; cv=none; b=GclH8O07Nou5GK7vWs3SG8/n4sTnpWYrA63xEMKRha/BeosXluLd2uKKWEwHsFkVnbKNuJ0Q7+DXDDk6crGHo/LH+DhSq7pb9q4i6PBxpsUa9IYVyDY2H//u5aoara3WWqkGJY6mKC7tU5n7xRuWDjfqq6/xwHYp+pRdf12bWGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737378590; c=relaxed/simple;
	bh=qzL/yPlM4qaEVTfC35APhrTxhShJXYpDIh1eAz4tDV0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vi2kXbC1SNlf4aWSutDiqT4/YSA/UHYFf8EYeLpIBAWQ4PhOrJgci2KpeuyyOAaCLmLY8uzappqZzsW7kFFgVd+/FTjo95Dc0CLOBX/DuLtN3DgGeT5g/jr6KjGcY1e3rdPVFfzFFgoM3Sq6CRo9ZYi++5zo1iOhAELKU5B6w1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Pz41wpbO; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4361dc6322fso30508775e9.3
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 05:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1737378586; x=1737983386; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fpM+C9xuZuqoM99Roe4nwWX6mJzuLBPzipIWISPswDw=;
        b=Pz41wpbOssOIrZlDsobIGZA/PdWeEkBCnpsAjyYNXUEKu1x9AHCSsTqIpGftIeEvkT
         E4NHa/UdWf39GqAf4dGWezacaxt5smU8pAQ2O7h+wNl9Y4i/OYpcl8IrFq9dpXy7EFr+
         sap69N3Z3+lSbdW6t2lBRBp2cLvlyj48Tum/4xDpnnmVqsa+ybndkShFU+PElsHctHa5
         HQksG+fKk9XuMpAZzap37srupQjoPdFTeIdzNEl5g8o8f/DA1//QRB+CCnGtTGE77Jvn
         LmUOTXv2gDusxWNEwyY9RtRtBZxjuOCfKdc4eafbeqjGPvD4x/hM/JsCMkC8j0LpGBx7
         afWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737378586; x=1737983386;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fpM+C9xuZuqoM99Roe4nwWX6mJzuLBPzipIWISPswDw=;
        b=QRC9fZsd2DC30EylbOblcwmwieEvDx6ADLy3paupYrSx7BPft/CdyUNTDWMrHLkBqb
         EvFUXTY3wZXAETLp0ojJU3Wz9ZIMIAQOd3PrKsGygfIVDyTuv5uRlWtjhHI4ZWfSK/HB
         /FicvO1FYJtkDx3aGNMcblLTafTHom2NBE5698X9cQlcWs+xPnOmetTRzv99Mita43pd
         AmZmbtjZtUEn5olUTuKd152C2AYLbxp4TX1z24qPV9xp6lAmTmeNlJhDTK39WdL6/918
         6tYD/ZteWcs0SRzsHw+zl9/Wl8uIFXxq5u8mt7RvffpzwCLf7cyg7zOOmFqdKy7j7I5v
         wIwg==
X-Forwarded-Encrypted: i=1; AJvYcCWVNhfe7zXbdfTVEPJ3pzcSO9QWdoHJSynkwPuZzCnIwhfnCFra5a2+a528sFr63cNzslKtsPsMy354@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ7BI8SGpZEdobldicCXoMytcB+CS275vs7a6iKv9h7l3Hm8Eh
	UbOQEjRkj3mxu6g/LmDWFWvRJKM2hgkBIAo6/ncQb8/rS4+jfZm2Ie5XJACdJKc=
X-Gm-Gg: ASbGncsXL49Kmw7lYALg8+tTtL80g/uCtoIVaPUueyZ7B3NCzuw+QfvZXZepCEdtAEO
	Nv0ODH8ncDan0yDmXkjUf4zM8zrqMRdUUZGRjntnn7yfUodZUPMAYZpZuQABV3a8QArwhb/pJYP
	idRFxGx1zGykTCZlmEmOuvJGFNaqDTqdd7NJh87nA2ZYLeMYAAMLMWIBZYqKzY+vktS66HX3c1A
	yT/uqEF3mmtT30POa4VvsO4Th69M3Z5jBMffEH6xery4GrMsNBiKEA1aCIAhAvrSk+dxcv6Y5C0
	+SBkvD4h1I6SFrOY2bWNqVlUGUwlB9788Q==
X-Google-Smtp-Source: AGHT+IFZ/Y3vJcfkQ+QI4bPVUXbmxlLYggt+xsKAqK2r7ijvSF53ZjfGaghnmp+AoXwnifqlzL2bgw==
X-Received: by 2002:a05:600c:3149:b0:434:f270:a513 with SMTP id 5b1f17b1804b1-4389144e70fmr125594245e9.29.1737378586472;
        Mon, 20 Jan 2025 05:09:46 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.35])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4389041f61bsm138001955e9.17.2025.01.20.05.09.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 05:09:46 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	p.zabel@pengutronix.de,
	claudiu.beznea.uj@bp.renesas.com,
	wsa+renesas@sang-engineering.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: [PATCH v4 4/4] arm64: dts: renesas: r9a08g045s33-smarc-pmod: Add overlay for SCIF1
Date: Mon, 20 Jan 2025 15:09:36 +0200
Message-ID: <20250120130936.1080069-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250120130936.1080069-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250120130936.1080069-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add DT overlay for SCIF1 (of the Renesas RZ/G3S SoC) routed through the
PMOD1_3A interface available on the Renesas RZ SMARC Carrier II board.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- rename overlay name to r9a08g045s33-smarc-pmod1-type-3a
- add note about the needed switches for SCIF1
- guard the scif1 node with #if SW_CONFIG3 == SW_ON && SW_OPT_MUX4 == SW_ON
- dropped the alias section from the overlay file and move it
  the board file
- document SW_OPT_MUX4 switch

Changes in v3:
- none

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/Makefile          |  3 ++
 .../r9a08g045s33-smarc-pmod1-type-3a.dtso     | 48 +++++++++++++++++++
 .../boot/dts/renesas/rzg3s-smarc-switches.h   |  8 ++++
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  |  1 +
 4 files changed, 60 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a08g045s33-smarc-pmod1-type-3a.dtso

diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
index 928635f2e76b..ef7f7b55145d 100644
--- a/arch/arm64/boot/dts/renesas/Makefile
+++ b/arch/arm64/boot/dts/renesas/Makefile
@@ -143,6 +143,9 @@ r9a07g054l2-smarc-cru-csi-ov5645-dtbs := r9a07g054l2-smarc.dtb r9a07g054l2-smarc
 dtb-$(CONFIG_ARCH_R9A07G054) += r9a07g054l2-smarc-cru-csi-ov5645.dtb
 
 dtb-$(CONFIG_ARCH_R9A08G045) += r9a08g045s33-smarc.dtb
+dtb-$(CONFIG_ARCH_R9A07G043) += r9a08g045s33-smarc-pmod1-type-3a.dtbo
+r9a08g045s33-smarc-pmod1-type-3a-dtbs := r9a08g045s33-smarc.dtb r9a08g045s33-smarc-pmod1-type-3a.dtbo
+dtb-$(CONFIG_ARCH_R9A07G043) += r9a08g045s33-smarc-pmod1-type-3a.dtb
 
 dtb-$(CONFIG_ARCH_R9A09G011) += r9a09g011-v2mevk2.dtb
 
diff --git a/arch/arm64/boot/dts/renesas/r9a08g045s33-smarc-pmod1-type-3a.dtso b/arch/arm64/boot/dts/renesas/r9a08g045s33-smarc-pmod1-type-3a.dtso
new file mode 100644
index 000000000000..e4cb4449f190
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r9a08g045s33-smarc-pmod1-type-3a.dtso
@@ -0,0 +1,48 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree Source for the RZ/G3S SMARC Carrier II EVK PMOD parts
+ *
+ * Copyright (C) 2024 Renesas Electronics Corp.
+ *
+ *
+ * [Connection]
+ *
+ * SMARC Carrier II EVK
+ * +--------------------------------------------+
+ * |PMOD1_3A (PMOD1 PIN HEADER)			|
+ * |	SCIF1_CTS# (pin1)  (pin7)  PMOD1_GPIO10	|
+ * |	SCIF1_TXD  (pin2)  (pin8)  PMOD1_GPIO11	|
+ * |	SCIF1_RXD  (pin3)  (pin9)  PMOD1_GPIO12	|
+ * |	SCIF1_RTS# (pin4)  (pin10) PMOD1_GPIO13	|
+ * |	GND	   (pin5)  (pin11) GND		|
+ * |	PWR_PMOD1  (pin6)  (pin12) GND		|
+ * +--------------------------------------------+
+ *
+ * The following switches should be set as follows for SCIF1:
+ * - SW_CONFIG2:  ON
+ * - SW_OPT_MUX4: ON
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/pinctrl/rzg2l-pinctrl.h>
+#include "rzg3s-smarc-switches.h"
+
+&pinctrl {
+	scif1_pins: scif1-pins {
+		pinmux = <RZG2L_PORT_PINMUX(14, 0, 1)>, /* TXD */
+			 <RZG2L_PORT_PINMUX(14, 1, 1)>, /* RXD */
+			 <RZG2L_PORT_PINMUX(16, 0, 1)>, /* CTS */
+			 <RZG2L_PORT_PINMUX(16, 1, 1)>; /* RTS */
+	};
+};
+
+#if SW_CONFIG3 == SW_ON && SW_OPT_MUX4 == SW_ON
+&scif1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&scif1_pins>;
+	uart-has-rtscts;
+	status = "okay";
+};
+#endif
diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-switches.h b/arch/arm64/boot/dts/renesas/rzg3s-smarc-switches.h
index 514a8a6dc013..9766cea55dc6 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-switches.h
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-switches.h
@@ -29,4 +29,12 @@
 #define SW_CONFIG2	SW_OFF
 #define SW_CONFIG3	SW_ON
 
+/*
+ * SW_OPT_MUX[x] switches' states:
+ * @SW_OPT_MUX4:
+ *	SW_OFF - The SMARC SER0 signals are routed to M.2 Key E UART
+ *	SW_ON  - The SMARC SER0 signals are routed to PMOD1
+ */
+#define SW_OPT_MUX4	SW_ON
+
 #endif /* __RZG3S_SMARC_SWITCHES__ */
diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 0851e0b7ed40..5e044a4d0234 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -12,6 +12,7 @@
 / {
 	aliases {
 		i2c0 = &i2c0;
+		serial0 = &scif1;
 		serial1 = &scif3;
 		serial3 = &scif0;
 		mmc1 = &sdhi1;
-- 
2.43.0


