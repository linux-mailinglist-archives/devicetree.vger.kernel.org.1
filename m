Return-Path: <devicetree+bounces-160159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AC0A6DA8B
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:57:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 342901891CC7
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED416261592;
	Mon, 24 Mar 2025 12:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gm2f9qjb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF12261589
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742820790; cv=none; b=A71gL0fGaCoc8o+CgcWQfcvDp5IQoFdh2h5C2ZfoIp+g9l4yP+QjXOq0wLpCKy3jjR9sLYOvDr1C858i77v2ELkWRY+cWcsdsFGtDoH9Y0lJukfwme6idMb8lYf5hyaS4LlsM6t/JD7pMCuf4wO8fi69Iul7AZW6q4+30wgfwMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742820790; c=relaxed/simple;
	bh=rbqS5rDyjhAr0cFlh6cZN2ee3PXweGA4qM7ad4MATTg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TkW+XzeHKutVk9WNBQobL3CRIs+oMK+tjyUn0JKjoBuf5bnGtpSRW6snTesLTGYGxU2vLI7q4Un2d0MDaRW7+bufvb14ruxm2LlznLcaWvxcRcJWk6yEoydr0MKChWEX3uDt5Zw1yfVPQzAHEjDo/gVp0JP9LYwX6+RYiFSOMyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gm2f9qjb; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cf861f936so5976105e9.3
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 05:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742820786; x=1743425586; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SwCok12sX9NbWRz4qhUA5h3zsbyOHF7oWQm31idZcPE=;
        b=Gm2f9qjbBAWXjnRit39m+tfugcpjSRtlx/xEmZx0Szdg7ZHPRRcKf6VwSG+rUSrZOh
         G2me8x3iiRvwvR/UEO8XDxIPjMgapgHb9pdxVB6KUyoxRqcepuCv44Hul7McUfbrM1WF
         TOcSuDla9N6rnHzajtH9l/1k8FiEmsmIxp9DYmbcNCm+56fNCdOckoU5oVrU0WToJ1k4
         xMZwwo9tHzQtVirLj+Td3tyXs3z9gKBd4ol3j1zshFgyw9HGVn9kayGK8XYJ0TkHFDx9
         hJ10sJGD86QJCG9XQ5eYyJW8ALlkR1et4AFLQn1sJbjQ9UkvrqsTTdU0ZJzymT1NzGhI
         /TUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742820786; x=1743425586;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SwCok12sX9NbWRz4qhUA5h3zsbyOHF7oWQm31idZcPE=;
        b=Hl0gtWwLkVCIU6+IRiIM7vQKQ/l1CE+EiU4IvOHQb673QIW3d8oNAoyRkbN5o5jcow
         Lof9gdjMa6clcg1IVgV016ASAvqH4pZkYYm6R/ZAOXvwZbXEjtDqxIHLlrRSFhB5HxOy
         vcPRY9Li5o87lNwiv/nkJrY+f4GN7C2mOitJz9gPP7YUzi3SaUCeds07jHnRkx2lDFxy
         k5sSVL9bpsa0vDqA8wL2ZflbTEKmUHls6Xi5olFckouA6aEk3eFONLcIKgk/yfZJ7szf
         yHmMWKwsgBDJjxAoy2PBUci2bC9DkXe1CdoK+TQoGwoKB+9wlPDtD6bpyrAg2RDL5NA7
         GfpA==
X-Forwarded-Encrypted: i=1; AJvYcCWy8SGtmUg+HSN7zlwQapmfUU2N6TvQvkjS/29pqbpeIv8GNwPEi5AfUxipnxbptA+IkvKVjDbsy0BS@vger.kernel.org
X-Gm-Message-State: AOJu0Ywwga/cDoAhQwWn9yy7tCTJsbrSQ763e2U8fWM9zcQbAH08KiBT
	IUZEWtJ3lotgFy+MOGIikalYw06OGnXOOBXPw7CIiH8ti93mLIEtpTQbVEIZGeM=
X-Gm-Gg: ASbGncu4CFb/ijs6vdxJDWCmDlZFos5UtTTwNUfN3W3924hv1cN74wc/mPkDaeQGHgg
	TlpmOcL4zoEAw14n8vlL/Y2V6hgthrcD1GWZC4fcUWFndJDBRxipNe9HtSCRZyWRN5ofhVlQqg6
	LDZ2bvRzY4KmGJVXaeCfINow0ajqr4Q2ryPtybML6xZzHUl2k4HKjEJaLPp5HMeiYgYenWdsAcz
	nTNRThJI8ryjf6+nStYwppnIZGcPTmCKtiuiJ1IUM1Kc7QjetzmrjRpemlSgNFcs1/5YZVHvLvl
	T0dqb/lG34kSVaMB9Js3xA2dk8mD2Xnj+q0bgIhMUbB2U2tQc51jFfyC6q30IhlblZYL
X-Google-Smtp-Source: AGHT+IEZtcOQ6XXGYyC8h5oFZTZe66HCgwwQp/S+UZCCHfUIYSyU4Nysg4iUWn4IaFpqshLaOPlPSw==
X-Received: by 2002:a05:600c:1d1c:b0:439:88bb:d00b with SMTP id 5b1f17b1804b1-43d50a3d1c6mr35133295e9.5.1742820786323;
        Mon, 24 Mar 2025 05:53:06 -0700 (PDT)
Received: from krzk-bin.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9efdedsm11003553f8f.96.2025.03.24.05.53.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 05:53:05 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Georgi Djakov <djakov@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Barnabas Czeman <barnabas.czeman@mainlining.org>,
	Brian Masney <masneyb@onstation.org>,
	Odelu Kukatla <quic_okukatla@quicinc.com>,
	Rohit Agarwal <quic_rohiagar@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: interconnect: Correct indentation and style in DTS example
Date: Mon, 24 Mar 2025 13:53:02 +0100
Message-ID: <20250324125302.82167-1-krzysztof.kozlowski@linaro.org>
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
mixtures 2- and 4-spaces in one binding.  While re-indenting, drop
unused labels.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/interconnect/qcom,msm8939.yaml   |  8 +++---
 .../bindings/interconnect/qcom,msm8953.yaml   | 20 ++++++-------
 .../bindings/interconnect/qcom,msm8974.yaml   | 18 ++++++------
 .../bindings/interconnect/qcom,rpm.yaml       | 12 ++++----
 .../bindings/interconnect/qcom,rpmh.yaml      | 28 +++++++++----------
 .../interconnect/qcom,sdx75-rpmh.yaml         | 16 +++++------
 6 files changed, 51 insertions(+), 51 deletions(-)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,msm8939.yaml b/Documentation/devicetree/bindings/interconnect/qcom,msm8939.yaml
index 4b08be72bbd7..534644cccdcb 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,msm8939.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,msm8939.yaml
@@ -70,8 +70,8 @@ examples:
         reg = <0x00580000 0x14000>;
         #interconnect-cells = <1>;
 
-          snoc_mm: interconnect-snoc {
-              compatible = "qcom,msm8939-snoc-mm";
-              #interconnect-cells = <1>;
-          };
+        snoc_mm: interconnect-snoc {
+            compatible = "qcom,msm8939-snoc-mm";
+            #interconnect-cells = <1>;
+        };
     };
diff --git a/Documentation/devicetree/bindings/interconnect/qcom,msm8953.yaml b/Documentation/devicetree/bindings/interconnect/qcom,msm8953.yaml
index 343ff62d7b65..56cdb77b369a 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,msm8953.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,msm8953.yaml
@@ -84,17 +84,17 @@ additionalProperties: false
 
 examples:
   - |
-      #include <dt-bindings/clock/qcom,gcc-msm8953.h>
+    #include <dt-bindings/clock/qcom,gcc-msm8953.h>
 
-      snoc: interconnect@580000 {
-          compatible = "qcom,msm8953-snoc";
-          reg = <0x580000 0x16080>;
+    interconnect@580000 {
+        compatible = "qcom,msm8953-snoc";
+        reg = <0x580000 0x16080>;
 
-          #interconnect-cells = <2>;
+        #interconnect-cells = <2>;
 
-          snoc_mm: interconnect-snoc {
-              compatible = "qcom,msm8953-snoc-mm";
+        interconnect-snoc {
+            compatible = "qcom,msm8953-snoc-mm";
 
-              #interconnect-cells = <2>;
-          };
-      };
+            #interconnect-cells = <2>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/interconnect/qcom,msm8974.yaml b/Documentation/devicetree/bindings/interconnect/qcom,msm8974.yaml
index 8004c4baf397..95ce25ce1f7d 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,msm8974.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,msm8974.yaml
@@ -50,13 +50,13 @@ additionalProperties: false
 
 examples:
   - |
-      #include <dt-bindings/clock/qcom,rpmcc.h>
+    #include <dt-bindings/clock/qcom,rpmcc.h>
 
-      bimc: interconnect@fc380000 {
-              reg = <0xfc380000 0x6a000>;
-              compatible = "qcom,msm8974-bimc";
-              #interconnect-cells = <1>;
-              clock-names = "bus", "bus_a";
-              clocks = <&rpmcc RPM_SMD_BIMC_CLK>,
-                       <&rpmcc RPM_SMD_BIMC_A_CLK>;
-      };
+    interconnect@fc380000 {
+        reg = <0xfc380000 0x6a000>;
+        compatible = "qcom,msm8974-bimc";
+        #interconnect-cells = <1>;
+        clock-names = "bus", "bus_a";
+        clocks = <&rpmcc RPM_SMD_BIMC_CLK>,
+                 <&rpmcc RPM_SMD_BIMC_A_CLK>;
+    };
diff --git a/Documentation/devicetree/bindings/interconnect/qcom,rpm.yaml b/Documentation/devicetree/bindings/interconnect/qcom,rpm.yaml
index 5aaa92a7cef7..01d436d4a553 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,rpm.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,rpm.yaml
@@ -41,10 +41,10 @@ unevaluatedProperties: false
 
 examples:
   - |
-      #include <dt-bindings/clock/qcom,rpmcc.h>
+    #include <dt-bindings/clock/qcom,rpmcc.h>
 
-      bimc: interconnect@400000 {
-          compatible = "qcom,msm8916-bimc";
-          reg = <0x00400000 0x62000>;
-          #interconnect-cells = <1>;
-      };
+    interconnect@400000 {
+        compatible = "qcom,msm8916-bimc";
+        reg = <0x00400000 0x62000>;
+        #interconnect-cells = <1>;
+    };
diff --git a/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml
index 1b9164dc162f..dad3ad2fd93b 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml
@@ -127,19 +127,19 @@ unevaluatedProperties: false
 
 examples:
   - |
-      #include <dt-bindings/interconnect/qcom,sdm845.h>
+    #include <dt-bindings/interconnect/qcom,sdm845.h>
 
-      mem_noc: interconnect@1380000 {
-             compatible = "qcom,sdm845-mem-noc";
-             reg = <0x01380000 0x27200>;
-             #interconnect-cells = <1>;
-             qcom,bcm-voters = <&apps_bcm_voter>;
-      };
+    interconnect@1380000 {
+        compatible = "qcom,sdm845-mem-noc";
+        reg = <0x01380000 0x27200>;
+        #interconnect-cells = <1>;
+        qcom,bcm-voters = <&apps_bcm_voter>;
+    };
 
-      mmss_noc: interconnect@1740000 {
-             compatible = "qcom,sdm845-mmss-noc";
-             reg = <0x01740000 0x1c1000>;
-             #interconnect-cells = <1>;
-             qcom,bcm-voter-names = "apps", "disp";
-             qcom,bcm-voters = <&apps_bcm_voter>, <&disp_bcm_voter>;
-      };
+    interconnect@1740000 {
+        compatible = "qcom,sdm845-mmss-noc";
+        reg = <0x01740000 0x1c1000>;
+        #interconnect-cells = <1>;
+        qcom,bcm-voter-names = "apps", "disp";
+        qcom,bcm-voters = <&apps_bcm_voter>, <&disp_bcm_voter>;
+    };
diff --git a/Documentation/devicetree/bindings/interconnect/qcom,sdx75-rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,sdx75-rpmh.yaml
index 71cf7e252bfc..4b5e9f9b07ec 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,sdx75-rpmh.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,sdx75-rpmh.yaml
@@ -78,15 +78,15 @@ examples:
     #include <dt-bindings/clock/qcom,rpmh.h>
 
     clk_virt: interconnect-0 {
-            compatible = "qcom,sdx75-clk-virt";
-            #interconnect-cells = <2>;
-            qcom,bcm-voters = <&apps_bcm_voter>;
-            clocks = <&rpmhcc RPMH_QPIC_CLK>;
+        compatible = "qcom,sdx75-clk-virt";
+        #interconnect-cells = <2>;
+        qcom,bcm-voters = <&apps_bcm_voter>;
+        clocks = <&rpmhcc RPMH_QPIC_CLK>;
     };
 
     system_noc: interconnect@1640000 {
-            compatible = "qcom,sdx75-system-noc";
-            reg = <0x1640000 0x4b400>;
-            #interconnect-cells = <2>;
-            qcom,bcm-voters = <&apps_bcm_voter>;
+        compatible = "qcom,sdx75-system-noc";
+        reg = <0x1640000 0x4b400>;
+        #interconnect-cells = <2>;
+        qcom,bcm-voters = <&apps_bcm_voter>;
     };
-- 
2.43.0


