Return-Path: <devicetree+bounces-321750-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id awdZIViiTGqmnQEAu9opvQ
	(envelope-from <devicetree+bounces-321750-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 08:53:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C7E718284
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 08:53:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ew.tq-group.com header.s=default2602 header.b=YtsADyMC;
	dmarc=pass (policy=quarantine) header.from=ew.tq-group.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321750-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321750-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 30134300B823
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 06:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09DE53B443F;
	Tue,  7 Jul 2026 06:52:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3F13ACA75;
	Tue,  7 Jul 2026 06:51:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783407122; cv=none; b=qUoH0R9GnIPom8zEAJfXooS46HFeutkUj8yQ1IX2XvWrzh2ABHOg7Tbn1nwQaZBTuXCzcrAbpJzyOcxJEnV7HUWOCP6KPXVKHtRSkzNpRMy/wxWbvAKSB9To3MNPOUSdC8PWKh3pKRMf1z7Lz3jGFj8d3eD1drX5Xw+BiTk3b3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783407122; c=relaxed/simple;
	bh=aAzyweKeuOoaopZeNjfJB1xGa86TjBGIgJ3IHYBsALg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mzcPm4Bd+mLC5sycvGgAz8i2WIaE66JuvceJMs4fbZPYvKTk2C9oSuE4nokf8NqTmOGGaj+Wk2U3LNmjbDEtmzdMc1GW3x5Qzs2h4M0rfvlzTFw5ArfPG68vBYY1eV/TapQ6UvoZ4rz5MR2idttl20g7Gii7EnaRpT6D9nVinQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=YtsADyMC; arc=none smtp.client-ip=188.40.3.216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=Rw58FESB0zTLL3rOoRjWAP/vMtkBg8dNnr+WcNnHIeA=; b=YtsADyMCArFP0XM91epgdxd5ZD
	vonS0+Y87m7lZIW8ofv72uoT9/yV2oYfVhj9IbeC+Sq5cGRFX6vSgLGkSD76DZSRpITHo8KhsLliG
	ygXv/tkh294ulo9zzRylh3EoV5xNaR4psoWYy6Q/G5NCpP4ju4djJkeJfp6DJjdVEiBTL9TRoZL18
	00f+eD6YGEr38DXkwjOeJ8jAX9XX0D2VGd+TukQqZ5zdyLbhsbvJHIoMdGxR76nM4XsoY2QEnz3hN
	HE/BawFHK29VPOHvqI4OK3sjTcJS9rS+b5/9LQg31wCUQYB+gK/vf4bWV5RNkn+GUnuNUeV3wiHZQ
	v02tgRyw==;
Received: from sslproxy01.your-server.de ([78.46.139.224])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wgzet-000Lgl-0z;
	Tue, 07 Jul 2026 08:51:55 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy01.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wgzet-0005WX-0X;
	Tue, 07 Jul 2026 08:51:55 +0200
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Martin Schmiedel <Martin.Schmiedel@tq-group.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH v4 3/3] arm64: dts: imx93-tqma9352-mba93xxla-mini: Add LVDS overlay
Date: Tue,  7 Jul 2026 08:51:49 +0200
Message-ID: <20260707065151.1079667-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260707065151.1079667-1-alexander.stein@ew.tq-group.com>
References: <20260707065151.1079667-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/28052/Mon Jul  6 08:24:35 2026)
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[nxp.com,pengutronix.de,gmail.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-321750-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Martin.Schmiedel@tq-group.com,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@ew.tq-group.com,m:alexander.stein@ew.tq-group.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,tq-group.com:email,ew.tq-group.com:from_mime,ew.tq-group.com:dkim,ew.tq-group.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 72C7E718284

From: Martin Schmiedel <Martin.Schmiedel@tq-group.com>

Add the overlay for the Tianma TM070JVHG33 LVDS display.

Signed-off-by: Martin Schmiedel <Martin.Schmiedel@tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |  2 +
 .../imx93-tqma9352-mba93xxla-mini.dts         | 45 +++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index bd3d35ffde975..d387a4f5ed285 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -644,10 +644,12 @@ dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba91xxca-rgb-cdtech-dc44.dtb
 imx93-tqma9352-mba93xxca-lvds-tm070jvhg33-dtbs += imx93-tqma9352-mba93xxca.dtb imx93-tqma9352-mba93xxla-lvds-tm070jvhg33.dtbo
 imx93-tqma9352-mba93xxla-lvds-tm070jvhg33-dtbs += imx93-tqma9352-mba93xxla.dtb imx93-tqma9352-mba93xxla-lvds-tm070jvhg33.dtbo
 imx93-tqma9352-mba93xxla-mini-ezurio-wlan-dtbs += imx93-tqma9352-mba93xxla-mini.dtb imx93-tqma9352-mba93xxla-mini-ezurio-wlan.dtbo
+imx93-tqma9352-mba93xxla-mini-lvds-tm070jvhg33-dtbs += imx93-tqma9352-mba93xxla-mini.dtb imx93-tqma9352-mba93xxla-lvds-tm070jvhg33.dtbo
 
 dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxca-lvds-tm070jvhg33.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxla-lvds-tm070jvhg33.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxla-mini-ezurio-wlan.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxla-mini-lvds-tm070jvhg33.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-var-dart-sonata.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-var-som-symphony.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93w-evk.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla-mini.dts b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla-mini.dts
index 4afd6b650d9d8..0d553a8da7135 100644
--- a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla-mini.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla-mini.dts
@@ -58,6 +58,37 @@ aliases {
 		spi5 = &lpspi6;
 	};
 
+	backlight_lvds: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&tpm5 0 5000000 0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_backlight>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <7>;
+		power-supply = <&reg_12v0>;
+		enable-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
+		status = "disabled";
+	};
+
+	display: display {
+		/*
+		 * Display is not fixed, so compatible has to be added from
+		 * DT overlay
+		 */
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_display>;
+		power-supply = <&reg_3v3>;
+		enable-gpios = <&gpio2 7 GPIO_ACTIVE_HIGH>;
+		backlight = <&backlight_lvds>;
+		status = "disabled";
+
+		port {
+			panel_in_lvds0: endpoint {
+				remote-endpoint = <&ldb_lvds_ch0>;
+			};
+		};
+	};
+
 	iio-hwmon {
 		compatible = "iio-hwmon";
 		io-channels = <&adc1 0>, <&adc1 1>, <&adc1 2>, <&adc1 3>;
@@ -311,6 +342,10 @@ &lpuart8 {
 	status = "okay";
 };
 
+&ldb_lvds_ch0 {
+	remote-endpoint = <&panel_in_lvds0>;
+};
+
 &pcf85063 {
 	/* RTC_EVENT# from SoM is connected on mainboard */
 	pinctrl-names = "default";
@@ -375,6 +410,16 @@ &usdhc3 {
 };
 
 &iomuxc {
+	pinctrl_backlight: backlightgrp {
+		fsl,pins = /* HYS | PD | FSEL_2 | DSE X4 */
+			   <MX93_PAD_GPIO_IO05__GPIO2_IO05			0x011e>;
+	};
+
+	pinctrl_display: displaygrp {
+		fsl,pins = /* HYS | PD | FSEL_2 | DSE X4 */
+			   <MX93_PAD_GPIO_IO07__GPIO2_IO07			0x011e>;
+	};
+
 	pinctrl_eqos: eqosgrp {
 		fsl,pins = /* PD | FSEL_2 | DSE X4 */
 			   <MX93_PAD_ENET1_MDC__ENET_QOS_MDC				0x51e>,
-- 
2.54.0


