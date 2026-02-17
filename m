Return-Path: <devicetree+bounces-266257-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCc0HG63lGlMHQIAu9opvQ
	(envelope-from <devicetree+bounces-266257-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:46:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB06514F502
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:46:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9649F307DB06
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:43:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D337E374722;
	Tue, 17 Feb 2026 18:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lqQZTwTM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B64037473B
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771353817; cv=none; b=IB1VkuyvH/piUct8Omy7KTO6bGMEQKqBBlvRrIQy8I+5zJ2fqSJTuX26DrQoA67DnzUPQPWIvzA1GCiFeUi9c6wXm3M52auvYVIiDl2yFZMlMm1DTsBqkzRZeNVGht42Hnt2hMIjnjkBM+wDu300ro/eL2XVkuTpKgFuqirxzSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771353817; c=relaxed/simple;
	bh=Im4SjL4rj+dZ4r9wviLtR9OUBndAmT+OXOPPEYGwiEU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cWyNxh5GQWehwacDyNHoTUcyAG9Fv7rQkGKMdakXltRYFt68xNVmGB6MYQDFQ2U7O93p4/a/ozXOUjkLqquZcOA6NfeHggZEHiCW9YZaH6B4qiNHfUjb0S8Hss44RVkBtv0RTA/ZJeP4N42FtV0JSxM5pHh52zpY5w2jj5lEyGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lqQZTwTM; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4837f27cf2dso26856115e9.2
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771353814; x=1771958614; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ozOixa4IFnis7hOv1BdsjCzbYXYnC7+PJ6nqzXPd9iE=;
        b=lqQZTwTMKcOgLadDpoW2oBc4Ve0kI5lgIouTLTOQBd1z4tyHm7e4HnSi0bgY82O2bU
         OVGH/gO3fPDaLLFFFhX81rlMgijrB1T7f3SfytWmc/C8tPfJYCa7IyXQ5jrf0UFnJbOr
         WzKxs2jRBXNlhYCl/RJOFcSbFwNXT/Fm7YZ5MNqlJ3HyxQypkWcL5N5C4StmdlRwNDJG
         FaHvb7457dNhDF9gCCd76+wq/c+Pcp68emhBc/lW+3lGo9wpKj27S3fgF7DnnQ9IPwsx
         F+ljrE6uTyIj7tgwq6uw6ADEkdfdhaKsGtVHR/GhpUUVbFdjjXEWoTRWxVd0ClH7xG3c
         m7jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771353814; x=1771958614;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ozOixa4IFnis7hOv1BdsjCzbYXYnC7+PJ6nqzXPd9iE=;
        b=r5JUMnPx9LY0tGAR8poTZxXsXV5wevpiHf1OxeXu5Ac/j9ddaWE28kogdRMYfTibvk
         hOyA/qXSnEiP3sPa8PJTT0ADxNggB1twiuCoJkWg49AzT06wxqR0CfG5JIbV8sKJbFB3
         5wCa8IozUXkSe7ReK/55IyWDkeG/oP3xim8l0RvAFxmJmT0bbylDbCRN1MDRBVmwM0iw
         ZMtQvDOksL7kBpjrwfz2EzBZ00i1+x9XMkeF7NXowRvhL9T2RJjOvG53ruYeo0CQHLW3
         LY9yQsJWRy8Uc07nW0qwSlDipvUDAop9c5ICkpnKZY9flLnXFPubdvmpNV0gbDR6/uZB
         DkJw==
X-Forwarded-Encrypted: i=1; AJvYcCUwzK9k/br54aKc/o839GKG13BWJRI++3Y+AalIr51zQCLSn4OKTLrIMco2DpP2Hj54yHXxeuj0wwWu@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0jZ2D28iqzVmuLFKvG1khk6frTv09nD1EVSxoNUGbORnZpwR+
	N3ap/TebS/LO4Z1g4KiaGuQeHGUzapyBrA1SG6KOZ4/J2oQNfiZKNtGb
X-Gm-Gg: AZuq6aJrpza2pU+3k538FqxIuQTXcohl2FUnetRB5IkAkyj7gkJ8QWNkQYfdc5n9aMY
	TT4+O/AvD3n2hBGmffXmdMaqa3NDM8ELrAGrA74YHva1hip5Qt9iHfuwHkyZNlpYb2TBut3im6z
	nZtKhRITmH8O4w3pELvMLB18438o6dWeSd0pMN0vygI8isoj/8IABg8Y++YS7K+H4iJMacuQa5y
	6o3B6y2lu53oK93cy+jB9wkUvHCLKdHq7Km8l546YjCUjKAmcR4BfSMGIVceo3sMBOIpXHE3Nsx
	BgIJamcjUsIiUu+wUecVqKcDhW4wydOpCkAymRWN4foTK9Xwr1kGlAfzrh0rRLHQVOdUSKkKDao
	e69q8LaSfBRjDl847b6edx+xhExcVyj1nmzcWS417KDEv22S/BFyusjXNqlCKtl9seI4OdP+8YO
	XVf5iFGF8dMA1oQPNOCazEz8uEvC8da7hIdhx56Z156bVF6d5eXbpA8/oNV8wSx2Td9yximrqkq
	HwEmmVQGd9Pmqj2tn4nnx2UNW6AP68P/Zj9jsOR
X-Received: by 2002:a05:600c:6912:b0:483:456a:5146 with SMTP id 5b1f17b1804b1-4837108fed4mr260857485e9.25.1771353814118;
        Tue, 17 Feb 2026 10:43:34 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839731d7c3sm1096185e9.18.2026.02.17.10.43.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 10:43:33 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v1 07/11] arm64: dts: imx8mm-var-som-symphony: Move USB configuration from SOM
Date: Tue, 17 Feb 2026 19:42:41 +0100
Message-ID: <d4d51b3ffb9b65564fa0eae82c4bdb5abb8ac1ff.1771353301.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1771353301.git.stefano.r@variscite.com>
References: <cover.1771353301.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266257-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:mid,variscite.com:email,3d:email]
X-Rspamd-Queue-Id: CB06514F502
X-Rspamd-Action: no action

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
 .../dts/freescale/imx8mm-var-som-symphony.dts | 52 ++++++++++++-------
 .../boot/dts/freescale/imx8mm-var-som.dtsi    | 12 -----
 2 files changed, 34 insertions(+), 30 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 689894405b27..3242a0b739f6 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -30,6 +30,7 @@ reg_usb_otg2_vbus: regulator-usb-otg2-vbus {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_reg_usb_otg2_vbus>;
+		pinctrl-1 = <&pinctrl_reg_usb_otg2_vbus_sleep>;
 		regulator-name = "usb_otg2_vbus";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
@@ -117,13 +118,20 @@ enet-sel-hog {
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
 
@@ -171,27 +179,29 @@ &uart4 {
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
@@ -246,6 +256,12 @@ MX8MM_IOMUXC_SAI3_TXD_GPIO5_IO1		0x16
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
index e2b1919d7188..96293036a4d4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
@@ -411,18 +411,6 @@ bluetooth_iw61x: bluetooth {
 	};
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
 /* WIFI */
 &usdhc1 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-- 
2.47.3


