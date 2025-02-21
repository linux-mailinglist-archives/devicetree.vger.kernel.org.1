Return-Path: <devicetree+bounces-149472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0B3A3F9A7
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:57:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37E27188E664
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:52:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF4681F416B;
	Fri, 21 Feb 2025 15:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zkftIhmG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A1321EF0BC
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 15:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740153131; cv=none; b=cEPsEcoj8Fncws69l2E8+Ez5RvOk+HsW+G+38LK8GGw53mf/b3GnioHLYVYK6JWGZdDlXDhlcgzpzF8voHECb+67KdxtDiXkf1Sl+y9MnluNQgMVk7+bnWiNPIE9fOlKvmwyLWY794XxNNZ/lhcI8lE6njgUZFNtKGPl9YL1vaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740153131; c=relaxed/simple;
	bh=Pp5hOcnQELo/7BP6swQt7kdhd42O2Fh3+oi2amQIZUo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sr+Y1PS78Nn4UZAAfg0n6yaMjBnr1iAO+ssgEGsnxG+yvAgb/GIXB865Aq1wOxfUS8zAXztxsktfKY+tUsoOihS4JxpXOc/NFRraTYjOpHT0TlsHfqQ6jIm4R4+vG/VtnotQuW4dZUMu8SL96iBPjf9xrHKOWr1DNPL+2z5iH3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zkftIhmG; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54838cd334cso1076247e87.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 07:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740153127; x=1740757927; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BUsxu7XwVBkro4/jQjmeTcO/Tqby4cEEewDXSAP2zrw=;
        b=zkftIhmGpMjr42Fyub9xB5wlPmqA3DOgChOzs2p9l8YAiZ4xJtnF1dovatqu4yIaso
         bsDc0SwVkvakgPlkLs0+pw2iYcUxMeIKLwE0uWxZgnkL/yna7V8pPUkEB1zQ5nfQbLJ4
         iUXMjH3ylWK2FsGwayA7NCnOrSugU9m9KdMg19HLKZiHPo8hV26meXGR6GDDIk7E7w/8
         tHGS+tqHig7IvWsSdzs97eAhJ1+CS0U1o8xvTK7eMCP6uhBUU2DLkjqDdOyj73eOJut5
         6S/z+6GKKtDGx9egHWs5DePkZaaDH5YR3CNVjan77Cfz+rQKty4fZ1SKPUimTZGmRQNw
         bDrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740153127; x=1740757927;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BUsxu7XwVBkro4/jQjmeTcO/Tqby4cEEewDXSAP2zrw=;
        b=ZIzaziZ8jdIXhzG16rAiPMgM9HWbkudzcgNTWt7gk9dPIL4nVjKdLHIRgk3iUIxUHs
         Sap3KKy4qA7EYQeoGFss3WZV1kg9Cw0gnLQ9qK1feXIz74JbZiOQsGs9xk4HyI9vhQSA
         zcFeQBmme2rKs1GfbXXvqcrTy3T/g+/uYxUDvPNzSC16ILp5Pfmem1AS5/89o06t8CYe
         o/0QWcj3ct2vBDw76zVZ29oUImCRvogfjyolYjc7Ks0IQVPY7f73akiyfdcinKlDb8F1
         9AKaEdnOIMHAOWkKQcIZGsYuQqM/qxtiRGnHbChhnfWsI89suuyaAnAn/UWLLd7tN6cA
         6vpA==
X-Forwarded-Encrypted: i=1; AJvYcCXTGAA4gXLCkLkJ7CIU0IU8YuXDasBUe4dlyayha9XI08hfw0l9WMH7Gaqdh5+oLpUT3uawkpDIgPyK@vger.kernel.org
X-Gm-Message-State: AOJu0YwlGqphtjxSdZH85IQPEu6xbe7yydW5qo6GKW3+NPEKidrIqo+P
	VfwqefAE0WafyRoAe1JGNuMRF8UYsFW/ME6517zpMVWSAwaipt5ED6DVd91eSBA=
X-Gm-Gg: ASbGncuhOSugt3YEd1RnbA0HlisR6QIWe7t5/rkbEqJ89XGGhZBzovRnof4QFw9HJ5J
	ZcvT3sUezT98jqd0LkFoy2CTVviiKRdc8pHbeNXXDfn/CXwV3JgNiwFWgCJQcL3lAvNBGRku/To
	Z8P3i304XX0qcSJdr63ZyeRBIhFtmVUoN1ly/DC6tQSAGc120e1/kUG0VfvUmgDG8nZEg598zbb
	WVVkZ/MNE13BpETx1rOlmcF3us95UNb0vCV/U9Iuq9mRS5dr4EftKoDNPWzoMipuQanoxxfaZ5j
	cQaQXTvEixac69IyFpAThQM/BquOFW45SdqKMbcJF/k/1GApOGbFu+aOS49Lf2hOohiu7w==
X-Google-Smtp-Source: AGHT+IGbVXhSP5UnKTNs1AzGAXkyab1y6vlkVP6QSlAbcFcneg9hH8WOKVea8rwd143pyPVe/yWLfw==
X-Received: by 2002:a05:6512:3f11:b0:545:2df3:9a89 with SMTP id 2adb3069b0e04-54838ee8ec3mr1530858e87.17.1740153127565;
        Fri, 21 Feb 2025 07:52:07 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54816a55851sm287643e87.27.2025.02.21.07.52.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 07:52:07 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 21 Feb 2025 17:52:02 +0200
Subject: [PATCH v3 4/8] dt-bindings: PCI: qcom-ep: consolidate DMA vs
 non-DMA usecases
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-sar2130p-pci-v3-4-61a0fdfb75b4@linaro.org>
References: <20250221-sar2130p-pci-v3-0-61a0fdfb75b4@linaro.org>
In-Reply-To: <20250221-sar2130p-pci-v3-0-61a0fdfb75b4@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mrinmay Sarkar <quic_msarkar@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3536;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Pp5hOcnQELo/7BP6swQt7kdhd42O2Fh3+oi2amQIZUo=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnuKEhHJ1TqFNOe7eulw139OCEgkWNIiKGlnInN
 X9/GQ8LmL+JAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ7ihIQAKCRAU23LtvoBl
 uCcUD/9H0IgRM+zSwNHmZCcQJigeaYI55ziJD07JMvZen0e96pYfnj98zfCD8euF/PgyB7VZPii
 59xIl3qovvlqXqrmk2OwuZUQ8ohM9WI80hNe3hEkR8bH0v3tVvQYxsuHS4G8vkvd03ZtWbUY5eq
 68XRmAtsIhpJ/dz37Fd8BLOoUkydn9WryuL1TtYboVY1yc45ZQCtCOu7tMfnN9vqJVxY63EiT09
 Elt514HqtGwCHFoG+M7tpAUD4M0EnkWMK9ux1mzoRGYOhUZHIL9HcMe8K3tuVeWLG5gSMFUqYf0
 5fDI+M4yscUfzFue2cXhAf4uYxY547LUEtq+NvYz012Zi1BTW0vZunyVZnqF6zFqs640rHh6G4w
 /+At0kS3edzhHaAwiSkxLToS3xg8dzUZHL1ZBbUvq1y327j0VhA3K2J8JGRBtmwlK3KnzvWLuNB
 z7SmsQ2PxNI8CyAuwopscbnN/bWuFsRbDKcBlLwMAS+4WsaiVtHHor1cZvsTSIM7KVNWzIdAx8K
 ckWEpeyO2dNDwd8g5b9Z3fITohtdHEzvEoAjhsKJV4lLabeAV93XmlmluluGH7DOSVT74XOuMLf
 13p/nojb1bACLrpwV0/OPP1Lj4exsPeI8figYZpfG+TJJrsl5DM010erunnEwy6S4qcVmPKdvXw
 INDNsGIpZsw6tSw==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

On Qualcomm platforms here are two major kinds of PCIe EP controllers:
ones which use eDMA and IOMMU and the ones which do not (like SDX55 /
SDX65). It doesn't make sense to c&p similar properties all over the
place. Merge these two usecases into a single conditional clause.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie-ep.yaml      | 68 +++++++++++-----------
 1 file changed, 35 insertions(+), 33 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
index d22022ff2760c5aa84d31e3c719dd4b63adbb4cf..2c1918ca30dcfa8decea684ff6bfe11c602bbc7e 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
@@ -131,6 +131,7 @@ required:
 
 allOf:
   - $ref: pci-ep.yaml#
+
   - if:
       properties:
         compatible:
@@ -140,9 +141,43 @@ allOf:
     then:
       properties:
         reg:
+          minItems: 6
           maxItems: 6
         reg-names:
+          minItems: 6
           maxItems: 6
+        interrupts:
+          minItems: 2
+          maxItems: 2
+        interrupt-names:
+          minItems: 2
+          maxItems: 2
+        iommus: false
+    else:
+      properties:
+        reg:
+          minItems: 7
+          maxItems: 7
+        reg-names:
+          minItems: 7
+          maxItems: 7
+        interrupts:
+          minItems: 3
+          maxItems: 3
+        interrupt-names:
+          minItems: 3
+          maxItems: 3
+      required:
+        - iommus
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sdx55-pcie-ep
+    then:
+      properties:
         clocks:
           items:
             - description: PCIe Auxiliary clock
@@ -161,11 +196,6 @@ allOf:
             - const: slave_q2a
             - const: sleep
             - const: ref
-        interrupts:
-          maxItems: 2
-        interrupt-names:
-          maxItems: 2
-        iommus: false
 
   - if:
       properties:
@@ -175,12 +205,6 @@ allOf:
               - qcom,sm8450-pcie-ep
     then:
       properties:
-        reg:
-          minItems: 7
-          maxItems: 7
-        reg-names:
-          minItems: 7
-          maxItems: 7
         clocks:
           items:
             - description: PCIe Auxiliary clock
@@ -201,14 +225,6 @@ allOf:
             - const: ref
             - const: ddrss_sf_tbu
             - const: aggre_noc_axi
-        interrupts:
-          minItems: 3
-          maxItems: 3
-        interrupt-names:
-          minItems: 3
-          maxItems: 3
-      required:
-        - iommus
 
   - if:
       properties:
@@ -218,12 +234,6 @@ allOf:
               - qcom,sa8775p-pcie-ep
     then:
       properties:
-        reg:
-          minItems: 7
-          maxItems: 7
-        reg-names:
-          minItems: 7
-          maxItems: 7
         clocks:
           items:
             - description: PCIe Auxiliary clock
@@ -238,14 +248,6 @@ allOf:
             - const: bus_master
             - const: bus_slave
             - const: slave_q2a
-        interrupts:
-          minItems: 3
-          maxItems: 3
-        interrupt-names:
-          minItems: 3
-          maxItems: 3
-      required:
-        - iommus
 
 unevaluatedProperties: false
 

-- 
2.39.5


