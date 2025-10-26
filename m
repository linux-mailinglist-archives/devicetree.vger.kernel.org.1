Return-Path: <devicetree+bounces-231153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 361F1C0AE9F
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 18:26:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C00FE18866AD
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 17:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 120022BE034;
	Sun, 26 Oct 2025 17:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HGJk9bae"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838F5205E26
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 17:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761499591; cv=none; b=l27+2tTFvaEmZBtgjy/AU5M7wBkj1/m0578iB6FVbS8ptGSiKN5bnpQuf3af4dnV+Ip2xuT0+M0+HYjamtm9e9KOjaTRdlZ16F1cT6fzev4NdzM/tCHEswJO6RiUaFn+VSoS4jO1Q2lloisdsMCczLaN9CLEuRZz53TSxFN9Ja4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761499591; c=relaxed/simple;
	bh=PUQmCPoHMTdvsW8ctn14E6LZQyRG6SCbf1UxlHwI0Nk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=lvWnOkW+b6JuD4/McjuPr9CvdXzbB8uMCncTGhh2RpVEeBreJ42SiZrxZN7CcKPDvbHbCn31Qxe7chfkiB8X74OUyyE+6/IM5IgEg2ybIbtY9ZmEh0Xg7Y8DkajuJDyF4rw8fr9j6qP1ljWXnEL3e97nB92+22b1TCteA3Zm56U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HGJk9bae; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-339a0b9ed6cso995630a91.3
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 10:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761499588; x=1762104388; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XBFcLw5BpNBFfDz3lZj9Yn2OsQ5b+bNAVNgkkfKHEVQ=;
        b=HGJk9bae6QHNJUM/R3HooKnD4t3y+U2DB4WeE7FZEvruMnn9Q9LFNQIN8XXwrpjXi8
         s7GhpWPsNc2J5fPJ/gFb5xXy9MZnUh54/YZjnodmfYZ1JfRP0VuvDP/POkag6sKn8Ck3
         L4DH+ssn5oHUSKpLYNbaRTgKpiyfmDDcop/QHgcHWGCBe+HYgskF0+BRPPW3dxreNvs1
         WhlHXV2dv9L+Cyrk9M0sPGFB97kSXauu7owgHBcs7pE7Cc9exIjvQS19qxirOL/Pcgj9
         NbwVlRdxIiZPYGfI1pxuATEtwLmoCxoGYrQNa/G2nj5IoCFVAwp/AFW+ohCSCRFU5Doi
         cpaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761499588; x=1762104388;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XBFcLw5BpNBFfDz3lZj9Yn2OsQ5b+bNAVNgkkfKHEVQ=;
        b=ToTuzMn/HkdBghuHgM92mha3WVLt1a5Us4U3giURKiSzTVZoYH2jLn7aqC85QiZGgj
         3yHpjGrh8ZY1YWDR5zV19QRph0e37HeBrv2sV6V18lmw24CrZFe+cjXb/OnqI58GLjKU
         SWDvOoC6OSIC93OCj0yZri1G62WATS5ehQA8zciil/1alfaKQKaTILOMu4qqGlJuQW05
         MLKxcueEU829aeGXMgNAhsSQfm2++kjXEWn/Gfw4NmRL0XbO0j2xfJtW2oBr7ABJtNv3
         jDpQmAR0mvnRZsnT73aP3LG3+1PATx1q+/7nkdgkzC5/3Ol62Wh/Bt4WypCo85nYXc+C
         mz2w==
X-Forwarded-Encrypted: i=1; AJvYcCUMeTb5zLkHiX3gxSvDbioo+Cl1tJUsNjGGcFG7GonxnDjtRolEkJPTQHrb1eik39/HLsupPogyCYnx@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0bPMp4LmWFGP3KMocYFgxetBmfEdiTuDZ4VZIp3jm6rihzStc
	NJ8VVFL8Fb+eq9bebS0Ap7Qf3S802iP4YpSo8Kg00tMx1oJTSqP3L9Wf
X-Gm-Gg: ASbGncvZEKiBMpvYj+USuDezpixQ9Rlk8JdQypcgnIKVIwGewJtYvIbpnKsIysrTwlI
	hsUvBnfBKWsA5XLw+rlmkRuVuwdEdycltiH62Y2vSzxgQX2VpmSSR4k3q1D5z9WoH1YjHfHRE0U
	74yiM66mKtVhEwlwae1Nim+zAeBnWXdgR0x8yeanJjYRaTdFk4SHa6gKluKCNUoBRdUbHBbZkLS
	V+wCEpvLmodI6Nuh3n8Xt7B+4WitQ5Hj7Ayqdtv97u54tTddRVneotjM9mQ23FyGLfnKR2n4FYU
	v3DIVjsnB0L+N2Neue5AImINj3u5nht+2YAeUdaskHO95LudvfTfDP9wNbby4ECQwQ1I36+gLNc
	7/O64Yg4KfJiFQLtsMETJnnZ9CLmxj/4UtF8rZzLHU7sCJ1wdk/oxPul/1H9tMY/5OprnvDAV2J
	AmIks4l4EkzYgspfQWsBLpIzz5qxtwVWXRsTuOOYKRWWAFd5XFQqdo
X-Google-Smtp-Source: AGHT+IExMSyElm0YxdAezEoVlByvabJImhmVB6WrfVipcFwJosQYBkwt4hrxz8uBWbeds5UW5QFeaA==
X-Received: by 2002:a05:6a20:258a:b0:334:8d22:f95d with SMTP id adf61e73a8af0-3392f835684mr14940008637.2.1761499587735;
        Sun, 26 Oct 2025 10:26:27 -0700 (PDT)
Received: from [127.0.1.1] ([2406:7400:10c:a59a:f324:3a40:f5b9:3811])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414015724sm5433692b3a.14.2025.10.26.10.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 10:26:27 -0700 (PDT)
From: Ranganath V N <vnranganath.20@gmail.com>
Date: Sun, 26 Oct 2025 22:56:16 +0530
Subject: [PATCH v2] dt_bindings: sound: ti,pcm186x: convert to dtschema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251026-dtbs-v2-1-cd3b713a288e@gmail.com>
X-B4-Tracking: v=1; b=H4sIALdZ/mgC/13MQQqDMBCF4avIrJviJCqkq96juIhj1IFqSkZCi
 +TuTV12+T8e3wHiI3uBW3VA9ImFw1ZCXyqgxW2zVzyWBl3rFmuNatwHUcYZnDprqekQyvUV/cT
 vk3n0pReWPcTPqSb8rX9AQoWqsYbQOd2age7z6vh5pbBCn3P+AvDPeSaYAAAA
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, 
 david.hunter.linux@gmail.com, khalid@kernel.org, 
 linux-kernel-mentees@lists.linuxfoundation.org, 
 Ranganath V N <vnranganath.20@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761499583; l=3652;
 i=vnranganath.20@gmail.com; s=20250816; h=from:subject:message-id;
 bh=PUQmCPoHMTdvsW8ctn14E6LZQyRG6SCbf1UxlHwI0Nk=;
 b=kjNKEEdaT5Oxrzi0nbqHtUt2Gaytpog/0p+HvEumeOqM+G4795JeBDHfr1TnC1bRxuwtHWRRd
 GE0gKtCdUjDD18/H2P3fSzgT5unbP7owrLdnTh3nazo3O3fS1FLhm4K
X-Developer-Key: i=vnranganath.20@gmail.com; a=ed25519;
 pk=7mxHFYWOcIJ5Ls8etzgLkcB0M8/hxmOh8pH6Mce5Z1A=

convert the Texas Instruments PCM186x Universal audio ADC bindings to DT schema.

Signed-off-by: Ranganath V N <vnranganath.20@gmail.com>
---
Convert the Texas Instruments PCM186x audio ADC bindings to DT schema.
---
Changes in v2:
- Fixes as per the reviews suggested for the v1.
- Link to v1: https://lore.kernel.org/r/20251021-dtbs-v1-1-493c1aa253bc@gmail.com
---
 .../devicetree/bindings/sound/pcm186x.txt          | 42 ---------------
 .../devicetree/bindings/sound/ti,pcm186x.yaml      | 61 ++++++++++++++++++++++
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
diff --git a/Documentation/devicetree/bindings/sound/ti,pcm186x.yaml b/Documentation/devicetree/bindings/sound/ti,pcm186x.yaml
new file mode 100644
index 000000000000..306905eebd68
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/ti,pcm186x.yaml
@@ -0,0 +1,61 @@
+﻿# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
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


