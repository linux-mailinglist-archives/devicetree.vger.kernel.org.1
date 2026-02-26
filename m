Return-Path: <devicetree+bounces-268893-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAaoOcdjoGnajAQAu9opvQ
	(envelope-from <devicetree+bounces-268893-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:16:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F07941A8672
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:16:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C8DDF3081246
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A3AF2F260E;
	Thu, 26 Feb 2026 14:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wx5ANqdP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C72836CDE7
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772117320; cv=none; b=HYK+utV+NSCOHIkY3e+axg8E2+RASUgGI8SqfgH3Xv7BlqrVJsOPymB8fQH93OuH7hG5G6ru2SYMPvGTYFNi3LxMDaXkh4LKD/sksjspiIoslAeUWF/5EqLutrYef6o9A82akh0LutqfJ3gQCzIz+JE2qWeRZqkZIKKKyiho/CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772117320; c=relaxed/simple;
	bh=7zTQA8lPctzwCwCjXrHIP1VZj+HCyeAawrW7SHbynq8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XW1ojd/8vRpgWIInAn2dj9Qx4HQSGVl1virqKy0piP5juN0dv0C3IQOAmRYpJ5Wy8Z6++FERFla9FE74cW8NaBDRNKj5EALPM/z3YNOksvZnLLcs8Ep7Jzai5/s73xZhiWiG7IJ3dS0llVmYwk5/4f4Xb8vRVBketl4/diDGRWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wx5ANqdP; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2aae146b604so6948215ad.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772117319; x=1772722119; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r/bj7g2xVbgir6ea9eN+82z6ip7UdFAQ5IC4Yz8wr/Y=;
        b=Wx5ANqdP1iQ5hpoFo69UzBDMd1AKLbL648+Na/MiDUNI18yj1hBcjfsoXXTdxIFku4
         ooTTrJeWfoNNUP7R4gl7Z9Q4kN4mn38H8qke0uUad0QFMPWlfCoy+Ap79oROhsqAfXz6
         28JSVOLkmbHB/M9i1nqG/iCsPKINwtGVg2esC5eObxk8CGa6NeWRrP/rcHKA1WoaiL5k
         E1TrUweuRkwEDhB+oCRpnZXmK+dLSmJ1mGkCHVR3Z0uaLYc1n+wytWV7VzPsd7cxnIlZ
         DEjhTVwiOP13IWs0VyFvp2wlv77BBLH+piIei920K7tTIelj/DLsth7sMEsbzDPZ0Tj0
         Okhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772117319; x=1772722119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=r/bj7g2xVbgir6ea9eN+82z6ip7UdFAQ5IC4Yz8wr/Y=;
        b=iapsivkXsLHrqZUOlr/eCjM9yr9DjTw5Vs0X+BGhDoa4jwlQBgQwgg2qcrKSDgC0QY
         u4GQiJres3At/X3giX+YuX/ERFWyk5P+CeMouzDuZDBp0GC8rdLGgpB56no6fIE99RED
         56/BC7wCIWM/0vxfg9mXmL++Xx7YI6ok7QuCAP8ejOEdX8lxIaeLHnFqAhdDjtd8F4yB
         1huc5AbuWPGjj/jVYHAOy3OR465zGhnLzc7fAmLHmLULEs064xdSpnINsrE6NPjkNS3v
         bCoXnpSlxSa1tRtOxn1u9HZ3Bour6rnyDjQp0XPzI2YMuoj4x2sb33oOoNlNYiD/1TX/
         +lrA==
X-Forwarded-Encrypted: i=1; AJvYcCWHTgZX+aD3oOBxtgMfnhjcWnH1nVqWs7daD5EgKF867QGUOInK9E+oucHzLqY0e7P72O97tmva7ERA@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ9RE5dXBU+dlFmi4Y2RPkKoPRmPEv+NU8H9RW3m32NlytxbCh
	HdUnd75aOgIC5eWSjGsCcEtihcC/MTUarLrZ4JUCrkFSgDDJ6+vyGBO7
X-Gm-Gg: ATEYQzyoe5TNtH6y9rCHGii5NyqT60DMb2B76bN21U9bQ6ype1MWHCynkD4dbJp7smv
	h6bGb072Ueq5z9LUmdKo+IwUH2ObEjtlJMYYNbo96YkQIaET77TCyZC2slTk7XurghQn9vGqPXe
	46OkFtoiaPYqHsNEaFBBlKdadLxIHaSIYGi0WLrsHJdqvVgAsWLD1XAajBOE8h75yf9y5qsZgBO
	e+leBpGOR0xMxHo3hSXDMh7xeC/wXBbW4nFf2wsPDzF9XdmqMFaL/bbrYVf+0faW2GcaNwTHsZR
	DMKG5lEzpyVgzb61WMQEpfh9ZqfzkAwd3ZebKCd+Dx9LYie4ho+0lzmWC07DiWkcXoT+CrOZUoa
	X75iG2CJEAQ6OxGAxHCoOJa/eEWs45P2f7nt0D+w4L+rYKSeXRGaaZOzpG8bhRVROeFmHXvl81W
	5kdBAj/t+y/b9QFSUIbHxuY2kJaNZalTGeA0vHAnOBog1tY8T0x2C9bh7q8GR5BvGt7r0=
X-Received: by 2002:a17:902:e785:b0:2ad:c1e1:c286 with SMTP id d9443c01a7336-2adc1e1c458mr70241875ad.24.1772117318539;
        Thu, 26 Feb 2026 06:48:38 -0800 (PST)
Received: from wig-Precision-3660.. (125-227-154-99.hinet-ip.hinet.net. [125.227.154.99])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69fa65sm27871825ad.58.2026.02.26.06.48.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:48:38 -0800 (PST)
From: Wig Cheng <onlywig@gmail.com>
To: shawnguo@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	zaq14760@gmail.com,
	Wig Cheng <onlywig@gmail.com>
Subject: [PATCH v5 1/1] arm64: dts: freescale: add pixpaper display overlay for i.MX93 FRDM
Date: Thu, 26 Feb 2026 22:48:19 +0800
Message-ID: <20260226144819.3428730-2-onlywig@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260226144819.3428730-1-onlywig@gmail.com>
References: <20260226144819.3428730-1-onlywig@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-268893-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[onlywig@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,i.mx:url]
X-Rspamd-Queue-Id: F07941A8672
X-Rspamd-Action: no action

Add device tree overlay to support the MayQueen PixPaper e-paper display
on the NXP i.MX93 FRDM board. The display is connected via LPSPI3
interface and uses GPIO pins for reset, busy and DC control.

The overlay configures:
    - LPSPI3 pinmux for SPI communication (MOSI, MISO, CLK, CE0)
    - PixPaper display device with proper GPIO assignments
    - SPI frequency set to 1MHz for stable operation

Enable Open-EP Community pixpaper-213-c support on NXP i.MX93.

Signed-off-by: Wig Cheng <onlywig@gmail.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |  4 ++
 .../freescale/imx93-11x11-frdm-pixpaper.dtso  | 50 +++++++++++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 700bab4d3e60..aa5eb1626c10 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -417,6 +417,10 @@ dtb-$(CONFIG_ARCH_MXC) += imx93-9x9-qsb-i3c.dtb
 
 dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-frdm.dtb
+
+imx93-11x11-frdm-pixpaper-dtbs += imx93-11x11-frdm.dtb imx93-11x11-frdm-pixpaper.dtbo
+dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-frdm-pixpaper.dtb
+
 dtb-$(CONFIG_ARCH_MXC) += imx93-14x14-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-kontron-bl-osm-s.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-nash.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso b/arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso
new file mode 100644
index 000000000000..28aeff9520e2
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree Overlay for Mayqueen (Open-EP Community) pixpaper display
+ * support on NXP FRDM i.MX 93 Development Board
+ *
+ * Copyright (C) 2026 Wig Cheng <onlywig@gmail.com>
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include "imx93-pinfunc.h"
+
+/dts-v1/;
+/plugin/;
+
+&iomuxc {
+	pinctrl_lpspi3: lpspi3grp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO08__GPIO2_IO08		0x3fe /* SPI3 CE0 */
+			MX93_PAD_GPIO_IO09__LPSPI3_SIN		0x3fe /* SPI3 MISO */
+			MX93_PAD_GPIO_IO10__LPSPI3_SOUT		0x3fe /* SPI3 MOSI */
+			MX93_PAD_GPIO_IO11__LPSPI3_SCK		0x3fe /* SPI3 CLK */
+		>;
+	};
+
+	pinctrl_epd_ctrl: epdctrlgrp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO05__GPIO2_IO05		0x31e /* DC pin */
+			MX93_PAD_GPIO_IO06__GPIO2_IO06		0x31e /* RESET pin */
+			MX93_PAD_GPIO_IO26__GPIO2_IO26		0x31e /* BUSY pin */
+		>;
+	};
+};
+
+&lpspi3 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpspi3>, <&pinctrl_epd_ctrl>;
+	cs-gpios = <&gpio2 8 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	display@0 {
+		compatible = "mayqueen,pixpaper";
+		reg = <0>;
+		spi-max-frequency = <1000000>;
+		reset-gpios = <&gpio2 6 GPIO_ACTIVE_HIGH>;
+		dc-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
+		busy-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>;
+	};
+};
-- 
2.43.0


