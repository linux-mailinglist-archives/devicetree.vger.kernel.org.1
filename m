Return-Path: <devicetree+bounces-18495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC6D7F6E94
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:41:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1D681C20E76
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 08:41:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E4894691;
	Fri, 24 Nov 2023 08:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PDGLdYmZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A016D48
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 00:41:40 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3316d3d11e1so938856f8f.0
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 00:41:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700815299; x=1701420099; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8oTd5W7j5AQVAM1KswlxlUS9UNv/MwhkvP27dPDkrG0=;
        b=PDGLdYmZUwdGW6wFDyZM6pk7rO1UjQq+Ga2frF4LnpHg2zqOr0+estvirnadfytEvV
         mDkPzaCJkG56HdecNgRDE4BfhPSFahy4ht+JMhYxVNBv/8gVyMJY8vW9XR9XkT1aPweB
         R0a7wq3px8MLZEag5UZLvkN6EhxiIKzEaDFINSUPB852iucxB61Pn5JphMuR9iGw1SXu
         vGIktlsFH5YqIYToCYn8Jy18VOe2j1IasSFfSXlVXOYieDoN8ese6LXDGJOWA6BdY0xN
         xbQTtPhgJZ8NGSg5O+A7Z6qRueFneBhiBEySR3m/NsW/HPTvnln0T4vRPXOBbXezg7W2
         yN7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700815299; x=1701420099;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8oTd5W7j5AQVAM1KswlxlUS9UNv/MwhkvP27dPDkrG0=;
        b=NmZlC1Av3zjK3hwXIMLZ0D7CCfVWmZKxUDhO54W0WGgSv/t8B8/ANfJ15gjCJkrcZp
         FrYcRDRGeDoCZulFSay5Ld9HAYTiEKb/WHdfMrU3wl03nBVIotv+SIkK7dBOuN4W+sq9
         znIDOp32AVs3mqxOU+gn+Nyt3TTvMSdSV0xbdRC9RIrupoYsthKU+ztqRUvNnDlyfyXT
         X6vECBONCxkhEo+YYszPAjiw2pG3+Dy48bp8DE4laal9mI3ecuX1Y9U4ltcyWi0qOP90
         xSFNetiwtg4U6jiHQU+r8pef55zXOWTmTBjnZMLHBObdwCFWtUPa8Wnn+cw9l9Ks1Ne8
         6kXw==
X-Gm-Message-State: AOJu0YyJX1SKojKDfj53h7iWp3+3qw1ChnzrWM6imXy44Vq0mmVFs02B
	t1lsqEpC/l/4SvYy9OlW/bPgTw==
X-Google-Smtp-Source: AGHT+IFGqKrpRXgPFNo8Nkj0CWSwWM0Jqha5XIccXvobCjVcVPFXEmRnh1JCVbV1DXZZuPNvfqYsVg==
X-Received: by 2002:adf:ea8e:0:b0:332:e697:3a71 with SMTP id s14-20020adfea8e000000b00332e6973a71mr1425565wrm.6.1700815298893;
        Fri, 24 Nov 2023 00:41:38 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id c11-20020a5d4f0b000000b00332e67d6564sm2534562wru.67.2023.11.24.00.41.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 00:41:38 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 24 Nov 2023 09:41:22 +0100
Subject: [PATCH v9 11/12] DONOTMERGE: arm64: meson: khadas-vim3l: add DSI
 panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-11-95256ed139e6@linaro.org>
References: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
In-Reply-To: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Nicolas Belin <nbelin@baylibre.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Remi Pommarel <repk@triplefau.lt>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 linux-phy@lists.infradead.org, Rob Herring <robh@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3778;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=vVnkVglKsbgZynNLE29purYGyqaY5Zp+VaoRvt80IUM=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlYGGyfllM1YRje8HUcgrMolQ8GmfhPjEmFfKjkobM
 v1z+k2eJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZWBhsgAKCRB33NvayMhJ0e6nEA
 CuiWO/LKQiz4QcUUBOWcKn2vcKoGaXbd5lgmuGG5W9x6QWdtqriO/sRYcMO6ayXATzZqtJiRrJ3lp1
 J0grDt38OP49YRZmYRmtThzUcW5CUIMzx4g6tVbVlZqS0MBP0WuGjk1RHZCACfubMDJNNxzDtl/Clq
 YIQMNIytm3iQkSd4TzVEG3S8JcisprJ8z839AfEaABbx7CmywmXrsv73LarMB7Keqx/jfYD6GjSKoZ
 hNvIePUgTGDspHspJTTUOX/mGRg7qip5ChOGcklAkHPWR9rnEVG6UMhX8uCQcLPaWdaFv0qOeoIGwR
 xuAvobmfe1vZBRCYf1jVFGRPMQ9qrLRYJLhuSyhgsEyC4k8Ml0ie9/hsqj1skwDjlseftk4MFKL1oS
 +frlZ5e0rEllrMSSMzZhx+uYNLlSzvD8b9dKfZipNXDMGAyd11BjTnU94l6ZLwolrqCLD45vXz72OI
 5aZvoE4Ac0l3Tf81K+wwtFRiUC4LlEf7xozrhbbx5GCZyt2h5CeeFx6KIE3bP+sgmSOMbil1E17fxH
 U7qsAyLvAXhyhLW2X8Obi0C0uA5AW5LsXQMl8EmJjGLJyomUa6t3yg+N1wmw/13o4YHI4atFZkeEVJ
 dMoLfwx/8UEWlRW+o1BjZ7ypcqv/xxXHTSeSthG4zknnIYHEcgqYHlFTOkTA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

This add nodes to support the Khadas TS050 panel on the
Khadas VIM3 & VIM3L boards.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi   |  2 +-
 arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi | 74 ++++++++++++++++++++++
 .../boot/dts/amlogic/meson-sm1-khadas-vim3l.dts    |  2 +-
 3 files changed, 76 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
index 16dd409051b4..81c3057143b4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
@@ -98,7 +98,7 @@ &pwm_ab {
 };
 
 &pwm_AO_cd {
-	pinctrl-0 = <&pwm_ao_d_e_pins>;
+	pinctrl-0 = <&pwm_ao_c_6_pins>, <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
 	clocks = <&xtal>;
 	clock-names = "clkin1";
diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
index 514a6dd4b124..aafc37863f2e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -40,6 +40,14 @@ button-function {
 		};
 	};
 
+	panel_backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm_AO_cd 0 25000 0>;
+		brightness-levels = <0 255>;
+		num-interpolated-steps = <255>;
+		default-brightness-level = <200>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -358,6 +366,23 @@ rtc: rtc@51 {
 	};
 };
 
+&i2c3 {
+	status = "okay";
+	pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
+	pinctrl-names = "default";
+
+	touch-controller@38 {
+		compatible = "edt,edt-ft5206";
+		reg = <0x38>;
+		interrupt-parent = <&gpio_intc>;
+		interrupts = <66 IRQ_TYPE_EDGE_FALLING>; /* GPIOA_5 */
+		reset-gpios = <&gpio_expander 6 GPIO_ACTIVE_LOW>;
+		touchscreen-size-x = <1080>;
+		touchscreen-size-y = <1920>;
+		status = "okay";
+	};
+};
+
 &ir {
 	status = "okay";
 	pinctrl-0 = <&remote_input_ao_pins>;
@@ -365,6 +390,55 @@ &ir {
 	linux,rc-map-name = "rc-khadas";
 };
 
+&mipi_dsi {
+	status = "okay";
+
+	assigned-clocks = <&clkc CLKID_GP0_PLL>,
+			  <&clkc CLKID_MIPI_DSI_PXCLK_SEL>,
+			  <&clkc CLKID_MIPI_DSI_PXCLK>,
+			  <&clkc CLKID_CTS_ENCL_SEL>,
+			  <&clkc CLKID_VCLK2_SEL>;
+	assigned-clock-parents = <0>,
+				 <&clkc CLKID_GP0_PLL>,
+				 <0>,
+				 <&clkc CLKID_VCLK2_DIV1>,
+				 <&clkc CLKID_GP0_PLL>;
+	assigned-clock-rates = <960000000>,
+			       <0>,
+			       <960000000>,
+			       <0>,
+			       <0>;
+
+	panel@0 {
+		compatible = "khadas,ts050";
+		reset-gpios = <&gpio_expander 0 GPIO_ACTIVE_LOW>;
+		enable-gpios = <&gpio_expander 1 GPIO_ACTIVE_HIGH>;
+		power-supply = <&vcc_3v3>;
+		backlight = <&panel_backlight>;
+		reg = <0>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
+&mipi_analog_dphy {
+	status = "okay";
+};
+
+&mipi_dphy {
+	status = "okay";
+};
+
+&mipi_dsi_panel_port {
+	mipi_out_panel: endpoint {
+		remote-endpoint = <&mipi_in_panel>;
+	};
+};
+
 &pcie {
 	reset-gpios = <&gpio GPIOA_8 GPIO_ACTIVE_LOW>;
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
index 9c0b544e2209..cb52a55ab70a 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
@@ -76,7 +76,7 @@ &cpu3 {
 };
 
 &pwm_AO_cd {
-	pinctrl-0 = <&pwm_ao_d_e_pins>;
+	pinctrl-0 = <&pwm_ao_c_6_pins>, <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
 	clocks = <&xtal>;
 	clock-names = "clkin1";

-- 
2.34.1


