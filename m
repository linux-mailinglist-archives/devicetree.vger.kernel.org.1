Return-Path: <devicetree+bounces-125045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD3F9DA9AB
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 15:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FF29281E25
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:06:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2183E1FCFFD;
	Wed, 27 Nov 2024 14:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Aq+a2KGp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D6E1FCFE3
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 14:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732716356; cv=none; b=XM12CVHy8YAE3JAXWRRzFap2+nNZtJHsm08vVGlXnkTXN2ySaVRFxqckJMwMKtXLpBFBMhpfn0eUclBebyIWezh3J3f9j7e0Ppn3DJWqkOQgEqkTp4mHnNWB6Pi0LMZ9IUoum3eX7IzZ5zFpKNuOyy1CSM2ggpOhW5lFuIFb7/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732716356; c=relaxed/simple;
	bh=1/9/VRiAd3mFuJE0x6u0oROPGPE9qYr/1F5OkY7DYEU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hB/t2xa9B+c+h1xgo/G+N4ELKhutrxNeM9jqU3VrHTYu54ky4QRumXWq9PEf6KDMooM9m5SNMCEP+tQdR2D8+m3aZ7n8s21GPFukiEqMoqTXse+PSRB4raEOgqzWfjjXMxXmkKClnkFHzR1cRcPPNaS3MKUm5zIMiFIRIVatgYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Aq+a2KGp; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4349e4e252dso31036355e9.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 06:05:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732716353; x=1733321153; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LnTMbYbEVvxii8W+l8ai6UooboM0MmZTrUVAFR7MtHk=;
        b=Aq+a2KGp0tU//R7kGaugvrrG9U1Kdu+Z6PXztprx5neXUn1B2qOhar0hDxMUXRGyPR
         XhGdueaGYqEXEyTfQ8woGhp4hhv3qlFgDgNVn3k5HdDNn1VTVLBYWaJNVtQBWY3Z9m1S
         F+hZNH+h6FXg3w/0K6Xf/m9NIsq+gfhcWmYR98qOp+p5ckGhJba3UByt/EQx7zVuasek
         +GEy9tjEVvRnvCQBOUIAXI3tePv+NMqZAXFIZPj+veUgCkryShQqQDi04Yp3ft2Q68fD
         1xnpVBY0GwlgbLZ9p2RtxdVFziGAjMT56xs5WbfSjI8lfK/OMl62AnMp44LkRqJCjXUv
         Hbog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732716353; x=1733321153;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LnTMbYbEVvxii8W+l8ai6UooboM0MmZTrUVAFR7MtHk=;
        b=d71LFCVxQjBe6jBTZNHA4SqBhut2BMhIE62sFiZl7pb6IIeti1Th9NbMGtLC3N9sG2
         0J3sYQdJahM7diNWCf+mB05ldbXh+DS9VvjZmrL+0OJhF2ykrHMEtNBMJOaZZzB7xGPZ
         TGeQxCkLvlh+rfzg+5vgdciNG0Ie0k8wyIDseMotW/tWRdeAbz/E1FKOI/Nh1kEzxCIk
         qxIv2xIV1Wqa1Kl2+l/QH/fMe/qftRi033UHIVdN3vnbZYJzw9xuDVB4zxKyXc3oajzF
         tX4X5HDtkdEryfi40S5M/loNZVaN+faqzUv2hwJEVIBRS8Ey6KG1PHuk1Gn9WKFPDBi4
         mgMw==
X-Forwarded-Encrypted: i=1; AJvYcCWGUWrePhx5supHpJz5duFLWeC0Yg0z3qkQFEhNjIHM1Uf7pZnd1rcU9tMRXh7i3yIxPTpLuwCTLNM4@vger.kernel.org
X-Gm-Message-State: AOJu0Yxaw+5H98aIsxf4S3CYvTaovl2p+nSsqwZgAemJOL1Guk0ikC4o
	pUj6Hi2i6JivluCgIhT9OlhrB3K+qlYzEbgbtf6NZW3goAeF0/8OsnU4qhE4sWM=
X-Gm-Gg: ASbGncv9izfxM4Dmd0fSwgS+RuXSHGUoJKPVND+TSAtJpvjXOn9vSpjwN+e3bRtzJ+x
	4IfnEewlv0TdQ2/hW6GMf7FVBjyKYtpNIB+tjnwSVWI57Ej7Zq129YG4INL2ksC4jHEWVmJ+pp5
	YIkaN3aMYcpErtTD+QAiNlG9YoGWDRj37gzsuaRizMjncegX9kI7FnoidYkHrIHgKLPwubp5Yc/
	xWTxHs/w+zOZrg8TZdeGhL7i4CVIXov37ze4T3zSxgKfNj0iPRETPILpf0=
X-Google-Smtp-Source: AGHT+IGg2acUZRXw34PIaD/kU+hGoPERoHWRpiVKwUZdCoAZRnahx4SyEEoF+vxW3u1N5y/+QSx2Tw==
X-Received: by 2002:a05:6000:2707:b0:382:359f:534d with SMTP id ffacd0b85a97d-385c6ebcea5mr1955933f8f.23.1732716338889;
        Wed, 27 Nov 2024 06:05:38 -0800 (PST)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fad6436sm16442335f8f.13.2024.11.27.06.05.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 06:05:38 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 27 Nov 2024 14:05:14 +0000
Subject: [PATCH v3 3/3] media: dt-bindings: qcom-venus: Deprecate
 video-decoder and video-encoder where applicable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241127-media-staging-24-11-25-rb3-hw-compat-string-v3-3-ef6bd25e98db@linaro.org>
References: <20241127-media-staging-24-11-25-rb3-hw-compat-string-v3-0-ef6bd25e98db@linaro.org>
In-Reply-To: <20241127-media-staging-24-11-25-rb3-hw-compat-string-v3-0-ef6bd25e98db@linaro.org>
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: quic_renjiang@quicinc.com, quic_vnagar@quicinc.com, 
 quic_dikshita@quicinc.com, konradybcio@kernel.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Stanimir Varbanov <stanimir.varbanov@linaro.org>, 
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-dedf8

For the list of yaml files here the video-decoder and video-encoder nodes
provide nothing more than configuration input for the driver. These entries
do not in fact impart hardware specific data and should be deprecated.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/media/qcom,msm8916-venus.yaml        | 12 ++----------
 .../devicetree/bindings/media/qcom,sc7180-venus.yaml         | 12 ++----------
 .../devicetree/bindings/media/qcom,sc7280-venus.yaml         | 12 ++----------
 .../devicetree/bindings/media/qcom,sdm845-venus-v2.yaml      | 12 ++----------
 .../devicetree/bindings/media/qcom,sm8250-venus.yaml         | 12 ++----------
 5 files changed, 10 insertions(+), 50 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,msm8916-venus.yaml b/Documentation/devicetree/bindings/media/qcom,msm8916-venus.yaml
index 9410f13ca97c181973c62fe62d0399fc9e82f05d..da140c2e3d3f3c3e886496e3e2303eda1df99bb4 100644
--- a/Documentation/devicetree/bindings/media/qcom,msm8916-venus.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,msm8916-venus.yaml
@@ -45,6 +45,7 @@ properties:
     required:
       - compatible
 
+    deprecated: true
     additionalProperties: false
 
   video-encoder:
@@ -57,13 +58,12 @@ properties:
     required:
       - compatible
 
+    deprecated: true
     additionalProperties: false
 
 required:
   - compatible
   - iommus
-  - video-decoder
-  - video-encoder
 
 unevaluatedProperties: false
 
@@ -83,12 +83,4 @@ examples:
         power-domains = <&gcc VENUS_GDSC>;
         iommus = <&apps_iommu 5>;
         memory-region = <&venus_mem>;
-
-        video-decoder {
-            compatible = "venus-decoder";
-        };
-
-        video-encoder {
-            compatible = "venus-encoder";
-        };
     };
diff --git a/Documentation/devicetree/bindings/media/qcom,sc7180-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sc7180-venus.yaml
index 5cec1d077cda77817f6d876109defcb0abbfeb2c..83c4a5d95f020437bd160d6456850bc84a2cf5ff 100644
--- a/Documentation/devicetree/bindings/media/qcom,sc7180-venus.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sc7180-venus.yaml
@@ -70,6 +70,7 @@ properties:
     required:
       - compatible
 
+    deprecated: true
     additionalProperties: false
 
   video-encoder:
@@ -82,14 +83,13 @@ properties:
     required:
       - compatible
 
+    deprecated: true
     additionalProperties: false
 
 required:
   - compatible
   - power-domain-names
   - iommus
-  - video-decoder
-  - video-encoder
 
 unevaluatedProperties: false
 
@@ -114,12 +114,4 @@ examples:
                       "vcodec0_core", "vcodec0_bus";
         iommus = <&apps_smmu 0x0c00 0x60>;
         memory-region = <&venus_mem>;
-
-        video-decoder {
-            compatible = "venus-decoder";
-        };
-
-        video-encoder {
-            compatible = "venus-encoder";
-        };
     };
diff --git a/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
index 10c334e6b3dcf25967fa438f8e6e5035448af1b9..413c5b4ee6504ba1d5fe9f74d5be04ad8c90c318 100644
--- a/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
@@ -68,6 +68,7 @@ properties:
     required:
       - compatible
 
+    deprecated: true
     additionalProperties: false
 
   video-encoder:
@@ -80,14 +81,13 @@ properties:
     required:
       - compatible
 
+    deprecated: true
     additionalProperties: false
 
 required:
   - compatible
   - power-domain-names
   - iommus
-  - video-decoder
-  - video-encoder
 
 unevaluatedProperties: false
 
@@ -125,14 +125,6 @@ examples:
 
         memory-region = <&video_mem>;
 
-        video-decoder {
-            compatible = "venus-decoder";
-        };
-
-        video-encoder {
-            compatible = "venus-encoder";
-        };
-
         video-firmware {
             iommus = <&apps_smmu 0x21a2 0x0>;
         };
diff --git a/Documentation/devicetree/bindings/media/qcom,sdm845-venus-v2.yaml b/Documentation/devicetree/bindings/media/qcom,sdm845-venus-v2.yaml
index 6228fd2b324631f3138e128c918266da58f6b544..c839cb1ebc0999e10b865f4bb43ea76ffa2bf46d 100644
--- a/Documentation/devicetree/bindings/media/qcom,sdm845-venus-v2.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sdm845-venus-v2.yaml
@@ -70,6 +70,7 @@ properties:
     required:
       - compatible
 
+    deprecated: true
     additionalProperties: false
 
   video-core1:
@@ -82,14 +83,13 @@ properties:
     required:
       - compatible
 
+    deprecated: true
     additionalProperties: false
 
 required:
   - compatible
   - power-domain-names
   - iommus
-  - video-core0
-  - video-core1
 
 unevaluatedProperties: false
 
@@ -119,12 +119,4 @@ examples:
         iommus = <&apps_smmu 0x10a0 0x8>,
                  <&apps_smmu 0x10b0 0x0>;
         memory-region = <&venus_mem>;
-
-        video-core0 {
-            compatible = "venus-decoder";
-        };
-
-        video-core1 {
-            compatible = "venus-encoder";
-        };
     };
diff --git a/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
index f66033ae8b590e7b6f1e344c368994744411aca2..da54493220c9dc90e7d9f5fcfce7590acb241c85 100644
--- a/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
@@ -73,6 +73,7 @@ properties:
     required:
       - compatible
 
+    deprecated: true
     additionalProperties: false
 
   video-encoder:
@@ -85,6 +86,7 @@ properties:
     required:
       - compatible
 
+    deprecated: true
     additionalProperties: false
 
 required:
@@ -95,8 +97,6 @@ required:
   - iommus
   - resets
   - reset-names
-  - video-decoder
-  - video-encoder
 
 unevaluatedProperties: false
 
@@ -132,12 +132,4 @@ examples:
         resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>,
                  <&videocc VIDEO_CC_MVS0C_CLK_ARES>;
         reset-names = "bus", "core";
-
-        video-decoder {
-            compatible = "venus-decoder";
-        };
-
-        video-encoder {
-            compatible = "venus-encoder";
-        };
     };

-- 
2.47.0


