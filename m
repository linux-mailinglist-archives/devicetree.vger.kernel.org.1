Return-Path: <devicetree+bounces-130890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8E19F1299
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 17:47:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E2582838BB
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 16:47:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70F531F12EB;
	Fri, 13 Dec 2024 16:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HDBkvfta"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B847F1F03EC
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 16:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734108322; cv=none; b=u3wnoJVvKoYVzQ/MklB/CYDGQXuXfUILJKyHweqOh32qShCMFORDdcnYlVC0agC/wYJvWgeMsvYjJsyCBcCBtyXS0nN1dP3dz/dLiSV2wSQ7pM4c4RvqhIj4N6gi9QIgAusNByR+Wa83SV4Pg1+LrUvjo2SvdmzZXTjy+KPskJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734108322; c=relaxed/simple;
	bh=o8gcbchdk+NEFXIHiXqU7JXHFaPHjD7Nwegm7SL02NE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oozsoyodrQnQR++6Fe5SKhJxGfNT8JosmAGMP+Ew4MKpUMTWh45cE5rzmwZdcj+cA9IpNJNTp2VBMonKR5DUHJTs3B4ydW58TiBBDwCb9dPFoV2dPSDA3OD01JN5JArYk4KBkdq0bHJhrjIge8PvmSsn8CLtptcA7iOP/iszzM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HDBkvfta; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4361f65ca01so18787155e9.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 08:45:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734108318; x=1734713118; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZiXtRse753j+DxWe1l5vCc1FuT3NFlbx5vgI3bsEGjg=;
        b=HDBkvftawV7r1++1inBkHQngNmw096FrIg/n6J8ozpriBmghxSFmUp0N0/ZmBh54R3
         9A8eaBoi5NVZvlhN2patBM/+8+GLhVwrtJvED8FPbYSsNSNqlaW76JeHj+hkR8ejSwqQ
         w/NBRhzzA4GVhZxWaB72GtNsAsQyNeZLf+INpmiRLDNrdtDm5BbG7DODK2iSXcmySBDW
         yCnbiUmONTjSsymPz7pQCPXLtJXpy0ziCVVNe4tsyqragtKrTR2vlDZe1ADR82fgZenD
         p8UH9/9dg0F0Gs8OQ9EMMwcf75+KzfcTI1t7d/tRaFZmxPl3cWksc15hUPcVTtFitN+w
         eoIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734108318; x=1734713118;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZiXtRse753j+DxWe1l5vCc1FuT3NFlbx5vgI3bsEGjg=;
        b=aMLGVt1Uy/qOlJLgAFmsTV+PYg3hyhKzXhcC0JMqq0X6eq+JgBNcy1mOF8P0Izh8Hf
         qhzZWXdlXA296vMHoisMevLClEtQRcWH4ScnTaN95jg2GwfApH0H99ogVJ7FUXAlW5kR
         vVqDjd3E1LmsH7i3EghE8FbxWAKU2Uyqg5upOBejOWNXJSlHATHD7WXIL401K71c7v5Y
         cgyp6V5SLnlIizyHV487zAHBkj63zzary6qXEgyWmvufSsa+4711PbKy4dhMWH2VXcdE
         rBIrkoYFzxuqt0e5tI0QMAG/XYhBaNr4W6OIGv8v6AjCRLC/IRzP5+MdxeZP/Gf9NxCm
         VouQ==
X-Gm-Message-State: AOJu0Yy0sB97NACCJLDI48Raiozr8BOxiLA9eW0sKlbxbPXmxTIad0hP
	s1ZmeurQPFXJ94L4JepSFMmCUaeuic88dSlTE+gEO7Hz+BZu1hot1gkW9Bo/ibU=
X-Gm-Gg: ASbGncsLkCBB1KUb5G9cUHvGF2+rSmhXldrMV9UMxO1cnRMus91BQCTmWzxMHvVh9i7
	UR4WXLzSZT2vKJpVsdYWHDAjYQYC9frrqfhkEGTyyI1fMDcrOxnHHW5Zse3YkWH9iK1RQsLEUq7
	br4s92KrpWWFsa7VwJmLbj3oO26dYQfMSIgS1wGqquzOvXrJFNkKl5RqHuG47k6b6vL+dO3E3uq
	KHjyi5M07txLaTYUvwtzFasSLmz+H3n83XSOTO2sSykTWc1jCxj2Own694j6BH771M5YD8VenvY
	rnWh6PYJSg==
X-Google-Smtp-Source: AGHT+IETyJSvR8KA8pphR1pBfr5KTpzF4NmNkeh7zYSJzCimMSajiU46jqPt2jw1d/p/w6ZGTou/bw==
X-Received: by 2002:a05:600c:1d86:b0:435:330d:de86 with SMTP id 5b1f17b1804b1-4362a98a563mr32579905e9.0.1734108317815;
        Fri, 13 Dec 2024 08:45:17 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([145.224.66.83])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43625550523sm53900665e9.7.2024.12.13.08.45.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 08:45:17 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 13 Dec 2024 16:44:38 +0000
Subject: [PATCH 1/4] dt-bindings: soc: samsung: exynos-pmu: gs101: add
 pmu-intr-gen reg region
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v1-1-c72978f63713@linaro.org>
References: <20241213-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v1-0-c72978f63713@linaro.org>
In-Reply-To: <20241213-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v1-0-c72978f63713@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 tudor.ambarus@linaro.org, andre.draszik@linaro.org, willmcvicker@google.com, 
 kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1571;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=o8gcbchdk+NEFXIHiXqU7JXHFaPHjD7Nwegm7SL02NE=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBnXGSZluJfObTMSPxr05UelRIQWthOmoBtn2uyW
 PFgIFrAApqJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCZ1xkmQAKCRDO6LjWAjRy
 una2D/9ZUhnENnkW7zC4mxp8Vfkdy2PN4PE1leFf6JLDKZSIi/C5o5bed2t5p3af9nupwWd2zbX
 peM58sEtA9ZUAqP/1YmiJadFo6sfuhtOypo2wYYzUjE8HGMfxKIuTg5nyd9D18H+K0e/NOmC7z3
 4gXcz52PlvDSsyAzxNtNdLgWLxSYiRRz9bltIjIePks1DMvTs96xR90k60cSLQWMRZxWxiczhFz
 pau6fIRsTGS+6c7e96EyW5mzt3F9+HP0s5jGpGt8HvnfuAmVgNaWSS7sXM5pRGxl92yL4dJK3VN
 NFnDPSGlozXblKBJVE6TxYlVUFoZnuOvMSEmL+k8up/Q+cE6JFHEwGlYoWghHLT0FNNEgT0SQzo
 u7j2psGxS3tUrrReg16UlSZNmSwWUgeeGjjvEZetP1bYE4cAGyC9ahPfnDJy83i90fYQ4kpE0F5
 g3xcS+JgbFWGZSKW7YfoTfztDRs4V43smbO+NsuqMX2p1JuENDC8J4vnZBuk2aKGcdLR66tjqJE
 vNrzh2qAynTwCuDTYpR0ilARhUboWOrzH/QFABBXe/EAsLHSWFEX04W9sj7OU9n1clJJhjo2AN0
 R1m5zqd47YsjZziMZYDcdvozt7t0nEMDeuUTUuLU91/3XAaZzVXhx3yCv1JuWwfrH/jVy7D9zZk
 f8dW7IgVRHpeT4Q==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

gs101 also requires access to the pmu interrupt generation register region.
Update the exynos-pmu bindings documentation to reflect this.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../bindings/soc/samsung/exynos-pmu.yaml           | 29 +++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index 6cdfe7e059a3..5ac4864e4cde 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -73,7 +73,11 @@ properties:
           - const: syscon
 
   reg:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
+
+  reg-names:
+    maxItems: 2
 
   '#clock-cells':
     const: 1
@@ -186,6 +190,29 @@ allOf:
       properties:
         dp-phy: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - google,gs101-pmu
+    then:
+      properties:
+        reg:
+          items:
+            - description: PMU register region
+            - description: PMU Interrupt Generation register region
+        reg-names:
+          items:
+            - const: pmu
+            - const: pmu-intr-gen
+    else:
+      properties:
+        reg:
+          maxItems: 1
+        reg-name:
+          maxItems: 1
+
 examples:
   - |
     #include <dt-bindings/clock/exynos5250.h>

-- 
2.47.1.613.gc27f4b7a9f-goog


