Return-Path: <devicetree+bounces-229415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C1308BF73F9
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 17:06:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2D5AC502611
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 555AE342C89;
	Tue, 21 Oct 2025 15:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cPeLLiQ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A1C3342158
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 15:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761059032; cv=none; b=ONvYGP46DpbJ7EJVRdOVDUiSt2j5V7/ekqRcBwcBfEcwTFyd4/X4erv9xaT+X/GYpRWfaXoGfwuptZsgNL4qIc6AKWgYM9YX+awt149ALfJM1tIj9m8aQAJES3NTx8hJGNhA7RlzijAvZKHkF5tqxnCeXRmn8NKc6B7Y3aOeJVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761059032; c=relaxed/simple;
	bh=MTl8e6FvdDgptg0eKJyfIELgy4CuOKugQjNWa/1WMIU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=FAeY37sAl0vRee/8ZHqC/+14ELtH8hVJN94xX/ixqxDneak1a9SJGbB3mstjnQ1uUhhKf+qtiq5G3UPx/yuxUfNRYI5V8CxBNdDY37J5phgPwnmPIGW3nb6gAZHlvXZMeAhhJZ6ak1Ez+82yHUdhs+lymbe8v98bVhZFWUFsj2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cPeLLiQ1; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-32ebcef552eso1077805a91.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761059030; x=1761663830; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NtS2KYjF9C6m7c6lSBx/YCEBGO2iHFvA7LA8AcgD1BI=;
        b=cPeLLiQ1m6ECdSlfNFwoAeJGcJ1pHqGEKWAUrFknx8pc8Ag/OboycJZ5lBwACEi4im
         RdVe/QB+wvn5e/nNYocW3ptUIynqGTCv1da3tgJaYKEBxtuKBXy9IEGcl9JZ37uik6X5
         MjAu7/hcqZ0qOZ0jMDpPU+4O3Wjif1R5vj4gLVafMpCep7xQxPbDDNscPTKR8coxrKAe
         bU8QrCdQDLOSXQ8SeEb47eKlShlASEqY9TwgI0NW+53iYWDuhSER6x/cBljHgjIXR6DZ
         ykBDiXMtGOyEaEArtvaPrPWNfU0JVPwk6GVJ5oNAKKvJqLEJh4lPmWQt5PaTiWR1XMZ1
         6egw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761059030; x=1761663830;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NtS2KYjF9C6m7c6lSBx/YCEBGO2iHFvA7LA8AcgD1BI=;
        b=Sc5DxjVoAG/Jq7mRdnIqv5Iu2QQdyAY94rkH/fDPIpbsZ1GLgt29sT/nF3v3c9ndKp
         byR1bqafmuG4wwbfXFr6ul4PFVFShVJgMxKXTuYaa+ijlr5oWOx33Kh67znd7eCf9wMg
         aZ5KqCAjEJbHuPpdVY6FKuH7+lg1Q7JEXRAKe0Dtl5Z7HNHX+DgFGldiAD0rwNX91+r8
         tTGzpg3H1tmzIi3yL0d7pUn0U+d///faEM3k6bf0CF/TVWe6i/StDYDQKzafMg3b8gMZ
         uP3bDGsfid4XIse3Qlku3IjM7hm8YC4I5CwKPU3fhmLE4aZFvYNtn5G/lYNjvI9HNOAe
         0rSA==
X-Forwarded-Encrypted: i=1; AJvYcCXKao9ilLWvARuG6MZBbv7GJyle7Jj3NcDFrCfK4UHWnimWghzch5Vmc3HB39UKJhHXVEbmKDEEG527@vger.kernel.org
X-Gm-Message-State: AOJu0Yy16XwVqekRHxmVe86C67uohwq8USPItZOJNQBt9ROBntANKl54
	+UOOYPnMyl8Swm43Y0l1z0acW5XKEKmFdyGfErVDbiWEMJB22kep9PxY
X-Gm-Gg: ASbGncv2HBkTEYDAsbCzC3O7MReYJPPlhzUsRu1Bpp/W7/6Qe5Tp1L7KGTVw15gTNE1
	h6qjBGghvf1Ho0S0gK+R9LnO6En12K9ebXDqjF0nJUPUsVrEeC9u5YmH2FyRiXoDOFc7EKXAP0p
	gar/85tAxGn2cBB90KxeyCE0wRMmN6OfzI8EuiUqJV+ccb8kmwwbqeDgAOWzcEQ7K8GiSeJMMIl
	X7AJqeTfMfVSzlzTJCKC/NUlzypJ5ajO4wNl71Di6bCwGdkT1vMxYJ5/FO/v+gFfakcHEybGyG4
	0UYX99J3WoV9EwP6pMsxhhMVxRxwrOUNAdkG4dqdyu/hkBuiplGiur3x0JVVS3v6taXZUpYk0tM
	u5WscuxxS00DYFsca5Tz1McPNpitOzW5sohWZaiog8shB0aSZwWmn1qTSN0xUXXIAezPQAMvgju
	Rl5SqmvdHjcmTpZHhm7AnTNh0p+j4furLjN0LGE7zWBsGvY+/xdLOffDxwtk/oGM4=
X-Google-Smtp-Source: AGHT+IF9dhdv+GnM0X8CatQYTHZGAxeDpCAPm+nYE1Dxzv/2JQ9PFVVQo2kRTiZyRHx9CBETNW4sbQ==
X-Received: by 2002:a17:90b:3ec1:b0:33b:8b3b:4e4d with SMTP id 98e67ed59e1d1-33dfabe6c83mr2276188a91.5.1761059029368;
        Tue, 21 Oct 2025 08:03:49 -0700 (PDT)
Received: from [127.0.1.1] ([2401:4900:c8fb:fb07:e608:6e67:4b89:c950])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5ddf16bcsm11262487a91.4.2025.10.21.08.03.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 08:03:48 -0700 (PDT)
From: Ranganath V N <vnranganath.20@gmail.com>
Date: Tue, 21 Oct 2025 20:33:40 +0530
Subject: [PATCH] dt_bindings: sound: ti,pcm186x: convert to dtschema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251021-dtbs-v1-1-493c1aa253bc@gmail.com>
X-B4-Tracking: v=1; b=H4sIAMug92gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDAyND3ZSSpGJd40RjwzQzS8tkEzNDJaDSgqLUtMwKsDHRsbW1AGPujfR
 WAAAA
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, 
 david.hunter.linux@gmail.com, khalid@kernel.org, 
 linux-kernel-mentees@lists.linuxfoundation.org, 
 Ranganath V N <vnranganath.20@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761059023; l=3793;
 i=vnranganath.20@gmail.com; s=20250816; h=from:subject:message-id;
 bh=MTl8e6FvdDgptg0eKJyfIELgy4CuOKugQjNWa/1WMIU=;
 b=NDeufFCatSIEJ+XlUbRt6fFMRPYXUU1B2saZtZ3lyUdBa4tlln2VMNB8FrtDTvk4PN9u8vkkl
 zVRSJbLvhnMBOzpZH9I1YylZ5zQJiCGFvxoYvaIYFlMAoTsbQeJSTDt
X-Developer-Key: i=vnranganath.20@gmail.com; a=ed25519;
 pk=7mxHFYWOcIJ5Ls8etzgLkcB0M8/hxmOh8pH6Mce5Z1A=

convert the Texas Instruments PCM186x Universal audio ADC bindings to DT schema.

Signed-off-by: Ranganath V N <vnranganath.20@gmail.com>
---
Convert the Texas Instruments PCM186x audio ADC bindings to DT schema.
---
 .../devicetree/bindings/sound/pcm186x.txt          | 42 --------------
 .../devicetree/bindings/sound/ti,pcm186x.yaml      | 67 ++++++++++++++++++++++
 2 files changed, 67 insertions(+), 42 deletions(-)

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
diff --git a/Documentation/devicetree/bindings/sound/ti,pcm186x.yaml b/Documentation/devicetree/bindings/sound/ti,pcm186x.yaml
new file mode 100644
index 000000000000..f1ade490f688
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/ti,pcm186x.yaml
@@ -0,0 +1,67 @@
+﻿# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/ti,pcm186x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments PCM186x Universal Audio ADC
+
+maintainers:
+  - Ranganath V N <vnranganath.20@gmail.com>
+
+description: |
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
+    description:
+      Must be one of the supported PCM186x models.
+
+  reg:
+    maxItems: 1
+    description: |
+      For I2C, this is the 7-bit slave address of the device.
+      For SPI, this is the chip-select number.
+
+  avdd-supply: true
+
+  dvdd-supply: true
+
+  iovdd-supply: true
+
+  '#sound-dai-cells':
+    const: 0
+    description: Number of cells used to identify a DAI endpoint (fixed to 0).
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
+        pcm186x: audio-codec@4a {
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


