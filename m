Return-Path: <devicetree+bounces-15538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B941B7EAAEA
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 08:32:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD2C21C208B8
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 07:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B63F1173D;
	Tue, 14 Nov 2023 07:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3134B11734
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 07:32:14 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0BDCC196
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 23:32:13 -0800 (PST)
Received: from hillo.muru.com (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTP id AC65E80CE;
	Tue, 14 Nov 2023 07:32:11 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Dhruva Gole <d-gole@ti.com>
Subject: [PATCH v2 1/1] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc for wkup_uart0
Date: Tue, 14 Nov 2023 09:32:09 +0200
Message-ID: <20231114073209.40756-1-tony@atomide.com>
X-Mailer: git-send-email 2.42.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The devices in the wkup domain are capable of waking up the system from
suspend. We can configure the wkup domain devices in a generic way using
the ti-sysc interconnect target module driver like we have done with the
earlier TI SoCs.

As ti-sysc manages the SYSCONFIG related registers independent of the
child hardware device, the wake-up configuration is also set even if
wkup_uart0 is reserved by sysfw.

The wkup_uart0 device has interconnect target module register mapping like
dra7 wkup uart. There is a 1 MB interconnect target range with one uart IP
block in the target module. The power domain and clock affects the whole
interconnect target module.

Note we change the functional clock name to follow the ti-sysc binding
and use "fck" instead of "fclk".

Tested-by: Dhruva Gole <d-gole@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---

Changes since v1:

- Added Tested-by from Dhruva

---
 arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi | 33 ++++++++++++++++++----
 1 file changed, 27 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
--- a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
@@ -5,6 +5,8 @@
  * Copyright (C) 2020-2022 Texas Instruments Incorporated - https://www.ti.com/
  */
 
+#include <dt-bindings/bus/ti-sysc.h>
+
 &cbass_wakeup {
 	wkup_conf: syscon@43000000 {
 		bootph-all;
@@ -21,14 +23,33 @@ chipid: chipid@14 {
 		};
 	};
 
-	wkup_uart0: serial@2b300000 {
-		compatible = "ti,am64-uart", "ti,am654-uart";
-		reg = <0x00 0x2b300000 0x00 0x100>;
-		interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
+	target-module@2b300000 {
+		compatible = "ti,sysc-omap2", "ti,sysc";
+		reg = <0 0x2b300050 0 0x4>,
+		      <0 0x2b300054 0 0x4>,
+		      <0 0x2b300058 0 0x4>;
+		reg-names = "rev", "sysc", "syss";
+		ti,sysc-mask = <(SYSC_OMAP2_ENAWAKEUP |
+				 SYSC_OMAP2_SOFTRESET |
+				 SYSC_OMAP2_AUTOIDLE)>;
+		ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+				<SYSC_IDLE_NO>,
+				<SYSC_IDLE_SMART>,
+				<SYSC_IDLE_SMART_WKUP>;
+		ti,syss-mask = <1>;
 		power-domains = <&k3_pds 114 TI_SCI_PD_EXCLUSIVE>;
 		clocks = <&k3_clks 114 0>;
-		clock-names = "fclk";
-		status = "disabled";
+		clock-names = "fck";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0 0x2b300000 0x100000>;
+
+		wkup_uart0: serial@2b300000 {
+			compatible = "ti,am64-uart", "ti,am654-uart";
+			reg = <0 0x100>;
+			interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
 	};
 
 	wkup_i2c0: i2c@2b200000 {
-- 
2.42.1

