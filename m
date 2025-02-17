Return-Path: <devicetree+bounces-147596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A211A38BB3
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 19:57:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB0C13B1292
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 18:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEDB62376FF;
	Mon, 17 Feb 2025 18:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b34OBXLo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC3F8237165
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 18:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739818588; cv=none; b=bAAMt0Qa76eqCU+zeUcBxlqCDc34kR/1MsrBI9am+WT9kw9AJeyhEUzP6E1cg7ryDkapUvIikTIHGOzOWEalzzceNGmQpMAHRGbfD9wKkniArxx899BKTNxKGhtP16TVu0kUoCNizOYdV1c9scDXtKYJqLby8hF94ezHv7zRKzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739818588; c=relaxed/simple;
	bh=9q5XvgDm7GhPFtHk0eNxsa9g9ZxU9eOoFu0ux2XLS+s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FS9DjLUc4zehQNzYsCwaEJ+4Av5Spa5CoJF4wl+yqPnkcbkRRic+RLLe4xbFm8RU8Kuh96szfWxV5Y2VyL8/gZ5+uMbQIrS1rI8FlcHemC3b7AunNiHPwCC4K8l9DOgvAsYr9TrfPJv5L5y6I0lhl9d0ZQMI8c/wFYachkkrJ2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b34OBXLo; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-546210287c1so1382703e87.2
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 10:56:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739818585; x=1740423385; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7y6kSw6lPsjVOypckHUeVdHYijdQYn+r0hkcko42Cnk=;
        b=b34OBXLoIr3PM0BF/15c/w0nsKFSDDFlsDBpwiqK88eNccT3kkZ0kBEva+W+4ZjyBc
         l+ohavAWo6CVZ5/+fO2bKby6kUsOG6et3VJRUmQcqw7/1C0i7stqYgjXhs4om0lIXBWo
         rWbxk4z/1g3FT5WiOyLXGAmACkaspvj4ibObd5XJTVaJdlqhBGBcDO5bEs7nqsx57lQH
         lKajJ1WM8191H/Y5wqVmfd3fVg4tikj8Xh6LNlmhv+KuyZF2RtNOPHvdpE3TZ3Pwh1Ox
         Kmr4LtswmMIBVhOCHqwZqVbbJATg+2W+/aZCMSEPe19/aLzKnvWvPe/5EeHdY/3F4/Xw
         BI2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739818585; x=1740423385;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7y6kSw6lPsjVOypckHUeVdHYijdQYn+r0hkcko42Cnk=;
        b=fyeOR0+ATBuadHTdsOtX87ZzUu/r9GxA/92cVPtLHl8k1WUyryuxl+/g9SlBoJ7z1K
         FDdRvgRAmIncYoBT+SssI/YhsidZjWxvlULEhxJkmA2l+xn1jDpyGMheeNEBoQNjaKXe
         lFsSExrx+UOsa/Ocv6diA7bCeWXqSN+x8XTr1Agrg4Pd571M2ev2fU1hkdZt/JwZtKmw
         FXcHxOw++qM+xp3BaYvDgIvxdrZ1L+GQK+uu9ECI/aXxrB5zUBsC75TlikmXlfjbAOvr
         yAkVkSybRzO9gi5M7hfHAEJ5eA1uKDG4L64VlaM8ul2K52g2helVJZwsrY7mrF4GxziZ
         94JA==
X-Forwarded-Encrypted: i=1; AJvYcCUnpxsK/vnKOTFjzcXMcJ8lYjLualGyzlYE0o2opmTzZ5Rt8bmGtozqjNuyB/vcAy5EP7L/UMM7sqbn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg3/NCgvJe4W7VY9Evhq3EXrBpV3eONR98KC9xQGaaJFKvdsyF
	KOW1hMnendc9iQ5OXq9ahCSx3yazO7vScoBdSr3dKi4iCtCXwzbIuKIl1FitQ+M=
X-Gm-Gg: ASbGncvZmfPuZn/GS/I+//xjIVXkN5EqkLsJPoH9XuwIwwpbr8aBbGXT+g7PRjZ+9UG
	/Je++Mt6/Wl/0MpcLNkr03etFIYEh2PPuPqsd9t8yBeZ8Yx3YdCuffLB4yXPdMQzT6yyIcHsD79
	B9cbEDT4v8pZuheXy3HmcnbJIpozf+Sy65yK5CLQDecjwVSL7ofZFTDhvmLL+x9xmkKZnZoAVa+
	Vlg1fqD/Kp3zTgr/vfbysWUQFcskmS4HNEwtJVUjO1soh1iRnB1DPPvQ35U6qJk0q2k/GQSNw/z
	vTNbcIBtCrwtjeVk80GQXUqf7NkbCjl4E2LIKnDsUTJvXGuhDC068WwpMrw=
X-Google-Smtp-Source: AGHT+IFRBWqrv7+gcFUhbddRKZTa8+pdNAYNlOydRwlZ9v3HUnE6V4VVfYFnxh8WJsmZE8tHpQbhbA==
X-Received: by 2002:a05:6512:1092:b0:545:ee3:f3cd with SMTP id 2adb3069b0e04-5452fe2f265mr2558630e87.9.1739818584793;
        Mon, 17 Feb 2025 10:56:24 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5462006b0ecsm559806e87.160.2025.02.17.10.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 10:56:24 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 17 Feb 2025 20:56:15 +0200
Subject: [PATCH 3/6] dt-bindings: PCI: qcom-ep: add SAR2130P compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-sar2130p-pci-v1-3-94b20ec70a14@linaro.org>
References: <20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org>
In-Reply-To: <20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2464;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=9q5XvgDm7GhPFtHk0eNxsa9g9ZxU9eOoFu0ux2XLS+s=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBns4ZQM3Xxhz5mKE+aZG/6+af/AWUXZXt/WadVh
 V9LcFwdyVKJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ7OGUAAKCRAU23LtvoBl
 uIkcD/wJHvT4NFsQ3sAo93U1HryohLD5qcYL1rWizuEVpxttyabxowfnInB22nrE8Bq9RqMCbLU
 k+VA0dbwaXGZlsiR8feJ2dBN/aPpgZ58OV9YyLle7AraUo2FMGFLDKX/aikSAoSpNIqxlbGKNYm
 1eKbqqfOse0EfgVCTEDhstX6M669lCHDwF6Sr0P+gscEuxBluTSjEFwABBiYFFWcr/Id9shK8+L
 R2TmkR+rXIIBaEVyyJQ6vbq8vZBof0J+3CjsHRpEuk16Iu18hJrNNK1/MRCom3q9/l7XEJbAV6F
 1yGtheHwRJLGehHJbsdcfbR1+prLsI7sPwVTH51p+TSiNtzi1HgLKRkh9lK8hVlDykN1c1bNFXR
 V+SO+Z2uPCUQaNcLTXkGHv1gduX452I6ifnKjPYLVaGYbwXxBLxvKFK3R2aKYTFKf7HM/LOqlvZ
 hEKoIb2pjz8rIJQ7YO7huw0PukJyPkgQOiNUqESIpUOyEIv0iSi7jnv9jouETyCeZ+98/k2aAe7
 fxbQsE6vNo6RDUdt2PH/EzZPlNSCB2zZZIRcq5326I2bMKtQ3gbuYHPRxzLF8JrTVRTt8xrJPSQ
 73iJRp5+WYKPjuPpXiU1FZPHWEVNtwvjnf/7t1ChLpOlmW4mF4vn3htWjVjKY6Zq5tXs1nhgHAx
 sbw0sumbJPiXJMQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add support for using the PCI controller in the endpoint mode on the
SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie-ep.yaml      | 44 +++++++++++++++++++++-
 1 file changed, 42 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
index 460191fc4ff1b64206bce89e15ce38e59c112ba6..6e516589f0edb4dfec78f9ff5493c06ee25418f0 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
@@ -14,6 +14,7 @@ properties:
     oneOf:
       - enum:
           - qcom,sa8775p-pcie-ep
+          - qcom,sar2130p-pcie-ep
           - qcom,sdx55-pcie-ep
           - qcom,sm8450-pcie-ep
       - items:
@@ -44,11 +45,11 @@ properties:
 
   clocks:
     minItems: 5
-    maxItems: 8
+    maxItems: 9
 
   clock-names:
     minItems: 5
-    maxItems: 8
+    maxItems: 9
 
   qcom,perst-regs:
     description: Reference to a syscon representing TCSR followed by the two
@@ -129,6 +130,45 @@ required:
 
 allOf:
   - $ref: pci-ep.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sar2130p-pcie-ep
+    then:
+      properties:
+        reg:
+          maxItems: 7
+        reg-names:
+          maxItems: 7
+        clocks:
+          items:
+            - description: PCIe Auxiliary clock
+            - description: PCIe CFG AHB clock
+            - description: PCIe Master AXI clock
+            - description: PCIe Slave AXI clock
+            - description: PCIe Slave Q2A AXI clock
+            - description: PCIe DDRSS SF TBU clock
+            - description: PCIe AGGRE NOC AXI clock
+            - description: PCIe CFG NOC AXI clock
+            - description: PCIe QMIP AHB clock
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg
+            - const: bus_master
+            - const: bus_slave
+            - const: slave_q2a
+            - const: ddrss_sf_tbu
+            - const: aggre_noc_axi
+            - const: cnoc_sf_axi
+            - const: qmip_pcie_ahb
+        interrupts:
+          maxItems: 3
+        interrupt-names:
+          maxItems: 3
+
   - if:
       properties:
         compatible:

-- 
2.39.5


