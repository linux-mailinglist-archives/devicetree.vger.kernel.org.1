Return-Path: <devicetree+bounces-72930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FC98FD6DD
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 21:58:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AE2A2B24C7D
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 19:58:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A92D3155395;
	Wed,  5 Jun 2024 19:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="wYoLKR9/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D726155356
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 19:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717617480; cv=none; b=Zk5NiXTjO8y/7YmlPGfnKYaW6O08oshttbXKxYDsYi2K8ihqUxSX6hBlEcg2xQ6klAYDf+zysKv/trK2u4SbuEjb1EMKhYUygLHlIOLnHkD5oUGnAi7fkHi4X8o1b+Xnps6Q9oafWExTih4h2iGYOAgQOoTH/yZt7PgSnzeul6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717617480; c=relaxed/simple;
	bh=u/8EhdvDift/4PjJIMaVhEkEwfsBYE1N//dIYQ3iqKE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CrgLiHHUNUdJ1YQ9rHEwh7Dqfy2l+7s6D7a+T1FMGxMBlDecurRoKudZlrZlvijXFfM3MY+iwfhNRt2na9XJx3M4FYvxdYihLsMSetX5siB+wi++Lcd0rmcSVxX8oAfBtiX/hz2eL40Q7DCTHeAiNJi6m5EmSY9vQ1UWgO49NTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=wYoLKR9/; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-703e5a09c11so146750b3a.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 12:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1717617478; x=1718222278; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I3OdnqJm+rXYztcxY0Ww1DG6j2yyBo/otAAAbxVMihM=;
        b=wYoLKR9/utkMExtRMZVUiNE5ZIwiWXeqMuBPRV3s22UGi5+gg/lO1FuL+r+PQc2ixp
         P4oxxtlGA/undhIF90U2drLAXbkK83s6WEvpSBYlrUZxZuYsvECKlWO3Fu/OKlRtgQXu
         HuLDj2WN2uBjLuAZnEbbIWOc4fH6XcIYKccXaKFF+ehZzXBnOLgqoKV30UFLOIiL/Sla
         md/0oxkpboNRYVMe2y7db0lzdV4/PH+E2SZgdr/zQmol5ZgKkS6CXiXvu5lR2xbDAYNe
         QTS5XyYHYHwsMHF+29/JgjUUUFvF/XQdAO8r/K7ch5QCpN0DRBget9PkkRxHkdzEmNxR
         FQGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717617478; x=1718222278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I3OdnqJm+rXYztcxY0Ww1DG6j2yyBo/otAAAbxVMihM=;
        b=hyw/2q8lhPZ4Z+AoQYo8T63CjhUcJ46YCO1/wPa4uWQa6zV5Dkf/wWDcdC3wCaMPiw
         2w8fnq+fQrruZegRvH61XMXG5vxYSw7B4ZKmHz7zcuJ+6tfCEX/zlkhd3MYdvYcbrvMj
         wf7XmXjlB+7t2JiVI+1X0dEn5+nXAPqN2oRMUaNfL9eT+WN7GMJE3pAAHW10TpM0verk
         W1aoDjdeIFjPPy/Ea2PQdRY8FtJqRUQjHeZp1iZotU+H8AcjkQUK9co0RaZAEjR7plQQ
         24k8XEoTmGyyaWiTEO2HTgSfizleaA7C3zv1AIYwc2/fCL73lHSYVfSiViqwEEABGF0+
         BphQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGYGOUxaxuF4G10CQ/9D/6KXJBGPFAQa+AM9Jgh3DbBHIg1G+b2+jsp4JU/Xn+PGKmzTlc4SNEJypHpL+jVZbqSuB33bHIhZb0pw==
X-Gm-Message-State: AOJu0YwDm2QEMG/J6+9GXM9bY7YicNZfo6y0UjmWW2AeInCSjKz0dlCU
	2yVZESTuJPLUPiav/mUlY/bO9XrN5nR+yiFQnvneaj+eMKZCaRaAN9pAa9951lY=
X-Google-Smtp-Source: AGHT+IFO1GyoGMPuH/lqW9xT2zryVkP9vGQiTGtMpFf+eYsVd3f51HhwdFRltiWZwk/vzp+xnuU3/A==
X-Received: by 2002:a05:6a00:301b:b0:702:4b69:5bca with SMTP id d2e1a72fcca58-703e597aa87mr3589048b3a.18.1717617478132;
        Wed, 05 Jun 2024 12:57:58 -0700 (PDT)
Received: from tjeznach.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70244900ee9sm8664209b3a.124.2024.06.05.12.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 12:57:57 -0700 (PDT)
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
Subject: [PATCH v7 1/7] dt-bindings: iommu: riscv: Add bindings for RISC-V IOMMU
Date: Wed,  5 Jun 2024 12:57:43 -0700
Message-Id: <e5a458aa3570c6f312ce13dcf8200223a3787df8.1717612298.git.tjeznach@rivosinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1717612298.git.tjeznach@rivosinc.com>
References: <cover.1717612298.git.tjeznach@rivosinc.com>
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
index 8754ac2c259d..a20748224545 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19264,6 +19264,13 @@ F:	arch/riscv/
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


