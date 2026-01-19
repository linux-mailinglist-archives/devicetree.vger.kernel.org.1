Return-Path: <devicetree+bounces-256697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 834F7D3A01F
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 08:39:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9AF1A30A690F
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 07:34:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C4AE3382DE;
	Mon, 19 Jan 2026 07:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U//QOeVZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1194426FA5B
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768808043; cv=none; b=SBx5ZlrEMg2alikFE+uty3SMfDSUYT0gXr9COhf08C82XPadgNGGpl+dQ9fvBcAt+Eeq2MtuqgbRL59P2wlFi3x6DmBAgH5Bdk9VYaM/5iTjmePl5+XZd6dSxHU/5FZA8sJLCq+2jbXAYaqeaWnXqadZKB2nahLwdsRIxTz9jNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768808043; c=relaxed/simple;
	bh=dSJLfH2uv4l9H2gs0CbrF3vvJiX3FRjyqN74yPQtMvc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HwpstGVlNO6nl92VuW3zWCOApbT1or7PuRTDcYO3uwxWb3lYRyrT7b1pgNoPomGQUR3NpAkoSXW+PZaZAi3kflk3C3dSIVPoCDb92mRFo44qqKveQVp6U+f0ojzC6BaUtayEEtgnRCMyNqI3DAn67j9eJgs3paKzvoz/peom32A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U//QOeVZ; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-29efd139227so25369705ad.1
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 23:33:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768808033; x=1769412833; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kwRM1gGaHi8PnymUuB5O39xP4xhmWw83uFj1UvSjw/w=;
        b=U//QOeVZ87A1wiLjMiHKVr6XjC8t4NNDVK9+YAGqddC7KlTr13ekstTiYnmSWXG9Gq
         Bs48H0u4r1dE7mRYu/U3z4KO2k2Eerh6kq2+x6Dh5qWIP/CzhyfX0ahb+UzNlA7gDsn9
         lPDyQd9QEwse2/CX6UTmMyIjHl+rdYUyE8r5Afliu3CDwx3YLf7PsyJI4goEsiOrhtYi
         HYrEa0ohmi/mqXHipk8ktjzkDMfz2+ycBeawWneC3dbdQwDM0cVJX5gDVrQdkRg2hc5D
         8oR5/AoxOzuo7yWXZU7LU/7WOYOfi721acUDGoCZIRI+XqKUpP0/cOhhilxt6cSpOUog
         wDdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768808033; x=1769412833;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kwRM1gGaHi8PnymUuB5O39xP4xhmWw83uFj1UvSjw/w=;
        b=oavp1LOrqbydT0hlxKZ3dtNbszrjFr2W8nS8fQVfN4WwXWzPwT+on96uytThRRHxai
         gQPwULz6puXYQavVIT/wVhmrzvkW8ZHR/Cke1ZoF5QVH1QRJcjcpDds9NthSJCMLCw6t
         Pk9O/VaeW8O2KusklG3DHzM234RUY1R6GfgRH7jZdcc4L0JRmHGYWO7FnxFXLm7nXV/Y
         Jl6IKpw0z33vyJ2GK8nbidFSE6pdHFjmjIuTXqOkeIXHns4u4M+cN/ymI27tF7zpPPOz
         7j7mduurDW1iOmF8UF7k5sL2flaPcNF/PIk94pnt0KkvBPjhUQ035cL/jPHidtxkkAbq
         wPPA==
X-Forwarded-Encrypted: i=1; AJvYcCVD+hcwAwYn4XcTDA1PjIfdpiP3P3llO4Ge12SK7xuupxdZZmVOWH1U0ftA5wWNMAEwhW26DhGSKjfD@vger.kernel.org
X-Gm-Message-State: AOJu0YwHiPrHXjpLYnnr9pgcdLLNaLt2e/9Ba8WRv0ynagOZIIHSVcHE
	F69AQ5NVfN7jDVm8VztSG2jYONAWjJL1TfVOMY/Su3nYoQE4g/O2elZk
X-Gm-Gg: AZuq6aIsImOOvykZKp4ZmF3tAEF5V9wvmVLqUC5a+Fv2sfqf0ZrDUNF2ba0m4YgJYdF
	PfL5XVnsbVokAm1Y6FsHK4ZkIZwDDesP/JGsXsO9RVt+FdKRrG6p/kMBOBSUb3cYQ/K1lMmiuvg
	ohoCQqCTOiroCLYzR9Eg7s4dUFDLjBnNCZ+hNbV4gxYqbXkFOM9D2RCCME3K8e7tm3xmoMu/PNB
	Me8heKb2x/SIk4K3Dk0lXaReNFrr+HkRQmz9kO6ZGknulPDGwdzZAi8vGNGhp2r/5QEVmxByMSe
	TCOFNSHCLKw2oNXEusk7o0k6hBCrem6kzGEUxab9c0nz7LnGL+iYAQEnlGIj1qlyjV32Ey1BDCF
	kD9iqoIJlX3l5kQkWNpZ18Rtd4wWW3FEkEqWmun7gZg3SvYHhQIzZ0nq8IiKhkhujxvTJnXeUau
	2268CMQebhF6PNopM/4Jh5nSnltvcNPNZh7ik6rucJrtj/8ZuaHqwRuhVkiQh/3Z6U3+rzYUw9/
	0lidLqUAz8=
X-Received: by 2002:a17:903:94f:b0:2a2:c4b4:f72d with SMTP id d9443c01a7336-2a718928be5mr113594955ad.30.1768808033242;
        Sun, 18 Jan 2026 23:33:53 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a71941e3cdsm84863325ad.100.2026.01.18.23.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 23:33:52 -0800 (PST)
From: Joey Lu <a0987203069@gmail.com>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mcoquelin.stm32@gmail.com,
	richardcochran@gmail.com
Cc: alexandre.torgue@foss.st.com,
	joabreu@synopsys.com,
	ychuang3@nuvoton.com,
	schung@nuvoton.com,
	yclu4@nuvoton.com,
	peppe.cavallaro@st.com,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH net-next v8 1/3] dt-bindings: net: nuvoton: Add schema for Nuvoton MA35 family GMAC
Date: Mon, 19 Jan 2026 15:33:39 +0800
Message-ID: <20260119073342.3132502-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119073342.3132502-1-a0987203069@gmail.com>
References: <20260119073342.3132502-1-a0987203069@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Create initial schema for Nuvoton MA35 family Gigabit MAC.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../bindings/net/nuvoton,ma35d1-dwmac.yaml    | 126 ++++++++++++++++++
 .../devicetree/bindings/net/snps,dwmac.yaml   |   1 +
 2 files changed, 127 insertions(+)
 create mode 100755 Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml

diff --git a/Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml b/Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml
new file mode 100755
index 000000000000..8eaddfdc937c
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml
@@ -0,0 +1,126 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/nuvoton,ma35d1-dwmac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton DWMAC glue layer controller
+
+maintainers:
+  - Joey Lu <yclu4@nuvoton.com>
+
+description:
+  Nuvoton 10/100/1000Mbps Gigabit Ethernet MAC Controller is based on
+  Synopsys DesignWare MAC (version 3.73a).
+
+allOf:
+  - $ref: snps,dwmac.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - nuvoton,ma35d1-dwmac
+
+  reg:
+    maxItems: 1
+    description:
+      Register range should be one of the GMAC interface.
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: MAC clock
+      - description: PTP clock
+
+  clock-names:
+    items:
+      - const: stmmaceth
+      - const: ptp_ref
+
+  nuvoton,sys:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to access syscon registers.
+          - description: GMAC interface ID.
+            enum:
+              - 0
+              - 1
+    description:
+      A phandle to the syscon with one argument that configures system registers
+      for MA35D1's two GMACs. The argument specifies the GMAC interface ID.
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: stmmaceth
+
+  phy-mode:
+    enum:
+      - rmii
+      - rgmii
+      - rgmii-id
+      - rgmii-txid
+      - rgmii-rxid
+
+  tx-internal-delay-ps:
+    default: 0
+    minimum: 0
+    maximum: 2000
+    description:
+      RGMII TX path delay used only when PHY operates in RGMII mode with
+      internal delay (phy-mode is 'rgmii-id' or 'rgmii-txid') in pico-seconds.
+      Allowed values are from 0 to 2000.
+
+  rx-internal-delay-ps:
+    default: 0
+    minimum: 0
+    maximum: 2000
+    description:
+      RGMII RX path delay used only when PHY operates in RGMII mode with
+      internal delay (phy-mode is 'rgmii-id' or 'rgmii-rxid') in pico-seconds.
+      Allowed values are from 0 to 2000.
+
+required:
+  - clocks
+  - clock-names
+  - nuvoton,sys
+  - resets
+  - reset-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
+    #include <dt-bindings/reset/nuvoton,ma35d1-reset.h>
+    ethernet@40120000 {
+        compatible = "nuvoton,ma35d1-dwmac";
+        reg = <0x40120000 0x10000>;
+        interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "macirq";
+        clocks = <&clk EMAC0_GATE>, <&clk EPLL_DIV8>;
+        clock-names = "stmmaceth", "ptp_ref";
+
+        nuvoton,sys = <&sys 0>;
+        resets = <&sys MA35D1_RESET_GMAC0>;
+        reset-names = "stmmaceth";
+
+        phy-mode = "rgmii-id";
+        phy-handle = <&eth_phy0>;
+        mdio {
+            compatible = "snps,dwmac-mdio";
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            eth_phy0: ethernet-phy@0 {
+                reg = <0>;
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index dd3c72e8363e..10cb5e555750 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -69,6 +69,7 @@ properties:
         - ingenic,x2000-mac
         - loongson,ls2k-dwmac
         - loongson,ls7a-dwmac
+        - nuvoton,ma35d1-dwmac
         - nxp,s32g2-dwmac
         - qcom,qcs404-ethqos
         - qcom,sa8775p-ethqos
-- 
2.43.0


