Return-Path: <devicetree+bounces-251588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8C7CF4586
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 16:17:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CF3EF3009691
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 15:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 683D22FF679;
	Mon,  5 Jan 2026 15:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HDUpFEkW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB6D2EBB8D
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 15:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767625690; cv=none; b=GI1yAcZoB86wDN3mJTe1ma3JiZ0lgg57LySBGokyZM88wq1rVKt6R0u+j8TmrKk0Av+V/ovAEg6qzFm4k69s5IRcokhIA3cuiIUtR8nIu5A1OcVo7Y74hpZW/aQJFt6fjjjUuv9GjM2VxdyMUbOrvL8pXRPMO5n7qLakcZcmYrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767625690; c=relaxed/simple;
	bh=sK0+CEa3/0lm980jOiRWYW7FRiBLHWMNCdfDPIq6EJ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=YEbtH5QX3Hzhy9zU8EkaHf8mtClmjS2igt6NWvY7KJTeCTnCaSn+Oz8siuH+9bfRr+RMQCZ//kB3Fea+zBHbXx4Oqr/c+4B/0dvQ6DX4psqL6izgOb4vJZ4hdH/fYtpvd4hZBud+eXRLF/P2P+E5NguOXeuCYNXE7PcDRYmwU+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HDUpFEkW; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a12ebe4b74so251164105ad.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 07:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767625688; x=1768230488; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x1jKy4PLpiDv5jQtyPtMkgdBDMPguDaYeUut8IL2qu0=;
        b=HDUpFEkWuoBNyF+TWO317q7GmWWOWWnR4BMPLYkjJIIulXWw5dI6YkddSLBhgf4vEU
         e7VOxk2cozF6GNsvh+zTWWjC24T+A7o4h1yK/oWJGHowkXB8cskRybgifVRdPUJSsWxI
         DC0hKvxF9YjFeKNzH+YnWYprcPrr3sNGeWFqGitmClisCUPSwebWMt8i96cnvfv/f3+9
         HiCi/J7QZpHEjHyUWWniPSE5v/I+f7gzA7d2awH8xLS0PLzOwm8Cs/OOyTMRTZUfndKB
         nY/plz3xgjPLTEv0EiozAMqVHnpmhuQyjAB55ZqO/8iRZxAquudW6c3CbfV2WxhdbfNz
         8irw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767625688; x=1768230488;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x1jKy4PLpiDv5jQtyPtMkgdBDMPguDaYeUut8IL2qu0=;
        b=vpKGiRQ08rUKEaJmoB9tDz7A7eshoHUg6nZiy08nbR3RMRxYGvqvGQH7jSZ9VcapfK
         n2HDBsW90wdqcziernUP13KrEga3+zazaspvzpuCRhkTlDB4AlQ4auXTmfpwvcOPlIEm
         Ianuul3ox2qzWlur2bR1fO1tS2FMeHAaJTzwz8Waxc1kyqjeUzrNfb0Mj5EgZuA0tliW
         af/DivJEB24N8j4qUGpoyoiiAw054NoFsbD7CKXL1yraC1K6ykHHZKCxRIVSs81Ohr+O
         9aVXFKiH/lXxDekweClG5l+CY0yLH2LazTptBi5A6aNKQMEtcgYOJhx/067ZJ3svzGi+
         Z7oQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1FrEAZtZdwVYVhgoDx/LawhV9y7k7KEpWg6tEFkV8frrrtIch0dv9Lm9OPkFsZx64G/eeOoRtdhVt@vger.kernel.org
X-Gm-Message-State: AOJu0YwLm4aZmFWRJeMgvTtUNhnI6OP27mY0k6qxid6ck4saGyR37e2i
	DOBCUdgZwkK6FJW9q2lyOtSglK0m4ltQP/TJYYxnz/QFhp+xP/jwy0mOkraceA==
X-Gm-Gg: AY/fxX6eLNIFqT0sJWIS652GzyMM9ETRg+Uf7pIhUxH0lrMvk0paKKxv9662abiodnQ
	tBhXIwcMd208cS1+3UlCSPUT+DL4YuWEZNIAwyhXoz/N/eyUPtzqtvYUMefrKv0ifwqsqTPdAtp
	VqYr5FdKdFEtxay/lZ91xMiNzKksxRQ1Gx93m3n/yQm8wU+0BlKOk5sBxG1zT/E45ABhlfhbVeD
	5dwNylg08rZDuGRNThwv5vOmo1m6/zF4gze4UVYglOIrpPuXySe8ScgmC7ZeQOdxYQQgoHLphE4
	RMeTlL/0GGH7Mxz1ZI0REoIBVsw9MSi6zD1Ytl169E0YJQJ3UqdqTKQp6RsKGQ0+3h+YTSNTgLU
	i454RnNMz0DIkwGWB0SKwIHKd7RU6UIzQV0oQAQwkTS0UncoH1kxypLjcAwHsCeGeZplm1eRidB
	W9gq/UJYQ3augMsepM2/Y0UowOoCUHni9D8/ArMA==
X-Google-Smtp-Source: AGHT+IGhkCdU2DgtXw80a0qwTPN/B41vQB1JkqB9e8jnObox0EpIMbkYAzguoHeMXBySPLMGasdaPQ==
X-Received: by 2002:a17:902:ea07:b0:29e:fd60:2cf9 with SMTP id d9443c01a7336-2a3e2e1e31fmr105955ad.54.1767625687767;
        Mon, 05 Jan 2026 07:08:07 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.181.104.101])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a3e2ab1a0esm1174215ad.16.2026.01.05.07.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 07:08:07 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Mon, 05 Jan 2026 15:08:00 +0000
Subject: [PATCH v3] dt-bindings: mtd: microchip,mchp23k256: convert to DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-nxp-v3-1-05af634831ef@gmail.com>
X-B4-Tracking: v=1; b=H4sIAM/TW2kC/1XMTQrCMBCG4auUWRtJxqY2rryHuAjNpB2wPyQSK
 qV3N60IunyHeb4FIgWmCJdigUCJI49DjtOhgKazQ0uCXW5AiVohGjHMk9BYERpnjUcD+XMK5Hn
 eV2733B3H5xhe+2hS2/XfJyWUsKXSnqSspa2vbW/5cWzGHjaf8GsqqSR+DGYjtdfOmfJcavNr1
 nV9A+DUilDKAAAA
X-Change-ID: 20251229-nxp-526e29da9f29
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3

Convert Microchip 23K256 SPI SRAM MTD binding to YAML format.
Changes during conversion:
- Remove "address-cells" and "size-cells" from properties and
  required sections as there is no child node for sram.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
Changes in v3:
- Changed commit description to document changes during yaml conversion.
- Corrected indentation for example.
- Link to v2: https://lore.kernel.org/r/20260102-nxp-v2-1-05f5dd947459@gmail.com

Changes in v2:
- Removed "#address-cells" and "#size-cells" from the required, properties
  and example. 
- Changed description and title for yaml.
- Link to v1: https://lore.kernel.org/r/20251229-nxp-v1-1-a415fe0080a8@gmail.com
---
 .../bindings/mtd/microchip,mchp23k256.txt          | 18 --------
 .../bindings/mtd/microchip,mchp23k256.yaml         | 49 ++++++++++++++++++++++
 2 files changed, 49 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/microchip,mchp23k256.txt b/Documentation/devicetree/bindings/mtd/microchip,mchp23k256.txt
deleted file mode 100644
index 7328eb92a03c..000000000000
--- a/Documentation/devicetree/bindings/mtd/microchip,mchp23k256.txt
+++ /dev/null
@@ -1,18 +0,0 @@
-* MTD SPI driver for Microchip 23K256 (and similar) serial SRAM
-
-Required properties:
-- #address-cells, #size-cells : Must be present if the device has sub-nodes
-  representing partitions.
-- compatible : Must be one of "microchip,mchp23k256" or "microchip,mchp23lcv1024"
-- reg : Chip-Select number
-- spi-max-frequency : Maximum frequency of the SPI bus the chip can operate at
-
-Example:
-
-	spi-sram@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "microchip,mchp23k256";
-		reg = <0>;
-		spi-max-frequency = <20000000>;
-	};
diff --git a/Documentation/devicetree/bindings/mtd/microchip,mchp23k256.yaml b/Documentation/devicetree/bindings/mtd/microchip,mchp23k256.yaml
new file mode 100644
index 000000000000..32e9124594ac
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/microchip,mchp23k256.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/microchip,mchp23k256.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip 23K256 SPI SRAM
+
+maintainers:
+  - Richard Weinberger <richard@nod.at>
+
+description:
+  The Microchip 23K256 is a 256 Kbit (32 Kbyte) serial SRAM with an
+  SPI interface,supporting clock frequencies up to 20 MHz. It features
+  a 32-byte page size for writes and supports byte, page, and
+  sequential access modes.
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    enum:
+      - microchip,mchp23k256
+      - microchip,mchp23lcv1024
+
+  reg:
+    maxItems: 1
+
+required:
+  - reg
+  - compatible
+  - spi-max-frequency
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        sram@0 {
+            compatible = "microchip,mchp23k256";
+            reg = <0>;
+            spi-max-frequency = <20000000>;
+        };
+    };
+...

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251229-nxp-526e29da9f29

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


