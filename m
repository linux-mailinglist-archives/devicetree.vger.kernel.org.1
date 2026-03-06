Return-Path: <devicetree+bounces-272332-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMuENAcyq2n2agEAu9opvQ
	(envelope-from <devicetree+bounces-272332-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:59:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2F82274FE
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:59:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 31BF430AB8D6
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 19:58:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B9C843CEC2;
	Fri,  6 Mar 2026 19:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fH/xAtkR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89A1143C040
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 19:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772827122; cv=none; b=POcz5aZSlfZ9Cd8pRtsziAJ2LUke7F2O3VehppDTGe+P12dyFNh+vKgKUEk1/mOHdQvLSIxwFsASnSRqIPcDnHChxYo/LP9uuyUwOYfXLhlVZ6Ghg5oPQqc+5yszCj0VM5CUKcqHGwjjsLHur+jEABGcawwmT96wRQiU9Cjtr+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772827122; c=relaxed/simple;
	bh=VXFoPt6FDk0uTYR1HveyNp607pXL841lrETZO/GFuoo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OonAnAJyW2XKpIPRdPwD/Lq6+tsMRAHt7/7qn9DzRe3z0JdjXfuBbkeQkM4XCUct6f7zWOb8kG9a55h2BjSX+hDNm6Rewgu1VTfhcEtdDUEAQ13FgdKNTgRwMsexTZyN63TX5qXKk4hmHkULuy4TZ/MULfxnNAsRMR6a83xQQNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fH/xAtkR; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4838c15e3cbso88347505e9.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 11:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772827120; x=1773431920; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tvM/p0ei/4Q87LGneFYY4Bf76uB4N3gLQRtuf5Hkp24=;
        b=fH/xAtkRy5btnRIocr713cCbp/GhM0ogflme4Avuc2ww9QirxNzkrLvo0PDgW4c91a
         htWuzRQ0vGVymyNiRtmw7kl5OMjYluul/zFDBdO152n4RCrHdOeGxBrXb64p3GxRhjmD
         1kIq6eZYGJeQcNtn1KwBTuxQEBgdVM40ketvWD0Lpu1DKSk7P9pqghNNB4sTPgHr7ZiD
         yrlKfnAJpXKa/o43YaZUwQ/EigDBAMlNixOoIZmqyAedCs4qWDbLR3TIz4h8OPb01TA6
         Wpfb0ZgZk3hdadBnQmLSbTmIp6xez1ahBN1bG+VCPG4dXizAC6Wz0W6lO3RSvLJhNHlj
         ldfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772827120; x=1773431920;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tvM/p0ei/4Q87LGneFYY4Bf76uB4N3gLQRtuf5Hkp24=;
        b=RgwsBOqcHwm7P+s6vKpORbmabP6lQKcfVxm9D7zYXwqE3byZCs8tKpftS8smbo6wVT
         JYjnkiZCPfV0rLifP1vQGZohEQqEYAZblbF/QXOMtSk0QpR+1SksA20JkutR5HjOV1q4
         Q0uxYNOOGW8AsR+Bumyf1zV9Vr6hZZsnlQRr1+kGSCCGNehG3pZNVFyB2EMFenf2ne2U
         SfmjYjYjHiKkA0aU1d6l0xUKRJ4cuQS14uBcpt8sdILLwF9W2vqs4+2ApKWOcdD48Kxc
         ROfRMBd5G+joRUQgqMcYtQB17U5Xh+kHi/kqvO2EnEQ+lbf9DObSYdabIQIzvJU/xjDD
         N/yg==
X-Forwarded-Encrypted: i=1; AJvYcCXtQY7RvdQq9TtuX7ajTRzSM0P2zBDFqsOyDaPrSvtC+mbBhDjTKkmb+fDzfI7Q3e+0PrUoaRYZXKA2@vger.kernel.org
X-Gm-Message-State: AOJu0YwHqDcWpoUaJcxG/f88xGkJa5UFu71v7wTt1DRk0YUbdf2TwrNJ
	1XFKnyhiZNwYVUl6TQxP4ti7NV9OfOfN1TGWW5sJi0c3HYsYjbQWgPX8
X-Gm-Gg: ATEYQzz59lBfvoaRyprgs+j0FpOI0ThLt+Y737uxr0uGTn6swUb8Y13SFZPIf4N9R5W
	B9B++b6pxAyZ2a4P98fz34AhZMaotwBMgepAtxxk59B1iUwIFKJKT2JYRn3viZDOLhJSUy3SvWV
	+KTqiAy//poIQ4pid7ZmrVUbzOn196i1k4/IEFlYUZ2Q5eeZkV4xUEuaeMBPWQP2femNissDi1d
	pnu4qk31NONFDdRzd7Ll8j6PWJMESDiNHBuXRES7rpfOLn7AvNHuXt775Ka/Esu6K4Tlyg0RL/T
	NYeGGQ8ehvdmHuF+jcj9Ceh8luVBLgwyf8jYRwJH2Jf2zUq5As0pTBQSW9gncGwJlDES2Eocw2w
	PwOrru4xsYNtiXTiIUqB5R1pe+TVwGtivNblHVQNrSOZx/eF1hDwxpcCISeG1IpADDMMZcHsla7
	PnZiqsozIMlt/rAIfU4xL62xAq2n1c8QBFubMTLEdoPj1bG4PvS4vuDJIAWzPhUAlK6HRBgLUuC
	OA3w/6yXLaT65k4SMVzq+mx9vaxMyyw25aeMow=
X-Received: by 2002:a05:600c:5253:b0:475:da1a:53f9 with SMTP id 5b1f17b1804b1-4852692c99bmr54384485e9.14.1772827119887;
        Fri, 06 Mar 2026 11:58:39 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48523803b5fsm25167265e9.7.2026.03.06.11.58.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 11:58:38 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
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
Subject: [PATCH v2 01/11] arm64: dts: freescale: imx8mm-var-som: Move UART4 description to Symphony
Date: Fri,  6 Mar 2026 20:58:20 +0100
Message-ID: <b2ac5175ec9ddb308261746b967d13557958ba0a.1772826534.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772826534.git.stefano.r@variscite.com>
References: <cover.1772826534.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 6E2F82274FE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-272332-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.993];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.98.90.0:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,variscite.com:mid,variscite.com:email]
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


