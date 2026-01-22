Return-Path: <devicetree+bounces-258603-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFDZBQlpcmnckQAAu9opvQ
	(envelope-from <devicetree+bounces-258603-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:14:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C49B6C23F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:14:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 439503078B22
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BDEC36829F;
	Thu, 22 Jan 2026 17:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BEJW3J/h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE5E3366079
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 17:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769104488; cv=none; b=hpHXt6FNdh9t9dmXSEIvwLl8WUM7fly4FOWnLTmya1RuPchX1R2Cu7lZDQVkD7AMxOrnPL8Co50e4aTkvxo0kh96olMSRBfXKa/LER6+paN2qDrGy1G8U8mhp2IWs//PsGq04C6ze/zsRYZZEqER4bv95zH2RSDuKk4JbOP1MVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769104488; c=relaxed/simple;
	bh=9++FWI6FiOt8vL2ptkgVtaAFON6QZ6DYaPI7F5pxPA0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oj5m80GcFvjy4Amz/sj7p+LsVObICaspZsULnP6eC1iF46JAO339+rkqR0PcC1ElJsUnU2Nh041A2/g2X4ngQ1NoabTFQ+f3G6As7LVd7gQ965OHv4AgawjR9WaNq4bJUqpSNlOlnvWcfN/mwO4vWZiHHfiUxHbYfwbTxrxZ5yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BEJW3J/h; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a7b23dd036so7086165ad.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 09:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769104477; x=1769709277; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FI40l1zZcp0EM6GPdpYD9qucEk4y4q1/RvaUNk8yFvo=;
        b=BEJW3J/h683xikFGboQCZxnQBfTKl9Ll4du+f69ulQXw+9z0m1dipLJmgsIJyo1L4d
         pqJ1bH98AeY59t1MQ3Gs3TsUrQgAcfqiyaemOHVSZsTxaHp5Zg/VozG+Zbp+HpfPsNN2
         9ACayBVh+bJFGcOsesEzBO2EwzqLosMZaQlr6drFgRKyYb0hmanH8Rs8FaJ4uxxljmcx
         0t5geK9ECHo4sHF2FBmCjzRNl7CboCRdw3rZogqM+SshyiecNt8l3Jm2u1Ln/k4TSQXU
         5eJJgpJ1zb1EE2ZKdRUg94xNnsgMK0+UftMttuuxND7/IpQAv5LQm4gJ8hz1oRtlEtp0
         8KVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769104477; x=1769709277;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FI40l1zZcp0EM6GPdpYD9qucEk4y4q1/RvaUNk8yFvo=;
        b=sKAdSnmEupjlMGqs0x7jzpEI7wUZcPLYeQw3hnApTjVPrcUKU/fZXvzdsxQxTlGl+q
         7GUcDPHVmHp7zXn25lyK8HUx+EO8pSIJmGxo0IPJRKQfJJTpXLwP277De4sufe2kq4/K
         q82JBFAWG99kSXP6QFRt0FBH5FriZNhWqKdNVwAaomTqwHjK695JZ0O0YpEJfoTMGdIF
         D59L5rK4r3qrDKfAtwiar0LnYIK1ecyumFa7jqgB1vMWgTxuF/giU1QXkyfQzVY5DZGt
         uaMWiI12aJe2MY2rH39Qt/NtCaURSbhJixMW6xw1PoeDsdZ/SrZj7CU+lp0WqhQb8OGX
         /XDA==
X-Forwarded-Encrypted: i=1; AJvYcCXxpveOJEsugnBp5R6OsDeORaYLUhMKIf71dM7msbTHY//lwUNUm/yoS4FVmU9FJH3tiCdF+1VXPL5H@vger.kernel.org
X-Gm-Message-State: AOJu0Yx843WAjC5Th93zaneEOH7DjQnIP2GS0ozgaPSYlH538K5GdQ9c
	P+gXN+IMCz2yDiRoxGanurkZPsdfrzpUSWsOtubepH4lZEg7X2Jdo/WF
X-Gm-Gg: AZuq6aI8R00x0G+GYOuDq9aQRwZYJQN4RgUKhq4aRzr1WAJLpx8jmpcs1q6DLwaVjda
	IWSY8v2GofsXqVXDFBa9UE6IBn0od7Kzu/poeOlKdf0hJ58xmHULQgJ6cYWrxddhnmuvRkWB9r9
	Nuke8aJmh1DKlvq3hahTvUWtnJ9nqbIALBj3aJuvPMXIUUihd++J7urythXVk5NPafHFgTUNhk5
	4tUA7sG4V4joIMOrvUMd519Fwu/puKdsZUCmZwNo1PZVS7zhyxaRqxOrmTPW1lhRRRz6T6P+ZKU
	zWWsPk7oDwZ7jWF85QLlsT556um7Jj1hbj0/hlt79wiaMzuuu3+QQ32AGvIkTGSoWp1HcrgCtJN
	/7My4/OuvwIZ0/4TyHLYln8NSl9okAx3yWypetrA6Ry4AzRYRmRxuxxsdD3s0ST/wxt5HmSS5vR
	4oXGi/dky+IAoi1LrU+9OIgR1fnSIAyfMbgWDXN0vae/Xk
X-Received: by 2002:a17:902:f681:b0:2a5:99ec:16d7 with SMTP id d9443c01a7336-2a7fe43ecd4mr2224725ad.7.1769104476545;
        Thu, 22 Jan 2026 09:54:36 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a7190eee4fsm187745195ad.42.2026.01.22.09.54.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 09:54:36 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Thu, 22 Jan 2026 17:52:59 +0000
Subject: [PATCH v3 3/3] dt-bindings: phy: ti,control-phy-otghs: convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-ti-phy-v3-3-751619729433@gmail.com>
References: <20260122-ti-phy-v3-0-751619729433@gmail.com>
In-Reply-To: <20260122-ti-phy-v3-0-751619729433@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Roger Quadros <rogerq@ti.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258603-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url,4a084400:email,4a002300:email,4a096000:email]
X-Rspamd-Queue-Id: 7C49B6C23F
X-Rspamd-Action: no action

Convert TI OMAP Control PHY binding to DT schema.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../bindings/phy/ti,control-phy-otghs.yaml         | 99 ++++++++++++++++++++++
 Documentation/devicetree/bindings/phy/ti-phy.txt   | 98 ---------------------
 2 files changed, 99 insertions(+), 98 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
new file mode 100644
index 000000000000..4ecb1611ee65
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,control-phy-otghs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI OMAP Control PHY Module
+
+maintainers:
+  - Roger Quadros <rogerq@ti.com>
+
+description:
+  The TI OMAP Control PHY module is a hardware block within the system
+  control module (SCM) of Texas Instruments OMAP SoCs. It provides
+  centralized control over power, configuration, and auxiliary features
+  for multiple on-chip PHYs. This module is essential for proper PHY
+  operation in power-constrained embedded systems.
+
+properties:
+  $nodename:
+    pattern: "^phy@[0-9a-f]+$"
+
+  compatible:
+    enum:
+      - ti,control-phy-otghs
+      - ti,control-phy-pcie
+      - ti,control-phy-pipe3
+      - ti,control-phy-usb2
+      - ti,control-phy-usb2-am437
+      - ti,control-phy-usb2-dra7
+
+  reg:
+    minItems: 1
+    maxItems: 3
+
+  reg-names:
+    minItems: 1
+    maxItems: 3
+    items:
+      enum: [otghs_control, power, pcie_pcs, control_sma]
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,control-phy-otghs
+    then:
+      properties:
+        reg-names:
+          const: otghs_control
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,control-phy-pcie
+    then:
+      properties:
+        reg:
+          minItems: 3
+
+        reg-names:
+          items:
+            - const: power
+            - const: pcie_pcs
+            - const: control_sma
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,control-phy-usb2
+              - ti,control-phy-usb2-dra7
+              - ti,control-phy-usb2-am437
+              - ti,control-phy-pipe3
+    then:
+      properties:
+        reg-names:
+          const: power
+
+required:
+  - reg
+  - compatible
+  - reg-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    phy@4a00233c {
+        compatible = "ti,control-phy-otghs";
+        reg = <0x4a00233c 0x4>;
+        reg-names = "otghs_control";
+    };
+...
diff --git a/Documentation/devicetree/bindings/phy/ti-phy.txt b/Documentation/devicetree/bindings/phy/ti-phy.txt
deleted file mode 100644
index 7c7936b89f2c..000000000000
--- a/Documentation/devicetree/bindings/phy/ti-phy.txt
+++ /dev/null
@@ -1,98 +0,0 @@
-TI PHY: DT DOCUMENTATION FOR PHYs in TI PLATFORMs
-
-OMAP CONTROL PHY
-
-Required properties:
- - compatible: Should be one of
- "ti,control-phy-otghs" - if it has otghs_control mailbox register as on OMAP4.
- "ti,control-phy-usb2" - if it has Power down bit in control_dev_conf register
-                        e.g. USB2_PHY on OMAP5.
- "ti,control-phy-pipe3" - if it has DPLL and individual Rx & Tx power control
-                        e.g. USB3 PHY and SATA PHY on OMAP5.
- "ti,control-phy-pcie" - for pcie to support external clock for pcie and to
-			set PCS delay value.
-			e.g. PCIE PHY in DRA7x
- "ti,control-phy-usb2-dra7" - if it has power down register like USB2 PHY on
-                        DRA7 platform.
- "ti,control-phy-usb2-am437" - if it has power down register like USB2 PHY on
-                        AM437 platform.
- - reg : register ranges as listed in the reg-names property
- - reg-names: "otghs_control" for control-phy-otghs
-	      "power", "pcie_pcs" and "control_sma" for control-phy-pcie
-	      "power" for all other types
-
-omap_control_usb: omap-control-usb@4a002300 {
-        compatible = "ti,control-phy-otghs";
-        reg = <0x4a00233c 0x4>;
-        reg-names = "otghs_control";
-};
-
-TI PIPE3 PHY
-
-Required properties:
- - compatible: Should be "ti,phy-usb3", "ti,phy-pipe3-sata" or
-   "ti,phy-pipe3-pcie. "ti,omap-usb3" is deprecated.
- - reg : Address and length of the register set for the device.
- - reg-names: The names of the register addresses corresponding to the registers
-   filled in "reg".
- - #phy-cells: determine the number of cells that should be given in the
-   phandle while referencing this phy.
- - clocks: a list of phandles and clock-specifier pairs, one for each entry in
-   clock-names.
- - clock-names: should include:
-   * "wkupclk" - wakeup clock.
-   * "sysclk" - system clock.
-   * "refclk" - reference clock.
-   * "dpll_ref" - external dpll ref clk
-   * "dpll_ref_m2" - external dpll ref clk
-   * "phy-div" - divider for apll
-   * "div-clk" - apll clock
-
-Optional properties:
- - id: If there are multiple instance of the same type, in order to
-   differentiate between each instance "id" can be used (e.g., multi-lane PCIe
-   PHY). If "id" is not provided, it is set to default value of '1'.
- - syscon-pllreset: Handle to system control region that contains the
-   CTRL_CORE_SMA_SW_0 register and register offset to the CTRL_CORE_SMA_SW_0
-   register that contains the SATA_PLL_SOFT_RESET bit. Only valid for sata_phy.
- - syscon-pcs : phandle/offset pair. Phandle to the system control module and the
-   register offset to write the PCS delay value.
-
-Deprecated properties:
- - ctrl-module : phandle of the control module used by PHY driver to power on
-   the PHY.
-
-Recommended properties:
- - syscon-phy-power : phandle/offset pair. Phandle to the system control
-   module and the register offset to power on/off the PHY.
-
-This is usually a subnode of ocp2scp to which it is connected.
-
-usb3phy@4a084400 {
-	compatible = "ti,phy-usb3";
-	reg = <0x4a084400 0x80>,
-	      <0x4a084800 0x64>,
-	      <0x4a084c00 0x40>;
-	reg-names = "phy_rx", "phy_tx", "pll_ctrl";
-	ctrl-module = <&omap_control_usb>;
-	#phy-cells = <0>;
-	clocks = <&usb_phy_cm_clk32k>,
-		 <&sys_clkin>,
-		 <&usb_otg_ss_refclk960m>;
-	clock-names =	"wkupclk",
-			"sysclk",
-			"refclk";
-};
-
-sata_phy: phy@4a096000 {
-	compatible = "ti,phy-pipe3-sata";
-	reg = <0x4A096000 0x80>, /* phy_rx */
-	      <0x4A096400 0x64>, /* phy_tx */
-	      <0x4A096800 0x40>; /* pll_ctrl */
-	reg-names = "phy_rx", "phy_tx", "pll_ctrl";
-	ctrl-module = <&omap_control_sata>;
-	clocks = <&sys_clkin1>, <&sata_ref_clk>;
-	clock-names = "sysclk", "refclk";
-	syscon-pllreset = <&scm_conf 0x3fc>;
-	#phy-cells = <0>;
-};

-- 
2.52.0


