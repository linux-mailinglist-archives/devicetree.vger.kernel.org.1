Return-Path: <devicetree+bounces-320735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6XAaEDW5SmokGwEAu9opvQ
	(envelope-from <devicetree+bounces-320735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 22:06:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8553870B3FA
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 22:06:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=nabladev.com header.s=dkim header.b=Y812XtQt;
	dmarc=pass (policy=reject) header.from=nabladev.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320735-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320735-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED8C4300A609
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 20:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CDF93655F4;
	Sun,  5 Jul 2026 20:05:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726DA34750F;
	Sun,  5 Jul 2026 20:05:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783281958; cv=none; b=ZxixeqZuzwUwuR7cA8kN9PZPVygh2h5vlWgynIDksGoCoCja41BLSwwsPtfsZojyQuDsNdMyM3MS1RxrcdNntt4tBSzOzhOJbpw37LsimHY3viDCeDI1519ayp7Z97zC0JrwucAEoO+EqyKw2tdhnWedi7EJ2fPZl/KP02pOn34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783281958; c=relaxed/simple;
	bh=nn3Q7+sO9kjUcCAA7DhHo9BiqodBvFN1LUIcWa38/2M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Lh72jz4QwKTY+ullfzHFk+LgnvdR5W97Csl4YF8LoBPWmqUr9yrmBHjA3SeWyySfBLwhZQHZM6da32N9iI/2JwP4iw2gmSlZHV1pV/Ly5ersXsZHM1ybSizIhEUL42/nIYOgHJd5P1m2yyNFVl7+s+b3kUSs+4PsNhq4EUCjoLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=Y812XtQt; arc=none smtp.client-ip=178.251.229.89
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0165311736F;
	Sun,  5 Jul 2026 22:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1783281947; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=ewo+9Qtwy9TeNzRyRdldI1TnL3jJFJOCd2JEvR2lC5g=;
	b=Y812XtQtWZwQag3mv8kZ7GAIemhSy5nIlfvF0MnON0CyHrAe27fe4Vcbmq10e73Nzehgh7
	cAWNnfR/U/0cRQC6uFVKImM1PMRjBqZA5EA14FiyoNjd4nLqgxvIRWAqDyicvT7V3mxjfq
	bLDeXs6DcrXLyKdd5MlDANfWlOYWg0iOkxCERIhhElKMUisK7dMtlmgzrZoVu6MyoiF9u2
	XOvjTaibt3EssmRuBBgezbf0jLW5XIxjgHT9xE+u6mxW3REzl+79YcbeL3d57Z2AHCzKQR
	epE93pUE5GNIGWBbzbz7xBMtiOeyflpxmY6OEHscwu/ya0j/+3p8HF7bow6l1w==
From: Marek Vasut <marex@nabladev.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@nabladev.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Frank Li <Frank.Li@nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/6] arm64: dts: imx8mm: imx8mp: Add legacy board DTOs for Data Modul i.MX8M Mini and Plus eDM SBC
Date: Sun,  5 Jul 2026 22:05:07 +0200
Message-ID: <20260705200534.151803-2-marex@nabladev.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260705200534.151803-1-marex@nabladev.com>
References: <20260705200534.151803-1-marex@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320735-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-arm-kernel@lists.infradead.org,m:marex@nabladev.com,m:conor+dt@kernel.org,m:festevam@gmail.com,m:Frank.Li@nxp.com,m:krzk+dt@kernel.org,m:kernel@pengutronix.de,m:robh@kernel.org,m:s.hauer@pengutronix.de,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[nabladev.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[nabladev.com,kernel.org,gmail.com,nxp.com,pengutronix.de,vger.kernel.org,lists.linux.dev];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8553870B3FA

Add legacy board revision compatibility DT overlays for both i.MX8M Mini
and Plus eDM SBC boards. This adds adjustments to support legacy board
revisions.

Signed-off-by: Marek Vasut <marex@nabladev.com>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Frank Li <Frank.Li@nxp.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: devicetree@vger.kernel.org
Cc: imx@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
V2: Deduplicate the DTOs further
V3: New patch split from the original megapatch
V4: Rebase on next-20260703
---
 arch/arm64/boot/dts/freescale/Makefile        | 36 ++++++-
 ...edm-sbc-overlay-edm-sbc-imx8mm-rev900.dtso | 18 ++++
 ...bc-overlay-edm-sbc-imx8mp-lvds-rev900.dtso | 41 ++++++++
 ...bc-overlay-edm-sbc-imx8mp-lvds-rev902.dtso | 14 +++
 ...edm-sbc-overlay-edm-sbc-imx8mp-rev900.dtso | 97 +++++++++++++++++++
 ...edm-sbc-overlay-edm-sbc-imx8mp-rev902.dtso | 69 +++++++++++++
 6 files changed, 273 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc-overlay-edm-sbc-imx8mm-rev900.dtso
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev900.dtso
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev902.dtso
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev900.dtso
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev902.dtso

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 6f12460a9bdb0..b41eaba832f5c 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -148,6 +148,10 @@ imx8mm-data-modul-edm-sbc-overlay-edm-mod-imx8mm-lvds-mi1010z1t-1cp11-dtbs := \
 	imx8mm-data-modul-edm-sbc.dtb \
 	imx8mm-data-modul-edm-sbc-overlay-edm-mod-imx8mm-lvds-mi1010z1t-1cp11.dtbo
 
+imx8mm-data-modul-edm-sbc-overlay-edm-sbc-imx8mm-rev900-dtbs := \
+	imx8mm-data-modul-edm-sbc.dtb \
+	imx8mm-data-modul-edm-sbc-overlay-edm-sbc-imx8mm-rev900.dtbo
+
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-data-modul-edm-sbc.dtb \
 			  imx8mm-data-modul-edm-sbc-overlay-edm-mod-imx8mm-lvds-g070y2-l01.dtb \
 			  imx8mm-data-modul-edm-sbc-overlay-edm-mod-imx8mm-lvds-g070y2-l01.dtbo \
@@ -162,7 +166,9 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-data-modul-edm-sbc.dtb \
 			  imx8mm-data-modul-edm-sbc-overlay-edm-mod-imx8mm-lvds-mi0700a2t-30.dtb \
 			  imx8mm-data-modul-edm-sbc-overlay-edm-mod-imx8mm-lvds-mi0700a2t-30.dtbo \
 			  imx8mm-data-modul-edm-sbc-overlay-edm-mod-imx8mm-lvds-mi1010z1t-1cp11.dtb \
-			  imx8mm-data-modul-edm-sbc-overlay-edm-mod-imx8mm-lvds-mi1010z1t-1cp11.dtbo
+			  imx8mm-data-modul-edm-sbc-overlay-edm-mod-imx8mm-lvds-mi1010z1t-1cp11.dtbo \
+			  imx8mm-data-modul-edm-sbc-overlay-edm-sbc-imx8mm-rev900.dtb \
+			  imx8mm-data-modul-edm-sbc-overlay-edm-sbc-imx8mm-rev900.dtbo
 
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-emcon-avari.dtb
@@ -344,6 +350,24 @@ imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-mi1010z1t-1cp11-dtbs := \
 	imx8mp-data-modul-edm-sbc.dtb \
 	imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-mi1010z1t-1cp11.dtbo
 
+imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev900-dtbs := \
+	imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev900.dtb \
+	imx8mp-data-modul-edm-sbc-overlay-edm-mod-imx8mm-lvds-g070y2-l01.dtbo \
+	imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev900.dtbo
+
+imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev902-dtbs := \
+	imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev902.dtb \
+	imx8mp-data-modul-edm-sbc-overlay-edm-mod-imx8mm-lvds-g070y2-l01.dtbo \
+	imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev902.dtbo
+
+imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev900-dtbs := \
+	imx8mp-data-modul-edm-sbc.dtb \
+	imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev900.dtbo
+
+imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev902-dtbs := \
+	imx8mp-data-modul-edm-sbc.dtb \
+	imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev902.dtbo
+
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-data-modul-edm-sbc.dtb \
 			  imx8mp-data-modul-edm-sbc-overlay-edm-mod-imx8mm-lvds-g070y2-l01.dtb \
 			  imx8mp-data-modul-edm-sbc-overlay-edm-mod-imx8mm-lvds-g070y2-l01.dtbo \
@@ -372,7 +396,15 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mp-data-modul-edm-sbc.dtb \
 			  imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-mi0700a2t-30.dtb \
 			  imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-mi0700a2t-30.dtbo \
 			  imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-mi1010z1t-1cp11.dtb \
-			  imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-mi1010z1t-1cp11.dtbo
+			  imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-mi1010z1t-1cp11.dtbo \
+			  imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev900.dtb \
+			  imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev900.dtbo \
+			  imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev902.dtb \
+			  imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev902.dtbo \
+			  imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev900.dtb \
+			  imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev900.dtbo \
+			  imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev902.dtb \
+			  imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev902.dtbo
 
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-debix-model-a.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-debix-som-a-bmb-08.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc-overlay-edm-sbc-imx8mm-rev900.dtso b/arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc-overlay-edm-sbc-imx8mm-rev900.dtso
new file mode 100644
index 0000000000000..14038215f298c
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc-overlay-edm-sbc-imx8mm-rev900.dtso
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2023-2026 Marek Vasut
+ */
+/dts-v1/;
+/plugin/;
+
+&fec1 {
+	phy-handle = <&fec1_phy_ath>;
+};
+
+&fec1_phy_ath {
+	status = "okay";
+};
+
+&fec1_phy_bcm {
+	status = "disabled";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev900.dtso b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev900.dtso
new file mode 100644
index 0000000000000..427585b78e45d
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev900.dtso
@@ -0,0 +1,41 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2023-2026 Marek Vasut
+ */
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	reg_panel_vcc_raw: regulator-panel-vcc-raw {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_panel_vcc_reg>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "PANEL_VCC";
+	};
+};
+
+&panel {
+	power-supply = <&reg_panel_vcc_raw>;
+};
+
+&reg_backlight_en_level {
+	status = "disabled";
+};
+
+&reg_backlight_pwm_level {
+	status = "disabled";
+};
+
+&reg_panel_bl_supply {
+	status = "disabled";
+};
+
+&reg_panel_bl {
+	gpio = <&gpio3 0 0>;
+};
+
+&reg_panel_vcc {
+	status = "disabled";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev902.dtso b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev902.dtso
new file mode 100644
index 0000000000000..a21fea27e0b41
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-lvds-rev902.dtso
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2023-2026 Marek Vasut
+ */
+/dts-v1/;
+/plugin/;
+
+&reg_panel_bl {
+	gpio = <&gpio3 0 0>;
+};
+
+&reg_panel_vcc {
+	enable-gpios = <&gpio3 6 0>;
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev900.dtso b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev900.dtso
new file mode 100644
index 0000000000000..ec861aa64541e
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev900.dtso
@@ -0,0 +1,97 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2023-2026 Marek Vasut
+ */
+/dts-v1/;
+/plugin/;
+
+#include "imx8mp-pinfunc.h"
+
+&eeprom900 {
+	status = "okay";
+};
+
+&eeprom902 {
+	status = "disabled";
+};
+
+&eqos {	/* First ethernet */
+	phy-handle = <&phy_eqos_ath>;
+};
+
+&fec {	/* Second ethernet */
+	/* pinctrl_wifi is ENET2_INT# */
+	pinctrl-0 = <&pinctrl_fec &pinctrl_wifi>;
+	phy-handle = <&phy_fec_ath>;
+};
+
+&gpiolvds {
+	status = "disabled";
+};
+
+/*
+ * External pull ups on R242 and R243 on I2C2_SCL_3V3 and I2C2_SDA_3V3
+ * are not populated on this early board revision, activate in-SoC pull
+ * up resistors instead to work around the missing external pull ups.
+ */
+&pinctrl_i2c2 {
+	fsl,pins = <
+		MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL			0x400001c4
+		MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA			0x400001c4
+	>;
+};
+
+&pinctrl_i2c2_gpio {
+	fsl,pins = <
+		MX8MP_IOMUXC_I2C2_SCL__GPIO5_IO16		0x1c4
+		MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17		0x1c4
+	>;
+};
+
+&pcie_phy {
+	status = "disabled";
+};
+
+&pcie {
+	status = "disabled";
+};
+
+&phy_eqos_ath {
+	/*
+	 * The software support for combination of EEE capable PHY and EEE
+	 * capable MAC is so far missing from the Linux kernel. By default,
+	 * the AR8035 PHY does enable EEE functionality on the PHY side,
+	 * while the EQoS/DWMAC MAC expects to handle the EEE functionality
+	 * on the MAC side. Because the Linux kernel is currently unable to
+	 * align EEE configuration of the PHY and MAC, enabling EEE leads
+	 * to unreliable link. Disable EEE until the kernel support is in
+	 * place.
+	 */
+	eee-broken-100tx;
+	eee-broken-1000t;
+	status = "okay";
+};
+
+&phy_eqos_bcm {
+	status = "disabled";
+};
+
+&phy_fec_ath {
+	status = "okay";
+};
+
+&phy_fec_bcm {
+	status = "disabled";
+};
+
+&reg_pcie0 {
+	status = "disabled";
+};
+
+&tpm {
+	status = "disabled";
+};
+
+&uart4 {
+	status = "disabled";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev902.dtso b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev902.dtso
new file mode 100644
index 0000000000000..0141b5d77c6bd
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc-overlay-edm-sbc-imx8mp-rev902.dtso
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2024-2026 Marek Vasut
+ */
+/dts-v1/;
+/plugin/;
+
+#include "imx8mp-pinfunc.h"
+
+&pinctrl_hog_misc {
+	fsl,pins = <
+		/* ENET_WOL# -- shared by both PHYs */
+		MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10		0x40000090
+
+		/* PG_V_IN_VAR# */
+		MX8MP_IOMUXC_NAND_CE0_B__GPIO3_IO01		0x40000000
+		/* CSI2_PD_1V8 */
+		MX8MP_IOMUXC_NAND_DATA02__GPIO3_IO08		0x0
+		/* CSI2_RESET_1V8# */
+		MX8MP_IOMUXC_NAND_DATA03__GPIO3_IO09		0x0
+
+		/* DIS_USB_DN1 */
+		MX8MP_IOMUXC_SAI2_RXFS__GPIO4_IO21		0x0
+		/* DIS_USB_DN2 */
+		MX8MP_IOMUXC_SAI2_RXC__GPIO4_IO22		0x0
+
+		/* EEPROM_WP_1V8# */
+		MX8MP_IOMUXC_NAND_DQS__GPIO3_IO14		0x100
+		/* PCIE_CLK_GEN_CLKPWRGD_PD_1V8# */
+		MX8MP_IOMUXC_SAI5_RXD0__GPIO3_IO21		0x0
+		/* GRAPHICS_PRSNT_1V8# */
+		MX8MP_IOMUXC_SAI1_TXD6__GPIO4_IO18		0x40000000
+
+		/* CLK_CCM_CLKO1_3V3 */
+		MX8MP_IOMUXC_GPIO1_IO14__CCM_CLKO1		0x10
+	>;
+};
+
+&pinctrl_pcie0 {
+	fsl,pins = <
+		/* M2_PCIE_RST# */
+		MX8MP_IOMUXC_GPIO1_IO05__GPIO1_IO05		0x2
+		/* M2_W_DISABLE1_1V8# */
+		MX8MP_IOMUXC_SAI5_RXD2__GPIO3_IO23		0x2
+		/* M2_W_DISABLE2_1V8# */
+		MX8MP_IOMUXC_SAI5_RXD3__GPIO3_IO24		0x2
+		/* CLK_M2_32K768 */
+		MX8MP_IOMUXC_GPIO1_IO00__CCM_EXT_CLK1		0x14
+		/* M2_PCIE_WAKE# */
+		MX8MP_IOMUXC_GPIO1_IO06__GPIO1_IO06		0x40000140
+		/* M2_PCIE_CLKREQ# */
+		MX8MP_IOMUXC_I2C4_SCL__PCIE_CLKREQ_B		0x61
+	>;
+};
+
+&pinctrl_uart4 {
+	fsl,pins = <
+		MX8MP_IOMUXC_UART4_RXD__UART4_DCE_RX		0x49
+		MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX		0x49
+	>;
+};
+
+&gpiowifi {
+	status = "disabled";
+};
+
+&uart4 {
+	status = "disabled";
+};
-- 
2.53.0


