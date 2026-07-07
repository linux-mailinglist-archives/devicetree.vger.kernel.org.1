Return-Path: <devicetree+bounces-321748-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cytdER2jTGrOnQEAu9opvQ
	(envelope-from <devicetree+bounces-321748-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 08:56:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EF37182F3
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 08:56:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ew.tq-group.com header.s=default2602 header.b=BaF209y0;
	dmarc=pass (policy=quarantine) header.from=ew.tq-group.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321748-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321748-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8FB89303AA99
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 06:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5698A3B27F5;
	Tue,  7 Jul 2026 06:52:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D2D5376BD0;
	Tue,  7 Jul 2026 06:51:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783407121; cv=none; b=lfPZYBtcLezqOV4mWIgzzGpfIg53a6yZjgrvwWxaO9qhktjxqGJV5I0/bZ6hnUyeP3JjD7VdQ90xoP2BqwDaS5Fp6Yo8gX3IofyzV8c/fJSCNWaow1Yn8ufjfVoAW/X5idLiPgzIY2DeDhaDVYoh6anOo13/6mL1q1ywmDqcFjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783407121; c=relaxed/simple;
	bh=t8db3CHfqTJwfHR5RX/psznEXUcLz0eV/r7hirVcP0w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TV1W4ujZyX0EQR4a2vSUK907JPHixbbNkC2xfqhwurbIZIY/oAdeDBzOwiHC6BV2BOpQTjGVNB8pxPLT8Vve07dsTi2rSJbxXsuosIs7+itdaNnO7jKcTsjaow9IIFPWqBMOYrbenGT+QuhXftmyZuMpKfJfIHqsh/VN3EB7nI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=BaF209y0; arc=none smtp.client-ip=188.40.3.216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=SbyFDGZGgSntC1kOTHUkHJqun5T+Nj+xyRw8geBpUt8=; b=BaF209y0DHyUJ3vKDDDDCFKE1O
	a3nOvks7gu+6bJFbSgoAdmPpUszSctKILiRrd2s2Gp0zjXT//eMx8lYtrtFMN5eFelNhUa7B4w6Hn
	bTZkfjIZw1eyOKscoPhxejGNNpLjnLcBMrw8AuSq1DO0z1bh+Xhr8e9cLSn5JiFMfNIuDpIM5t6UG
	Lnu1Z9/Fc6cAzBgpF8j/hGolanKZCr9bnFXbHiZtEJ14CoFA4xX/u9c94sM5eP/EDephuP2krTZ4e
	cuMNQZ5Qyh/KC0WPjnzG0S86RBZTKfIl4ZlovsqI986/irnCqTO3dMm9zNczy5wztCwPLd1jIgiUh
	VEoJPeEw==;
Received: from sslproxy01.your-server.de ([78.46.139.224])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wgzes-000LgR-2t;
	Tue, 07 Jul 2026 08:51:55 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy01.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wgzes-0005WX-2J;
	Tue, 07 Jul 2026 08:51:54 +0200
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com
Subject: [PATCH v4 2/3] arm64: dts: imx93-tqma9352-mba93xxca: Add LVDS overlay
Date: Tue,  7 Jul 2026 08:51:48 +0200
Message-ID: <20260707065151.1079667-3-alexander.stein@ew.tq-group.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321748-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[nxp.com,pengutronix.de,gmail.com,kernel.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:alexander.stein@ew.tq-group.com,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@ew.tq-group.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ew.tq-group.com:from_mime,ew.tq-group.com:dkim,ew.tq-group.com:mid,vger.kernel.org:from_smtp,nxp.com:email,tq-group.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 95EF37182F3

Add the overlay for the Tianma TM070JVHG33 LVDS display.

Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |  2 ++
 .../freescale/imx93-tqma9352-mba93xxca.dts    | 21 +++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index de796f2134145..bd3d35ffde975 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -641,9 +641,11 @@ imx93-tqma9352-mba91xxca-rgb-cdtech-dc44-dtbs := imx93-tqma9352-mba91xxca.dtb im
 dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba91xxca-lvds-tm070jvhg33.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba91xxca-rgb-cdtech-dc44.dtb
 
+imx93-tqma9352-mba93xxca-lvds-tm070jvhg33-dtbs += imx93-tqma9352-mba93xxca.dtb imx93-tqma9352-mba93xxla-lvds-tm070jvhg33.dtbo
 imx93-tqma9352-mba93xxla-lvds-tm070jvhg33-dtbs += imx93-tqma9352-mba93xxla.dtb imx93-tqma9352-mba93xxla-lvds-tm070jvhg33.dtbo
 imx93-tqma9352-mba93xxla-mini-ezurio-wlan-dtbs += imx93-tqma9352-mba93xxla-mini.dtb imx93-tqma9352-mba93xxla-mini-ezurio-wlan.dtbo
 
+dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxca-lvds-tm070jvhg33.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxla-lvds-tm070jvhg33.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxla-mini-ezurio-wlan.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-var-dart-sonata.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts
index 9108181e6592b..39a8742de1da4 100644
--- a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts
@@ -67,6 +67,23 @@ backlight_lvds: backlight {
 		status = "disabled";
 	};
 
+	display: display {
+		/*
+		 * Display is not fixed, so compatible has to be added from
+		 * DT overlay
+		 */
+		power-supply = <&reg_3v3>;
+		enable-gpios = <&expander2 1 GPIO_ACTIVE_HIGH>;
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
 	fan0: pwm-fan {
 		compatible = "pwm-fan";
 		pinctrl-names = "default";
@@ -571,6 +588,10 @@ &lpuart8 {
 	status = "okay";
 };
 
+&ldb_lvds_ch0 {
+	remote-endpoint = <&panel_in_lvds0>;
+};
+
 &pcf85063 {
 	/* RTC_EVENT# from SoM is connected on mainboard */
 	pinctrl-names = "default";
-- 
2.54.0


