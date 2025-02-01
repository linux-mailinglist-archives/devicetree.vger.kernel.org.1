Return-Path: <devicetree+bounces-142233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBDBA24991
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 15:40:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C0183A7690
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 14:40:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A7161BEF81;
	Sat,  1 Feb 2025 14:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRyEnErp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B6C1BEF7A
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 14:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738420807; cv=none; b=PHxCBayv0r0z+VRCim+9gOl3hGAzZuKIPp8m7iTj2AkqgX6Wl01BsVxPAZ59E0SE3Ep3JTkfG7cBz71udkj7W1LZ4MowQZBaKFnRpNSst996jedwTeDWJpl3cxSFcwFhI+pwCRwOWb3tYKlGEcsC5zpVp8FvviTEUMrkIw2utmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738420807; c=relaxed/simple;
	bh=UETDdbZTrbH3aziuRcpTKdm0bPASnj4ies4k7W717dM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=EmdaM4XJCkG5OJwe2JKFfmR8vyjoR5Tc56u092Amk7oTfS6zzj2paEXDCKFdMxHKUnDt3u3dG9VGJvwpIEPJNBwGRERjD1FT6K117tV7odqbMDNIzbtAxzFAhTzJVT8XjxfdJGrL1uEZm7XqNm3Z5IwBXiHP/3AjFP+yhuMgH4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRyEnErp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDDE2C4CED3;
	Sat,  1 Feb 2025 14:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738420807;
	bh=UETDdbZTrbH3aziuRcpTKdm0bPASnj4ies4k7W717dM=;
	h=From:Date:Subject:To:Cc:From;
	b=CRyEnErp+gTzppgdtRpJOp9Pyqp7y1CBRVJnXwFkiwt/YjwUPREIeCG6PevpTFbox
	 QR+HrzaSSJsr61BUaGzoW58rxBUUDpCT4ZJcXzzam3uGxWw9HRU5tixVw/X35V/Nw3
	 UnTbOFS3ZvPkszSYK6g/knfVWpweXHwQAyA6yC8XBu85KNACCrnWyp4IPDV7hlE+Qy
	 iynevsfj4OShU+FXm/kQBVJiy9tk5nIsdRDjMyAZANH1ld+ZMq8k0VTc/GGOWZTX/z
	 vdDm6tF3FzGagXbHrm5z7DgjrtPT6BI0SfsC7eN492IRSW+qQsXQLawHxWGbsi01Gd
	 DUgSrEtgXdhmQ==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Sat, 01 Feb 2025 15:39:48 +0100
Subject: [PATCH] arm64: dts: Introduce more nodes to EN7581 SoC evaluation
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250201-en7581-dts-spi-pinctrl-v1-1-aaa4a9dfc4a6@kernel.org>
X-B4-Tracking: v=1; b=H4sIADMynmcC/x3MTQqAIBBA4avErBtQyf6uEi1KpxoIEyciiO6et
 PwW7z0glJgE+uKBRBcLHyFDlwW4bQorIftsMMpYZZRGCo1tNfpTUCJj5ODOtGOlazW3xrqp85D
 jmGjh+x8P4/t+YVDV12gAAAA=
X-Change-ID: 20250201-en7581-dts-spi-pinctrl-4160b825ca9d
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2

Add the following nodes to EN7581 SoC and EN7581 evaluation board:
- clock controller
- rng controller
- pinctrl
- i2c controllers
- spi nand controller

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/airoha/en7581-evb.dts |  8 +++
 arch/arm64/boot/dts/airoha/en7581.dtsi    | 90 +++++++++++++++++++++++++++++++
 2 files changed, 98 insertions(+)

diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/dts/airoha/en7581-evb.dts
index cf58e43dd5b21dbf4f64e305a4b4a2daee100858..1126da4b795f5d5df9725ec4d75cd9353b011710 100644
--- a/arch/arm64/boot/dts/airoha/en7581-evb.dts
+++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
@@ -24,3 +24,11 @@ memory@80000000 {
 		reg = <0x0 0x80000000 0x2 0x00000000>;
 	};
 };
+
+&i2c0 {
+	status = "okay";
+};
+
+&snfi {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index 55eb1762fb11364877695960f5a2d3e42caf8611..b1cf650efd78c6c20d19e7f18c204cf5862215c0 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -2,6 +2,7 @@
 
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/en7523-clk.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -150,5 +151,94 @@ uart1: serial@1fbf0000 {
 			interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
 			clock-frequency = <1843200>;
 		};
+
+		scuclk: clock-controller@1fa20000 {
+			compatible = "airoha,en7581-scu";
+			reg = <0x0 0x1fb00000 0x0 0x970>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
+		rng@1faa1000 {
+			compatible = "airoha,en7581-trng";
+			reg = <0x0 0x1faa1000 0x0 0xc04>;
+			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		system-controller@1fbf0200 {
+			compatible = "syscon", "simple-mfd";
+			reg = <0x0 0x1fbf0200 0x0 0xc0>;
+
+			en7581_pinctrl: pinctrl {
+				compatible = "airoha,en7581-pinctrl";
+
+				interrupt-parent = <&gic>;
+				interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+		};
+
+		i2cclock: i2cclock@0 {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+
+			/* 20 MHz */
+			clock-frequency = <20000000>;
+		};
+
+		i2c0: i2c0@1fbf8000 {
+			compatible = "mediatek,mt7621-i2c";
+			reg = <0x0 0x1fbf8000 0x0 0x100>;
+
+			clocks = <&i2cclock>;
+
+			/* 100 kHz */
+			clock-frequency = <100000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disable";
+		};
+
+		i2c1: i2c1@1fbf8100 {
+			compatible = "mediatek,mt7621-i2c";
+			reg = <0x0 0x1fbf8100 0x0 0x100>;
+
+			clocks = <&i2cclock>;
+
+			/* 100 kHz */
+			clock-frequency = <100000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disable";
+		};
+
+		snfi: spi@1fa10000 {
+			compatible = "airoha,en7581-snand";
+			reg = <0x0 0x1fa10000 0x0 0x140>,
+			      <0x0 0x1fa11000 0x0 0x160>;
+
+			clocks = <&scuclk EN7523_CLK_SPI>;
+			clock-names = "spi";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+
+			spi_nand: nand@0 {
+				compatible = "spi-nand";
+				reg = <0>;
+				spi-max-frequency = <50000000>;
+				spi-tx-bus-width = <1>;
+				spi-rx-bus-width = <2>;
+			};
+		};
 	};
 };

---
base-commit: 7605336e9d136c14c94482ce7385de783f2f748e
change-id: 20250201-en7581-dts-spi-pinctrl-4160b825ca9d

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>


