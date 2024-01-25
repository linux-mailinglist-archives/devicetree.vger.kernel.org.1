Return-Path: <devicetree+bounces-35098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C8A83C530
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:49:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 956771C249BA
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E0E06EB45;
	Thu, 25 Jan 2024 14:49:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [195.130.132.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60496E2BF
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706194152; cv=none; b=CRhVC9EESJvvUTdYC3CkRCmQPy79+jo/JgKejutpXT5SzR1tsMBO9YYf7aKOjV69j3MdZiBNi4OBVGX0Jz91L0M5wbcwOWE0wvilcAE7c601Inva1f7vLHNGgGTh+VeOsw+Tkn8rkVLL70zdMT5NgoySbiEX+iufwMEDyFUrY4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706194152; c=relaxed/simple;
	bh=aupD3kAOcdN2ZGDJhNMx7T0OeVXOL6E9M+5jZxYsg0Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=W0R5AMsROO2I7lAACaedSGkFRroWkqHL1iBWMwP3hefYCICottP630Pd+wPQx9n4nqy9yYMoeFPdXk3WILLxHc6WykoY5k3MYpf9+VP+QMFKbEpuMO7irr9O0hmQQ3XjlG2x9iLcZfN3x53s2n/1niFNNQuPrzA8nLqe+Dd6PRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:bc9e:fcb8:8aa3:5dc0])
	by xavier.telenet-ops.be with bizsmtp
	id f2p02B00D58agq2012p01K; Thu, 25 Jan 2024 15:49:01 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rT11W-00GUsM-N3;
	Thu, 25 Jan 2024 15:49:00 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rT12K-00FluJ-Ma;
	Thu, 25 Jan 2024 15:49:00 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v2 7/9] arm64: dts: renesas: white-hawk: Factor out common parts
Date: Thu, 25 Jan 2024 15:48:57 +0100
Message-Id: <8c05b4d283b5d765fbc6f64cee9a247cded29409.1706192990.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1706192990.git.geert+renesas@glider.be>
References: <cover.1706192990.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Factor out the parts on the White Hawk BreakOut board that are also
present on the White Hawk Single board, so they can be reused when
introducing support for the latter.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
v2:
  - Add Reviewed-by.
---
 .../boot/dts/renesas/r8a779g0-white-hawk.dts  | 56 +------------------
 ...-white-hawk.dts => white-hawk-common.dtsi} |  8 +--
 2 files changed, 3 insertions(+), 61 deletions(-)
 copy arch/arm64/boot/dts/renesas/{r8a779g0-white-hawk.dts => white-hawk-common.dtsi} (77%)

diff --git a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk.dts b/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk.dts
index a9bc258cbf55587f..784d4e8b204ce85a 100644
--- a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk.dts
+++ b/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk.dts
@@ -7,63 +7,9 @@
 
 /dts-v1/;
 #include "r8a779g0-white-hawk-cpu.dtsi"
-#include "white-hawk-csi-dsi.dtsi"
-#include "white-hawk-ethernet.dtsi"
+#include "white-hawk-common.dtsi"
 
 / {
 	model = "Renesas White Hawk CPU and Breakout boards based on r8a779g0";
 	compatible = "renesas,white-hawk-breakout", "renesas,white-hawk-cpu", "renesas,r8a779g0";
-
-	can_transceiver0: can-phy0 {
-		compatible = "nxp,tjr1443";
-		#phy-cells = <0>;
-		enable-gpios = <&gpio1 3 GPIO_ACTIVE_HIGH>;
-		max-bitrate = <5000000>;
-	};
-};
-
-&can_clk {
-	clock-frequency = <40000000>;
-};
-
-&canfd {
-	pinctrl-0 = <&canfd0_pins>, <&canfd1_pins>, <&can_clk_pins>;
-	pinctrl-names = "default";
-
-	status = "okay";
-
-	channel0 {
-		status = "okay";
-		phys = <&can_transceiver0>;
-	};
-
-	channel1 {
-		status = "okay";
-	};
-};
-
-&i2c0 {
-	eeprom@51 {
-		compatible = "rohm,br24g01", "atmel,24c01";
-		label = "breakout-board";
-		reg = <0x51>;
-		pagesize = <8>;
-	};
-};
-
-&pfc {
-	can_clk_pins: can-clk {
-		groups = "can_clk";
-		function = "can_clk";
-	};
-
-	canfd0_pins: canfd0 {
-		groups = "canfd0_data";
-		function = "canfd0";
-	};
-
-	canfd1_pins: canfd1 {
-		groups = "canfd1_data";
-		function = "canfd1";
-	};
 };
diff --git a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk.dts b/arch/arm64/boot/dts/renesas/white-hawk-common.dtsi
similarity index 77%
copy from arch/arm64/boot/dts/renesas/r8a779g0-white-hawk.dts
copy to arch/arm64/boot/dts/renesas/white-hawk-common.dtsi
index a9bc258cbf55587f..c99086edadcaacdb 100644
--- a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk.dts
+++ b/arch/arm64/boot/dts/renesas/white-hawk-common.dtsi
@@ -1,19 +1,15 @@
 // SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 /*
- * Device Tree Source for the R-Car V4H White Hawk CPU and BreakOut boards
+ * Device Tree Source for the common parts shared by the White Hawk BreakOut
+ * and White Hawk Single boards
  *
  * Copyright (C) 2022 Renesas Electronics Corp.
  */
 
-/dts-v1/;
-#include "r8a779g0-white-hawk-cpu.dtsi"
 #include "white-hawk-csi-dsi.dtsi"
 #include "white-hawk-ethernet.dtsi"
 
 / {
-	model = "Renesas White Hawk CPU and Breakout boards based on r8a779g0";
-	compatible = "renesas,white-hawk-breakout", "renesas,white-hawk-cpu", "renesas,r8a779g0";
-
 	can_transceiver0: can-phy0 {
 		compatible = "nxp,tjr1443";
 		#phy-cells = <0>;
-- 
2.34.1


