Return-Path: <devicetree+bounces-277990-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAJtM7VDvGm4wAIAu9opvQ
	(envelope-from <devicetree+bounces-277990-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:43:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F2A2D1305
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:43:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 48221301B65C
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E56CE3F8817;
	Thu, 19 Mar 2026 18:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DJMKCRyQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498C63C141B
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945722; cv=none; b=B+Y15E+pEUDeSJrxkVkhpVy75UnZvi1FgyxZ4td/ls7Tbv8U6skZADRjugMK/CT4OefpAAVDJpUgcjpZCA6f8sF1UdvP7OZpvde0mCYHZ0MJwoRKH4iXkz4M0zCxFmjou918EtpmKY1pNpT2Oc7P/kV9fYK3tEVgXPuQujcpwn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945722; c=relaxed/simple;
	bh=BM2gvpse60F5Afr+VPCPLl+VC+QrAszo9XAnzuXymqQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AcWxZIMbrXP79XXUy2AvOrghTe4Los+ObTdXj18V+J7Tuf/GBNr4pOXETTOOBFoVdgpAbK7eLdfCg73YmLBH+twgPFvZa5+KsPXq7Ik1IONVE7pIrw5EWDEfulu+gKVkI6CcGjKXiiHMjGSi6CQShH6dnNdxJ0ccZ/tOLr1MFRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DJMKCRyQ; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-48374014a77so10512775e9.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945718; x=1774550518; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s8vxnjwZOXE7HlXyNRQ9zVADAHm3YyuOJfN0fYbFcx0=;
        b=DJMKCRyQd/zWRRqeH52d8jmdEUVVhXlUFFM39tXiopoliWTzowbbSDnhNpvI9XsCWe
         BIAOkJCuVaslHCUqVThXoZonBwQU2zIvvxVMqYjdDnFKjOUlrR6dGwbpyglV/KUiCsjI
         5pBdDXbfX3vLptqsXyTZvOLRsKpkifBpWFhznd3aI/5iooFKo7snopmdL+9vs6NeIBFg
         JDEE7f4kpZpqPbNcG5YkD8s5vss2sDpdTwoQOC3YuiJyZJ1xIDkqS/DO+qRi8jtmnJNu
         y8q2om8EsQC+EvAvk0dRkHUkv0ZoPnGak5Ja8Vu7b5Bv6gCEuqUr5WJv7comEQUwTpAo
         WO/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945718; x=1774550518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s8vxnjwZOXE7HlXyNRQ9zVADAHm3YyuOJfN0fYbFcx0=;
        b=AycJU9xkeVUvDHVF43LkEK/d8b3G9GbQJVz2EDlMRzysxNnm1Smkmzi3u90ioedt2f
         7yY7TVA2Qqn8sYodq6+HUG8GXQxmLfreC8IVErBcFdSanao+YTqdfPpLKgSRvGzAyP8x
         zgdvpErTkrYATY6/ZBnH9KHbY/JtRiLJTpvmbJdj42U1FBgDPEHyEETPOa2Fp9O9KtGe
         k7fKUgQxI7/pCEntjlIgSdzt/2RBxi8pWRimuov7iuiOCZLnoou+6oHZHJ6L38TwZ+jx
         +3mvaVUxOuzwEQQZtEgUkhwFOQl+RknR6y8KfpUDOBGuh3ojrfkSWtRksTZfLlGliJEO
         8Gkg==
X-Forwarded-Encrypted: i=1; AJvYcCXckLCMYoDXUTAFICslDKJHLZgbGR3PK93tui411yjOxZPAylRH6iocYM9yc9aM+bRCYQgYwDMTFvIl@vger.kernel.org
X-Gm-Message-State: AOJu0YywxiZ573ToiIsGPRzKUMOcSXxduo4nl8ZgtACJHJJLPv/bXEGv
	59gsIWVx2jwREXBb1d3m8MLn9p814iEeXSTUMtqqQsFFHipan3b7AIp8
X-Gm-Gg: ATEYQzw0OwxW3+QNd4lJHivH2TPUeiwvHj4kyXyxeaRPz6NiqHnaIzL0lTMKKKqf3zv
	eif55UPHHaY37GwOesAZyMBGK4KDK1Ryhi9RNfoee1ytT+x3yHXzmwYAR+hGtzRYvu/xi6LiVR9
	TtPDFCEtnd8g/HItn4+qZHlVvU+KC/Zgo5UqdGk550beUHcJIaln3uhGYQVb39rsvcozqxhONx8
	UOvqx8bQmP2wo1w5eQt9y/6/fCRx1ousBUtYhw6h6Z6hmRRkVtyTWmjCGVPzY+LpTjk4ngZ+XVm
	tAQhMdaGMCUDJ2k3iyc6bfZx8IVSSQSTdtOhfyPzmvr0m0UOUy1Py7afCJeA0u7utQIt6XgGAkc
	t4EAw6Jd5eKlSQZsrrZHuXA6ViW6Rc2kxJ8hudupGjK2T97a8f6MSjXxlo7iU9qKbaYFBK0xhoP
	GZYw3AarxZWCaWjKOq/MzfsGYO98m4Mt1o1MIXJaAj3iJn2ST3wEbSTIop80DeDevRfx92ZUaMN
	pEmPHhVQFq7RjHZwEfdJuK2d8Lp6pdXteGgaQxrXU20qyEfnw==
X-Received: by 2002:a05:600c:8b31:b0:485:40a4:364 with SMTP id 5b1f17b1804b1-486fee1af50mr2335955e9.26.1773945717254;
        Thu, 19 Mar 2026 11:41:57 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8b1fe65sm77289195e9.5.2026.03.19.11.41.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:41:56 -0700 (PDT)
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
Subject: [PATCH v4 07/11] arm64: dts: imx8mm-var-som-symphony: Move USB configuration from SOM
Date: Thu, 19 Mar 2026 19:40:27 +0100
Message-ID: <c0b7513b9a6247f3d11bc3292f3b4e6d6602ea69.1773944896.git.stefano.r@variscite.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-277990-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,nxp.com,pengutronix.de,gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.826];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:email,variscite.com:mid]
X-Rspamd-Queue-Id: D2F2A2D1305
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
v3->v4:
 - 

v2->v3:
 - 

v1->v2:
 - 

 .../dts/freescale/imx8mm-var-som-symphony.dts | 48 ++++++++++++-------
 .../boot/dts/freescale/imx8mm-var-som.dtsi    | 12 -----
 2 files changed, 32 insertions(+), 28 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 2b608470da8e..a425ee0ed8a9 100644
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
@@ -133,13 +134,20 @@ enet-sel-hog {
 		};
 	};
 
-	extcon_usbotg1: typec@3d {
+	/* USB Type-C Controller */
+	ptn5150: typec@3d {
 		compatible = "nxp,ptn5150";
 		reg = <0x3d>;
 		interrupt-parent = <&gpio1>;
 		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_ptn5150>;
+
+		port {
+			typec1_dr_sw: endpoint {
+				remote-endpoint = <&usb1_drd_sw>;
+			};
+		};
 	};
 };
 
@@ -187,27 +195,29 @@ &uart4 {
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
@@ -262,6 +272,12 @@ MX8MM_IOMUXC_SAI3_TXD_GPIO5_IO1		0x16
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


