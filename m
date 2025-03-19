Return-Path: <devicetree+bounces-158851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B53A68582
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 08:07:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C7C5189EAC1
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 07:07:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29FC9250BF0;
	Wed, 19 Mar 2025 07:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Svjoc1FP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A2E2505BA;
	Wed, 19 Mar 2025 07:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742368001; cv=none; b=MsYAG4xeC2wjfKOf97jRH8larOkDJ9O4mJeZssbZYbAjSAuw71msw5iE18wS4VvlodNXT9LQgtzP2pKw977RbP1NQyZOh0o8uJIr4ob82gRUzWZlYEywSFet4eZJDXowhLhMbg59VJdQn9KlY4f1XuPajYfETzPhh3zX+dAz49U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742368001; c=relaxed/simple;
	bh=L6MkZHTa5qeCOz4qZ+pT43UuV0cNXUyMHB6RPULXJw8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YYhdpyRAReC77g5ZM5txHwA6pH3aPWMUaUG85ibsZIQT3S3UTy+7J13CyFOitTb3W5iUs6Im33btqFkBJ5iZBZJunVZII+xksdBVRdgUm9uXALouqSTGkEPHSo7exStfr9AgxjCu7lNd4dyNIMAzo5lMxaRlKUfiH5C+PEELMR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Svjoc1FP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 874A9C4CEEE;
	Wed, 19 Mar 2025 07:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742368000;
	bh=L6MkZHTa5qeCOz4qZ+pT43UuV0cNXUyMHB6RPULXJw8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Svjoc1FPGQIvVw3hgjhB3L18A6lol/7wFNcA14gX0yknCQuvhXDfkE3DbJiXHWKt4
	 SEH8GJ9rgurxk5beMqQB4CubmCOgfbJhhwPOE61f+LWLD3v4nAxOv9GTysciyXZPr0
	 qqWnGXCTPgIyqAXvR6mvSXm9pcpjJgR/tcqH+QPRloxo3nDjSZTf9BQgFbxh1fz9ai
	 cwT/GOy6TvoiRxIfrKyQ1FnDD2UaWNhO/rFA9LNrCQ/cfXPF2fizzdX5TZdVUwG9tJ
	 4aYNaSqBxck9wK8MXnL5EtN+8h1X0CSo5UzMuTI6RWG8DXQAYWuFX4fj4RQYn68EQg
	 ZqxCxYzzgObOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AA01C35FFC;
	Wed, 19 Mar 2025 07:06:40 +0000 (UTC)
From: jiebing chen via B4 Relay <devnull+jiebing.chen.amlogic.com@kernel.org>
Date: Wed, 19 Mar 2025 15:04:49 +0800
Subject: [PATCH v4 6/6] arm64: dts: amlogic: Add Amlogic S4 Audio
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250319-audio_drvier-v4-6-686867fad719@amlogic.com>
References: <20250319-audio_drvier-v4-0-686867fad719@amlogic.com>
In-Reply-To: <20250319-audio_drvier-v4-0-686867fad719@amlogic.com>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org, 
 jian.xu@amlogic.com, shuai.li@amlogic.com, zhe.wang@amlogic.com, 
 jiebing chen <jiebing.chen@amlogic.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742367998; l=20590;
 i=jiebing.chen@amlogic.com; s=20250110; h=from:subject:message-id;
 bh=GMcNVDtyurUnbs5TB/79fdhlk8m+mbkFSqVmbmw/JH0=;
 b=pCuMCmYVxRm/Hax+BwIxm4hAy+gvc0o62niCgAWPAOxQzEDx2lZUejQzD77jfAJf0qosADiYs
 JZFSq82QgqQC2FVuKxe0rQLGBH70GUYNOk0iw2FXEdTFYXLtC3qsQo8
X-Developer-Key: i=jiebing.chen@amlogic.com; a=ed25519;
 pk=6rFvvF45A84pLNRy03hfUHeROxHCnZ+1KAGw/DoqKic=
X-Endpoint-Received: by B4 Relay for jiebing.chen@amlogic.com/20250110 with
 auth_id=316
X-Original-From: jiebing chen <jiebing.chen@amlogic.com>
Reply-To: jiebing.chen@amlogic.com

From: jiebing chen <jiebing.chen@amlogic.com>

Add basic audio driver support for the Amlogic S4 based
Amlogic AQ222 board. use hifipll pll (1179648000) to
support 768k sample rate and 24 bit (s24_le), 24bit sclk
is 48fs, use mpll0 (270950400) to support 705.6k sample
rate and 32bit, use mpll1 (338688000) to support 705.6k
and 24bit.

Signed-off-by: jiebing chen <jiebing.chen@amlogic.com>
---
 .../boot/dts/amlogic/meson-s4-s805x2-aq222.dts     | 219 ++++++++++++
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi          | 372 ++++++++++++++++++++-
 2 files changed, 589 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts b/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
index 6730c44642d2910d42ec0c4adf49fefc3514dbec..6fccaeb0e151e959af1cbe04d9dca50d70f0b7fc 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
@@ -75,6 +75,19 @@ vddio_ao1v8: regulator-vddio-ao1v8 {
 	       regulator-always-on;
 	};
 
+	vcc5v_reg: regulator-vcc-5v {
+		compatible = "regulator-fixed";
+		vin-supply = <&main_12v>;
+		regulator-name = "VCC5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio GPIOH_7 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <7000>;
+		enable-active-high;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
 	/* SY8120B1ABC DC/DC Regulator. */
 	vddcpu: regulator-vddcpu {
 		compatible = "pwm-regulator";
@@ -129,6 +142,212 @@ vddcpu: regulator-vddcpu {
 				<699000 98>,
 				<689000 100>;
 	};
+	dmics: audio-codec-1 {
+		compatible = "dmic-codec";
+		#sound-dai-cells = <0>;
+		num-channels = <2>;
+		wakeup-delay-ms = <50>;
+		sound-name-prefix = "MIC";
+	};
+
+	dioo2133: audio-amplifier-0 {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio GPIOH_8 GPIO_ACTIVE_HIGH>;
+		VCC-supply = <&vcc5v_reg>;
+		sound-name-prefix = "10U2";
+	};
+
+	spdif_dir: audio-spdif-in {
+		compatible = "linux,spdif-dir";
+		#sound-dai-cells = <0>;
+		sound-name-prefix = "DIR";
+	};
+
+	spdif_dit: audio-spdif-out {
+		compatible = "linux,spdif-dit";
+		#sound-dai-cells = <0>;
+		sound-name-prefix = "DIT";
+	};
+
+	sound {
+		compatible = "amlogic,axg-sound-card";
+		model = "aq222";
+		audio-widgets = "Line", "Lineout";
+		audio-aux-devs = <&tdmout_a>, <&tdmout_b>, <&tdmout_c>,
+				 <&tdmin_a>, <&tdmin_b>, <&tdmin_c>,
+				 <&tdmin_lb>, <&dioo2133>;
+		audio-routing = "TDMOUT_A IN 0", "FRDDR_A OUT 0",
+				"TDMOUT_A IN 1", "FRDDR_B OUT 0",
+				"TDMOUT_A IN 2", "FRDDR_C OUT 0",
+				"TDM_A Playback", "TDMOUT_A OUT",
+				"TDMOUT_B IN 0", "FRDDR_A OUT 1",
+				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
+				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
+				"TDM_B Playback", "TDMOUT_B OUT",
+				"TDMOUT_C IN 0", "FRDDR_A OUT 2",
+				"TDMOUT_C IN 1", "FRDDR_B OUT 2",
+				"TDMOUT_C IN 2", "FRDDR_C OUT 2",
+				"TDM_C Playback", "TDMOUT_C OUT",
+				"SPDIFOUT_A IN 0", "FRDDR_A OUT 3",
+				"SPDIFOUT_A IN 1", "FRDDR_B OUT 3",
+				"SPDIFOUT_A IN 2", "FRDDR_C OUT 3",
+				"SPDIFOUT_B IN 0", "FRDDR_A OUT 4",
+				"SPDIFOUT_B IN 1", "FRDDR_B OUT 4",
+				"SPDIFOUT_B IN 2", "FRDDR_C OUT 4",
+				"TDMIN_A IN 0", "TDM_A Capture",
+				"TDMIN_A IN 1", "TDM_B Capture",
+				"TDMIN_A IN 2", "TDM_C Capture",
+				"TDMIN_A IN 3", "TDM_A Loopback",
+				"TDMIN_A IN 4", "TDM_B Loopback",
+				"TDMIN_A IN 5", "TDM_C Loopback",
+				"TDMIN_B IN 0", "TDM_A Capture",
+				"TDMIN_B IN 1", "TDM_B Capture",
+				"TDMIN_B IN 2", "TDM_C Capture",
+				"TDMIN_B IN 3", "TDM_A Loopback",
+				"TDMIN_B IN 4", "TDM_B Loopback",
+				"TDMIN_B IN 5", "TDM_C Loopback",
+				"TDMIN_C IN 0", "TDM_A Capture",
+				"TDMIN_C IN 1", "TDM_B Capture",
+				"TDMIN_C IN 2", "TDM_C Capture",
+				"TDMIN_C IN 3", "TDM_A Loopback",
+				"TDMIN_C IN 4", "TDM_B Loopback",
+				"TDMIN_C IN 5", "TDM_C Loopback",
+				"TDMIN_LB IN 3", "TDM_A Capture",
+				"TDMIN_LB IN 4", "TDM_B Capture",
+				"TDMIN_LB IN 5", "TDM_C Capture",
+				"TDMIN_LB IN 0", "TDM_A Loopback",
+				"TDMIN_LB IN 1", "TDM_B Loopback",
+				"TDMIN_LB IN 2", "TDM_C Loopback",
+				"TODDR_A IN 0", "TDMIN_A OUT",
+				"TODDR_B IN 0", "TDMIN_A OUT",
+				"TODDR_C IN 0", "TDMIN_A OUT",
+				"TODDR_A IN 1", "TDMIN_B OUT",
+				"TODDR_B IN 1", "TDMIN_B OUT",
+				"TODDR_C IN 1", "TDMIN_B OUT",
+				"TODDR_A IN 2", "TDMIN_C OUT",
+				"TODDR_B IN 2", "TDMIN_C OUT",
+				"TODDR_C IN 2", "TDMIN_C OUT",
+				"TODDR_A IN 3", "SPDIFIN Capture",
+				"TODDR_B IN 3", "SPDIFIN Capture",
+				"TODDR_C IN 3", "SPDIFIN Capture",
+				"TODDR_A IN 6", "TDMIN_LB OUT",
+				"TODDR_B IN 6", "TDMIN_LB OUT",
+				"TODDR_C IN 6", "TDMIN_LB OUT",
+				"10U2 INL", "ACODEC LOLP",
+				"10U2 INR", "ACODEC LORP",
+				"Lineout", "10U2 OUTL",
+				"Lineout", "10U2 OUTR";
+		assigned-clocks = <&clkc_pll CLKID_HIFI_PLL>,
+				  <&clkc_pll CLKID_MPLL0>,
+				  <&clkc_pll CLKID_MPLL1>;
+		assigned-clock-rates = <1179648000>,
+				       <270950400>,
+				       <338688000>;
+
+		dai-link-0 {
+			sound-dai = <&frddr_a>;
+		};
+
+		dai-link-1 {
+			sound-dai = <&frddr_b>;
+		};
+
+		dai-link-2 {
+			sound-dai = <&frddr_c>;
+		};
+
+		dai-link-3 {
+			sound-dai = <&toddr_a>;
+		};
+
+		dai-link-4 {
+			sound-dai = <&toddr_b>;
+		};
+
+		dai-link-5 {
+			sound-dai = <&toddr_c>;
+		};
+
+		dai-link-6 {
+			sound-dai = <&tdmif_a>;
+			dai-format = "i2s";
+			dai-tdm-slot-tx-mask-0 = <1 1>;
+			mclk-fs = <256>;
+			codec-0 {
+				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_A>;
+			};
+			codec-1 {
+				sound-dai = <&toacodec TOACODEC_IN_A>;
+			};
+		};
+
+		dai-link-7 {
+			sound-dai = <&tdmif_b>;
+			dai-format = "i2s";
+			dai-tdm-slot-tx-mask-0 = <1 1>;
+			mclk-fs = <256>;
+			codec-0 {
+				sound-dai = <&toacodec TOACODEC_IN_B>;
+			};
+			codec-1 {
+				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_B>;
+			};
+		};
+
+		/* 8ch HDMI interface */
+		dai-link-8 {
+			sound-dai = <&tdmif_c>;
+			dai-format = "i2s";
+			dai-tdm-slot-tx-mask-0 = <1 1>;
+			dai-tdm-slot-tx-mask-1 = <1 1>;
+			dai-tdm-slot-tx-mask-2 = <1 1>;
+			dai-tdm-slot-tx-mask-3 = <1 1>;
+			mclk-fs = <256>;
+			codec-0 {
+				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_C>;
+			};
+		};
+
+		/* spdif hdmi and coax output */
+		dai-link-9 {
+			sound-dai = <&spdifout_a>;
+
+			codec-0 {
+				sound-dai = <&spdif_dit>;
+			};
+
+			codec-1 {
+				sound-dai = <&tohdmitx TOHDMITX_SPDIF_IN_A>;
+			};
+		};
+
+		/* spdif hdmi interface */
+		dai-link-10 {
+			sound-dai = <&spdifout_b>;
+
+			codec {
+				sound-dai = <&tohdmitx TOHDMITX_SPDIF_IN_B>;
+			};
+		};
+
+		/* spdif coax input */
+		dai-link-11 {
+			sound-dai = <&spdifin>;
+
+			codec {
+				sound-dai = <&spdif_dir>;
+			};
+		};
+
+		dai-link-12 {
+			sound-dai = <&toacodec TOACODEC_OUT>;
+
+			codec {
+				sound-dai = <&acodec>;
+			};
+		};
+	};
+
 };
 
 &pwm_ef {
diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
index 957577d986c0675a503115e1ccbc4387c2051620..83edafc2646438e3e6b1945fa1c4b327254a4131 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
@@ -11,7 +11,11 @@
 #include <dt-bindings/clock/amlogic,s4-peripherals-clkc.h>
 #include <dt-bindings/power/meson-s4-power.h>
 #include <dt-bindings/reset/amlogic,meson-s4-reset.h>
-
+#include <dt-bindings/clock/axg-audio-clkc.h>
+#include <dt-bindings/reset/amlogic,meson-axg-audio-arb.h>
+#include <dt-bindings/reset/amlogic,meson-g12a-audio-reset.h>
+#include <dt-bindings/sound/meson-g12a-toacodec.h>
+#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 / {
 	cpus {
 		#address-cells = <2>;
@@ -46,6 +50,36 @@ cpu3: cpu@3 {
 		};
 	};
 
+	tdmif_a: audio-controller-0 {
+		compatible = "amlogic,axg-tdm-iface";
+		#sound-dai-cells = <0>;
+		sound-name-prefix = "TDM_A";
+		clocks = <&clkc_audio AUD_CLKID_MST_A_SCLK>,
+			 <&clkc_audio AUD_CLKID_MST_A_LRCLK>,
+			 <&clkc_audio AUD_CLKID_MST_A_MCLK>;
+		clock-names = "sclk", "lrclk","mclk";
+	};
+
+	tdmif_b: audio-controller-1 {
+		compatible = "amlogic,axg-tdm-iface";
+		#sound-dai-cells = <0>;
+		sound-name-prefix = "TDM_B";
+		clocks = <&clkc_audio AUD_CLKID_MST_A_SCLK>,
+			 <&clkc_audio AUD_CLKID_MST_B_LRCLK>,
+			 <&clkc_audio AUD_CLKID_MST_B_MCLK>;
+		clock-names = "sclk", "lrclk","mclk";
+	};
+
+	tdmif_c: audio-controller-2 {
+		compatible = "amlogic,axg-tdm-iface";
+		#sound-dai-cells = <0>;
+		sound-name-prefix = "TDM_C";
+		clocks = <&clkc_audio AUD_CLKID_MST_C_SCLK>,
+			 <&clkc_audio AUD_CLKID_MST_C_LRCLK>,
+			 <&clkc_audio AUD_CLKID_MST_C_MCLK>;
+		clock-names = "sclk", "lrclk","mclk";
+	};
+
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
@@ -101,7 +135,6 @@ apb4: bus@fe000000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges = <0x0 0x0 0x0 0xfe000000 0x0 0x480000>;
-
 			clkc_periphs: clock-controller@0 {
 				compatible = "amlogic,s4-peripherals-clkc";
 				reg = <0x0 0x0 0x0 0x49c>;
@@ -134,6 +167,17 @@ clkc_pll: clock-controller@8000 {
 				#clock-cells = <1>;
 			};
 
+			acodec: audio-controller@1a000 {
+				compatible = "amlogic,t9015";
+				reg = <0x0 0x1A000 0x0 0x14>;
+				#sound-dai-cells = <0>;
+				sound-name-prefix = "ACODEC";
+				clocks = <&clkc_periphs CLKID_ACODEC>;
+				clock-names = "pclk";
+				resets = <&reset RESET_ACODEC>;
+				AVDD-supply = <&vddio_ao1v8>;
+			};
+
 			watchdog@2100 {
 				compatible = "amlogic,s4-wdt", "amlogic,t7-wdt";
 				reg = <0x0 0x2100 0x0 0x10>;
@@ -850,3 +894,327 @@ emmc: mmc@fe08c000 {
 		};
 	};
 };
+
+&apb4 {
+	audio: bus@330000 {
+		compatible = "simple-bus";
+		reg = <0x0 0x330000 0x0 0x1000>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges = <0x0 0x0 0x0 0x330000 0x0 0x1000>;
+
+		clkc_audio: clock-controller@0 {
+			compatible = "amlogic,s4-audio-clkc";
+			reg = <0x0 0x0 0x0 0xd8>,
+			      <0x0 0xE80 0x0 0x10>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			power-domains = <&pwrc PWRC_S4_AUDIO_ID>;
+			clocks = <&clkc_periphs CLKID_AUDIO>,
+				 <&clkc_pll CLKID_MPLL0>,
+				 <&clkc_pll CLKID_MPLL1>,
+				 <&clkc_pll CLKID_MPLL2>,
+				 <&clkc_pll CLKID_MPLL3>,
+				 <&clkc_pll CLKID_HIFI_PLL>,
+				 <&clkc_pll CLKID_FCLK_DIV3>,
+				 <&clkc_pll CLKID_FCLK_DIV4>,
+				 <&clkc_pll CLKID_FCLK_DIV5>;
+			clock-names = "pclk",
+				      "mst_in0",
+				      "mst_in1",
+				      "mst_in2",
+				      "mst_in3",
+				      "mst_in4",
+				      "mst_in5",
+				      "mst_in6",
+				      "mst_in7";
+
+			resets = <&reset RESET_AUDIO>;
+		};
+
+		toddr_a: audio-controller@100 {
+			compatible = "amlogic,sm1-toddr",
+				     "amlogic,axg-toddr";
+			reg = <0x0 0x100 0x0 0x2c>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "TODDR_A";
+			interrupts = <GIC_SPI 32 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc_audio AUD_CLKID_TODDR_A>;
+			resets = <&arb AXG_ARB_TODDR_A>,
+				 <&clkc_audio AUD_RESET_TODDR_A>;
+			reset-names = "arb", "rst";
+			amlogic,fifo-depth = <8192>;
+		};
+
+		toddr_b: audio-controller@140 {
+			compatible = "amlogic,sm1-toddr",
+				     "amlogic,axg-toddr";
+			reg = <0x0 0x140 0x0 0x2c>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "TODDR_B";
+			interrupts = <GIC_SPI 33 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc_audio AUD_CLKID_TODDR_B>;
+			resets = <&arb AXG_ARB_TODDR_B>,
+				 <&clkc_audio AUD_RESET_TODDR_B>;
+			reset-names = "arb", "rst";
+			amlogic,fifo-depth = <256>;
+		};
+
+		toddr_c: audio-controller@180 {
+			compatible = "amlogic,sm1-toddr",
+				     "amlogic,axg-toddr";
+			reg = <0x0 0x180 0x0 0x2c>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "TODDR_C";
+			interrupts = <GIC_SPI 34 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc_audio AUD_CLKID_TODDR_C>;
+			resets = <&arb AXG_ARB_TODDR_C>,
+				 <&clkc_audio AUD_RESET_TODDR_C>;
+			reset-names = "arb", "rst";
+			amlogic,fifo-depth = <256>;
+		};
+
+		frddr_a: audio-controller@1c0 {
+			compatible = "amlogic,sm1-frddr",
+				     "amlogic,axg-frddr";
+			reg = <0x0 0x1c0 0x0 0x2c>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "FRDDR_A";
+			interrupts = <GIC_SPI 36 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc_audio AUD_CLKID_FRDDR_A>;
+			resets = <&arb AXG_ARB_FRDDR_A>,
+				 <&clkc_audio AUD_RESET_FRDDR_A>;
+			reset-names = "arb", "rst";
+			amlogic,fifo-depth = <512>;
+		};
+
+		frddr_b: audio-controller@200 {
+			compatible = "amlogic,sm1-frddr",
+				     "amlogic,axg-frddr";
+			reg = <0x0 0x200 0x0 0x2c>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "FRDDR_B";
+			interrupts = <GIC_SPI 37 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc_audio AUD_CLKID_FRDDR_B>;
+			resets = <&arb AXG_ARB_FRDDR_B>,
+				 <&clkc_audio AUD_RESET_FRDDR_B>;
+			reset-names = "arb", "rst";
+			amlogic,fifo-depth = <256>;
+		};
+
+		frddr_c: audio-controller@240 {
+			compatible = "amlogic,sm1-frddr",
+				     "amlogic,axg-frddr";
+			reg = <0x0 0x240 0x0 0x2c>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "FRDDR_C";
+			interrupts = <GIC_SPI 38 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc_audio AUD_CLKID_FRDDR_C>;
+			resets = <&arb AXG_ARB_FRDDR_C>,
+				 <&clkc_audio AUD_RESET_FRDDR_C>;
+			reset-names = "arb", "rst";
+			amlogic,fifo-depth = <256>;
+		};
+
+		arb: reset-controller@280 {
+			compatible = "amlogic,meson-sm1-audio-arb";
+			reg = <0x0 0x280 0x0 0x4>;
+			#reset-cells = <1>;
+			clocks = <&clkc_audio AUD_CLKID_DDR_ARB>;
+		};
+
+		tdmin_a: audio-controller@300 {
+			compatible = "amlogic,sm1-tdmin";
+			reg = <0x0 0x300 0x0 0x40>;
+			sound-name-prefix = "TDMIN_A";
+			resets = <&clkc_audio AUD_RESET_TDMIN_A>;
+			clocks = <&clkc_audio AUD_CLKID_TDMIN_A>,
+				 <&clkc_audio AUD_CLKID_TDMIN_A_SCLK>,
+				 <&clkc_audio AUD_CLKID_TDMIN_A_SCLK_SEL>,
+				 <&clkc_audio AUD_CLKID_TDMIN_A_LRCLK>,
+				 <&clkc_audio AUD_CLKID_TDMIN_A_LRCLK>;
+			clock-names = "pclk", "sclk", "sclk_sel",
+				      "lrclk", "lrclk_sel";
+		};
+
+		tdmin_b: audio-controller@340 {
+			compatible = "amlogic,sm1-tdmin";
+			reg = <0x0 0x340 0x0 0x40>;
+			sound-name-prefix = "TDMIN_B";
+			resets = <&clkc_audio AUD_RESET_TDMIN_B>;
+			clocks = <&clkc_audio AUD_CLKID_TDMIN_B>,
+				 <&clkc_audio AUD_CLKID_TDMIN_B_SCLK>,
+				 <&clkc_audio AUD_CLKID_TDMIN_B_SCLK_SEL>,
+				 <&clkc_audio AUD_CLKID_TDMIN_B_LRCLK>,
+				 <&clkc_audio AUD_CLKID_TDMIN_B_LRCLK>;
+			clock-names = "pclk", "sclk", "sclk_sel",
+				      "lrclk", "lrclk_sel";
+		};
+
+		tdmin_c: audio-controller@380 {
+			compatible = "amlogic,sm1-tdmin";
+			reg = <0x0 0x380 0x0 0x40>;
+			sound-name-prefix = "TDMIN_C";
+			resets = <&clkc_audio AUD_RESET_TDMIN_C>;
+			clocks = <&clkc_audio AUD_CLKID_TDMIN_C>,
+				 <&clkc_audio AUD_CLKID_TDMIN_C_SCLK>,
+				 <&clkc_audio AUD_CLKID_TDMIN_C_SCLK_SEL>,
+				 <&clkc_audio AUD_CLKID_TDMIN_C_LRCLK>,
+				 <&clkc_audio AUD_CLKID_TDMIN_C_LRCLK>;
+			clock-names = "pclk", "sclk", "sclk_sel",
+				      "lrclk", "lrclk_sel";
+		};
+
+		tdmin_lb: audio-controller@3c0 {
+			compatible = "amlogic,sm1-tdmin";
+			reg = <0x0 0x3c0 0x0 0x40>;
+			sound-name-prefix = "TDMIN_LB";
+			resets = <&clkc_audio AUD_RESET_TDMIN_LB>;
+			clocks = <&clkc_audio AUD_CLKID_TDMIN_LB>,
+				 <&clkc_audio AUD_CLKID_TDMIN_LB_SCLK>,
+				 <&clkc_audio AUD_CLKID_TDMIN_LB_SCLK_SEL>,
+				 <&clkc_audio AUD_CLKID_TDMIN_LB_LRCLK>,
+				 <&clkc_audio AUD_CLKID_TDMIN_LB_LRCLK>;
+			clock-names = "pclk", "sclk", "sclk_sel",
+				      "lrclk", "lrclk_sel";
+		};
+
+		spdifin: audio-controller@400 {
+			compatible = "amlogic,g12a-spdifin",
+				     "amlogic,axg-spdifin";
+			reg = <0x0 0x400 0x0 0x30>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "SPDIFIN";
+			interrupts = <GIC_SPI 151 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc_audio AUD_CLKID_SPDIFIN>,
+			<&clkc_audio AUD_CLKID_SPDIFIN_CLK>;
+			clock-names = "pclk", "refclk";
+			resets = <&clkc_audio AUD_RESET_SPDIFIN>;
+		};
+
+		spdifout_a: audio-controller@480 {
+			compatible = "amlogic,g12a-spdifout",
+				     "amlogic,axg-spdifout";
+			reg = <0x0 0x480 0x0 0x50>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "SPDIFOUT_A";
+			clocks = <&clkc_audio AUD_CLKID_SPDIFOUT>,
+			<&clkc_audio AUD_CLKID_SPDIFOUT_CLK>;
+			clock-names = "pclk", "mclk";
+			resets = <&clkc_audio AUD_RESET_SPDIFOUT>;
+		};
+
+		tdmout_a: audio-controller@500 {
+			compatible = "amlogic,sm1-tdmout";
+			reg = <0x0 0x500 0x0 0x40>;
+			sound-name-prefix = "TDMOUT_A";
+			resets = <&clkc_audio AUD_RESET_TDMOUT_A>;
+			clocks = <&clkc_audio AUD_CLKID_TDMOUT_A>,
+				 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK>,
+				 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK_SEL>,
+				 <&clkc_audio AUD_CLKID_TDMOUT_A_LRCLK>,
+				 <&clkc_audio AUD_CLKID_TDMOUT_A_LRCLK>;
+			clock-names = "pclk", "sclk", "sclk_sel",
+				      "lrclk", "lrclk_sel";
+		};
+
+		tdmout_b: audio-controller@540 {
+			compatible = "amlogic,sm1-tdmout";
+			reg = <0x0 0x540 0x0 0x40>;
+			sound-name-prefix = "TDMOUT_B";
+			resets = <&clkc_audio AUD_RESET_TDMOUT_B>;
+			clocks = <&clkc_audio AUD_CLKID_TDMOUT_B>,
+				 <&clkc_audio AUD_CLKID_TDMOUT_B_SCLK>,
+				 <&clkc_audio AUD_CLKID_TDMOUT_B_SCLK_SEL>,
+				 <&clkc_audio AUD_CLKID_TDMOUT_B_LRCLK>,
+				 <&clkc_audio AUD_CLKID_TDMOUT_B_LRCLK>;
+			clock-names = "pclk", "sclk", "sclk_sel",
+				      "lrclk", "lrclk_sel";
+		};
+
+		tdmout_c: audio-controller@580 {
+			compatible = "amlogic,sm1-tdmout";
+			reg = <0x0 0x580 0x0 0x40>;
+			sound-name-prefix = "TDMOUT_C";
+			resets = <&clkc_audio AUD_RESET_TDMOUT_C>;
+			clocks = <&clkc_audio AUD_CLKID_TDMOUT_C>,
+				 <&clkc_audio AUD_CLKID_TDMOUT_C_SCLK>,
+				 <&clkc_audio AUD_CLKID_TDMOUT_C_SCLK_SEL>,
+				 <&clkc_audio AUD_CLKID_TDMOUT_C_LRCLK>,
+				 <&clkc_audio AUD_CLKID_TDMOUT_C_LRCLK>;
+			clock-names = "pclk", "sclk", "sclk_sel",
+				      "lrclk", "lrclk_sel";
+		};
+
+		spdifout_b: audio-controller@680 {
+			compatible = "amlogic,g12a-spdifout",
+				     "amlogic,axg-spdifout";
+			reg = <0x0 0x680 0x0 0x50>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "SPDIFOUT_B";
+			clocks = <&clkc_audio AUD_CLKID_SPDIFOUT_B>,
+				 <&clkc_audio AUD_CLKID_SPDIFOUT_B_CLK>;
+			clock-names = "pclk", "mclk";
+			resets = <&clkc_audio AUD_RESET_SPDIFOUT_B>;
+		};
+
+		toacodec: audio-controller@740 {
+			compatible = "amlogic,s4-toacodec",
+				     "amlogic,g12a-toacodec";
+			reg = <0x0 0x740 0x0 0x4>;
+			sound-name-prefix = "TOACODEC";
+			#sound-dai-cells = <1>;
+			resets = <&clkc_audio AUD_RESET_TOACODEC>;
+		};
+
+		tohdmitx: audio-controller@744 {
+			compatible = "amlogic,sm1-tohdmitx",
+				     "amlogic,g12a-tohdmitx";
+			reg = <0x0 0x744 0x0 0x4>;
+			#sound-dai-cells = <1>;
+			sound-name-prefix = "TOHDMITX";
+			resets = <&clkc_audio AUD_RESET_TOHDMITX>;
+		};
+
+		toddr_d: audio-controller@840 {
+			compatible = "amlogic,sm1-toddr",
+				     "amlogic,axg-toddr";
+			reg = <0x0 0x840 0x0 0x2c>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "TODDR_D";
+			interrupts = <GIC_SPI 45 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc_audio AUD_CLKID_TODDR_D>;
+			resets = <&arb AXG_ARB_TODDR_D>,
+				 <&clkc_audio AUD_RESET_TODDR_D>;
+			reset-names = "arb", "rst";
+			amlogic,fifo-depth = <256>;
+		};
+
+		frddr_d: audio-controller@880 {
+			 compatible = "amlogic,sm1-frddr",
+				      "amlogic,axg-frddr";
+			reg = <0x0 0x880 0x0 0x2c>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "FRDDR_D";
+			interrupts = <GIC_SPI 46 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc_audio AUD_CLKID_FRDDR_D>;
+			resets = <&arb AXG_ARB_FRDDR_D>,
+				 <&clkc_audio AUD_RESET_FRDDR_D>;
+			reset-names = "arb", "rst";
+			amlogic,fifo-depth = <256>;
+		};
+	};
+
+	pdm: audio-controller@331000 {
+		compatible = "amlogic,sm1-pdm",
+			     "amlogic,axg-pdm";
+		reg = <0x0 0x331000 0x0 0x34>;
+		#sound-dai-cells = <0>;
+		sound-name-prefix = "PDM";
+		clocks = <&clkc_audio AUD_CLKID_PDM>,
+			 <&clkc_audio AUD_CLKID_PDM_DCLK>,
+			 <&clkc_audio AUD_CLKID_PDM_SYSCLK>;
+		clock-names = "pclk", "dclk", "sysclk";
+		resets = <&clkc_audio AUD_RESET_PDM>;
+	};
+};

-- 
2.43.0



