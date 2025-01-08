Return-Path: <devicetree+bounces-136762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 22045A06194
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 17:19:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B4343A426A
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 16:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97FFF204699;
	Wed,  8 Jan 2025 16:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Hm8j9Tzz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515B3204087
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 16:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736352960; cv=none; b=qIMdMLpqOgSum2iVBPfaktgxzWuv8uafEnxjEnWhoHjZ3X1WRjtB+Zpb3xmch1t8GbAS3y3PLG3eoO6KVwXarCoDLfDpk//avPEsgo51iSwXxy2IOtKec5pTmQ6ugWtuPjK+KxcyK2UpRTT+vKitCK8Aleyeya54XnSRb7/H28w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736352960; c=relaxed/simple;
	bh=oiBrgFDEH8oR9i80NmibPY4/A6M1F7T8QsUsAz/D+YY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t7IVyjfzSyQs9cLXa6W4CdzshRUMXtapqck2IuBVw6GB0ZM+J4l5Hg+3FIdDNoFe/SI9yvJJuxOgVwtMCP1MOdIsv9kTNb+Zgo4695NYgHRx2dJb0d+wCfkyzfAYGpC6Jn9VWIcEU62wlBvPxlqA2+a/A7tQvkkzJOtg2Z1VHCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Hm8j9Tzz; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43625c4a50dso158465e9.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 08:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736352956; x=1736957756; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZCHTeF6R0fGhSKfSt6MjkqVYus+rrnV1ENn9wfkH0OE=;
        b=Hm8j9TzzotXNoIzX5KpPhLrs6bkY4o98WhICbluClwep3jQt4yJ41EGarO/+IG/AEj
         R/w4gzgsY69gxv0H2Codli+POXeNt7Xglx4aggiCntqlry39CtxLg5bDI26OeVnUjlhI
         vR4DyW7pXKbGxmJs+dttqWjH/CXltxjrUZm+fe/yIRk9WFFyGyA64tV2CgqAZlu5k1TD
         lX5uDtR5OzntqsuH7cJvKcmBJfDBGtS3dxOJi2mKvur9Y931GKd+FN3ART8xUTirOgyE
         NzQVsNQDoHVpE4CWwt9laR0ZKOgC+EfYcUTqKXKd5aILwgxIRsR+qQayTLXjQ0acJljN
         6K8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736352956; x=1736957756;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZCHTeF6R0fGhSKfSt6MjkqVYus+rrnV1ENn9wfkH0OE=;
        b=XfzPpVscuIR42hxPJ1yxDYSmVRmlldNPND5UtF0luNQ6gzfPlDJrYhtpKGCd6hAtwn
         U4cHwwhn5YwopWDdMJRHiR4Hoi6GDrEj16p3hYDInOt0X43wV61caHKSmBioJBAZubsB
         kZa+8KiRp1Oe5Ev3qCPiCib3xSv48bdlA5UJxH45rmG0mGoMYsgw3soerGBe2kDhHwQI
         zP7KKVNvoMkPI2Mvr5LmmzX+cuVgDC6ySUEVnTz2/0AYzzqIizjgpmhAr5unPsTgyZdi
         pXqRU+7ofiVHL+Sg2eDiEZtR+I6S9ePcHcNyP47GJDe9BrxwligLtrxGDxfz/EOSkG0D
         f4qg==
X-Forwarded-Encrypted: i=1; AJvYcCX577dDUIvPpnCKhJRIPydrcV/lcwIdsaF2PtoAQyig6qnjGQq7RSHMYMHZUXB4T0AjjN+0Bx/qHzsY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy32CBkuJGXCaksXBP57/Sp5p7SWT6TJfzv3a0NrkkjoNxasPD5
	9haGpo53tJmPIFa+84NUTe2Nd6uZLTI8aL7u7o7gPQzsSvZ0Q3M7bfTnArKJjtI=
X-Gm-Gg: ASbGnctZUi674sfQw2W+qfoUfFqtGGJgu28C+czi6z7HZgfLDavJ3eaJn9D4N+afFEF
	yHyfWJCmgu3IFWex2kD4VnmRaQpstvfyPkQhjxdMeqo9SGhMuQdUEuQd2+EfxLguwOTs0yTLdnK
	NW+k2KXlgGWJgIWUdcVw5mEg7UP4Ez56T/Yq5AViMCsgzx7pXbWQFv3Oop62QkzJ347sUzjVgYk
	Mm/Bc73LERHLZyOyu8qbJ3Zg1kmVSwdAQl94495BWb1w2GTFmtFJEKB2MnB
X-Google-Smtp-Source: AGHT+IHEILDWRs/8ApjgnIf3rSHJHPFt1S4VS+egmv2pZWmzR8KQn/GFSJiwtiZAUp1S8eGd/C13oA==
X-Received: by 2002:a05:600c:3c85:b0:434:a802:e99a with SMTP id 5b1f17b1804b1-436e267821emr29030295e9.4.1736352955584;
        Wed, 08 Jan 2025 08:15:55 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:a6ac:e6d2:88e3:8ea1])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436dd14dfcasm44378105e9.1.2025.01.08.08.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 08:15:55 -0800 (PST)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Wed, 08 Jan 2025 17:15:49 +0100
Subject: [PATCH v5 7/7] arm64: dts: mediatek: add display support for
 mt8365-evk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v5-7-3905f1e4b835@baylibre.com>
References: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
In-Reply-To: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7455; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=oiBrgFDEH8oR9i80NmibPY4/A6M1F7T8QsUsAz/D+YY=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBnfqSyi4f+hfO2Xem78DOLGc6XqILcDRe5cULnYQi1
 OgtZHHyJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ36ksgAKCRArRkmdfjHURTdREA
 CY4yXPx/AEV2nA/rnJ7EXj25fNHH7L/Agasp+OirSRe0XBZ+UJbRKSKfDGhqRYnOZeE3kVhrT1HxhY
 upyqqZRuRBX2Al677eHWM8gphdCS36bGEJvfGZVF74ZhRB3BJvJ+FYrT08CWQnZ2FW6zonb3lRhfup
 9LX7qmG5B5p7eFtA/i9JDJOhld0c13OzbWboBOdYQMB9VoMs7uzixqb4pvLMy+lTpLiiwWLgLLNmmA
 z7LTKZ8kSFeFjYIr8zNhKagj8xenWPSKU83ffIfOeWMPW0+h5jLUPwwMmJ+m5s0++D5f6FZlU3aGUZ
 XlnSXp2NzaW2576+QSbC1SA+woGOm6pF79Ko+9RttTzNAmq+lCM4oqCLveluu91YTldbC8awX75Dps
 3Z8ZZ2utsumKVPOB00p+pRVLa9NAZvezd1TFtwAdu5CAplw5NfBFDsxhqeprRDB7KqzjQKotmDCWPy
 b1OE/SoJFlA2vYcCQclJslYbVt/uKfFH4QmeslLXBm7bsn75MObUDs9itOmJSUkdYpW/s3pGIk3grx
 X+m48DFDSDx8A+FqrEFc7yVv/NK1pbBxDIUVkUG+2LYrAIPB98I9lPDJkxHUIc7SOkbX56sB+DM77Y
 lu6MbzowJnXAmFOhEs2QxREIslKwiADDCfJNrgMOGGF6qFjffBNDExOpMMIg==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

MIPI DSI:
- Add "vsys_lcm_reg" regulator support and setup the "mt6357_vsim1_reg",
to power the pannel plugged to the DSI connector.
- Setup the Display Parallel Interface.
  - Add the startek kd070fhfid015 pannel support.

HDMI:
- Add HDMI connector support.
- Add the "ite,it66121" HDMI bridge support, driven by I2C1.
- Setup the Display Parallel Interface.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts | 236 ++++++++++++++++++++++++++++
 1 file changed, 236 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
index 7d90112a7e27..61a58a1faee1 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
@@ -27,6 +27,21 @@ chosen {
 		stdout-path = "serial0:921600n8";
 	};
 
+	connector {
+		compatible = "hdmi-connector";
+		label = "hdmi";
+		type = "d";
+
+		port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			hdmi_connector_in: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&hdmi_connector_out>;
+			};
+		};
+	};
+
 	firmware {
 		optee {
 			compatible = "linaro,optee-tz";
@@ -104,6 +119,16 @@ sound: sound {
 		pinctrl-5 = <&aud_mosi_on_pins>;
 		mediatek,platform = <&afe>;
 	};
+
+	vsys_lcm_reg: regulator-vsys-lcm {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&pio 129 GPIO_ACTIVE_HIGH>;
+		regulator-max-microvolt = <5000000>;
+		regulator-min-microvolt = <5000000>;
+		regulator-name = "vsys_lcm";
+	};
+
 };
 
 &afe {
@@ -131,6 +156,88 @@ &cpu3 {
 	sram-supply = <&mt6357_vsram_proc_reg>;
 };
 
+&dither0_out {
+	remote-endpoint = <&dsi0_in>;
+};
+
+&dpi0 {
+	pinctrl-0 = <&dpi_default_pins>;
+	pinctrl-1 = <&dpi_idle_pins>;
+	pinctrl-names = "default", "sleep";
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+			dpi0_in: endpoint@1 {
+				reg = <1>;
+				remote-endpoint = <&rdma1_out>;
+			};
+		};
+
+		port@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+			dpi0_out: endpoint@1 {
+				reg = <1>;
+				remote-endpoint = <&it66121_in>;
+			};
+		};
+	};
+};
+
+&dsi0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	panel@0 {
+		compatible = "startek,kd070fhfid015";
+		reg = <0>;
+		enable-gpios = <&pio 67 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&pio 20 GPIO_ACTIVE_HIGH>;
+		iovcc-supply = <&mt6357_vsim1_reg>;
+		power-supply = <&vsys_lcm_reg>;
+
+		port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			panel_in: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&dsi0_out>;
+			};
+		};
+	};
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+			dsi0_in: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&dither0_out>;
+			};
+		};
+
+		port@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+			dsi0_out: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&panel_in>;
+			};
+		};
+	};
+};
+
 &ethernet {
 	pinctrl-0 = <&ethernet_pins>;
 	pinctrl-names = "default";
@@ -161,6 +268,56 @@ &i2c0 {
 	status = "okay";
 };
 
+&i2c1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	clock-div = <2>;
+	clock-frequency = <100000>;
+	pinctrl-0 = <&i2c1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	it66121_hdmi: hdmi@4c {
+		#sound-dai-cells = <0>;
+		compatible = "ite,it66121";
+		interrupt-parent = <&pio>;
+		interrupts = <68 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&ite_pins>;
+		pinctrl-names = "default";
+		reg = <0x4c>;
+		reset-gpios = <&pio 69 GPIO_ACTIVE_LOW>;
+		vcn18-supply = <&mt6357_vsim2_reg>;
+		vcn33-supply = <&mt6357_vibr_reg>;
+		vrf12-supply = <&mt6357_vrf12_reg>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0>;
+				it66121_in: endpoint@0 {
+					reg = <0>;
+					bus-width = <12>;
+					remote-endpoint = <&dpi0_out>;
+				};
+			};
+
+			port@1 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <1>;
+				hdmi_connector_out: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&hdmi_connector_in>;
+				};
+			};
+		};
+	};
+};
+
 &mmc0 {
 	assigned-clock-parents = <&topckgen CLK_TOP_MSDCPLL>;
 	assigned-clocks = <&topckgen CLK_TOP_MSDC50_0_SEL>;
@@ -205,6 +362,11 @@ &mt6357_pmic {
 	mediatek,micbias1-microvolt = <1700000>;
 };
 
+&mt6357_vsim1_reg {
+	regulator-min-microvolt = <1800000>;
+	regulator-max-microvolt = <1800000>;
+};
+
 &pio {
 	aud_default_pins: audiodefault-pins {
 		clk-dat-pins {
@@ -267,6 +429,49 @@ clk-dat-pins {
 		};
 	};
 
+	dpi_default_pins: dpi-default-pins {
+		pins {
+			pinmux = <MT8365_PIN_0_GPIO0__FUNC_DPI_D0>,
+				 <MT8365_PIN_1_GPIO1__FUNC_DPI_D1>,
+				 <MT8365_PIN_2_GPIO2__FUNC_DPI_D2>,
+				 <MT8365_PIN_3_GPIO3__FUNC_DPI_D3>,
+				 <MT8365_PIN_4_GPIO4__FUNC_DPI_D4>,
+				 <MT8365_PIN_5_GPIO5__FUNC_DPI_D5>,
+				 <MT8365_PIN_6_GPIO6__FUNC_DPI_D6>,
+				 <MT8365_PIN_7_GPIO7__FUNC_DPI_D7>,
+				 <MT8365_PIN_8_GPIO8__FUNC_DPI_D8>,
+				 <MT8365_PIN_9_GPIO9__FUNC_DPI_D9>,
+				 <MT8365_PIN_10_GPIO10__FUNC_DPI_D10>,
+				 <MT8365_PIN_11_GPIO11__FUNC_DPI_D11>,
+				 <MT8365_PIN_12_GPIO12__FUNC_DPI_DE>,
+				 <MT8365_PIN_13_GPIO13__FUNC_DPI_VSYNC>,
+				 <MT8365_PIN_14_GPIO14__FUNC_DPI_CK>,
+				 <MT8365_PIN_15_GPIO15__FUNC_DPI_HSYNC>;
+			drive-strength = <4>;
+		};
+	};
+
+	dpi_idle_pins: dpi-idle-pins {
+		pins {
+			pinmux = <MT8365_PIN_0_GPIO0__FUNC_GPIO0>,
+				 <MT8365_PIN_1_GPIO1__FUNC_GPIO1>,
+				 <MT8365_PIN_2_GPIO2__FUNC_GPIO2>,
+				 <MT8365_PIN_3_GPIO3__FUNC_GPIO3>,
+				 <MT8365_PIN_4_GPIO4__FUNC_GPIO4>,
+				 <MT8365_PIN_5_GPIO5__FUNC_GPIO5>,
+				 <MT8365_PIN_6_GPIO6__FUNC_GPIO6>,
+				 <MT8365_PIN_7_GPIO7__FUNC_GPIO7>,
+				 <MT8365_PIN_8_GPIO8__FUNC_GPIO8>,
+				 <MT8365_PIN_9_GPIO9__FUNC_GPIO9>,
+				 <MT8365_PIN_10_GPIO10__FUNC_GPIO10>,
+				 <MT8365_PIN_11_GPIO11__FUNC_GPIO11>,
+				 <MT8365_PIN_12_GPIO12__FUNC_GPIO12>,
+				 <MT8365_PIN_13_GPIO13__FUNC_GPIO13>,
+				 <MT8365_PIN_14_GPIO14__FUNC_GPIO14>,
+				 <MT8365_PIN_15_GPIO15__FUNC_GPIO15>;
+		};
+	};
+
 	ethernet_pins: ethernet-pins {
 		phy_reset_pins {
 			pinmux = <MT8365_PIN_133_TDM_TX_DATA1__FUNC_GPIO133>;
@@ -308,6 +513,33 @@ pins {
 		};
 	};
 
+	i2c1_pins: i2c1-pins {
+		pins {
+			pinmux = <MT8365_PIN_59_SDA1__FUNC_SDA1_0>,
+				 <MT8365_PIN_60_SCL1__FUNC_SCL1_0>;
+			bias-pull-up;
+		};
+	};
+
+	ite_pins: ite-pins {
+		irq_ite_pins {
+			pinmux = <MT8365_PIN_68_CMDAT0__FUNC_GPIO68>;
+			input-enable;
+			bias-pull-up;
+		};
+
+		pwr_pins {
+			pinmux = <MT8365_PIN_70_CMDAT2__FUNC_GPIO70>,
+				 <MT8365_PIN_71_CMDAT3__FUNC_GPIO71>;
+			output-high;
+		};
+
+		rst_ite_pins {
+			pinmux = <MT8365_PIN_69_CMDAT1__FUNC_GPIO69>;
+			output-high;
+		};
+	};
+
 	mmc0_default_pins: mmc0-default-pins {
 		clk-pins {
 			pinmux = <MT8365_PIN_99_MSDC0_CLK__FUNC_MSDC0_CLK>;
@@ -463,6 +695,10 @@ &pwm {
 	status = "okay";
 };
 
+&rdma1_out {
+	remote-endpoint = <&dpi0_in>;
+};
+
 &ssusb {
 	dr_mode = "otg";
 	maximum-speed = "high-speed";

-- 
2.25.1


