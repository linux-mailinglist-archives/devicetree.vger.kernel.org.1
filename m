Return-Path: <devicetree+bounces-149502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3432A3FA74
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:13:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38F07440481
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36A711D54F7;
	Fri, 21 Feb 2025 16:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xOiSueHh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295C61F152B
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 16:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740153644; cv=none; b=G+DV7+/oqK0LjD37MEIyNckFY3f0NCuXXaORTcBLv8K06+LHrslMcr0h6dS6qDOv8pZ0Wp/BKL3MxI5zzInKpynG75g3kcncTtD2R04l+3bjnyRKVV0gM6DoPpBB0bQYXnHvwnWC8eQaS/RMN5ysHnXTh83uF6tvVnRFBUpY/Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740153644; c=relaxed/simple;
	bh=Q9/weWMqsRUAJgN7rFGcM/rDMNKtQZwTpoVO7ftqEdc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aKvCOmGprw1S4VyniY0JkXxMqnV6Ye4O/XZc7s28mflS6pbqpC1MFa1rWt2mtdVkMcIkus/sYp3VJgBD2ajb/iqBcdw/Fi1bSx50DOgpj0x3W3Zj8rzd28lOBTEla++azaDxk67zgCtk6s7RcxpFQCuHDUY9mPpufJqUoj1mUoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xOiSueHh; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ab7e08f56a0so40597166b.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:00:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740153640; x=1740758440; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=97064Lo4S+yLBMHfAaUS5/jSMM3joMD+alo0JyNN3fU=;
        b=xOiSueHhy8QF7hfHeYYoZQdtdv3OW1EfLtPRwYADfKK9JsViiO55gdIFwrbE87H61l
         Ly4vNSNKrvmzgubU7rU0DYhc/jqKWu56GHAjpd258AMDuFVU6Jd14lJvGQ9JlbbbK0sf
         kp6f/IV+oMCBVGvL9ywKRh5ZV5MLbf7qWgyIpEPb0ZGlbtpieuXgeLZb8RBoN8zz7bL+
         kCFAZ5lawUoy81GNK1+7VtAR6rdXmYYQkgiFvEjhKaEHrJHsj07/jW+/h+PjiVDRlQgb
         eCcE0Mo5Qoh7XxGnJGmMsj82n7sfnOpAUoGnUyG3si4HdcF1pR3c9OyaZwg9JP3nFGn8
         2k6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740153640; x=1740758440;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=97064Lo4S+yLBMHfAaUS5/jSMM3joMD+alo0JyNN3fU=;
        b=dbOhsJc0zo9uNEmqNJJoIxh/gikSnQkyFlndtKq5JoIiQWdPlTZtC0uRhJQ3eHs/Wj
         3Iz0d7MYCTMoxiAdTwXH9TpjfmoXWQ3r+oep+Z/knAfAULavtpsfZ9+4gHJomOJICf5j
         YXsWu2L4/R9fqkIphC+xvmcwnJHs7w7rqHDKmGR4XgL+r8uhBj8yon0xgyUY/BewPBsJ
         7TekwwWD1N8LqeaYUTvbPYunOOIB7db7EmQV2N1alm43hTTdktFrhkMj/SKTLP7TLNTN
         T/gYWK8+Tz1xSbWSTODxDk3cD4LVSYaq/CWRAHzjoMdRE07fuwbzBsB2/d8WAQx6umsM
         9HiA==
X-Forwarded-Encrypted: i=1; AJvYcCVo3y/qgl+Kl9EZiNIrNCU5ulndE00jbVwOQA54OUf3tFijmE8PgQpXLuhuqbNb0IyyYi0zW9lFauw0@vger.kernel.org
X-Gm-Message-State: AOJu0Ywdu8i+rWc2dOauhzKDSDcuhyxCFResfN18/07o1LdVLW+hFwNw
	Ijp3VMC+apUnlcuxXYUYN/PthW0+cy5eTHjJgoDdV0mGddO83pepugPxZLM5sUU=
X-Gm-Gg: ASbGncsjUHvE/fDfrcdejaiRx1cEbOitAQpwkrjGjIO5T9+b/KphgwsFdGIA96vYJpD
	eCZIDOcC9dotnacCHMduEksyaSv9KNhsyOFVNSiwnbXrdqpZRLqngu8lmZ4b7Ha3dnaiaO8ooFz
	45ya3ObZh2zoS7Pa9vHsJKfcpUS6E++s/xOWhnSWavd94xZ+pa6Gz+J+H65Obei6H63YTsrGVrY
	eEjZXHVRjuXFNmHg+dvxp9mooSQnXrhPplOYuKNd+gM1cvyrgdPn5hyFuuwQ953w2qF3DF18rHB
	M2KXZ7msLeiuOPl18YCD626k9YXSfOY+6CkxfBFl+68v/QlLkksU+OeVl66UzBVTBOHOFYKz1UE
	=
X-Google-Smtp-Source: AGHT+IHhkj9hOW37OUEtDt15pY4+O+vqnXmLkqZtiWM6bCvEaBTH0PBg3GND1eglU1hwgUThMgFgSA==
X-Received: by 2002:a17:907:2ce2:b0:ab7:cd83:98bb with SMTP id a640c23a62f3a-abc09a3c1c5mr146987666b.5.1740153640111;
        Fri, 21 Feb 2025 08:00:40 -0800 (PST)
Received: from krzk-bin.. (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb9da9f0desm983616166b.105.2025.02.21.08.00.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 08:00:39 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3] dt-bindings: remoteproc: Add SM8750 CDSP
Date: Fri, 21 Feb 2025 17:00:36 +0100
Message-ID: <20250221160036.159557-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add remote processor PAS loader for SM8750 CDSP processor, compatible
with earlier SM8650 with minor difference: one more sixth shutdown
interrupt.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changesin v3:
1. Split MPSS into separate patch, keep the ack.

v2: https://lore.kernel.org/all/20250220154132.199358-1-krzysztof.kozlowski@linaro.org/
---
 .../bindings/remoteproc/qcom,sm8550-pas.yaml  | 29 ++++++++++++++++---
 1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index a24cbb61bda7..8bfded3c66ef 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -29,6 +29,9 @@ properties:
       - items:
           - const: qcom,sm8750-adsp-pas
           - const: qcom,sm8550-adsp-pas
+      - items:
+          - const: qcom,sm8750-cdsp-pas
+          - const: qcom,sm8650-cdsp-pas
 
   reg:
     maxItems: 1
@@ -114,6 +117,23 @@ allOf:
         memory-region:
           minItems: 3
           maxItems: 3
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8750-cdsp-pas
+    then:
+      properties:
+        interrupts:
+          maxItems: 6
+        interrupt-names:
+          maxItems: 6
+        memory-region:
+          minItems: 3
+          maxItems: 3
+
   - if:
       properties:
         compatible:
@@ -184,10 +204,11 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - qcom,sm8550-cdsp-pas
-            - qcom,sm8650-cdsp-pas
-            - qcom,x1e80100-cdsp-pas
+          contains:
+            enum:
+              - qcom,sm8550-cdsp-pas
+              - qcom,sm8650-cdsp-pas
+              - qcom,x1e80100-cdsp-pas
     then:
       properties:
         power-domains:
-- 
2.43.0


