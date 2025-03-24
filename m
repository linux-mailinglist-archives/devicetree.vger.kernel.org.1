Return-Path: <devicetree+bounces-160146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF75A6DA4A
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:51:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 375603AA1F9
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEA2425EFA3;
	Mon, 24 Mar 2025 12:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i0AC8uJ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DC5225E462
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742820675; cv=none; b=OZ4MIdFY2bBc5KwXEpzjCtDbtRnaWfMRFXoDZKk8bTNIOudl6ZB2khOHj/QLiFOSPgqZP2nrUmjaYjNH477QnP6MMxmI3K4RBefGjUrMb+Z0GbdPDgq6CCbvinIKtGtNjJsdvtbJ7NANtiWt4U/q+fGE6wHzgkceSfq2HleT3J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742820675; c=relaxed/simple;
	bh=9C04xFXoKiYhReSI7EVX6W08iUOrAL0i0H3LPcz9n4Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XFfNSCYHcnhY2stagFAT8YGz+GfSGVuJYfr/uDrXWpqK3TfPHS0lIvldcy+uUkenRtqjW5DLlTOdMk3oEPnkHow8LF1aSWA0Z20QC5LUEAGgnGjEij45zUh7C3AX3CmoJwkX7i/5HquqK1lW/c7KPUhfKqmSl7pTkEenzCKfJ4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i0AC8uJ6; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3978ef9a778so211144f8f.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 05:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742820672; x=1743425472; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y0wZXYw/CdldU5EsbECLrO9WocLpwGBA/zXElKTd/+8=;
        b=i0AC8uJ6Ti68RQ3mGm1EfznzYCVU9pO7iEbV5X/2Ccxz7vDcHSHqdw34nH6XKWcclx
         Do2r/S9DLq9PNjQxblBvQ01QNM+e9EUWE6xDRRREkuCzttGWQBBW2sEqqR4i6I5wvLvK
         UsL4Oiy3CHqPNX5kIiIo7veASYazcmdFtks7HsI4NxNbtTkjQNN+NXgEdRpaYslCFGux
         Thjv16gdMQVURaZACCEmPnyc9CTzaFg0/GSIyTS9ojghGKvszmvk5HEzm0+LaDjMgu6Z
         IgeW2oYRYmkexpe3A2NyvQ7TTtYM+bVJZr4wc/qrmF6aZVh3d3TBH8lkM8YjgekwpSJD
         Be7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742820672; x=1743425472;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y0wZXYw/CdldU5EsbECLrO9WocLpwGBA/zXElKTd/+8=;
        b=hVa37LVFOSuVoktAhX8qdQWKl1aRJ+atLNKrE2iuVL5roOWCzs2jziUjMYK9qshnSP
         hjHs2aGrB1pedMhZFV/RPvWvI5jYyhZEVqmTYuKXDZgMptpIesyIvmyLTCtepJTOjyZ9
         GqWqMc6JG+nUvd/C0VYjX11KJE86AmesfCtggVCwzeMd0OQCETUhI+zTKMKvGBiVsIsP
         0G59iUnLIcfBk7rxYUVQjsAlp1eT5nir5gel2o5tNF+hcXphidcEOV7Y95uFVyOW6ZYE
         pyOcsfOnnmmA9iT0aZuL1FZopeVy8+k8TsF3lMVCmAOTg5sIb0/AlkHVvN4fnEjIJYO4
         IyNw==
X-Forwarded-Encrypted: i=1; AJvYcCWqHSjsS+MHj235m4w7NgOssWLjC46Ow/s5h/ejsaFMWFWL+aLEr40cyOLt6j1pMDvkqKqatHN7KrXD@vger.kernel.org
X-Gm-Message-State: AOJu0YxX8K8Oub1zV29QjwcjV5OqYJBR3q1HR0G9mMfoHjQHyhwenInF
	bMrI9gZ3FaVQfXdR8D7j9Nk7vwy24r/ZbcArR+28+nb1Q8wSQOFZbbEMHBoP+o4=
X-Gm-Gg: ASbGncvhUlELnoxVkUZM53pIAY8AfYpy/pYOFvor0N0Rj4TEerfQPRbUAUFFdRjJR5w
	mJIoTeNvwjTfHXtWvqnqFBF3sxUKh87HCusSinZwxmLYrx8z8DcGRjVH14LXgiqjiD4IRUR+yjP
	n8eqG3gesHgCgb2w8Rgeavn3KC+N+bQy0cKv2k8XTWsKHN1CExQxFWZu+2TOYSZXtNxpA2c+uTv
	xxJhbizzhG0Xs6SVV2sc2g11lGCmSye12fOelrpyTlG9fXIYCV7E6fkjpfs6uyqhKhV2IMm0Ujo
	2jlAOQWYso3k2j2f0CKzR9QJCkAjB4Qduwg3LapUO06q7Iwc4upzKVipJg==
X-Google-Smtp-Source: AGHT+IEep6+lmKtICEdnNtWzicMc4Pz1nJNEZsn02KrzcQwbPTHzgPUylKQvXQKSLa9/kBn7lVLGVg==
X-Received: by 2002:a5d:5f8f:0:b0:38f:2b3c:569e with SMTP id ffacd0b85a97d-3997f9403bcmr4678022f8f.11.1742820671758;
        Mon, 24 Mar 2025 05:51:11 -0700 (PDT)
Received: from krzk-bin.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9b517csm11117180f8f.51.2025.03.24.05.51.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 05:51:11 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sean Wang <sean.wang@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andy Teng <andy.teng@mediatek.com>,
	linux-mediatek@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: pinctrl: mediatek: Correct indentation and style in DTS example
Date: Mon, 24 Mar 2025 13:51:05 +0100
Message-ID: <20250324125105.81774-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250324125105.81774-1-krzysztof.kozlowski@linaro.org>
References: <20250324125105.81774-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS example in the bindings should be indented with 2- or 4-spaces and
aligned with opening '- |', so correct any differences like 3-spaces or
mixtures 2- and 4-spaces in one binding.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../pinctrl/mediatek,mt65xx-pinctrl.yaml      | 83 +++++++------------
 .../pinctrl/mediatek,mt7622-pinctrl.yaml      | 48 +++++------
 .../pinctrl/mediatek,mt8183-pinctrl.yaml      | 68 +++++++--------
 .../pinctrl/mediatek,mt8192-pinctrl.yaml      | 76 ++++++++---------
 4 files changed, 127 insertions(+), 148 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
index 5f2808212f39..b9680b896f12 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
@@ -137,64 +137,43 @@ examples:
         #size-cells = <2>;
 
         pinctrl@1c20800 {
-          compatible = "mediatek,mt8135-pinctrl";
-          reg = <0 0x1000B000 0 0x1000>;
-          mediatek,pctl-regmap = <&syscfg_pctl_a>, <&syscfg_pctl_b>;
-          gpio-controller;
-          #gpio-cells = <2>;
-          interrupt-controller;
-          #interrupt-cells = <2>;
-          interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
-              <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
-              <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
+            compatible = "mediatek,mt8135-pinctrl";
+            reg = <0 0x1000B000 0 0x1000>;
+            mediatek,pctl-regmap = <&syscfg_pctl_a>, <&syscfg_pctl_b>;
+            gpio-controller;
+            #gpio-cells = <2>;
+            interrupt-controller;
+            #interrupt-cells = <2>;
+            interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
 
-          i2c0_pins_a: i2c0-pins {
-            pins1 {
-              pinmux = <MT8135_PIN_100_SDA0__FUNC_SDA0>,
-                <MT8135_PIN_101_SCL0__FUNC_SCL0>;
-              bias-disable;
-            };
-          };
-
-          i2c1_pins_a: i2c1-pins {
-            pins {
-              pinmux = <MT8135_PIN_195_SDA1__FUNC_SDA1>,
-                <MT8135_PIN_196_SCL1__FUNC_SCL1>;
-              bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
-            };
-          };
-
-          i2c2_pins_a: i2c2-pins {
-            pins1 {
-              pinmux = <MT8135_PIN_193_SDA2__FUNC_SDA2>;
-              bias-pull-down;
+            i2c0_pins_a: i2c0-pins {
+                pins1 {
+                    pinmux = <MT8135_PIN_100_SDA0__FUNC_SDA0>,
+                             <MT8135_PIN_101_SCL0__FUNC_SCL0>;
+                    bias-disable;
+                };
             };
 
-            pins2 {
-              pinmux = <MT8135_PIN_49_WATCHDOG__FUNC_GPIO49>;
-              bias-pull-up;
-            };
-          };
-
-          i2c3_pins_a: i2c3-pins {
-            pins1 {
-              pinmux = <MT8135_PIN_40_DAC_CLK__FUNC_GPIO40>,
-                <MT8135_PIN_41_DAC_WS__FUNC_GPIO41>;
-              bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+            i2c1_pins_a: i2c1-pins {
+                pins {
+                    pinmux = <MT8135_PIN_195_SDA1__FUNC_SDA1>,
+                             <MT8135_PIN_196_SCL1__FUNC_SCL1>;
+                    bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+                };
             };
 
-            pins2 {
-              pinmux = <MT8135_PIN_35_SCL3__FUNC_SCL3>,
-                <MT8135_PIN_36_SDA3__FUNC_SDA3>;
-              output-low;
-              bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
-            };
+            i2c2_pins_a: i2c2-pins {
+                pins1 {
+                    pinmux = <MT8135_PIN_193_SDA2__FUNC_SDA2>;
+                    bias-pull-down;
+                };
 
-            pins3 {
-              pinmux = <MT8135_PIN_57_JTCK__FUNC_GPIO57>,
-                <MT8135_PIN_60_JTDI__FUNC_JTDI>;
-              drive-strength = <32>;
+                pins2 {
+                    pinmux = <MT8135_PIN_49_WATCHDOG__FUNC_GPIO49>;
+                    bias-pull-up;
+                };
             };
-          };
         };
     };
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml
index d74cae9d4d65..9acca85184fa 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml
@@ -366,34 +366,34 @@ examples:
         #size-cells = <2>;
 
         pio: pinctrl@10211000 {
-          compatible = "mediatek,mt7622-pinctrl";
-          reg = <0 0x10211000 0 0x1000>;
-          gpio-controller;
-          #gpio-cells = <2>;
+            compatible = "mediatek,mt7622-pinctrl";
+            reg = <0 0x10211000 0 0x1000>;
+            gpio-controller;
+            #gpio-cells = <2>;
 
-          pinctrl_eth_default: eth-pins {
-            mux-mdio {
-              groups = "mdc_mdio";
-              function = "eth";
-              drive-strength = <12>;
-            };
+            pinctrl_eth_default: eth-pins {
+                mux-mdio {
+                    groups = "mdc_mdio";
+                    function = "eth";
+                    drive-strength = <12>;
+                };
 
-            mux-gmac2 {
-              groups = "rgmii_via_gmac2";
-              function = "eth";
-              drive-strength = <12>;
-            };
+                mux-gmac2 {
+                    groups = "rgmii_via_gmac2";
+                    function = "eth";
+                    drive-strength = <12>;
+                };
 
-            mux-esw {
-              groups = "esw";
-              function = "eth";
-              drive-strength = <8>;
-            };
+                mux-esw {
+                    groups = "esw";
+                    function = "eth";
+                    drive-strength = <8>;
+                };
 
-            conf-mdio {
-              pins = "MDC";
-              bias-pull-up;
+                conf-mdio {
+                    pins = "MDC";
+                    bias-pull-up;
+                };
             };
-          };
         };
     };
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml
index 8507bd15f243..464879274cae 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml
@@ -195,43 +195,43 @@ examples:
         #size-cells = <2>;
 
         pio: pinctrl@10005000 {
-          compatible = "mediatek,mt8183-pinctrl";
-          reg = <0 0x10005000 0 0x1000>,
-                <0 0x11f20000 0 0x1000>,
-                <0 0x11e80000 0 0x1000>,
-                <0 0x11e70000 0 0x1000>,
-                <0 0x11e90000 0 0x1000>,
-                <0 0x11d30000 0 0x1000>,
-                <0 0x11d20000 0 0x1000>,
-                <0 0x11c50000 0 0x1000>,
-                <0 0x11f30000 0 0x1000>,
-                <0 0x1000b000 0 0x1000>;
-          reg-names = "iocfg0", "iocfg1", "iocfg2",
-                "iocfg3", "iocfg4", "iocfg5",
-                "iocfg6", "iocfg7", "iocfg8",
-                "eint";
-          gpio-controller;
-          #gpio-cells = <2>;
-          gpio-ranges = <&pio 0 0 192>;
-          interrupt-controller;
-          interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>;
-          #interrupt-cells = <2>;
+            compatible = "mediatek,mt8183-pinctrl";
+            reg = <0 0x10005000 0 0x1000>,
+                  <0 0x11f20000 0 0x1000>,
+                  <0 0x11e80000 0 0x1000>,
+                  <0 0x11e70000 0 0x1000>,
+                  <0 0x11e90000 0 0x1000>,
+                  <0 0x11d30000 0 0x1000>,
+                  <0 0x11d20000 0 0x1000>,
+                  <0 0x11c50000 0 0x1000>,
+                  <0 0x11f30000 0 0x1000>,
+                  <0 0x1000b000 0 0x1000>;
+            reg-names = "iocfg0", "iocfg1", "iocfg2",
+                  "iocfg3", "iocfg4", "iocfg5",
+                  "iocfg6", "iocfg7", "iocfg8",
+                  "eint";
+            gpio-controller;
+            #gpio-cells = <2>;
+            gpio-ranges = <&pio 0 0 192>;
+            interrupt-controller;
+            interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>;
+            #interrupt-cells = <2>;
 
-          i2c0_pins_a: i2c0-pins {
-            pins1 {
-              pinmux = <PINMUX_GPIO48__FUNC_SCL5>,
-                <PINMUX_GPIO49__FUNC_SDA5>;
-              mediatek,pull-up-adv = <3>;
-              drive-strength-microamp = <1000>;
+            i2c0_pins_a: i2c0-pins {
+                pins1 {
+                  pinmux = <PINMUX_GPIO48__FUNC_SCL5>,
+                           <PINMUX_GPIO49__FUNC_SDA5>;
+                    mediatek,pull-up-adv = <3>;
+                    drive-strength-microamp = <1000>;
+                };
             };
-          };
 
-          i2c1_pins_a: i2c1-pins {
-            pins {
-              pinmux = <PINMUX_GPIO50__FUNC_SCL3>,
-                <PINMUX_GPIO51__FUNC_SDA3>;
-              mediatek,pull-down-adv = <2>;
+            i2c1_pins_a: i2c1-pins {
+                pins {
+                    pinmux = <PINMUX_GPIO50__FUNC_SCL3>,
+                             <PINMUX_GPIO51__FUNC_SDA3>;
+                    mediatek,pull-down-adv = <2>;
+                };
             };
-          };
         };
     };
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt8192-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8192-pinctrl.yaml
index 1686427eb854..949dcd6fd847 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt8192-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8192-pinctrl.yaml
@@ -142,43 +142,43 @@ additionalProperties: false
 
 examples:
   - |
-            #include <dt-bindings/pinctrl/mt8192-pinfunc.h>
-            #include <dt-bindings/interrupt-controller/arm-gic.h>
-            pio: pinctrl@10005000 {
-                    compatible = "mediatek,mt8192-pinctrl";
-                    reg = <0x10005000 0x1000>,
-                          <0x11c20000 0x1000>,
-                          <0x11d10000 0x1000>,
-                          <0x11d30000 0x1000>,
-                          <0x11d40000 0x1000>,
-                          <0x11e20000 0x1000>,
-                          <0x11e70000 0x1000>,
-                          <0x11ea0000 0x1000>,
-                          <0x11f20000 0x1000>,
-                          <0x11f30000 0x1000>,
-                          <0x1000b000 0x1000>;
-                    reg-names = "iocfg0", "iocfg_rm", "iocfg_bm",
-                          "iocfg_bl", "iocfg_br", "iocfg_lm",
-                          "iocfg_lb", "iocfg_rt", "iocfg_lt",
-                          "iocfg_tl", "eint";
-                    gpio-controller;
-                    #gpio-cells = <2>;
-                    gpio-ranges = <&pio 0 0 220>;
-                    interrupt-controller;
-                    interrupts = <GIC_SPI 212 IRQ_TYPE_LEVEL_HIGH 0>;
-                    #interrupt-cells = <2>;
+    #include <dt-bindings/pinctrl/mt8192-pinfunc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    pio: pinctrl@10005000 {
+        compatible = "mediatek,mt8192-pinctrl";
+        reg = <0x10005000 0x1000>,
+              <0x11c20000 0x1000>,
+              <0x11d10000 0x1000>,
+              <0x11d30000 0x1000>,
+              <0x11d40000 0x1000>,
+              <0x11e20000 0x1000>,
+              <0x11e70000 0x1000>,
+              <0x11ea0000 0x1000>,
+              <0x11f20000 0x1000>,
+              <0x11f30000 0x1000>,
+              <0x1000b000 0x1000>;
+        reg-names = "iocfg0", "iocfg_rm", "iocfg_bm",
+              "iocfg_bl", "iocfg_br", "iocfg_lm",
+              "iocfg_lb", "iocfg_rt", "iocfg_lt",
+              "iocfg_tl", "eint";
+        gpio-controller;
+        #gpio-cells = <2>;
+        gpio-ranges = <&pio 0 0 220>;
+        interrupt-controller;
+        interrupts = <GIC_SPI 212 IRQ_TYPE_LEVEL_HIGH 0>;
+        #interrupt-cells = <2>;
 
-                    spi1-default-pins {
-                            pins-cs-mosi-clk {
-                                    pinmux = <PINMUX_GPIO157__FUNC_SPI1_A_CSB>,
-                                             <PINMUX_GPIO159__FUNC_SPI1_A_MO>,
-                                             <PINMUX_GPIO156__FUNC_SPI1_A_CLK>;
-                                    bias-disable;
-                            };
-
-                            pins-miso {
-                                    pinmux = <PINMUX_GPIO158__FUNC_SPI1_A_MI>;
-                                    bias-pull-down;
-                            };
-                    };
+        spi1-default-pins {
+            pins-cs-mosi-clk {
+                pinmux = <PINMUX_GPIO157__FUNC_SPI1_A_CSB>,
+                         <PINMUX_GPIO159__FUNC_SPI1_A_MO>,
+                         <PINMUX_GPIO156__FUNC_SPI1_A_CLK>;
+                bias-disable;
             };
+
+            pins-miso {
+                pinmux = <PINMUX_GPIO158__FUNC_SPI1_A_MI>;
+                bias-pull-down;
+            };
+        };
+    };
-- 
2.43.0


