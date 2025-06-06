Return-Path: <devicetree+bounces-183381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 12563AD0474
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 17:03:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7110C189DAE5
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 15:03:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A195289836;
	Fri,  6 Jun 2025 15:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MPgM0T7l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FE128688F
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 15:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749222198; cv=none; b=GFBetIZPWjd0zaknpn1D3eAaYLUWDIG+b9YhMC/DJXKGiHyr26/YaeZzO0mxU/spjdalbNLd6QVrh+76XxwkqTHcPPCAxYNWXSYWGt7NolIC0RIDDTuBB2bdZ7A7AciqgInXAZJMhuEtFSUvFtvozle+rJoUmJn6n1s8mtfUfd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749222198; c=relaxed/simple;
	bh=nqYvSxLbxspWt++Xrxgq0PEDBK7Jn5rjeP8qdwlSXUs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ew/RwEI8IrrRB+8dfkuAFbmRExakfzSqrBeih/LUNoN0WVYSdpqACLGxjfFcG6879Fu3G+LtpuhkB2R0C4k5NYlQfrpQSahQBKxN11FgW2tiaYwBEQeLPcC6Am1l1tFaSuA3s6PXVjpDcD+syWSESO2AB6b0juWFDHEoUTAvNb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MPgM0T7l; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-606b58241c9so3499374a12.3
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 08:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749222193; x=1749826993; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=clSuqSGJymcXhnXlvpUM+fwFTnc01D7rUNDs4ZhqNgo=;
        b=MPgM0T7lEFaf4v7vdWIsTWVlZ59q5LzLNExcQ8lbkYF4czEMx9lhhcYUqXXtk6/Zmd
         AkT6XkDnOuRri/OwdZm7rBqwAYljqr1jIUuNP24AZEPPgj2T7aqKelif/XIX9iybCUfr
         1hwYyGCqIumHs5gACbodVfGAsuP++XUeydyODF5GuXNzfzwsneU46oP0ohI8oOxwiNwK
         wUu54vDQMlLqsM5wNuqLtVeLhb6HsCh2x1lTrw0/0k5HE/FAmuzD4NCFrOKTcAMPnb9E
         6nKP/nIi8CIS+KoA5gmOckIGnvGUFVUW04linea1V7YmzHAnqGgmlIGC8MvbVJAllqIC
         KHtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749222193; x=1749826993;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=clSuqSGJymcXhnXlvpUM+fwFTnc01D7rUNDs4ZhqNgo=;
        b=UB7jz29ZzYNpT4RC3O31vUhJvvXz8+nzGDoY3DpaO50x2QKEI4ViGKrOLJA5JuGkW7
         BihdZs4dSjV7YcLKmnoSF7idHnBZPLa86QXgojC14biWjZQDStlt3NVahJsz7vxVpl2Y
         642HT90sgp3XviD5Jh/rJE2TTvpo+VVMFwXc1e1B7T+Q601ojQQzArUuW7KGBcpY+9hg
         oV+Kzfpz9ahX1VWFKyZ8XsfIUb1BDdowJ6KZHLQrbJWJT8ds8tDEeQSOpEdcTPdkW/Qc
         6oOpCLlrIMkEn982+T/Y28tpeiH5LawgZLuHlUey5KmdaRD790iPQ4ATdGQvdT0XoN1U
         6kng==
X-Forwarded-Encrypted: i=1; AJvYcCWC2G98vCYKK5m1d8O9uVdXr1fpfBfyKuPcOFXE+FShdIdp70+vxLAFXrywMK9k6Uu/vct1x+3I5Qv3@vger.kernel.org
X-Gm-Message-State: AOJu0Yyox7GKY8juwuK7TT3o2ucsSCAOQDg9GcahTwc6PZhpJDHdHyN2
	avzi59czmiOXc34+rzvuXjkGHRv7VKaNaoKLKQf7jky44CwynfUIYYZrPv7iyz9JIr4=
X-Gm-Gg: ASbGnculJyFvh4Qv2tg5t/8/axmZHO1hkVTbLOKyGyu2mYmJU8IUgLBxEaK1ey+0kq4
	ukl6XwzFSmbJCS1X7S5EDSvfNp5Y1G+EvDhO9Gty22QzjS/8nZvju+W5tn+3h7CGByRinWwjItL
	D1MXaj3dM5ONr5cFmu3HivpdRyEw+ajQWyqeGA/LTIjo8TA8BHlmdz/limW7tm+rYvotJ1K4Su/
	3QobQvXIz3p6P0zenibSIyRi6HNS9G37fwWDv8GyfCq1WD2Fb0rQ7Rf27zNd7Aj8db128fLF0MQ
	tYoDnLHIZZAt6nHWDO9zzPR+9FzDk4MswrVJeezus2zC7wb9vztQp/ubibRJuxMSJx3XyUKDlMK
	Wf7Vzr24DBE0Mm2wDP8fjwABETIBw4/GWxI8=
X-Google-Smtp-Source: AGHT+IHUsw1dG4JGmXr3/k6P0lK8nbHfmv2qAgr1gcXf+rrG8tGGj/IJBY+Ndvvt8b5hjZMLJEouGQ==
X-Received: by 2002:a17:907:3da3:b0:ad8:a512:a9fc with SMTP id a640c23a62f3a-ade1a9fd897mr306201166b.42.1749222193199;
        Fri, 06 Jun 2025 08:03:13 -0700 (PDT)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc38cf2sm127735066b.121.2025.06.06.08.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 08:03:12 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Jun 2025 16:02:59 +0100
Subject: [PATCH v2 03/17] regulator: dt-bindings: add s2mpg11-pmic
 regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250606-s2mpg1x-regulators-v2-3-b03feffd2621@linaro.org>
References: <20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org>
In-Reply-To: <20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The S2MPG11 PMIC is a Power Management IC for mobile applications with
buck converters, various LDOs, power meters, and additional GPIO
interfaces. It typically complements an S2MPG10 PMIC in a main/sub
configuration as the sub-PMIC.

S2MPG11 has 12 buck, 1 buck-boost, and 15 LDO rails. Several of these
can either be controlled via software or via external signals, e.g.
input pins connected to a main processor's GPIO pins.

Add documentation related to the regulator (buck & ldo) parts like
devicetree definitions, regulator naming patterns, and additional
properties.

Since S2MPG11 is typically used as the sub-PMIC together with an
S2MPG10 as the main-PMIC, the datasheet and the binding both suffix the
rails with an 's'.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
Note: checkpatch suggests to update MAINTAINERS, but the new file is
covered already due to using a wildcard.

v2:
- fix commit message typos: s2mp1 -> s2mpg1
- mention GPIOs in commit message
---
 .../regulator/samsung,s2mpg11-regulator.yaml       | 150 +++++++++++++++++++++
 .../regulator/samsung,s2mpg10-regulator.h          |  18 +++
 2 files changed, 168 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/samsung,s2mpg11-regulator.yaml b/Documentation/devicetree/bindings/regulator/samsung,s2mpg11-regulator.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..f2d596642501c197e2911ee3b9caac189cf541a4
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/samsung,s2mpg11-regulator.yaml
@@ -0,0 +1,150 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/samsung,s2mpg11-regulator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S2MPG11 Power Management IC regulators
+
+maintainers:
+  - André Draszik <andre.draszik@linaro.org>
+
+description: |
+  This is part of the device tree bindings for the S2MG11 Power Management IC
+  (PMIC).
+
+  The S2MPG11 PMIC provides 12 buck, 1 buck-boost, and 15 LDO regulators.
+
+  See also Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml for
+  additional information and example.
+
+definitions:
+  s2mpg11-ext-control:
+    properties:
+      samsung,ext-control:
+        description: |
+          These rails can be controlled via one of several possible external
+          (hardware) signals. If so, this property configures the signal the PMIC
+          should monitor. The following values generally corresponding to the
+          respective on-chip pin are valid:
+            - 0 # S2MPG11_PCTRLSEL_ON - always on
+            - 1 # S2MPG11_PCTRLSEL_PWREN - PWREN pin
+            - 2 # S2MPG11_PCTRLSEL_PWREN_TRG - PWREN_TRG bit in MIMICKING_CTRL
+            - 3 # S2MPG11_PCTRLSEL_PWREN_MIF - PWREN_MIF pin
+            - 4 # S2MPG11_PCTRLSEL_PWREN_MIF_TRG - PWREN_MIF_TRG bit in MIMICKING_CTRL
+            - 5 # S2MPG11_PCTRLSEL_AP_ACTIVE_N - ~AP_ACTIVE_N pin
+            - 6 # S2MPG11_PCTRLSEL_AP_ACTIVE_N_TRG - ~AP_ACTIVE_N_TRG bit in MIMICKING_CTRL
+            - 7 # S2MPG11_PCTRLSEL_G3D_EN - G3D_EN pin
+            - 8 # S2MPG11_PCTRLSEL_G3D_EN2 - G3D_EN & ~AP_ACTIVE_N pins
+            - 9 # S2MPG11_PCTRLSEL_AOC_VDD - AOC_VDD pin
+            - 10 # S2MPG11_PCTRLSEL_AOC_RET - AOC_RET pin
+            - 11 # S2MPG11_PCTRLSEL_UFS_EN - UFS_EN pin
+            - 12 # S2MPG11_PCTRLSEL_LDO13S_EN - VLDO13S_EN pin
+
+        $ref: /schemas/types.yaml#/definitions/uint32
+        minimum: 0
+        maximum: 12
+
+      samsung,ext-control-gpios:
+        description: |
+          For rails where external control is done via a GPIO, this optional
+          property describes the GPIO line used.
+
+        maxItems: 1
+
+    dependentRequired:
+      samsung,ext-control-gpios: [ "samsung,ext-control" ]
+
+properties:
+  buckboost:
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description:
+      Properties for the buck-boost regulator.
+
+    properties:
+      regulator-ramp-delay: false
+
+patternProperties:
+  # 12 bucks
+  "^buck(([1-9]|10)s|[ad])$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description:
+      Properties for a single buck regulator.
+
+    properties:
+      regulator-ramp-delay:
+        enum: [6250, 12500, 25000]
+        default: 6250
+
+    allOf:
+      - $ref: "#/definitions/s2mpg11-ext-control"
+
+  # 11 standard LDOs
+  "^ldo([3-79]|1[01245])s$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description:
+      Properties for a single LDO regulator.
+
+    properties:
+      regulator-ramp-delay: false
+
+  # 2 LDOs with possible external control
+  "^ldo(8|13)s$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description:
+      Properties for single LDO regulator.
+
+    properties:
+      regulator-ramp-delay: false
+
+    allOf:
+      - $ref: "#/definitions/s2mpg11-ext-control"
+
+  # 2 LDOs with ramp support and possible external control
+  "^ldo[12]s$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description:
+      Properties for a single LDO regulator.
+
+    properties:
+      regulator-ramp-delay:
+        enum: [6250, 12500]
+        default: 6250
+
+    allOf:
+      - $ref: "#/definitions/s2mpg11-ext-control"
+
+additionalProperties: false
+
+allOf:
+  - if:
+      anyOf:
+        - required: [buck4s]
+        - required: [buck6s]
+        - required: [buck7s]
+        - required: [buck10s]
+        - required: [buckboost]
+    then:
+      patternProperties:
+        "^buck([467]|10|boost)s$":
+          properties:
+            samsung,ext-control: false
+
+  - if:
+      required:
+        - buckboost
+    then:
+      properties:
+        buckboost:
+          properties:
+            regulator-ramp-delay: false
diff --git a/include/dt-bindings/regulator/samsung,s2mpg10-regulator.h b/include/dt-bindings/regulator/samsung,s2mpg10-regulator.h
index 1d4e34a756efa46afeb9f018c3e8644ebc373b07..0203946b7215eca615c27482be906c3100b899ee 100644
--- a/include/dt-bindings/regulator/samsung,s2mpg10-regulator.h
+++ b/include/dt-bindings/regulator/samsung,s2mpg10-regulator.h
@@ -22,6 +22,10 @@
  *
  * ldo20m supports external control, but using a different set of control
  * signals.
+ *
+ * S2MPG11 regulators supporting these are:
+ * - buck1s .. buck3s buck5s buck8s buck9s bucka buckd
+ * - ldo1s ldo2s ldo8s ldo13s
  */
 #define S2MPG10_PCTRLSEL_ON               0x0 /* always on */
 #define S2MPG10_PCTRLSEL_PWREN            0x1 /* PWREN pin */
@@ -45,4 +49,18 @@
 #define S2MPG10_PCTRLSEL_LDO20M_SFR       0x3 /* LDO20M_SFR bit in LDO_CTRL1 register */
 #define S2MPG10_PCTRLSEL_LDO20M_OFF       0x4 /* disable */
 
+#define S2MPG11_PCTRLSEL_ON               0x0 /* always on */
+#define S2MPG11_PCTRLSEL_PWREN            0x1 /* PWREN pin */
+#define S2MPG11_PCTRLSEL_PWREN_TRG        0x2 /* PWREN_TRG bit in MIMICKING_CTRL */
+#define S2MPG11_PCTRLSEL_PWREN_MIF        0x3 /* PWREN_MIF pin */
+#define S2MPG11_PCTRLSEL_PWREN_MIF_TRG    0x4 /* PWREN_MIF_TRG bit in MIMICKING_CTRL */
+#define S2MPG11_PCTRLSEL_AP_ACTIVE_N      0x5 /* ~AP_ACTIVE_N pin */
+#define S2MPG11_PCTRLSEL_AP_ACTIVE_N_TRG  0x6 /* ~AP_ACTIVE_N_TRG bit in MIMICKING_CTRL */
+#define S2MPG11_PCTRLSEL_G3D_EN           0x7 /* G3D_EN pin */
+#define S2MPG11_PCTRLSEL_G3D_EN2          0x8 /* G3D_EN & ~AP_ACTIVE_N pins */
+#define S2MPG11_PCTRLSEL_AOC_VDD          0x9 /* AOC_VDD pin */
+#define S2MPG11_PCTRLSEL_AOC_RET          0xa /* AOC_RET pin */
+#define S2MPG11_PCTRLSEL_UFS_EN           0xb /* UFS_EN pin */
+#define S2MPG11_PCTRLSEL_LDO13S_EN        0xc /* VLDO13S_EN pin */
+
 #endif /* _DT_BINDINGS_REGULATOR_SAMSUNG_S2MPG10_H */

-- 
2.50.0.rc0.604.gd4ff7b7c86-goog


