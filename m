Return-Path: <devicetree+bounces-167339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D8428A89FE3
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 15:48:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 285931901C20
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 13:48:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F2271A23BE;
	Tue, 15 Apr 2025 13:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wiaEkrsn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277AE153BF0
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 13:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744724883; cv=none; b=YQj3wFgRa5a2oAmvxyiq0RR7/1Jp/2WT2iVnjtYymO7BffCMybAY9JR/CYJzlOV6vMwj8Dsls1VBsSZnSXZWYnb1Tq74uEvraS86jsi4QY0QUEVBUMCZFCOf7VVYUmA3hltHyKwi1YOgzs5J9QHQf4VtGN1b5NRTh56aUZvdaXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744724883; c=relaxed/simple;
	bh=9lL5z/5ZnlWCseQ67IPO6Gbh/2cC7+gxybyIcI8QMkY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nbUQWxzsFq1QowSIH4/HhUhX41mGQYnmKDDZvlqrKvy84I+u/KfMp2+Vlyw6zeMejZvfcm1Cas093IyL3u8WRgmGnL+BIqhxNkcln2wZMr3p5PBDl6siZeaE6YMLKSMTR1OjKZSU2SMlKd61NHA4az24KXm5/n/pGNRNFXAqWwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wiaEkrsn; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43cf257158fso39984135e9.2
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 06:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744724879; x=1745329679; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wLNuOPp7/6q1u/JipORAthYcl23KJ0kTZ/zrq8XSK10=;
        b=wiaEkrsnARhZubpW5pC7sNh1u0Jg+iFgdlJGcVipLqDUTwjtRalgRpQJzbSpM3eC/k
         HZdodf/MLkp6GV0HR6AoAeaYWzfTi5gDNLVVOmDYBF/gbj7Ac6Ueu9Lq+0lVEepBIT88
         73Qr40Bsgh1ZMTkclqDFnBuWWzKd1O2sGPuTnC25T8Yff1d+rlaa7SOwcPABsWAyFB8t
         v2rwkpWWz5GaGYgYQQP/BywDi7Y9wbLJGEZmqxIGLQjXGOjDPEKkULkRi9gwc/II0lFX
         6TlaE4l1iGtcw1NdLh9Yt83F4GucGvJ3R7qScBzwfYjKPeN1Rhfp6vmx+JaHdz0xG/u2
         +6Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744724879; x=1745329679;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wLNuOPp7/6q1u/JipORAthYcl23KJ0kTZ/zrq8XSK10=;
        b=VJswpBYqAfL73r+1o8Zdmep1JJKFz013AJ6G10D0VXdF4lnmnXxg95BBf/ow2RsAjl
         JFfnnIhw0s4691WYL8sVMzTPvC1iIQkF9lHjvjbro29oyY9ELNdhaObSmwWwzRTq2kJT
         QSVf8iu50lNjM37IXE5dKK/wozNTrFVRDDbZ8sDRb1PGgLltSKZcLnX/0EzXvAioJCcE
         QrHpncI2hxsx6ZvGeACN19TB/l2VQqnZmZe5gDQWMOPDXOCbSAAc4WjWwi7JEJZaP7pe
         QDBMa9HX8ua95eqltGgc/b8F+z1wPynhjwGpC0E6afRc9g3/30zINBcDWcGYwokRrtqY
         hASg==
X-Forwarded-Encrypted: i=1; AJvYcCUJGbK3SELrR0FfVOSM/uWrPe8CWpIZI/LIMA5guou/DvMmAiSXDFPGRj9I8ZmqQ9cqA6OPhZvmGKf8@vger.kernel.org
X-Gm-Message-State: AOJu0YzJzBX6eSSaY/on4KciYhzyEOE3zUj16J0IKTbGCHma0QrLkGdN
	W9vuaAjnh+p3hdeWfCrpC17JMlCVtfdB0483N/JCVh4ylONIP7buYUwCsLGvDfE=
X-Gm-Gg: ASbGncvsr9drXd33WP7dFT9XX4m0cZrPFUmQv8XNo20SBMCDQuWjx6r74F388B+Z8+M
	M+QJCN+VkV3CCzEo45AlVdmScoVkWa4enL+rxqq4YxJuGbLKWdUgSlAx4J523MO5q3NvePkJJSC
	Qca7wdHP/QbDx/BT0M6AfqT5VVXaBKhGOLIUU7X7FJouvJ/5w00GcrFrSmHQB/v8+wdCy1gmul+
	0WM6BdsS8vGqW88GIbtVaA6bqTz0GHuCUCHpnsUMvfxFve/QBVG02I4sDti+5pwfdQE4675761N
	9ODFW2xrREGLdI3ug102+XEIDxTLm7ZwTLxlqmli1qd4XgiCvvC8Jxu6y8ATqA==
X-Google-Smtp-Source: AGHT+IEusx9V+EWA/jggcr6D9vXIrsx7SOzh1JnMQ08yxr3XdTQQwC6jFMkCy164NquHtj9I8blung==
X-Received: by 2002:a05:600c:3590:b0:43d:563:6fef with SMTP id 5b1f17b1804b1-43f3a9aa721mr111498155e9.21.1744724879386;
        Tue, 15 Apr 2025 06:47:59 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f2066d0fcsm210434195e9.19.2025.04.15.06.47.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 06:47:59 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 15 Apr 2025 15:47:53 +0200
Subject: [PATCH v6 1/7] dt-bindings: media: qcom,sm8550-iris: document
 SM8650 IRIS accelerator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-topic-sm8x50-iris-v10-v6-1-8ad319094055@linaro.org>
References: <20250415-topic-sm8x50-iris-v10-v6-0-8ad319094055@linaro.org>
In-Reply-To: <20250415-topic-sm8x50-iris-v10-v6-0-8ad319094055@linaro.org>
To: Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Dikshita Agarwal <quic_dikshita@quicinc.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2304;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=9lL5z/5ZnlWCseQ67IPO6Gbh/2cC7+gxybyIcI8QMkY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBn/mOKVg/1Jg0kiYLlIFPW57Hou8RbaRhsgIDzNaRQ
 FVVYct+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ/5jigAKCRB33NvayMhJ0cgDEA
 Coi4IC0wHY2W+cJ5clSHLwLm7q8ECDZPqtxm0Nxbdi2OF2bTYPY+0rEXm5LV3r86342ns929POl72g
 xoJvF26u2nk2u2lEjLEheDc0vRDfAFjqT/ENZBEchcrKoaAuv8qK0y5Vp0NIhveh6W8i2qEoSBXdfU
 ur8mOJ9paPbYoM/DVeoyyPbIgQoPHALs/kuJ66ZJy8VMK8TzPZItW3NCqKHORx7vt9XY80R2Uxl3em
 j6rW2JCPv0cYLA0KVG3yoO5ZstIk71E3iwPMQ36UVJ3MQ/GqG2Mx/FFW1K7VubmyNDJ6VT15+M+4jU
 Ku12ggSq2ocqly727be9xlCOh49mUO9UCZ+tU6gRPQ8efhAKhl8RDnDetKnd0ijcfkFtQRNsh9dIll
 AnUYx6NNBVWblCGQ3Tc1EcGdvbYL42NKNjkPCW8moyhQAcPqTBTKJoZqJJOxCzPBgHjMPY02ZxxG+K
 duwIda3W8kdFUzmQzlidoADr0KvC1Ck6CKSvWMjIMavuYjafAtLbfJW70Cd+B/T10fpsozTaE3l++r
 CyNcs5NFssoxvTGTF0BrK5s3LDFP+aZNGOXkQO4eHAFUdZ9IzyOiYWMqJklLanCCyFM/kDXHyj+WWL
 fMEFh4jrss6BOAHneSaiDL3bN+tNcNmm0iDbPNdSJcEB8F50vYVcUZs/Hlkg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the IRIS video decoder and encoder accelerator found in the
SM8650 platform, it requires 2 more reset lines in addition to the
properties required for the SM8550 platform.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Vikash Garodia <quic_vgarodia@quicinc.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # x1e Dell
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/media/qcom,sm8550-iris.yaml           | 33 ++++++++++++++++++----
 1 file changed, 28 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
index 6a89e9e3808758cfdbf6a51dfb9fc6559864253a..f567f84bd60d439b151bb1407855ba73582c3b83 100644
--- a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
@@ -14,9 +14,6 @@ description:
   The iris video processing unit is a video encode and decode accelerator
   present on Qualcomm platforms.
 
-allOf:
-  - $ref: qcom,venus-common.yaml#
-
 properties:
   compatible:
     oneOf:
@@ -24,7 +21,9 @@ properties:
           - enum:
               - qcom,sa8775p-iris
           - const: qcom,sm8550-iris
-      - const: qcom,sm8550-iris
+      - enum:
+          - qcom,sm8550-iris
+          - qcom,sm8650-iris
 
   power-domains:
     maxItems: 4
@@ -54,11 +53,15 @@ properties:
       - const: video-mem
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   reset-names:
+    minItems: 1
     items:
       - const: bus
+      - const: xo
+      - const: core
 
   iommus:
     maxItems: 2
@@ -80,6 +83,26 @@ required:
   - iommus
   - dma-coherent
 
+allOf:
+  - $ref: qcom,venus-common.yaml#
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm8650-iris
+    then:
+      properties:
+        resets:
+          minItems: 3
+        reset-names:
+          minItems: 3
+    else:
+      properties:
+        resets:
+          maxItems: 1
+        reset-names:
+          maxItems: 1
+
 unevaluatedProperties: false
 
 examples:

-- 
2.34.1


