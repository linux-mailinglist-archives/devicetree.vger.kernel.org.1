Return-Path: <devicetree+bounces-272490-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMgZC+9VrGlvowEAu9opvQ
	(envelope-from <devicetree+bounces-272490-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 17:44:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 820DA22CB78
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 17:44:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E8DCF3023522
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 16:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 298993A640F;
	Sat,  7 Mar 2026 16:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LVLJIhKS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF41830FC34
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 16:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772901846; cv=none; b=UTxIaW89mIAM29oEMztUkJE+IJllkZtyEYvl7KyrX86HZDPFtm6yGovWunOSJMeACLn8xtdhxALh1x4C0CMnZbgC9Sm+QQP7kBpFmRbcB9CcuBTniWZp//zyr0AzXcfGxk97pXoJRZ2CX6Ungg6qvFZRzEW/pV+enEoe96gsuYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772901846; c=relaxed/simple;
	bh=CQg0toMSFYq6yF8AaEclHF2YkRSPj5ekBKstEk9cOSY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=EcRdCkjiyJVMQbpGrj/5TLwuRPx308Yg/LcIE1aUmGQoiJVecpXTOC6R/Lb2Na2t9meRUC0o72cZhe+anQmiDFC/X9ijF0FmhFedQS+LMXLCK937IOqd1askOJ1GpniUbHkngmJfQVNI5L07g+vfdAID2MUy71HJkmZ42s4FmUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LVLJIhKS; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-358ed696623so4271877a91.0
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 08:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772901844; x=1773506644; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=exLZd+GeOjjoDlmDFTtKZ0DsTRh93LFRdOVuSHV1/eE=;
        b=LVLJIhKS5ewMArXiLW6SaFQedEu9Z0tE37AIo9fwN6yHq+Ro7JDvIlvQUVUISx1Bu8
         WB7PN3/tdjWTnYHrLDoGd93WyA1y9FHnZR7PTC+CmcTZQwCsi+XrTOqbqtLf7hf/N3Ay
         C2GonockUN/x7RuTqf8vIEa3IrTWg71SFVR+wdZq07xZY2nG5QACU2GAR+3BqQ4NI/kG
         ViHWkCwelaJoCCpd1QExz/MEpXdnkwJRXEBALI6sZ/KIfCT+iSELFgc/ZhpwaxhB/M6s
         eFqfeFqv7haaWbAUbPad00bhNsSo1iNi09ps658OVnw6qoFLaSnpfEsVFcPCo08DYt1H
         eECA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772901844; x=1773506644;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=exLZd+GeOjjoDlmDFTtKZ0DsTRh93LFRdOVuSHV1/eE=;
        b=NWFYIe039NQDMlyGGcGn5hh3pFXURPZ/lrB6/mEz4u0ieN4Uo3mz7jrXuO3f0WEEMR
         /Dmj0IT0tw+AEKSNn2wsf5QQoaQJ4Vda+6wbTtfTYEy7D6Z/wLqXDhMOiwSWJ+7IYIVR
         VH8Kjf/e/h7KjXBYzTbIbYLqbBWa+Y+4topaBbgZ7hyyx12ws+SoT4FuY0cr9K1A8Gx+
         JTvJMxdf1JQFk/v6usfMBfUchl562H4f7R0YBwK541qahpsUWlVKJ/cXkNG0mbYDS/Da
         z7vBnk6PWPDD2a5Ut+elJnb+9CvsG3PKqFr7CO0hCnBXot9NumXuWS1UOPL1gZcxGQfv
         Ek9A==
X-Forwarded-Encrypted: i=1; AJvYcCWVFH44d0Fi80SycMoUwxZsI9OGLT/gQ3j94JJ0N4I7ubd7RqXTqmnGsRW8kTL56v95SCrjoqmA7NUv@vger.kernel.org
X-Gm-Message-State: AOJu0YzP8BT7n516W2meG0NryNB5lcZ1+4Lc6c03qU7HZDxsZgQAuoHB
	Am+LcEGRIImQDMxEICElMndWNo41LdMSA9BEWxjqILD14aRp0BrLhe4i
X-Gm-Gg: ATEYQzzrxCZB9Xt7AIDrWTWf5N0Vh3bCIY7Zj+kULbWHGXcNOkq5dmaVWWhjsuKGnVq
	K2dGHtxfTZKGmV6crzewlKuLX8Hw58R0a4oAVP7t3RcwKqg1g3SdODgpJg//zfPd8Mqy6JdTJkt
	lBs6r53dVWgeDZaSI9D+kxQI7JZWbVof643wvgWbmGxiILNy6WhWbvPrDADRTC9DJZvujVnZiiW
	L7suBSaeCiaUeofro/YLcj3hirwIOeOmW0Nyo0GzjubHm6FFMP9F6tWrHz3PHuV1wFOePu3XiEy
	0TeHXajJi2QqZminq75S0vY3O4d1q3DcEsoCh9B6nCDRswA5CsqaNaKoWSCrEmZZTbz5gO4DYAL
	UDHa9Qu8NVGH6LKQF6l3w6mm1AcJSaQ5jkcHWAuZpKPIW1JAEQv+idOuen56IJ5hCAG/ppYV/K+
	aBcMBaTG0ubxh2Mzk4MtbH3WjxN4+i2ug0LrvyYefx2NjKJ+E0lwjP
X-Received: by 2002:a17:90b:3cc3:b0:359:8c21:ef46 with SMTP id 98e67ed59e1d1-359be2cbeb0mr5198014a91.13.1772901844258;
        Sat, 07 Mar 2026 08:44:04 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([157.50.205.238])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-359c003bd46sm5434460a91.4.2026.03.07.08.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 08:44:03 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Sat, 07 Mar 2026 16:43:56 +0000
Subject: [PATCH] dt-bindings: mtd: hisilicon,504-nfc: convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260307-hisi504-1-v1-1-8bf9a186faf2@gmail.com>
X-B4-Tracking: v=1; b=H4sIAMtVrGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDYwMz3QygElMDE11D3RTzxEQDy2RzgxRLYyWg+oKi1LTMCrBZ0bG1tQC
 YED75WwAAAA==
X-Change-ID: 20260306-hisi504-1-d7aa09c70d93
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 820DA22CB78
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272490-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[0.61.87.32:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.981];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,bootlin.com:email,nod.at:email]
X-Rspamd-Action: no action

Convert Hisilicon Hip04 Soc NAND controller DT binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../devicetree/bindings/mtd/hisilicon,504-nfc.yaml | 90 ++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/hisilicon,504-nfc.yaml b/Documentation/devicetree/bindings/mtd/hisilicon,504-nfc.yaml
new file mode 100644
index 000000000000..805ef0af0e04
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/hisilicon,504-nfc.yaml
@@ -0,0 +1,90 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/hisilicon,504-nfc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: HiSilicon Hip04 NAND Flash Controller
+
+maintainers:
+  - Miquel Raynal <miquel.raynal@bootlin.com>
+  - Richard Weinberger <richard@nod.at>
+
+description:
+  The HiSilicon 504 NFC is a NAND flash memory controller used in the
+  Hip04 SoC. It supports hardware ECC for NAND devices and provides
+  register and buffer regions for NAND operations.
+
+allOf:
+  - $ref: nand-controller.yaml#
+
+properties:
+  compatible:
+    const: hisilicon,504-nfc
+
+  reg:
+    minItems: 2
+    maxItems: 2
+
+  interrupts:
+    maxItems: 1
+
+  nand-bus-width:
+    enum: [8, 16]
+
+  nand-ecc-mode:
+    enum:
+      - none
+      - hw
+
+  nand-ecc-strength:
+    const: 16
+
+  nand-ecc-step-size:
+    const: 1024
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  partitions:
+    $ref: /schemas/mtd/partitions/fixed-partitions.yaml#
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - nand-bus-width
+  - nand-ecc-mode
+  - "#address-cells"
+  - "#size-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    nand-controller@4020000 {
+        compatible = "hisilicon,504-nfc";
+        reg = <0x04020000 0x10000>, <0x05000000 0x1000>;
+        interrupts = <0 379 4>;
+        nand-bus-width = <8>;
+        nand-ecc-mode = "hw";
+        nand-ecc-strength = <16>;
+        nand-ecc-step-size = <1024>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        partitions {
+             compatible = "fixed-partitions";
+             #address-cells = <1>;
+             #size-cells = <1>;
+
+             partition@0 {
+                 label = "nand_text";
+                 reg = <0x0 0x400000>;
+            };
+        };
+    };
+...

---
base-commit: d4906ae14a5f136ceb671bb14cedbf13fa560da6
change-id: 20260306-hisi504-1-d7aa09c70d93

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


