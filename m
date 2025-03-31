Return-Path: <devicetree+bounces-161949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C154A76111
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 10:14:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13F1D188503A
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 08:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F3F11D90DD;
	Mon, 31 Mar 2025 08:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EIyoD3MG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758921D5178
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 08:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743408834; cv=none; b=IVlBE5sHRO18/3QZoFGgcc/Qymw3sUJjqT+QwKecxhaky29U523HNIYfRD9fPysFAIRfQTp1dIOEwa7vD3rIs8kl0+s5JxA2BxDBZ2bfnStXcFkMHiNQamaY2zyImpkgYCLGRscFh1L1YzggMeG16oiolhs+OITA2u1w2pqtDdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743408834; c=relaxed/simple;
	bh=PnPHPhffTnddLWPJO2b0NVvsFyRaj4XlZxugAhEj3Bg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=L8mp1aN+grrVGzXucolpk9B/hcP0a1ibHJDeuXln2Du3uh2GwbBiMsx3kjc4hNsEOc8oYqB0yM+C2+ib5rLpkF0y8eeq9FPdzpR/N5Wc8dcPTXD/rrkuR4fhSxu7FbPcmazuZaDDoHG0MqzEsMO9+ByluKrq6KfDeFxN/Hzx3eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EIyoD3MG; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3912a28e629so281674f8f.1
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 01:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743408831; x=1744013631; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SXxDv8uEzzOupk29klLSAOEKgKM6kgXgixs38bcJdPU=;
        b=EIyoD3MGBKYccRvAW3U5cEheg0/7caqGci2rFAyCdB0nS7+5bu2r//QmwDBQzGBETv
         bb3dDhzwmz+e85f2AwtjzubQe1X7mhxKxsrrDEGky8PW25d9SEIu103+2aoLtVgKDej5
         3MKq8zAIOHJ36WGsb9z8D8GciKlZVAM3hxe6XPdTmGBuiEd0FNAvt5fW7zMd6XkBHcVG
         dSRQsxRrZOzq0Dvx2vre91gmFNVwN5p7NBT10FLHotMrp5CoOqRbu1wb7NyZ8zZwceVI
         iOc3A5sunMLxgm2Byu7C2vMnfgX7Ejqm0OuEd4ZMALytBxTNaqa51VY9Xg0M4PiKoHdX
         TOVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743408831; x=1744013631;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SXxDv8uEzzOupk29klLSAOEKgKM6kgXgixs38bcJdPU=;
        b=MrxkrE5m9Ktv2E9g3m7cOve7eruXlhanDjBiU+9aQF10l06HJ6gIU8cV1kISrxxWz9
         tLocBJT+D4IHjf6Zc6voi1q53yyVQXLs3Gwumdum1ZSCBC+9ulQx/aZmg+OvN/HFCF8K
         ctwI0/LazLp6XCa2wLrjn0zna9Xd5Zy7C6UZdGATNuBiy/Rikd3Faon0y3pCdg4aEoOd
         W5eAdLhZ68jfLjgyLcdwm1lTh9PMdKOmttpSkTNhOhHZOlEJNPnIKkScHQsTMk0EoyNy
         NK0Pk1Y/An+FEUYCGD0JoJe7S2eKc9WiNnI7C/I0ow84baAXTEikJvdFWzAvSoC2N+vX
         YNPA==
X-Forwarded-Encrypted: i=1; AJvYcCU1o9JjYCuXXFcpKmEW/9y36gJWyQb1g7fZ777wxXA1ZKd5KDkAj31pWEITeNlzSFv6m3K/3m6SY7G1@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3m0KLt3/kzGysiJI1pS8nrfhWBKMv+ORGICSUcZ30mYOfunU5
	RAAuX1XDQ8k5O8trmiKENCwPo6pfSrL1vVjgnzpejzTnvo5fZcikHTPx4v6n/SjorNTADIydowz
	2
X-Gm-Gg: ASbGncvK4GWHxoSRs24p4e8B2P8MPRCBtTMXpkzBe/iGHyR4LESTmzNwg5ZW/pIL7cr
	q8/PkXrcJOJbqoF04l8Xx1njTqf0IKXyScUtrXmCmORPVKIrnLP0hSlLXTyTEabEPR+ayITyJbZ
	MwsnOEiRTWkfyBgi4Vfl4rihePaThrJQWHnNKLmIaNUj+Cwzfq1559b1aE3aXBOHihF3y+eMDvg
	+f4XeVaJgZ9LRpsTCq8m2WXC3gwWOxnzwMQLT+UnMuwWDFaN12NkEOYH1ktdtfp/YE4ebOGbHTD
	u12IiAreIRwwiASP4Ojb2m6k9F2TAWgHEY4PzFJWXD119524yaQke9yCug==
X-Google-Smtp-Source: AGHT+IEFGA4sZLXqBCtCmvy8ZrF9tSMkgWI/FRxF2a0s+L5qTZ33ZYOB11B37AkE0XnWLTlVxskmiQ==
X-Received: by 2002:a05:600c:4e52:b0:439:8294:2115 with SMTP id 5b1f17b1804b1-43ea47eff0dmr101735e9.8.1743408830627;
        Mon, 31 Mar 2025 01:13:50 -0700 (PDT)
Received: from krzk-bin.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d8f404ac3sm119812305e9.0.2025.03.31.01.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 01:13:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: writing-schema: Explain sub-nodes with additionalProperties:true
Date: Mon, 31 Mar 2025 10:13:45 +0200
Message-ID: <20250331081345.37103-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document recently introduced pattern of using additionalProperties: true
for sub-nodes with their own schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/example-schema.yaml       | 15 ++++++++++++++-
 .../devicetree/bindings/writing-schema.rst        | 11 ++++++++---
 2 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/example-schema.yaml b/Documentation/devicetree/bindings/example-schema.yaml
index 484f8babcda4..c731d5045e80 100644
--- a/Documentation/devicetree/bindings/example-schema.yaml
+++ b/Documentation/devicetree/bindings/example-schema.yaml
@@ -178,7 +178,9 @@ properties:
     description: Child nodes are just another property from a json-schema
       perspective.
     type: object  # DT nodes are json objects
-    # Child nodes also need additionalProperties or unevaluatedProperties
+    # Child nodes also need additionalProperties or unevaluatedProperties, where
+    # 'false' should be used in most cases (see 'child-node-with-own-schema'
+    # below).
     additionalProperties: false
     properties:
       vendor,a-child-node-property:
@@ -189,6 +191,17 @@ properties:
     required:
       - vendor,a-child-node-property
 
+  child-node-with-own-schema:
+    description: |
+      Child node with their own compatible and device schema which ends in
+      'additionalProperties: false' or 'unevaluatedProperties: false' can
+      mention only the compatible and use here 'additionalProperties: true'.
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        const: vendor,sub-device
+
 # Describe the relationship between different properties
 dependencies:
   # 'vendor,bool-property' is only allowed when 'vendor,string-array-property'
diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
index eb8ced400c7e..fc73072f12fc 100644
--- a/Documentation/devicetree/bindings/writing-schema.rst
+++ b/Documentation/devicetree/bindings/writing-schema.rst
@@ -117,9 +117,14 @@ additionalProperties / unevaluatedProperties
       should be allowed.
 
   * additionalProperties: true
-      Rare case, used for schemas implementing common set of properties. Such
-      schemas are supposed to be referenced by other schemas, which then use
-      'unevaluatedProperties: false'.  Typically bus or common-part schemas.
+      - Top-level part:
+        Rare case, used for schemas implementing common set of properties. Such
+        schemas are supposed to be referenced by other schemas, which then use
+        'unevaluatedProperties: false'.  Typically bus or common-part schemas.
+      - Nested node:
+        When listing only the expected compatible of the nested node and there
+        is an another schema matching that compatible which ends with one of
+        two above cases ('false').
 
 examples
   Optional. A list of one or more DTS hunks implementing this binding only.
-- 
2.43.0


