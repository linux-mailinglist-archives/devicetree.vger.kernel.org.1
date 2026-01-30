Return-Path: <devicetree+bounces-261299-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MB1+JWbrfGmdPQIAu9opvQ
	(envelope-from <devicetree+bounces-261299-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 18:33:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 117C3BD41C
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 18:33:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EE960300B877
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 17:33:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 315C5364040;
	Fri, 30 Jan 2026 17:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Lb0620+b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62B3364028
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 17:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769794404; cv=none; b=JjDxB1+WGDO27Y/TciMGika1YPgohdhmr1nA48Gf5aCV539sfKSjp4EAyD3rvq1gpVhfQzdzJ3umCVwnD01pn60sctcaNVMcWJHV5SEp89nEM92BjYI3dR2awKMKYi/BMaOc9czv8e2/Vcn0i0qQJLxKM6geIr13kHGviFs15WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769794404; c=relaxed/simple;
	bh=kQVuUgbt2ozvCbKdJn7tDwqs9Letf6gSbigdyyJxZyM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bgxbA1+Osc5+uEYbDNAMo4RxnutJNhqxrQFoDudrxC7cMJXCAvP/F4CI9uKmzniKE84wO1LFdEiLFa1XF8aYRuVle5XjCGAZQWahxbTGAfQZ46pj37Ka3N7XsbL5NSoFg7X772VIFn5xsTb/1/wyKo/dId/CSY/FWqcfRVAoTCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Lb0620+b; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2a09d981507so17268025ad.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769794402; x=1770399202; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GFr2zqCvYMkzUxl5+vLx5OGto1Kl2Kpg4MiPy8HCJU8=;
        b=Lb0620+bfCZxqni0+XW0Ht63EvkFY2lSCw4Z+FsE2tOlalA+fKhwZdjN8AdhOBCLMX
         GQOpKdBsyl/3sK6PopXBwf2sH6hgUgs9ZaHgB8cfxY64QR+P6kIaxOCVuTO+R/RPzBaa
         7x7ENARzipinrKDdWZxjm/fzQbAkajydiH5nGqvL1+jO34clNl3vFGbVCNRD1XbGwdgI
         JyCf84Xc8ioNBUr0jAO+DiOa1TsJM4syOBMLwHih98by6YLtEpCIDgZdRQaIx2Ypj9ur
         rsJUcagx39MjDWTg/XSNo9zmwXdZNjuLUk2P0CFYBIpycv/cQwCVPZ1Atup1MNPtCnaA
         elxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769794402; x=1770399202;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GFr2zqCvYMkzUxl5+vLx5OGto1Kl2Kpg4MiPy8HCJU8=;
        b=qMCF5YVBfqRF6nD5u6vJ7mQUCEd3UW2u5ef4UXkx3c7CgPbW5ZW6ARd9fMrW7P9UUt
         B5Ay3lNauvabc/5eiupZrCJsAb1FwmvWMD+kFFZlSXd84Z0z+Ohdd1bsUvAUaPsPtPfM
         DrOguAj04Gp3tnNOvoRfxqH9rXT19xbz1aw+s5ij1bhUuy705wngiAkS4hOBg7yiAC4K
         AppxHAml41hhEAGx/gHvxb2WcYLKROsZ2q7xbrtCF0O1Fpk2n0N26uXS1imsgk0UkKGy
         Ukc4RpP6YVvrewT7TIXuXgKd1Vz4tf1qaGKQvutd5qsPeqzQ70OcOX9UFYSar5xvoXGn
         ky0Q==
X-Forwarded-Encrypted: i=1; AJvYcCW0kQO/v9650B4QR5ReV6OUj3QCd6QJ5ligpmg54uCKO9AcjfM5FDGOGAfIb/vutvefQcFRXoD+M1QB@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1vky1fu6Yggp74sVuD1qNNmYGGKM7eDIWpEL1ouhimTij2zOK
	lijSHTKnfp8Z/nFvWs+sx/NycEtDD79CPKVumLVWrsMV5tcMEFc/Baem
X-Gm-Gg: AZuq6aJzXiEjajlDaCcNWyXEdHFB3mF9E2KFmM09qc35sLkjKeMeaV9CVIaSVIL4Rig
	6URdwixlXhbI9b6EjhwCHTt4Ko0aZTgqPhINJ8ECD19TmqmCTRtjhCeEQHW0kN3WT2qHDVuSc7E
	EDbg79ync7XgmBO3uaxU0g7pDJ88U7LdKcg8LLvPC3jSchV95DD3JU9XYThsXFMQaTy8yBbMhHK
	FfRr1JxO9uz2/tNGW8qrpy+gm6T1Mj03vckrvhuSfOVwBYMOLgo/jEPA7r55jm18TyGtm5b/ujA
	u4czwH55Ol7HuneqzlxfD0GQO+wVn0xSi/TH482bs/7CI0fq59KyVYCL3T35WvOEMkwgZS2w36H
	ouzkMPYWouNFnfTyHbQIhw7sIpSGSOptrCWDsqXu0wEj0VZKx/P7anJDIXhBZlXlqgG2lZKOycs
	fclE1S2sztb5wEnQTTbw==
X-Received: by 2002:a17:903:283:b0:2a0:7f8b:c0cb with SMTP id d9443c01a7336-2a8d96cb4c0mr40982605ad.4.1769794401744;
        Fri, 30 Jan 2026 09:33:21 -0800 (PST)
Received: from fedora ([2401:4900:88bb:affb:d123:d77f:d55f:ab1d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b5d9a70sm83046055ad.77.2026.01.30.09.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 09:33:21 -0800 (PST)
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
Subject: [PATCH v2] media: dt-bindings: fsl,imx6q-mlb150: Fix clock-names schema
Date: Fri, 30 Jan 2026 23:03:02 +0530
Message-ID: <20260130173302.281984-1-harshdaniel66356@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261299-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url,e6050000:email]
X-Rspamd-Queue-Id: 117C3BD41C
X-Rspamd-Action: no action

From: Harsh Daniel <harshdaniel66356@gmail.com>

The error was due to minItems and maxItems defined twice 
in file fsl,imx6q-mlb150.yaml. It was defined both in clocks and
clock-names.

I've removed minItems and maxItems from clock-names and 
run "make dt_binding_check" and yamllint to check for errors in
all three created files.

Signed-off-by: Harsh Daniel <harshdaniel66356@gmail.com>
---
 .../bindings/media/fsl,imx6q-mlb150.yaml      | 71 +++++++++++++++++++
 .../bindings/media/renesas,mlp.yaml           | 65 +++++++++++++++++
 .../media/xilinx/xlnx,axi4-os62420.yaml       | 60 ++++++++++++++++
 MAINTAINERS                                   |  3 +
 4 files changed, 199 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/fsl,imx6q-mlb150.yaml
 create mode 100644 Documentation/devicetree/bindings/media/renesas,mlp.yaml
 create mode 100644 Documentation/devicetree/bindings/media/xilinx/xlnx,axi4-os62420.yaml

diff --git a/Documentation/devicetree/bindings/media/fsl,imx6q-mlb150.yaml b/Documentation/devicetree/bindings/media/fsl,imx6q-mlb150.yaml
new file mode 100644
index 000000000000..b4e538cdb8cc
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/fsl,imx6q-mlb150.yaml
@@ -0,0 +1,71 @@
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


