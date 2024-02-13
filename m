Return-Path: <devicetree+bounces-41272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D2C852F45
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 12:28:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F81BB21C35
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 11:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8069B374E0;
	Tue, 13 Feb 2024 11:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="E09C4rLA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF472BB18
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 11:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707823544; cv=none; b=rJmj/VHqzlKP3p3PXPyuucjGHZhys5QT1sHIxpKDVIz4iUPDMtLuLBvLNwYGPB935ANagSDCXS+/01oTRrXGguXHW+YNrkTKj0DXc8vmq+3wZfIIgbFISLe8ogXq0iHcmTmKzNs52Z2bQZch1mCf8nyu/ezvSjNpwoKA6gKwObI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707823544; c=relaxed/simple;
	bh=beAkS1EXZy+AnMloyE8KngEFiFSGgRB8J/QXq+I0+n8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pEhyD95Y3qVytTkKOgdQrnKO33OtXb6MlbyR8iicdJiOV/bwUD/TYaQpVNIsqi8z0YBV5kvn/ljofa/pTck5H2vcn8mnkgI2HosMmcNEbOtWJN/fl41T/9iiyIphI2zj51EZSxBoJsqhonURei6QE8xlU0lqP1hiVx+obkARxOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=E09C4rLA; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 282C860857;
	Tue, 13 Feb 2024 11:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1707823542;
	bh=beAkS1EXZy+AnMloyE8KngEFiFSGgRB8J/QXq+I0+n8=;
	h=From:To:Cc:Subject:Date:From;
	b=E09C4rLAdlj0lDwalHAVvknREFciNCLq8ZSaG/dg4lI0Xgra0XPoy+cDEXtw0FbQB
	 BQtkOcWwapDMGusLCL2SBWoQHz8KRne5DhT5O7YAvFL59gaM1mFNQ1VlcMz/scT1X+
	 mDg52QhyHzpc2hBdJYKPVrOWiDwTx1qjUybhEJBBWxla54cLoNuQ+ioeneS+ooPRQD
	 ib8w/tU0l3944/laBuz/XFihm+4DvdSlXUpAhmS2xxepB0BVuRrlI9JrlcgStnOT7k
	 h6+LEjdayiRHL4zkhMmNF3oDl60j6NvSKfEQDlhNx7Rsk3lwIrXXITYvOTUOaq6MNI
	 6cdXdj8TbGTrA==
From: Tony Lindgren <tony@atomide.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Dhruva Gole <d-gole@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Markus Schneider-Pargmann <msp@baylibre.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 1/1] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc for wkup_uart0
Date: Tue, 13 Feb 2024 13:25:08 +0200
Message-ID: <20240213112510.6334-1-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
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

Also note that we need to disable the target module reset as noted by
Markus. Otherwise the sysfw using wkup_uart0 can get confused on some
devices leading to boot time issues such as mbox timeouts.

Tested-by: Dhruva Gole <d-gole@ti.com>
Reviewed-by: Kevin Hilman <khilman@baylibre.com>
Tested-by: Markus Schneider-Pargmann <msp@baylibre.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
Changes since v4:

- Add ti,no-reset-on-init as noted by Markus

Changes since v3:

- Use the first reg for the target module node name to avoid a
  make W=1 dtbs warning as noted by Nishanth

Changes since v2:

- Fix node name for 8250 IP, it's at offset 0 from the target module

- Added Kevin's Reviewed-by from v2 as the node name change is mostly
  cosmetic

Changes since v1:

- Added Tested-by from Dhruva
---
 arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi | 34 ++++++++++++++++++----
 1 file changed, 28 insertions(+), 6 deletions(-)

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
@@ -21,14 +23,34 @@ chipid: chipid@14 {
 		};
 	};
 
-	wkup_uart0: serial@2b300000 {
-		compatible = "ti,am64-uart", "ti,am654-uart";
-		reg = <0x00 0x2b300000 0x00 0x100>;
-		interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
+	target-module@2b300050 {
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
+		ti,no-reset-on-init;
 		power-domains = <&k3_pds 114 TI_SCI_PD_EXCLUSIVE>;
 		clocks = <&k3_clks 114 0>;
-		clock-names = "fclk";
-		status = "disabled";
+		clock-names = "fck";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0 0x2b300000 0x100000>;
+
+		wkup_uart0: serial@0 {
+			compatible = "ti,am64-uart", "ti,am654-uart";
+			reg = <0 0x100>;
+			interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
 	};
 
 	wkup_i2c0: i2c@2b200000 {
-- 
2.43.1

