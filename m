Return-Path: <devicetree+bounces-271364-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WB12D9YeqWmg2QAAu9opvQ
	(envelope-from <devicetree+bounces-271364-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 07:12:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D18C20B346
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 07:12:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6B90F3044BD2
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 06:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3DF52D7DD3;
	Thu,  5 Mar 2026 06:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NlTQ75Ul"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 883B529D273
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 06:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772691120; cv=none; b=ufkUZaoyJqUnMBGx0+122LXt/RW6J0+XcWz1a7ojnS5k28k6TyAaBfJjN2dbbpf4TQoohj1kyZySIXAtIw0fZmOsqQXLubBF29F9H0yk5kUqaI8+MJwo/z0nAvfm6KZcvIqBqJInc0MA7AQSotNxPTMbRhJVYNlNg4s8eHI8m8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772691120; c=relaxed/simple;
	bh=EEPuxE3zx9i5YvvEVJqMlxzcsnK6a/x/2q1dl3xwiOA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D3yaC+7syXG9Djykqw28z+uhzvn34CvKZuOOMdFHHfOkX/+CyBHINERG9adO1PJulhSVumdbOeABpT11dwoNZk0kBaFo1DCaYsiZUcGLuEFOvQnas4cUjoBZUMZRnAfTwctpu3QLkuXhzAN4vV4ng01uORdhpLgRAtsgav4JILs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NlTQ75Ul; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-65bfc858561so4401861a12.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 22:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772691116; x=1773295916; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9PU4mxk2r95PV9tPzoHDwPxRIhg7ggXYRoeufjEkbG0=;
        b=NlTQ75UlGei5WYLh93YCkSzx3JNFbYHy+K2HrYBWGuw//8V4J+rFANPgQq1K7wwDII
         5xCCR/iSROj8Fh/jFE/fIjxIUtthspXgfe5SK6JKD/od7aNpxCK8j24yBgL+xBnbtMxF
         xHeTvE74iCZpGqn033t+zI5/zb6WPWJYmxQ1quUU23lItWaFeJCAVRj86tTetybswImg
         Fh1iK1Odq485cBWgwwTR/UPTO7l4p57joATk6vD2912nN3gsrnKU+EvGCjG14r2xt/oR
         5U5Mwr1rIv2Cl3cT4hAJVvbHVXT3ufh8c5J5aTuf9VhlScw1fnTLgKCIiTOkpGD61YvH
         LOWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772691116; x=1773295916;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9PU4mxk2r95PV9tPzoHDwPxRIhg7ggXYRoeufjEkbG0=;
        b=sttIIyWFxu/vBtEb9+foYayJ8dSXVX3v4eKHlSPQcbiKRw8qs5mLcyfigo8oOmHyLJ
         /6QBxQv4tq5DIOseEhg8Du5TApqw2eAkMB2c4/PRq7MBR3YVvkj9oof3TSR9cf7XgMHJ
         YGzIqGNQ53CrydBx3GPPiq6rObD0u1JBFnSJUyc75PX1u+h2wXMplP6kDQBPDxz96g1u
         HfRl5EVgUXnOmKvYyCkqfTb12Ub+G3GlSlRlTeqvxEovY1jiHZpq8C6UPSyQlpfq9Uap
         6wuyskJl/rra9AaY2yeTv+h4yv0Se9exeOxpPLI9vUeL76/z38niohpOisFohgriPzTi
         AUjg==
X-Forwarded-Encrypted: i=1; AJvYcCVuphYOgtyG+jVOF/SEEiHCyo2qjCBaXisrJJyU5T2e2XONadc8GEpfqSXETA6gfY+qu6Bj4pEVpJzh@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/VRXKuVy3B8RzJy1p9fqkKCSUVhv95FzkSTsfWuvo/7PxRJwh
	lcyvCxFz05gbnustsViIdIWMW9ZEdBz44d9wTIgx/s+xoNYxMfxSH3Fv2V3JRY4HdE4=
X-Gm-Gg: ATEYQzxqCRECHD2aN+BXy8UbwQHk4LaopV56BenoL6Hs8sJ/aXeTXhRV5XUULrLX+2x
	fldmCZw6Nsl2NvcSAUJu/YeFGGFCMFMot2+fAOAIZzHguN6BY3YrDJSIXx8xtQ17oJa6piL6h8r
	k1Ent79dZ8VTlHxUkH++KT4wNQAs/vS/UkUEPXt73F0qxKwFUYrF3E7fAKOCqtdZgzj/DenmZLY
	nEuh1Rz4imKTzZFTizADK3wYt8dN3FWQog+CXkyX636HEKQ3AJTl8JLIpijV8h2G++/SdCFcJCu
	Sl0o3qd2TTVUia9k0pu2Oa5ZA6AhPgLjDGuUsBQXfF930qf2VtGVKgCTpDmqK+DgeST8+uuarBJ
	BV1M2SAPsDeBaYJyyftBSiyFkroLY0pj1YM72+/G8EZKq8l1fzgM801dwCmvS9czrkaMLcqL3YB
	MPV9e+8Msa2EZbN5z2XsZ+AOQPtxu59RmMwI0mE6w8LJ97y2wMr/llbnWeWCFIDGz60d4TbMEXQ
	14tG1D6n4sP16E=
X-Received: by 2002:a17:907:97c4:b0:b7d:1cbb:5deb with SMTP id a640c23a62f3a-b93f11d67e3mr345346266b.27.1772691115747;
        Wed, 04 Mar 2026 22:11:55 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935aec3243sm849355966b.53.2026.03.04.22.11.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 22:11:54 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Mar 2026 06:11:52 +0000
Subject: [PATCH v6 03/10] dt-bindings: soc: samsung: exynos-pmu: move
 gs101-pmu into separate binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260305-gs101-pd-v6-3-8cb953c1a723@linaro.org>
References: <20260305-gs101-pd-v6-0-8cb953c1a723@linaro.org>
In-Reply-To: <20260305-gs101-pd-v6-0-8cb953c1a723@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 1D18C20B346
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271364-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,1.10.107.32:email,linaro.org:dkim,linaro.org:email,linaro.org:mid]
X-Rspamd-Action: no action

The gs101-pmu binding is going to acquire various additional (pattern)
properties that don't apply to other PMUs supported by this binding.

To enable this, move google,gs101-pmu into a separate binding.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v4:
- update since 'syscon' was removed from gs101-pmu compatibles
- update since 'select:' was removed from google,gs101-pmu.yaml

v3:
- use additionalProperties, not unevaluatedProperties
- fix path in $id (Rob)
- drop comment around 'select' (Rob)
---
 .../bindings/soc/google/google,gs101-pmu.yaml      | 56 ++++++++++++++++++++++
 .../bindings/soc/samsung/exynos-pmu.yaml           | 20 --------
 MAINTAINERS                                        |  1 +
 3 files changed, 57 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
new file mode 100644
index 000000000000..a06bd8ec3c20
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/google/google,gs101-pmu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google GS101 Power Management Unit (PMU)
+
+maintainers:
+  - André Draszik <andre.draszik@linaro.org>
+
+properties:
+  compatible:
+    const: google,gs101-pmu
+
+  reg:
+    maxItems: 1
+
+  reboot-mode:
+    $ref: /schemas/power/reset/syscon-reboot-mode.yaml
+    type: object
+    description:
+      Reboot mode to alter bootloader behavior for the next boot
+
+  syscon-poweroff:
+    $ref: /schemas/power/reset/syscon-poweroff.yaml#
+    type: object
+    description:
+      Node for power off method
+
+  syscon-reboot:
+    $ref: /schemas/power/reset/syscon-reboot.yaml#
+    type: object
+    description:
+      Node for reboot method
+
+  google,pmu-intr-gen-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU interrupt generation interface.
+
+required:
+  - compatible
+  - reg
+  - google,pmu-intr-gen-syscon
+
+additionalProperties: false
+
+examples:
+  - |
+    system-controller@17460000 {
+        compatible = "google,gs101-pmu";
+        reg = <0x17460000 0x10000>;
+
+        google,pmu-intr-gen-syscon = <&pmu_intr_gen>;
+    };
diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index 76ce7e98c10f..09368dbb6de6 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -12,8 +12,6 @@ maintainers:
 properties:
   compatible:
     oneOf:
-      - enum:
-          - google,gs101-pmu
       - items:
           - enum:
               - samsung,exynos3250-pmu
@@ -110,11 +108,6 @@ properties:
     description:
       Node for reboot method
 
-  google,pmu-intr-gen-syscon:
-    $ref: /schemas/types.yaml#/definitions/phandle
-    description:
-      Phandle to PMU interrupt generation interface.
-
 required:
   - compatible
   - reg
@@ -176,19 +169,6 @@ allOf:
       properties:
         dp-phy: false
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - google,gs101-pmu
-    then:
-      required:
-        - google,pmu-intr-gen-syscon
-    else:
-      properties:
-        google,pmu-intr-gen-syscon: false
-
 examples:
   - |
     #include <dt-bindings/clock/exynos5250.h>
diff --git a/MAINTAINERS b/MAINTAINERS
index 611fa8fb9f8f..6a00d97ccd09 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10884,6 +10884,7 @@ C:	irc://irc.oftc.net/pixel6-kernel-dev
 F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
 F:	Documentation/devicetree/bindings/phy/google,lga-usb-phy.yaml
 F:	Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml
+F:	Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
 F:	Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
 F:	Documentation/devicetree/bindings/usb/google,lga-dwc3.yaml
 F:	arch/arm64/boot/dts/exynos/google/

-- 
2.53.0.473.g4a7958ca14-goog


