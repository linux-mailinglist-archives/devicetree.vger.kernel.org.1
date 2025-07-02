Return-Path: <devicetree+bounces-192326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC49FAF641F
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 23:37:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E7047A2673
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 21:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FFDC2D6413;
	Wed,  2 Jul 2025 21:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="GEoTbRTc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F078D283CAF
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 21:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751492230; cv=none; b=ee8IKDtfH5uSANgBAcciIGlwBkbz4A1mMhQ5+nWMARzixSM1ikvB6AYH/j8eTRkBmLkPpd+0YqCWLlQ+tfy0B0ot+6JQf4Oio8fBWVp3D1xWthft6DT5LZ5pvbcDStT81TQvngpU0trAawlAPvtgOd/LjRi9L3ZKd8e+sbjHUWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751492230; c=relaxed/simple;
	bh=TcSAvv80iECU+EemBY/QAFaaDjBspFOa95X1JROvb5w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kKbmwoRXHs6GD+q5e+ZE8unDedbPUNz/DE7Hy8n+hFf2oyw44y5of0kJMnpnk2qHnrElp9I+CUQV7CsWtvRt3FecINT6AU7OMsuEEuh3h3N19jcqfZKNijiG3r6ejNu35AylfC0ULWOf3bf+O3QCyMTBACz7eazqnIEah5Uk3Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=GEoTbRTc; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-70109af5f70so28157936d6.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 14:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751492227; x=1752097027; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nNF7PY8BTTw3n4PxFimy6RpSwNTBoHWIsy6At478d2Q=;
        b=GEoTbRTcrjXfPiiOeaDEd8Fi9Ym12MhrsJy98JhJpy+6oTuJ8k1becs6Rw5ISZmRkd
         8T319Icr9csoQRE6sQMEW6s8+m3ILCLMaj6D/dkxga3cJ+/Ogq/O82hquXYgb7oX0K/t
         xGxQsvYGsmGV1orlqLu9cQPGGxGivDcko8dLu0nf2OEZovMCSWQ2R+AytLyfywRRdA27
         FcNwoPnR+lWqJ0Z7bdMlgjL5GQIHYVpEfCyMpdS6mTi/mgokguFAZ+tMn0nSQNxEZ5eM
         4qJ83IqxBaTikTdz9B9878MZdgn7wac4O/rgbD0gddyDj4WjGlN2mSZFCO0a5EULBE+s
         bkkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751492227; x=1752097027;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nNF7PY8BTTw3n4PxFimy6RpSwNTBoHWIsy6At478d2Q=;
        b=Om1r4aTWcNMRlEsyx8Vz6+M2ovkqssKR3KJvV2wjzVR7h3tKQ3/AT3ufHG4NYZeY8d
         2BSh8SZP40ACQBm8DqwsUxsQwLBvAs8GKCJGRbWcAyhI+qBLzDrhzziPh8D7LYPkDMzi
         9FaizwJnkjYRJCQ23zues/Ks3CVf6CUX1zRyw9b1abLyI0AnGPToz+a/SXH4GOXDsvO9
         qGsNq4L1+r/UC7054Vu5E7VCFM7rADeoRhF+y4yp9aa+ldSM8fXXDnboJsUQAxbQK8mC
         e4At2J6SAqe2nOEEag/SK5q4bQ9q1cNvCu2PQkc4relB43ZoUIoXd5qTjzA6uuuNmyV3
         xkQw==
X-Forwarded-Encrypted: i=1; AJvYcCXihgfmYC33vH3zi1gOBfCwrmTu5KPVvIGD/3+l5WL5uxORT2XujxZ0KPVQ3NH3iWEjmUV7QC2wetnx@vger.kernel.org
X-Gm-Message-State: AOJu0YxrY3NcrfXeJWge979qhUi2ZdX11/U+DURqFy8NJa+crEBm43Ic
	45N9cxoApPe022qpJBZU8QWcBIwSQ9Miby8hXCIH4LxopmDcaCzSqhzn3+6sPOmmM9A=
X-Gm-Gg: ASbGncsXHLiuyCQ5SdltuHWGGHO5c7qy6lhj2Yd2KqKi4dXaz/UOS5EkfZsHRSINjmM
	Fu8bHKKyWDAZKeI7bolPzGmOKdGwCZUkTOmcKyw6ghU3A40mfCVYv/589XIPmPh1dFUc3zI10Ko
	h8MXKl3XoBm9YuLXcdad5w9x6wxYKMA/rOUnM7dN0pNBz4gk2Fr5NZWRQdkBQyUzTOE+u+1n536
	zdUOaQ+qz41rb7YBcxbiODNCVva2I0dOsyom2vRVLhvPSx5DifGMGmNbn06796Qn1Ba9IezTZY3
	BCerg4VqhnI6I3dTmgm4XbF332/+LCFYf3kxPHBeaECgrjgHHvqm2NADh/VyuDLr+K+lObkSK33
	stOXIx3rPL4AklYcxGq7dUHKNnq4apoQYJIw=
X-Google-Smtp-Source: AGHT+IERqJ3BfOxhUmxkupeyUkDeU0EnZdd1PTKHpA9KaSbcs4c73pcX0FmI8fCh3xwn7Djaw/yz5w==
X-Received: by 2002:a05:6214:1c0c:b0:6fa:b9e9:e799 with SMTP id 6a1803df08f44-702b1b37a43mr47892906d6.24.1751492225372;
        Wed, 02 Jul 2025 14:37:05 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd771bc01bsm105691746d6.40.2025.07.02.14.37.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 14:37:05 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 1/8] dt-bindings: mfd: add support the SpacemiT P1 PMIC
Date: Wed,  2 Jul 2025 16:36:50 -0500
Message-ID: <20250702213658.545163-2-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250702213658.545163-1-elder@riscstar.com>
References: <20250702213658.545163-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the SpacemiT P1, which is an I2C-controlled PMIC.  Initially
only the RTC and regulators will be supported.

Signed-off-by: Alex Elder <elder@riscstar.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/mfd/spacemit,p1.yaml  | 86 +++++++++++++++++++
 1 file changed, 86 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/spacemit,p1.yaml

diff --git a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
new file mode 100644
index 0000000000000..5cc34d4934b54
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/spacemit,p1.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT P1 Power Management Integrated Circuit
+
+maintainers:
+  - Troy Mitchell <troymitchell988@gmail.com>
+
+description:
+  P1 is an I2C-controlled PMIC produced by SpacemiT.  It implements six
+  constant-on-time buck converters and twelve low-dropout regulators.
+  It also contains a load switch, watchdog timer, real-time clock, eight
+  12-bit ADC channels, and six GPIOs.  Additional details are available
+  in the "Power Stone/P1" section at the following link.
+    https://developer.spacemit.com/documentation
+
+properties:
+  compatible:
+    const: spacemit,p1
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  vin-supply:
+    description: Input supply phandle.
+
+  regulators:
+    type: object
+
+    patternProperties:
+      "^(buck[1-6]|aldo[1-4]|dldo[1-7])$":
+        type: object
+        $ref: /schemas/regulator/regulator.yaml#
+        unevaluatedProperties: false
+
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pmic@41 {
+            compatible = "spacemit,p1";
+            reg = <0x41>;
+            interrupts = <64>;
+
+            regulators {
+                buck1 {
+                    regulator-name = "buck1";
+                    regulator-min-microvolt = <500000>;
+                    regulator-max-microvolt = <3450000>;
+                    regulator-ramp-delay = <5000>;
+                    regulator-always-on;
+                };
+
+                aldo1 {
+                    regulator-name = "aldo1";
+                    regulator-min-microvolt = <500000>;
+                    regulator-max-microvolt = <3400000>;
+                    regulator-boot-on;
+                };
+
+                dldo1 {
+                    regulator-name = "dldo1";
+                    regulator-min-microvolt = <500000>;
+                    regulator-max-microvolt = <3400000>;
+                    regulator-boot-on;
+                };
+            };
+        };
+    };
-- 
2.45.2


