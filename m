Return-Path: <devicetree+bounces-51578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D41887FBF9
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 11:45:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 95DAEB22269
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 10:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBA527CF03;
	Tue, 19 Mar 2024 10:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Go+m2bUD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0041F57870
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 10:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710845084; cv=none; b=OtIdUPij0CRt5xbCazMz6lZnK04iLapoHLI8MAChfG/3KWQvc3qpzo3yAYak/AJBN1i3d6EM7jnwO4GVWGpFNLpMy61Du7YeK44vfDMfrUyHVFRy4NN+y1HCJLiB0MpC7zkbBmbLJygMmmrH3cGTpfV0aMzsrI/60VIGQ49oMhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710845084; c=relaxed/simple;
	bh=m3pSUc46LB6V21p4bYJawYlmpmQ1kewBH2mwVCgKFp0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nrmYV2J0ZLQ5usGhxcgNOLXDG+35Z7kGPuwsgL8N9GqtVB5GdC1Ag57mM/HKJH26xm6a0/1AfTTGTQ9kHuYOW9LYAV3VquZle0TINb8WOG26uy1qIxTGddcbZyu+2MbYKlqXVFaaoV1pGYTET4jPf7WYtcwiC963J33e/epzXzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Go+m2bUD; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-41412411622so13025695e9.2
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 03:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845081; x=1711449881; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w+CyiJitb+sZvqjM+l2rTfce0izU6NohaEsgLPWj2lU=;
        b=Go+m2bUDUYh0Nm+QbkdRpElBEtcaElp85oiFuN1lNOwTCaqeYCxzq78bDTtC5F0+87
         YaJOmEFp0WabZSNGnPlQ9YcoisBAnft+/n2uf8ktvIcOTXzveW7mH5VW2lLXBk+hNl9B
         x5he2QSRgsankCCr3ETKJb/gAhX/YbnnLzpYbASyK85l/D092s6Z4mGATPowY06eehf0
         opdnpbSeHw6ImVGzjVzU5bUGHWEOW0REGV7bkoOghxO3IrvTf1vI39GonmqqIqNuONIJ
         M+BbxgaUqXnDBN5WPaqjnBZsy2HQjZ2JJhmY9q2aVP3iW20NWEReBMi8KYhzTBqxrQdq
         YKVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845081; x=1711449881;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w+CyiJitb+sZvqjM+l2rTfce0izU6NohaEsgLPWj2lU=;
        b=s1JsIUQilBHI3tckQBBZ6AbPRjgpk2AKjICLLELe9L30FY+JTUtdDyGSaj2PIt/6ve
         0wZQ4jgYUy7qKQjttwTOjERRguWXIh9/lSQKRn9dx4sYnEevf44msB3dI9b9RYnqzrft
         18FLjlcSWEKpetibwgg+KKwL7R0q3445Dy+YfdEury+aVSSlUDpObbK3MUm5Ox+UmTuQ
         jCQnqOsxyNVoHPKr0ZvUeGoerEZHSfXmPyMoN2MeDpB3Oo5KL61lPzh4RvlAwPiYdzEK
         BucFEkcFfLpyZdn+REXQgtGuEv704yf6Q3e5K09ZUtbhy4WwndtRJfVh6UE9nOGtSDYt
         bSkg==
X-Forwarded-Encrypted: i=1; AJvYcCXAVf6GIWLNpn+mENhKCTZl7dzO0mRC7URPh6L6KZMNIbazmy75FA+hU2pBNiiZcBCtFzUISDlZNcCXR2sBUuXQZExRI1yZXRLOyA==
X-Gm-Message-State: AOJu0YycO9K+2lNn62LtFCenF2evXxw6TPk/hxAjr7UJWVgEgz0fhecq
	0AX6EkwNYlsqCDB1fMxsMhCzmyIyBvIsTRUZyjCUGN665hqabc6i1QcXD3oUHeQ=
X-Google-Smtp-Source: AGHT+IFod7aH8if5MK1ECasnS6ahDAVSxt86oZPskyfEsyagEJMqbHS5KlO7A4yywx58PageRYB7OQ==
X-Received: by 2002:a05:600c:19cd:b0:413:ea5a:7787 with SMTP id u13-20020a05600c19cd00b00413ea5a7787mr9881899wmq.22.1710845081371;
        Tue, 19 Mar 2024 03:44:41 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d4d45000000b0033e03a6b1ecsm12029459wru.18.2024.03.19.03.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 03:44:41 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 19 Mar 2024 11:44:27 +0100
Subject: [PATCH 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document
 PHY AUX clock on SM8[456]50 SoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-1-926d7a4ccd80@linaro.org>
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2495;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=m3pSUc46LB6V21p4bYJawYlmpmQ1kewBH2mwVCgKFp0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl+WyU7GicaV/Sa+DAWz8H7pfML0XZg2u0PZSmIsdY
 L6oe5wKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZflslAAKCRB33NvayMhJ0XMKD/
 9uRTCJZKFuVtev94M7vFk4bDB7e0lWMazZKjKs+HT61PBJqNBPU7c3ZTJ+d5072U0MG7cm3+9b6Yo3
 fnfqL3qbBfQ3iQZtdsH58AsG8O/nqde9bfiJwdklVmmTaF651OFPIfjc+MWDzhCGLC/b0sQGeOjZzL
 kaK5lEjx/NT71KTCp/CAP5zVWdhnqA4iSGUu8z5m1bhhpoqWdEQL4sHbbs7nZ4k7l/qbR7BV8W+OUq
 nCOpQQDBUvBlMhSzX6CjUiv4vGWyRg2WvlfhboFOHRwhbK63PPf2bJmgrMwPle9ZBFuczuIzxAN2uW
 NDA1fNgB0Q5do86B3M+r0YAg17p5RqyN7vXmIJMweqj7GLcRQo/K6vqDRguiAykZxJq4Xres+IkTd9
 dSbfT/l+637W8FWTpg2hd0Ds3NN9L2xwLjA6IV7nGGzp4DjLcMNa14eEbb4B9WpfbI4hii7M1WPjJo
 OgE7/Zqh3RZd7iWESTM6CagexAESeOcymNZid+hbT4O50ONrggsCHiijnkCW8WSOwM2zqbsDKnnF82
 rObVGqBK3AJ19Vc/DCa7jg6NuK4ch4zkLdczuIYOGE8G9PSHvIL5qPr+TExVApN9RlBoatyKU0QeK4
 bgPrtjxYM203L5Z0b55YoNH+GjvM8V9y55HdN2UP1Dccgko70dxlMgEbWezw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock named
"PHY_AUX_CLK" which is an input of the Global Clock Controller (GCC) which
is muxed & gated then returned to the PHY as an input.

Document the clock IDs to select the PIPE clock or the AUX clock,
also enforce a second clock-output-names and a #clock-cells value of 1
for the PCIe Gen4x2 PHY found in the SM8[456]50 SoCs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 27 +++++++++++++++++++---
 include/dt-bindings/phy/phy-qcom-qmp.h             |  4 ++++
 2 files changed, 28 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index ba966a78a128..14ac341b1577 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -88,11 +88,11 @@ properties:
           - description: offset of PCIe 4-lane configuration register
           - description: offset of configuration bit for this PHY
 
-  "#clock-cells":
-    const: 0
+  "#clock-cells": true
 
   clock-output-names:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   "#phy-cells":
     const: 0
@@ -213,6 +213,27 @@ allOf:
         reset-names:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8450-qmp-gen4x2-pcie-phy
+              - qcom,sm8550-qmp-gen4x2-pcie-phy
+              - qcom,sm8650-qmp-gen4x2-pcie-phy
+    then:
+      properties:
+        clock-output-names:
+          minItems: 2
+        "#clock-cells":
+          const: 1
+    else:
+      properties:
+        clock-output-names:
+          maxItems: 1
+        "#clock-cells":
+          const: 0
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
diff --git a/include/dt-bindings/phy/phy-qcom-qmp.h b/include/dt-bindings/phy/phy-qcom-qmp.h
index 4edec4c5b224..6b43ea9e0051 100644
--- a/include/dt-bindings/phy/phy-qcom-qmp.h
+++ b/include/dt-bindings/phy/phy-qcom-qmp.h
@@ -17,4 +17,8 @@
 #define QMP_USB43DP_USB3_PHY		0
 #define QMP_USB43DP_DP_PHY		1
 
+/* QMP PCIE PHYs */
+#define QMP_PCIE_PIPE_CLK		0
+#define QMP_PCIE_PHY_AUX_CLK		1
+
 #endif /* _DT_BINDINGS_PHY_QMP */

-- 
2.34.1


