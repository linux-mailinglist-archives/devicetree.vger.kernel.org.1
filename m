Return-Path: <devicetree+bounces-14402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E0E7E4433
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 16:50:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AE85280F66
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 15:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 827A2315AD;
	Tue,  7 Nov 2023 15:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="vdwCz6yQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB6A315A4
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 15:50:52 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F3DB4EEC;
	Tue,  7 Nov 2023 07:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=r0TYUpnREGJ0KanYJfwzlHomepGsTlvaq5o9zs4sWSs=; b=vdwCz6yQyVDp/gzLzzMkGyqrBP
	FXNkjbLi1mhe3jlBKl24nPernItP1XoDYFZIIwicL1eL5IBUF/nkDS2YFX9OxzFnHa5HO5Q8m/Mf7
	j8Wdf9LV24O7zAtE0zWgNCPsoUZWfjCXfsQdSE5v3TzCRql+QZHtUTFoMhcvEaqBmJMs=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:41044 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1r0OLi-0007bH-VP; Tue, 07 Nov 2023 10:50:43 -0500
From: Hugo Villeneuve <hugo@hugovil.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Cc: hugo@hugovil.com,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Date: Tue,  7 Nov 2023 10:50:40 -0500
Message-Id: <20231107155040.1644169-1-hugo@hugovil.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
X-Spam-Report: 
	* -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	* -0.0 T_SCC_BODY_TEXT_LINE No description available.
Subject: [PATCH v2] arm64: dts: imx8mn-var-som-symphony: add vcc supply for PCA9534
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

The following warning is shown when probing device:

    pca953x 1-0020: supply vcc not found, using dummy regulator

Define a new fixed 3.3v regulator for carrier board peripherals,
enabled by mosfet switch Q2 after the SOM_3V3 supply rises (no software
control).

Add this new regulator as vcc supply to the PCA9534 to silence the warning.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
Changes for V2:
- add peripherals regulator and update commit message for Q2 mosfet.

 .../boot/dts/freescale/imx8mn-var-som-symphony.dts     | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
index a7a57442cb81..a6b94d1957c9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
@@ -57,6 +57,15 @@ led {
 			linux,default-trigger = "heartbeat";
 		};
 	};
+
+	/* Peripherals supply, enabled by Q2 after SOM_3V3 rises. */
+	reg_per_3v3: regulator-peripheral-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "per_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
 };
 
 &ethphy {
@@ -79,6 +88,7 @@ pca9534: gpio@20 {
 		interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
 		#gpio-cells = <2>;
 		wakeup-source;
+		vcc-supply = <&reg_per_3v3>;
 
 		/* USB 3.0 OTG (usbotg1) / SATA port switch, set to USB 3.0 */
 		usb3-sata-sel-hog {

base-commit: be3ca57cfb777ad820c6659d52e60bbdd36bf5ff
-- 
2.39.2


