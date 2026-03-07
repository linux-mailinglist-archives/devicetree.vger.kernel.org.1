Return-Path: <devicetree+bounces-272476-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDSJNG9KrGn+oQEAu9opvQ
	(envelope-from <devicetree+bounces-272476-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:55:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7637B22C910
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:55:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1978C302F242
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 15:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CBB23A4506;
	Sat,  7 Mar 2026 15:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QqgxxLNY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDED130EF97
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 15:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772898915; cv=none; b=Ph0lpiSBYcxHoyROSZjWZqxU2cv76piwSWmNnFVSof0416GxP9jSdAvzLUc3eiSvM23POQnEbVXVaKvsqv/DJq9PPPDlLpHso85wtPhzjkDVbTbRFblOhZ4M9eXKFx/N/o8vK+NSVsCQztukM6QW3f11+4mrxc35T7HplDx1GdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772898915; c=relaxed/simple;
	bh=dIVrsvVFArK8qAyJ47A5dbgp6jhMWsp0icTIy93oHO0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kD6xA/CGOiquwhS2w0wmwrPSWK17DK7O8eYMR/kiL4SEKp0p77vOzEtXLiQOksmXfafcf7F0YS5vtBHrETuWNJJV4PdP1XFvE5rkUquSIF61PnS7DLwt2OeomhfBerZNhGS1wHWa/63mz2ll2V3HJrEs8N2cIxfWwnwUnXFJwGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QqgxxLNY; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4806cc07ce7so118134975e9.1
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 07:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772898912; x=1773503712; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oRLx3w7DdmIIviZN17jgEZ3ypM6cFQn5Fi6e2rWnxGg=;
        b=QqgxxLNYHA/aUynKVoMMqRBFipT41iZUoRwsgk2m9xYnq450fBagGjeE/YCmWp8u4Q
         nhNTQD/MjWd0UlqSEkfr6oYR5IF82yLb9cc4HQoW9fFp3D0A3jlWv36caIiwkUSuA3x7
         OOKGdRR2nW+2kPMZ91d606NLspmLnG7E+oAAylR5zsrPri66nnaAuCuGQIsSO6S8rgi1
         LfY1z7c9zCm0FHoXlZRNLwT0eVO6hXnLcRUgPVc1j4Cr0kGWlxK4QWFsTmAHBTQxG9cE
         CVKbZ94paTRTk+U5OLvTuvEAZpsLBIXrpI+zHf94Vrmx2utjNcxt/DUgtZHyryQmCx5m
         B05A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772898912; x=1773503712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oRLx3w7DdmIIviZN17jgEZ3ypM6cFQn5Fi6e2rWnxGg=;
        b=EYapbiPvsKhI7O31Wm4pp6fY2OnxwZi53mzdD95ZwOPevs7HYcWxBeE9tUEssj6EY7
         lojo6CVw3G9NGUAHTG0wW9wR752Vg4HjustaOmuyjXMVtDtGrtbPwJlqriuWJW080+gv
         XEoqTNvFRCfWayEFp1Sbhd2LFZgZ+Sh5dk50qgGf7XeBzeSkTRi9xW66/oiYtYn9IOYr
         PJPI2e886YTfwYWnWXdDlUQvssUj9CXmk11J8VDA6WD6ChPrfBmCTyf7SwuerPzjEumS
         PgkkTorfuMIDM2bGDqBnLSQXCO+K46Ehp4vTGHZBGIcFbiWlGNFJe45DDnK8+83pxhuO
         d+uQ==
X-Gm-Message-State: AOJu0YxjV8TO4Qi5T8cXQ2zzpXf90YRh8lAAcCjpj7ICPW9vUUnNgOu6
	wnTicgqGZDFZxxAY1180xF61Y2heIxxsSdSiwPMl7xoywm8cc9aCrJE1kBR4sw==
X-Gm-Gg: ATEYQzw1mQsN7DHKs8nmVZ+rH2zwTggXg4n6lO0oJN/EzGnMgTUopyxHJC7hYGFZZ6p
	o7J0zk1teQSCsbwqlJwQ2BiruBfsOmOdtOxWz7jnBS+L9LgEMzbquu9EulYTC2JXxcXIcYoJ1/E
	3LBm4HTkUOY5DlPK286Ffjp/OoeYQVFBq6mL/KZ5XfZbgrJSyGsLoh+mYdEL+MoqZa9B3uXsmRC
	2MoEStg4zXMsPNujWPx65E86HoZNye9axnv/g852wvHPNf+d+jWb2m+voT3OcprhI91WPwEiF4j
	oRnBfn/SsGyFw3C0yIceU5H2nkJBPE9wI2Rh3PGtAyIELtAyYFoGNbk4oKrkzoViQnaFNbegh8w
	az4jpxyNYifanfdseHSKJ0eeZ/ZQfqb+kohKPh+38Hj0m6A4HVKeR6F0++aqrqvGk95q/5D1xA0
	Pn1JmwnHggvuGT3Du3h+oG+yUusdJ1YZ5VMhKF2ObQlvP5dOCxir76yp2TElgrPF/RcDfyHI7Sa
	B+7knBDewAijLSlv4viB7csyw==
X-Received: by 2002:a05:600c:3593:b0:482:eec4:74c with SMTP id 5b1f17b1804b1-4852695881dmr99969015e9.22.1772898912232;
        Sat, 07 Mar 2026 07:55:12 -0800 (PST)
Received: from GLaDOS.lan (93-35-179-236.ip56.fastwebnet.it. [93.35.179.236])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48527681a3esm261097785e9.4.2026.03.07.07.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 07:55:11 -0800 (PST)
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
Subject: [PATCH v3 01/11] arm64: dts: freescale: imx8mm-var-som: Move UART4 description to Symphony
Date: Sat,  7 Mar 2026 16:54:37 +0100
Message-ID: <b2ac5175ec9ddb308261746b967d13557958ba0a.1772898346.git.stefano.radaelli21@gmail.com>
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
X-Rspamd-Queue-Id: 7637B22C910
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
	TAGGED_FROM(0.00)[bounces-272476-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,2.98.90.0:email]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

From: Stefano Radaelli <stefano.r@variscite.com>

The VAR-SOM-MX8MM module does not provide an onboard debug console.
UART4 is routed and exposed only on the Symphony carrier board, while
custom carrier designs may choose to expose a different UART.

Move the UART4 node from the SOM device tree to the
imx8mm-var-som-symphony.dts, keeping the SOM dtsi limited to hardware
present on the module itself.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v2->v3:
 - 

v1->v2:
 - 

 .../dts/freescale/imx8mm-var-som-symphony.dts  | 18 ++++++++++++++++++
 .../boot/dts/freescale/imx8mm-var-som.dtsi     | 18 ------------------
 2 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index affbc67c2ef6..819707e6f3bf 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -11,6 +11,10 @@ / {
 	model = "Variscite VAR-SOM-MX8MM Symphony evaluation board";
 	compatible = "variscite,var-som-mx8mm-symphony", "variscite,var-som-mx8mm", "fsl,imx8mm";
 
+	chosen {
+		stdout-path = &uart4;
+	};
+
 	reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
@@ -156,6 +160,13 @@ &uart3 {
 	status = "okay";
 };
 
+/* Console */
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
 &usbotg1 {
 	disable-over-current;
 	extcon = <&extcon_usbotg1>, <&extcon_usbotg1>;
@@ -251,4 +262,11 @@ MX8MM_IOMUXC_UART3_RXD_UART3_DCE_RX	0x140
 			MX8MM_IOMUXC_UART3_TXD_UART3_DCE_TX	0x140
 		>;
 	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART4_RXD_UART4_DCE_RX	0x140
+			MX8MM_IOMUXC_UART4_TXD_UART4_DCE_TX	0x140
+		>;
+	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
index 190bde4edcd7..b6560c03639e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
@@ -9,10 +9,6 @@
 / {
 	model = "Variscite VAR-SOM-MX8MM module";
 
-	chosen {
-		stdout-path = &uart4;
-	};
-
 	memory@40000000 {
 		device_type = "memory";
 		reg = <0x0 0x40000000 0 0x80000000>;
@@ -274,13 +270,6 @@ &uart2 {
 	status = "okay";
 };
 
-/* Console */
-&uart4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart4>;
-	status = "okay";
-};
-
 &usbotg1 {
 	dr_mode = "otg";
 	usb-role-switch;
@@ -418,13 +407,6 @@ MX8MM_IOMUXC_SAI3_RXD_UART2_DCE_RTS_B	0x140
 		>;
 	};
 
-	pinctrl_uart4: uart4grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_UART4_RXD_UART4_DCE_RX	0x140
-			MX8MM_IOMUXC_UART4_TXD_UART4_DCE_TX	0x140
-		>;
-	};
-
 	pinctrl_usdhc1: usdhc1grp {
 		fsl,pins = <
 			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK		0x190
-- 
2.47.3


