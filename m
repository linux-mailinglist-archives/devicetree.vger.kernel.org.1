Return-Path: <devicetree+bounces-12493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3CE7D9B2D
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:21:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 07530B20E0E
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:21:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43A1D36B14;
	Fri, 27 Oct 2023 14:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="IDtCdoeT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F3BA36B09
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:20:41 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E7DA1BD
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:34 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9bf86b77a2aso302697266b.0
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1698416432; x=1699021232; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qiaNVgFsOF5Zw3tvRPpyTyeGAWwoR4UCi6KiKDhkf8E=;
        b=IDtCdoeTYD6+4cFN4ixcQhuklQU+d2epuKjqoTra/zJ/DQ7PjtGvqQrbEYx+7AHTCM
         zgM+TUH1bgnoqBoD2RI01YaGFyIF7XMsi6oYqHb62MVVwjcsUw3z9t3LJ0b/9qAZjKUl
         6rdAKnJ9rabhwP398raQiNC4OhkQAqwGSRO+nOPEiHpQkuE9G4B181tkSMLs17deCUXH
         iOEsDQeIIKpbWqUzhOrdsoTQD7tD9YHInlWkkYB08X4gwGihxgzhshqhSmrHVlAJhY5Z
         lZ2wDA3ZBhCECSKhTeSF/44F/RdVe+v4RC5AeEHui/+l7oS6BrNBuSQ24+CAWzRRm3eT
         Z/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698416432; x=1699021232;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qiaNVgFsOF5Zw3tvRPpyTyeGAWwoR4UCi6KiKDhkf8E=;
        b=MLOcGxbLtwHa9WVqJML5WMckvrjy6B+9nnxYd1jogYTAMZWJUtcO+s+pjcrI/ViTIw
         /lMatWjw7YGivd2NGDGJ43IItj73xsw1gSnst3AVb2X0TIin42VQhahxkncgJ3YCnVWD
         iz69uuFEYKt/xLicZa+fvb+ATZz3ppGmvTduc67eon1ss6++NQIJKJT9YROrCGqyP6oH
         pxyp7y1VH6s4uUdgkINNCoykL/vGDZ0OuxYnKMTEgklZE00S+hqTal2L5uMqLa1TnHYS
         UnU4I0IVlNlOiyRtsE0oYjDbEBLe4Z8dcFuWl8Mfun/r1CgFUGT79gJcyIktHMfrIV1S
         06tw==
X-Gm-Message-State: AOJu0Yw9bhDVf7fLsEoqWRzgiUrSMVIT0opZlQwrCN0VrTJQAigsH2dq
	an7IOFIkcT1kv3xlQEmtrCJHdw==
X-Google-Smtp-Source: AGHT+IGDNnVpbkH0lLAk1NXDlXJGluBIjs/kgI9CNupXE5bgr2Nn0Mbfufl8wyky5i5tSdTjfENjiA==
X-Received: by 2002:a17:907:7285:b0:9b2:be5e:7545 with SMTP id dt5-20020a170907728500b009b2be5e7545mr2343795ejc.36.1698416432487;
        Fri, 27 Oct 2023 07:20:32 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id z23-20020a170906075700b0099cc36c4681sm1254076ejb.157.2023.10.27.07.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 07:20:32 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 27 Oct 2023 16:20:25 +0200
Subject: [PATCH 3/9] dt-bindings: remoteproc: qcom: sc7180-pas: Add SC7280
 compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231027-sc7280-remoteprocs-v1-3-05ce95d9315a@fairphone.com>
References: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
In-Reply-To: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh@kernel.org>, 
 =?utf-8?q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3

Add the compatibles and constraints for the ADSP, CDSP and WPSS found on
the SC7280 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../bindings/remoteproc/qcom,sc7180-pas.yaml        | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
index 6f0bd6fa5d26..c054b84fdcd5 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
@@ -18,7 +18,10 @@ properties:
     enum:
       - qcom,sc7180-adsp-pas
       - qcom,sc7180-mpss-pas
+      - qcom,sc7280-adsp-pas
+      - qcom,sc7280-cdsp-pas
       - qcom,sc7280-mpss-pas
+      - qcom,sc7280-wpss-pas
 
   reg:
     maxItems: 1
@@ -75,6 +78,7 @@ allOf:
         compatible:
           enum:
             - qcom,sc7180-adsp-pas
+            - qcom,sc7280-adsp-pas
     then:
       properties:
         power-domains:
@@ -120,6 +124,23 @@ allOf:
             - const: cx
             - const: mss
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sc7280-cdsp-pas
+            - qcom,sc7280-wpss-pas
+    then:
+      properties:
+        power-domains:
+          items:
+            - description: CX power domain
+            - description: MX power domain
+        power-domain-names:
+          items:
+            - const: cx
+            - const: mx
+
 unevaluatedProperties: false
 
 examples:

-- 
2.42.0


