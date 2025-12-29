Return-Path: <devicetree+bounces-250196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9BBCE6CB1
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:59:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6FCEB303AEAF
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:57:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3366F318130;
	Mon, 29 Dec 2025 12:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V3J5hAp3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC36231770B
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767012552; cv=none; b=PulXsXe7L84lv+dbg6gTWgI+8IIpGpl5RIyMJUgBgPbCV2hr2K+/QfrYgA1x417E0GgF+DCr7TDXLnbfPCnprGquHfJo2SyRkrcyBWwOkR+92/C+gwTkm26gGXjevhle+63rhfyu4GcoXoEVEeMupdsuVXtHaKSOVY1SBSwnFdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767012552; c=relaxed/simple;
	bh=InMD8vi1Xhz7P78DdgZJ6+9ZIkweuS8ACdmaUFDJUO8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=bTZnqKl7h3y/X3Iox2xv1F273dTwymC6IQWV/NQh05edb8BqonvP0IQGFBdZfFgsJhcWwIAAlpevmvf+YUVn3GrkyLJRNyukII6P1pMImi4QuGhVS02HTqvtUGsVtScFm6OpwMFp0e+1NgBQDNrBewjj64UxpQ3B7W6QqyAq9iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V3J5hAp3; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-34c84ec3b6eso11519331a91.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:49:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767012550; x=1767617350; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZDNcQKpuNu2CJESbGOB2OET7RtpFrckSmp3dxE/JfZU=;
        b=V3J5hAp3u25ZHCmzfQSDMtdUCbNsI87i7QoWPC41DCBwqoPofT/oG2rg2KTGIgq48D
         L/7lE33X/owjn0QOCFVcqeCPxLWlW4QGusL490ZTIh30hsA4fLtDMidIFwmYXuOhJFrS
         kU+XQBRlgMioytAmpYOymPpWIrZf530/tIBlbBAQaQOuiJUjmkmrImrn7wyuxDQ9r+g1
         fM5ygN4J2uKyU+rEjqgxashWYtH/WD9IJQ+WMOe9Tnj0RH5Nmlf2vcdJeV+mJX6c0iRP
         hq20kV3ep2LI7CPFJ+LEzxrnBlj0udjGgdNgX9p4FCvBLTd+HLTZ8axy5Wh9fhRT+wec
         gSdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767012550; x=1767617350;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZDNcQKpuNu2CJESbGOB2OET7RtpFrckSmp3dxE/JfZU=;
        b=nujDWMg+VqrAARSYn1fOmN2pHn2ftvMfDqGczCEDlcjBzqk0YgKym01L/nY/7uQ/eO
         2AFQNh3nBhHz7TA6Ro8g2+iJye9qKPOcN6Rd+Eg4GexrHelIY2v7I5IL4u+cG/0eC6cS
         Ed3OHdYGK63wwaRrejk4BsQcIrOFNzaqE3PQ0lozUnwkW3pl5KyV6Te8G42Z7xeO9UcZ
         oxBCOJ7qtKZVMaGXxoeQVUGVs+dWVm4qawQz6X9vsoMRf0e7BwdFZzVltA5ABmwiTtv9
         QkTLERiuuAmdyse668XdVfcGYghic8rM//dsKQOaPbjGNwOJPz4iHkFaymThH2Nf+q17
         wCwg==
X-Forwarded-Encrypted: i=1; AJvYcCWt2buMzQeQ+AAciNteF2cwrKN4IuUzhaDcyJE6Aed6IWdUVzq4s8ImQSSa73H4QdIdVKIQPk1g2Urc@vger.kernel.org
X-Gm-Message-State: AOJu0YwyvTlrqYGWz1DvNXZs/QuJWfgU1AF7wo5voilRMYZRv8fBKowB
	155k+iBC1cbmTJhgpz19RaDhyYcGyGkxHsKyqsYZQl87w0T54aRCXCH9HjF35Q==
X-Gm-Gg: AY/fxX4COna8AVYXOijuA5ANURNilCSIl5tm2gQ7lu19eX+er0LB79vyRa5pyRXcBzZ
	VOtZ8WUBlUR5ijvEDLp064ovWgrBe1LzDSgCcweMyzN4/ACLcOMIYZkMrefXubn8TfImKys1Etb
	5Otj6+/uM8aIW2ync4YARC1kxt+Nm3aneVu9kM04j5mRlU1T8c+JzylHAqkW8dTOSim+BzKtx1w
	D+RcAsCDgNt/yodDWmK3aXlJAtK17RInRyTjB+Uj83gZsmYH9tx0Z+yKPRc0d6sCwrGkptCTp0z
	B2kG3Cdj0tvGfiS3rkIaB46oFOstWWn60rBAutHueUSxUGnuZRvfNXGLjmRa2KAAZowvsJjo/SN
	fRfrgCZU2IAwobFCNx5AXJLgQjQ3ZIPmhdho+8ZvYB+RCFmA7a3FCtuzfmldNQIVgj+CYdeRoSU
	uiWTMrwXjAVw6CNUlmnFm2AzvBrmyVnTuMuIMn
X-Google-Smtp-Source: AGHT+IH1of5JCJj7WeoYn4m6vcb17J0Q8rgcFaFKIrQN+s0d8RVVl49J3p38r8K1iq7Ch0YroXdoDw==
X-Received: by 2002:a17:90b:5804:b0:34a:48ff:694 with SMTP id 98e67ed59e1d1-34e921cd498mr24171654a91.31.1767012549679;
        Mon, 29 Dec 2025 04:49:09 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.185.128.90])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-34e70d4f7e2sm30323942a91.2.2025.12.29.04.49.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 04:49:09 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Mon, 29 Dec 2025 12:49:00 +0000
Subject: [PATCH] dt-bindings: mtd: microchip,mchp23k256: convert to DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251229-nxp-v1-1-a415fe0080a8@gmail.com>
X-B4-Tracking: v=1; b=H4sIALt4UmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDIyNL3byKAl1TI7NUI8uURMs0I0sloMqCotS0zAqwKdGxtbUAs5OiLFU
 AAAA=
X-Change-ID: 20251229-nxp-526e29da9f29
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3

Convert Microchip 23K256 SPI SRAM MTD driver binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/mtd/microchip,mchp23k256.txt          | 18 -------
 .../bindings/mtd/microchip,mchp23k256.yaml         | 58 ++++++++++++++++++++++
 2 files changed, 58 insertions(+), 18 deletions(-)

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
index 000000000000..e6cdfa5f0808
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/microchip,mchp23k256.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/microchip,mchp23k256.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip 23K256 (and similar) SPI SRAM MTD driver
+
+maintainers:
+  - Richard Weinberger <richard@nod.at>
+
+description: |
+  Driver for Microchip 23K256 and compatible (e.g. 23LCV1024) serial SRAM devices
+  accessed via SPI. The device exposes the SRAM as an MTD device and supports
+  optional partitioning via child nodes.
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
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+required:
+  - reg
+  - compatible
+  - "#address-cells"
+  - "#size-cells"
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
+            #address-cells = <1>;
+            #size-cells = <1>;
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


