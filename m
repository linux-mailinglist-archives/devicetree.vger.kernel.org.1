Return-Path: <devicetree+bounces-149253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7700CA3EDD6
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 09:03:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86B9C3BFD62
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 08:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D08441FF5EB;
	Fri, 21 Feb 2025 08:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+o7SiXq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC90D1FF1D6
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740124912; cv=none; b=PsO/ph1c8iLDI7vWjYylaQNR3c7uI0xEBVkrjxqg6YjHXGdF9i0OWXIdSmtiQs5N13/OT8OUt+Eo22zJYaHo7gFBEzrWzD1Q2Kx515XctCFJKAyd+7hLbV7OeVXYzZr3VlHZx86StIcb3hkH6gDHeDgx54w47PnPhSgWYniD/mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740124912; c=relaxed/simple;
	bh=d1CDwTsBTP+BqLkYz65AF4ewmKVskxzyHXRhBWHDOyY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YO2LaFxryD/G9+cGeOXtKJUZ+hgWGyF6GvuXT/jvTmCvstMzBC7eqo3xtp9xLP4tGKW2Lv4weSfbZbnQDDPPLSCv8LMA0W6qlhoTrhag2WP3sIG9/77/b47fsVWxb/Y+ISCj0r7SWZKHjEo7UirWAJhX2Zz5LTeZbp/zxRqF0es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+o7SiXq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD593C4CED6;
	Fri, 21 Feb 2025 08:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740124912;
	bh=d1CDwTsBTP+BqLkYz65AF4ewmKVskxzyHXRhBWHDOyY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=A+o7SiXqRFS7rUxABwoj9HC1S0EXSdZxhsjfiUfzU9Q2cHpQdP3Uen2pQnRr9QOH1
	 tBiMNEqhylrghzP5UVGOMetTwJAZL6a7mInWISy2Qlpb/74x5b+6Ofp3u9zJpcYbs8
	 SVedrSvW4Z331wszJ67JnL2+3wxxak2PBtEdErZGQOV5h/Hnc3hLKO1oJmDbLSqtwk
	 viDYQ1yJh2sTALAyYjHg4YGRI5hliAEw+r8P7TCBUe6lSFw7IWYstveVYedIEKJcA4
	 xOysybZx68XvyOV+ZZ+H+Cjb33M81J0CJZyLEEBLT2+QMIgydSBgxir2kB298fsdYn
	 pHOg789G4haSQ==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Fri, 21 Feb 2025 09:01:15 +0100
Subject: [PATCH v3 1/2] arm64: dts: airoha: en7581: Add more nodes to
 EN7581 SoC evaluation board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-en7581-dts-spi-pinctrl-v3-1-4719e2d01555@kernel.org>
References: <20250221-en7581-dts-spi-pinctrl-v3-0-4719e2d01555@kernel.org>
In-Reply-To: <20250221-en7581-dts-spi-pinctrl-v3-0-4719e2d01555@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Christian Marangi <ansuelsmth@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2

Introduce the following nodes to EN7581 SoC and EN7581 evaluation board:
- rng controller
- pinctrl
- i2c controllers

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/airoha/en7581-evb.dts |  4 +++
 arch/arm64/boot/dts/airoha/en7581.dtsi    | 60 +++++++++++++++++++++++++++++++
 2 files changed, 64 insertions(+)

diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/dts/airoha/en7581-evb.dts
index a4cdcadd1ae547cfc79553208f991767602705fd..d53b72d18242e3cee8b37c7b1b719d662fd6db8d 100644
--- a/arch/arm64/boot/dts/airoha/en7581-evb.dts
+++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
@@ -64,3 +64,7 @@ reserved_bmt@7e00000 {
 		};
 	};
 };
+
+&i2c0 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index dbd296b049f99721186ab435d6e6b8dff73b73af..9a419796594d3a99e1187dcca622469bf5a888c3 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -3,6 +3,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/en7523-clk.h>
+#include <dt-bindings/reset/airoha,en7581-reset.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -123,6 +124,12 @@ timer {
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
@@ -181,5 +188,58 @@ uart1: serial@1fbf0000 {
 			interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
 			clock-frequency = <1843200>;
 		};
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
 	};
 };

-- 
2.48.1


