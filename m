Return-Path: <devicetree+bounces-251032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C328CEE314
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 11:49:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 449F630133A1
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 10:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F28B62DEA87;
	Fri,  2 Jan 2026 10:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RkGDvtvs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552652DCF69
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 10:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767350942; cv=none; b=gWMPW8Q+hWlZ9D0jaTGm+HT6k3QRFm3xexzOokjoizSv/3u4S56xr62eK7in8hYvizuHQkeZekRpogt28hWv4fCRWn48/JetHiXTHD2/PG+rVvtGJjHoBVTps0zmxaKjMO/zegis70wscqdz1z+JZGpCe1hgkNzgFNXHx190wyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767350942; c=relaxed/simple;
	bh=63DHwNyH5TC4sXDqiEu6WX2z7ID4RZUZ+Vw6mpGsqYk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Y/hW+/ltXVRBIEHxDWUI000Avi4rsdaaWUBsobqXjzO5Vug/8NJFS6sk3yQXRIkFTLctSGotv5SpBHRJrBwe/UFKIBaVGnEvnTlnrBfL9wqZC8SEWTE4DL6hEr9nPzAXsUaUjF9dp0QAG0jb+/v4ymFvqBKGWlIImsxzJae3EHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RkGDvtvs; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7e1651ae0d5so9255694b3a.1
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 02:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767350938; x=1767955738; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q6KeTsNq+9OMXZEJM9YqRqOnONqTztwaAzzjanzT7XI=;
        b=RkGDvtvs/vQfs0L+8F29EW84cqcUmOEOuWoRHKak5zRUfiPA5QZMjCyc03QQB69CpS
         Sbbn9FG10x0zrFRaLxrGGlpxWbVkavLPMH7s2pi1mTSeF7DZpF98MK3e2oy5qXjDkMi5
         h/z7XES7Al7e8F7AnBDk0YvLLp58iVgcQvhaHnwuwC8RXc96Nr9xMIhRN1QmsKoeYLd8
         o7qFN9g9Mt3tAiYjsPxm263AF/VW6QO75gDfMiw1zDU8cluY2xklmGgdOB24EunWNmk4
         gMlf535uwqUIAHbmVESlVjR9A72UGzQkyglv2oeZsGS4xS6gSUHsSrglyRxL6lUR8Y0d
         YCjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767350938; x=1767955738;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q6KeTsNq+9OMXZEJM9YqRqOnONqTztwaAzzjanzT7XI=;
        b=Jgf+IzM09QwXnnzQVdU1mvq7QL3pXtae1pM9NacDwYqpT1owbWqO1yin6mFpprcoeV
         ZhCmf5rTzSC+ezbRfOV8SMjIKVfFkt97FvOJAHVAKDiG9xifFgTAPH1WftQnSSly29bG
         RR4pFkOrG47G7QSOjsJDmyeNJeiCKfud2OHrNMIiOcMVxaRXqpCjRt+EPgXOx/ruqPY7
         GpaslykpkuikooB2mW/1DgLuSSe7y9e98HL1qhPgUqLHe54H2gqj2FxE/CjzDkHEmSMU
         D8208tBc/2YLhB6HmbFKEp7YaINwFpI/U1dMXRkl8wvLJRKn7+/uLQy4li3i+5Im50ef
         pgpw==
X-Forwarded-Encrypted: i=1; AJvYcCXnzirAbFzvpCffxLPV68oqEJUcp14DTmFI8b+c0kUk71sPcebpWlZrBG3of2I0PJfa4Yg68gAmOtlk@vger.kernel.org
X-Gm-Message-State: AOJu0YyXa2AEhDwglrCpGRKF25F8kP0iA+OwIvX1XLgIAiVn09XYQXfP
	VIhXG98Wxkxj4tlpJEEuz3vIeqWbneQPXSQm2hQrD1YQbMbC9Q2Sdc+EaWd5O9mZ
X-Gm-Gg: AY/fxX6fkgMz2F4n5vxeUGkAXhidXKyCv32z7SQh1GXvpK30yXPgfPmX29OAgoqdZvH
	fWaY+1rD4tN+Uv8U3oZBSTF1ELlrPEu8ap6Uf/GOpnkVB1SmrNztORQ8uqauDDuSL4HX//dL/SI
	WcDDXUq5L2QVXT7mR4p1d3sO5bodq7rk4Dsfr8qEtC+515kpo1UJyvnJ8I4m75Yiw6m7fDvjEuo
	yRjp+q5zVc5Sl+JpsbMpW4wC9KYU2nAKhho2Qvv7BH9m94N6jIRcoNbRpNvFgZLYHSMCwZt3ffK
	K7ix3HPb1Boqm+UhLUvQ/gOWT3ivaR+LITBN3iGkwugCl2LInonk+ZlPgXXm+tBZG+tWaqSah9g
	b0av9mBWx2ocE3ABIqIv1HO/pWpIBVh2n85s4kEnHZ7gIW1ra0PI3XEgi+LYN8rqzfkBqW+hGUc
	/wM46LnLRkmD1l8zQlgFxh5V9mNmzGTD84bVs12w==
X-Google-Smtp-Source: AGHT+IEDuRRb6f4Nl0WZXl0w8Ingiia4+kt7/z0dRKCuI/YyTkJWMbA69KavlxrqN82xGYL1rWD1FA==
X-Received: by 2002:a05:6a00:3497:b0:7f7:2f82:9904 with SMTP id d2e1a72fcca58-7ff642122ddmr33467525b3a.5.1767350938446;
        Fri, 02 Jan 2026 02:48:58 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.185.129.114])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7e48f30bsm40163878b3a.48.2026.01.02.02.48.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 02:48:58 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Fri, 02 Jan 2026 10:48:50 +0000
Subject: [PATCH v2] dt-bindings: mtd: microchip,mchp23k256: convert to DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260102-nxp-v2-1-05f5dd947459@gmail.com>
X-B4-Tracking: v=1; b=H4sIAJGiV2kC/1WMQQqDMBBFryKzbkoyNMV01XsUF0EnOlATSSRYJ
 HdvdOfyff57OySKTAlezQ6RMicOvgLeGugn60cSPFQGlKgVohF+W4TGJ6EZrHFooD6XSI63s/L
 pKk+c1hB/ZzSrY736WQkl7ENpR1K20rbvcbb8vfdhhq6U8geM7xDhlgAAAA==
X-Change-ID: 20251229-nxp-526e29da9f29
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3

Convert Microchip 23K256 SPI SRAM MTD binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
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
index 000000000000..e928d375ae81
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
+       };
+    };
+...

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251229-nxp-526e29da9f29

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


