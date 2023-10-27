Return-Path: <devicetree+bounces-12471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 171A77D9A0E
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 15:36:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 468A91C20FB6
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A29481F5E4;
	Fri, 27 Oct 2023 13:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="iGJKnlB+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F3818031
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 13:35:55 +0000 (UTC)
Received: from mta-65-227.siemens.flowmailer.net (mta-65-227.siemens.flowmailer.net [185.136.65.227])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06C9B1731
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 06:35:44 -0700 (PDT)
Received: by mta-65-227.siemens.flowmailer.net with ESMTPSA id 20231027133440239b85241c73365736
        for <devicetree@vger.kernel.org>;
        Fri, 27 Oct 2023 15:34:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=LI3tiQ/66u0Y71e89nrnN1WYv5oh5jskwSjfRVoaT7M=;
 b=iGJKnlB+HowOEIHUXLrzrDSobDT+piXWdoIQ5CggCAtAQkoafehB/q5ZMOCjHpmIMsd8bE
 0IcHkDS2HGyAEByZ6eQsMOhOBlRLm94hkHmJUlm1nKDHQuri1nAd19KeQxkeXWX0WtnwO40n
 df3Kd+HG5kJ/jPVvyyo7+Rbj1EGvo=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Benedikt Niedermayr <benedikt.niedermayr@siemens.com>
Subject: [PATCH 4/7] arm64: dts: ti: iot2050: Refactor the m.2 and minipcie power pin
Date: Fri, 27 Oct 2023 15:34:35 +0200
Message-Id: <ccac993e604b912bb8472f08f5fd43c528c7973b.1698413678.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1698413678.git.jan.kiszka@siemens.com>
References: <cover.1698413678.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Su Bao Cheng <baocheng.su@siemens.com>

Make the m.2 power control pin also available on miniPCIE variants.

This can fix some miniPCIE card hang issue, by forcing a power on reset
during boot.

Signed-off-by: Baocheng Su <baocheng.su@siemens.com>
---
 .../arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi |  4 +++-
 arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi    | 11 +++++++++++
 .../boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts     |  8 +-------
 3 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi
index e9419c4fe605..e9b57b87e42e 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi
@@ -20,7 +20,9 @@ AM65X_IOPAD(0x01e0, PIN_OUTPUT, 7)
 
 &main_gpio1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&cp2102n_reset_pin_default>;
+	pinctrl-0 =
+		<&main_pcie_enable_pins_default>,
+		<&cp2102n_reset_pin_default>;
 	gpio-line-names =
 		"", "", "", "", "", "", "", "", "", "",
 		"", "", "", "", "", "", "", "", "", "",
diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
index 74c4accff4b7..53bd296ba310 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
@@ -852,6 +852,12 @@ AM65X_IOPAD(0x00CC, PIN_INPUT_PULLDOWN, 7)
 		>;
 	};
 
+	main_pcie_enable_pins_default: main-pcie-enable-default-pins {
+		pinctrl-single,pins = <
+			AM65X_IOPAD(0x01c4, PIN_INPUT_PULLUP, 7)  /* (AH13) GPIO1_17 */
+		>;
+	};
+
 	main_uart1_pins_default: main-uart1-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0174, PIN_INPUT,  6)  /* (AE23) UART1_RXD */
@@ -981,6 +987,11 @@ &main_gpio0 {
 		"", "IO9";
 };
 
+&main_gpio1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_pcie_enable_pins_default>;
+};
+
 &wkup_gpio0 {
 	pinctrl-names = "default";
 	pinctrl-0 =
diff --git a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts
index 8301c35c31b3..bd6f2e696e94 100644
--- a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts
+++ b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts
@@ -27,12 +27,6 @@ &mcu_r5fss0 {
 };
 
 &main_pmx0 {
-	main_m2_enable_pins_default: main-m2-enable-default-pins {
-		pinctrl-single,pins = <
-			AM65X_IOPAD(0x01c4, PIN_INPUT_PULLUP, 7)  /* (AH13) GPIO1_17 */
-		>;
-	};
-
 	main_bkey_pcie_reset: main-bkey-pcie-reset-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x01bc, PIN_OUTPUT_PULLUP, 7)  /* (AG13) GPIO1_15 */
@@ -72,7 +66,7 @@ &main_gpio0 {
 &main_gpio1 {
 	pinctrl-names = "default";
 	pinctrl-0 =
-		<&main_m2_enable_pins_default>,
+		<&main_pcie_enable_pins_default>,
 		<&main_pmx0_m2_config_pins_default>,
 		<&main_pmx1_m2_config_pins_default>,
 		<&cp2102n_reset_pin_default>;
-- 
2.35.3


