Return-Path: <devicetree+bounces-271971-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIYCMZOtqmnjVAEAu9opvQ
	(envelope-from <devicetree+bounces-271971-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:33:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E33921ECF5
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:33:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4EEAC3082649
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:30:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D16D37C114;
	Fri,  6 Mar 2026 10:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vCc/8i0T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DBA37CD25
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772793002; cv=none; b=XJMB9mUZSwE3R3nNgHBwe3F3aL6xTq7lK2XqKt0XRbfWFs5mZcsjlJt+EciukzmWoBbLZ2RJc5ta+DZZKyJxqH7ApEd/jGFC1M6xyNYhYujTevsIQv2IvUoFNBP0kE6FRfVZtexvBytehFlcP/5sEjXY2JH6YWerJPwMcqoGCRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772793002; c=relaxed/simple;
	bh=rQimVWIJS5wU+wNLCWMKgCOW5DPxO8PvrErq53XFv5s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uqAi1wU13PMcdXU99a8IZx82vnPu7DsAJdzHZ35uyOewxMEvfrRaz41+BYD2UbVQs6EqU97YaRAsAh5Prg9ZG2y7DAh/JroMSQp7AD/bURGzyaG72YhuZ8EZy1X24kV/dq/XACMeMPWG97XSUfLH1wqnxleeCW7WltdTm7yrhV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vCc/8i0T; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b8f97c626aaso1559898566b.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:29:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772792996; x=1773397796; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=piJ92bCcZbzXtfYOaOOoHhs9Euyr6xn5G8q2SxoNOHc=;
        b=vCc/8i0T9FCtxsfB+aVfD2BwqXeKeRSjLJkVBjmFZg3+JMAyFMVhzNx4nsKqp09Gpn
         GDXq8fxd3Jj1rDAijc5h7xTGiNW0QUmROsLmtObZ8JzlMED3GQYB2LPl7Lfj0iE3B4c3
         htZSyPmGRGfWRWDLiR9/NFsCtUGemQiIN51MOzhalC+X8ys722ezvXKazDOk+sfSi6Wg
         3D4dEtWPn9ctVwRcmhSUUI79UTWQMmFR0jdTuHltHeGPOYpcoP07NBRdoDeHujT3KwaL
         AJaFsd84E/rdX0WYZ5SHAfrKtG6+6NMQZVdFHFVE3l7JCnAcoopc7iaIlTz+4Zrk4gP4
         s3xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772792996; x=1773397796;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=piJ92bCcZbzXtfYOaOOoHhs9Euyr6xn5G8q2SxoNOHc=;
        b=Up3wJgQpj5WpKZT4SapeJfEs0TKZA1Q9m97Ciu4g3egkPgQRPDQPXjlKBJ2dFz9NHg
         Qe+pLhMz/a/WINGL36DQA9Zoo4EXvUAMI7KzYRM7+5AtgpkvQ8S3aYrmqz937NWWM3Bz
         b66aiYt5bBKBO+dIkGWwDTm0zdQvLiVy7zwHaOveeYnl4EK5sTDXCJz1Wc37SOvDuxKt
         UIlWuwO41DTho6KuV5Z9vZ2DldWQ5VJOGcU6hcb24K/cNIjlF7f8wWxofZPw7YI9oFep
         xy12WuFWYWy+zIjfsprhQbDgSezrIk2Pl9iTqGH2FQUrpYZG7w8BYcfm9Ls+F3XEkRDS
         XCAw==
X-Forwarded-Encrypted: i=1; AJvYcCUYIs5mnHQXq4crEdqyxDg3z/Ef6U1rv1uL9Is66ZVWLsCLLSQxtbfbqWKgztJuQp2/w++CZUuiKjnW@vger.kernel.org
X-Gm-Message-State: AOJu0YzPl2/8ld1lJEq03h4xIhXzniL7E8zGKRNOGJdFHgNeg5atejTh
	Qox2zQDfr1QqoyZhMOJpDDPzIkSI/+UVdVioz+3C9oMFTFGZC8Rrs3dbURKntXhj/sM=
X-Gm-Gg: ATEYQzwWc4tqwy3UFCBMgu10OHoBgFOo1KXWJNKfa5kHUfyzRvV76H0bANFpIftQGQL
	3gs7C+b9XwhkDs0lATDGYb5yc106a/ONlR8KJkM1IRzUkLzyRGUnYbXOOHPHEbS3HIUlh/GPELp
	0o7WvFKt9dK6FPJ0Qq+8yiqbYJiJMXc8J2Ag/HQanRwvc4U6Scx0Pht9MNwLw6Dq2O8nB7gz4TN
	Ddl11Gbrv5pec4SEffLc1GtsNwzFtU6gqCZRZxoky3UvOj/V2O2g4ofWnSjVcqF+YNNo60saPrk
	E8wobDIZbIUKOBFVvy0lT+9caA2Q503Z5tRVzFvwJvVHlfoXIHL/lZkEtWYFQFJWyxclbq4HU0I
	9yJpfgjJeAwjzbLEl+5Iupb8RaBUCk49/MRQf1c6v0r9g1Ga5+uu8s6mbPDZmarh+1Lh5trLCZL
	gdDE4ISoAhpVUDcxgk2QNwngY919L4iLrZoX6ygir3JrlLvcywzKW0OJcGSKfEn1SfsVWcoYRe8
	surlXCJfYI/9I8xrGS5GfOnvQ==
X-Received: by 2002:a17:907:6d29:b0:b87:10fd:b590 with SMTP id a640c23a62f3a-b942e05ddbcmr87217966b.60.1772792996324;
        Fri, 06 Mar 2026 02:29:56 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef8c95csm42907266b.21.2026.03.06.02.29.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 02:29:56 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Mar 2026 10:29:54 +0000
Subject: [PATCH v7 03/10] dt-bindings: soc: samsung: exynos-pmu: move
 gs101-pmu into separate binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260306-gs101-pd-v7-3-03f7c7965ba5@linaro.org>
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org>
In-Reply-To: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org>
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
X-Rspamd-Queue-Id: 6E33921ECF5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-271971-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

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


