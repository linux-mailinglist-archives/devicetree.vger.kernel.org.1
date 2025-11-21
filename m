Return-Path: <devicetree+bounces-241212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C591C7AEDD
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 17:50:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E75943A3196
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64B5C2F0696;
	Fri, 21 Nov 2025 16:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QtdwJNYs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C942F1FEE
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 16:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763743767; cv=none; b=RG6vrUpPRZ8CmYbP+hKm43phGD6bOlJ8AbHKol8OwVv3bxUaaYFlZwaM6O5+NCBwH7EDF0RtFR0WOJ+PJuNS1pNS6Wus7yETmANO46wS753GMEE6DCZ140IqkxSuyDYS9pLXlsnfZFlgAv2M5zcYD9e+3Ukh2F9gQuv0GyzY/L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763743767; c=relaxed/simple;
	bh=LwWTZn9G4hy02sLAgSOfSCz7oCKcDzwyTL4UJEUsAVY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m5MuCOND510VGJwjSPVmNd/SYvJYk1d63cpaQ+tvk3jS7UmQPBq8AjTvyN14gurZOB41fA03qMKVPRMgQ7TCOmraGPtLhKKgVY6PNsNIhFioL5hwYSN8FLSJHUfyhcrzOs1b5Lg1OKC/tLLYYVMdHrPbqmR0tE8sAI8McPWFduQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QtdwJNYs; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42b3720e58eso1775972f8f.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763743763; x=1764348563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3wYeT/h/1x9MvlSpVGuLkmVdHMW20C6ijQ2jijWX0wk=;
        b=QtdwJNYsP/f9aau/Cmz/qiQBeqyNsrYH3XYQwhQsu4eBJmcHoGoT+ICCHW4OyejRvH
         TTl1y78bvrRxNLvCy4WDRWJcGygi+SIn2NtoD7fnfsdHS2g5Nwcmd41RhXC0vlm/Jotx
         QGU5KCxsQ5u4QZ/Wget9AMuMX0YyNnSNpxW9XfqfpNQJ1DWdvJbHtb+UYvbGxbCTKQqf
         IHh5WRirb7bFhy90AvrEzvSDFCtVatJObKUkHyZODm0gqpCr3YulY6/CYqHkRrkXRsiJ
         gLJmX38z8UMOjxHFY3KQYltUe/UnKzCShrKw7pQsn23puwmbz4mvtwt4DtbSMxDZ8gML
         +JoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763743763; x=1764348563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3wYeT/h/1x9MvlSpVGuLkmVdHMW20C6ijQ2jijWX0wk=;
        b=uPEc7vn0uKZ1M6S7gqaKKPUHvRMa3gyRs4OZv22c6tgWhXmMyCClc80+hM5Xr92Sl9
         b7ULHqzE4m9zWWREu6OprFPvf8Xw9XMgLtJirPu5bcID6r1EabFlqKeQpfj1FHuok6lZ
         Ba9ke5R5YDjEeD6iBwyRdTqM7XGV5Y3f2LZkTftkA9z3aCQlyinjIy9VY1JbjmPZ1one
         agRyEQr2uyr0yVBWXzFbDFz22qx9Hhbiw1aU0uKjlNH4pDccwcmB5beXjOX8eclls0UE
         ihpXG2yg0q1FSk5q6/YT79DMT5UFlXrvJRKd4z0SAkY+KLRWgkMTzLGtiX5fmQoc4mO3
         FZgA==
X-Forwarded-Encrypted: i=1; AJvYcCU0mIARQnW2UfkhUpK1gpbstzFZs+p6L7S7c/ccPJbXb6cGARBz+gDgzx2siQNvQWLUon0jgPcRmtsW@vger.kernel.org
X-Gm-Message-State: AOJu0YzJu2Hp5LZ9UjeBPTwhLBrMuLMBkIWA3g6lYmkCdV4EuvnAx0j3
	MiRxkiNfkMsj41YiMggFHkOH2Dl20nheAehKbXCQcUdckd+7O1MZJ7SxKA+gkzhrTRc=
X-Gm-Gg: ASbGncvKbX1rJ37dDj5HATrQ6xHjRuHBGOi9IaBjb1vPXnun1H7SVEovP/J5CT2u+LO
	RrfW/mS9Ny4DNsga+e3Pwg3MSOLsriYMt4udSqS8HWzDwRjQfJdTkIKbnj2tyLnAqUNBOpOwaec
	/DLq8nNEZn4RPVhAyH1LUBbYRWBVCk79m7TediWrr1Fdbzf1GnhkdSJ3vM6tz/WvmWbiWVTYC0+
	EeBXW0F7epjqd3psKtFLCPhMsJmSLCY1IOGux4ZLLXbERB5xJTJI/3cu71YZBuRRhmRXUYADaS/
	zcCFBxZfBM7j8NsE6K8NXSMgCet1JQTpoBMcPGKt48RUIBrLsBEdHRUtpr6gPyrf2XnHMA1USom
	RmZ3X4RlNdCDucqCvUTNHNWVV13wXm6HK7xsLjyAQ62QknnJKwE6Qsf4xi8IvIOpJlbUjhLPHvJ
	P6ZfqKIS6x/llJdhqlv8E=
X-Google-Smtp-Source: AGHT+IFTupEu7tQpaQcTp870nPjmfycov+d3eXmWpJglnNMzrHGGv2NoyhiwOnsqNMvhjJuRWF90yg==
X-Received: by 2002:a05:6000:290a:b0:429:d3e9:667 with SMTP id ffacd0b85a97d-42cc1ce47b9mr2775128f8f.18.1763743763176;
        Fri, 21 Nov 2025 08:49:23 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:803a:ae25:6381:a6fc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fb8ff3sm12938478f8f.29.2025.11.21.08.49.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 08:49:22 -0800 (PST)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com,
	s32@nxp.com,
	bhelgaas@google.com,
	jingoohan1@gmail.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ionut.Vicovan@nxp.com,
	larisa.grigore@nxp.com,
	Ghennadi.Procopciuc@nxp.com,
	ciprianmarian.costea@nxp.com,
	bogdan.hamciuc@nxp.com,
	Frank.li@nxp.com,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev
Cc: cassel@kernel.org
Subject: [PATCH 1/4 v6] dt-bindings: PCI: s32g: Add NXP PCIe controller
Date: Fri, 21 Nov 2025 17:49:17 +0100
Message-ID: <20251121164920.2008569-2-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251121164920.2008569-1-vincent.guittot@linaro.org>
References: <20251121164920.2008569-1-vincent.guittot@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Describe the PCIe host controller available on the S32G platforms.

Co-developed-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
Signed-off-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
Co-developed-by: Bogdan-Gabriel Roman <bogdan-gabriel.roman@nxp.com>
Signed-off-by: Bogdan-Gabriel Roman <bogdan-gabriel.roman@nxp.com>
Co-developed-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Co-developed-by: Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>
Signed-off-by: Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>
Co-developed-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>
Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>
Co-developed-by: Bogdan Hamciuc <bogdan.hamciuc@nxp.com>
Signed-off-by: Bogdan Hamciuc <bogdan.hamciuc@nxp.com>
Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/pci/nxp,s32g-pcie.yaml           | 130 ++++++++++++++++++
 1 file changed, 130 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/nxp,s32g-pcie.yaml

diff --git a/Documentation/devicetree/bindings/pci/nxp,s32g-pcie.yaml b/Documentation/devicetree/bindings/pci/nxp,s32g-pcie.yaml
new file mode 100644
index 000000000000..66a050028278
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/nxp,s32g-pcie.yaml
@@ -0,0 +1,130 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/nxp,s32g-pcie.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP S32G2xxx/S32G3xxx PCIe Root Complex controller
+
+maintainers:
+  - Bogdan Hamciuc <bogdan.hamciuc@nxp.com>
+  - Ionut Vicovan <ionut.vicovan@nxp.com>
+
+description:
+  This PCIe controller is based on the Synopsys DesignWare PCIe IP.
+  The S32G SoC family has two PCIe controllers, which can be configured as
+  either Root Complex or Endpoint.
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - nxp,s32g2-pcie
+      - items:
+          - const: nxp,s32g3-pcie
+          - const: nxp,s32g2-pcie
+
+  reg:
+    maxItems: 6
+
+  reg-names:
+    items:
+      - const: dbi
+      - const: dbi2
+      - const: atu
+      - const: dma
+      - const: ctrl
+      - const: config
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+
+  interrupt-names:
+    items:
+      - const: msi
+      - const: dma
+    minItems: 1
+
+  pcie@0:
+    description:
+      Describe the S32G Root Port.
+    type: object
+    $ref: /schemas/pci/pci-pci-bridge.yaml#
+
+    properties:
+      reg:
+        maxItems: 1
+
+      phys:
+        maxItems: 1
+
+    required:
+      - reg
+      - phys
+
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - interrupt-names
+  - ranges
+  - pcie@0
+
+allOf:
+  - $ref: /schemas/pci/snps,dw-pcie.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/phy/phy.h>
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pcie@40400000 {
+            compatible = "nxp,s32g3-pcie", "nxp,s32g2-pcie";
+            reg = <0x00 0x40400000 0x0 0x00001000>,   /* dbi registers */
+                  <0x00 0x40420000 0x0 0x00001000>,   /* dbi2 registers */
+                  <0x00 0x40460000 0x0 0x00001000>,   /* atu registers */
+                  <0x00 0x40470000 0x0 0x00001000>,   /* dma registers */
+                  <0x00 0x40481000 0x0 0x000000f8>,   /* ctrl registers */
+                  <0x5f 0xffffe000 0x0 0x00002000>;   /* config space */
+            reg-names = "dbi", "dbi2", "atu", "dma", "ctrl", "config";
+            dma-coherent;
+            #address-cells = <3>;
+            #size-cells = <2>;
+            device_type = "pci";
+            ranges =
+                     <0x01000000 0x0 0x00000000 0x5f 0xfffe0000 0x0 0x00010000>,
+                     <0x02000000 0x0 0x00000000 0x58 0x00000000 0x0 0x80000000>,
+                     <0x02000000 0x1 0x00000000 0x59 0x00000000 0x6 0xfffe0000>;
+
+            bus-range = <0x0 0xff>;
+            interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "msi", "dma";
+            #interrupt-cells = <1>;
+            interrupt-map-mask = <0 0 0 0x7>;
+            interrupt-map = <0 0 0 1 &gic 0 0 GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>,
+                            <0 0 0 2 &gic 0 0 GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>,
+                            <0 0 0 3 &gic 0 0 GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+                            <0 0 0 4 &gic 0 0 GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+
+            pcie@0 {
+                reg = <0x0 0x0 0x0 0x0 0x0>;
+                #address-cells = <3>;
+                #size-cells = <2>;
+                ranges;
+
+                device_type = "pci";
+                phys = <&serdes0 PHY_TYPE_PCIE 0 0>;
+            };
+        };
+    };
-- 
2.43.0


