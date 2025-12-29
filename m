Return-Path: <devicetree+bounces-250237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D76ECE723A
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 15:56:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6924A3009824
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 14:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C21332A3F1;
	Mon, 29 Dec 2025 14:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="izqPmlmE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2A25329E72
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 14:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767020136; cv=none; b=XBZ76EsprShRwY+mo+TObG/NDiYyFGGcFT5HKOe1xXMIefq1ct3TmfLYB0qp+ImUIfZd6xPB6PSpHWPIsjp/VPCUPMX5Wo3QbWvoxFMRPK+mB070UDPZfnxH8z8eMRgkwHGN+7o+Kj7LyLQxSjMXmRDBnnIkekVQVxnfq9dYLGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767020136; c=relaxed/simple;
	bh=OGLBdBSIOl/MhJ8GSEViWbYQdr4diYSrviffLN6Oxk0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=WOJoFrCpnd2qfnzeuhAfqIbyaAKs4W2lKCOMpXwqCXmcdoDqpLADaOB5BYwrRavl5CfsL+DG+/sdQPafQcxMBfbRJ0xSvLNDo11BHzKNoeu3/XyqkX+bnfomtli0GvdIP1i2g7IkMU5DEN84PpXAyzQi8dCytZWrBqW2BccDeCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=izqPmlmE; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a1388cdac3so85129625ad.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 06:55:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767020134; x=1767624934; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c3Rvbx0SUF5LIMmW++u/8q0FjAyi1zNAmH9287WODhQ=;
        b=izqPmlmEHvyn9HWRMDH8n77K9Ukov1uXGlItCxTG8sNg5l688Jmr5CjVwK3VoiHnuX
         M14RTEVl3wYbruzxYME1OnIMdaItSr6gggI8df5DGsLH/5KoyghKIW7inOedm39W83pf
         OkwIZt0sZRnAOkfKfpkkWNAm4BAn1a1S88ZKR1/kNvFEq3r1GHhRAVxxdWhf8joRHBwK
         rePuL+24J4rqPpcOg2XUO7SeUUEFXaC1WwVS1D3Uj3xQZgQWtmWiqlb4WXHd2gu6413r
         SIsN4Xz9Poaf5b+vgJy45KJ0icF4jzHEbOmKa6oJKDI1eg5nHBt2Zu119Nvd0XubV+Ci
         bM8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767020134; x=1767624934;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c3Rvbx0SUF5LIMmW++u/8q0FjAyi1zNAmH9287WODhQ=;
        b=gY/HhzaFxI/r0l4ISM23COIuehpJ9/E3Di4aVPyxR/W9D3h5OtKMlLPGzoWHSGa8o3
         EkQhqENua6TePuOdJHcn2K+8m83VzXX/892716IRhjm+vtqIHpf/SSX13IOT9I1iL6Fq
         FYAlMvhe3+y5migSyFbZNxesAmt2D8E+SDQxugQ8uLGhyPgY+29LfDueMq0sJ0lJF2QS
         6dzaUnXjKKzS9VW8qQG/iLzmVtPVh8azvzzY+JJTcNdiG8dZNFRMB8tRdXWdgEfEZLTJ
         AwtzecE00PCgeQnWQxijJ+9jXs/WlpYuF+N/8wqe/D06rPMu9yNYLfutaTQotV9GVW7N
         DxXg==
X-Forwarded-Encrypted: i=1; AJvYcCVTzGlo4wfON5SQMFzhuCvfCRI0V+UIDrNlx6zHB8WbtFjqIqSq8teplmNwXS2O7roO7X7DV3Lb7iUy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6JXzAxTrxKPMPDYx47ROycrz9CsVKu3yw/JlnKJuFGV0SJh1G
	6gsZgCJi+PXvyKn+yB2u/h9Ct7dHzp5mQHRoKmmpsPORMcQ1ZkTkkUCS
X-Gm-Gg: AY/fxX61AI+YFIMh2eQq/FPeLBYQFnUAKFYUlxWSoeK5qYsu/qtrUH37I+2TOgAQ/hA
	vyE0wZw5eViL0VlQ0khySNdXeVjn3jv/OkWHgmOvUWyiXIDag+s62t9WEUr7gPfAoBsRlWl99dg
	Hfy7Vkq1BIQyA/rrwVnimh0TPselnwRsnPmoX4ZxunFMKYQ+A0XZtQBL4hN3dzHjyuuXeIKhZqA
	C12wBgMsHH8nDVDStK5ppoW4Iern/tHvUWUn6mwNrpZorPNcP9jUvT9TVrMYpQjdVi+oN+trfrB
	7YuAJUIWu2AkV0vpGG1s+6pvQh8DJpc0qBXEGhNqPy68DRXMltvBqPRF6zMszYTPqVEwb+WeSrx
	CsBVM20WE34GrxsNeXGctQURmVba4PauHWkjjWw8yJFph/IOQQPCHilOJRaH54/e5cYQJBHl/UK
	hynWaXQZrCuX/CtQ8aSXMeddC0rUF0D2ey
X-Google-Smtp-Source: AGHT+IHCF/iIi9x1kfokHvV7XRjScNJIW1j4ikCcQAyZ1AHZ+5mJnfca+Vk/PMrdq42tlxFbIXPYAg==
X-Received: by 2002:a17:903:ac4:b0:2a0:d5bf:b27c with SMTP id d9443c01a7336-2a2f2a4f768mr268011635ad.45.1767020133688;
        Mon, 29 Dec 2025 06:55:33 -0800 (PST)
Received: from Black-Pearl.localdomain ([122.164.226.1])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3d76ceesm279217045ad.91.2025.12.29.06.55.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 06:55:33 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Mon, 29 Dec 2025 14:31:12 +0000
Subject: [PATCH v2] dt-bindings: mtd: nvidia,tegra20-nand: convert to DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251229-nvidia-nand-v2-1-b697d9724b0b@gmail.com>
X-B4-Tracking: v=1; b=H4sIAK+QUmkC/1XMQQrCMBCF4auUWRvJjNFWV95DuojJ2A7YVBIJS
 sndjcWNy//B+xZIHIUTnJoFImdJMocatGnAjTYMrMTXBtK0R42oQhYvVgUbvNJknGstd1dtoT4
 ekW/yWrVLX3uU9Jzje8Uzftefs9N/TkaFqj2gYTTU0ZHOw2TlvnXzBH0p5QNygrCHpgAAAA==
X-Change-ID: 20251011-nvidia-nand-024cc7ae8b0a
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Stefan Agner <stefan@agner.ch>, 
 Lucas Stach <dev@lynxeye.de>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3

Convert NVIDIA Tegra NAND Flash Controller binding to YAML format.
Changes during Conversion:
- Define new properties `power-domains` and `operating-points-v2`
  because the existing in tree DTS uses them.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
Changes in v2:
- Edited the commit description to match the updated changes.
- Modified the description for the YAML.
- Removed all the duplicated properties, defined a proper ref for both parent
  and child nodes.
- Removed unnecessary properties from the required following the old
  text binding.
- Link to v1: https://lore.kernel.org/r/20251030-nvidia-nand-v1-1-7614e1428292@gmail.com
---
 .../bindings/mtd/nvidia,tegra20-nand.yaml          | 107 +++++++++++++++++++++
 .../bindings/mtd/nvidia-tegra20-nand.txt           |  64 ------------
 2 files changed, 107 insertions(+), 64 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/nvidia,tegra20-nand.yaml b/Documentation/devicetree/bindings/mtd/nvidia,tegra20-nand.yaml
new file mode 100644
index 000000000000..f34eaad67e11
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/nvidia,tegra20-nand.yaml
@@ -0,0 +1,107 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/nvidia,tegra20-nand.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NVIDIA Tegra NAND Flash Controller
+
+maintainers:
+  - Jonathan Hunter <jonathanh@nvidia.com>
+
+allOf:
+  - $ref: nand-controller.yaml
+
+description:
+  The NVIDIA NAND controller provides an interface between NVIDIA SoCs
+  and raw NAND flash devices. It supports standard NAND operations,
+  hardware-assisted ECC, OOB data access, and DMA transfers, and
+  integrates with the Linux MTD NAND subsystem for reliable flash management.
+
+properties:
+  compatible:
+    const: nvidia,tegra20-nand
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: nand
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: nand
+
+  power-domains:
+    maxItems: 1
+
+  operating-points-v2:
+    maxItems: 1
+
+patternProperties:
+  "^nand@[0-5]$":
+    type: object
+    description: Individual NAND chip connected to the NAND controller
+    $ref: raw-nand-chip.yaml#
+
+    patternProperties:
+      "^partition@[0-9a-f]+$":
+        description:
+          Optional MTD partitions for the NAND chip, as defined in mtd.yaml
+        $ref: mtd.yaml#
+
+    required:
+      - reg
+
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/tegra20-car.h>
+    #include <dt-bindings/gpio/tegra-gpio.h>
+
+    nand-controller@70008000 {
+        compatible = "nvidia,tegra20-nand";
+        reg = <0x70008000 0x100>;
+        interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&tegra_car TEGRA20_CLK_NDFLASH>;
+        clock-names = "nand";
+        resets = <&tegra_car 13>;
+        reset-names = "nand";
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        nand@0 {
+            reg = <0>;
+            #address-cells = <1>;
+            #size-cells = <1>;
+            nand-bus-width = <8>;
+            nand-on-flash-bbt;
+            nand-ecc-algo = "bch";
+            nand-ecc-strength = <8>;
+            wp-gpios = <&gpio TEGRA_GPIO(S, 0) GPIO_ACTIVE_LOW>;
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/mtd/nvidia-tegra20-nand.txt b/Documentation/devicetree/bindings/mtd/nvidia-tegra20-nand.txt
deleted file mode 100644
index 4a00ec2b2540..000000000000
--- a/Documentation/devicetree/bindings/mtd/nvidia-tegra20-nand.txt
+++ /dev/null
@@ -1,64 +0,0 @@
-NVIDIA Tegra NAND Flash controller
-
-Required properties:
-- compatible: Must be one of:
-  - "nvidia,tegra20-nand"
-- reg: MMIO address range
-- interrupts: interrupt output of the NFC controller
-- clocks: Must contain an entry for each entry in clock-names.
-  See ../clocks/clock-bindings.txt for details.
-- clock-names: Must include the following entries:
-  - nand
-- resets: Must contain an entry for each entry in reset-names.
-  See ../reset/reset.txt for details.
-- reset-names: Must include the following entries:
-  - nand
-
-Optional children nodes:
-Individual NAND chips are children of the NAND controller node. Currently
-only one NAND chip supported.
-
-Required children node properties:
-- reg: An integer ranging from 1 to 6 representing the CS line to use.
-
-Optional children node properties:
-- nand-ecc-mode: String, operation mode of the NAND ecc mode. Currently only
-		 "hw" is supported.
-- nand-ecc-algo: string, algorithm of NAND ECC.
-		 Supported values with "hw" ECC mode are: "rs", "bch".
-- nand-bus-width : See nand-controller.yaml
-- nand-on-flash-bbt: See nand-controller.yaml
-- nand-ecc-strength: integer representing the number of bits to correct
-		     per ECC step (always 512). Supported strength using HW ECC
-		     modes are:
-		     - RS: 4, 6, 8
-		     - BCH: 4, 8, 14, 16
-- nand-ecc-maximize: See nand-controller.yaml
-- nand-is-boot-medium: Makes sure only ECC strengths supported by the boot ROM
-		       are chosen.
-- wp-gpios: GPIO specifier for the write protect pin.
-
-Optional child node of NAND chip nodes:
-Partitions: see mtd.yaml
-
-  Example:
-	nand-controller@70008000 {
-		compatible = "nvidia,tegra20-nand";
-		reg = <0x70008000 0x100>;
-		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&tegra_car TEGRA20_CLK_NDFLASH>;
-		clock-names = "nand";
-		resets = <&tegra_car 13>;
-		reset-names = "nand";
-
-		nand@0 {
-			reg = <0>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			nand-bus-width = <8>;
-			nand-on-flash-bbt;
-			nand-ecc-algo = "bch";
-			nand-ecc-strength = <8>;
-			wp-gpios = <&gpio TEGRA_GPIO(S, 0) GPIO_ACTIVE_LOW>;
-		};
-	};

---
base-commit: 43edce71d70c603d3f3f1b1c886f65cd02d80c24
change-id: 20251011-nvidia-nand-024cc7ae8b0a

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>


