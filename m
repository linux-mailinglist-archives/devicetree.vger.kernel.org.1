Return-Path: <devicetree+bounces-22139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E37EF8069AC
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 09:32:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 835CF1F21578
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 08:32:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A7219455;
	Wed,  6 Dec 2023 08:32:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 600EBAB
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 00:32:09 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rAnK3-00061Y-K7; Wed, 06 Dec 2023 09:31:59 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rAnK2-00Dv5y-2v; Wed, 06 Dec 2023 09:31:58 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rAnK1-00FLS4-PE; Wed, 06 Dec 2023 09:31:57 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	kernel@dh-electronics.com,
	kernel@pengutronix.de
Subject: [PATCH] ARM: dts: stm32mp15x: Consolidate usbh_[eo]hci phy properties
Date: Wed,  6 Dec 2023 09:31:43 +0100
Message-ID: <20231206083142.1476340-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=8310; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=RG+1x4CKDI1VD1axUBjuTttRdgjepo1N3wlDCorDB+E=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlcDFuS6+fmuBYV6Fli9YrhkM5nG/G2LgTHBvDj J+A1Hq3jraJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZXAxbgAKCRCPgPtYfRL+ Tu+BB/9Pf1ViE5Kbvz8xaI8BoEN5NKUIPn/Wb29J22TMuU3GToERqWjA2ublLFq7Ct/n6EnpbiA +rAMUL58Vmj+yRXeVu4BEOwOd4RDD/xKPcf/EKyL39YRHqvC50BCJnPfYcB5brnE2OmEZXnTsaE 83VhngRtSGPj9rFcOc11C0n5LKCulnafokgHc0Oh0krAHCJWypKK7jcuiyb0f1f6jMjZ2qOd3Uo toi7+riqvDYJ0nBFb20UAOvREb1HCeC85g3noIdNrWVmzJiBj7TLx1RQ2odGaE4YR8b6fbv/Uya jpPieDCT/4ChyUHpRCBlzlkoQ/gbjgA4qyt2PpYFtD5IFrjL
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

All machines making use of &usbh_ehci and/or &usbh_ohci use

	phys = <&usbphyc_port0>;

So move this setting into the .dtsi. Also add

	phy-names = "usb";

which isn't used by all machines, but nice for consistency.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/st/stm32mp151.dtsi                        | 4 ++++
 arch/arm/boot/dts/st/stm32mp151a-prtt1l.dtsi                | 2 --
 arch/arm/boot/dts/st/stm32mp157a-stinger96.dtsi             | 2 --
 arch/arm/boot/dts/st/stm32mp157c-emstamp-argon.dtsi         | 4 ----
 arch/arm/boot/dts/st/stm32mp157c-ev1.dts                    | 1 -
 arch/arm/boot/dts/st/stm32mp157c-osd32mp1-red.dts           | 4 ----
 arch/arm/boot/dts/st/stm32mp157c-phycore-stm32mp15-som.dtsi | 4 ----
 arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi               | 3 ---
 arch/arm/boot/dts/st/stm32mp15xx-dhcom-drc02.dtsi           | 1 -
 arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi            | 1 -
 arch/arm/boot/dts/st/stm32mp15xx-dhcom-picoitx.dtsi         | 2 --
 arch/arm/boot/dts/st/stm32mp15xx-dhcor-avenger96.dtsi       | 2 --
 arch/arm/boot/dts/st/stm32mp15xx-dhcor-drc-compact.dtsi     | 2 --
 arch/arm/boot/dts/st/stm32mp15xx-dhcor-testbench.dtsi       | 2 --
 arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi                   | 2 --
 15 files changed, 4 insertions(+), 32 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp151.dtsi b/arch/arm/boot/dts/st/stm32mp151.dtsi
index 61508917521c..fa4cbd312e5a 100644
--- a/arch/arm/boot/dts/st/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp151.dtsi
@@ -1521,6 +1521,8 @@ usbh_ohci: usb@5800c000 {
 			clocks = <&usbphyc>, <&rcc USBH>;
 			resets = <&rcc USBH_R>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&usbphyc_port0>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -1531,6 +1533,8 @@ usbh_ehci: usb@5800d000 {
 			resets = <&rcc USBH_R>;
 			interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
 			companion = <&usbh_ohci>;
+			phys = <&usbphyc_port0>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
diff --git a/arch/arm/boot/dts/st/stm32mp151a-prtt1l.dtsi b/arch/arm/boot/dts/st/stm32mp151a-prtt1l.dtsi
index dd23de85100c..3938d357e198 100644
--- a/arch/arm/boot/dts/st/stm32mp151a-prtt1l.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp151a-prtt1l.dtsi
@@ -206,8 +206,6 @@ pins {
 };
 
 &usbh_ehci {
-	phys = <&usbphyc_port0>;
-	phy-names = "usb";
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/st/stm32mp157a-stinger96.dtsi b/arch/arm/boot/dts/st/stm32mp157a-stinger96.dtsi
index 5f85598cc7c6..5c1cc48e5199 100644
--- a/arch/arm/boot/dts/st/stm32mp157a-stinger96.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp157a-stinger96.dtsi
@@ -313,8 +313,6 @@ &uart7 {
 };
 
 &usbh_ehci {
-	phys = <&usbphyc_port0>;
-	phy-names = "usb";
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/st/stm32mp157c-emstamp-argon.dtsi b/arch/arm/boot/dts/st/stm32mp157c-emstamp-argon.dtsi
index f928cfb80b87..4792004cab0c 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-emstamp-argon.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp157c-emstamp-argon.dtsi
@@ -500,14 +500,10 @@ &usart3 {
 };
 
 &usbh_ehci {
-	phys = <&usbphyc_port0>;
-	phy-names = "usb";
 	status = "okay";
 };
 
 &usbh_ohci {
-	phys = <&usbphyc_port0>;
-	phy-names = "usb";
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/st/stm32mp157c-ev1.dts b/arch/arm/boot/dts/st/stm32mp157c-ev1.dts
index cd9c3ff5378b..9eb9a1bf4f2c 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-ev1.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-ev1.dts
@@ -362,7 +362,6 @@ &usart3 {
 };
 
 &usbh_ehci {
-	phys = <&usbphyc_port0>;
 	status = "okay";
 	#address-cells = <1>;
 	#size-cells = <0>;
diff --git a/arch/arm/boot/dts/st/stm32mp157c-osd32mp1-red.dts b/arch/arm/boot/dts/st/stm32mp157c-osd32mp1-red.dts
index bd67a1db9122..527c33be66cc 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-osd32mp1-red.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-osd32mp1-red.dts
@@ -197,14 +197,10 @@ &uart4 {
 };
 
 &usbh_ehci {
-	phys = <&usbphyc_port0>;
-	phy-names = "usb";
 	status = "okay";
 };
 
 &usbh_ohci {
-	phys = <&usbphyc_port0>;
-	phy-names = "usb";
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/st/stm32mp157c-phycore-stm32mp15-som.dtsi b/arch/arm/boot/dts/st/stm32mp157c-phycore-stm32mp15-som.dtsi
index 4e8b2d2b30c7..bf0c32027baf 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-phycore-stm32mp15-som.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp157c-phycore-stm32mp15-som.dtsi
@@ -547,14 +547,10 @@ &usart3 {
 };
 
 &usbh_ehci {
-	phys = <&usbphyc_port0>;
-	phy-names = "usb";
 	status = "okay";
 };
 
 &usbh_ohci {
-	phys = <&usbphyc_port0>;
-	phy-names = "usb";
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi b/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
index f09b7c384bd9..fc3a2386dbb9 100644
--- a/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
@@ -567,9 +567,6 @@ &usart3 {
 };
 
 &usbh_ehci {
-	phys = <&usbphyc_port0>;
-	phy-names = "usb";
-
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-drc02.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-drc02.dtsi
index 35b1034aa3cf..bb4f8a0b937f 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-drc02.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-drc02.dtsi
@@ -152,7 +152,6 @@ &uart8 {	/* RS485 */
 };
 
 &usbh_ehci {
-	phys = <&usbphyc_port0>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi
index 46b87a27d8b3..466d9701add0 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi
@@ -305,7 +305,6 @@ &uart8 {
 };
 
 &usbh_ehci {
-	phys = <&usbphyc_port0>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-picoitx.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-picoitx.dtsi
index abc595350e71..b5bc53accd6b 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-picoitx.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-picoitx.dtsi
@@ -119,12 +119,10 @@ &uart8 {
 };
 
 &usbh_ehci {
-	phys = <&usbphyc_port0>;
 	status = "okay";
 };
 
 &usbh_ohci {
-	phys = <&usbphyc_port0>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcor-avenger96.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dhcor-avenger96.dtsi
index 0069ad75d55e..343a4613dfca 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dhcor-avenger96.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcor-avenger96.dtsi
@@ -489,8 +489,6 @@ bluetooth {
 };
 
 &usbh_ehci {
-	phys = <&usbphyc_port0>;
-	phy-names = "usb";
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcor-drc-compact.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dhcor-drc-compact.dtsi
index 92d906bfd5d7..bc4ddcbdd5cf 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dhcor-drc-compact.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcor-drc-compact.dtsi
@@ -312,12 +312,10 @@ &usart3 {	/* RS485 or RS232 */
 };
 
 &usbh_ehci {
-	phys = <&usbphyc_port0>;
 	status = "okay";
 };
 
 &usbh_ohci {
-	phys = <&usbphyc_port0>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcor-testbench.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dhcor-testbench.dtsi
index ab7f0ba49639..6e79c4b6fe32 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dhcor-testbench.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcor-testbench.dtsi
@@ -168,12 +168,10 @@ &uart7 {
 };
 
 &usbh_ehci {
-	phys = <&usbphyc_port0>;
 	status = "okay";
 };
 
 &usbh_ohci {
-	phys = <&usbphyc_port0>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi
index 511113f2e399..704c0d0cfe5f 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi
@@ -680,8 +680,6 @@ &usart3 {
 };
 
 &usbh_ehci {
-	phys = <&usbphyc_port0>;
-	status = "okay";
 	#address-cells = <1>;
 	#size-cells = <0>;
 	/* onboard HUB */

base-commit: 577a4ee0b96fb043c9cf4a533c550ff587e526cf
-- 
2.42.0


