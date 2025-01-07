Return-Path: <devicetree+bounces-136132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B9BA0401D
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:59:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED1C41887902
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 12:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644721F0E37;
	Tue,  7 Jan 2025 12:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="boRt+cfz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627761F03D9
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 12:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736254729; cv=none; b=Iegk7bG/etxusgY6KL1u4F2YlonKCQYKKqu+6HnoM5IDdsrFzVG/BaXhMBME9E/i/dUezIql+TfAHHEIcxd0txHPmW0zI+s9GYod2ooo3oyBghL6xVN6AxxEicGEl09vMVd9L7ndaAzqw8JGSRzq7WAIiQVcRaQu/9W91ocgRdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736254729; c=relaxed/simple;
	bh=6jPQMUA7BxWDkMjtJ3ogiHY1s0w4RUmiPNP+pjiZNMM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=P4ieh8xAddYs83UUV+I3b4CnNFy5T+y6rwky4kZFkdesmAm5xJDLXueMQndHOM4Ad9uggQrCNNmFl0V3bpa39D+4/S4Mbgvh5txLV5ZXvLTEcuqkIpBB9RHmYzq0Yj1wJQJjSwYKddmT5OWWTGBBUzcocLtSeWuj+TVwpiNibrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=boRt+cfz; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4363299010dso14966405e9.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 04:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736254722; x=1736859522; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pYmy/ZFlRhEQrpy/3I/HaeTWSzbHsHs0t27m22eGelE=;
        b=boRt+cfzo0ShvsHPMCS1kvGKcRs5Z4atuxcaXprQexBjCqxOBlRNyPlUFgmNVl2CnC
         hE3Z4uw2mDCAO2BTSewPeE6R771RWWRchYZIOpmeaRg1Y/a4aDp/bpQ++oJMJsc3xgXP
         i0X25kL4DOx8hd1TdiwE22Sa694dzqaY9NiTn4A6TvgHZ9sC+fOPQx1XIrgdzfH+4STa
         4tZChuSCF9sNc+ul/ua+9kvd3nvb1lUwF5mmFD3+SODChnWWeIlD+ahEpw4ym6hvZd6R
         tDZKcmn86OaztFjgdrhUSBIQX01YvZHP0ru45taY/JWpUfLsewYe9TdZ57Q5AlHxUaiG
         yEWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736254722; x=1736859522;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pYmy/ZFlRhEQrpy/3I/HaeTWSzbHsHs0t27m22eGelE=;
        b=Cn+3nsjHBgHbeGmO1rENUdbaNcHxl3rnxu0imEDSl5cDbZw7ocVKslNTfQRU/QPEZC
         zX4rlIzmewzW/RufEU1GKdnnpyB9OB1EbKwhejNkD7lKWHE3RZGW+mT+M0S/nzgYLth0
         olIPfBfirNlCyDzVkBeo7nOVsBXgHCjKn6UQ4bsNNKlC7qH53VzTcamnOp3gfNWzVUO6
         3HgyZVa+YvbY/nRT1qzwisDy0I2iAScY0md9R+X5WAVU6AwwD21bb+uhPYoUyfuBXLva
         Pro+NDNHG/PbZZrJwERwdbQTf7Vw0rlaLl2l5CRw2h5ZmjDXkEw8E3Z5xQxAWIrJGGkg
         NZQg==
X-Forwarded-Encrypted: i=1; AJvYcCVTq79KaZD6elyoEGjbL+VuyvSynXaUhqrRWDI7jdOJkSWjawDQkDd+b9/2BHc9gXeGY/vQI+Q1ihsn@vger.kernel.org
X-Gm-Message-State: AOJu0YxQDMDcpPqzrGAJQVSrvLdvM34Pn0Tr1xK7ah5AwNDO9O2igFTm
	z27Sd0QdVVyds/8hV7lbbca8vTk0EUr/SERjTOb2achId2G9lVMmQUeOeOyHhmk=
X-Gm-Gg: ASbGncvfBcUgUxEa++K84HQCd9PIyEq2imh98fGFjhwrXC8dtjVxhGBgsLjI3C2gaDJ
	ag9K6XHp4gUOFDOL457llGvAVqUQ7mgghAzYlM0LY/Honr6JSyOX8XYnFKwnhhzhLzJ6BapfGpr
	ipKExb8DnQV9Bl2OPaXfdnPE92sUhXF/wBts2jMOlJ9HILc89ZfVXx43OgwY9JDGYqgh6QJDYm5
	PfFXa8MnKSE6umcE1i5RfeqIhVrHDg9W5o1w073C3Bn2Gsqr+vxHyflUnfDlIuuQq2Lj94=
X-Google-Smtp-Source: AGHT+IHBl7XHmC1RA81mGhJt6SzB/Fa0mvqref325DHpS6shLKNQYqH/e3NarQU23diWE2Xv+3T06g==
X-Received: by 2002:a05:6000:1a89:b0:385:fc70:829 with SMTP id ffacd0b85a97d-38a221f7726mr21400744f8f.6.1736254722572;
        Tue, 07 Jan 2025 04:58:42 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c828e3fsm50965003f8f.5.2025.01.07.04.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 04:58:42 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andre Przywara <andre.przywara@arm.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: phy: Correct indentation and style in DTS example
Date: Tue,  7 Jan 2025 13:58:39 +0100
Message-ID: <20250107125840.225982-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
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
 .../bindings/phy/calxeda-combophy.yaml        | 10 +-
 .../bindings/phy/ti,phy-j721e-wiz.yaml        | 98 +++++++++----------
 2 files changed, 54 insertions(+), 54 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/calxeda-combophy.yaml b/Documentation/devicetree/bindings/phy/calxeda-combophy.yaml
index d05a7c793035..7d75678f2ec1 100644
--- a/Documentation/devicetree/bindings/phy/calxeda-combophy.yaml
+++ b/Documentation/devicetree/bindings/phy/calxeda-combophy.yaml
@@ -43,8 +43,8 @@ additionalProperties: false
 examples:
   - |
     combophy5: combo-phy@fff5d000 {
-                   compatible = "calxeda,hb-combophy";
-                   #phy-cells = <1>;
-                   reg = <0xfff5d000 0x1000>;
-                   phydev = <31>;
-               };
+        compatible = "calxeda,hb-combophy";
+        #phy-cells = <1>;
+        reg = <0xfff5d000 0x1000>;
+        phydev = <31>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
index 3f16ff14484d..ce3071fc3553 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -201,59 +201,59 @@ examples:
     #include <dt-bindings/soc/ti,sci_pm_domain.h>
 
     wiz@5000000 {
-           compatible = "ti,j721e-wiz-16g";
-           #address-cells = <1>;
-           #size-cells = <1>;
-           power-domains = <&k3_pds 292 TI_SCI_PD_EXCLUSIVE>;
-           clocks = <&k3_clks 292 5>, <&k3_clks 292 11>, <&dummy_cmn_refclk>;
-           clock-names = "fck", "core_ref_clk", "ext_ref_clk";
-           assigned-clocks = <&k3_clks 292 11>, <&k3_clks 292 0>;
-           assigned-clock-parents = <&k3_clks 292 15>, <&k3_clks 292 4>;
-           num-lanes = <2>;
-           #reset-cells = <1>;
-           ranges = <0x5000000 0x5000000 0x10000>;
+        compatible = "ti,j721e-wiz-16g";
+        #address-cells = <1>;
+        #size-cells = <1>;
+        power-domains = <&k3_pds 292 TI_SCI_PD_EXCLUSIVE>;
+        clocks = <&k3_clks 292 5>, <&k3_clks 292 11>, <&dummy_cmn_refclk>;
+        clock-names = "fck", "core_ref_clk", "ext_ref_clk";
+        assigned-clocks = <&k3_clks 292 11>, <&k3_clks 292 0>;
+        assigned-clock-parents = <&k3_clks 292 15>, <&k3_clks 292 4>;
+        num-lanes = <2>;
+        #reset-cells = <1>;
+        ranges = <0x5000000 0x5000000 0x10000>;
 
-           pll0-refclk {
-                  clocks = <&k3_clks 293 13>, <&dummy_cmn_refclk>;
-                  #clock-cells = <0>;
-                  assigned-clocks = <&wiz1_pll0_refclk>;
-                  assigned-clock-parents = <&k3_clks 293 13>;
-           };
+        pll0-refclk {
+            clocks = <&k3_clks 293 13>, <&dummy_cmn_refclk>;
+            #clock-cells = <0>;
+            assigned-clocks = <&wiz1_pll0_refclk>;
+            assigned-clock-parents = <&k3_clks 293 13>;
+        };
 
-           pll1-refclk {
-                  clocks = <&k3_clks 293 0>, <&dummy_cmn_refclk1>;
-                  #clock-cells = <0>;
-                  assigned-clocks = <&wiz1_pll1_refclk>;
-                  assigned-clock-parents = <&k3_clks 293 0>;
-           };
+        pll1-refclk {
+            clocks = <&k3_clks 293 0>, <&dummy_cmn_refclk1>;
+            #clock-cells = <0>;
+            assigned-clocks = <&wiz1_pll1_refclk>;
+            assigned-clock-parents = <&k3_clks 293 0>;
+        };
 
-           cmn-refclk-dig-div {
-                  clocks = <&wiz1_refclk_dig>;
-                  #clock-cells = <0>;
-           };
+        cmn-refclk-dig-div {
+            clocks = <&wiz1_refclk_dig>;
+            #clock-cells = <0>;
+        };
 
-           cmn-refclk1-dig-div {
-                  clocks = <&wiz1_pll1_refclk>;
-                  #clock-cells = <0>;
-           };
+        cmn-refclk1-dig-div {
+            clocks = <&wiz1_pll1_refclk>;
+            #clock-cells = <0>;
+        };
 
-           refclk-dig {
-                  clocks = <&k3_clks 292 11>, <&k3_clks 292 0>,
-                          <&dummy_cmn_refclk>, <&dummy_cmn_refclk1>;
-                  #clock-cells = <0>;
-                  assigned-clocks = <&wiz0_refclk_dig>;
-                  assigned-clock-parents = <&k3_clks 292 11>;
-           };
+        refclk-dig {
+            clocks = <&k3_clks 292 11>, <&k3_clks 292 0>,
+                     <&dummy_cmn_refclk>, <&dummy_cmn_refclk1>;
+            #clock-cells = <0>;
+            assigned-clocks = <&wiz0_refclk_dig>;
+            assigned-clock-parents = <&k3_clks 292 11>;
+        };
 
-           serdes@5000000 {
-                  compatible = "ti,sierra-phy-t0";
-                  reg-names = "serdes";
-                  reg = <0x5000000 0x10000>;
-                  #address-cells = <1>;
-                  #size-cells = <0>;
-                  resets = <&serdes_wiz0 0>;
-                  reset-names = "sierra_reset";
-                  clocks = <&wiz0_cmn_refclk_dig_div>, <&wiz0_cmn_refclk1_dig_div>;
-                  clock-names = "cmn_refclk_dig_div", "cmn_refclk1_dig_div";
-           };
+        serdes@5000000 {
+            compatible = "ti,sierra-phy-t0";
+            reg-names = "serdes";
+            reg = <0x5000000 0x10000>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            resets = <&serdes_wiz0 0>;
+            reset-names = "sierra_reset";
+            clocks = <&wiz0_cmn_refclk_dig_div>, <&wiz0_cmn_refclk1_dig_div>;
+            clock-names = "cmn_refclk_dig_div", "cmn_refclk1_dig_div";
+        };
     };
-- 
2.43.0


