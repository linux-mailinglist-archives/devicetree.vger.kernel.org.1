Return-Path: <devicetree+bounces-272482-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDyZEPhKrGn+oQEAu9opvQ
	(envelope-from <devicetree+bounces-272482-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:57:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C48D322C974
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:57:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4C7D306FCCA
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 15:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 248F73A5E6E;
	Sat,  7 Mar 2026 15:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="itnAv4Rt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0323A63F8
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 15:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772898926; cv=none; b=f3paw54TzHNzaqsRxmrcPowjRiUSZku3BoobexstKTf9fFGNzVkdlK9TmipRrEuT7WFWElw26fS4g0HOGNTm3NHhCf+7wQtPsUsrApDX+2RR2SgKHNkVd/k2WCyjC0L6bZW5xMH9IngKQ3OLlJf2/QzRe8YMzLhl/Qh27UbfikU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772898926; c=relaxed/simple;
	bh=WGIUDSNE4fbzrMwFQAEAhxJOHhFHjOXq0VDgnuQJthg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Z+0cmTD0Mw6mEiB5CRa2kGHMimVHKTRC58VeuR7C08VUN/wLZfexCX8g0uLQ+R/C/RNmPLxW1CQWBICAnnuVsETNkORzLtfQyhWgdEEnsfjo5ajPaYyZeCnZNTw9WvkAUUJpnLCuzfRAa3PtBc4iin9dSYHc63PWhIdvkoTiLpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=itnAv4Rt; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-48375f1defeso76965575e9.0
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 07:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772898919; x=1773503719; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wXppVponufibYNJUrEWp0KeVC13KUsLoWozvPsPqHDc=;
        b=itnAv4Rts8vTkPztou7VKng+OTtDe2M78gI1yxpr79Cyrwt01B0DZDUoNYjSOwDTwg
         BN69f2t4ownmSqaEO+57p4bbKQa64md+Ck608Cp03uYTGtE3haGK7qWeuTUKVT1guw9/
         XrjS0SbR4LiI9BmmwqM4Hb3JC68ei30A8FS3wZRZfDZB9hWLSrCJUrBP5wupcT/OMU28
         vRkoP2VFrtVHn04LX5CHaJyf9+6kmhH+fDB+7mkjRqQY8F+8/PTjPQ3tCKrAZAJglwX+
         gDxbYx1+hDIRnNX3OM2uRqgt9rEf8NiXt9gMezLHc7Cb9u8jcRZQE5LREPMt89qRO7MR
         joXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772898919; x=1773503719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wXppVponufibYNJUrEWp0KeVC13KUsLoWozvPsPqHDc=;
        b=EyD+EOEyWTqQtfdjGuARlIfM3acyy5Xj5h2uVOOWamuEqKu9I8vVH4EfXvkDfFpvVt
         v5y4K5/CK7A84mEzB1qi9A8S0epgx2RxeHNNlAEtW+XC3E+rxsoz9HvSL8Ue1uMuikQM
         FmRyTx2omG9OVQY7fr4q19dDAyqhO/JuAksb9DSbegrcLDELBFwww209Pzmgo4NoSqSl
         HnafQoU9f/eWeLyeGk6dZFT0PQmUYh5arYZKJ1PqNQYF2XQWudPnCRXT343MGK7+gvPe
         8JaKkD7n5uY76+1mkJieO52wkrVOjsxjwau8FpEw6maSTUkuNn52NxgAzWFwPaGvue4y
         GnCA==
X-Gm-Message-State: AOJu0YxepHpmcsyEcRIHKBIU3/SAVV3Tv5a9skKwEhrLwoeXEkc4VMFd
	2ajbGBU+jFaTn9fylz3P5de3higlqRah/R9/lWKujkS7aTRsBK7qLhekrhIpPw==
X-Gm-Gg: ATEYQzyTan+Ulw4ZHYcSMkvkkNlzII3Iw3jnLcWLO0u7iq4g/0KAbFrwWPdjwKNz+Cs
	jd+Cw2jh/o9+7hXhaN2nxHoiyN7DJh18ILe5l10x/tiuW4uBlIeDLt9mUls0i8DjfWz6gR5xVWz
	ZbsMglaWeIVoEubgmjvpj+7fFDM2i1ygcak5C6lXTJ8m5H5XNYZUV+9IKfQM6v5wY4+z2uFVUbF
	QBpWmZWsoN2g4ildC7e2F3D3a5mPsMlKbkffegiES/yZVU6zMqIh/Iy8oCaeUAs7fUsKgKoXH+2
	0O2pKMQNJxQ48/o/L2XuWZxon2IwB+PAggl9Gkwnsx8q3i3X8hhMeUBoa4etRJCEBQ1I99tPJLH
	1TZ9K4mNCNkDV92JnOBK7ETI4yFXIPjDf/jvdT9Yjlas5Ibgu1ovBCmpWuDVuruLTWhB8GqL8fA
	yA3va8pJRGkHzxZR0797Gi2joWcpGDvi7NxfE1ooE/w4CR3Rzw4S5vLAfXZw6iy3qjHX3NV+7wc
	ZD6++08CnY9Z/e8vsvbdZIqPQ==
X-Received: by 2002:a05:600d:8445:10b0:485:2f8b:55f2 with SMTP id 5b1f17b1804b1-4852f8b5ceemr22161775e9.24.1772898918961;
        Sat, 07 Mar 2026 07:55:18 -0800 (PST)
Received: from GLaDOS.lan (93-35-179-236.ip56.fastwebnet.it. [93.35.179.236])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48527681a3esm261097785e9.4.2026.03.07.07.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 07:55:18 -0800 (PST)
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
Subject: [PATCH v3 07/11] arm64: dts: imx8mm-var-som-symphony: Move USB configuration from SOM
Date: Sat,  7 Mar 2026 16:54:43 +0100
Message-ID: <04b20cb1abdea86c551a851a19eba8fce1640c87.1772898346.git.stefano.radaelli21@gmail.com>
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
X-Rspamd-Queue-Id: C48D322C974
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272482-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,variscite.com:email]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

From: Stefano Radaelli <stefano.r@variscite.com>

Move the USB controller configuration out of the i.MX8MM VAR-SOM dtsi
and into the VAR-SOM Symphony carrier board dts.

The SOM does not provide any USB connectors and carrier boards may
choose whether and how to route USB, therefore USB should be described
in the carrier-specific device tree instead of the SOM include.

While moving the nodes, align the Symphony USB description with the
carrier design by enabling both USB controllers, wiring USB1 to the
PTN5150 Type-C controller for dual-role operation, and updating the
PHY tuning and VBUS regulator pinctrl (including a sleep state).

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v2->v3:
 - 

v1->v2:
 - 

 .../dts/freescale/imx8mm-var-som-symphony.dts | 52 ++++++++++++-------
 .../boot/dts/freescale/imx8mm-var-som.dtsi    | 12 -----
 2 files changed, 34 insertions(+), 30 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 51ac8ee34c3b..86246de8f36f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -32,6 +32,7 @@ reg_usb_otg2_vbus: regulator-usb-otg2-vbus {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_reg_usb_otg2_vbus>;
+		pinctrl-1 = <&pinctrl_reg_usb_otg2_vbus_sleep>;
 		regulator-name = "usb_otg2_vbus";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
@@ -140,13 +141,20 @@ enet-sel-hog {
 		};
 	};
 
-	extcon_usbotg1: typec@3d {
+	/* USB Type-C Controller */
+	ptn5150: typec@3d {
 		compatible = "nxp,ptn5150";
 		reg = <0x3d>;
-		interrupt-parent = <&gpio1>;
-		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_ptn5150>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <11 IRQ_TYPE_NONE>;
+
+		port {
+			typec1_dr_sw: endpoint {
+				remote-endpoint = <&usb1_drd_sw>;
+			};
+		};
 	};
 };
 
@@ -194,27 +202,29 @@ &uart4 {
 };
 
 &usbotg1 {
-	disable-over-current;
-	extcon = <&extcon_usbotg1>, <&extcon_usbotg1>;
+	dr_mode = "otg";
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	usb-role-switch;
+	samsung,picophy-pre-emp-curr-control = <3>;
+	samsung,picophy-dc-vol-level-adjust = <7>;
+	status = "okay";
+
+	port {
+		usb1_drd_sw: endpoint {
+			remote-endpoint = <&typec1_dr_sw>;
+		};
+	};
 };
 
 &usbotg2 {
 	dr_mode = "host";
 	vbus-supply = <&reg_usb_otg2_vbus>;
-	srp-disable;
-	hnp-disable;
-	adp-disable;
+	samsung,picophy-pre-emp-curr-control = <3>;
+	samsung,picophy-dc-vol-level-adjust = <7>;
 	disable-over-current;
-	/delete-property/ usb-role-switch;
-	/*
-	 * FIXME: having USB2 enabled hangs the boot just after:
-	 * [    1.943365] ci_hdrc ci_hdrc.1: EHCI Host Controller
-	 * [    1.948287] ci_hdrc ci_hdrc.1: new USB bus registered, assigned bus number 1
-	 * [    1.971006] ci_hdrc ci_hdrc.1: USB 2.0 started, EHCI 1.00
-	 * [    1.977203] hub 1-0:1.0: USB hub found
-	 * [    1.980987] hub 1-0:1.0: 1 port detected
-	 */
-	status = "disabled";
+	status = "okay";
 };
 
 &pinctrl_fec1 {
@@ -269,6 +279,12 @@ MX8MM_IOMUXC_SAI3_TXD_GPIO5_IO1		0x16
 		>;
 	};
 
+	pinctrl_reg_usb_otg2_vbus_sleep: regusbotg2vbus-sleepgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI3_TXD_GPIO5_IO1		0x120
+		>;
+	};
+
 	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
 		fsl,pins = <
 			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
index c37badc4cf27..75f56dc89b8e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
@@ -378,18 +378,6 @@ &uart2 {
 	status = "okay";
 };
 
-&usbotg1 {
-	dr_mode = "otg";
-	usb-role-switch;
-	status = "okay";
-};
-
-&usbotg2 {
-	dr_mode = "otg";
-	usb-role-switch;
-	status = "okay";
-};
-
 &usdhc1 {
 	#address-cells = <1>;
 	#size-cells = <0>;
-- 
2.47.3


