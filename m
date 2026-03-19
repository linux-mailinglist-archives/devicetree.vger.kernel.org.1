Return-Path: <devicetree+bounces-277988-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJyBIKlEvGkJwQIAu9opvQ
	(envelope-from <devicetree+bounces-277988-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:47:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E20872D1445
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:47:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 110B73264DF5
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:42:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF44F3F7AB7;
	Thu, 19 Mar 2026 18:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="StMokU0Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2643F54CC
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:41:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945720; cv=none; b=E8g6RnLw/uI/XA3jqm9rr1k3OTyjR+SDPNvELGyLzODtLiI5I1tu9ySEaB38kuDyerLe/z6UftcuDzxGYYF7XE4qoPCpqByevKdrFM9qnj1gM5eR0jYNVYCRbW5xS+Vp65+7bM0tuVycNGtmEpHs1d36378/blAvsJvOjQukVXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945720; c=relaxed/simple;
	bh=j3OTduS6qdtjozm1GQe+8s0DcoESfABCWaPJ2XsNvtY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CIUThhG1M/QuCPh24P7E/J1uYRgLeNgrUqewqAFjJ5z2kyk6kR6/ULUUMmsJfIU2GaUcwnxPrQQZWobtOJXGVemw1cCdMiVurt9r73G5xE9i/PjUD1qgEzn+158j/0HIImkP80GSbPKb4t82Y3xNHl+S2fJ5mDQ7lVzgowirv9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=StMokU0Q; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4852a9c6309so13042085e9.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945716; x=1774550516; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OUP3CmmT0cKyjmjrALm9nCkOSIQbk/SYoJc7MZ/IyOw=;
        b=StMokU0QvND6rX6WAh4zcC3/2IOJ4vSrS84p2j3nYm2enxG7/j8xPme1yxXOiliZ2W
         28vIYJn45KiVKpyP5ku8R5X7G1diljMnHfBVFAwEhxJM3LHWOhDIYQ61mx4r2KErlXRy
         /fzRz5ZA3b17GdruY9zJJY8b2Y/HDify+Lbi/Ezdj8TkquoeI7V1rbQR5LZDNw3K8Rwz
         TqrX0BFN4zzDey0bjB+c4Sctnj3J4wTOqWXO0UqfsUVLKhETenEiphGhAr/5zpV1y5NI
         jiW/5A4ER32whRWeASH8MHkc2BXveUdTWF2gBOlsIRXLOafOH0NAyzVTZRfxva3RRa3+
         LGPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945716; x=1774550516;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OUP3CmmT0cKyjmjrALm9nCkOSIQbk/SYoJc7MZ/IyOw=;
        b=axPpUP7N0PV+KvTxiH0VAlL+Hk1MM1LfkQrf/riQAXFaMwD+2mXHJFIdIXNeS5rRWO
         dIRBBAEu1JiMZzR9n8zsGNSDFxrbF9GS3Mm0FPpfF5hSuan9dgMo8g7wyr+Fp08bp45b
         oiXtEfNg2QAa6r3aH0u6/su5jd0vdv+p6Z3j8wOeHgXIBrddG8yiziz6WmHdBF42TYRy
         azYsrYjpLyIGfalWn76eSrdXK35KrpPjXaW6v0exkD76t5w2A1iCbgZmSTX3N2zIO09E
         IyrJpnr9eBgK5Nf7vwuRXVTSjXrBzirI82cIcJUFcDp+65ZyDouR6ZgszL2y0uhagpfu
         PEUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAOdhkjuU3bFut1cOTevjcm/WKijanb2E+SBz8QSKa0C2PwHQdFcbCt3ouN5UgUzwD3TgPRsgFy6Pw@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/vO4rxtTSIzxAaN2p9GiveSx4eWiBBiR2YgQO8secZGVPnogk
	Y2sPDN3+ZerHeZVj61uLzN1bjTnhUOD5jIl3QwPQGd0dHDOsg2YNWwLNoM5WRQ==
X-Gm-Gg: ATEYQzy0d1lmtrToL5osHVQgIkZRAJ2xPc7mqmtn9Sp/7EXpTlwGaHKAW3UGTpV82ub
	0wYXc+ucartvE/VroBzsjb/7z57tmAi/fTtEOubSuiFNxZEKcbP1Vma+Ukr7667YZJLq9J3Vlle
	XCGe2TtObsQVghZZ0HRu4mSaqijjmZpy59Ar5/TM8XgUrVYsqUHYxhEPEIrp9guGykYHvt6ymXg
	JiPpZs4+YKWNR83gBYs3pUSisNy8voSf0W6XzQ2bCf/iEkSPT1/IUnDxx657iZZs/un8NgGcZrp
	JDFM+QEinpQDqE67ajtl5WWKRV0dAGj9F4D4u2/hfUCAEQd/F4A4hTFUFP4yoAY/oXnozp855vJ
	SSw0ukw87IDY2fTkuYTk9pRF1xePCxOUBC24MptOpgiyPzuuPzcwCQLyXkhMtrwz6VRMyX0qBc7
	zoNTqTszi60wxac4zst25KrB4w9XMYN6VB2d2kdFlqewwX+zpZGMd6uFIbzyalyGWKPzICRuYRG
	+TocDXzTn5Z1XTTQ7hPFcPW3h2s1wE8VdbIEY8=
X-Received: by 2002:a05:600c:8b0a:b0:485:4136:99a8 with SMTP id 5b1f17b1804b1-486fee0fb9emr2226175e9.22.1773945716215;
        Thu, 19 Mar 2026 11:41:56 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8b1fe65sm77289195e9.5.2026.03.19.11.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:41:55 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v4 06/11] arm64: dts: freescale: imx8mm-var-som: Rework WiFi/BT and add legacy dts
Date: Thu, 19 Mar 2026 19:40:26 +0100
Message-ID: <9dfc7925f0acf5a655793eada5b1302b99d1407b.1773944896.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773944896.git.stefano.r@variscite.com>
References: <cover.1773944896.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	TAGGED_FROM(0.00)[bounces-277988-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,nxp.com,pengutronix.de,gmail.com,kernel.org];
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
	NEURAL_HAM(-0.00)[-0.808];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.1:email,variscite.com:email,variscite.com:mid]
X-Rspamd-Queue-Id: E20872D1445
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

To preserve compatibility with older SOM revisions, add a separate
imx8mm-var-som-symphony-legacy.dtb, which disables the IW61x setup and
applies the Broadcom-specific configuration.

The Broadcom-based SOM revision is no longer in production, but support
is kept for existing users.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v3->v4:
 - Add symphony legacy dtb to use old brcm wifi module

v2->v3:
 - 

v1->v2:
 - Added Wifi/BT dtsi variants for both iw61x and brcm legacy modules

 arch/arm64/boot/dts/freescale/Makefile        |  1 +
 .../imx8mm-var-som-symphony-legacy.dts        | 19 ++++++++
 .../dts/freescale/imx8mm-var-som-symphony.dts |  1 +
 .../imx8mm-var-som-wifi-brcm-legacy.dtsi      | 12 +++++
 .../imx8mm-var-som-wifi-bt-iw61x.dtsi         | 45 +++++++++++++++++++
 .../boot/dts/freescale/imx8mm-var-som.dtsi    |  6 ---
 6 files changed, 78 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony-legacy.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-brcm-legacy.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-bt-iw61x.dtsi

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index bae24b53bce6..420b434bcd3a 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -161,6 +161,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-tqma8mqml-mba8mx.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-tx8m-1610-moduline-iv-306-d.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-tx8m-1610-moduline-mini-111.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-var-som-symphony.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-var-som-symphony-legacy.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw71xx-0x.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw72xx-0x.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony-legacy.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony-legacy.dts
new file mode 100644
index 000000000000..faa707402de9
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony-legacy.dts
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2026 Variscite Ltd.
+ */
+
+#include "imx8mm-var-som-symphony.dts"
+#include "imx8mm-var-som-wifi-brcm-legacy.dtsi"
+
+&bluetooth_iw61x {
+	status = "disabled";
+};
+
+&iw61x_pwrseq {
+	status = "disabled";
+};
+
+&usdhc1 {
+	/delete-property/ mmc-pwrseq;
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 9f4e004f0a37..2b608470da8e 100644
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


