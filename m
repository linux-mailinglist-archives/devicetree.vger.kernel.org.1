Return-Path: <devicetree+bounces-143081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DF79CA27FF9
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 01:08:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D02C51886D7A
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 00:08:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C47173;
	Wed,  5 Feb 2025 00:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5DerNbv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE001163
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 00:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738714114; cv=none; b=sdVRIpgqtTbknYpxRF6eS5k7iKFW2ZZI5mSl5r6dieHEhBZfR+irXcpW6SPl8WWlkElIWunBmD17BVfsG0YXjTUEa275bO+Cc1W6ELRXK0E09rCpEJil0aSgsPWDpwZHZrfmQz1kRwflVBPSZPInLTzyikpUpP5PefyxNGSk/HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738714114; c=relaxed/simple;
	bh=+cEOMy8ydUtssgVKpjALmKCooZqZQVWRptFfWsZE5Cs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=bOCF1BvUCqLNIutTc0tF313zdSuO412SQMOeNYFZYq1bgCSSJ3C14HcODdxfylaLHbdXSxFGRGPKDHr3gpIwojVRiM+DemF3oMKJwASLYR4D7znI1vRsNHKLCI63RiL8sRsrOdd93fSPu0JlpWFXrzdJMl+xXSiR36LpUX3g34A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5DerNbv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C02E4C4CEE4;
	Wed,  5 Feb 2025 00:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738714113;
	bh=+cEOMy8ydUtssgVKpjALmKCooZqZQVWRptFfWsZE5Cs=;
	h=From:Date:Subject:To:Cc:From;
	b=u5DerNbvJmIvph3GFJrq8qTVKNZcshmpkkS1p4LCVDMQvMblFIJyseVAW4OiWTpnM
	 sFWf/JIoDKA/mVla0JXjQbO74gxJ4Tftl2dYqHnBmRteabC2T4xQ+f5KN5mf0+ZVDe
	 3/d56xRYtyvvSU/ZFhNXHZhZ/QFlDaq39oTZrPorjQ2dVnO4tIwBPihVvJ6ysS+WOO
	 NrOKZKkAM8EjnyDUJcDOy9BHwjG0dAmfkjI9hoRr9hwFFAJfrwRaBsPw5TzaKg2SKo
	 asr+smq5AskK5H1xOkmzWsqEc/GSU+4s0Y7zHnSMWvkTqJYZkDWjiTDquAU/Y+kwAh
	 iQggh3+EBViIg==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Wed, 05 Feb 2025 01:08:24 +0100
Subject: [PATCH v2] arm64: dts: airoha: en7581: Add more nodes to EN7581
 SoC evaluation board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-en7581-dts-spi-pinctrl-v2-1-ae61df01802a@kernel.org>
X-B4-Tracking: v=1; b=H4sIAPeromcC/4WNQQ6CMBBFr0Jm7Zi2oYiuvIdhUcsAE0lppoRoS
 O9u5QIu30v++zskEqYEt2oHoY0TL6GAOVXgJxdGQu4Lg1HGKqM0UrjYVmO/JkyRMXLwq8xY60Y
 9W2O9u/ZQxlFo4PcRfnSFJ07rIp/jZ9M/+ze5adTonKtLcvC1a+4vkkDzeZERupzzF+3sJvq9A
 AAA
X-Change-ID: 20250201-en7581-dts-spi-pinctrl-4160b825ca9d
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2

Introduce the following nodes to EN7581 SoC and EN7581 evaluation board:
- clock controller
- rng controller
- pinctrl
- i2c controllers
- spi nand controller

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
Changes in v2:
- Fix dtschema warnings
- Fix i2c nodes generic name
- Fix commit log
- Link to v1: https://lore.kernel.org/r/20250201-en7581-dts-spi-pinctrl-v1-1-aaa4a9dfc4a6@kernel.org
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
index 55eb1762fb11364877695960f5a2d3e42caf8611..8e3c53edce2e40103e825b3123d54e2c9f1e8638 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -2,6 +2,8 @@
 
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/en7523-clk.h>
+#include <dt-bindings/reset/airoha,en7581-reset.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -122,6 +124,12 @@ timer {
 			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
 	};
 
+	clk20m: clock-20000000 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <20000000>;
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -150,5 +158,87 @@ uart1: serial@1fbf0000 {
 			interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
 			clock-frequency = <1843200>;
 		};
+
+		scuclk: clock-controller@1fb00000 {
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
+			compatible = "airoha,en7581-gpio-sysctl", "syscon",
+				     "simple-mfd";
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
+		i2c0: i2c@1fbf8000 {
+			compatible = "mediatek,mt7621-i2c";
+			reg = <0x0 0x1fbf8000 0x0 0x100>;
+
+			resets = <&scuclk EN7581_I2C2_RST>;
+
+			clocks = <&clk20m>;
+			clock-frequency = <100000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+		};
+
+		i2c1: i2c@1fbf8100 {
+			compatible = "mediatek,mt7621-i2c";
+			reg = <0x0 0x1fbf8100 0x0 0x100>;
+
+			resets = <&scuclk EN7581_I2C_MASTER_RST>;
+
+			clocks = <&clk20m>;
+			clock-frequency = <100000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
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


