Return-Path: <devicetree+bounces-15233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D767E921E
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 19:46:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 505C5B20996
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 18:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C2B6168D2;
	Sun, 12 Nov 2023 18:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w0EQtle/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25877168BD
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 18:46:11 +0000 (UTC)
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 253E92D56
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:46:08 -0800 (PST)
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-d9fe0a598d8so3643676276.2
        for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:46:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699814768; x=1700419568; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wn1DSQebknxYNCCIzKnnQDNVuciT/cA69uS6Y9C3/NY=;
        b=w0EQtle/VrQujMTYOz5DmXCfLEqKsSocAHMOEdSKPkUBnz6A77q4lmgaoyXw7n4CTO
         l7FrohYImm49a0JhIZ1CAOFTkeylmZoJrkPf2asS/4ZU7rZy5KSAW1iU21RBUjsxyVr0
         Sc+aXinoHuHuVxn2ibyIu4rjBc29gvP5tVoG27Od6k//XNlKWDI0kuiOfOEgj40c+2tU
         IiucPHufhrSgIfLqwmje5AuSEfUb5/wWq6rkaQTp8i8wWdiwoQ7IQ+WAnXA72ADnkuU2
         Qyf+YZZyxFLAfSXKuqPMc0NyniSS3McAP91TEL/Hs6Zab4BoNZqdf40t1pXwqPECxpcA
         EYuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699814768; x=1700419568;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wn1DSQebknxYNCCIzKnnQDNVuciT/cA69uS6Y9C3/NY=;
        b=HGqsEUXt/8aaO52Oh8tU07tsGoIDDtYRWdh/TfQvQnBArrCtyGmITXlgmWV+wn5bU5
         iTvz/078FiYmbj/sWRaNxHfFt+2d+H8lo38S8UK11jLgcS7RCVDkwUZw/roU6ohk4Dcj
         miv+Ecv3reMcFBDbzT43LnpduPcZpKflLqywEsGf6JIdIIjjapO1a0VNGAvhzlrPi/El
         cu3GvFI0CcPxcXT9JzQOoA7Vcp0hkLJU/+zpEnKQCWjEaezmDRyHvGcPW4Yrj0VLPQd9
         atsGLV/AfGCAH9fQ1OCtih9lMffK0FuQbV/oN2576JfZTaBQkqUHU7TLTxjcRWS5Q0FA
         asug==
X-Gm-Message-State: AOJu0YwtrZEOTueYzL5ny9v20REUXgHMKWpC1Krt+mPkMW2NlDaTMSaj
	x3eJOeBNSeNdHr6pDt5RnbGx1Q==
X-Google-Smtp-Source: AGHT+IHyQiDotozscR8vhf/XovpXjRjO/Idm6MUqMuG5+0cCXZHz0ta8NLpaq1dIbCAPW5EEf77h7g==
X-Received: by 2002:a25:2604:0:b0:d9a:44fe:be93 with SMTP id m4-20020a252604000000b00d9a44febe93mr4495811ybm.26.1699814768075;
        Sun, 12 Nov 2023 10:46:08 -0800 (PST)
Received: from krzk-bin.. ([12.161.6.170])
        by smtp.gmail.com with ESMTPSA id o17-20020a258d91000000b00d995a8b956csm1104185ybl.51.2023.11.12.10.46.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Nov 2023 10:46:07 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: PCI: qcom: correct clocks for SC8180x and SM8150
Date: Sun, 12 Nov 2023 19:45:57 +0100
Message-Id: <20231112184557.3801-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231112184557.3801-1-krzysztof.kozlowski@linaro.org>
References: <20231112184557.3801-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

PCI node in Qualcomm SC8180x DTS has 8 clocks, while one on SM8150 has 7
clocks:

  sc8180x-primus.dtb: pci@1c00000: 'oneOf' conditional failed, one must be fixed:
    ['pipe', 'aux', 'cfg', 'bus_master', 'bus_slave', 'slave_q2a', 'ref', 'tbu'] is too short

  sm8150-hdk.dtb: pci@1c00000: 'oneOf' conditional failed, one must be fixed:
    ['pipe', 'aux', 'cfg', 'bus_master', 'bus_slave', 'slave_q2a', 'ref', 'tbu'] is too short

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 58 ++++++++++++++++++-
 1 file changed, 57 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 14d25e8a18e4..4c993ea97d7c 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -479,6 +479,35 @@ allOf:
           items:
             - const: pci # PCIe core reset
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pcie-sc8180x
+    then:
+      oneOf:
+        - properties:
+            clocks:
+              minItems: 8
+              maxItems: 8
+            clock-names:
+              items:
+                - const: pipe # PIPE clock
+                - const: aux # Auxiliary clock
+                - const: cfg # Configuration clock
+                - const: bus_master # Master AXI clock
+                - const: bus_slave # Slave AXI clock
+                - const: slave_q2a # Slave Q2A clock
+                - const: ref # REFERENCE clock
+                - const: tbu # PCIe TBU clock
+      properties:
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: pci # PCIe core reset
+
   - if:
       properties:
         compatible:
@@ -527,8 +556,35 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,pcie-sc8180x
               - qcom,pcie-sm8150
+    then:
+      oneOf:
+        - properties:
+            clocks:
+              minItems: 7
+              maxItems: 7
+            clock-names:
+              items:
+                - const: pipe # PIPE clock
+                - const: aux # Auxiliary clock
+                - const: cfg # Configuration clock
+                - const: bus_master # Master AXI clock
+                - const: bus_slave # Slave AXI clock
+                - const: slave_q2a # Slave Q2A clock
+                - const: tbu # PCIe TBU clock
+      properties:
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: pci # PCIe core reset
+
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
               - qcom,pcie-sm8250
     then:
       oneOf:
-- 
2.34.1


