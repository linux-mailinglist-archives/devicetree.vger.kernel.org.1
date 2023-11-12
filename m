Return-Path: <devicetree+bounces-15226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B04D7E9207
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 19:44:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EACECB20837
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 18:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4647D15AEE;
	Sun, 12 Nov 2023 18:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WMc4lO62"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9060A154B6
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 18:44:13 +0000 (UTC)
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 584B0103
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:44:12 -0800 (PST)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-5b31c5143a0so42985557b3.3
        for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699814651; x=1700419451; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=URm3aBGEZMYGVmdKlbcPoF6bMYnpimYDfI0RPBYPF7w=;
        b=WMc4lO62eNuSZz7H0clD9HSE76T1Z3yTuGe4NrquHhf7/s8MOesgtzwkYFGXb27574
         aMW3Ty1grYzNewu2HemsomxnefE/yYswPZyf0P63dDRRiNl6UZEMW36cInOBEiV6UBG1
         6D1btRMp54zFyPiTX5T0BRMS+gDUrbKKQ6pE93SDoiCkhCL1cKU0psn3jdiTbDMvcuh4
         VJhDU6Qgn5QwXL/+PGX/kkZV++0u0h8JJSmxXTUpU9adKrMKRrErncW7OLW5FmxD5Aax
         smlojtHBdxXQFHu7LNLAkeaRJgyqO/FTyAgCbY3AOfwJXGYtZtmYixZkozaFmev6z5Sv
         Yvqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699814651; x=1700419451;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=URm3aBGEZMYGVmdKlbcPoF6bMYnpimYDfI0RPBYPF7w=;
        b=G1sqzTrMEsxio2JIuNIwy7JSlcEkTUUxTeLwiKG1lfnn4jhwc93jKtEzbU0I9dX7uq
         wlqiGlyvAdwnSwhEBzAh7HzHCalYooJMPgg8XuWtPEJZpsnR+NPmdKkg5UQlffOyVw2t
         AvkOYzQYFIWtFxwyj1Lf59/bfDYuit7H27G97YWQwnqigwH9EhL5SW/OoaRRiwDD4vQe
         Rhx2u0XbJN+JgqFKRtLlpQSRQURC5uXoigsxHOJLQqXSnZbIFfSneQLk0ru6moYrbAnz
         8n1H3SC6oXIZnJ4KhTC94IQ6F5xyhsjcTDnxqGhNsTMWi7yz8Q0ybh5JKl1Jmju+rzXi
         YAiQ==
X-Gm-Message-State: AOJu0Yw5U6BGphoYwLwAdNH8/74qAmBJp9EVVuif1zt/sPa0dHiu0o6j
	7Jbptz+LR8nyto0pEPkzPCnsJw==
X-Google-Smtp-Source: AGHT+IEMgeqW+UHzIGW9S0MzgXOGTEehvymLNXsNHGrBqS79/kki9bEegn1CH2pjln/EBoRJFDgiAQ==
X-Received: by 2002:a81:8704:0:b0:59f:519e:3e9a with SMTP id x4-20020a818704000000b0059f519e3e9amr6022964ywf.20.1699814651559;
        Sun, 12 Nov 2023 10:44:11 -0800 (PST)
Received: from krzk-bin.. ([12.161.6.170])
        by smtp.gmail.com with ESMTPSA id u63-20020a0deb42000000b005b3f6c1b5edsm1308938ywe.80.2023.11.12.10.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Nov 2023 10:44:11 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Inki Dae <inki.dae@samsung.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/5] dt-bindings: gpu: samsung: re-order entries to match coding convention
Date: Sun, 12 Nov 2023 19:44:00 +0100
Message-Id: <20231112184403.3449-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231112184403.3449-1-krzysztof.kozlowski@linaro.org>
References: <20231112184403.3449-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Devicetree bindings coding convention, as used in most of the files
and expressed in Documentation/devicetree/bindings/example-schema.yaml,
expects "allOf:" block with if-statements after "required:" block.

Re-order few schemas to match the convention to avoid repeating review
comments for new patches using existing code as template.  No functional
changes.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/gpu/samsung-g2d.yaml  | 53 +++++++++--------
 .../bindings/gpu/samsung-scaler.yaml          | 59 +++++++++----------
 2 files changed, 56 insertions(+), 56 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpu/samsung-g2d.yaml b/Documentation/devicetree/bindings/gpu/samsung-g2d.yaml
index e7daae862578..b6951acc7643 100644
--- a/Documentation/devicetree/bindings/gpu/samsung-g2d.yaml
+++ b/Documentation/devicetree/bindings/gpu/samsung-g2d.yaml
@@ -27,32 +27,6 @@ properties:
   iommus: {}
   power-domains: {}
 
-if:
-  properties:
-    compatible:
-      contains:
-        const: samsung,exynos5250-g2d
-
-then:
-  properties:
-    clocks:
-      items:
-        - description: fimg2d clock
-    clock-names:
-      items:
-        - const: fimg2d
-
-else:
-  properties:
-    clocks:
-      items:
-        - description: sclk_fimg2d clock
-        - description: fimg2d clock
-    clock-names:
-      items:
-        - const: sclk_fimg2d
-        - const: fimg2d
-
 required:
   - compatible
   - reg
@@ -60,6 +34,33 @@ required:
   - clocks
   - clock-names
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos5250-g2d
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: fimg2d clock
+        clock-names:
+          items:
+            - const: fimg2d
+
+    else:
+      properties:
+        clocks:
+          items:
+            - description: sclk_fimg2d clock
+            - description: fimg2d clock
+        clock-names:
+          items:
+            - const: sclk_fimg2d
+            - const: fimg2d
+
 additionalProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/gpu/samsung-scaler.yaml b/Documentation/devicetree/bindings/gpu/samsung-scaler.yaml
index 5317ac64426a..97d86a002a90 100644
--- a/Documentation/devicetree/bindings/gpu/samsung-scaler.yaml
+++ b/Documentation/devicetree/bindings/gpu/samsung-scaler.yaml
@@ -26,36 +26,6 @@ properties:
   iommus: {}
   power-domains: {}
 
-if:
-  properties:
-    compatible:
-      contains:
-        const: samsung,exynos5420-scaler
-
-then:
-  properties:
-    clocks:
-      items:
-        - description: mscl clock
-
-    clock-names:
-      items:
-        - const: mscl
-
-else:
-  properties:
-    clocks:
-      items:
-        - description: pclk clock
-        - description: aclk clock
-        - description: aclk_xiu clock
-
-    clock-names:
-      items:
-        - const: pclk
-        - const: aclk
-        - const: aclk_xiu
-
 required:
   - compatible
   - reg
@@ -63,6 +33,35 @@ required:
   - clocks
   - clock-names
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos5420-scaler
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: mscl clock
+        clock-names:
+          items:
+            - const: mscl
+
+    else:
+      properties:
+        clocks:
+          items:
+            - description: pclk clock
+            - description: aclk clock
+            - description: aclk_xiu clock
+        clock-names:
+          items:
+            - const: pclk
+            - const: aclk
+            - const: aclk_xiu
+
 additionalProperties: false
 
 examples:
-- 
2.34.1


