Return-Path: <devicetree+bounces-233232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B3EC2017F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:52:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B334422266
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9C03354716;
	Thu, 30 Oct 2025 12:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="NfGwurw+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay164-hz1.antispameurope.com (mx-relay164-hz1.antispameurope.com [94.100.133.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E44E340283
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.57
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761828667; cv=pass; b=qPI1RzQdMy441EXu2EfrLkirWjCadclePAFg0omsKnVdCqPsK0BiCZpPHDK+/JEAwP7FWevDliwEPTfoAcX77uOZ2Vy2sKiTWrNPiu3G0QY73JeyzZNToBiKfU94xxCryRWqgnw9nN6G1QumQRRSZsH5fV8xI2NH0jrcyUuNV6g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761828667; c=relaxed/simple;
	bh=nuhZ3TcRNxc8iA4zNw99CDtFaforLONChmZfXktBvWI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XBfRboGZbWTq1PsgNdL40qGbwpjLFzvdO8AxMRwUey6HCx60H3EQkYs6pNb91tfFhISNnjMlX2HJuwp3JirJyp00Ca0C04ujOar2IQgxgjURkFS8RpO44J8rUKZHPuQAy86Tl0j9EzvygSC+lSNY36fe9n1WHWfGe8H5sHver+s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=NfGwurw+; arc=pass smtp.client-ip=94.100.133.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate164-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=LH+QGYOc/zlk9kynHB57i4Jfr2TpVc6CuOpzeWP/q+M=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761828608;
 b=Ro68wXdM77piy6eVsTgdVPwuSSvLldC5ph1p37jnx4VG26sX1SlT1CufKXEYeAAUWCo56uMB
 /zgqeGAAfVthwr8FhBb3sBjafQSD/UpagzK9jCieKbzt3kr193YXNkgWa1BqTnL1C3Ag7sGVboO
 asKhmFVl41ocv5S982C9d73ULZeSUebeBObh8tbD+3se6G8M9nPmrT45ROC3D3Ts2t6OPfJlKXz
 JEiuy26SZLBHA5WG8WARIwld0Cp42X7duyrLeIjoloLHqlK453zM//6BmoudXYzsKBB0iriW2uN
 CSXE669Dxt/AstEazQka4bWtfEKMszsmyK9uzmOZYbZbQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761828608;
 b=Thtb+ZjIVMs7WqZ9G0gTQIJQoFBcyrQenIKBmzcyY0tkyG5LNyvj221uFjU8Uk6vOPMGxxe+
 YA4uLXPNhgUcLzMOCMee7S1QMvIjnzMW7aLRDg/u3Q/scSXX941zkwKc3WKlBpDiL41Sfo1eQIs
 s/gStipIm1JXH3K342i372dkHqZ1OsO0Q8WNJRVd1t58e7T9CXyMWr6DZX2r8p0Pn2sTPPA3wTX
 +a3WLZVx1HaVBnpQ9QlWiKUINSxlP+M4iB13FGZVwuSBiB/OEv94lRZVRARzLf+UzAKLgtWUNLE
 WLTlL5ILHRZtS4hFNBJeLhUeTvjIJbiwAzr5JN4WYyzlA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay164-hz1.antispameurope.com;
 Thu, 30 Oct 2025 13:50:08 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 35CF1220D35;
	Thu, 30 Oct 2025 13:49:59 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 07/19] arm64: dts: imx95-tqma9596sa: move sai config to SOM
Date: Thu, 30 Oct 2025 13:49:14 +0100
Message-ID: <20251030124936.1408152-8-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
References: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay164-hz1.antispameurope.com with 4cy3qC6KJsz3xpSY
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:9ebcda3407cd901d1ba1b6606188f8b0
X-cloud-security:scantime:2.896
DKIM-Signature: a=rsa-sha256;
 bh=LH+QGYOc/zlk9kynHB57i4Jfr2TpVc6CuOpzeWP/q+M=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761828607; v=1;
 b=NfGwurw+0Y+PiG+u/w/Ra18VaO5EswfIRmbSHpLL5WgEj0Tr1YPqrzsXLSJCdcYGgs07gIF4
 2bJf6P/v8MCPZ7+yxoYdj1dTNatRFmnWzpdx02auM7LaxPfGNsO9u6hFjwUOEiA3Q8MVLRdgEQH
 iOBwg3rSmILorlU9U2kAdJw1Eps9lrLtV3zKCNmP+66tQC9rgmNzYLsC9+75V8+guHyi35V7n7M
 I4JTH3sLsVRRpy5BCDtXnkYHBkfp1JHUCjSKPAIMwqm50qnBV7H2QBGGTDDEugElyqAyouSK/5F
 6HL0I9SyQfCBUwKrap9Y5TSMlMB5dEFQzlVPdPOCosFng==

The muxing and other features are mostly determined by SOM, so add it
at this level.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../freescale/imx95-tqma9596sa-mb-smarc-2.dts | 30 -----------------
 .../boot/dts/freescale/imx95-tqma9596sa.dtsi  | 33 +++++++++++++++++++
 2 files changed, 33 insertions(+), 30 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
index 02bbaaf298930..5c94d8cf28c4c 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
@@ -254,39 +254,9 @@ &reg_sdvmmc {
 };
 
 &sai3 {
-	#sound-dai-cells = <0>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_sai3>;
-	assigned-clocks = <&scmi_clk IMX95_CLK_AUDIOPLL1_VCO>,
-			  <&scmi_clk IMX95_CLK_AUDIOPLL2_VCO>,
-			  <&scmi_clk IMX95_CLK_AUDIOPLL1>,
-			  <&scmi_clk IMX95_CLK_AUDIOPLL2>,
-			  <&scmi_clk IMX95_CLK_SAI3>;
-	assigned-clock-parents = <0>, <0>, <0>, <0>,
-				 <&scmi_clk IMX95_CLK_AUDIOPLL1>;
-	assigned-clock-rates = <3932160000>,
-			       <3612672000>, <393216000>,
-			       <361267200>, <12288000>;
-	fsl,sai-mclk-direction-output;
 	status = "okay";
 };
 
-&sai5 {
-	#sound-dai-cells = <0>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_sai5>;
-	assigned-clocks = <&scmi_clk IMX95_CLK_AUDIOPLL1_VCO>,
-			  <&scmi_clk IMX95_CLK_AUDIOPLL2_VCO>,
-			  <&scmi_clk IMX95_CLK_AUDIOPLL1>,
-			  <&scmi_clk IMX95_CLK_AUDIOPLL2>,
-			  <&scmi_clk IMX95_CLK_SAI5>;
-	assigned-clock-parents = <0>, <0>, <0>, <0>,
-				 <&scmi_clk IMX95_CLK_AUDIOPLL1>;
-	assigned-clock-rates = <3932160000>,
-			       <3612672000>, <393216000>,
-			       <361267200>, <12288000>;
-};
-
 /* X4 */
 &usb2 {
 	srp-disable;
diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
index 166439e251c53..e7edeec712dcb 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
@@ -391,6 +391,39 @@ ethphy3: ethernet-phy@3 {
 	};
 };
 
+&sai3 {
+	#sound-dai-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai3>;
+	assigned-clocks = <&scmi_clk IMX95_CLK_AUDIOPLL1_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL1>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2>,
+			  <&scmi_clk IMX95_CLK_SAI3>;
+	assigned-clock-parents = <0>, <0>, <0>, <0>,
+				 <&scmi_clk IMX95_CLK_AUDIOPLL1>;
+	assigned-clock-rates = <3932160000>,
+			       <3612672000>, <393216000>,
+			       <361267200>, <12288000>;
+	fsl,sai-mclk-direction-output;
+};
+
+&sai5 {
+	#sound-dai-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai5>;
+	assigned-clocks = <&scmi_clk IMX95_CLK_AUDIOPLL1_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL1>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2>,
+			  <&scmi_clk IMX95_CLK_SAI5>;
+	assigned-clock-parents = <0>, <0>, <0>, <0>,
+				 <&scmi_clk IMX95_CLK_AUDIOPLL1>;
+	assigned-clock-rates = <3932160000>,
+			       <3612672000>, <393216000>,
+			       <361267200>, <12288000>;
+};
+
 &scmi_bbm {
 	linux,code = <KEY_POWER>;
 };
-- 
2.43.0


