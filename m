Return-Path: <devicetree+bounces-11355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F817D56CA
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:44:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D933B20EC6
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C78037CAF;
	Tue, 24 Oct 2023 15:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QgmbLPj+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4744114014
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:44:00 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 679B3A3
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:43:58 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-507c50b7c36so6450750e87.3
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698162236; x=1698767036; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V2xQkQk54/d0cnfmMAPy8Ysxpzo93FHFZBWCakfhOAs=;
        b=QgmbLPj+TtM3I0MK8rf8zjlJ4AemkdGmwm4gp2r8d4F6cAloMkl98+N1bP86qGha7m
         cFsrPWWTJdGAYV48swt9CkL7npcZGqO2wO4d0b4L+arZzc3xsXMdMk6AZesbk17aBKJu
         o3lpgjOgRbxFQvsop58RV3QhIGkOxMmbvLP/hlrCzJY01mxFyjDP9wQjHkYyPiAK6nrb
         oOYKWgJfomAESf7BLT8tXMANemN2P7XWRK1MxrGUTItimblY/955eJy7rwOXlyCBEHnx
         M8T9xtFBf0WdVNq36OTVaWE9/e/TCm6vDK6AWopfUz4+sNXazPUVrT38dOGnZGpquAx2
         9XZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698162236; x=1698767036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V2xQkQk54/d0cnfmMAPy8Ysxpzo93FHFZBWCakfhOAs=;
        b=Rv8PNQktbRupuRFMxlJoVN4m7zBe4sakBI+O3OaTUfxV6cliaTtopFm2BWe4ns1TaG
         O5hMZQ4aGadwNYkLG2FwS+0pMLFiQ5EH015kbpgX37Ut6vkaciSqqQ4xlDySzuL39xk+
         H/RP8kvyPiQWM2v/VMsrVzG0uV0QtZxXNgPtzTJMPGvvPiATW5zCZFA6HUjwgJZtdm+u
         rmPwEFoR7CbNrBr1PebR0pjtlpfF7pkBZHVyYUNxJtjCL9S/a8+RFBRrTLjNCRvDsB8v
         8/gxY0p58QkkD+VN+XrskbyXWI68C9WFNBJ6I14AYKETBWhHrKcrY4sK0hpy50Yzd3VO
         9Zgw==
X-Gm-Message-State: AOJu0YziSw1DsiuQz+4RvR5RUWEm6Ra3IeDfVj8ZCpyAJFBh3vYwp4ep
	41/1k6HTxcCCv1p8hVMCpuE=
X-Google-Smtp-Source: AGHT+IGlt0kXz8J1cZUvsj0H2a+zg91EjBQ71WmoxM1L8nXs5OKrygzmoN8jvn34qLYAeDhkJaN4cQ==
X-Received: by 2002:a05:6512:2085:b0:504:7f58:6dfd with SMTP id t5-20020a056512208500b005047f586dfdmr8120474lfr.2.1698162236150;
        Tue, 24 Oct 2023 08:43:56 -0700 (PDT)
Received: from debian.lan ([37.45.216.172])
        by smtp.googlemail.com with ESMTPSA id m1-20020ac24ac1000000b0050810b02cffsm102420lfp.22.2023.10.24.08.43.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 08:43:55 -0700 (PDT)
From: Dzmitry Sankouski <dsankouski@gmail.com>
To: 
Cc: Dzmitry Sankouski <dsankouski@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/6] dt-bindings: regulator: add Samsung s2dos05 pmic
Date: Tue, 24 Oct 2023 18:43:33 +0300
Message-Id: <20231024154338.407191-2-dsankouski@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231024154338.407191-1-dsankouski@gmail.com>
References: <20231024154338.407191-1-dsankouski@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding for the s2dos05 pmic found in the Samsung S9.

Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Dzmitry Sankouski <dsankouski@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org

---

Changes in v2:
- hex to decimal in regulator values
- fix compatible value

 .../bindings/regulator/samsung,s2dos05.yaml   | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/samsung,s2dos05.yaml

diff --git a/Documentation/devicetree/bindings/regulator/samsung,s2dos05.yaml b/Documentation/devicetree/bindings/regulator/samsung,s2dos05.yaml
new file mode 100644
index 000000000000..690537738e67
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/samsung,s2dos05.yaml
@@ -0,0 +1,89 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/samsung,s2dos05.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung s2dos05 regulator
+
+maintainers:
+  - Dzmitry Sankouski <dsankouski@gmail.com>
+
+description: |
+  The S2DOS05 is a companion power management IC for the smart phones.
+  Has 4 LDO and 1 BUCK regulators, and has capability to measure
+  current and power. Can detect short circuit on outputs.
+
+properties:
+  compatible:
+    const: samsung,s2dos05
+  reg:
+    maxItems: 1
+
+  regulators:
+    type: object
+    description: List of regulators and its properties
+
+    patternProperties:
+      "^s2dos05-buck1|s2dos05-ldo[1-4]$":
+        type: object
+        $ref: "regulator.yaml#"
+        unevaluatedProperties: false
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - regulators
+
+additionalProperties: false
+
+examples:
+  - |
+    regulator@60 {
+    	compatible = "samsung,s2dos05";
+    	reg = <0x60>;
+    	pinctrl-names = "default";
+    	pinctrl-0 = <&s2dos05_irq>;
+    	s2dos05,s2dos05_int = <&tlmm 0x31 0x0>;
+
+    	regulators {
+    		s2dos05_ldo1: s2dos05-ldo1 {
+    			regulator-name = "s2dos05-ldo1";
+    			regulator-min-microvolt = <1500000>;
+    			regulator-max-microvolt = <2000000>;
+    			regulator-active-discharge = <0x1>;
+    		};
+
+    		s2dos05_ldo2: s2dos05-ldo2 {
+    			regulator-name = "s2dos05-ldo2";
+    			regulator-min-microvolt = <1800000>;
+    			regulator-max-microvolt = <1800000>;
+    			regulator-active-discharge = <0x1>;
+    			regulator-boot-on;
+    		};
+
+    		s2dos05_ldo3: s2dos05-ldo3 {
+    			regulator-name = "s2dos05-ldo3";
+    			regulator-min-microvolt = <3000000>;
+    			regulator-max-microvolt = <3000000>;
+    			regulator-active-discharge = <0x1>;
+    			regulator-boot-on;
+    		};
+
+    		s2dos05_ldo4: s2dos05-ldo4 {
+    			regulator-name = "s2dos05-ldo4";
+    			regulator-min-microvolt = <2700000>;
+    			regulator-max-microvolt = <3775000>;
+    			regulator-active-discharge = <0x1>;
+    		};
+
+    		s2dos05_buck1: s2dos05-buck1 {
+    			regulator-name = "s2dos05-buck1";
+    			regulator-min-microvolt = <850000>;
+    			regulator-max-microvolt = <2100000>;
+    			regulator-active-discharge = <0x1>;
+    		};
+    	};
+    };
-- 
2.30.2


