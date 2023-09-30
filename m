Return-Path: <devicetree+bounces-4795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 457267B4094
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 15:41:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1FE7728217E
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 13:41:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FAE011CAD;
	Sat, 30 Sep 2023 13:41:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F2511C85
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 13:41:23 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86DC21AE
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 06:41:20 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3232be274a0so963290f8f.1
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 06:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696081279; x=1696686079; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nkwdayUfik+FbUh6EkOXTzc/uvgsULue+t2MGBQI6w8=;
        b=hSYOoq+f/wQk7Hx+J26g3aY1nrBj0na/4KO47qDe5NMYPV56e0CFcWsGLSE7xDNZXI
         OEe5hBcUQRFfMCEDiQni2kTNSxqxOpFhiMnLozE2+2J4qmGGcZehSYFb7nIDvws0UShW
         B81mdkQadM7em+togziHniYHEzjnjDLmGsd2MW79fjAjx0yOk5oKZ2YiEWpv35hUvcaw
         tDR1EiePrGnrKXdB6UOIPXySAAwYRrS7n9LxSjggySAgHtPPHf06XP3bSOtxPinaEB4e
         E8/SfZrHYS2S0ZE/iAW3K/ekMYQl0p9XjAKEdX1OU7QlT5faMUhFs6OpxsJcJroKfYe9
         rnNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696081279; x=1696686079;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nkwdayUfik+FbUh6EkOXTzc/uvgsULue+t2MGBQI6w8=;
        b=LDkSle9ruLdvzqbQP6WVxdCad/fxaAQfMNveTCvjzLT4O2z7IDxbaeeeS1srCNyMGT
         A2DEmVD8bdj/WY1ahEDwuV3l5Ajl7kSvDshvzKNPcbV10+uh9Mu777kkD2Y/AQsoipfo
         JpJBznar2ZyxxxGVPSacprgW/g17+LrIiddurkOYacRC3PmwntyPXiKS/mA4aGRDaq3J
         /IXLul283H2VMU5OwezdpR7Of6CJd82up80zrfaTwqk+LLyNaGTviY3M0bL7D6reXWpC
         5Y1L8OW2G7ZZKKdBvCfgi1SLLLuxfahotSDRjQCN9Lz9F+6INkXQOTWiTq5yr3vtkJUk
         cx4Q==
X-Gm-Message-State: AOJu0Ywt+CiTgXgZRcU+xc653B+3MWItk15wJ7ch8jqM3cbuY7kukzVY
	fd6L0pOTnYt7HvXVaTKzfviyZh5P7xIEvMNONaOBbQ==
X-Google-Smtp-Source: AGHT+IHRmOfsk2B9aFrA2a1FQHJdhuzuBUFes8uJuGtHG2YSEZR3s4VHD7FouTNAysS9qWk6uypzJQ==
X-Received: by 2002:adf:f38c:0:b0:323:3062:ef5d with SMTP id m12-20020adff38c000000b003233062ef5dmr5998847wro.33.1696081278912;
        Sat, 30 Sep 2023 06:41:18 -0700 (PDT)
Received: from x13s-linux.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id 11-20020a05600c020b00b003fe2b081661sm3408261wmi.30.2023.09.30.06.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Sep 2023 06:41:18 -0700 (PDT)
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
Subject: [PATCH v2 1/5] dt-bindings: clock: qcom,camcc-common.yaml: Add a common file for camcc
Date: Sat, 30 Sep 2023 14:41:10 +0100
Message-Id: <20230930134114.1816590-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230930134114.1816590-1-bryan.odonoghue@linaro.org>
References: <20230930134114.1816590-1-bryan.odonoghue@linaro.org>
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

Various of the camcc bindings are repeated serially. Aggregate the
common defintions into one place declaring common required in one place
also.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/clock/qcom,camcc-common.yaml     | 44 +++++++++++++++++++
 .../bindings/clock/qcom,camcc-sm8250.yaml     | 32 ++------------
 .../bindings/clock/qcom,sc7180-camcc.yaml     | 23 ++--------
 .../bindings/clock/qcom,sc7280-camcc.yaml     | 23 ++--------
 .../bindings/clock/qcom,sdm845-camcc.yaml     | 23 ++--------
 .../bindings/clock/qcom,sm6350-camcc.yaml     | 13 ++----
 .../bindings/clock/qcom,sm8450-camcc.yaml     | 33 ++------------
 7 files changed, 67 insertions(+), 124 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,camcc-common.yaml

diff --git a/Documentation/devicetree/bindings/clock/qcom,camcc-common.yaml b/Documentation/devicetree/bindings/clock/qcom,camcc-common.yaml
new file mode 100644
index 000000000000..ce0140985fe7
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,camcc-common.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,camcc-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Camera Clock & Reset Controller common properties
+
+maintainers:
+  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
+
+description: |
+  Qualcomm camera clock control module provides the clocks, resets and power
+  domains on Qualcomm SoCs.
+
+allOf:
+  - $ref: qcom,gcc.yaml#
+
+properties:
+  compatible: true
+
+  clocks:
+    minItems: 1
+    maxItems: 4
+
+  clock-names:
+    minItems: 1
+    maxItems: 4
+
+  power-domains:
+    maxItems: 1
+    description:
+      A phandle and PM domain specifier for the MMCX power domain.
+
+  required-opps:
+    maxItems: 1
+    description:
+      OPP node describing required MMCX performance point.
+
+required:
+  - compatible
+  - clocks
+
+additionalProperties: true
diff --git a/Documentation/devicetree/bindings/clock/qcom,camcc-sm8250.yaml b/Documentation/devicetree/bindings/clock/qcom,camcc-sm8250.yaml
index 426335a2841c..e31b20076643 100644
--- a/Documentation/devicetree/bindings/clock/qcom,camcc-sm8250.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,camcc-sm8250.yaml
@@ -15,6 +15,9 @@ description: |
 
   See also:: include/dt-bindings/clock/qcom,camcc-sm8250.h
 
+allOf:
+  - $ref: qcom,camcc-common.yaml#
+
 properties:
   compatible:
     const: qcom,sm8250-camcc
@@ -33,37 +36,10 @@ properties:
       - const: bi_tcxo_ao
       - const: sleep_clk
 
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
 required:
-  - compatible
-  - reg
-  - clocks
   - clock-names
-  - '#clock-cells'
-  - '#reset-cells'
-  - '#power-domain-cells'
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/clock/qcom,sc7180-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sc7180-camcc.yaml
index 2dfc2a4f1918..40cef12d67e0 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sc7180-camcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sc7180-camcc.yaml
@@ -15,6 +15,9 @@ description: |
 
   See also:: include/dt-bindings/clock/qcom,camcc-sc7180.h
 
+allOf:
+  - $ref: qcom,camcc-common.yaml#
+
 properties:
   compatible:
     const: qcom,sc7180-camcc
@@ -31,28 +34,10 @@ properties:
       - const: iface
       - const: xo
 
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
 required:
-  - compatible
-  - reg
-  - clocks
   - clock-names
-  - '#clock-cells'
-  - '#reset-cells'
-  - '#power-domain-cells'
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/clock/qcom,sc7280-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sc7280-camcc.yaml
index 01feef1cab0a..057f93b4971b 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sc7280-camcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sc7280-camcc.yaml
@@ -15,6 +15,9 @@ description: |
 
   See also:: include/dt-bindings/clock/qcom,camcc-sc7280.h
 
+allOf:
+  - $ref: qcom,camcc-common.yaml#
+
 properties:
   compatible:
     const: qcom,sc7280-camcc
@@ -31,28 +34,10 @@ properties:
       - const: bi_tcxo_ao
       - const: sleep_clk
 
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
 required:
-  - compatible
-  - reg
-  - clocks
   - clock-names
-  - '#clock-cells'
-  - '#reset-cells'
-  - '#power-domain-cells'
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/clock/qcom,sdm845-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sdm845-camcc.yaml
index 91d1f7918037..553fae55bc66 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sdm845-camcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sdm845-camcc.yaml
@@ -15,6 +15,9 @@ description: |
 
   See also:: include/dt-bindings/clock/qcom,camcc-sm845.h
 
+allOf:
+  - $ref: qcom,camcc-common.yaml#
+
 properties:
   compatible:
     const: qcom,sdm845-camcc
@@ -27,28 +30,10 @@ properties:
     items:
       - const: bi_tcxo
 
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
 required:
-  - compatible
-  - reg
-  - clocks
   - clock-names
-  - '#clock-cells'
-  - '#reset-cells'
-  - '#power-domain-cells'
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/clock/qcom,sm6350-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm6350-camcc.yaml
index fd6658cb793d..5a004396659b 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm6350-camcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm6350-camcc.yaml
@@ -15,6 +15,9 @@ description: |
 
   See also:: include/dt-bindings/clock/qcom,sm6350-camcc.h
 
+allOf:
+  - $ref: qcom,camcc-common.yaml#
+
 properties:
   compatible:
     const: qcom,sm6350-camcc
@@ -23,16 +26,6 @@ properties:
     items:
       - description: Board XO source
 
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
 unevaluatedProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
index dc3c18e4ead7..5db7bd8424d8 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
@@ -17,6 +17,9 @@ description: |
     include/dt-bindings/clock/qcom,sm8450-camcc.h
     include/dt-bindings/clock/qcom,sm8550-camcc.h
 
+allOf:
+  - $ref: qcom,camcc-common.yaml#
+
 properties:
   compatible:
     enum:
@@ -30,39 +33,11 @@ properties:
       - description: Board active XO source
       - description: Sleep clock source
 
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
 required:
-  - compatible
-  - reg
-  - clocks
   - power-domains
   - required-opps
-  - '#clock-cells'
-  - '#reset-cells'
-  - '#power-domain-cells'
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.40.1


