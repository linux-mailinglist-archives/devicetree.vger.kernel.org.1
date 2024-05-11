Return-Path: <devicetree+bounces-66416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9728C2FBB
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 07:56:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0065B283B6F
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 05:56:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BE4247A52;
	Sat, 11 May 2024 05:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XMV9nRFH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066502CCBE
	for <devicetree@vger.kernel.org>; Sat, 11 May 2024 05:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715406988; cv=none; b=TC7qJx/GyMtCQ6PQCPijdHm9OtXrqCd2TTjkZKrLaZO0CMgamA4V6zdRUS+U6PcNB7tzVX27QzmWpGr+/gc2xf7quvSY/KQli1JWYNQWTnQN0B2mbh6Qqrl42gex0SKt783lEy3Rxk5wJ0AVyYk0HcBVs2TkHAcO4quWlaB3xD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715406988; c=relaxed/simple;
	bh=/wAlPis3fKbSPY+TOkMUqvx5LzFAMMJ078LmxK8A57Y=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=g3hLdLmX7mKOTggutkX+qJic6bSh1es5oCll2pMRQwV46PDMlHzJWEM0tMMKew3I9sExrfV0DcOks/XTXjrrg8G7mOw3/QDgxwXcrEEkSBvc0YIBy8teS+R+W0dBjjHfGTY8gM60YYbXQlA9HBzwcZVKt/UHb9I6PhrFeUCz+h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XMV9nRFH; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-6f447260f9dso2339037b3a.0
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 22:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715406985; x=1716011785; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7rcnb0x1Ab/oP+ua9OVpFeNPgORVez4tRKSLrjc2TvY=;
        b=XMV9nRFHZs5Prto7TC28FwgtMvvw9nlIl0dHnUyUFLt7siMlSL/FsX2TXC/FN4K6cB
         Oxzfr7K9CGTGWO6eV4sasy1q3fVRMSuzKjaF3DOMRjoQ33ebjjN0l79/TmkC/DsNBtqx
         UTvEXCRp1/HCyklFPNl1tjCqdhKMhIz2RRciQh8f5ub1FuMUyu98Gj5JquMgV3pSicj/
         DLg5p39JgZqlAKJJ3ExH2e3razkLWudBEdIyZyakw1wp/Pni5cNwpCCYKNSp5ODLUOyi
         4rOHJ86mdr/L8ZXdwPTLBwbvKpKVhhOfeidgICahP48OXr9I6tKKN6KMMHlw/MGr6uFE
         q4mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715406985; x=1716011785;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7rcnb0x1Ab/oP+ua9OVpFeNPgORVez4tRKSLrjc2TvY=;
        b=rsTaXCKRsehZJxOaZc3PK1P5d+BOC7ejQD/Pu+H5WqXdZhGHD8yl8PTY6kaozqwBKw
         Y8n/UwBpR2O4Sc8LNwbYJ25TYMdjD0NHouCljboDq3dQ9UWWpgv+IdOkhwtpkagjY3AB
         dil1W3vzaaaTLGDtbOKC9vGXPvt7vGPKPgJ5NAS1UpLN0yRIsbKxKaIm6VSABcNtgaWa
         pZ2CWnI1gpg7vL6jViTkw18MKrYK/7QJLFcN8GpmSTmrEqUGLmQZvpt75NgOEB1/NU1n
         O44+4SbG78yfJaO2Ot1Hnk/Fg93Q9mO8UlYCi2TOXSWZHNa5YgFe87ppSk6f6Jk89ciR
         xaow==
X-Gm-Message-State: AOJu0YxR31n3LKtoKuPIWKOCebgk3qhyiTQ6GqCzVPxx6tWoJ7QyXX+S
	V1a364q3I3oIjwCuauZXGYB4jAvVwQl7ZTv2RmIdUdA1YiKhEZFud1ARkJgdG+A=
X-Google-Smtp-Source: AGHT+IHGkXRSI1lBKu66MqqiCaQwqtF1VdmggH3LmfQsP4a3fNv0Gh55TnTAU0x9UXY/EgwIv6VwxA==
X-Received: by 2002:a05:6a00:4b0e:b0:6ec:fe38:d94 with SMTP id d2e1a72fcca58-6f4e0385e80mr5063998b3a.33.1715406985344;
        Fri, 10 May 2024 22:56:25 -0700 (PDT)
Received: from xiaxiShen-ThinkPad.dhcp4.washington.edu ([205.175.106.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a9d981sm3948689b3a.94.2024.05.10.22.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 22:56:24 -0700 (PDT)
From: Xiaxi Shen <shenxiaxi26@gmail.com>
To: devicetree@vger.kernel.org
Cc: shenxiaxi26@gmail.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	javier.carrasco.cruz@gmail.com,
	skhan@linuxfoundation.org
Subject: [PATCH] ASoC: dt-bindings: ak4104: convert to dt schema
Date: Fri, 10 May 2024 22:56:06 -0700
Message-Id: <20240511055606.51333-1-shenxiaxi26@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert ak4104 binding to DT schema

Signed-off-by: Xiaxi Shen <shenxiaxi26@gmail.com>
---
 .../devicetree/bindings/sound/ak4104.txt      | 25 ---------
 .../bindings/sound/asahi-kasei,ak4104.yaml    | 51 +++++++++++++++++++
 2 files changed, 51 insertions(+), 25 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/ak4104.txt
 create mode 100644 Documentation/devicetree/bindings/sound/asahi-kasei,ak4104.yaml

diff --git a/Documentation/devicetree/bindings/sound/ak4104.txt b/Documentation/devicetree/bindings/sound/ak4104.txt
deleted file mode 100644
index ae5f7f057dc3..000000000000
--- a/Documentation/devicetree/bindings/sound/ak4104.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-AK4104 S/PDIF transmitter
-
-This device supports SPI mode only.
-
-Required properties:
-
-  - compatible : "asahi-kasei,ak4104"
-
-  - reg : The chip select number on the SPI bus
-
-  - vdd-supply : A regulator node, providing 2.7V - 3.6V
-
-Optional properties:
-
-  - reset-gpios : a GPIO spec for the reset pin. If specified, it will be
-		  deasserted before communication to the device starts.
-
-Example:
-
-spdif: ak4104@0 {
-	compatible = "asahi-kasei,ak4104";
-	reg = <0>;
-	spi-max-frequency = <5000000>;
-	vdd-supply = <&vdd_3v3_reg>;
-};
diff --git a/Documentation/devicetree/bindings/sound/asahi-kasei,ak4104.yaml b/Documentation/devicetree/bindings/sound/asahi-kasei,ak4104.yaml
new file mode 100644
index 000000000000..88daa0c7c74f
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/asahi-kasei,ak4104.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/asahi-kasei,ak4104.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: AK4104 S/PDIF transmitter
+
+allOf:
+  - $ref: dai-common.yaml#
+
+maintainers:
+  - Liam Girdwood <lgirdwood@gmail.com>
+  - Mark Brown <broonie@kernel.org>
+  - Rob Herring <robh@kernel.org>
+  - Krzysztof Kozlowski <krzk+dt@kernel.org>
+  - Conor Dooley <conor+dt@kernel.org>
+
+properties:
+  compatible:
+    const: asahi-kasei,ak4104
+
+  reg:
+    description: Chip select number on the SPI bus 
+    maxItems: 1
+
+  vdd-supply:
+    description: A regulator node providing between 2.7V and 3.6V.
+
+  reset-gpios:
+    maxItems: 1
+    description: Optional GPIO spec for the reset pin, deasserted before communication starts.
+    
+required:
+  - compatible
+  - reg
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+   i2c {
+     #address-cells = <1>;
+     #size-cells = <0>;
+     codec@0 {
+       compatible = "asahi-kasei,ak4104";
+       reg = <0>;
+       vdd-supply = <&vdd_3v3_reg>;
+     };
+   };
-- 
2.34.1


