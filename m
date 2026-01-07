Return-Path: <devicetree+bounces-252433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E247FCFF4E9
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 19:10:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A8F573383412
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 17:02:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A620C3491E1;
	Wed,  7 Jan 2026 16:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UIenzj8l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04643318BB4
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767802307; cv=none; b=PIcx1w3Sgi5KXdp6Oxf3M3lLkeWLott/pdf+lNfcI/TlAnGLLLmJgF2xyzSfOoww+tP+6KYbF/b7i2qOJkdM67L8BLZhz/oDL4rsvjFG0mp/eqewoQLmmEQfda2HqlzOvJnw467gXUQbUAPHNwqyQP1gyW7VsFelCQVRvQrxCy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767802307; c=relaxed/simple;
	bh=dCG+2/Cgy40lXEx+MrUysCXCy1/I7txPE12+/s++jQo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CPCHIlCqZ10Nqli7Y8W1Wz53lz+RT+JtlJoQHMoPfjpOA65RvQO+NoQfb1F0STa4m0fhdurQ/myPO6w3RCyaHPsG4nxdMQC56hXbJbLmHEWrjEqxKmE1remW9hfxuQonJIP/URUCXkRoLBzLbuyltIsKRqkWk83HSbv66W6psEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UIenzj8l; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7aa2170adf9so1491640b3a.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767802295; x=1768407095; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pe34QthE2chIVUbWGjUbfbDZatyb2j7KncedE+Emmac=;
        b=UIenzj8lYoEz08KtKonqtOdVC0YQWS1q8XcbumaiwSA3RVCpiNc9gCZ/SuRA9ZeYnh
         eVRC7XES1m9p2YKjb0ubEc5inWFdAHbGWiMbkB8mMpENLpuBLM3Hr7tIfWpMrpVRc229
         1ASfrYNGCs9hl7deIQla1i4M1lqVB9hYeu9algWW1bOGwpob7OkQ4NSLadjHVIm5Dn+l
         b7fNpgS0EcYYQE6mvZGMSfLlkA7uudKDe2DdvdcOWkixtf4cCEM+be5zsR09BlFJDXF+
         Nu78mJw6HJUNOhujh0jbR2seyb6a2+N85G0m5wfRH0Ck9/4Hz8oO70l0UUNbsQtOoqKZ
         YmeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767802295; x=1768407095;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pe34QthE2chIVUbWGjUbfbDZatyb2j7KncedE+Emmac=;
        b=wwK57iOHrNG9EZG4jHe/LF0JjsusyI7nTYEOPkuznSd9S64cooCyxewtM1m8WLn3W1
         46ulmi2y0WzAw/zxSK2MGFaYRYaVJ/5pVwsNYw6xGz5cv1LBXGYbirhan4l66wFZjyLr
         5c0wgwUnEIRE35iMr4IQ0UVV4kOpFoqBaJgPvtYqUWi8t725APz45J1K7My82PMigTMS
         VTgwGDOp8ImwAaX5h4rIL+1RKme2MJ5EsWQ89R3cPmbosxL27hTPpH6FJTscayB1SDW6
         9l5UQ83MvVt6xHWGNHuR0BcPnfGKjBq05F42n7wy9EsHC2mZL3yng6oeT+KAN/J6AS5B
         o1+w==
X-Forwarded-Encrypted: i=1; AJvYcCV355wewrxO/fCQzZ+kjvNIeVz3niEsPain8ODkV+m4xZLn+xjCAvjlZPcHiu1y6NQHzI6CaaKV2jAh@vger.kernel.org
X-Gm-Message-State: AOJu0YygjLZoxZL+uD87I3WhNC8XR8v6eMy+UsSj8zSDBlwJswCVUYw6
	Zw9l1nvQ847yY04yakBH1482oCBI5e4G7OGq5lrkYBF9QokgQXymgGBS
X-Gm-Gg: AY/fxX4GuP8XCVOVheLBtS79FrNFy5X+I0kEwElnlFxnzPaYaPRnYvC96TlMbU7SE9+
	nFq/FuBCw1GSQAhgIk2YU9vZ8WK10KH4oC3SjAyg7Sf+Xc9I/kbN1iYRPebrSZHYfoTKNe4VeGR
	L92HLalGrqeebrvnf7TKUGHTp3zeSiiojaNKvQP3xTaWyOsaDNBZsiDxjk5P9F93Ejo2a0ZNyMD
	CP6NukmP0v8GKeO02ietTw2UWTj5ooOavrP9rSkSmjF3uq7I866FMgh2GsyCy4FE7aQIZPvDDHx
	1pnOM26N7PlSTkLuDiwwQH93d9V1GUkx2yJyNtmLHGrW0qTWp8PHOPE5mvFpeseHQ1yv56DkiHd
	uFM/H0HmwtGNlilTro+0PXSOPIx+dbnHBqbLzDs9fQnUM/572YyStsT8a6iQie6eCigHhRFxaTZ
	rHP39K6mb1h8nsn7rU+XjtK1+lpPzfOZRS1f8v+A==
X-Google-Smtp-Source: AGHT+IGcBv2Xui1pdUOXBGHztQKHuZvOmj7hk3Q/NO9rK95ub6dbTkDiwRAZBtLsvG5kC7WXvMErgQ==
X-Received: by 2002:a05:6a00:bc2:b0:81c:717b:9d38 with SMTP id d2e1a72fcca58-81c717ba501mr369105b3a.47.1767802295232;
        Wed, 07 Jan 2026 08:11:35 -0800 (PST)
Received: from Black-Pearl.localdomain ([157.50.178.147])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-819bafe98d5sm5373079b3a.21.2026.01.07.08.11.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 08:11:34 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Wed, 07 Jan 2026 16:11:15 +0000
Subject: [PATCH v2 1/2] dt-bindings: phy: ti,phy-usb3: convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260107-ti-phy-v2-1-a1ec27401fff@gmail.com>
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
In-Reply-To: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3

Convert TI PIPE3 PHY binding to DT schema.
Changes during conversion:
- Define a new pattern 'pciephy' to match nodes defined in DT.
- Drop obsolete "id" property from the schema.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 127 +++++++++++++++++++++
 1 file changed, 127 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
new file mode 100644
index 000000000000..41b3828723ae
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
@@ -0,0 +1,127 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,phy-usb3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI PIPE3 PHY Module
+
+maintainers:
+  - Kishon Vijay Abraham I <kishon@ti.com>
+
+description:
+  The TI PIPE3 PHY is a high-speed SerDes (Serializer/Deserializer)
+  transceiver integrated in OMAP5, DRA7xx/AM57xx, and similar SoCs.
+  It supports multiple protocols (USB3, SATA, PCIe) using the PIPE3
+  interface standard, which defines a common physical layer for
+  high-speed serial interfaces.
+
+properties:
+  $nodename:
+    pattern: "^(pciephy|usb3phy|phy)(@[0-9a-f]+)?$"
+
+  compatible:
+    enum:
+      - ti,phy-usb3
+      - ti,phy-pipe3-sata
+      - ti,phy-pipe3-pcie
+      - ti,omap-usb3
+
+  reg:
+    minItems: 2
+    maxItems: 3
+
+  reg-names:
+    minItems: 2
+    maxItems: 3
+    items:
+      enum:
+        - phy_rx
+        - phy_tx
+        - pll_ctrl
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    minItems: 2
+    maxItems: 7
+
+  clock-names:
+    minItems: 2
+    maxItems: 7
+    items:
+      enum: [wkupclk, sysclk, refclk, dpll_ref,
+             dpll_ref_m2, phy-div, div-clk]
+
+  syscon-phy-power:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      Phandle/offset pair to system control module register for PHY
+      power on/off.
+
+  syscon-pllreset:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      Phandle/offset pair to CTRL_CORE_SMA_SW_0 register containing
+      SATA_PLL_SOFT_RESET bit (SATA PHY only).
+
+  syscon-pcs:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      Phandle/offset pair to system control module for writing PCS delay value.
+
+  ctrl-module:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle of control module for PHY power on.
+    deprecated: true
+
+dependencies:
+  syscon-pllreset:
+    properties:
+      compatible:
+        contains:
+          const: ti,phy-pipe3-sata
+
+required:
+  - reg
+  - compatible
+  - reg-names
+  - "#phy-cells"
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    /* TI PIPE3 USB3 PHY */
+    usb3phy@4a084400 {
+        compatible = "ti,phy-usb3";
+        reg = <0x4a084400 0x80>,
+              <0x4a084800 0x64>,
+              <0x4a084c00 0x40>;
+        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
+        #phy-cells = <0>;
+        clocks = <&usb_phy_cm_clk32k>,
+                 <&sys_clkin>,
+                 <&usb_otg_ss_refclk960m>;
+        clock-names = "wkupclk", "sysclk", "refclk";
+        ctrl-module = <&omap_control_usb>;
+    };
+
+  - |
+    /* TI PIPE3 SATA PHY */
+    phy@4a096000 {
+        compatible = "ti,phy-pipe3-sata";
+        reg = <0x4A096000 0x80>,  /* phy_rx */
+              <0x4A096400 0x64>,  /* phy_tx */
+              <0x4A096800 0x40>;  /* pll_ctrl */
+        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
+        clocks = <&sys_clkin1>, <&sata_ref_clk>;
+        clock-names = "sysclk", "refclk";
+        syscon-pllreset = <&scm_conf 0x3fc>;
+        #phy-cells = <0>;
+    };
+...

-- 
2.52.0


