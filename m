Return-Path: <devicetree+bounces-195150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E4230B00AC3
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 19:53:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCB007614D6
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 17:52:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D31042F364E;
	Thu, 10 Jul 2025 17:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="KTkNK7B5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D012F1FD2
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 17:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752169876; cv=none; b=LfFJiQNG7VR5FrUhQrl00Ok+WWa4D98dgeprT+ADsQyqn6nv6Dzq7OCqZz7hpa0VLmKIS48hNYInc5x9ABdfDIY/0HIzhRDmL47/qNjvFKJHEKXEBNePL78VQDCu82slNBEioKXh3hzknE6aVTFgXftfnPxedmjtaxML10WRDOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752169876; c=relaxed/simple;
	bh=TcSAvv80iECU+EemBY/QAFaaDjBspFOa95X1JROvb5w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QwcSnKMlAu4v7YeaLqfqQY/6xTuW/r3efkqltn+sATQccuXgzo3taTMe7+BAm25CHPE1ZMPXUIdDhczrsoyRoA/+N16gmE6vaBAYPSBT1VQHJ2I7Qp0DTDLilBgU0AWewRTjQvu8+FXP/rg8bscazhLAambRL48dWAzn7gX6+IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=KTkNK7B5; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-4a9b09ba106so14217041cf.2
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 10:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1752169873; x=1752774673; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nNF7PY8BTTw3n4PxFimy6RpSwNTBoHWIsy6At478d2Q=;
        b=KTkNK7B50nK8RX8G78Qe9kAqdorqnBfyqXYmHNE0lQ9BXLXvzdHqvcgd5Ceq1zO6cu
         EFf4IVq2mhnZLU4l8d56Y5C44OKpxWwyZs9Z6Ozwa51KMR/iHKHFgkDz7GwMDdm/MF+e
         VaS2kUAdmPxSE3oVQlmUhblUmSQ5iUhDciquu0KiLSdqLlP0b340XVqBw9bHBuCmedYV
         8QlJoI7DjczQbMi5PSSrOmPjtDT0OVaPnPLGuduSlLZ5aXIqNTeI0xV/uJviDr80lWCj
         GtceVmwVTInrUUZCOaqQh8Un1wi/EwBlXh5WMXhW+hO+jglr7GgbScv4CNV8e28FeQLp
         yYCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752169873; x=1752774673;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nNF7PY8BTTw3n4PxFimy6RpSwNTBoHWIsy6At478d2Q=;
        b=RfMfQiZpgEPdoDaesz8X3Gu7/kvuv96OWftTTQKMLgUghwbCerDbt5UPz4zn3lcw5k
         zlZZPtF3ExyWZvOBeUtUYjHAXVZaX5ipQ+Y1PQerHky4u0b0QjT1RsAslc0LmvzKRiDi
         UWibMlf2efNqwrDfNAtRdeUNWiVgClAe10r3+Jg6RYFmU2jzClV69II9/SnpL2MhDzjq
         oDNDPeNpijNAqwiSpP+JBGnm+zMR5ECw3ScLjkoKvJ5tlQC7MN0vtTnh3BdSo5mPWc0v
         JQ8ZPkLYKJ2fNM1vXQrgiSCzRCg8Zg2hdQq2ByFcBaPOOOnLy/gkyDG1cqhfbcktMO2o
         CY1Q==
X-Forwarded-Encrypted: i=1; AJvYcCW+YVZHrJH9JYniCIBQ5gJrGHStLCx/lQpJSUNFgySlqCsRKrqYcHXlMq/YTLjf00toK6jcc5MQxuTs@vger.kernel.org
X-Gm-Message-State: AOJu0YyUEzQpBdKXcEDW/j90o1myllB7naLCjyUh4SGMZ5IJeBcm537F
	6URGqcON6nvZQQH2zCp2A/oxIcPzZ5MFJeUsVKVVAdrTg3LIxLTff6+QvyKgcI4dTQg=
X-Gm-Gg: ASbGncv3xjRK2OvqdZsJvaC+2luY+nUF1TKLKpDr90eAOzd4C1x05i8XXFINpEnAI38
	3KIU4A4qOa9p2g9hOQEb0oQqZ0vcbbAOqcnDdjiCxQ+LV9NEBJnYhspKHwuippIjnv8GCKW54+O
	v6hsvAMd5RyLpR1zvzewS2OJsQKaGlxkztggFCk6FlUZn4N+fDBL5zbqJqAJmyaElZAYzKGqrO4
	HjcyGGYkiwPy0ukIJDhM4lG9UybR7UlWWeXwMeWtCnoNjaTzWSU8gtAw/ZA3TrHoKgtrZLrvVzW
	6N7OXPQOIjY8gPDSCVH2rl65AgNYkAcoSTBWLbOV7G0sMZMwg80cxkjIrmU5bivWzOKmJDtMuGk
	ULazzSxkVEuyZcxhDLeQotpM5RY3G+4VCOo8=
X-Google-Smtp-Source: AGHT+IE0cJRHVoq9k9LOPhhDX5Qx0jjf0lgcMuAEVcjuN5h/JF5bteKTincAlkOQmKWP6gWojXJAQw==
X-Received: by 2002:a05:622a:4acb:b0:4a8:1a88:7208 with SMTP id d75a77b69052e-4a9fb9a670amr4227831cf.48.1752169872379;
        Thu, 10 Jul 2025 10:51:12 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a9edeee300sm11165941cf.73.2025.07.10.10.51.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 10:51:12 -0700 (PDT)
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
Subject: [PATCH v8 1/8] dt-bindings: mfd: add support the SpacemiT P1 PMIC
Date: Thu, 10 Jul 2025 12:50:59 -0500
Message-ID: <20250710175107.1280221-2-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250710175107.1280221-1-elder@riscstar.com>
References: <20250710175107.1280221-1-elder@riscstar.com>
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


