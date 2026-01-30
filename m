Return-Path: <devicetree+bounces-261242-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AArSN/S8fGlVOgIAu9opvQ
	(envelope-from <devicetree+bounces-261242-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 15:15:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 759EFBB805
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 15:15:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A412E300E25D
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FBF2302CAB;
	Fri, 30 Jan 2026 14:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CfaJBIK/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD56230F808
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 14:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769782502; cv=none; b=ssORaRfND2YyNgmtSzEofPKGKbMjaV8b1mVkYdZGGLTDp0rdzmmG9O9PKfNs2svOzuZ92uhObAveTGxJm6gcUmwGO7pdhlXFdHuStgTDeARxGq6LOGktIN/ZaGY+QpJpul1cRqSdk0DLscCPlo1JAdJ70z764cRJuqCGSmMv6dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769782502; c=relaxed/simple;
	bh=ZQNLiLUufyo5YCPAJ7rq/9+z0iR/t+atuR1eiajnQxE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pTIf8sANjoZMm6FrGWvf5vFlC9HDLBHFIANTF1p9kGz5nBOHXhH0/JCqLjz3JgMuAY8jkmHllQFg0N0sMDhdKdXAhHPB7DnUMbHFPgy7RD2hq9Zd0VKzfyfuFlst+Q725zehjb1ErliN5XQF4OMtDnJRKdsXzo7K95nO57bN7XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CfaJBIK/; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-29f102b013fso21407555ad.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 06:15:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769782500; x=1770387300; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uQK1I5Ac6NF6GP/+rHIsUY33ZO05kpOE1J5MiW6DuqE=;
        b=CfaJBIK/cAbF6dtHrW5+QvhShOCxBVj11mLvprobk5/J8CyAim5dlIrlZNry+RJdls
         KfyJoRKfVbTnp2F7jfXcDS6kG5FfKbDXDRSGVyfdNpD/MHdxaNZU/LZuHjhCGFjsukiT
         XeaDIRHc/elku03qQtpCPJOde1o1nsJ3HZpcRRJO799Z6nYXLCYtwSVH92xNDmeQuXXX
         Gi7Gkqr6pWiztRedH+qwwzI4OzjxR3qm4CN0AsAUpC+GcIZSeeqtpyrukXfUY7zJmptd
         EJ2qTeGyHF2UWGUWAeIVMLxtLL5aevwE34nlLuRrwy68v1XHXjbf4+gdE7VuJndDpeBO
         P4ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769782500; x=1770387300;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uQK1I5Ac6NF6GP/+rHIsUY33ZO05kpOE1J5MiW6DuqE=;
        b=H9hn/BO4Qf0waArRckruQMpk1BgmDig/u7gQKrGMk/scjsINNvN46oXDpDLYU8VfsI
         yUkBkj3FaaNFc43n4RFcbtML/PDaJ/c635m82gyK0yhzlbVPlEgNwOnD6pf1ztyPeY9k
         Ce2G0OSlGlve2q6yBRbXX7I+3NE7MiY8O3Muxc5YgqbhPiimaZSg7OU2nfCnfpg/C0fv
         Re0yR6IMsCAO9gPs0xnXMJMEKXLH31U18SaRlOEWaxYnoU5TOWiuZx7sA8vF90oEYh1h
         RCzeVtfZxQeNXQmygG9qoH/NE5VfAOnCePPAeoVOVMlGl6QiQVtDUCpz7rVLCMZYLxI7
         znSA==
X-Forwarded-Encrypted: i=1; AJvYcCUPAwHoA7DsHPv404MbqsKzAgjP/P5FlC9q/MX0rnlI80D4+p2sZzRcVc3hTlVfSIORyEPP50I++5q+@vger.kernel.org
X-Gm-Message-State: AOJu0YylARWBndrjlLMd7bhlgslmRxfBPDsZvx4vbC1M6sBU4jgom/MB
	p0IqChDl5UdUz00A7pCxnPyTnLlFh+fpnPl8AFs4wy1lm2FIHv7HKYjJ
X-Gm-Gg: AZuq6aIIfbj5Zw3rfmLae8ua14cLMEnkWdDlTM/ajlgVdc0i+oaMSdBWNvjcEw/XM2r
	vRoVZVnm+vBvUKgvz9mPZvNdwncdOXEWekO/Nt7BDyihTdtR5WQZSEp6lkU7iLNVIVdiRM586Sl
	r/Wftgt/0rzDNkPpfZfkqpEZKbA7JTi4BVf7XNidTOCjandyD1V3fzGVHY6UcmdJ6HF7cstC+OP
	87LKQK+gAROW3iV/NUBBqrHL2oFz+0pswey72ipu7zcRjoleOgguYRdtNBHVe7eWBDI0fmTLTmf
	sCSd9ipOxmU6tD9F1gkGUF+KTyh4HDK2PxpseCOIQyf6YFz23Cuxqz01Upimg5Vk/2UIq+hli3B
	1Vif6M0c/ZeLkieWj7WJUQJYqNa5aKYMrHq7u02uXGZ4CnPuz9sMDP3eORZuY6wk44mFbWTdOJ2
	oK3XjnWA5M9+45duYDdQ==
X-Received: by 2002:a17:902:d2cd:b0:2a0:c1f6:6bc2 with SMTP id d9443c01a7336-2a8d9a62841mr29266825ad.59.1769782499842;
        Fri, 30 Jan 2026 06:14:59 -0800 (PST)
Received: from fedora ([2401:4900:88bb:affb:d123:d77f:d55f:ab1d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b3eecc5sm81195155ad.17.2026.01.30.06.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 06:14:59 -0800 (PST)
From: harshdaniel66356@gmail.com
To: parthiban.veerasooran@microchip.com,
	christian.gromm@microchip.com,
	gregkh@linuxfoundation.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-staging@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Harsh Daniel <harshdaniel66356@gmail.com>
Subject: [PATCH] dt-bindings: media: Add bindings for dim2 compatible strings.
Date: Fri, 30 Jan 2026 19:44:42 +0530
Message-ID: <20260130141442.139640-1-harshdaniel66356@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261242-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_NO_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshdaniel66356@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,k2l.de:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,218e000:email]
X-Rspamd-Queue-Id: 759EFBB805
X-Rspamd-Action: no action

From: Harsh Daniel <harshdaniel66356@gmail.com>

Add device tree bindings for the compatible strings used in the
staging/most/dim2 driver to resolve checkpatch warnings:
- fsl,imx6q-mlb150
- renesas,mlp and renesas,rcar-gen3-mlp
- xlnx,axi4-os62420_3pin-1.00.a and xlnx,axi4-os62420_6pin-1.00.a

These bindings document the MediaLB DIM2 module found in Freescale
i.MX6Q, Renesas R-Car, and Xilinx FPGA platforms.

Signed-off-by: Harsh Daniel <harshdaniel66356@gmail.com>
---
 .../bindings/media/fsl,imx6q-mlb150.yaml      | 73 +++++++++++++++++++
 .../bindings/media/renesas,mlp.yaml           | 65 +++++++++++++++++
 .../media/xilinx/xlnx,axi4-os62420.yaml       | 60 +++++++++++++++
 MAINTAINERS                                   |  3 +
 4 files changed, 201 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/fsl,imx6q-mlb150.yaml
 create mode 100644 Documentation/devicetree/bindings/media/renesas,mlp.yaml
 create mode 100644 Documentation/devicetree/bindings/media/xilinx/xlnx,axi4-os62420.yaml

diff --git a/Documentation/devicetree/bindings/media/fsl,imx6q-mlb150.yaml b/Documentation/devicetree/bindings/media/fsl,imx6q-mlb150.yaml
new file mode 100644
index 000000000000..2d0aab3d2286
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/fsl,imx6q-mlb150.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/fsl,imx6q-mlb150.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX6Q MediaLB DIM2 Controller
+
+maintainers:
+  - Andrey Shvetsov <andrey.shvetsov@k2l.de>
+
+description: |
+  MediaLB DIM2 module found in Freescale i.MX6Q SoCs.
+
+properties:
+  compatible:
+    const: fsl,imx6q-mlb150
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: MediaLB Interrupt
+      - description: AHB0 Interrupt
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      - const: mlb
+      - const: pll8_mlb
+
+  microchip,clock-speed:
+    $ref: /schemas/types.yaml#/definitions/string
+    enum:
+      - 256fs
+      - 512fs
+      - 1024fs
+      - 2048fs
+      - 3072fs
+      - 4096fs
+      - 6144fs
+      - 8192fs
+    description: DIM2 clock speed.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - microchip,clock-speed
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    mlb@218e000 {
+        compatible = "fsl,imx6q-mlb150";
+        reg = <0x0218e000 0x4000>;
+        interrupts = <0 150 IRQ_TYPE_LEVEL_HIGH>,
+                     <0 151 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks 1>, <&clks 2>;
+        clock-names = "mlb", "pll8_mlb";
+        microchip,clock-speed = "2048fs";
+    };
diff --git a/Documentation/devicetree/bindings/media/renesas,mlp.yaml b/Documentation/devicetree/bindings/media/renesas,mlp.yaml
new file mode 100644
index 000000000000..dfd9045d87f2
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/renesas,mlp.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/renesas,mlp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas MediaLB DIM2 Controller
+
+maintainers:
+  - Andrey Shvetsov <andrey.shvetsov@k2l.de>
+
+description: |
+  MediaLB DIM2 module found in Renesas R-Car Gen2 and Gen3 SoCs.
+
+properties:
+  compatible:
+    enum:
+      - renesas,mlp
+      - renesas,rcar-gen3-mlp
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: MediaLB Interrupt
+      - description: AHB0 Interrupt
+
+  clocks:
+    maxItems: 1
+
+  microchip,clock-speed:
+    $ref: /schemas/types.yaml#/definitions/string
+    enum:
+      - 256fs
+      - 512fs
+      - 1024fs
+      - 2048fs
+      - 3072fs
+      - 4096fs
+      - 6144fs
+      - 8192fs
+    description: DIM2 clock speed.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - microchip,clock-speed
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    mlp@e6050000 {
+        compatible = "renesas,mlp";
+        reg = <0xe6050000 0x1000>;
+        interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&cpg 123>;
+        microchip,clock-speed = "2048fs";
+    };
diff --git a/Documentation/devicetree/bindings/media/xilinx/xlnx,axi4-os62420.yaml b/Documentation/devicetree/bindings/media/xilinx/xlnx,axi4-os62420.yaml
new file mode 100644
index 000000000000..dd4ac5c6ccf3
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/xilinx/xlnx,axi4-os62420.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/xilinx/xlnx,axi4-os62420.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Xilinx MediaLB DIM2 Controller
+
+maintainers:
+  - Andrey Shvetsov <andrey.shvetsov@k2l.de>
+
+description: |
+  MediaLB DIM2 module found in Xilinx FPGAs.
+
+properties:
+  compatible:
+    enum:
+      - xlnx,axi4-os62420_3pin-1.00.a
+      - xlnx,axi4-os62420_6pin-1.00.a
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: MediaLB Interrupt
+      - description: AHB0 Interrupt
+
+  microchip,clock-speed:
+    $ref: /schemas/types.yaml#/definitions/string
+    enum:
+      - 256fs
+      - 512fs
+      - 1024fs
+      - 2048fs
+      - 3072fs
+      - 4096fs
+      - 6144fs
+      - 8192fs
+    description: DIM2 clock speed.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - microchip,clock-speed
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    dim2@e6050000 {
+        compatible = "xlnx,axi4-os62420_3pin-1.00.a";
+        reg = <0x43c00000 0x10000>;
+        interrupts = <0 144 IRQ_TYPE_LEVEL_HIGH>,
+                     <0 145 IRQ_TYPE_LEVEL_HIGH>;
+        microchip,clock-speed = "2048fs";
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 5b11839cba9d..914693621b3b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17650,6 +17650,9 @@ M:	Christian Gromm <christian.gromm@microchip.com>
 S:	Maintained
 F:	Documentation/ABI/testing/configfs-most
 F:	Documentation/ABI/testing/sysfs-bus-most
+F:	Documentation/devicetree/bindings/media/fsl,imx6q-mlb150.yaml
+F:	Documentation/devicetree/bindings/media/renesas,mlp.yaml
+F:	Documentation/devicetree/bindings/media/xilinx/xlnx,axi4-os62420.yaml
 F:	drivers/most/
 F:	drivers/staging/most/
 F:	include/linux/most.h
-- 
2.52.0


