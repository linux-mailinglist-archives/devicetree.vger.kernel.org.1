Return-Path: <devicetree+bounces-60687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 373728AA012
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 18:33:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 84F31B23F92
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 16:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9311D17109D;
	Thu, 18 Apr 2024 16:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="0pM5OwHK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7BF24C63A
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 16:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713457956; cv=none; b=HXV0CcvMvTnENvhCrd3WeEEOWF/cuH0pVuiarsZB1p0giUjKIbUpgY06O1EDl0D/E9U8xtrgFqIDPvxZA0axuzS3/LFYrruD8F7HTWffZskbkpCu27qvo7YrTSIULWQsT1PwvARNbwYflXlOVJcUYJwbGkqKR3rJ/NVsckCeA2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713457956; c=relaxed/simple;
	bh=IGp+OOzAhHxhw+8nK+j5PjXm67lL+zDxHTG+9ZvUSlw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WO6w/j0CekNSRP8ZYiRb40zN6r88VNf05jk9Gap0vT/8Fi7iWiMnkVq84ABia2N94znm3slwm6eIZxnZYoyrsAHpFYOqLgRK5zw/LCQayWn395TZJDl/XPo2gOPGbkLJ4zDGgx6kvu8irD8+8RqG7gpc46yOuXkOKPOXJgXjCBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=0pM5OwHK; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-6ecee1f325bso1039449b3a.2
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 09:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713457954; x=1714062754; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hKHomjlJ3NuGLwAXVbIpJSd6+A1IzIiYlZd60O3h98s=;
        b=0pM5OwHKtHqyS2beMrFUeH1XWzdNGc3iQHeMcl3vsUDq72IGZqFYnmn89hiISIIeUG
         BRvU38V2/Bg/7GwTMau7hTBZ2DG+yY4Dz0DU8B0Yk77FiPcWFUUac6opGmZRxD5a8os3
         GqWOXesJWA3Pfn1dChTJolitsK2gyNhRLUypjnN0YORXZgOrBX17159g5kGPkZSOSpg8
         zzdnWpuvyQNUl2+wEG3OevoD873BLtAyLVWi4Quvi27ozyTI3eLFwD0Scd5ZpCGUvVI+
         8FDURkMC3M2vO27LTuvFCSxUfnyDI+wGmVGaMlhE5CAiZDaXJCuDzWdmy3mJfYw4lXkA
         kLHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713457954; x=1714062754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hKHomjlJ3NuGLwAXVbIpJSd6+A1IzIiYlZd60O3h98s=;
        b=wZxwZhmBrDRxV+1Yu82bcA7MJn0sJuT+Q20PKrj9m8PzJ5koPn/6eT5r4PaGzncPlk
         XoeiKSehuUsfl2jlh+/WH3g7n3W7mm5jCbsRwgyxmoQlzS7zHrdmLUB4GpAh+uHrHoEg
         yfJXyk8j+h9PHiqAiUrZ0gzLe6CJVFQIo6MpnDj+/WD4AtOcQvcvaI9cTxffjgNI4HWm
         f76rO03A9HFNuXU4QAiYnzJRC4sl714C3RfaSuDqL4ZyXnLhbufDVElhMQ5Icw5Pp/Ja
         uiVGD/DU9j/LMlRPWmPRB8Ebm2cP/2xJ/Dtsor/DvM8yNAWewBwgMyVkCOQRJol6/jxe
         vvQg==
X-Forwarded-Encrypted: i=1; AJvYcCVNnSrlnRTJ05oCwbm8nwEAydcQ4UpdeKLdVlcd/LbOPdkVmLYSD/5d3NLbr5eByDzhNJo8AX0RQvCju/ApYqctLe5Lc7sAILfW4Q==
X-Gm-Message-State: AOJu0Yw4Av880gjtPdF0gl51rVcVmA75y9hRHv6LJz+hx7uBFKKktb2i
	tisBJvjRSiFD0yu3vL4UUIDnAcXCexfQxdDBVRdZHTfp2rnc74fQZePIwZ6lu0E=
X-Google-Smtp-Source: AGHT+IETJ/+RePAWubrKQEYSPu7UGMbI6oely/TpvD+6gg0h0U5I/LTXn2WS6u6m9UmOkRICiOX0kA==
X-Received: by 2002:a05:6a20:9489:b0:1aa:590a:96d7 with SMTP id hs9-20020a056a20948900b001aa590a96d7mr3900872pzb.53.1713457954247;
        Thu, 18 Apr 2024 09:32:34 -0700 (PDT)
Received: from tjeznach.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id b19-20020a056a000a9300b006eae3aac040sm1674755pfl.31.2024.04.18.09.32.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 09:32:33 -0700 (PDT)
From: Tomasz Jeznach <tjeznach@rivosinc.com>
To: Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Anup Patel <apatel@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Nick Kossifidis <mick@ics.forth.gr>,
	Sebastien Boeuf <seb@rivosinc.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux@rivosinc.com,
	Tomasz Jeznach <tjeznach@rivosinc.com>
Subject: [PATCH v2 1/7] dt-bindings: iommu: riscv: Add bindings for RISC-V IOMMU
Date: Thu, 18 Apr 2024 09:32:19 -0700
Message-Id: <c37cb93e7baa7042a3f82130bf30be6831b558dc.1713456598.git.tjeznach@rivosinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1713456597.git.tjeznach@rivosinc.com>
References: <cover.1713456597.git.tjeznach@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add bindings for the RISC-V IOMMU device drivers.

Co-developed-by: Anup Patel <apatel@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Signed-off-by: Tomasz Jeznach <tjeznach@rivosinc.com>
---
 .../bindings/iommu/riscv,iommu.yaml           | 149 ++++++++++++++++++
 MAINTAINERS                                   |   7 +
 2 files changed, 156 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iommu/riscv,iommu.yaml

diff --git a/Documentation/devicetree/bindings/iommu/riscv,iommu.yaml b/Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
new file mode 100644
index 000000000000..d6522ddd43fa
--- /dev/null
+++ b/Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
@@ -0,0 +1,149 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iommu/riscv,iommu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V IOMMU Architecture Implementation
+
+maintainers:
+  - Tomasz Jeznach <tjeznach@rivosinc.com>
+
+description: |+
+  The RISC-V IOMMU provides memory address translation and isolation for
+  input and output devices, supporting per-device translation context,
+  shared process address spaces including the ATS and PRI components of
+  the PCIe specification, two stage address translation and MSI remapping.
+  It supports identical translation table format to the RISC-V address
+  translation tables with page level access and protection attributes.
+  Hardware uses in-memory command and fault reporting queues with wired
+  interrupt or MSI notifications.
+
+  Visit https://github.com/riscv-non-isa/riscv-iommu for more details.
+
+  For information on assigning RISC-V IOMMU to its peripheral devices,
+  see generic IOMMU bindings.
+
+properties:
+  # For PCIe IOMMU hardware compatible property should contain the vendor
+  # and device ID according to the PCI Bus Binding specification.
+  # Since PCI provides built-in identification methods, compatible is not
+  # actually required. For non-PCIe hardware implementations 'riscv,iommu'
+  # should be specified along with 'reg' property providing MMIO location.
+  compatible:
+    oneOf:
+      - items:
+          - const: riscv,pci-iommu
+          - const: pci1efd,edf1
+      - items:
+          - const: pci1efd,edf1
+      - items:
+          - const: riscv,iommu
+
+  reg:
+    maxItems: 1
+    description:
+      For non-PCI devices this represents base address and size of for the
+      IOMMU memory mapped registers interface.
+      For PCI IOMMU hardware implementation this should represent an address
+      of the IOMMU, as defined in the PCI Bus Binding reference. The reg
+      property is a five-cell address encoded as (phys.hi phys.mid phys.lo
+      size.hi size.lo), where phys.hi should contain the device's BDF as
+      0b00000000 bbbbbbbb dddddfff 00000000. The other cells should be zero.
+
+  '#iommu-cells':
+    const: 1
+    description:
+      Has to be one. The single cell describes the requester id emitted
+      by a master to the IOMMU.
+
+  interrupts:
+    minItems: 1
+    maxItems: 4
+    description:
+      Wired interrupt vectors available for RISC-V IOMMU to notify the
+      RISC-V HARTS. The cause to interrupt vector is software defined
+      using IVEC IOMMU register.
+
+  msi-parent: true
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - '#iommu-cells'
+
+additionalProperties: false
+
+examples:
+  - |+
+    /* Example 1 (IOMMU device with wired interrupts) */
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    iommu1: iommu@1bccd000 {
+        compatible = "riscv,iommu";
+        reg = <0x1bccd000 0x1000>;
+        interrupt-parent = <&aplic_smode>;
+        interrupts = <32 IRQ_TYPE_LEVEL_HIGH>,
+                     <33 IRQ_TYPE_LEVEL_HIGH>,
+                     <34 IRQ_TYPE_LEVEL_HIGH>,
+                     <35 IRQ_TYPE_LEVEL_HIGH>;
+        #iommu-cells = <1>;
+    };
+
+    /* Device with two IOMMU device IDs, 0 and 7 */
+    master1 {
+        iommus = <&iommu1 0>, <&iommu1 7>;
+    };
+
+  - |+
+    /* Example 2 (IOMMU device with shared wired interrupt) */
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    iommu2: iommu@1bccd000 {
+        compatible = "riscv,iommu";
+        reg = <0x1bccd000 0x1000>;
+        interrupt-parent = <&aplic_smode>;
+        interrupts = <32 IRQ_TYPE_LEVEL_HIGH>;
+        #iommu-cells = <1>;
+    };
+
+  - |+
+    /* Example 3 (IOMMU device with MSIs) */
+    iommu3: iommu@1bcdd000 {
+        compatible = "riscv,iommu";
+        reg = <0x1bccd000 0x1000>;
+        msi-parent = <&imsics_smode>;
+        #iommu-cells = <1>;
+    };
+
+  - |+
+    /* Example 4 (IOMMU PCIe device with MSIs) */
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pcie@30000000 {
+            device_type = "pci";
+            #address-cells = <3>;
+            #size-cells = <2>;
+            reg = <0x0 0x30000000  0x0 0x1000000>;
+            ranges = <0x02000000 0x0 0x41000000  0x0 0x41000000  0x0 0x0f000000>;
+
+            /*
+             * The IOMMU manages all functions in this PCI domain except
+             * itself. Omit BDF 00:01.0.
+             */
+            iommu-map = <0x0 &iommu0 0x0 0x8
+                         0x9 &iommu0 0x9 0xfff7>;
+
+            /* The IOMMU programming interface uses slot 00:01.0 */
+            iommu0: iommu@1,0 {
+               compatible = "pci1efd,edf1";
+               reg = <0x800 0 0 0 0>;
+               #iommu-cells = <1>;
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index c23fda1aa1f0..2657f9eae84c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18966,6 +18966,13 @@ F:	arch/riscv/
 N:	riscv
 K:	riscv
 
+RISC-V IOMMU
+M:	Tomasz Jeznach <tjeznach@rivosinc.com>
+L:	iommu@lists.linux.dev
+L:	linux-riscv@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
+
 RISC-V MICROCHIP FPGA SUPPORT
 M:	Conor Dooley <conor.dooley@microchip.com>
 M:	Daire McNamara <daire.mcnamara@microchip.com>
-- 
2.34.1


