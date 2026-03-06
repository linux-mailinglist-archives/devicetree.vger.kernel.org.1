Return-Path: <devicetree+bounces-272340-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAOxBqYyq2n2agEAu9opvQ
	(envelope-from <devicetree+bounces-272340-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 21:01:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C3A22758D
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 21:01:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B0D123142A02
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 19:58:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1615547AF65;
	Fri,  6 Mar 2026 19:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J5Ez/uRR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98FD644BCBB
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 19:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772827134; cv=none; b=up02PAuMoELBctbesK4gwBnA+0Z2aA+TBehQQt++R6oqBywsxcVxe727j+VBwH80xbzSFB+uhQj9/5tR4Xzc9BQUQ0zqMRMPvN4psnbUwwr6Bpy5lf/mklxRFrHOeJdyCi/6kIyj/1QiEdevjRdQO13DfEBQmBQgqr1LDD1P26U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772827134; c=relaxed/simple;
	bh=FywE9I2jgu/E9dUJjkL1LNg3FZZX/2ACIJR6RrAbSZw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DtI/cNFX7M2SJpzXDPXFYR/w1Js1HTOOCiIcGgfx8rXOf8G637MhfLh0GFzog5FJqIPnNOc90Zxe5vJ/8mmucz3JVGoFfSgn6IV0mXJ85HiQtsTmR7XiFyIZKK2i1NXdjmgSL8FxpA6xElbMW3v9i768ioHy0R0GcSocMWAa+yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J5Ez/uRR; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-439c4bde55cso2642431f8f.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 11:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772827126; x=1773431926; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q40sieppdqWC0Pb0LgkBOiCq1+WdogMkkdM87+FLk/0=;
        b=J5Ez/uRR3KLQe9t6IpeA+nOL0v5MIdDRsHABFPtUiklZlpdxFFGhK/86bVP2zMdTcg
         HseqrxSMR/3OHoIV9c3/sHlhicQEQaIft8WPqj/HM3OO6wrSXaK8q66qkTNIYxnBD6S7
         bAVC+Qy+BsDkVjpuokmkEZFt+w6MY8iYPzI3/OmgJrWqpqtjxWT83gQ0A4qJrxKsO0DM
         1VbpwSNvykvhUl42RSIFFgwUQlUal4XhinIsKMq4z0zEtkyQVkRFnmH8qNDwN/BVn/MD
         mwAY8MyHsD3qboysiaK0dgP1UYd/tnoHU0ipzzslMpPvPm6ktWkeCtgPTFscgZymhZTb
         IEjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772827126; x=1773431926;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q40sieppdqWC0Pb0LgkBOiCq1+WdogMkkdM87+FLk/0=;
        b=FXjR7Y5Zs6pYx6aW25oKaPrKUDdTstRQblu2cNVvaO8rZvFo2iussCpS4dpfkYtEry
         l3m43CxdvqwUwrRV3zbxJwIQskHmRG0Dd61gLkQDIu/rBiQCDxQWwEq58J2J2XUMFaA5
         CO0hf5bFNlFstF3KcbhTXuqpn/6pihr3C+IjR8QRG/hYfRN0OnDrKpVl0XW7X/WIwl8L
         oOdolZ33Gbqk4RFEaiW4zQk0YAvd3t6of7YQhxH62U24crWucQLVHCmSNO1omHVWEENK
         /DnUmRgUWnx+ZLyqMbGrbhZFGBGGkxFkRirHslS2YdEczqmw1mUNaHXE/9CTPQvtFtyU
         /h+w==
X-Forwarded-Encrypted: i=1; AJvYcCW811wsCmwvC75jRdRh2gfYHpXD17AfHVBVolsnpXQKtwGIDRYu/EM0QjMuwZeUd7Pjf5Qupe1467Vc@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzngksvee7b6U9Ppz6e1Fo+VaczBu2cTeRaMi3N1+f+wFz4C9Q
	5NqV0RIvEWE/utKf1DriHnV/9a1r5Mv6yFYnYLbukNp5Df+9/GsZyIwL
X-Gm-Gg: ATEYQzx1BPq1jxGJQ9Q6CV5UndqfJuuoFD4pSgusg9fKmOaPSQt6kNTHPMn9ObIZFNV
	J4myBzYQCI+fhuys3EkTxC+qsIepdXKJ9EIkYCeg9gYHU3oEAc6srF15GpZTx+QehaC+pEwGnYd
	5yAJeX85Rl0kZBE5NB0nALL3I53HQ+tdq4bJ0BI8UqG+EszEWX9NZVTq4lFlXGq+XOZB0lcPDMc
	NGXM72oqOLRG4EEWbMNLFecesdx5709HGhgT4kyvprYOQ/oJ1nlCtaTMXfDTZGprOuz/la2yZvp
	wzr5Ry0A7izmmwtU+25CcOU15cBAIMN7CjOTHjddncKYNmRKEsxPAb2drRezV1a0uVatd3um8fI
	O4afWUSI3xoOoMORakXvE4au3X/U3j2MrR7Y0FN0GZR6WmKu51LzKdU16y8LklgvA/7Hrj/XthG
	p+z3m4Lxt2PgBL7DI46jvbEyl6IxbhcvgJyKmmrrciRCK2gtCaGRRk1w6d8zEB4e3UNlHROwETo
	0RQOrTmLe3CLO7SMuj1o0bwUMvFSfUcfDsyVnw=
X-Received: by 2002:a05:600c:8b0d:b0:483:c490:8ed with SMTP id 5b1f17b1804b1-48526982c54mr51288945e9.32.1772827126037;
        Fri, 06 Mar 2026 11:58:46 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48523803b5fsm25167265e9.7.2026.03.06.11.58.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 11:58:45 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 06/11] arm64: dts: freescale: imx8mm-var-som: Update WiFi/BT with variants
Date: Fri,  6 Mar 2026 20:58:25 +0100
Message-ID: <7c84625f82c562bb9cd2b455465d63a1a25bf19e.1772826534.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772826534.git.stefano.r@variscite.com>
References: <cover.1772826534.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 78C3A22758D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-272340-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.992];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,variscite.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.1:email]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

The VAR-SOM-MX8MM currently integrates the NXP IW61x wireless module,
providing WiFi over SDIO and Bluetooth over UART.

Move the wireless module configuration out of the base
imx8mm-var-som.dtsi and provide dedicated variant includes.
The IW61x configuration is moved to imx8mm-var-som-wifi-bt-iw61x.dtsi
and used by the Symphony evaluation board device tree.

A separate imx8mm-var-som-wifi-brcm-legacy.dtsi include is added to keep
the configuration for the legacy Broadcom SDIO WiFi module used on
earlier SOM revisions.
The Broadcom-based SOM revision is no longer in production, but the
configuration is kept separately to preserve compatibility with existing
boards.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v1->v2:
 - Added Wifi/BT dtsi variants for both iw61x and brcm legacy modules

 .../dts/freescale/imx8mm-var-som-symphony.dts |  1 +
 .../imx8mm-var-som-wifi-brcm-legacy.dtsi      | 12 +++++
 .../imx8mm-var-som-wifi-bt-iw61x.dtsi         | 45 +++++++++++++++++++
 .../boot/dts/freescale/imx8mm-var-som.dtsi    |  6 ---
 4 files changed, 58 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-brcm-legacy.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-bt-iw61x.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 712892edba8f..51ac8ee34c3b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/leds/common.h>
 #include "imx8mm-var-som.dtsi"
+#include "imx8mm-var-som-wifi-bt-iw61x.dtsi"
 
 / {
 	model = "Variscite VAR-SOM-MX8MM Symphony evaluation board";
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-brcm-legacy.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-brcm-legacy.dtsi
new file mode 100644
index 000000000000..f44a846ea6f9
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-brcm-legacy.dtsi
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2026 Variscite Ltd.
+ */
+
+/* WIFI */
+&usdhc1 {
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-bt-iw61x.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-bt-iw61x.dtsi
new file mode 100644
index 000000000000..15990d141d2a
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-bt-iw61x.dtsi
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2026 Variscite Ltd.
+ */
+
+/ {
+	iw61x_pwrseq: wifi-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		post-power-on-delay-ms = <100>;
+		power-off-delay-us = <10000>;
+		reset-gpios = <&gpio2 10 GPIO_ACTIVE_LOW>, /* WIFI_RESET */
+			      <&gpio2 20 GPIO_ACTIVE_LOW>; /* WIFI_PWR_EN */
+	};
+};
+
+&uart2 {
+	pinctrl-0 = <&pinctrl_uart2>, <&pinctrl_bt>;
+
+	bluetooth_iw61x: bluetooth {
+		compatible = "nxp,88w8987-bt";
+	};
+};
+
+/* WIFI */
+&usdhc1 {
+	pinctrl-0 = <&pinctrl_usdhc1>, <&pinctrl_wifi>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>, <&pinctrl_wifi>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>, <&pinctrl_wifi>;
+	mmc-pwrseq = <&iw61x_pwrseq>;
+};
+
+&iomuxc {
+	pinctrl_bt: bluetoothgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD1_DATA4_GPIO2_IO6	0xc1
+		>;
+	};
+
+	pinctrl_wifi: wifigrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_WP_GPIO2_IO20		0x140
+			MX8MM_IOMUXC_SD1_RESET_B_GPIO2_IO10	0xc1
+		>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
index 21a4d87c0e26..c37badc4cf27 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
@@ -390,7 +390,6 @@ &usbotg2 {
 	status = "okay";
 };
 
-/* WIFI */
 &usdhc1 {
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -402,11 +401,6 @@ &usdhc1 {
 	non-removable;
 	keep-power-in-suspend;
 	status = "okay";
-
-	brcmf: wifi@1 {
-		reg = <1>;
-		compatible = "brcm,bcm4329-fmac";
-	};
 };
 
 /* SD */
-- 
2.47.3


