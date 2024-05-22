Return-Path: <devicetree+bounces-68366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B4D8CC0EA
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 14:09:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B2012846DF
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 12:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73CD413D896;
	Wed, 22 May 2024 12:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="t1pQcaNT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B72313D612
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 12:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716379735; cv=none; b=k2b5o/gn38HynkqGi27U5tVSiHrEHhyLY/pEks41M4tOQG9k+JTqeVwDGN/kCAKTb3HNO5F4IraCAbd+/7Jijnb4Xi8KkJAZaocBc2bQlYRhZHIpULZgW/4x6aYjJGezUJE50kGdj2sIkavz3qQKCkfRHNlr9i36C2AAy8QVWao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716379735; c=relaxed/simple;
	bh=RPjCHjrXJL7z9RK693TKKJl4YfjsMkhgHOh11xamnQ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XRkqfWG3fE1S9VnaMgKs/81VelbpMttWtsFT1rkIdjWwxDPJJuZwkfrwgiO+qq2/aA1iwKMDAMgTTuUJr2oh5/ofS0dG64RLgR6vxv6KjDsCP8bhQYk+U5k9Xl+PsF8RCtapZI5FU+aTDjiJhl3MDtlfho3o5BFOwhTZI+QLlm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=t1pQcaNT; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-420180b5838so30073195e9.2
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 05:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1716379731; x=1716984531; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JXj2BSgpva3/F7b4nOWmVs0PJFehoW3SoYyrbVL0fnk=;
        b=t1pQcaNT4wOuD0mHQJDodRSTXdxmFFN+ftTkQQhsNXcem1+7TJUGdkF09AyQgGHP+t
         K2k1G6XbkCxWR4Ac7tSbGApySAKCqdB5LhfIh9KBJdeRhRmBxzLlApSiHuNT8iOcQZLR
         Rs+ln6Fh/+97LbnpTyi1drdXceZoBd+wjNHBM1ST3WK/S9ve0fYU1oPXFX6UAd646o4r
         Im3Y1Ld/2hsni7LJ6npBEId23ISOq+aG7KIX7hAh9YlyC34BivT6YELquyjVh3nOyUcf
         vVWaPhf1UhFsg7kHDr+sIEewR3v2We4HPIy1+dKur51emfiOPXsuuMluIQtKG5hbckMR
         1INQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716379731; x=1716984531;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JXj2BSgpva3/F7b4nOWmVs0PJFehoW3SoYyrbVL0fnk=;
        b=oc+QfKFqfcJRYVm/uxO8+0QavmwaTKDw1TbJA9heJKX8gLeHQP74eM+i4HXsbYUAL4
         zx8OZvIHEa2eNyPflpWj4WnybJldTODkDa77SetKvj5CbPtKM6QTVOxYBVOhD40lweei
         ohjkHe42imyWMo0tEju2oQKgat2Y5y1Yvr3zfCL2TcgFXvtWbm5AZ9zp2IN75YVZW4eG
         Bw0wzgMloryVJ1olW0YZsLWNGp+spLtRggJGsc4yuI+30AZglBeMz218dNmsGYf5t8kS
         3sWDCoOw2L2EuVJLWiVH8RR1CMTLiWR3oybH604CwML0yMMsuuAL6J/N+i5tLXERWofp
         9q+w==
X-Forwarded-Encrypted: i=1; AJvYcCXc17S6xFYU3x4dZjc6NWnOXkev7wdanWyWkI8AnGGVaLHIOk9gjhg6wymDMfQrjC2jGhNNXCAdi8S70BF0mqKSRaui3IDq2EAUSg==
X-Gm-Message-State: AOJu0YyqQFHgpLWYssnzY66OOZFbOpsX/p2qCXPWY7SFCK38gXBWP8kh
	ilsqkkIb/5L/s0jnOX8FzZZstKkoLLzFMlVV8DciXuIGIxUHkzuw2svZQgqoTUM=
X-Google-Smtp-Source: AGHT+IHAnquNhGaAMrnrMFJ/fibxBPm1pi0lGI2sasIjjQzrn+HzClFh+wtG1T5bNTma7CqjMsHw7A==
X-Received: by 2002:a5d:5249:0:b0:34d:95f:c46 with SMTP id ffacd0b85a97d-354d8da3cecmr1433872f8f.59.1716379731429;
        Wed, 22 May 2024 05:08:51 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:75a:e000:82c7:3445:3b33:6c0b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-354e720d9afsm999226f8f.113.2024.05.22.05.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 05:08:50 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 22 May 2024 14:08:15 +0200
Subject: [PATCH 1/5] dt-bindings: remoteproc: qcom,sm8550-pas: Document the
 SA8775p ADSP, CDSP and GPDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240522-topic-lemans-iot-remoteproc-v1-1-af9fab7b27f0@linaro.org>
References: <20240522-topic-lemans-iot-remoteproc-v1-0-af9fab7b27f0@linaro.org>
In-Reply-To: <20240522-topic-lemans-iot-remoteproc-v1-0-af9fab7b27f0@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tengfei Fan <quic_tengfan@quicinc.com>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Alex Elder <elder@kernel.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3883;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=Z+j1GDs8Yw7fzn43Xu6v4wRH97cvCyllNpW2hoVfktw=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmTeBQwB6W7aA756bvOzpktEuX/fD/nMvWaAX7H
 okUpsnGKlKJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZk3gUAAKCRARpy6gFHHX
 crVEEACvYDkSHNwWOoqw+diQBNsShZYLeKwkN++4vfyz0XV5FMAj2au4kCPzsX8CAFYi1mxWuwh
 S2p9Hva2rcFgKY25gp7MXopxxYO7VWFrY7MIiXw0gE8qy0n4VZAvJRoETzt/xOrd9BBsshWbw6O
 883W09YeQBBNV5zifXM7TRz6k63V5EuDxH0vWgJa0BdAU/Tn3rmHvckj1RbsmhBQVHo9+AMi8xl
 XJllj7GZs5HU1LvvmlWF3bOhU0cTBg2yvSP7REg7B1LLUy+OZlGZnazQIdKjQLahh8noPl1oU3e
 nIJ3g3gBK4jloMqaouT1IIfaIEZW+sWTGe0oD6sqziwOhDHCGcqdKJpqkqq3uoRNV/WTcqTmpTT
 qcpnxpQ7nNVhHhHchAjTAE3N0+5Jck9hgX5Luj8YbvumUGJEzzpCpN3hb9k+Fx+EMmN80wS/rrt
 Dxv2wmt37rr10qaylwLDTMMXrw1Y65PJjz+0CCf1k26e6dPMtFAf/mHsq3eyWqoERZ6myX4CVq0
 oqLVBiPTuMAR6MWLi/xeEuHshBsRU42oeZRDrXy4eC1ve7aMiCrBGRzN9e6a+D3EFaDRflujgKs
 ul+Ad0OPogXqqtZJJ8p2RWaxoSJjFNsghpFRRIbiEUQDNQvNCg3e88BjN2wrTeb+MxRJWAlo/ZS
 u05peSQ4vUm3Cbg==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Tengfei Fan <quic_tengfan@quicinc.com>

Document the compatibles for the components used to boot the ADSP, CDSP0,
CDSP1, GPDSP0 and GPDSP1 on the SA8775p SoC.

Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
Co-developed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../bindings/remoteproc/qcom,sm8550-pas.yaml       | 76 +++++++++++++++++++++-
 1 file changed, 75 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index 73fda7565cd1..9d3a862c39e1 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -16,6 +16,11 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,sa8775p-adsp-pas
+      - qcom,sa8775p-cdsp0-pas
+      - qcom,sa8775p-cdsp1-pas
+      - qcom,sa8775p-gpdsp0-pas
+      - qcom,sa8775p-gpdsp1-pas
       - qcom,sm8550-adsp-pas
       - qcom,sm8550-cdsp-pas
       - qcom,sm8550-mpss-pas
@@ -44,12 +49,13 @@ properties:
 
   firmware-name:
     $ref: /schemas/types.yaml#/definitions/string-array
+    minItems: 1
     items:
       - description: Firmware name of the Hexagon core
       - description: Firmware name of the Hexagon Devicetree
 
   memory-region:
-    minItems: 2
+    minItems: 1
     items:
       - description: Memory region for main Firmware authentication
       - description: Memory region for Devicetree Firmware authentication
@@ -81,6 +87,21 @@ allOf:
           maxItems: 5
         memory-region:
           maxItems: 2
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sa8775p-adsp-pas
+            - qcom,sa8775p-cdsp0-pas
+            - qcom,sa8775p-cdsp1-pas
+            - qcom,sa8775p-gpdsp0-pas
+            - qcom,sa8775p-gpdsp1-pas
+    then:
+      properties:
+        interrupts:
+          maxItems: 5
+        interrupt-names:
+          maxItems: 5
   - if:
       properties:
         compatible:
@@ -128,6 +149,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,sa8775p-adsp-pas
             - qcom,sm8550-adsp-pas
             - qcom,sm8650-adsp-pas
             - qcom,x1e80100-adsp-pas
@@ -177,6 +199,58 @@ allOf:
             - const: cx
             - const: mxc
             - const: nsp
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sa8775p-cdsp-pas
+    then:
+      properties:
+        power-domains:
+          items:
+            - description: CX power domain
+            - description: MXC power domain
+            - description: NSP0 power domain
+        power-domain-names:
+          items:
+            - const: cx
+            - const: mxc
+            - const: nsp0
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sa8775p-cdsp1-pas
+    then:
+      properties:
+        power-domains:
+          items:
+            - description: CX power domain
+            - description: MXC power domain
+            - description: NSP1 power domain
+        power-domain-names:
+          items:
+            - const: cx
+            - const: mxc
+            - const: nsp1
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sa8775p-gpdsp0-pas
+            - qcom,sa8775p-gpdsp1-pas
+    then:
+      properties:
+        power-domains:
+          items:
+            - description: CX power domain
+            - description: MXC power domain
+        power-domain-names:
+          items:
+            - const: cx
+            - const: mxc
 
 unevaluatedProperties: false
 

-- 
2.43.0


