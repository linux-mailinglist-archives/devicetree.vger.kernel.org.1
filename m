Return-Path: <devicetree+bounces-118218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 063589B9635
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 18:03:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29F131C222C9
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 17:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D1D01CC17F;
	Fri,  1 Nov 2024 17:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hS5vwtwe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E491CB526
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 17:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730480597; cv=none; b=QtYe+/+vmn+I23ZvdRDrrgH8mdGYqLOIPBtOuXf2vnzB0cln9C8SKZWgkl5TJM96yRsiDCwZo1PkaYDOkv6gntDHGFjDCW3N4InjWjaa9QxZo4sxDjH3dV34ywyuxWb8a+GxM+mHIBPoh0KWIm7EMl5Qa8/Wum9zXrBPJ5upeNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730480597; c=relaxed/simple;
	bh=hMCCbLDioYy+Gyryrg/qDlm9Q8ImU8TUBBfa89jXyLk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UiBzYI9H+dR8eLWKJcaKjJ9zAKya0wJfGuI1fz7xDbhv/vOxjwqFpTEXPxT8ZXH8Vxlvocwpgg6y22c+rd+Hdjz7B8dQz2PoOmVcT2qhrJ6zIKyVMk7V+MyROLpK047b9zcPmH8NyTmC1E0z3/YasltMI4eo/lO0lHD74+j/0GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hS5vwtwe; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-37d4eac48d8so178032f8f.0
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 10:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730480592; x=1731085392; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q3NYpsGTgrceer71ppOAoBgRk89YYUeZ50Pg0gfV+Bk=;
        b=hS5vwtwemZXn2RA1q8n+A5yKbG/9BhXrrWJEZEY7lizErSQ1SQTyMWi4mK86yF3Vhw
         6um7XUf/CPCMX6LEOwSp6UKSNMETv2BtkUbJSmFipA5dLW7MNrsrltsPuEko+thPzTAD
         g7kwrE3CuFrz/uEVHcoHvGJlmksXMUfxex47G9OGFPTVWPHjSC60qKx0h4KjO7YfQ9U9
         M+X4sfedy9Vd3+hklxLII6mcRUQKdcZBy2zTZgSTm1ZwOSoC1QphMpIxclFmm0dghh0b
         Gfi4igFFRE46twprPHiXRH0TySIyQY0RjAiNVUT7YbRuU62q6IO9F8QHgFgvzlXQpt5h
         bKDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730480592; x=1731085392;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q3NYpsGTgrceer71ppOAoBgRk89YYUeZ50Pg0gfV+Bk=;
        b=Jy9Vm2g9YphWNNBMGoMiRrrp14UoT92FT8YLQrx03ttF+P89uWFZjl+YzQhLZUc2v6
         a/jvrRkRDrq2EaYGmw/oQ2QhADMXOUepAXsG0l43vqUMe2vWZX4fYTZimt6nOcoiE7Zr
         4+7HHGONvvvMGrvO1d7UOjiK2L8OGfbCHrhoGqjbC9XEs5Hu4GUfQuhbSDqBI7kNs+Aj
         iwn2tESPPjUp+CUqVKcz8waHn9YTixZrVhfi74XuCNdWkbmBjqlWAXMFueFt3CipX/uk
         5bY5lMWsL8UNQ+oihEkn+dJLQTZNllSr3m8bf3VeAxMMgOttWThYk2KcC6MK6smlafLF
         gQOg==
X-Forwarded-Encrypted: i=1; AJvYcCV6t11j063dPckVdeKv198STTbVSQyoNfJS65U/3gLmYZotGomGRLypJAHMPpdM4yXB/g8Q+2ZkEOyB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7PDpLb8AZfdYHCmnHShSup3mbBWRv/vlaQ9K+QtaEYUQqQ+VO
	ZCOxDopCsIsfBF14J7AC0M53GupeUnns5JFmqa7Rq64zfZU3Fp8mLP6OV8R4vGM=
X-Google-Smtp-Source: AGHT+IFCZ23WEBwwcLfQP4WYBJ1WQPAvLjnNpkz+Y58FV/YsX35Y9/WCJ4gXDC+pJP7nEDi262mLrg==
X-Received: by 2002:a5d:5f46:0:b0:37d:4aa2:5cfe with SMTP id ffacd0b85a97d-38061173287mr8248808f8f.6.1730480592542;
        Fri, 01 Nov 2024 10:03:12 -0700 (PDT)
Received: from krzk-bin.. ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c116ae82sm5687923f8f.93.2024.11.01.10.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 10:03:11 -0700 (PDT)
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
	Melody Olvera <quic_molvera@quicinc.com>,
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH] dt-bindings: remoteproc: qcom,sm8550-pas: Add SM8750 ADSP
Date: Fri,  1 Nov 2024 18:03:09 +0100
Message-ID: <20241101170309.382782-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document compatible for Qualcomm SM8750 SoC ADSP PAS which looks fully
compatible with SM8550 variant.  The only difference from bindings point
of view is one more interrupt ("shutdown-ack").  Marking devices as
compatible, using SM8550 ADSP PAS fallback, requires changing some of
the conditionals in "if:then:" to "contains".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Melody Olvera <quic_molvera@quicinc.com>
Cc: Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/remoteproc/qcom,sm8550-pas.yaml  | 48 +++++++++++++------
 1 file changed, 34 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index d7fad7b3c2c6..a24cbb61bda7 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -15,16 +15,20 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,sdx75-mpss-pas
-      - qcom,sm8550-adsp-pas
-      - qcom,sm8550-cdsp-pas
-      - qcom,sm8550-mpss-pas
-      - qcom,sm8650-adsp-pas
-      - qcom,sm8650-cdsp-pas
-      - qcom,sm8650-mpss-pas
-      - qcom,x1e80100-adsp-pas
-      - qcom,x1e80100-cdsp-pas
+    oneOf:
+      - enum:
+          - qcom,sdx75-mpss-pas
+          - qcom,sm8550-adsp-pas
+          - qcom,sm8550-cdsp-pas
+          - qcom,sm8550-mpss-pas
+          - qcom,sm8650-adsp-pas
+          - qcom,sm8650-cdsp-pas
+          - qcom,sm8650-mpss-pas
+          - qcom,x1e80100-adsp-pas
+          - qcom,x1e80100-cdsp-pas
+      - items:
+          - const: qcom,sm8750-adsp-pas
+          - const: qcom,sm8550-adsp-pas
 
   reg:
     maxItems: 1
@@ -82,6 +86,20 @@ allOf:
           maxItems: 5
         memory-region:
           maxItems: 2
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8750-adsp-pas
+    then:
+      properties:
+        interrupts:
+          maxItems: 6
+        interrupt-names:
+          maxItems: 6
+        memory-region:
+          maxItems: 2
   - if:
       properties:
         compatible:
@@ -129,10 +147,12 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - qcom,sm8550-adsp-pas
-            - qcom,sm8650-adsp-pas
-            - qcom,x1e80100-adsp-pas
+          contains:
+            enum:
+              - qcom,sm8550-adsp-pas
+              - qcom,sm8650-adsp-pas
+              - qcom,sm8750-adsp-pas
+              - qcom,x1e80100-adsp-pas
     then:
       properties:
         power-domains:
-- 
2.43.0


