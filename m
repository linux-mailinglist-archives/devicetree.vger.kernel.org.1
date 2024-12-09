Return-Path: <devicetree+bounces-128640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 574889E92E1
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:53:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BCD4E18817C9
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:53:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 236F1221DBB;
	Mon,  9 Dec 2024 11:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cRK327lQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80B422258B
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 11:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733745183; cv=none; b=Oz9qGY7sdotNUOxToDCTEfYfOjcg5qbp0Al9qMaaqrqeO4ZjJUK0FeqmFXZjt/FegXMjJWXMw2b/WlxUQ5XRYrW/uF41jSXN2PpmvT5zmKNiXOznvGhUYVewBOpS9R36wgmIMIEYm6ICmLv5GMsi3WWYOfk4vQMcgn3KJ6v4VPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733745183; c=relaxed/simple;
	bh=lveT01XJFbPiCHFrg6nSo0zlm6T0yWAAHdtlgddNXio=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EzfD2QD1GvyiZlwWRURJ2MCad36hs7lD0SvIrx7V8w/8xlF/nD9XOuck1nr9foj8O33rnWSwSHbtB0oZwEu36sPCkphovWx/ECsGCcr+ntOZpzcoPkkeJGj9euvIer5jCDhUaIi0Dys57M6l9vBaAamRzspT+58L26B9rUKYVlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cRK327lQ; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aa69107179cso110109766b.0
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 03:53:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733745179; x=1734349979; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t3dDvW0+Cz6kszp6aCIpBOpaxsGIqiTVCAZVfI6Gurs=;
        b=cRK327lQv1nXa339nvYMPL/x6x1wTObM6V8o+j0SNZ3QKEhX1nsdgWaV7KGn1fX1dA
         LQ6Gx+PLS/kPIlSp/zz+kKF37p4UlV8egfbq616T4UAOL8pZ8CcvZIzah5Iv555NH3jj
         4+WAXXRE8pAsKNtDCRgFk6fd6q8FFiZQLEGftlkxJ/n1fxT4sI560kORK6MHkxr/mo6N
         DiOzB6T7iaiNxfuJUGj+aNge+iutkcJtNGtSrZ84IHrVDZAARaCF5b6niNrvaaNBgnE6
         Z/V5w0t0EIAuID19sKZd+ZXePiOh8pRtOGG7sBDi3FEQ/M+fikcalhN2XTUAjuo2HBZT
         WEuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733745179; x=1734349979;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t3dDvW0+Cz6kszp6aCIpBOpaxsGIqiTVCAZVfI6Gurs=;
        b=gnmhemkqIeJOvP5rxHyP6TNwxJqtsYF6mpD6dVof48+1x1a6DED4WRhP57bV1e630N
         XrtsJxEoB4HUb1Jc6/TqA2zRIySPm+b6oIN69bACmhD7Xb9RIKxboMq9uxUdpFc7kJZq
         dcl4/7yPyCcHVAHOzG7oe1fkNMUFZVjNJ8FBde5jJfbDGhsn+GRUpEA5wkDKtTmrLB6I
         /rACCoKq3ehDz4C04aP8ktV2mhoAvtLWPgwArecZ2iACpArmUyuScbIB6rZF06FsHk9F
         6eSVtGVTBZC7H4Cln2Ing7PpG9ZM6eXc5V4y2Rq66laT4HpW5/+YTVOoBmhjcQAGyiA4
         b8tw==
X-Forwarded-Encrypted: i=1; AJvYcCWQvxbZGKDjBx3FyVZlFCsy8/ii8I0cNHXG6fURaUa8iRPmHhzZ+Cpcb+r4q5DsQoO246/BboutNjBa@vger.kernel.org
X-Gm-Message-State: AOJu0YxnZzHuEodmQMLMDkzhMGz7Wx0AeL0HT7h0ZV400MTx4hzQU0s7
	eIcUYn8C+ST3vXhuFqkY++o7sBvnbhk52vRDtZlH7zx2B22oVQUusOgSf+W5ABo=
X-Gm-Gg: ASbGncs7bmDgx0GGrIKpdvd3bUABWSVbhFcBtqA9C8AJZaDn70d0cSBGbPCi9jdJYZR
	BnqTdEJyugd0hzF89uymd+R9ywWQWkRQfrI+Kbbg24vyFpkPmTFyeuDYBosWhY4ehaUji7T+MV2
	yeodj08OcQfS+VJgtJhSzp6kpZ07M//ZYpYgJyr5swF0Hc9FgsIFUlRI2twNltQati5s8Ebjin/
	tS61cAul7b9ljKYb4t9ig5gg03ZBMTzlW7hyZ88tIoJE78DU+jJ8tP2guc=
X-Google-Smtp-Source: AGHT+IE2KmIau7W1utfz/bUGmihA/tI1zeIRorx8zV6WkinRpJDJW35i9sOrNPieWod81zle6su0Cg==
X-Received: by 2002:a17:906:3082:b0:aa6:7933:8b33 with SMTP id a640c23a62f3a-aa69cd4540fmr5215466b.15.1733745179161;
        Mon, 09 Dec 2024 03:52:59 -0800 (PST)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa677968cdbsm247614266b.125.2024.12.09.03.52.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 03:52:58 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Mon, 09 Dec 2024 11:52:55 +0000
Subject: [PATCH v5 3/3] media: dt-bindings: qcom-venus: Deprecate
 video-decoder and video-encoder where applicable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241209-media-staging-24-11-25-rb3-hw-compat-string-v5-3-ef7e5f85f302@linaro.org>
References: <20241209-media-staging-24-11-25-rb3-hw-compat-string-v5-0-ef7e5f85f302@linaro.org>
In-Reply-To: <20241209-media-staging-24-11-25-rb3-hw-compat-string-v5-0-ef7e5f85f302@linaro.org>
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: quic_renjiang@quicinc.com, quic_vnagar@quicinc.com, 
 quic_dikshita@quicinc.com, konradybcio@kernel.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Stanimir Varbanov <stanimir.varbanov@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
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
2.47.1


