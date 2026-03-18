Return-Path: <devicetree+bounces-277340-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCLgId7EumkNbwIAu9opvQ
	(envelope-from <devicetree+bounces-277340-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:29:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B792BE354
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:29:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C560E3028EA2
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:29:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B8813E63B9;
	Wed, 18 Mar 2026 15:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hffl+d9i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1993E3C60
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773847689; cv=none; b=gvMHARGcxVYPyBmmY/xzog7SPiujH7DNj9hMqAs0XtHs4aoshOuHErSgoI6JiG6D/6uG614ybbgCFDYF5zslDj9KwHlWg7Yqq/ieZh2Jxg3FeMxxHr4mn1GUZkgIM8rqRfK28eEpEVQdF9JE/H4XqMR18NzUanEtkqCFJv62gGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773847689; c=relaxed/simple;
	bh=bLUWwsSBeNkjQIGbf7RQhzd8YJKonybEFdSnbDCOcgQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uVWQcTlvN1wZLuH+1zh+Tas5CryCyNf1PLBNXt7OOjT0Yf2o2ALj0RHH1ZJdvuB0FI/99vIQ4NvktUVcsxnbQ0e+Ty7s95FDP2otNSSfNrdJyGWzxBQ+7A78Ol0fjqyAqJQkVFfrVbTApmTX0bYpbiDyb8uG8lE+cXeYX8L8N1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hffl+d9i; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-664f8bef4e7so18921a12.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773847681; x=1774452481; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=76ew0Aox6hZpcoaCX95kIQMvXTcJq4g+BOpg4Kox4lM=;
        b=Hffl+d9ihou3IuBu/ce6Tbl34d3hl2LZevZGIwlWFa4RzAHdj/VPBI1EyqNgEUQQ5L
         l2GVbJb4V25XpZH/U1ulhSrnbGdxqrfZmq7jXkaUWHBhqKI0G4BVISUkB5BxA7VNIiQi
         q2MJA35E7c7dMzkjZp4CzguyT7kgoPPgJgjmyeQh0VRUm2qpc+A81Ku/TR8x7VcWwXii
         Za9NpWFGVVS3oFx1DOrhSJHD1Ig0O5BYH2TEwthCZyxjibmkle7VR/5MAxdgjEjID4uV
         FBGzT7s2b+xKGJLfWWFNec/da/4MVWDVyr7ns8RAsevNZMUYsAApUxwozbi9yhqUPS3g
         FVBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773847681; x=1774452481;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=76ew0Aox6hZpcoaCX95kIQMvXTcJq4g+BOpg4Kox4lM=;
        b=k4PIrLHZNb8C9jlEU1FzrJJ981wd0xgD3ERopXZvdcqQRop7Z75X2D6rMem4dOFh2T
         mv6JVSXxQfSqz5D8/xyA1W5Sqe56RulhmhZcBt6ZsTR9fY7HXZDj6A+deAZBL77LA7nd
         SsXHAxkVuyBNOHKws8AKSs9Sa07rGRlOqCeiGzwiZ6BZJ9UEp1/fBeJIRburmZNXy3UP
         w5J7SmU7ZheS+QKhxrtAaY7Z7bqB6oHkXaoIoGRlpoj+AL0SyK9H89hFgYSY9yz3LwOE
         R2bnuEkjq2YieJHm7ftNk5NbPlgwDEHlz+CXZLry7/itUzfGA+rGUZzgLjhvHU9Lx08C
         DiQg==
X-Forwarded-Encrypted: i=1; AJvYcCV4AqlMZ5/3YIQJvi5AqW4wzs54hAkahn1Gs0JDVAiMXRoFjk34kvQQFQu5kabAQ05c1BiOvKeNQT44@vger.kernel.org
X-Gm-Message-State: AOJu0YxrUZUxsdnrixAFjFHu4Na//GNvZ55FEG8/2G2NNagDDrXQ1nF5
	iqeZ0sQEpo1yfG7Z7bSXJ/hbjbG2KzgXdXT/8PE17cp3NnYtzodYfA52uqanK3NPmTw=
X-Gm-Gg: ATEYQzzi6waaIqlCklgzFiY3BjS9XzVWFUiTqRGS3WHbLHYL8U+da+kMZt3ZZxDeUtL
	xCxUz06YRuvVLDMyqXp9V3eKhJe7gvMmKfSGNwXZz3M0gufV/+8lpwzzdu7/R5Axos/mzSOBlGl
	gexiVFiFZDiWoXzsUCRZehF0iOamxDpSb6524lnoi3id2g7PLhYLTtzFP6f1Bl2ystTQjLnwDR9
	0c3SeRqFs+Ro2SRIrDnoKuaWCMMVFAq7BmNVlNmc+UjSjAnL8Ul7o+blXpuZAPI353D9kK6+e4Y
	1ctL22FeJneI5JhO+cJ9yqZZdwBGbPg94ksnKJJrJc5gYUHrPCtggkC85QhybTEE0eMx+2f21Af
	96YGM2x+Wjv+B5yAD9fHcywggGOzQcrIce3My7iGdUDOhuOx8s2RZtlD458Mcyaq+57XTqd6wY9
	sjKEC/HcvtMOK8Q7sS+aOxLFhfCtllAPmA61OLEyqIen/ku72iUSjuFBzf1m+j4eb51jn2yWdP7
	Tx5NNDW5Ldwi3M=
X-Received: by 2002:a17:907:98e:b0:b97:1d24:bfd1 with SMTP id a640c23a62f3a-b97f47c86fdmr235982266b.13.1773847680401;
        Wed, 18 Mar 2026 08:28:00 -0700 (PDT)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f173a3e3sm226989566b.61.2026.03.18.08.27.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:28:00 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 18 Mar 2026 15:27:48 +0000
Subject: [PATCH v8 03/10] dt-bindings: soc: samsung: exynos-pmu: move
 gs101-pmu into separate binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260318-gs101-pd-v8-3-241523460b10@linaro.org>
References: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
In-Reply-To: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277340-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_PROHIBIT(0.00)[1.10.107.32:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,linaro.org:dkim,linaro.org:email,linaro.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 24B792BE354
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The gs101-pmu binding is going to acquire various additional (pattern)
properties that don't apply to other PMUs supported by this binding.

To enable this, move google,gs101-pmu into a separate binding.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v7:
- drop invalid tested-by tag (Krzysztof)

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
index e8376343935f..60da52c420d4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10906,6 +10906,7 @@ C:	irc://irc.oftc.net/pixel6-kernel-dev
 F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
 F:	Documentation/devicetree/bindings/phy/google,lga-usb-phy.yaml
 F:	Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml
+F:	Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
 F:	Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
 F:	Documentation/devicetree/bindings/usb/google,lga-dwc3.yaml
 F:	arch/arm64/boot/dts/exynos/google/

-- 
2.53.0.851.ga537e3e6e9-goog


