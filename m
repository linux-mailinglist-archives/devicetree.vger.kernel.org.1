Return-Path: <devicetree+bounces-69072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C61088CEA54
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 21:35:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E94B11C20C0C
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 19:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0540A6214D;
	Fri, 24 May 2024 19:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="fz068mMJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6184C171A1
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 19:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716579303; cv=none; b=V6BgbSnzmSI2ZuRhhiC61fy3zyLiyuiimNQzAE5u94lG45ccWTXcjSIv/iLoeLAge/IgchuaaPycyKzQUanKFyop099C+xFfb2zPeRqUF11wu5b3Xu12iB/n0hIifjfD/Rmic+wWI4kYMtwBpr+0k7eDNg1+723nGkq3wpBqYtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716579303; c=relaxed/simple;
	bh=opuHax8roT2BI4Pe8lhdIpmMxaQdJCHbIPtuUoDKb6U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oBCQsFsuzK7M0sedp8D5aOPkcSGanLfYXBObBD9znEuY0OBWJDPWicfa8aIjRQH6awwM21Qb3292PEaPteegfm/hXP5SSDECicFO20oBsGHbyf/xM1zj16pzkwUqUFyo9nQ/KU/MXhXHxXHh6w2vqYK0L0bb+K63mqsuw/jIpvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=fz068mMJ; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6f693fb0ad4so4169657b3a.1
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 12:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1716579302; x=1717184102; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+6ZCRHhHgt+ykFdnp7Z2Pkv1IEgHCkkKr8xgjwZKIrg=;
        b=fz068mMJdNy608UQU8QLUTRjl/5pePryubdFsXBaUsDMoHKM4ayO8fZosdOL3aZUfy
         caaSUzqLXsveQGqemrN9gkO/s39fPHewVvvcxU0LJ8jL8moS+asZA8bXyNJVQ5mIBTW1
         JjuiibPIJB42ZvQj9yBNokPXcAjAHoumIvElboROxdMP6L2EePmbAHuEHn1RgAi7ZEZO
         hhmE65lOzbKXlsTrp7urr/9P2A28RdwgTLHeHbVNoTgTPLIHGAf727wGXBMC0deh1Ryb
         XmK1v4Hexm5WWT7yW9Kimtg3Ido7xaLGq24sfZHNudo91Rn/AejWu21+qA5Ck6GRFY3o
         s1Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716579302; x=1717184102;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+6ZCRHhHgt+ykFdnp7Z2Pkv1IEgHCkkKr8xgjwZKIrg=;
        b=Vw0uWEB+OGMXD5kdcoZ/viTowE66EUKT0PlUwbFnOvAuGBowrSnI+woWacRT1RLUtD
         h9pzo8gtE5WfZCiu16CDXJJNNZwil2u76xCqFD2eFUq7b+yHhu51waFFt3fOF3mXE1hi
         J2WZuDFRAqoJTIIRM4wuRahypWHjraFKq6rffcjbPwbLii1/YPuVLANjaQTtU02xKzqD
         LM9TD1mAWYyVbeVCVaEZ3EQmA9h41Tfugy/1abK1/64lzYueZnPn40Up+Uw9cmuaMqdS
         GNN+Z7rZ3L2o4vJX7yL5KttIikjwLUaIW6uDvT0wR+MgRzNNsqdzbdv4ha+Sj8fvDNAe
         l2lg==
X-Forwarded-Encrypted: i=1; AJvYcCXe3RmvAiq93hjtuUzme6mKu1Sfe88EKcDBEobaLB8U/hGq3m+L9QAADcmWghYCSkSWSVR5etOZVChleEOqzoGWdhKnEL4+QGtQ9g==
X-Gm-Message-State: AOJu0YwIn0OBnknBFqmbX8Di6e4kiPGeHFzr9Z+YDAUi9pNUVoQDHMRS
	87SsYs0Tbgjn9N89NlC5bXezUpcokp0Sp1dQz8lmm6kTKdaSVrRjFIxOPjwCMOA=
X-Google-Smtp-Source: AGHT+IHbCXkG7/ek0iarxD0p8XmVztOrJRu1qmKE1UuzfhJ7QqxEk9ZgWXIt4x1VA28ClJF/mouweQ==
X-Received: by 2002:a05:6a00:3007:b0:6ed:cd4c:cc11 with SMTP id d2e1a72fcca58-6f8f3f9f43amr3418278b3a.25.1716579301636;
        Fri, 24 May 2024 12:35:01 -0700 (PDT)
Received: from tjeznach.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f8fd4d878esm1441684b3a.190.2024.05.24.12.34.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 12:35:00 -0700 (PDT)
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
	Tomasz Jeznach <tjeznach@rivosinc.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v6 1/7] dt-bindings: iommu: riscv: Add bindings for RISC-V IOMMU
Date: Fri, 24 May 2024 12:34:41 -0700
Message-Id: <6777b49a702723f64bd83f96c4275452b56b7a02.1716578450.git.tjeznach@rivosinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1716578450.git.tjeznach@rivosinc.com>
References: <cover.1716578450.git.tjeznach@rivosinc.com>
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
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Tomasz Jeznach <tjeznach@rivosinc.com>
---
 .../bindings/iommu/riscv,iommu.yaml           | 147 ++++++++++++++++++
 MAINTAINERS                                   |   7 +
 2 files changed, 154 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iommu/riscv,iommu.yaml

diff --git a/Documentation/devicetree/bindings/iommu/riscv,iommu.yaml b/Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
new file mode 100644
index 000000000000..5d015eeb06d0
--- /dev/null
+++ b/Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
@@ -0,0 +1,147 @@
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
+description: |
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
+          - enum:
+              - qemu,riscv-iommu
+          - const: riscv,iommu
+      - items:
+          - enum:
+              - pci1efd,edf1
+          - const: riscv,pci-iommu
+
+  reg:
+    maxItems: 1
+    description:
+      For non-PCI devices this represents base address and size of for the
+      IOMMU memory mapped registers interface.
+      For PCI IOMMU hardware implementation this should represent an address
+      of the IOMMU, as defined in the PCI Bus Binding reference.
+
+  '#iommu-cells':
+    const: 1
+    description:
+      The single cell describes the requester id emitted by a master to the
+      IOMMU.
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
+        compatible = "qemu,riscv-iommu", "riscv,iommu";
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
+        compatible = "qemu,riscv-iommu", "riscv,iommu";
+        reg = <0x1bccd000 0x1000>;
+        interrupt-parent = <&aplic_smode>;
+        interrupts = <32 IRQ_TYPE_LEVEL_HIGH>;
+        #iommu-cells = <1>;
+    };
+
+  - |+
+    /* Example 3 (IOMMU device with MSIs) */
+    iommu3: iommu@1bcdd000 {
+        compatible = "qemu,riscv-iommu", "riscv,iommu";
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
+            iommu-map = <0x0 &iommu0 0x0 0x8>,
+                        <0x9 &iommu0 0x9 0xfff7>;
+
+            /* The IOMMU programming interface uses slot 00:01.0 */
+            iommu0: iommu@1,0 {
+               compatible = "pci1efd,edf1", "riscv,pci-iommu";
+               reg = <0x800 0 0 0 0>;
+               #iommu-cells = <1>;
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 27367ad339ea..1ce589eb9c15 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19265,6 +19265,13 @@ F:	arch/riscv/
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


