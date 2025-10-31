Return-Path: <devicetree+bounces-233546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED08C237B5
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 07:59:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 500EB3BFE6D
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 06:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DF4630CDA7;
	Fri, 31 Oct 2025 06:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kZk8vO2L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB71630BBA6
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 06:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761893951; cv=none; b=kJUX042YNHkfwELpb75omXNRpVy3EGF0Dad9sTQuqHRKAhm+wnTg9awlKtTDDPdAojcrLW/Zo2VbYsVLZulWMUmXeNZxBFvzQNRxJwDii/DarGVO0Z3GRIDZs5nSsfo/P4G5vQtt5cKK6gWRXjusm2grU5FIwFl9yMgn8PCC0TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761893951; c=relaxed/simple;
	bh=bU3cz7gefuxevtxeT/aKl0hymDKSfR0/CL8hEJ3KI30=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=WUfC1PJ7V9K11BiCy5M2ovt6VQSUReoCf1TDQtPX8DWfWos3GBrUq6xwDRRAmoJynhDaH1BSUzMA7t9EZRGEQ0zqvlGv4+rpTJK5jF5l3jvZAweXUBcK/cgA1VQr7djPgf3YfXEiy1IgBseK+VsoHvWlfa+gi109P8PEFoM6NiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kZk8vO2L; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-26808b24a00so3510265ad.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 23:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761893949; x=1762498749; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PhEPNy5CfOfu6wXPfE9ph7f15qCimLG0nvQNttivtF0=;
        b=kZk8vO2LtQ2wKUsiZKtCD8XPTA2kv/d2oKavUmwRqtsmOpOs4mUGLlzimQU8bfv20H
         4Lm9N+qPY7O1EMhWM1c0ceQIoX2PDneIQ5Ex9UNNLhqggSPopuJogHOZ2q9gzvwmYLIG
         vhyc/S4er6YDFjrEUqkiGolJzr+DRJmaB/dph/ulhr/pP0iT/n5xNMXHzVmSzQArqSJw
         2YeREIwV1wMkYfZiDFRlm/suj/Y7qwROBa+g90ku6piChCMOzru09Hngu9xxHVDu9z/q
         2hkMGtjziEQ02iTvIzlwYAaoft1sReYmTy/ARygga+IbSs8qLYh+gtaKcdWz9MIuTQSr
         ID4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761893949; x=1762498749;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PhEPNy5CfOfu6wXPfE9ph7f15qCimLG0nvQNttivtF0=;
        b=O/xLdl3lnr1E9HtGa0eg4QKfKNN+rsiOvSizVdcImGA9ZIPjbjMTHHODYU/idT4FNF
         bLEzhoc5178gqa0aSHRQvyAelZpY4xjPIzlDd6e5yWMwq9ZewHZ0EK4enmzLxb5WUyd7
         0owiveD2JBajOhtDzNyRvntmYd6aimOgEXwXbkY2tpg/doZxKMwpnNby+HjTP39jcTVb
         isJF2cy4b3wVkTg0LnTCpJ5eG/m7PgYR+4o8vGf6iwwP/iHredmKfKH824FXOE/wC8b7
         LiB8Pk5tNRigQl5pTA3IjU4J5Tq6PhQf675v9M1ANutR9gP3kbiBhd+bcuewX10+OMGW
         IXBA==
X-Forwarded-Encrypted: i=1; AJvYcCVv7CQrFGxFGCmi8gEtGt3dEKggao/Ny4lJnAjD1F2cAf40a3hDph0M67rFqh/+yUVMUvKdpIznuhzs@vger.kernel.org
X-Gm-Message-State: AOJu0Yxr341IvxSALf6jABLtkbf1NJsi9BGUk2I4oQhrFuCVVhDd3XFI
	jB7Jx4pHC3c6wLH0YHxvY8TQsO3ZCc5R4oPAPNRqUPxGBo3/M6p+rWHK
X-Gm-Gg: ASbGnctwdMbKz9s9TsMUCCEdeyE9syyvsPg+sIi03Z//b1EUPAd+XF2pNczWzZhABrA
	YNiyF09VhqC3hQ0wL/HcqCXyib/gxoffcbl3vsSE0L/d+uDEcl9mY10NjDXs93quA6g0jieCvL6
	ONEEZ81ws3mGWr/VzoTFb7jkZijPBFYDH+3q0ORZBiCEwqtYKG6v4jnhJzwcN8iyvuLWjAfHwew
	68HvsvzVTRuoxgr0ul4K2LppsOMYM/HoOdzfW1wAb2rTaGQAUS6/x3KZhHPq1j812P+eVaOzjd7
	W5OVO5XZJ29kKYCyYRNdskQ4heMgTOQl+T6PfdbZAj+99YoLMzrnTfNbX8GQYOW0QrH9YUJgQ9A
	ZRq0pDNqYYBOsr10461R8Vt/ZCLvwWBpeJZD4noSMRcPF1ZFE2nRZE9+FPEks+Qad+onR1Kz8Jp
	Q0rBhTZvsQmUxXKIwEih+d6KOv7D8wtHjMlnGQ3mNsbA==
X-Google-Smtp-Source: AGHT+IGJVY6WJWx0DWqULbMOTTkJ7Spnmdevrci9sNXZyjY4LGdqTxO8bnCJ1jdmRkX0FWoYjaek/A==
X-Received: by 2002:a05:6a21:2d89:b0:342:41fd:38dd with SMTP id adf61e73a8af0-348cc4dd575mr1785021637.3.1761893948989;
        Thu, 30 Oct 2025 23:59:08 -0700 (PDT)
Received: from [127.0.1.1] ([2406:7400:10c:5702:8dcc:c993:b9bb:4994])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93f1d8f356sm918215a12.6.2025.10.30.23.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 23:59:08 -0700 (PDT)
From: Ranganath V N <vnranganath.20@gmail.com>
Date: Fri, 31 Oct 2025 12:29:02 +0530
Subject: [PATCH v5] Asoc: dt_bindings: ti,pcm186x: convert to dtschema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251031-dtbs-v5-1-ee1dc0b2fa40@gmail.com>
X-B4-Tracking: v=1; b=H4sIADVeBGkC/13MQQqDMBCF4atI1k1xZtSarnqP0kUcEw1ULUakR
 bx7E3EhLt8w378Ib0ZnvLgnixjN7Lwb+jDySyK41X1jpKvDFphiDimCrKfKS9IEtlCKswJEeP2
 Mxrrvlnm+wm6dn4bxt1VniNdTYAYJMlPEoDXmVPGj6bR7X3noRAzMeETFjjAgrqm6AWksS3NGd
 ERqRxQQMUOBiMCIZ5QdEKU7yiKy1lJEAOqI1nX9A4zVLsc3AQAA
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, 
 david.hunter.linux@gmail.com, khalid@kernel.org, 
 linux-kernel-mentees@lists.linuxfoundation.org, 
 Ranganath V N <vnranganath.20@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761893945; l=4667;
 i=vnranganath.20@gmail.com; s=20250816; h=from:subject:message-id;
 bh=bU3cz7gefuxevtxeT/aKl0hymDKSfR0/CL8hEJ3KI30=;
 b=76ZWWZ/LgC/MeCIyO84v84+uZMU7mCms+8FU9rIgwnOL/fNeJGiSYred3eXi6KGHCfWZ63bX8
 AbGN5H/rhMqCZ+1ffdgAZnLmaFg49uGDLDJyZWCSZ7PnRNzQMRjC9rB
X-Developer-Key: i=vnranganath.20@gmail.com; a=ed25519;
 pk=7mxHFYWOcIJ5Ls8etzgLkcB0M8/hxmOh8pH6Mce5Z1A=

convert the Texas Instruments PCM186x Universal audio ADC bindings
to DT schema.

Signed-off-by: Ranganath V N <vnranganath.20@gmail.com>
---
Convert the Texas Instruments PCM186x audio ADC bindings to DT schema.
---
Changes in v5:
- Resolved previous patch warnings/errors
- dtschema/dtc warnings/errors:
- /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/ti,pcm1862.yaml: 
- $id: Cannot determine base path from $id, relative path/filename doesn't match actual path or filename
- 	 $id: http://devicetree.org/schemas/sound/ti,pcm186x.yaml
- 	file: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/ti,pcm1862.yaml
- Link to v4: https://lore.kernel.org/r/20251030-dtbs-v4-1-3fff32221119@gmail.com

Changes in v4:
- Corrected subject dt_bindings:sound to Asoc: dt_bindings:
- Corrected the filename to match one of the compitables in the file 
- ti,pcm186x.yaml to ti,pcm1862.yaml
- Link to v3: https://lore.kernel.org/r/20251029-dtbs-v3-1-3cc162221c22@gmail.com

Changes in v3:
- Unicode FEFF character was present in the begining of the file,
- Removed unicode character.
- Link to v2: https://lore.kernel.org/r/20251026-dtbs-v2-1-cd3b713a288e@gmail.com

Changes in v2:
- Fixes as per the reviews suggested for the v1.
- Link to v1: https://lore.kernel.org/r/20251021-dtbs-v1-1-493c1aa253bc@gmail.com
---
 .../devicetree/bindings/sound/pcm186x.txt          | 42 ---------------
 .../devicetree/bindings/sound/ti,pcm1862.yaml      | 61 ++++++++++++++++++++++
 2 files changed, 61 insertions(+), 42 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/pcm186x.txt b/Documentation/devicetree/bindings/sound/pcm186x.txt
deleted file mode 100644
index 1087f4855980..000000000000
--- a/Documentation/devicetree/bindings/sound/pcm186x.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-Texas Instruments PCM186x Universal Audio ADC
-
-These devices support both I2C and SPI (configured with pin strapping
-on the board).
-
-Required properties:
-
- - compatible : "ti,pcm1862",
-                "ti,pcm1863",
-                "ti,pcm1864",
-                "ti,pcm1865"
-
- - reg : The I2C address of the device for I2C, the chip select
-         number for SPI.
-
- - avdd-supply: Analog core power supply (3.3v)
- - dvdd-supply: Digital core power supply
- - iovdd-supply: Digital IO power supply
-        See regulator/regulator.txt for more information
-
-CODEC input pins:
- * VINL1
- * VINR1
- * VINL2
- * VINR2
- * VINL3
- * VINR3
- * VINL4
- * VINR4
-
-The pins can be used in referring sound node's audio-routing property.
-
-Example:
-
-	pcm186x: audio-codec@4a {
-		compatible = "ti,pcm1865";
-		reg = <0x4a>;
-
-		avdd-supply = <&reg_3v3_analog>;
-		dvdd-supply = <&reg_3v3>;
-		iovdd-supply = <&reg_1v8>;
-	};
diff --git a/Documentation/devicetree/bindings/sound/ti,pcm1862.yaml b/Documentation/devicetree/bindings/sound/ti,pcm1862.yaml
new file mode 100644
index 000000000000..b76330ff9de3
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/ti,pcm1862.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/ti,pcm1862.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments PCM186x Universal Audio ADC
+
+maintainers:
+  - Ranganath V N <vnranganath.20@gmail.com>
+
+description:
+  The Texas Instruments PCM186x family are multi-channel audio ADCs
+  that support both I2C and SPI control interfaces, selected by
+  pin strapping. These devices include on-chip programmable gain
+  amplifiers and support differential or single-ended analog inputs.
+
+properties:
+  compatible:
+    enum:
+      - ti,pcm1862
+      - ti,pcm1863
+      - ti,pcm1864
+      - ti,pcm1865
+
+  reg:
+    maxItems: 1
+
+  avdd-supply: true
+
+  dvdd-supply: true
+
+  iovdd-supply: true
+
+  '#sound-dai-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - avdd-supply
+  - dvdd-supply
+  - iovdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        audio-codec@4a {
+            compatible = "ti,pcm1865";
+            reg = <0x4a>;
+
+            avdd-supply = <&reg_3v3_analog>;
+            dvdd-supply = <&reg_3v3>;
+            iovdd-supply = <&reg_1v8>;
+        };
+    };

---
base-commit: 211ddde0823f1442e4ad052a2f30f050145ccada
change-id: 20251021-dtbs-3a31f699c461

Best regards,
-- 
Ranganath V N <vnranganath.20@gmail.com>


