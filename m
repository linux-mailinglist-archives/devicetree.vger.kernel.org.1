Return-Path: <devicetree+bounces-78906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 497B2913A4E
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:01:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD5161F2194E
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BE15181CFC;
	Sun, 23 Jun 2024 12:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wqqMvFoK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7778D181BA7
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719144036; cv=none; b=HDwnquNkdkw+Y8gx1C/i7yGtv/MzEHSi4+/yqLMj7mPRA6HXs+gnJ6WFvbk4CXl2y1po9sdZma3bzH9jdehUoqH6Z2+fJ5eZvavmwAnT0KccbJlu46/ptftCkpuwJp79Hkt3arEPGUiDLnHFw55WCMMh2eLsgUJLHNPhSIVpTn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719144036; c=relaxed/simple;
	bh=ZkimSwvr82NPcbaA0foj0eXzI4jvTaBVQ88EJATB1tM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YdNjt+e25204Gvm/f/tiQdVkhBWHHkKeQ6hapZ5XJKYyoTtHqtF+Yg17wRLBFJxyOIC0xkpbmQ80YoHJaMxwKu4/z5Zyp3o+mrW9WElvxiCRcSn9xS4BW529vw2qosbMTYgp/EuNBdPGFpQ8WtLTQ58133RQXLzNCFKZZ37hw6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wqqMvFoK; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4217990f8baso30566485e9.2
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 05:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719144033; x=1719748833; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ecK+toW3Ns4ZNrqgQybbNewCzjgaGGXdUaWN+FWF27c=;
        b=wqqMvFoK8jJWfr9t0LsWpsLYdW3UQOXfjzw9jiehORzP6bvgLq9PtCaOtmFnsIcPfs
         q3zb1gaKvdz+/uNWWBdHdijtxJaP7eDDb+xsSwSKWaYMQcnlskRkxoUyNrsrFIYUFznP
         clGuSs4UtUo6OCnb371HjXFhVLh7sRwo/ZTv7s90e5E8WhnjqUCJNo3UKAeAmB6oPyVk
         iPO1cFCZbFtZQRBOlknTdNZbpXKJCtPWGeWXvpcMWQoseXzVxnfPob0ZuFfAXiRDMcfu
         kAMh5PLhtuosEjw8Ve7klAS3rXSITv+AnSspJjzP83kdnS3KdnRhqhY74i471uWSuPhp
         /0yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719144033; x=1719748833;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ecK+toW3Ns4ZNrqgQybbNewCzjgaGGXdUaWN+FWF27c=;
        b=SGAe3Xe76s7SmQGZljUnd6l9DxVFrbNnw1yYDjtGwF+sktM7H4Jbd+t+2Dqqmk3XB8
         MwWsr694lB/AgtBQ3eBoNbI+kjyA116W1+he2A92/mako4NsXD6BBwJo9NHhxvWXlnsM
         MZ+1r6Qlx+5mp8YwFGePpUPDytqBlVl+rLGzRiaAIGQrSshUfZXp2/aTc4mUBahfJqg+
         XazPUr85bivv+dNECVXB6etGPPhqd0E9/N3c94MhLCEcAyCf+GFdcUpOoXOsyLptVnpY
         NW744UTZiYJ0fGMzWNHLxT4lUyiRvAkmfg7GLHx2pA//tZTInidpN1O/v4vYAizMhyuo
         KPkA==
X-Forwarded-Encrypted: i=1; AJvYcCV63IH0e2ZNFrJyI8sNmPdnc4Xg5QKKaCJEw3J7Bza5g9EkuIRN0CpxHM8CEpPC5uBVU6AYmmqbivBEhC9LoUOVAvlPz54cXsLNLw==
X-Gm-Message-State: AOJu0Yx2CodLT/ghtcHfR5OUZtObfkMfJIiXsYjxb/w0MdHbKL05W2OH
	skvoEwFxqklEElojHaoKMnapdfcIuE7a6+r05w+//tIa0iNSYWXJ+HEMQJO43gA=
X-Google-Smtp-Source: AGHT+IGH65kKS7M6vcnw+GFLjPcYiLfNI3yhUCA7KwnzudEhnrCZRo0tzHlu9MxebLYKwwKlOaegOQ==
X-Received: by 2002:a05:600c:3c93:b0:424:9024:d468 with SMTP id 5b1f17b1804b1-4249024d4e1mr4347895e9.17.1719144032825;
        Sun, 23 Jun 2024 05:00:32 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4248179d3basm105465515e9.4.2024.06.23.05.00.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 05:00:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] dt-bindings: display/msm/gpu: constrain reg/reg-names per variant
Date: Sun, 23 Jun 2024 14:00:26 +0200
Message-ID: <20240623120026.44198-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623120026.44198-1-krzysztof.kozlowski@linaro.org>
References: <20240623120026.44198-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

MMIO address space is known per each variant of Adreno GPU, so we can
constrain the reg/reg-names entries for each variant.  There is no DTS
for A619, so that part is not accurate but could be corrected later.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/msm/gpu.yaml  | 87 +++++++++++++++++--
 1 file changed, 79 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index baea1946c65d..e83f13123fc9 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
@@ -130,6 +130,22 @@ required:
 additionalProperties: false
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            pattern: '^qcom,adreno-[0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f]$'
+    then:
+      properties:
+        reg:
+          minItems: 3
+
+        reg-names:
+          items:
+            - const: kgsl_3d0_reg_memory
+            - const: cx_mem
+            - const: cx_dbgc
+
   - if:
       properties:
         compatible:
@@ -164,6 +180,13 @@ allOf:
           minItems: 2
           maxItems: 7
 
+        reg:
+          maxItems: 1
+
+        reg-names:
+          items:
+            - const: kgsl_3d0_reg_memory
+
       required:
         - clocks
         - clock-names
@@ -196,11 +219,12 @@ allOf:
             - const: xo
               description: GPUCC clocksource clock
 
+        reg:
+          maxItems: 1
+
         reg-names:
-          minItems: 1
           items:
             - const: kgsl_3d0_reg_memory
-            - const: cx_dbgc
 
       required:
         - clocks
@@ -217,12 +241,59 @@ allOf:
           clocks: false
           clock-names: false
 
-          reg-names:
-            minItems: 1
-            items:
-              - const: kgsl_3d0_reg_memory
-              - const: cx_mem
-              - const: cx_dbgc
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,adreno-640.1
+              - qcom,adreno-680.1
+    then:
+      properties:
+        reg:
+          maxItems: 1
+
+        reg-names:
+          items:
+            - const: kgsl_3d0_reg_memory
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,adreno-619.0
+              - qcom,adreno-630.2
+    then:
+      properties:
+        reg:
+          minItems: 2
+          maxItems: 2
+
+        reg-names:
+          items:
+            - const: kgsl_3d0_reg_memory
+            - const: cx_mem
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,adreno-618.0
+              - qcom,adreno-635.0
+              - qcom,adreno-690.0
+              - qcom,adreno-730.1
+    then:
+      properties:
+        reg:
+          minItems: 3
+
+        reg-names:
+          items:
+            - const: kgsl_3d0_reg_memory
+            - const: cx_mem
+            - const: cx_dbgc
 
 examples:
   - |
-- 
2.43.0


