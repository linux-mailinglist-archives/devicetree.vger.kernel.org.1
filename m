Return-Path: <devicetree+bounces-272481-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJvGKvJKrGn+oQEAu9opvQ
	(envelope-from <devicetree+bounces-272481-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:57:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E23922C96C
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:57:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2B9E9302F27A
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 15:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A750A3A2554;
	Sat,  7 Mar 2026 15:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NmKF9+FM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67E63A5E92
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 15:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772898925; cv=none; b=pTuBrE4o/5DRrZXQQfxVx91dFIcnJGbOF+po9fuIZaWqSq/gSUAtgfOwfE8wO6w8h8Nnn7y6qo7YiwjjhhnozYOwTVpH79hHD5cbKbAZigOsT1GOsrK9blCQ5i6DfCRP6fh6yRTjFKSDwmCs8kE7QQTV5XwkmBm/LPCZCZrKGZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772898925; c=relaxed/simple;
	bh=ES/dDbdOUY4TThZS59n5O4LrRIDlPipGzElDy90ZzxY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WkGPiz9VX9iGPVVDJDnr54+6NpIS9OrMMCLTOWoTpWYrTESb8vbjFd+FCrqtyC+e+7KKOCIwwoBmkdICbOJhm306vCxvR7dVo8LhTHyMBH3Xp91TeDkLT1fBIR7LMgXGNU2IlnoL86NXvyUo57PhDpWGiP18c4je066zhpiHXcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NmKF9+FM; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4852fdb36a8so5653435e9.2
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 07:55:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772898918; x=1773503718; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kqERNMY4MAVo+Bai5DjLuN+rk8zi9rJwE/isIysK0Iw=;
        b=NmKF9+FM1SEXAsR3p71imggmZA5tcB296B7s5fy9IcQGQZXWiqciwBmI8psZCRalro
         jHAwAnWlpSOBpfxDejjFJwskM8wgdQ+4HIyyHU8P4P7dR6pLPflTgZUOtVF8OXVBVv0W
         tqdYxDP23BOPjgbSO9oKCdejXcM2VJhD6SRsHNL9RAlNePT/gvWlDlFPjJcpwkYDtUL+
         /meezr6sXQUBclEaDcAoYOoxcY0HApm8LWMBP3DXYwd38f/l9U4qqETCEJ/I1Dh+y7dc
         scIiBRvtn/uTpVmKtabnQdDTAdigPlIdWHTIqIKvwTvOBOl8P19s6YkyIW1ueygejCXo
         a8vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772898918; x=1773503718;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kqERNMY4MAVo+Bai5DjLuN+rk8zi9rJwE/isIysK0Iw=;
        b=Wgx6606EG+/g8skSIjz+663ZJye+dlwj80ccPb7t/xj29NRiJ+c+rzVHYSZQ6FcE1q
         9lYlfVfYoOLdgOw1s7SIumQRb+EQNpcpRII65o6BPk2lKqUxFCYR8QnjD8F/+zzRIT4S
         LqULl7sw1kw1TrMP8XTAjoqrRGi7zDOEqA8YxOR2rXKP6lptdd5O/TQCQTJVUNzCLpWz
         4Q6cuBxe6RVHiP6d2iVpCVLeWkKr79tgOb3ZmeP0FvSuYTYViUlnSeNCz044dbiBI3q/
         2007yKnFxqzzy5KKi18z92ac5WLkbrIz5mdbBfH3GC4+RrKeLbgamOa386Adel2lZq3a
         OUFg==
X-Gm-Message-State: AOJu0Yxuzi7cpklQq2at6BYcSYZblZfdCCgapNq3G+1I6taK4fgIzxC4
	0vBmMuLOx5jF3mWKelHDnfDnhblhUjTkZvO81GLLz/y0MxTUE+BRiUwVA2Bezg==
X-Gm-Gg: ATEYQzww5Dt95ZjZuwZjGg0O0glUpC8tx/ynfXEYN2DbFMiFhb6DaHahi6eu6nOCSgz
	d1HO5aOS4zIlKLMJTw4IaJEKD8f969P+3dF1wSTslN71G3aIi66KH4m7XuYZmLPtlnrS5YyIcKk
	r7NrFhONYGkXmloupElEnuDPobjVtN52nJnKPT/KPngZCN9Tx9d8jmE6vxRugOBvi8ISu+wFQdS
	l9d/vrphtNiiijqHoTo2XqPiXHIyuDanDnwpc+chkU5AcfazKCdDfsTVs8CiDUr/jjr/jDdWAs1
	VlCEN7CfCAlzBsjCs/qXR9fZU1kpXFKxN9p2km7lO0dCb4oJ5vDE2ljEfBu+if2GrXoSoXoYsxN
	OuvgYD4em/8B5496jeoPLUPNUtD039UgU5IKk020Ito/OdwCJLAVqA4Bl8+cSjKX8J0X/ugie4j
	c5ouMoGt3DkRyfMZaekI3e0Ck7p9XhYk67YvpsFiD0kFODrOiXNZxAImiK82pqf8/oiH39JiMv0
	9sgvEcbMdB1AClCxQSGO1Rd4Q==
X-Received: by 2002:a05:600c:5303:b0:477:c478:46d7 with SMTP id 5b1f17b1804b1-4852695aa55mr100781825e9.22.1772898917935;
        Sat, 07 Mar 2026 07:55:17 -0800 (PST)
Received: from GLaDOS.lan (93-35-179-236.ip56.fastwebnet.it. [93.35.179.236])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48527681a3esm261097785e9.4.2026.03.07.07.55.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 07:55:17 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
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
Subject: [PATCH v3 06/11] arm64: dts: freescale: imx8mm-var-som: Update WiFi/BT with variants
Date: Sat,  7 Mar 2026 16:54:42 +0100
Message-ID: <7c84625f82c562bb9cd2b455465d63a1a25bf19e.1772898346.git.stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772898346.git.stefano.radaelli21@gmail.com>
References: <cover.1772898346.git.stefano.radaelli21@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 0E23922C96C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272481-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.1:email]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

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
v2->v3:
 - 

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


