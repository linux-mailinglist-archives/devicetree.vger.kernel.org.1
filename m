Return-Path: <devicetree+bounces-4796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAB97B4098
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 15:41:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 9407CB20A6E
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 13:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D82CD125DA;
	Sat, 30 Sep 2023 13:41:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322B211727
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 13:41:24 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0836EFA
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 06:41:22 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4054496bde3so132982955e9.1
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 06:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696081280; x=1696686080; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rjipoyU4KPDX/dyi7xPGlEZeRzfxRz0JAyHv25EP1WM=;
        b=qm3DR/EKywPSVZlYSWwCaxkuQfJzJIkDeG88evtTzkjPI4zceDNBykGkBYkPY/S9Wq
         4UFNP3DChVT7MQ1wGJ0tVdDcZR0DuJ94aLS6oMoTSbwt1Wb/9Aa+xBoL7Iv8VQceFZ/h
         ofImezpZXRy8ecv2ovKL8H7kjkVaqwYtwkJoSWga7sYmvd3EHqyX9KGgRwNaK4BtD3wJ
         slhbeWSFQuBHKKvr0hq9+PEAvvMOtrujRZZ64FpVV+c/x/jV09gnvS7c7RCn7mpcCayv
         viJd/fcmv9QShdqSsls68SXkhbLKMheuU2Lir5CnKiWm5drMoKvPpigHBkMk7rLwnarn
         EzLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696081280; x=1696686080;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rjipoyU4KPDX/dyi7xPGlEZeRzfxRz0JAyHv25EP1WM=;
        b=LycFwas5EwXce0ok1pF84wC7t0LyLdy+fmDlPRW8QEYbTO4jUn0jZDPkIPFByXtspP
         Ob30vuTxHItNf4A3aiarT6SueQwyDKdJgEw/xqkzRZp5I4hWGedhuv+gLAtJPn/Jv12q
         91R2Ykjum3l5MtoNFyHA4aQePcsp5dv0U7Rl7QIQarCxOAyBORdm/CkrcLemHvFb/SRI
         RcJmDsiD/kpwIpdzfv2ld6mcUJXcHwHg/41whM83BTZcjR7Nu52+Eh1sFZ3l/2ijUyCk
         Lk+EZswxHuWgQCp87ERrmDRwQjZswed6Jq6B3CmnRuzK5Pc7DwbToXfgsoWZrh9D+hbR
         xqVw==
X-Gm-Message-State: AOJu0YwLYKlgmRVOBltYXAmhSabyT2HAsFUj98/pyDzvQ/Snf82IK0kj
	PQxw+VFJPdubh1oFC4PwyiEub9pacDgzlUuziOEOZg==
X-Google-Smtp-Source: AGHT+IE7E0TbrNQMPPUrmKZ+rRGVXAyIx+xyx6Q1NaNcKAqz2fZJGpO6+oqAFOhV+nrQ5hivTzIjmA==
X-Received: by 2002:a05:600c:c8:b0:405:514d:eb0e with SMTP id u8-20020a05600c00c800b00405514deb0emr7292565wmm.19.1696081280469;
        Sat, 30 Sep 2023 06:41:20 -0700 (PDT)
Received: from x13s-linux.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id 11-20020a05600c020b00b003fe2b081661sm3408261wmi.30.2023.09.30.06.41.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Sep 2023 06:41:20 -0700 (PDT)
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
Subject: [PATCH v2 2/5] dt-bindings: clock: Add SM8550 CAMCC yaml
Date: Sat, 30 Sep 2023 14:41:11 +0100
Message-Id: <20230930134114.1816590-3-bryan.odonoghue@linaro.org>
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The SM8550 should have its own yaml description file, not be listed as a
compatible string of the SM8450 CAMCC driver since SM8450 and SM8550
have separate CAMCC drivers.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/clock/qcom,sm8450-camcc.yaml     |  8 +--
 .../bindings/clock/qcom,sm8550-camcc.yaml     | 56 +++++++++++++++++++
 2 files changed, 58 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,sm8550-camcc.yaml

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
index 5db7bd8424d8..9d16acc53312 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
@@ -13,18 +13,14 @@ description: |
   Qualcomm camera clock control module provides the clocks, resets and power
   domains on SM8450.
 
-  See also::
-    include/dt-bindings/clock/qcom,sm8450-camcc.h
-    include/dt-bindings/clock/qcom,sm8550-camcc.h
+  See also:: include/dt-bindings/clock/qcom,sm8450-camcc.h
 
 allOf:
   - $ref: qcom,camcc-common.yaml#
 
 properties:
   compatible:
-    enum:
-      - qcom,sm8450-camcc
-      - qcom,sm8550-camcc
+    const: qcom,sm8450-camcc
 
   clocks:
     items:
diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-camcc.yaml
new file mode 100644
index 000000000000..93534632c0a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8550-camcc.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,sm8550-camcc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Camera Clock & Reset Controller on SM8550
+
+maintainers:
+  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
+
+description: |
+  Qualcomm camera clock control module provides the clocks, resets and power
+  domains on SM8550.
+
+  See also:: include/dt-bindings/clock/qcom,sm8550-camcc.h
+
+allOf:
+  - $ref: qcom,camcc-common.yaml#
+
+properties:
+  compatible:
+    const: qcom,sm8550-camcc
+
+  clocks:
+    items:
+      - description: Camera AHB clock from GCC
+      - description: Board XO source
+      - description: Board active XO source
+      - description: Sleep clock source
+
+required:
+  - power-domains
+  - required-opps
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,sm8550-gcc.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+    clock-controller@ade0000 {
+      compatible = "qcom,sm8550-camcc";
+      reg = <0xade0000 0x20000>;
+      clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+               <&rpmhcc RPMH_CXO_CLK>,
+               <&rpmhcc RPMH_CXO_CLK_A>,
+               <&sleep_clk>;
+      power-domains = <&rpmhpd RPMHPD_MMCX>;
+      required-opps = <&rpmhpd_opp_low_svs>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+      #power-domain-cells = <1>;
+    };
+...
-- 
2.40.1


