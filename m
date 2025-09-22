Return-Path: <devicetree+bounces-219958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6097B8FE88
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 12:06:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6AA157A8743
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 10:05:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0628E2FE057;
	Mon, 22 Sep 2025 10:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OXunfgk8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD94128727C
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758535585; cv=none; b=pIvY8cUEtunXK71pRcLjp+0NGE+iZ6IFc6lHTRsapsQwhfOe5ZCKVQc7Wm0dMwMUq8ZtzKA9ldVwUA6PF8b/f3tnxKMr4tQLRA0SzBU4aKTmIIs4y9NWbbn+0pyKDha1CIFPTq/MWLIOK5vA1gMLViyF7PPWCVSP7CO8wDKlhgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758535585; c=relaxed/simple;
	bh=h7CfD3CDSrZh73S0wyu/7Wpx6iuihvxQsf416mA0tUY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JMKBdna+Ga2Ulddc9auUJ9hXJES46XZ+8OPlTeeF8b3evPQcSc8+NtLB82eUy7UBE5tORgQXa6ve3zEngazhwQ3y4LQyfWMi+PUnLVrgD1y+n1EJkWRhX1hTsi6NRvcaQjOQ4LAgCcxCGktPBGJNGZPdVXdVEZWdjnxAcTBQlB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OXunfgk8; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3ed20bdfdffso4508648f8f.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 03:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758535581; x=1759140381; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9rzBUT9ICHWzlwIHMQcs4/tydI/swcsStccU+8K0CR8=;
        b=OXunfgk86tRkV+GXay9qerB/nKo1wKXpavHS6OusdyknhU9epVVPn7VPgHkeE59WUn
         T0IPyLIjBmRx9XFpwz0KJ1ukTEGsxARQ5XZpCz4EOcXvfb431zrgqm+g3XGBLdSGqW0R
         5FYtQ+HmOJWN66YanLaPv5et5kFWi/fbsklWZK9ddGTp1iM6PZWeAcXyBoKVG+57/E00
         8J6PuoQwnjFRvJeN4/guNxv0rz3Jx3oAIkrdx2ruxwvAB/fFm0qfMzEPYiMYZM+7bFa4
         CnyvG8hOXuNGN58KQBWe/AziwYRgM0F0hzlxkkwxOoVI+p6BkL+XEO3fQ4QFC2NLcWeH
         WifA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758535581; x=1759140381;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9rzBUT9ICHWzlwIHMQcs4/tydI/swcsStccU+8K0CR8=;
        b=i9cFjNFifnvWkmzydp+d6M50KxsO2jzaUAQz79WOnXbA4zjZa12RfaHCu7LPTuKySK
         eDAtjRkLKVwQqz5QCrJ3bKPm4E9PexOKj1hhUv0fsZQh8WSultTSZbUueMQQqwT/pf7Q
         d9KhTQgXDiWl5OtcUw19ZosXra64x9nEcMKd1rp94UoMMod9BNhiNiq7eN5MdDVv9CJm
         HsC1i1zt7L9Ux8uCGR8+M6Z7BN5+OgWomF9FlgdhKmxtV7aG9kkbEnoM78z7kNDb5GNn
         rqR5jh/xUzIw7EizBf1vgvDMuYLlm1MeWy108hlISFCY1iNkxO5jmBosXRNLISBBXBXN
         T2Og==
X-Forwarded-Encrypted: i=1; AJvYcCVhujhr+TGARUu1wzFOZihHaMQ+TZVV9oMNoM92/XDKPJeYzMVjc00tzy+TpAry8gE9pd5riROAUujW@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3PRtBXlvppYmomOr9FP4t1UAs9FV4raNNWMypWqJ5ZlN0mfZZ
	h2OOjM/tkwuwuw/hIejF7IQ2pO60voxbXZoA073xl81WBDdyvVcQmEQa
X-Gm-Gg: ASbGncsQ9JH5jZoPkrhYQEc9Qm5eUyGoHR8LOVgNBPgqRo+CiGEV15VZHxcMyIvNNBk
	D73H1nQHhDBnFcwRFmm1gsXrgkut/QdBYy5Dsv0inzQPI7Zf7LARd9pofYZ6glJLlMBtuFVWNgp
	bbIuv6rLHlG4DGwoYZuFZqQrRGfZcEEiI27Fnq4Zmua+M3iyzKk3SA2pTdBk8fdgwQzubbS8kYK
	GeRMHw6mjNB1VYQxZdQ7iA63OSv86MFmdb7I0HAWxtG4D7CGTe2Nkaw795/Y5UqPVUO5iMrI+79
	W4nNfaDOnr6fa4CuRzlyDGlf1AkOFKqWQQnHilPIdk2s1Z343+LhDCrT1w60fvy0sNU++/fVTb9
	VoJSBX6/Gly4BHLQ3mfBNWo0Z0nHoUkX/h5Xp/noU7DofSTdQlDUNAgybs4O3lq/3/uXlTlco5v
	eukkG3dHUPlFs3C+wb
X-Google-Smtp-Source: AGHT+IEUn/n4xOGfewV3T7xlv6Ff96MZ2Q5UW79peYIxVOU7U0G1G8MbLgDjKWDZfDN2glOcgcR/pw==
X-Received: by 2002:a05:6000:2382:b0:3ec:8c8:7b79 with SMTP id ffacd0b85a97d-3ee86f564a6mr9464742f8f.61.1758535580771;
        Mon, 22 Sep 2025 03:06:20 -0700 (PDT)
Received: from localhost (2a02-8440-750d-3377-171e-75f8-f2d4-2af8.rev.sfr.net. [2a02:8440:750d:3377:171e:75f8:f2d4:2af8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f527d6cdsm221291945e9.12.2025.09.22.03.06.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 03:06:20 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Mon, 22 Sep 2025 12:06:14 +0200
Subject: [PATCH v7 1/7] dt-bindings: memory: factorise LPDDR props into
 SDRAM props
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250922-b4-ddr-bindings-v7-1-b3dd20e54db6@gmail.com>
References: <20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com>
In-Reply-To: <20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-0dae4

From: Clément Le Goffic <clement.legoffic@foss.st.com>

LPDDR and DDR bindings are SDRAM types and are likely to share the same
properties (at least for density, io-width and reg).
To avoid bindings duplication, factorise the properties.

The compatible description has been updated because the MR (Mode
registers) used to get manufacturer ID and revision ID are not present
in case of DDR.
Those information should be in a SPD (Serial Presence Detect) EEPROM in
case of DIMM module or are known in case of soldered memory chips as
they are in the datasheet of the memory chips.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 .../memory-controllers/ddr/jedec,lpddr-props.yaml  | 74 -----------------
 .../memory-controllers/ddr/jedec,lpddr2.yaml       |  2 +-
 .../memory-controllers/ddr/jedec,lpddr3.yaml       |  2 +-
 .../memory-controllers/ddr/jedec,lpddr4.yaml       |  2 +-
 .../memory-controllers/ddr/jedec,lpddr5.yaml       |  2 +-
 .../memory-controllers/ddr/jedec,sdram-props.yaml  | 94 ++++++++++++++++++++++
 6 files changed, 98 insertions(+), 78 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
deleted file mode 100644
index 30267ce70124..000000000000
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
+++ /dev/null
@@ -1,74 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/memory-controllers/ddr/jedec,lpddr-props.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Common properties for LPDDR types
-
-description:
-  Different LPDDR types generally use the same properties and only differ in the
-  range of legal values for each. This file defines the common parts that can be
-  reused for each type. Nodes using this schema should generally be nested under
-  an LPDDR channel node.
-
-maintainers:
-  - Krzysztof Kozlowski <krzk@kernel.org>
-
-properties:
-  compatible:
-    description:
-      Compatible strings can be either explicit vendor names and part numbers
-      (e.g. elpida,ECB240ABACN), or generated strings of the form
-      lpddrX-YY,ZZZZ where X is the LPDDR version, YY is the manufacturer ID
-      (from MR5) and ZZZZ is the revision ID (from MR6 and MR7). Both IDs are
-      formatted in lower case hexadecimal representation with leading zeroes.
-      The latter form can be useful when LPDDR nodes are created at runtime by
-      boot firmware that doesn't have access to static part number information.
-
-  reg:
-    description:
-      The rank number of this LPDDR rank when used as a subnode to an LPDDR
-      channel.
-    minimum: 0
-    maximum: 3
-
-  revision-id:
-    $ref: /schemas/types.yaml#/definitions/uint32-array
-    description:
-      Revision IDs read from Mode Register 6 and 7. One byte per uint32 cell (i.e. <MR6 MR7>).
-    maxItems: 2
-    items:
-      minimum: 0
-      maximum: 255
-
-  density:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description:
-      Density in megabits of SDRAM chip. Decoded from Mode Register 8.
-    enum:
-      - 64
-      - 128
-      - 256
-      - 512
-      - 1024
-      - 2048
-      - 3072
-      - 4096
-      - 6144
-      - 8192
-      - 12288
-      - 16384
-      - 24576
-      - 32768
-
-  io-width:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description:
-      IO bus width in bits of SDRAM chip. Decoded from Mode Register 8.
-    enum:
-      - 8
-      - 16
-      - 32
-
-additionalProperties: true
diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
index a237bc259273..704bbc562528 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Krzysztof Kozlowski <krzk@kernel.org>
 
 allOf:
-  - $ref: jedec,lpddr-props.yaml#
+  - $ref: jedec,sdram-props.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
index e328a1195ba6..0d28df3d2bfa 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Krzysztof Kozlowski <krzk@kernel.org>
 
 allOf:
-  - $ref: jedec,lpddr-props.yaml#
+  - $ref: jedec,sdram-props.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr4.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr4.yaml
index a078892fecee..65aa07861453 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr4.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr4.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Krzysztof Kozlowski <krzk@kernel.org>
 
 allOf:
-  - $ref: jedec,lpddr-props.yaml#
+  - $ref: jedec,sdram-props.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr5.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr5.yaml
index e441dac5f154..cf5d5a8e94b3 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr5.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr5.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Krzysztof Kozlowski <krzk@kernel.org>
 
 allOf:
-  - $ref: jedec,lpddr-props.yaml#
+  - $ref: jedec,sdram-props.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-props.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-props.yaml
new file mode 100644
index 000000000000..38472a3febc5
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-props.yaml
@@ -0,0 +1,94 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/ddr/jedec,sdram-props.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common properties for SDRAM types
+
+description:
+  Different SDRAM types generally use the same properties and only differ in the
+  range of legal values for each. This file defines the common parts that can be
+  reused for each type. Nodes using this schema should generally be nested under
+  a SDRAM channel node.
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+properties:
+  compatible:
+    description: |
+      Compatible strings can be either explicit vendor names and part numbers
+      (e.g. elpida,ECB240ABACN), or generated strings of the form
+      lpddrX,YY,ZZZZ or ddrX-YYYY,AAAA...,ZZ where X, Y, and Z are in lower
+      case hexadecimal with leading zeroes and A is in lowercase ASCII.
+      For LPDDR and DDR SDRAM, X is the SDRAM version (2, 3, 4, etc.).
+      For LPDDR SDRAM:
+        - YY is the manufacturer ID (from MR5), 1 byte
+        - ZZZZ is the revision ID (from MR6 and MR7), 2 bytes
+      For DDR4 SDRAM with SPD, according to JEDEC SPD4.1.2.L-6 :
+        - YYYY is the manufacturer ID, 2 bytes, from bytes 320 and 321
+        - AAAA... is the part number, 20 bytes (10 chars) from bytes 329 to 348
+          without trailing spaces.
+        - ZZ is the revision ID, 1 byte, from byte 349
+      The former form is useful when the SDRAM vendor and part number are
+      known, such as when the SDRAM is soldered on the board.
+      The latter form can be useful when SDRAM nodes are created at runtime by
+      boot firmware that doesn't have access to statis part number information.
+
+  reg:
+    description:
+      The rank number of this memory rank when used as a subnode to an memory
+      channel.
+    minimum: 0
+    maximum: 3
+
+  revision-id:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description: |
+      SDRAM revision ID:
+        - LPDDR SDRAM, decoded from Mode Register 6 and 7, always 2 bytes.
+        - DDR4 SDRAM, decoded from the SPD from byte 349 according to
+          JEDEC SPD4.1.2.L-6, always 1 byte.
+      One byte per uint32 cell (i.e. <MR6 MR7>).
+    maxItems: 2
+    items:
+      minimum: 0
+      maximum: 255
+
+  density:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Density of SDRAM chip in megabits:
+        - LPDDR SDRAM, decoded from Mode Register 8.
+        - DDR4 SDRAM, decoded from the SPD from bits 3~0 of byte 4 according to
+          JEDEC SPD4.1.2.L-6.
+    enum:
+      - 64
+      - 128
+      - 256
+      - 512
+      - 1024
+      - 2048
+      - 3072
+      - 4096
+      - 6144
+      - 8192
+      - 12288
+      - 16384
+      - 24576
+      - 32768
+
+  io-width:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      IO bus width in bits of SDRAM chip:
+        - LPDDR SDRAM, decoded from Mode Register 8.
+        - DDR4 SDRAM, decoded from the SPD from bits 2~0 of byte 12 according to
+          JEDEC SPD4.1.2.L-6.
+    enum:
+      - 8
+      - 16
+      - 32
+
+additionalProperties: true

-- 
2.43.0


