Return-Path: <devicetree+bounces-2693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6682D7AC2F3
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 17:01:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 19D602823BA
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 15:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E56181D682;
	Sat, 23 Sep 2023 15:00:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694F010A12
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 15:00:57 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC1A319F
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 08:00:53 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-401187f8071so27185135e9.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 08:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695481252; x=1696086052; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i0JcmES5eq6i+P6K3jjeZcZW1E/M9HeojX8j4CGEfZ4=;
        b=dA7j5pkBoE0ODqObeelRJ90/7ByBlzfg2nPXoERCyZx6YywHvma3a9T2STWWNDBKTu
         ejp9L6lZaNEbe0oyXKfwRxMEyvjdrhZ76YPkpar/H5k0b6DmsPbliXnmaBQnozOOfncY
         MM+rf42ZDzPaSKcKImFowkXpoGAN1pQ86Wc0oYM745WhG9U8g49smcK5WyNTPN2YVPVw
         Z+TWdfSkkw33aUCPqyJDwRWVMXjW6dSo6/Vyoc3aRJDVhsZbofY/zvOZpDdZVhKxN+Ru
         7o56FmmVvEEP/sRXnN4gckLHcdchnaM7FAYTxHtEKeaoygNQfEyu+Drv2TpETO/yjRSg
         fngA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695481252; x=1696086052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i0JcmES5eq6i+P6K3jjeZcZW1E/M9HeojX8j4CGEfZ4=;
        b=q22WHkg5Z1hFTyBZoTOldoAR/29kA6h++Kb0TJ86SPmf/k0TApLBtJzX7PRcldD/Dk
         kUR0VR2uyb1l+vtOJv3Z3pfrfe0kVlNcd4qsQM0ACDWjj+B98dTxXVrgeZAxEkIr1bL0
         viGXu159cJmGrvix9gI4dbm2ffU9SxcMO9RlTN1kz7wq5oQV2J1Wm/AZdEL/WoqLxTR4
         /5Slr+iFWE7hT39l4qHgv3CCXFNK1EsCL1dbiuPC01jWSYh8VMaNysIg0aBcIca7ulGy
         XPl4omRjTV3cMPDdN7LxVMBjxnd7C9DuKwP8SFrb46HMfc1H/VtYTXyjroXvEkz3Azef
         6hwQ==
X-Gm-Message-State: AOJu0YznMOJnBVZMrqkZ3yZQ7xE5C+rZG0pipCpjU3SBpYWlDRza6p45
	6HRv9p/hGZpqXtgUSvXq4NsOQw==
X-Google-Smtp-Source: AGHT+IGyhh5rCri/EL77QPBtIrU3OoeY8jyaVydBZfR795IyQuYjkCBZA4MCM+eZ+3MdjrL95Ml0LQ==
X-Received: by 2002:a05:600c:501e:b0:405:2d29:1648 with SMTP id n30-20020a05600c501e00b004052d291648mr4220649wmr.19.1695481251911;
        Sat, 23 Sep 2023 08:00:51 -0700 (PDT)
Received: from x13s-linux.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id m28-20020a05600c3b1c00b004053a2138bfsm5787006wms.12.2023.09.23.08.00.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Sep 2023 08:00:51 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: andersson@kernel.org,
	agross@kernel.org,
	konrad.dybcio@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jonathan@marek.ca,
	quic_tdas@quicinc.com,
	vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bryan.odonoghue@linaro.org
Subject: [PATCH 1/4] dt-bindings: clock: qcom,camcc.yaml: Convert qcom,camcc to a single yaml file
Date: Sat, 23 Sep 2023 16:00:42 +0100
Message-Id: <20230923150045.1068556-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230923150045.1068556-1-bryan.odonoghue@linaro.org>
References: <20230923150045.1068556-1-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Move the various camcc yaml files into one. The Camera Clock Controller
is pretty similar from SoC to SoC.

Mostly we have some SoCs which require fewer clocks than others. In some
cases we have SoCs which have required-opps and required-power-domains.

It is likely we could and should extend the thin CAMCC descriptions such
as sdm845 an sm6350 to the more robust descriptions such as sm8250 and
sm8450.

As a result of listing sm8250 and sm8450 together required-opps and
power-domains become required for sm8250, which is a NOP for the dtsi
since both declarations already exist for sm8250.

sm8250 is also chosen as the example for the new combined camcc.yaml.

A minor tweak to fix Bjorn's email address in the Maintainer list is
included.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/clock/qcom,camcc-sm8250.yaml     |  84 ---------
 .../devicetree/bindings/clock/qcom,camcc.yaml | 171 ++++++++++++++++++
 .../bindings/clock/qcom,sc7180-camcc.yaml     |  72 --------
 .../bindings/clock/qcom,sc7280-camcc.yaml     |  71 --------
 .../bindings/clock/qcom,sdm845-camcc.yaml     |  65 -------
 .../bindings/clock/qcom,sm6350-camcc.yaml     |  49 -----
 .../bindings/clock/qcom,sm8450-camcc.yaml     |  85 ---------
 7 files changed, 171 insertions(+), 426 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/qcom,camcc-sm8250.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,camcc.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/qcom,sc7180-camcc.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/qcom,sc7280-camcc.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/qcom,sdm845-camcc.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/qcom,sm6350-camcc.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml

diff --git a/Documentation/devicetree/bindings/clock/qcom,camcc-sm8250.yaml b/Documentation/devicetree/bindings/clock/qcom,camcc-sm8250.yaml
deleted file mode 100644
index 426335a2841c..000000000000
--- a/Documentation/devicetree/bindings/clock/qcom,camcc-sm8250.yaml
+++ /dev/null
@@ -1,84 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/clock/qcom,camcc-sm8250.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Qualcomm Camera Clock & Reset Controller on SM8250
-
-maintainers:
-  - Jonathan Marek <jonathan@marek.ca>
-
-description: |
-  Qualcomm camera clock control module provides the clocks, resets and
-  power domains on SM8250.
-
-  See also:: include/dt-bindings/clock/qcom,camcc-sm8250.h
-
-properties:
-  compatible:
-    const: qcom,sm8250-camcc
-
-  clocks:
-    items:
-      - description: AHB
-      - description: Board XO source
-      - description: Board active XO source
-      - description: Sleep clock source
-
-  clock-names:
-    items:
-      - const: iface
-      - const: bi_tcxo
-      - const: bi_tcxo_ao
-      - const: sleep_clk
-
-  '#clock-cells':
-    const: 1
-
-  '#reset-cells':
-    const: 1
-
-  '#power-domain-cells':
-    const: 1
-
-  power-domains:
-    items:
-      - description: MMCX power domain
-
-  reg:
-    maxItems: 1
-
-  required-opps:
-    maxItems: 1
-    description:
-      OPP node describing required MMCX performance point.
-
-required:
-  - compatible
-  - reg
-  - clocks
-  - clock-names
-  - '#clock-cells'
-  - '#reset-cells'
-  - '#power-domain-cells'
-
-additionalProperties: false
-
-examples:
-  - |
-    #include <dt-bindings/clock/qcom,gcc-sm8250.h>
-    #include <dt-bindings/clock/qcom,rpmh.h>
-    clock-controller@ad00000 {
-      compatible = "qcom,sm8250-camcc";
-      reg = <0x0ad00000 0x10000>;
-      clocks = <&gcc GCC_CAMERA_AHB_CLK>,
-               <&rpmhcc RPMH_CXO_CLK>,
-               <&rpmhcc RPMH_CXO_CLK_A>,
-               <&sleep_clk>;
-      clock-names = "iface", "bi_tcxo", "bi_tcxo_ao", "sleep_clk";
-      #clock-cells = <1>;
-      #reset-cells = <1>;
-      #power-domain-cells = <1>;
-    };
-...
diff --git a/Documentation/devicetree/bindings/clock/qcom,camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,camcc.yaml
new file mode 100644
index 000000000000..81807b8e0d24
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,camcc.yaml
@@ -0,0 +1,171 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,camcc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Camera Clock & Reset Controller
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+  - Jonathan Marek <jonathan@marek.ca>
+  - Konrad Dybcio <konrad.dybcio@linaro.org>
+  - Taniya Das <quic_tdas@quicinc.com>
+  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
+
+description: |
+  Qualcomm camera clock control module provides the clocks, resets and power
+  domains on Qualcomm SoCs.
+
+  See also:: include/dt-bindings/clock/qcom,camcc-sc7180.h
+  See also:: include/dt-bindings/clock/qcom,camcc-sc7280.h
+  See also:: include/dt-bindings/clock/qcom,camcc-sdm845.h
+  See also:: include/dt-bindings/clock/qcom,camcc-sm8250.h
+  See also:: include/dt-bindings/clock/qcom,sm6350-camcc.h
+  See also:: include/dt-bindings/clock/qcom,sm8450-camcc.h
+  See also:: include/dt-bindings/clock/qcom,sm8550-camcc.h
+
+properties:
+  compatible:
+    enum:
+      - qcom,sc7180-camcc
+      - qcom,sc7280-camcc
+      - qcom,sdm845-camcc
+      - qcom,sm6350-camcc
+      - qcom,sm8250-camcc
+      - qcom,sm8450-camcc
+      - qcom,sm8550-camcc
+
+  clocks:
+    minItems: 1
+    maxItems: 4
+
+  clock-names:
+    minItems: 1
+    maxItems: 4
+
+  '#clock-cells':
+    const: 1
+
+  '#reset-cells':
+    const: 1
+
+  '#power-domain-cells':
+    const: 1
+
+  power-domains:
+    maxItems: 1
+    description:
+      A phandle and PM domain specifier for the MMCX power domain.
+
+  reg:
+    maxItems: 1
+
+  required-opps:
+    maxItems: 1
+    description:
+      OPP node describing required MMCX performance point.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - '#clock-cells'
+  - '#reset-cells'
+  - '#power-domain-cells'
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sc7180-camcc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Board XO source
+            - description: Camera_ahb clock from GCC
+            - description: Camera XO clock from GCC
+        clock-names:
+          items:
+            - const: bi_tcxo
+            - const: iface
+            - const: xo
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sdm845-camcc
+            - qcom,sm6350-camcc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Board XO source
+        clock-names:
+          items:
+            - const: bi_tcxo
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sc7280-camcc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Board XO source
+            - description: Board XO active source
+            - description: Sleep clock source
+        clock-names:
+          items:
+            - const: bi_tcxo
+            - const: bi_tcxo_ao
+            - const: sleep_clk
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm8250-camcc
+            - qcom,sm8450-camcc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: AHB
+            - description: Board XO source
+            - description: Board active XO source
+            - description: Sleep clock source
+        clock-names:
+          items:
+            - const: iface
+            - const: bi_tcxo
+            - const: bi_tcxo_ao
+            - const: sleep_clk
+      required:
+        - power-domains
+        - required-opps
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-sm8250.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+    clock-controller@ad00000 {
+      compatible = "qcom,sm8250-camcc";
+      reg = <0x0ad00000 0x10000>;
+      clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+               <&rpmhcc RPMH_CXO_CLK>,
+               <&rpmhcc RPMH_CXO_CLK_A>,
+               <&sleep_clk>;
+      clock-names = "iface", "bi_tcxo", "bi_tcxo_ao", "sleep_clk";
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+      #power-domain-cells = <1>;
+      power-domains = <&rpmhpd RPMHPD_MMCX>;
+      required-opps = <&rpmhpd_opp_low_svs>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/clock/qcom,sc7180-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sc7180-camcc.yaml
deleted file mode 100644
index 2dfc2a4f1918..000000000000
--- a/Documentation/devicetree/bindings/clock/qcom,sc7180-camcc.yaml
+++ /dev/null
@@ -1,72 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/clock/qcom,sc7180-camcc.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Qualcomm Camera Clock & Reset Controller on SC7180
-
-maintainers:
-  - Taniya Das <quic_tdas@quicinc.com>
-
-description: |
-  Qualcomm camera clock control module provides the clocks, resets and power
-  domains on SC7180.
-
-  See also:: include/dt-bindings/clock/qcom,camcc-sc7180.h
-
-properties:
-  compatible:
-    const: qcom,sc7180-camcc
-
-  clocks:
-    items:
-      - description: Board XO source
-      - description: Camera_ahb clock from GCC
-      - description: Camera XO clock from GCC
-
-  clock-names:
-    items:
-      - const: bi_tcxo
-      - const: iface
-      - const: xo
-
-  '#clock-cells':
-    const: 1
-
-  '#reset-cells':
-    const: 1
-
-  '#power-domain-cells':
-    const: 1
-
-  reg:
-    maxItems: 1
-
-required:
-  - compatible
-  - reg
-  - clocks
-  - clock-names
-  - '#clock-cells'
-  - '#reset-cells'
-  - '#power-domain-cells'
-
-additionalProperties: false
-
-examples:
-  - |
-    #include <dt-bindings/clock/qcom,gcc-sc7180.h>
-    #include <dt-bindings/clock/qcom,rpmh.h>
-    clock-controller@ad00000 {
-      compatible = "qcom,sc7180-camcc";
-      reg = <0x0ad00000 0x10000>;
-      clocks = <&rpmhcc RPMH_CXO_CLK>,
-               <&gcc GCC_CAMERA_AHB_CLK>,
-               <&gcc GCC_CAMERA_XO_CLK>;
-      clock-names = "bi_tcxo", "iface", "xo";
-      #clock-cells = <1>;
-      #reset-cells = <1>;
-      #power-domain-cells = <1>;
-    };
-...
diff --git a/Documentation/devicetree/bindings/clock/qcom,sc7280-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sc7280-camcc.yaml
deleted file mode 100644
index 01feef1cab0a..000000000000
--- a/Documentation/devicetree/bindings/clock/qcom,sc7280-camcc.yaml
+++ /dev/null
@@ -1,71 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/clock/qcom,sc7280-camcc.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Qualcomm Camera Clock & Reset Controller on SC7280
-
-maintainers:
-  - Taniya Das <quic_tdas@quicinc.com>
-
-description: |
-  Qualcomm camera clock control module provides the clocks, resets and
-  power domains on SC7280.
-
-  See also:: include/dt-bindings/clock/qcom,camcc-sc7280.h
-
-properties:
-  compatible:
-    const: qcom,sc7280-camcc
-
-  clocks:
-    items:
-      - description: Board XO source
-      - description: Board XO active source
-      - description: Sleep clock source
-
-  clock-names:
-    items:
-      - const: bi_tcxo
-      - const: bi_tcxo_ao
-      - const: sleep_clk
-
-  '#clock-cells':
-    const: 1
-
-  '#reset-cells':
-    const: 1
-
-  '#power-domain-cells':
-    const: 1
-
-  reg:
-    maxItems: 1
-
-required:
-  - compatible
-  - reg
-  - clocks
-  - clock-names
-  - '#clock-cells'
-  - '#reset-cells'
-  - '#power-domain-cells'
-
-additionalProperties: false
-
-examples:
-  - |
-    #include <dt-bindings/clock/qcom,rpmh.h>
-    clock-controller@ad00000 {
-      compatible = "qcom,sc7280-camcc";
-      reg = <0x0ad00000 0x10000>;
-      clocks = <&rpmhcc RPMH_CXO_CLK>,
-               <&rpmhcc RPMH_CXO_CLK_A>,
-               <&sleep_clk>;
-      clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk";
-      #clock-cells = <1>;
-      #reset-cells = <1>;
-      #power-domain-cells = <1>;
-    };
-...
diff --git a/Documentation/devicetree/bindings/clock/qcom,sdm845-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sdm845-camcc.yaml
deleted file mode 100644
index 91d1f7918037..000000000000
--- a/Documentation/devicetree/bindings/clock/qcom,sdm845-camcc.yaml
+++ /dev/null
@@ -1,65 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/clock/qcom,sdm845-camcc.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Qualcomm Camera Clock & Reset Controller on SDM845
-
-maintainers:
-  - Bjorn Andersson <bjorn.andersson@linaro.org>
-
-description: |
-  Qualcomm camera clock control module provides the clocks, resets and power
-  domains on SDM845.
-
-  See also:: include/dt-bindings/clock/qcom,camcc-sm845.h
-
-properties:
-  compatible:
-    const: qcom,sdm845-camcc
-
-  clocks:
-    items:
-      - description: Board XO source
-
-  clock-names:
-    items:
-      - const: bi_tcxo
-
-  '#clock-cells':
-    const: 1
-
-  '#reset-cells':
-    const: 1
-
-  '#power-domain-cells':
-    const: 1
-
-  reg:
-    maxItems: 1
-
-required:
-  - compatible
-  - reg
-  - clocks
-  - clock-names
-  - '#clock-cells'
-  - '#reset-cells'
-  - '#power-domain-cells'
-
-additionalProperties: false
-
-examples:
-  - |
-    #include <dt-bindings/clock/qcom,rpmh.h>
-    clock-controller@ad00000 {
-      compatible = "qcom,sdm845-camcc";
-      reg = <0x0ad00000 0x10000>;
-      clocks = <&rpmhcc RPMH_CXO_CLK>;
-      clock-names = "bi_tcxo";
-      #clock-cells = <1>;
-      #reset-cells = <1>;
-      #power-domain-cells = <1>;
-    };
-...
diff --git a/Documentation/devicetree/bindings/clock/qcom,sm6350-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm6350-camcc.yaml
deleted file mode 100644
index fd6658cb793d..000000000000
--- a/Documentation/devicetree/bindings/clock/qcom,sm6350-camcc.yaml
+++ /dev/null
@@ -1,49 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/clock/qcom,sm6350-camcc.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Qualcomm Camera Clock & Reset Controller on SM6350
-
-maintainers:
-  - Konrad Dybcio <konrad.dybcio@linaro.org>
-
-description: |
-  Qualcomm camera clock control module provides the clocks, resets and  power
-  domains on SM6350.
-
-  See also:: include/dt-bindings/clock/qcom,sm6350-camcc.h
-
-properties:
-  compatible:
-    const: qcom,sm6350-camcc
-
-  clocks:
-    items:
-      - description: Board XO source
-
-  reg:
-    maxItems: 1
-
-required:
-  - compatible
-  - clocks
-
-allOf:
-  - $ref: qcom,gcc.yaml#
-
-unevaluatedProperties: false
-
-examples:
-  - |
-    #include <dt-bindings/clock/qcom,rpmh.h>
-    clock-controller@ad00000 {
-      compatible = "qcom,sm6350-camcc";
-      reg = <0x0ad00000 0x16000>;
-      clocks = <&rpmhcc RPMH_CXO_CLK>;
-      #clock-cells = <1>;
-      #reset-cells = <1>;
-      #power-domain-cells = <1>;
-    };
-...
diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
deleted file mode 100644
index dc3c18e4ead7..000000000000
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
+++ /dev/null
@@ -1,85 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/clock/qcom,sm8450-camcc.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Qualcomm Camera Clock & Reset Controller on SM8450
-
-maintainers:
-  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
-
-description: |
-  Qualcomm camera clock control module provides the clocks, resets and power
-  domains on SM8450.
-
-  See also::
-    include/dt-bindings/clock/qcom,sm8450-camcc.h
-    include/dt-bindings/clock/qcom,sm8550-camcc.h
-
-properties:
-  compatible:
-    enum:
-      - qcom,sm8450-camcc
-      - qcom,sm8550-camcc
-
-  clocks:
-    items:
-      - description: Camera AHB clock from GCC
-      - description: Board XO source
-      - description: Board active XO source
-      - description: Sleep clock source
-
-  power-domains:
-    maxItems: 1
-    description:
-      A phandle and PM domain specifier for the MMCX power domain.
-
-  required-opps:
-    maxItems: 1
-    description:
-      A phandle to an OPP node describing required MMCX performance point.
-
-  '#clock-cells':
-    const: 1
-
-  '#reset-cells':
-    const: 1
-
-  '#power-domain-cells':
-    const: 1
-
-  reg:
-    maxItems: 1
-
-required:
-  - compatible
-  - reg
-  - clocks
-  - power-domains
-  - required-opps
-  - '#clock-cells'
-  - '#reset-cells'
-  - '#power-domain-cells'
-
-additionalProperties: false
-
-examples:
-  - |
-    #include <dt-bindings/clock/qcom,gcc-sm8450.h>
-    #include <dt-bindings/clock/qcom,rpmh.h>
-    #include <dt-bindings/power/qcom,rpmhpd.h>
-    clock-controller@ade0000 {
-      compatible = "qcom,sm8450-camcc";
-      reg = <0xade0000 0x20000>;
-      clocks = <&gcc GCC_CAMERA_AHB_CLK>,
-               <&rpmhcc RPMH_CXO_CLK>,
-               <&rpmhcc RPMH_CXO_CLK_A>,
-               <&sleep_clk>;
-      power-domains = <&rpmhpd RPMHPD_MMCX>;
-      required-opps = <&rpmhpd_opp_low_svs>;
-      #clock-cells = <1>;
-      #reset-cells = <1>;
-      #power-domain-cells = <1>;
-    };
-...
-- 
2.40.1


