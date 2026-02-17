Return-Path: <devicetree+bounces-266251-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBONJ8u2lGlMHQIAu9opvQ
	(envelope-from <devicetree+bounces-266251-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:43:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B28B514F482
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:43:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 03D30300405A
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57A14374177;
	Tue, 17 Feb 2026 18:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S/raETuH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF79E372B3C
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771353798; cv=none; b=mtETQtMAjHRblGsw8ItdxMbkVnxD+ub28SpIeGEugDjPN/SIKM9y1AtB7JAxfnaccTBc3OuSJUwRI/y5nAzRRqFfBFt7FyTiBA2j5SKfz7q5PWxHWQ+Uf8EW6ql3yMriP46zQS/CjX0NUjuwDOe2ZkjeOdEI1vT9xY7Rx5FaurM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771353798; c=relaxed/simple;
	bh=tbhuD1aUMxOGf9FSw16T/Sjkh7LYSFUT2z4kZfsbikQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CzXvb2oZUoYT4o4Ck5sL0YdXmDJwd7NZEwWtmEsWKuW/zyf4ccGbnMoC3RWK38Qp6B6CCLjGE+xcIqWotNg/CwNlO2cYVI06G1p8qw3rwl6lFtkFK7wwcPmAXrx1Y0S2zGsXGqTzqhLIHq0ickykReeyEHMmq7fZL+zre/TwBKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S/raETuH; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48374014a77so40233835e9.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:43:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771353795; x=1771958595; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X8l290N01INdEGDV46RV1qE15ZPFcOjbnuocE2MfqwE=;
        b=S/raETuHY8CShKRSANE5zCNGi3Nqq4fbN9fKO9hWsG94UsUC9jYOgxiIdMMJ8WwpWp
         pOxGsSjv5mSU9bBuEIsGm52E2CdzATiYFm2Zl407m9YEplE/daQFmtk4KtMMuihLU9us
         qTjR8Iuvh1QLNkU1EB/WdU8UslwbN+28iNxhQOMVqUtaPrCqZYpVhqlya8ByKQA0S4rF
         PCj5rjBkb5F0t6/KnSSE/SH8DtLAwluwNdiaxx6U8b2MDfqB7PEcghomFICDEXQMpCAy
         hGiPZkzwpsqWCMQcshG6zqUJfp+7FqI2X93HKfNRsJ6MGzNylmUYr/cnX2lSX4/Wb3oI
         +IJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771353795; x=1771958595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X8l290N01INdEGDV46RV1qE15ZPFcOjbnuocE2MfqwE=;
        b=gsbCrwFjwOVsZB49nPy/rv8+tnvgUP6TDNixSsDYWWorIBD6dcz3QPGyiHfFTNt+Uh
         G2cVdKSgKTTMTaz2rMVgJc3x1eyd1hRZvAe0Z2oTFtLK/8TEzuBcB07GRStMXQRXoGpV
         ejCPxkMz8iqNNIkyXW5enY0+9FOO79voHKSLqPZIbyt4zTw5z1wcNqx8tSv63NsKrKp8
         u1oPyy2udURvY/BlopUFnc7IERfIId4UqoUV/2wO8ySW1ICnFslucsYnVCY4pBh/knai
         9izdBsFswji5RbeB0Y8annx4d3elCXAcL3UpyRCrVuF78/tYrZO/vcR1VoKcsa3SyURY
         PfFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEpIo9gTd7Yz1OTQy3SUcVh76rPVvXA6pmhCq452POlVEFsV5I1dXXfyitOOg6/yuH9siLRPM7bWT0@vger.kernel.org
X-Gm-Message-State: AOJu0YxnOdWzTD+EInGFBl1bj0KGLCHRJI747M3LvbdhiMQsppN0iMJf
	GXTKpfbvuf8DfU/sAx33PuUiptw4QtKdUbnB9RvvJ3jYiefsG+Ag6iI2
X-Gm-Gg: AZuq6aJNwTuNiE3LcYrwuawqIicrLfFKHcbYaZN5ADgHo6r+l5OfH5qn/oHDdwy04BJ
	c9hwKfqSCA5xweML9CnREwoMn5F8cJZJYQ+bsgGlpFFMvsoadnzNaI48SC0sfn6b8YWP000G829
	Ev+44N0gJGZ6DUfASSGW0y+SQHfmQ/GSgLM22j3soMeiTo4NY0ZwWJdPj1ZINPkKTeeNLIYgT89
	7/e5U2OdS0X27IHZ3CeDeNGZji5Sat2nSGF/qtntAQ2jRPI5PURaeRqlYBw5gY2MmedHSUuKpcU
	NX0FH8fPxvTy4KIBvspEgP/ULhr+/RcHlzsZsoXcFAOhGse8qdREP8172AmaPjIXDIlk0ApP2YK
	pjiMyAWcXCLTJa+3z8q+sXNJOn/HqXV/1ro5CkBdKlyqS7tMsQVDjm8iKVq9wRIw8mgxs0JUBdv
	vIuMEKM7I8aCu7UNKEuVtHSym07zJ/MwRAbgHRAfDD8NgbfGQbJRYQ6bXZ8u0Ck0f+FyxcXv5U7
	dDzjQOgRNJAW2/1LgVFbqQ0j6GDwT0AvWfwu77FqJRHZWaTAVo=
X-Received: by 2002:a05:600c:3f0c:b0:47d:5e02:14e5 with SMTP id 5b1f17b1804b1-483739ffa1emr277408295e9.5.1771353794807;
        Tue, 17 Feb 2026 10:43:14 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839731d7c3sm1096185e9.18.2026.02.17.10.43.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 10:43:14 -0800 (PST)
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
Subject: [PATCH v1 01/11] arm64: dts: imx8mm-var-som: Move UART4 description to Symphony carrier
Date: Tue, 17 Feb 2026 19:42:35 +0100
Message-ID: <0ccc14794f4c77dc10b1d900597374061cd65919.1771353301.git.stefano.r@variscite.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266251-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,2.98.90.0:email]
X-Rspamd-Queue-Id: B28B514F482
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

The VAR-SOM-MX8MM module does not provide an onboard debug console.
UART4 is routed and exposed only on the Symphony carrier board, while
custom carrier designs may choose to expose a different UART.

Move the UART4 node from the SOM device tree to the
imx8mm-var-som-symphony.dts, keeping the SOM dtsi limited to hardware
present on the module itself.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
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


