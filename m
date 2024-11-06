Return-Path: <devicetree+bounces-119486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 023459BE6B5
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 13:04:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 85E011F26FA0
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 12:04:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD7621DF240;
	Wed,  6 Nov 2024 12:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="p7eZhhzi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82791E7677
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 12:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730894513; cv=none; b=qqn3XNPJbsYlnDLpwvCIurun4HPXYXgPqnMh16qqlv8n28yhfbNoGqyNUy2Ql4xpqtdl3FjypCX2eUYzV1G806/CsLYCUlX9x+/dDoU2pzgWdJusNvjjpXVM3eEZ05wetE+15OrqAjS2Pv0LfvIs73g33QtoCePIaVpVkiIzxPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730894513; c=relaxed/simple;
	bh=l2nLfEhXQdqdldj7HMRPD/BKF+Yo/cZTkzGKteJPuqI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EA9LjH26n8S2w4SmlUjEpsAbWb/1I3vDstBKQxobnYVJaWmlLnytOEuj6e5w1k7xzT1lRq1WqAu7YXs39sYHtt3yQtrcfX8cCk8pJW1juuN+ynQLotr8MU6wYLfSCvXNAGjSTq2s3hMFH+N9c5VJ6ECnEOzL6yI67jXX6W6bfks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=p7eZhhzi; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fb443746b8so58412441fa.0
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 04:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730894510; x=1731499310; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2JwPCGHe69m/pJb0qH1LaF4qTTUiifIIPi692eTZlzU=;
        b=p7eZhhzip/ycZoC9bUx4Xj/Raxbv8DKTYi0hclsnVElxx1IDTDWMDv5/zujT7ImHPF
         wl+QzTqzCAUbSiT83jzRNj1QjmEajok6udXAvz1YjO+CBItLEtdzfvJVcrlMrR2me5nQ
         Oy+mcAQGzcu9mGqqUC3jChXcooSuEafTKKTviT0GUVpUbcY/SvG4A5ttcARCb1+DsVdL
         VFoxJYqMPk4TSKdw3W+21R+zUCWcRP6NVyA4w+RTQ5258ECYkB76+xabnDgfJV1B7ydE
         G4gQEvlHSKhjCT3FpxG+0MrY6BcJvtSqOR3FLmyez6BYFyTTcw2HHg4+kHBSSzURMwun
         wbXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730894510; x=1731499310;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2JwPCGHe69m/pJb0qH1LaF4qTTUiifIIPi692eTZlzU=;
        b=UB7dG/sodJNP+pm9T+bAh2/chc9tMNDx2GwSEYvww72cx/fzNZ39i9Mvk/IMbxeeks
         pFSBvNaxTdw+SAEGqKRJ85hEeaSYgdxB6adty+uLzvVTCEgm05f3rUE4ibAVYOlr45XX
         WyqOP+gv4cSJX7eDQCt69QBfU4Gvq9dBUqDR2WPbRCRgHu4OyJkmKuWIxvOW7iNdX7Nx
         5U88xrBngIK5dmhPZ9kpJdVRu+SleIRZh5vclGb3IzvTb8aCQjP5zklwSIyjDLMEVxck
         HR8n9mpdzX1MzsvWXQYRIVi3OHmoKlRA0araRYI84msTk1hei9hsOOls4z3rAQrZdwmS
         JzOA==
X-Forwarded-Encrypted: i=1; AJvYcCWiEZu8SgCyhlOELXZk3bEKfwRb1gZ7nP/uLi/RC2BDYcInAkfUOdFuZi4eiSfmOVFwxkgZWQWH9Zly@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg4o884U/g6blnEgE03sO9lXWlRLl/Wsl3RJyZBe38QXjLDMOE
	XxH4aVSfFwPac7Vp7qjtWVE2aEofKbrlq4504NuJtotAWxCOVeDikB58p2uBvs8=
X-Google-Smtp-Source: AGHT+IGmZAnyNN2H3HVq8mWB2A4J8BfLSHy4gBsMu6TgAseykCSA2VwSabOZhkZzxv828ZqhYx8Qgw==
X-Received: by 2002:a2e:b8c8:0:b0:2fb:4b0d:9092 with SMTP id 38308e7fff4ca-2fcbdf69fbemr189607851fa.1.1730894509534;
        Wed, 06 Nov 2024 04:01:49 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cee6afe528sm2697984a12.55.2024.11.06.04.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 04:01:49 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	p.zabel@pengutronix.de,
	lethal@linux-sh.org,
	g.liakhovetski@gmx.de,
	ysato@users.sourceforge.jp,
	ulrich.hecht+renesas@gmail.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-serial@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 9/9] arm64: dts: renesas: r9a08g045s33-smarc-pmod: Add overlay for SCIF1
Date: Wed,  6 Nov 2024 14:01:18 +0200
Message-Id: <20241106120118.1719888-10-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241106120118.1719888-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241106120118.1719888-1-claudiu.beznea.uj@bp.renesas.com>
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
 arch/arm64/boot/dts/renesas/Makefile          |  3 ++
 .../dts/renesas/r9a08g045s33-smarc-pmod.dtso  | 48 +++++++++++++++++++
 2 files changed, 51 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a08g045s33-smarc-pmod.dtso

diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
index 97228a3cb99c..7ad52630d350 100644
--- a/arch/arm64/boot/dts/renesas/Makefile
+++ b/arch/arm64/boot/dts/renesas/Makefile
@@ -137,6 +137,9 @@ r9a07g054l2-smarc-cru-csi-ov5645-dtbs := r9a07g054l2-smarc.dtb r9a07g054l2-smarc
 dtb-$(CONFIG_ARCH_R9A07G054) += r9a07g054l2-smarc-cru-csi-ov5645.dtb
 
 dtb-$(CONFIG_ARCH_R9A08G045) += r9a08g045s33-smarc.dtb
+dtb-$(CONFIG_ARCH_R9A07G043) += r9a08g045s33-smarc-pmod.dtbo
+r9a08g045s33-smarc-pmod-dtbs := r9a08g045s33-smarc.dtb r9a08g045s33-smarc-pmod.dtbo
+dtb-$(CONFIG_ARCH_R9A07G043) += r9a08g045s33-smarc-pmod.dtb
 
 dtb-$(CONFIG_ARCH_R9A09G011) += r9a09g011-v2mevk2.dtb
 
diff --git a/arch/arm64/boot/dts/renesas/r9a08g045s33-smarc-pmod.dtso b/arch/arm64/boot/dts/renesas/r9a08g045s33-smarc-pmod.dtso
new file mode 100644
index 000000000000..7d637ab110e1
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r9a08g045s33-smarc-pmod.dtso
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
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/pinctrl/rzg2l-pinctrl.h>
+
+&{/} {
+	aliases {
+		serial0 = "/soc/serial@1004bc00";
+	};
+};
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
+&scif1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&scif1_pins>;
+	uart-has-rtscts;
+	status = "okay";
+};
-- 
2.39.2


