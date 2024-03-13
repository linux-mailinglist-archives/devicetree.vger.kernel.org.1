Return-Path: <devicetree+bounces-50325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A07FB87B086
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 19:56:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D253A1C259B6
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 18:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A7681419AD;
	Wed, 13 Mar 2024 17:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DJBlkGRW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A313D13F458
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 17:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710352439; cv=none; b=OsGiY+tC95bBTiDDpr64kAlPMb6v+TuKx3HMreWgCcR4lcdLJnHH0HtEGNgyccLBGOHybbhXLSFeZzWRVzatlTe/EyOiCGTXLXKRVvyNKP+cMbPtZEjSQ1Ogm2AYN4s8lK/0B8fcGx4OEOI8DbVkVQ72FHuysVxF1kvtU/J4c9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710352439; c=relaxed/simple;
	bh=pMkcGiMy0q3S9WZlbdBLqLkUokhQo4RSjeHCoPtjS+o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IkfXobX+2yvj4Kr+/vI4IDZXh2fmnbSIFmlGN/45ZyAkFYHexJUsiGBLAJxQoI0t7vUx1yJ0E/JEN20v5LwlsbU3tPiJheCfNU5D9RBaWDZ0eOc8farElrSMQs3YFB/Sd+6W/ocuRAvsC256gBg2W0+nLLE+IGWtwkQuHh2nX9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DJBlkGRW; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-413eb712c3fso751625e9.2
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 10:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710352435; x=1710957235; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2SmKMGXF81mfKkNpF0CZGS/Z1f9uS1wllHcEDjQ1fhE=;
        b=DJBlkGRWSiD7QFyrsaGqXsMR3t3z0qRmckakG6buVJCy/giXoMbyPvwEQqmxsrIAlF
         xWDcmE6fKevJwqlpzSyb0yCDkuNxJ+SiYZuup9akIjb3CMjBnH+Xebr8sJMO9JxE7PeS
         3nk2crXbimGFk/NiDLXd0UA4xuwobIw9UtQrbwjbcBYGvuU7kvpDc+vzqbczddcOSuc+
         nQNtZkmP6nuVU0ILDAbXntUc/Jdk4Y+V095HQBfeTKytSqk9DuMqdHFHAbrH+0BzgK0m
         gpUinji35sgHaGZAWRco8CJRxhPmBAS367STjTYzWKULPQ1HiI7Poc1LP738Dt6MP2QO
         FVug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710352435; x=1710957235;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2SmKMGXF81mfKkNpF0CZGS/Z1f9uS1wllHcEDjQ1fhE=;
        b=WJwT9iSeygvILIUSCCGbyL9I65UqY6Ls+Sn7rFKINyCwF06EbjneqiuzT8r8x1MiAI
         Gf6xGiLNS82pBB8QzyBmgZmR1D0jiQI8ezwQzd6JY1zE0JhOL6DRi2Nxw34/s9DCIIC/
         enMAJ5D5XguR/mQifIs/wzIXqrMcaQpzFw9drgMRXjBXPkPIINIU6VPSyWR2ngM8e0DU
         OEtxl8EB7JFpirQeDGKomdmPHHqCrhDo2idpl+nyDdOqtlEiPiY865mcEEh1lhtJKVvn
         PlGf6klBvUh0G0ooZG0XZ/nmY/mhWyvKaEzjU9vp1tNuWXWFE05lljUee+8lBhEQn39g
         GiCg==
X-Forwarded-Encrypted: i=1; AJvYcCVkXzX0c9+STbMOR3gSACjQ4OEeVS/9UIBq6Qu69eXR0Wff/OgNq2langDyTsUIrpLYyjHv/AI1OmLIMtEI3TSCWcbcnyE8Hj1pTQ==
X-Gm-Message-State: AOJu0YyavpGIbvu44Hu0eDF+wwvEGPmTC0VMQ25YCbhKnD/oyVzLqyHS
	8jV5WjEEkShd7zvPIiVHF/YaZk8vIsgB07capfSGwd9srEq++Ts2Kos6H+p6sYs=
X-Google-Smtp-Source: AGHT+IGpjXdcVcW+OWgvTuMi+NTYup3ENVDM08ZLJnKTDwsM761kmPBqDIF23JsP73xz3/jHXijD5g==
X-Received: by 2002:a05:600c:470f:b0:412:e3aa:8f69 with SMTP id v15-20020a05600c470f00b00412e3aa8f69mr534360wmo.30.1710352435024;
        Wed, 13 Mar 2024 10:53:55 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id u12-20020a5d6acc000000b0033e7a499deasm9914482wrw.109.2024.03.13.10.53.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 10:53:54 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 13 Mar 2024 17:53:52 +0000
Subject: [PATCH v2 1/2] dt-bindings: clock: qcom: Fix x1e80100 camcc
 power-domain declaration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240313-linux-next-camcc-fixes-v2-1-9426da94ae37@linaro.org>
References: <20240313-linux-next-camcc-fixes-v2-0-9426da94ae37@linaro.org>
In-Reply-To: <20240313-linux-next-camcc-fixes-v2-0-9426da94ae37@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.13-dev-26615

camcc on x1e80100 requires two power domains MXC and MMCX. Define those as
part of the schema.

Fixes: 76126a5129b5 ("clk: qcom: Add camcc clock driver for x1e80100")
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/clock/qcom,sm8450-camcc.yaml          | 37 ++++++++++++++++++----
 1 file changed, 31 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
index fa0e5b6b02b81..1f62139426845 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
@@ -19,9 +19,6 @@ description: |
     include/dt-bindings/clock/qcom,sc8280xp-camcc.h
     include/dt-bindings/clock/qcom,x1e80100-camcc.h
 
-allOf:
-  - $ref: qcom,gcc.yaml#
-
 properties:
   compatible:
     enum:
@@ -38,9 +35,8 @@ properties:
       - description: Sleep clock source
 
   power-domains:
-    maxItems: 1
-    description:
-      A phandle and PM domain specifier for the MMCX power domain.
+    minItems: 1
+    maxItems: 2
 
   required-opps:
     maxItems: 1
@@ -50,6 +46,35 @@ properties:
   reg:
     maxItems: 1
 
+allOf:
+  - $ref: qcom,gcc.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8280xp-camcc
+              - qcom,sm8450-camcc
+              - qcom,sm8550-camcc
+    then:
+      properties:
+        power-domains:
+          items:
+            - description: MMCX power domain.
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,x1e80100-camcc
+    then:
+      properties:
+        power-domains:
+          items:
+            - description: MXC power domain.
+            - description: MMCX power domain.
+
 required:
   - compatible
   - clocks

-- 
2.44.0


