Return-Path: <devicetree+bounces-44970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3E986048E
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 22:14:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 664A0283C4B
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 21:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0D2213BAFD;
	Thu, 22 Feb 2024 21:12:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BFA137906
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 21:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708636373; cv=none; b=i13OuCjfWU1Ptq3ET9KLGorcD7Ur9qEB2Z0F8c+ooBMp8+RAorWl/HVS+qORSoTNTCH4Hkwb4ruCb6fq0PaaYL5frTcYn3KWMjWkHv950Ev7TH7fKRg7dm73g355wfrm+HQdFMX1jLyYx7jUeB3ixulE/0AV8EEzA2r8QZkfd40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708636373; c=relaxed/simple;
	bh=ooilAgavlglq9dtkeSGqLGvVxR72yEBxj+XDAUCE3xQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=dsnQLslPBgnm3UZ0Kpd98fVVNZTUXZkcBmKOrDqTdfohYEtks1M0Sl7ZVnPlCVZgzLMOlS++dh42TpP+Sa8MUvuIqaATYrwsU8apSZunuNSkeCsGpXe61xw7fexGYSeJmMr30Nw2DIN00002W298lRxB/mbbEvvUH0BydUuUcgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rdGN2-0001fF-R5; Thu, 22 Feb 2024 22:12:44 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	agx@sigxcpu.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: Adapt TCPC compatible
Date: Thu, 22 Feb 2024 22:12:42 +0100
Message-Id: <20240222211242.210340-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add the new fallback binding to all devicetrees which do have a
nxp,ptn5110 node to not cause any dt-validation regression.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Hi,

this requires patchset
https://lore.kernel.org/all/20240222210903.208901-1-m.felsch@pengutronix.de/
to be applied.

 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi               | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi               | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts         | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts     | 2 +-
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts               | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index b53104ed8919..91830f6333bd 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -359,7 +359,7 @@ adv7535_out: endpoint {
 	};
 
 	ptn5110: tcpc@50 {
-		compatible = "nxp,ptn5110";
+		compatible = "nxp,ptn5110", "tcpci";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_typec1>;
 		reg = <0x50>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
index a0e13d3324ed..648901192e99 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
@@ -213,7 +213,7 @@ adv7533_out: endpoint {
 	};
 
 	ptn5110: tcpc@50 {
-		compatible = "nxp,ptn5110";
+		compatible = "nxp,ptn5110", "tcpci";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_typec1>;
 		reg = <0x50>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts b/arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts
index feae77e03835..4db3a8cd2776 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts
@@ -340,7 +340,7 @@ pcieclk: clock-generator@68 {
 &i2c3 {
 	/* Connected to USB Hub */
 	usb-typec@52 {
-		compatible = "nxp,ptn5110";
+		compatible = "nxp,ptn5110", "tcpci";
 		reg = <0x52>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_typec>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts b/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts
index 366693f31992..e92b5d5a66b5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts
@@ -42,7 +42,7 @@ &i2c2 {
 	status = "okay";
 
 	typec_ptn5100: usb-typec@50 {
-		compatible = "nxp,ptn5110";
+		compatible = "nxp,ptn5110", "tcpci";
 		reg = <0x50>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_typec>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 8055a2c23035..b268ba7a0e12 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -429,7 +429,7 @@ ldo7_reg: LDO7 {
 	};
 
 	typec_ptn5100: usb-typec@52 {
-		compatible = "nxp,ptn5110";
+		compatible = "nxp,ptn5110", "tcpci";
 		reg = <0x52>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_typec>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index 8360bb851ac0..83d298c2bfd3 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -149,7 +149,7 @@ light-sensor@44 {
 	};
 
 	ptn5110: tcpc@50 {
-		compatible = "nxp,ptn5110";
+		compatible = "nxp,ptn5110", "tcpci";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_typec>;
 		reg = <0x50>;
-- 
2.39.2


