Return-Path: <devicetree+bounces-162985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 01998A7A8BA
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 19:38:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C6521883D2C
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 17:38:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 150052512E3;
	Thu,  3 Apr 2025 17:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmsztkhW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00A019ABD4;
	Thu,  3 Apr 2025 17:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743701894; cv=none; b=CFE3dAMd45Sz+J4XDITIdvpT7YwZMNu+mAGSro3IrhW05tpC37hW+mM848eq1qCnnq5A/bwVYJFs+OSRfdwi2oGuaIhaCs/83MVhBTnZsCyIwCWFMPvCm5x11JYsIYE24GNC0DLzjAxf8EWyTn4eyOUTM1MG+f7fQNCrY46FaRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743701894; c=relaxed/simple;
	bh=AULZPploglVuY1ufpUSJqa4X3phHJ7t5NzZj49GHTWg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=jJLw38dxQztr0skKjwcbkC7d/6CqNlikXrN3Dlf/a7Ibt8ZbbpdfoQbr9VDHK8dyUgR+YbXFaHYK2RoKU+sGKBSO6FVp9I2XI8upet6rRpxDKiBTu80VSlZC67D44VrmDLDap4L+/udYfNBRx4VHXh922bRp+UO1+18EWHIR4BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmsztkhW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4E3A1C4CEE3;
	Thu,  3 Apr 2025 17:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743701892;
	bh=AULZPploglVuY1ufpUSJqa4X3phHJ7t5NzZj49GHTWg=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=EmsztkhWXq5krZy4bM4F15FLIxbHCk2H9+CoIIpVIljJJG5tBZCuAPRZV3znqiXGH
	 NzDqbqwcV8/YKo3gMoq3Is2HmntNAsTPsgnEVOLGMjkfamaUtItCJLr0oAsoIMHY8q
	 QZpy7pq/7pY9dQDyQRpe+3m/QcPtlzxCwwaRB+TMuJ13VxCXqxPsNTLlmqZkqW56k1
	 1Ukk2iP/K5/ldM78rMoh0lOO38yQCnPlNpphR6UT4fEt9hcHNQ+ZeFOzPBCFW34C1E
	 er9IoNDOh74vNIJ6gaU6bkD5gY5HdWRarIRkMTR+k9GvNoNGx+XhkthVyTrPmZgwh2
	 NoXV9Iv63GrwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36A41C3600C;
	Thu,  3 Apr 2025 17:38:12 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Thu, 03 Apr 2025 19:38:00 +0200
Subject: [PATCH] dt-bindings: interrupt-controller: Convert fsl,mpic-msi to
 YAML
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-msipic-yaml-v1-1-f4248475714f@posteo.net>
X-B4-Tracking: v=1; b=H4sIAHfH7mcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDIyMz3dzizILMZN3KxNwcXXOzVOM0A4OkNNPUVCWgjoKi1LTMCrBp0bG
 1tQDIeV4/XQAAAA==
X-Change-ID: 20250226-msipic-yaml-76e3f00bf5ee
To: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Crystal Wood <oss@buserror.net>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
 Christophe Leroy <christophe.leroy@csgroup.eu>, 
 Naveen N Rao <naveen@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linuxppc-dev@lists.ozlabs.org, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1743701891; l=12238;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=6+wkdkPhCY3TSdHj6h9qgWYqCOE3rA6FKRZ2XZTcfF0=;
 b=xGgbuNUClO6nio/rUoREiF4sRXU+BSyT5mPGBSl/4OCVti6kKKc44T3+KUJAGXxy9mbaDhGbd
 xaT8cDTG2C1B1fkGAmMBSDmUo+T7V2T4QkFmNu6gXVvdWXtGwPzUoCV
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net

From: "J. Neuschäfer" <j.ne@posteo.net>

As part of a larger effort to bring various PowerPC-related bindings
into the YAML world, this patch converts msi-pic.txt to YAML and moves
it into the bindings/interrupt-controller/ directory. The conversion may
necessarily be a bit hard to read because the binding is quite verbose.

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
 .../interrupt-controller/fsl,mpic-msi.yaml         | 141 +++++++++++++++++++++
 .../devicetree/bindings/powerpc/fsl/msi-pic.txt    | 111 ----------------
 2 files changed, 141 insertions(+), 111 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/fsl,mpic-msi.yaml b/Documentation/devicetree/bindings/interrupt-controller/fsl,mpic-msi.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..99a98864bd10c5e5b67112c0149fe123b51ca26f
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/fsl,mpic-msi.yaml
@@ -0,0 +1,141 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/fsl,mpic-msi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale MSI interrupt controller
+
+description:
+  The Freescale hypervisor and msi-address-64
+  -------------------------------------------
+
+  Normally, PCI devices have access to all of CCSR via an ATMU mapping.  The
+  Freescale MSI driver calculates the address of MSIIR (in the MSI register
+  block) and sets that address as the MSI message address.
+
+  In a virtualized environment, the hypervisor may need to create an IOMMU
+  mapping for MSIIR.  The Freescale ePAPR hypervisor has this requirement
+  because of hardware limitations of the Peripheral Access Management Unit
+  (PAMU), which is currently the only IOMMU that the hypervisor supports.
+  The ATMU is programmed with the guest physical address, and the PAMU
+  intercepts transactions and reroutes them to the true physical address.
+
+  In the PAMU, each PCI controller is given only one primary window.  The
+  PAMU restricts DMA operations so that they can only occur within a window.
+  Because PCI devices must be able to DMA to memory, the primary window must
+  be used to cover all of the guest's memory space.
+
+  PAMU primary windows can be divided into 256 subwindows, and each
+  subwindow can have its own address mapping ("guest physical" to "true
+  physical").  However, each subwindow has to have the same alignment, which
+  means they cannot be located at just any address.  Because of these
+  restrictions, it is usually impossible to create a 4KB subwindow that
+  covers MSIIR where it's normally located.
+
+  Therefore, the hypervisor has to create a subwindow inside the same
+  primary window used for memory, but mapped to the MSIR block (where MSIIR
+  lives).  The first subwindow after the end of guest memory is used for
+  this.  The address specified in the msi-address-64 property is the PCI
+  address of MSIIR.  The hypervisor configures the PAMU to map that address to
+  the true physical address of MSIIR.
+
+maintainers:
+  - J. Neuschäfer <j.ne@posteo.net>
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - fsl,mpic-msi
+          - fsl,mpic-msi-v4.3
+          - fsl,ipic-msi
+          - fsl,vmpic-msi
+          - fsl,vmpic-msi-v4.3
+      - items:
+          - enum:
+              - fsl,mpc8572-msi
+              - fsl,mpc8610-msi
+              - fsl,mpc8641-msi
+          - const: fsl,mpic-msi
+    description:
+      compatible list, may contain one or two entries The first is
+      "fsl,CHIP-msi", where CHIP is the processor(mpc8610, mpc8572, etc.) and
+      the second is "fsl,mpic-msi" or "fsl,ipic-msi" or "fsl,mpic-msi-v4.3"
+      depending on the parent type and version. If mpic version is 4.3, the
+      number of MSI registers is increased to 16, MSIIR1 is provided to access
+      these 16 registers, and compatible "fsl,mpic-msi-v4.3" should be used.
+      The first entry is optional; the second entry is required.
+
+  reg:
+    minItems: 1
+    items:
+      - description: Address and length of the shared message interrupt
+          register set
+      - description: Address of aliased MSIIR or MSIIR1 register for platforms
+          that have such an alias. If using MSIIR1, the second region must be
+          added because different MSI group has different MSIIR1 offset.
+
+  interrupts:
+    minItems: 1
+    maxItems: 16
+    description:
+      Each one of the interrupts here is one entry per 32 MSIs, and routed to
+      the host interrupt controller. The interrupts should be set as edge
+      sensitive. If msi-available-ranges is present, only the interrupts that
+      correspond to available ranges shall be present.
+
+  msi-available-ranges:
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    items:
+      items:
+        - description: First MSI interrupt in this range
+        - description: Number of MSI interrupts in this range
+    description:
+      Use <start count> style section to define which MSI interrupt can be used
+      in the 256 msi interrupts. This property is optional, without this, all
+      the MSI interrupts can be used.  Each available range must begin and end
+      on a multiple of 32 (i.e.  no splitting an individual MSI register or the
+      associated PIC interrupt).  MPIC v4.3 does not support this property
+      because the 32 interrupts of an individual register are not continuous
+      when using MSIIR1.
+
+  msi-address-64:
+    $ref: /schemas/types.yaml#/definitions/uint64
+    description:
+      64-bit PCI address of the MSIIR register. The MSIIR register is used for
+      MSI messaging.  The address of MSIIR in PCI address space is the MSI
+      message address.
+
+      This property may be used in virtualized environments where the hypervisor
+      has created an alternate mapping for the MSIR block.  See the top-level
+      description for an explanation.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    msi@41600 {
+            compatible = "fsl,mpc8610-msi", "fsl,mpic-msi";
+            reg = <0x41600 0x80>;
+            msi-available-ranges = <0 0x100>;
+            interrupts = <0xe0 0>, <0xe1 0>, <0xe2 0>, <0xe3 0>,
+                         <0xe4 0>, <0xe5 0>, <0xe6 0>, <0xe7 0>;
+    };
+
+  - |
+    msi@41600 {
+            compatible = "fsl,mpic-msi-v4.3";
+            reg = <0x41600 0x200 0x44148 4>;
+            interrupts = <0xe0 0 0 0>, <0xe1 0 0 0>, <0xe2 0 0 0>, <0xe3 0 0 0>,
+                         <0xe4 0 0 0>, <0xe5 0 0 0>, <0xe6 0 0 0>, <0xe7 0 0 0>,
+                         <0x100 0 0 0>, <0x101 0 0 0>, <0x102 0 0 0>, <0x103 0 0 0>,
+                         <0x104 0 0 0>, <0x105 0 0 0>, <0x106 0 0 0>, <0x107 0 0 0>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/powerpc/fsl/msi-pic.txt b/Documentation/devicetree/bindings/powerpc/fsl/msi-pic.txt
deleted file mode 100644
index f8d2b7fe06d695971d48ba21ab67e5b72a212fe9..0000000000000000000000000000000000000000
--- a/Documentation/devicetree/bindings/powerpc/fsl/msi-pic.txt
+++ /dev/null
@@ -1,111 +0,0 @@
-* Freescale MSI interrupt controller
-
-Required properties:
-- compatible : compatible list, may contain one or two entries
-  The first is "fsl,CHIP-msi", where CHIP is the processor(mpc8610, mpc8572,
-  etc.) and the second is "fsl,mpic-msi" or "fsl,ipic-msi" or
-  "fsl,mpic-msi-v4.3" depending on the parent type and version. If mpic
-  version is 4.3, the number of MSI registers is increased to 16, MSIIR1 is
-  provided to access these 16 registers, and compatible "fsl,mpic-msi-v4.3"
-  should be used. The first entry is optional; the second entry is
-  required.
-
-- reg : It may contain one or two regions. The first region should contain
-  the address and the length of the shared message interrupt register set.
-  The second region should contain the address of aliased MSIIR or MSIIR1
-  register for platforms that have such an alias, if using MSIIR1, the second
-  region must be added because different MSI group has different MSIIR1 offset.
-
-- interrupts : each one of the interrupts here is one entry per 32 MSIs,
-  and routed to the host interrupt controller. the interrupts should
-  be set as edge sensitive.  If msi-available-ranges is present, only
-  the interrupts that correspond to available ranges shall be present.
-
-Optional properties:
-- msi-available-ranges: use <start count> style section to define which
-  msi interrupt can be used in the 256 msi interrupts. This property is
-  optional, without this, all the MSI interrupts can be used.
-  Each available range must begin and end on a multiple of 32 (i.e.
-  no splitting an individual MSI register or the associated PIC interrupt).
-  MPIC v4.3 does not support this property because the 32 interrupts of an
-  individual register are not continuous when using MSIIR1.
-
-- msi-address-64: 64-bit PCI address of the MSIIR register. The MSIIR register
-  is used for MSI messaging.  The address of MSIIR in PCI address space is
-  the MSI message address.
-
-  This property may be used in virtualized environments where the hypervisor
-  has created an alternate mapping for the MSIR block.  See below for an
-  explanation.
-
-
-Example:
-	msi@41600 {
-		compatible = "fsl,mpc8610-msi", "fsl,mpic-msi";
-		reg = <0x41600 0x80>;
-		msi-available-ranges = <0 0x100>;
-		interrupts = <
-			0xe0 0
-			0xe1 0
-			0xe2 0
-			0xe3 0
-			0xe4 0
-			0xe5 0
-			0xe6 0
-			0xe7 0>;
-		interrupt-parent = <&mpic>;
-	};
-
-	msi@41600 {
-		compatible = "fsl,mpic-msi-v4.3";
-		reg = <0x41600 0x200 0x44148 4>;
-		interrupts = <
-			0xe0 0 0 0
-			0xe1 0 0 0
-			0xe2 0 0 0
-			0xe3 0 0 0
-			0xe4 0 0 0
-			0xe5 0 0 0
-			0xe6 0 0 0
-			0xe7 0 0 0
-			0x100 0 0 0
-			0x101 0 0 0
-			0x102 0 0 0
-			0x103 0 0 0
-			0x104 0 0 0
-			0x105 0 0 0
-			0x106 0 0 0
-			0x107 0 0 0>;
-	};
-
-The Freescale hypervisor and msi-address-64
--------------------------------------------
-Normally, PCI devices have access to all of CCSR via an ATMU mapping.  The
-Freescale MSI driver calculates the address of MSIIR (in the MSI register
-block) and sets that address as the MSI message address.
-
-In a virtualized environment, the hypervisor may need to create an IOMMU
-mapping for MSIIR.  The Freescale ePAPR hypervisor has this requirement
-because of hardware limitations of the Peripheral Access Management Unit
-(PAMU), which is currently the only IOMMU that the hypervisor supports.
-The ATMU is programmed with the guest physical address, and the PAMU
-intercepts transactions and reroutes them to the true physical address.
-
-In the PAMU, each PCI controller is given only one primary window.  The
-PAMU restricts DMA operations so that they can only occur within a window.
-Because PCI devices must be able to DMA to memory, the primary window must
-be used to cover all of the guest's memory space.
-
-PAMU primary windows can be divided into 256 subwindows, and each
-subwindow can have its own address mapping ("guest physical" to "true
-physical").  However, each subwindow has to have the same alignment, which
-means they cannot be located at just any address.  Because of these
-restrictions, it is usually impossible to create a 4KB subwindow that
-covers MSIIR where it's normally located.
-
-Therefore, the hypervisor has to create a subwindow inside the same
-primary window used for memory, but mapped to the MSIR block (where MSIIR
-lives).  The first subwindow after the end of guest memory is used for
-this.  The address specified in the msi-address-64 property is the PCI
-address of MSIIR.  The hypervisor configures the PAMU to map that address to
-the true physical address of MSIIR.

---
base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
change-id: 20250226-msipic-yaml-76e3f00bf5ee

Best regards,
-- 
J. Neuschäfer <j.ne@posteo.net>



