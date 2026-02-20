Return-Path: <devicetree+bounces-266982-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIPVNAVxmGkoIgMAu9opvQ
	(envelope-from <devicetree+bounces-266982-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:34:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3919516862E
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:34:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C1DE30DDE23
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:32:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6802641CA;
	Fri, 20 Feb 2026 14:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="juNxlEVm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay153-hz1.antispameurope.com (mx-relay153-hz1.antispameurope.com [94.100.133.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3E125C802
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.194
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771597925; cv=pass; b=luuFVU/78UVgzyAycWkCT7x+sPWo6SAgYgLGnKJhDZOP5nvF1qBxLU0/MgZD+/MHJebYKtSC5uFyI9H/+Q3Ha2Aiu5MMld0Gtof/Mb+XiYvII/EjnlpChEvWc557Ro6LOWHNcoATmGAgplU281rO/wfw84Ph1/t/lieakA0kEsw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771597925; c=relaxed/simple;
	bh=VLBNeTJVoYPKQzLti9FIX4L3Mys6a67OEwBWaVUzqg4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b+HmQJE9IzhQ2ptewAOlpBCVHShrbAvuQQ6vpW+MP7NAFU6JoC3JQQ2bQkO1oUzVv/0DjMzbk1P3nYFoqMGmaoqLnHJeoWrY0JaO+x7tBH0n+zKUqZvINitIHc539Rvi+mX+iVQNnYd0k5kNaCfsvbPWA3L76pm1xbhg5mseS4Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=juNxlEVm; arc=pass smtp.client-ip=94.100.133.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate153-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=ENdcNjudCZOeI3PUHLeXLzIdft7hUCMR4wfbEPD2azw=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771597839;
 b=VsCAukMeOU1tGke2KgnO8mUfhbPFBoeJocTvcV7JdWeipCBEnnUHOhJodvb448dh0e9yo7+F
 SCVcyfe0GpxAmEMGtUiPZKq2pvq1OZNF/LzDyiTs2EQ+cupH50NVLqNoBLNlEsuY6/AKHdCoitT
 zkc8RRw+h5NhYDpVNucezm9POmQZVebJUGStfqC7OWaXKTmZ7x5KFivu2CIh4iHHVLLeHM44hfR
 zuSv2iAVmI+m4W+/7wBa6REWd3MV6SBzUJ9fmM7roq2XWJ3vaNp/vM8wkITZbOeRjbl05RM5vG3
 AVA+qFDGnvZitrlCro7PPgv4Ay24hun0/449ZjKvEq9vA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771597839;
 b=SGUhrIynhPtzoquX8vYAIywYqLN/YEiMDHKaW1bBWiiRR+by+dc8VNuC2COdCg0YPyyHSqqj
 k3kbeQeQ2J8ZWdczRXiPB2ifhRYK7HANzTSxux8PkuhTeXHK9YywGuJmfFqoyVmfb26LCoNtLF1
 o8WHdhVMkmZu12bnTOSjCBdsg4F/etGp8oWRUm6WuJ1kzjx3tey3wznERa5YfVpb3abrmgRuBB+
 8SYP5BGp6xZZlbp90CRGENYLDDF5EkyJGu6YTONtqbnFc3M3xDZs0vp5G8a5mEGVgIAyeB6RxEN
 tE9pImdqLDZh2+wc9G9OICYYUDnGt20VoCwwU2NtCCMUA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay153-hz1.antispameurope.com;
 Fri, 20 Feb 2026 15:30:38 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 8423FA413CB;
	Fri, 20 Feb 2026 15:30:30 +0100 (CET)
From: Max Merchel <Max.Merchel@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Max Merchel <Max.Merchel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] ARM: dts: imx6qdl-mba6: add boot phase properties
Date: Fri, 20 Feb 2026 15:30:05 +0100
Message-ID: <20260220143008.186851-5-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260220143008.186851-1-Max.Merchel@ew.tq-group.com>
References: <20260220143008.186851-1-Max.Merchel@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:max.merchel@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: max.merchel@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay153-hz1.antispameurope.com with 4fHXj31q7dzqT3h
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:f301ef9e349f7c57d41eb56594cc14ea
X-cloud-security:scantime:2.427
DKIM-Signature: a=rsa-sha256;
 bh=ENdcNjudCZOeI3PUHLeXLzIdft7hUCMR4wfbEPD2azw=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771597837; v=1;
 b=juNxlEVm2MH+EObq3m3Jo9B16bt/DNKHXXUtSuuXEYu4hY8r+HVxeI81n/RntLOMJF3bZart
 JVdZz1RqIAA8mUDpxQe24C+updX8BsJdwWSvVKBGzYBnG7luHNfqxqOZcSQVstyM3DDgkxE/fAf
 FzFCCs1Rli21qr7cKt9NDEVMOa/+AJ78Uj9/E16odq2p7ntKCEp5qin+u0daFlr0jsWIh/o1+Nx
 DCdccdr9Zk9B8TQ/d0wpE7ue7uC2CObKjYRakaSHBd3vlnIngaKrrBPbLFAlyhoYEq8ZVNo/0iO
 mRtqZYmcP3MWZFux3NQ9+q4XGRjGG9o0TE4ay8tkbFvew==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266982-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ew.tq-group.com:mid,ew.tq-group.com:dkim,tq-group.com:email,0.0.0.18:email,0.0.0.3:email]
X-Rspamd-Queue-Id: 3919516862E
X-Rspamd-Action: no action

dtschema/schemas/bootph.yaml describe various node usage during
boot phases with DT.

MBa6 need I2C, GPIO, SD-Card, UART and watchdog access during
boot process.

Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi
index ee2c6bec92e8..74ccfe56828f 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi
@@ -206,6 +206,10 @@ ethphy: ethernet-phy@3 {
 	};
 };
 
+&gpio1 {
+	bootph-pre-ram;
+};
+
 &hdmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_hdmi>;
@@ -214,6 +218,8 @@ &hdmi {
 };
 
 &i2c1 {
+	bootph-pre-ram;
+
 	tlv320aic32x4: audio-codec@18 {
 		compatible = "ti,tlv320aic32x4";
 		reg = <0x18>;
@@ -274,6 +280,7 @@ &ssi1 {
 &uart2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart2>;
+	bootph-pre-ram;
 	status = "okay";
 };
 
@@ -346,6 +353,7 @@ &usdhc2 {
 	no-sdio;
 	cd-gpios = <&gpio1 4 GPIO_ACTIVE_LOW>;
 	wp-gpios = <&gpio1 2 GPIO_ACTIVE_HIGH>;
+	bootph-all;
 	status = "okay";
 };
 
@@ -354,6 +362,7 @@ &wdog1 {
 	pinctrl-0 = <&pinctrl_wdog1>;
 	/* does not work on unmodified starter kit */
 	/* fsl,ext-reset-output; */
+	bootph-pre-ram;
 	status = "okay";
 };
 
@@ -544,6 +553,7 @@ pinctrl_uart2: uart2grp {
 			MX6QDL_PAD_SD4_DAT4__UART2_RX_DATA 0x1b099
 			MX6QDL_PAD_SD4_DAT7__UART2_TX_DATA 0x1b099
 		>;
+		bootph-pre-ram;
 	};
 
 	pinctrl_uart3: uart3grp {
@@ -587,6 +597,7 @@ MX6QDL_PAD_SD2_DAT3__SD2_DATA3 0x00017059
 			MX6QDL_PAD_GPIO_4__GPIO1_IO04  0x0001b099 /* usdhc2 CD */
 			MX6QDL_PAD_GPIO_2__GPIO1_IO02  0x0001b099 /* usdhc2 WP */
 		>;
+		bootph-all;
 	};
 
 	pinctrl_usbotg: usbotggrp {
@@ -602,5 +613,6 @@ pinctrl_wdog1: wdog1grp {
 			 /* Watchdog out */
 			MX6QDL_PAD_SD1_DAT2__WDOG1_B 0x0000b099
 		>;
+		bootph-pre-ram;
 	};
 };
-- 
2.43.0


