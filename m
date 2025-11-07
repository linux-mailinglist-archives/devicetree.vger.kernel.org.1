Return-Path: <devicetree+bounces-236226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B79A3C4168E
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 20:16:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A2053A43F1
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 19:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00270301038;
	Fri,  7 Nov 2025 19:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="nPhuAHuS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com [209.85.166.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0249C2FDC5D
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 19:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762542970; cv=none; b=FOo31Sg7n80i3Nr1GMfaMrdCdnz70+Zlsll39S9opj1Qca6JrWVGerS5Y56yqbBmSjYHZ2ung7KN0Q4JHvqID/Pw6kMGrLhxnNTt+OoR0gVAlhup0eK4ViH8dhHwlJduDPq4ZbIu6vEaf1sqWnZraYyGXQcAQyVFcNYdKgjwzNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762542970; c=relaxed/simple;
	bh=sRruweBkfCUKeKY+4KjkSn4F/iG2DV/1VfBb/BhsDZI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YZQlvL4v+BqHtjDXpY3ug/lL0432vXp6Bb3oAawl1levRIwTznrwVzUWSUd6lle3J+PwzyDkalEHwyzVBRIdgEfC3YWBTDZxsl4rJMaIo9XJiHZ3Bo1ekYu/DX0LoUrNYE3ntU5oLIRz4wfc/KQyqMLmAhf7U2sred1xz9Fbigk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=nPhuAHuS; arc=none smtp.client-ip=209.85.166.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f65.google.com with SMTP id ca18e2360f4ac-94822ad1baeso83312139f.2
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 11:16:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1762542968; x=1763147768; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h5IlZ+BcGNZCeyUh2duESv6HKbkDYinAEGH9EVCnUC4=;
        b=nPhuAHuSbB9CMnHdClIVlFzgyIapRgC3vZPoi8YhfBp5TstF74T6fIIwpdpyyPasEL
         R3S/UCgA2sbvZxL2QcFpzXawWO4tb0AJxg/PGWS3H/Hxi3hA3h7XUo0TreihNoxsZvCz
         I/pFiOIWBOadzu2M4CCpsbITUa50Xqte0onKOdjpIYpCFk8zBSyWeOfuXcetC/SwwDkP
         pfm7jynqQBOtwESPYLM7BH6PtE4ZCKi36pY542i7FpnheMMY+YFzMFG1LdJds8mJIlc7
         PA+vHFSzA9uTu/Ygq5rdrmxmIpiJrjFTvL6Uon9oRJjiY8fVOa58Bq/4gT9XbYUlJjFl
         9j8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762542968; x=1763147768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h5IlZ+BcGNZCeyUh2duESv6HKbkDYinAEGH9EVCnUC4=;
        b=JnZ1IYo2EvcRrt9hB6dia89ZpFOgo4Ze5EwBtgqbz3w/ldLgWvCsvRvU80c9ZHfxu8
         AR2hxoivJ/yrzG7mTJhKa7B+1Ivbwf+6GL9GPXDtjlgcUpMPG/zGuEG4lSRcoRau5UGG
         YsjFLvgaqeZbSap227j1uXxCxwdmFI5Whe8Rilqtl8P9d07qg8ftyVfYGzQatAYbWf2s
         JX98b+r4yEO7qrATt7c0MTbf7hg0AEFUP0v7EpWK2pCcV9pAIBdimG89gFNZZFSolemQ
         zA+pfm3cQ5jSvIUc/DZxofu8aMvMtLjMsZUPj7CCzo/LYfJsK5ydJ0XZuhJQfU1Lwt6y
         uAng==
X-Forwarded-Encrypted: i=1; AJvYcCWQ/47FM1pWYKzdiQcVSiIMK8TqWcrNCmkQBxPbfPGYEMBHBon4DqvCaSYGhRuATm7yt3z+5O6Glto4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0/6dGZ8GZc5ioSWNlkhwH0PzktpEkdubX2NZcqkSdb0qDz+Ry
	+fdpxPO8Uv76S/B6jovUVlHZ06nnNWslpQQQR5FgTTMC8vr8Grd3UU83UuZT6tVv2Y8=
X-Gm-Gg: ASbGnctfGVy+Qjii2RodmbjB5H3M7HRmwG5d/g8KiIC6GmX2Qr7BLQfcREH6OWVs1Xh
	WNx0/LjY1HfeBa24hXqniukrnzaEjjcHj5BUPEr1FhG2HL1FShpPh1BclZIcHfrPymJ26wxmbYm
	9wxro0BBuYEhfQduJ2arECfvi4DP3r2KNDKnAVTXUuoCpCS1CqyR6MBBuaIuTWIkdxofuuo+cr2
	o3NTU15WCrx+evYhGUMPjOUHXPnaHkkRgLTz0SqQH/CBqZSr3oEWwoAR7uMB9HgRCdNopmUDkoo
	SikaxFXnAgMmJXsxp78fFwOhecfcmwNvVYcjLwGUBhzsFfz6m1cZzkrkS07vCtOrxTvXqt9CAYa
	VxJMU37OIueP3/2dhYBKisxeepX8IeBcwp1Ub7NxdwqNJkYCHpQNzKM27OjKHa+/1R9Ol/8IdYa
	nWDJleX7+jz4+fFFVftQm1qQ84MxioyRUoLRX2HPJC3hPqKKXBelWu9A==
X-Google-Smtp-Source: AGHT+IFZam7Hqt3zr2oxzYLeVzDLRSLo2Bp+3tqjEso6cw67eudPvcEH42p9OLjhZ3z+bvZTCPzhCw==
X-Received: by 2002:a05:6602:3d3:b0:948:3282:284d with SMTP id ca18e2360f4ac-94895fd12c0mr51877039f.11.1762542967912;
        Fri, 07 Nov 2025 11:16:07 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94888c34c6asm118772939f.10.2025.11.07.11.16.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 11:16:07 -0800 (PST)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org
Cc: dlan@gentoo.org,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/7] dt-bindings: pci: spacemit: Introduce PCIe host controller
Date: Fri,  7 Nov 2025 13:15:52 -0600
Message-ID: <20251107191557.1827677-4-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251107191557.1827677-1-elder@riscstar.com>
References: <20251107191557.1827677-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the Device Tree binding for the PCIe root complex found on the
SpacemiT K1 SoC.  This device is derived from the Synopsys Designware
PCIe IP.  It supports up to three PCIe ports operating at PCIe gen 2
link speeds (5 GT/sec).  One of the ports uses a combo PHY, which is
typically used to support a USB 3 port.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
v5: - Add Rob Herring's Reviewed-by tag
    - Wrap lines at 80 columns
    - Root port nodes will begin with pcie ('e' is not optional)

 .../bindings/pci/spacemit,k1-pcie-host.yaml   | 157 ++++++++++++++++++
 1 file changed, 157 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml

diff --git a/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml b/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
new file mode 100644
index 0000000000000..c4c00b5fcdc0c
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
@@ -0,0 +1,157 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/spacemit,k1-pcie-host.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K1 PCI Express Host Controller
+
+maintainers:
+  - Alex Elder <elder@riscstar.com>
+
+description: >
+  The SpacemiT K1 SoC PCIe host controller is based on the Synopsys DesignWare
+  PCIe IP.  The controller uses the DesignWare built-in MSI interrupt
+  controller, and supports 256 MSIs.
+
+allOf:
+  - $ref: /schemas/pci/snps,dw-pcie.yaml#
+
+properties:
+  compatible:
+    const: spacemit,k1-pcie
+
+  reg:
+    items:
+      - description: DesignWare PCIe registers
+      - description: ATU address space
+      - description: PCIe configuration space
+      - description: Link control registers
+
+  reg-names:
+    items:
+      - const: dbi
+      - const: atu
+      - const: config
+      - const: link
+
+  clocks:
+    items:
+      - description: DWC PCIe Data Bus Interface (DBI) clock
+      - description: DWC PCIe application AXI-bus master interface clock
+      - description: DWC PCIe application AXI-bus slave interface clock
+
+  clock-names:
+    items:
+      - const: dbi
+      - const: mstr
+      - const: slv
+
+  resets:
+    items:
+      - description: DWC PCIe Data Bus Interface (DBI) reset
+      - description: DWC PCIe application AXI-bus master interface reset
+      - description: DWC PCIe application AXI-bus slave interface reset
+
+  reset-names:
+    items:
+      - const: dbi
+      - const: mstr
+      - const: slv
+
+  interrupts:
+    items:
+      - description: Interrupt used for MSIs
+
+  interrupt-names:
+    const: msi
+
+  spacemit,apmu:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      A phandle that refers to the APMU system controller, whose regmap is
+      used in managing resets and link state, along with and offset of its
+      reset control register.
+    items:
+      - items:
+          - description: phandle to APMU system controller
+          - description: register offset
+
+patternProperties:
+  '^pcie@':
+    type: object
+    $ref: /schemas/pci/pci-pci-bridge.yaml#
+
+    properties:
+      phys:
+        maxItems: 1
+
+      vpcie3v3-supply:
+        description:
+          A phandle for 3.3v regulator to use for PCIe
+
+    required:
+      - phys
+      - vpcie3v3-supply
+
+    unevaluatedProperties: false
+
+required:
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - interrupts
+  - interrupt-names
+  - spacemit,apmu
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/spacemit,k1-syscon.h>
+    pcie@ca400000 {
+        device_type = "pci";
+        compatible = "spacemit,k1-pcie";
+        reg = <0xca400000 0x00001000>,
+              <0xca700000 0x0001ff24>,
+              <0x9f000000 0x00002000>,
+              <0xc0c20000 0x00001000>;
+        reg-names = "dbi",
+                    "atu",
+                    "config",
+                    "link";
+        #address-cells = <3>;
+        #size-cells = <2>;
+        ranges = <0x01000000 0x0 0x00000000 0x9f002000 0x0 0x00100000>,
+                 <0x02000000 0x0 0x90000000 0x90000000 0x0 0x0f000000>;
+        interrupts = <142>;
+        interrupt-names = "msi";
+        clocks = <&syscon_apmu CLK_PCIE1_DBI>,
+                 <&syscon_apmu CLK_PCIE1_MASTER>,
+                 <&syscon_apmu CLK_PCIE1_SLAVE>;
+        clock-names = "dbi",
+                      "mstr",
+                      "slv";
+        resets = <&syscon_apmu RESET_PCIE1_DBI>,
+                 <&syscon_apmu RESET_PCIE1_MASTER>,
+                 <&syscon_apmu RESET_PCIE1_SLAVE>;
+        reset-names = "dbi",
+                      "mstr",
+                      "slv";
+        pinctrl-names = "default";
+        pinctrl-0 = <&pcie1_3_cfg>;
+        spacemit,apmu = <&syscon_apmu 0x3d4>;
+
+        pcie@0 {
+          device_type = "pci";
+          compatible = "pciclass,0604";
+          reg = <0x0 0x0 0x0 0x0 0x0>;
+          bus-range = <0x01 0xff>;
+          #address-cells = <3>;
+          #size-cells = <2>;
+          ranges;
+          phys = <&pcie1_phy>;
+          vpcie3v3-supply = <&pcie_vcc_3v3>;
+        };
+    };
-- 
2.48.1


