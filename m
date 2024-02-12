Return-Path: <devicetree+bounces-40973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A08851CB9
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 239801C21F15
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C63843FB2E;
	Mon, 12 Feb 2024 18:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TUXrDHmC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B246740C03
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 18:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707762557; cv=none; b=LbDY6fP3iQpfCZmCnbkHNs5qPsEcjYIr2ApP4RHnO32eN6yspVbwrWqaKRM6Ny6nrqXVbDhpi5JorDgqyn1Qyfwmyfmgfa07fpxTuuXKe5Njz14ldx/Hhgw5DRKmNzO8B9npqrLxXROY80i5a5OkaVZwSKkPo5V/9c6PtByb7VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707762557; c=relaxed/simple;
	bh=2oSQyyFtLgPUGqbrN+g4ldKCGIcpH9Wkq0dbCYNLPbA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=lCOqdnKfXim9UySreomomXTT/5QOcafG40QyoxRDbjL90iSkUKiBOizzYKA7v/dG5aX4x2AtYjwwKAl+esF+JR9xrC8BajM3+9RrqyhMQvuI6gyckVaFnrDAXFbRBJ/Xs/QuLbGN+v5MCnOebhUdDshewSHDE8CZTJRJCfv+fys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TUXrDHmC; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-41166710058so5045825e9.3
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 10:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707762554; x=1708367354; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gKODUFCzXH1xAGWHJPaTGC50QYmXdJIdivv6eKgvZnk=;
        b=TUXrDHmCzhgBbKT0Pmvz0QBYNQh/8wl1C9+dOaUPGnlPe1gsIV2Wwten1XY40lq+yd
         NVgGO9lV3ys3XQZv8jCUyy8/AG14ox5wFmByEGen5Inoyn55EekJ7hnMbaDeKQLrYdk+
         Raay5cJ7rRHT19TMdlV0g57uLU75joQ76sZFFH0xJN6agQl3PHO2pJPmWp91NsuOfrKy
         jDpWycyNQe94Viw3OZUQTSmSHCeyAPwzWVJPAvcO/gZsqR91HCMaJtYbZIkUqR9/NkvZ
         4vjXO6L10L7Dqsk5z5ohDkX7ni0xMys9XrpQqPUlua7jPugyT6vPirhYvsKPDsAkynQU
         tNnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707762554; x=1708367354;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gKODUFCzXH1xAGWHJPaTGC50QYmXdJIdivv6eKgvZnk=;
        b=Nn9kSPhhrWzxxBYmDNZ1/uNT9bg45MSgMhExiZXeenEeb5Te1mXs+MnpHC++QYWrqc
         kXZZ1aPCPTibkbjpVhVXKHH6HPmwphgyKnLlnNiWIOSCV6rHVICoW1snhutlBSzuG8Hf
         GRpZC5+Vha3mdxjh9AG7QwkLZBYRweQXBwWdJNfXtkRFOypf2sa1TbhDYzWukvH8zAuq
         AAxxIo9fm7OU+gIhg1Ga2nA3do6UAjeq4GRmV+k3q0vQqZgxrbp+GPByt2lrSvhsICyz
         ryPprr7h74/pb/UOhDXmcIqx7Hadba8id2Cup2lWOGmyAM/sHlZWrKBrVI78MyaDRMJs
         AL5g==
X-Forwarded-Encrypted: i=1; AJvYcCUpjukZSs8oqBSW7o9BcnlqLZAATSzxDaggywbhbry0mdqye3QiN2VWOiPOeUkfu88pV1ErRCXxmNRKIxEY/fJbCqKlV9eGl68CUg==
X-Gm-Message-State: AOJu0Yx8Eo5Nz9s3QY76hLTP+s5bWdw1zzGXam31ZDauU3dk4cKKKZ76
	Ir7JZLd4m1SUhRIEuBeZ39CE2URbdGIYotiJp8tdWn7fPohJUlQvYpIsC4ksjIY=
X-Google-Smtp-Source: AGHT+IGH2x7z4naCBsdzCmdXabnMaXlTApon5v6PZ5vGE7i+pfWbTlduPiqvFV2qfsxz0kJHSyRHsw==
X-Received: by 2002:a05:600c:5489:b0:410:78fb:c1ef with SMTP id iv9-20020a05600c548900b0041078fbc1efmr6012650wmb.33.1707762553991;
        Mon, 12 Feb 2024 10:29:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXp6FkjBNynrg8ReFDDny+o5EVQnDKfABedo8FJVRo+H7hun+D4Gy3kjYEaBRAAYcoXvHBwpja7Up2NqIbDJy3EAZQIV4HAeDSGBVrpGoTX2ZHT1Vqaly2uYYcTUxepBUXE2/eAnYxiQ3w6xsgoJJ8HcuuG+P0pApq7imxhvAZQpHIHBKxvde0DnP/q8l8PapmHny+FpQS3ClNXCPAWcuBRIVxBOMlo0TB0awTEFDYhcW22yBnQHTL40G0hMICR01JvyqZQuJFh75Xx8VrOXtpkAnDN6isHl4j0UsUupEdfPhfGXCKWEwX/oT9qo13VAByWxSlVuKziO7z0vrMAmXyc5CAk5JdnumvbXXEO30toy+emXFtjttaTxMxg3EyhWP5yiqqtHkbuWUmmWzOTKebBiUSiCU80
Received: from krzk-bin.. ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id i5-20020a05600c290500b0040ef95e1c78sm9337299wmd.3.2024.02.12.10.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:29:13 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: net: qca,ar9331: convert to DT schema
Date: Mon, 12 Feb 2024 19:29:11 +0100
Message-Id: <20240212182911.233819-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Qualcomm Atheros AR9331 built-in switch bindings to DT
schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

DSA switch bindings still bring me headache...

Changes in v2:
1. Narrow pattern for phy children to ethernet-phy@ or phy@ (MIPS DTS
   has the latter) - Conor.
---
 .../devicetree/bindings/net/dsa/ar9331.txt    | 147 ----------------
 .../bindings/net/dsa/qca,ar9331.yaml          | 161 ++++++++++++++++++
 2 files changed, 161 insertions(+), 147 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/dsa/ar9331.txt
 create mode 100644 Documentation/devicetree/bindings/net/dsa/qca,ar9331.yaml

diff --git a/Documentation/devicetree/bindings/net/dsa/ar9331.txt b/Documentation/devicetree/bindings/net/dsa/ar9331.txt
deleted file mode 100644
index f824fdae0da2..000000000000
--- a/Documentation/devicetree/bindings/net/dsa/ar9331.txt
+++ /dev/null
@@ -1,147 +0,0 @@
-Atheros AR9331 built-in switch
-=============================
-
-It is a switch built-in to Atheros AR9331 WiSoC and addressable over internal
-MDIO bus. All PHYs are built-in as well.
-
-Required properties:
-
- - compatible: should be: "qca,ar9331-switch"
- - reg: Address on the MII bus for the switch.
- - resets : Must contain an entry for each entry in reset-names.
- - reset-names : Must include the following entries: "switch"
- - interrupt-parent: Phandle to the parent interrupt controller
- - interrupts: IRQ line for the switch
- - interrupt-controller: Indicates the switch is itself an interrupt
-   controller. This is used for the PHY interrupts.
- - #interrupt-cells: must be 1
- - mdio: Container of PHY and devices on the switches MDIO bus.
-
-See Documentation/devicetree/bindings/net/dsa/dsa.txt for a list of additional
-required and optional properties.
-Examples:
-
-eth0: ethernet@19000000 {
-	compatible = "qca,ar9330-eth";
-	reg = <0x19000000 0x200>;
-	interrupts = <4>;
-
-	resets = <&rst 9>, <&rst 22>;
-	reset-names = "mac", "mdio";
-	clocks = <&pll ATH79_CLK_AHB>, <&pll ATH79_CLK_AHB>;
-	clock-names = "eth", "mdio";
-
-	phy-mode = "mii";
-	phy-handle = <&phy_port4>;
-};
-
-eth1: ethernet@1a000000 {
-	compatible = "qca,ar9330-eth";
-	reg = <0x1a000000 0x200>;
-	interrupts = <5>;
-	resets = <&rst 13>, <&rst 23>;
-	reset-names = "mac", "mdio";
-	clocks = <&pll ATH79_CLK_AHB>, <&pll ATH79_CLK_AHB>;
-	clock-names = "eth", "mdio";
-
-	phy-mode = "gmii";
-
-	fixed-link {
-		speed = <1000>;
-		full-duplex;
-	};
-
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		switch10: switch@10 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			compatible = "qca,ar9331-switch";
-			reg = <0x10>;
-			resets = <&rst 8>;
-			reset-names = "switch";
-
-			interrupt-parent = <&miscintc>;
-			interrupts = <12>;
-
-			interrupt-controller;
-			#interrupt-cells = <1>;
-
-			ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				switch_port0: port@0 {
-					reg = <0x0>;
-					ethernet = <&eth1>;
-
-					phy-mode = "gmii";
-
-					fixed-link {
-						speed = <1000>;
-						full-duplex;
-					};
-				};
-
-				switch_port1: port@1 {
-					reg = <0x1>;
-					phy-handle = <&phy_port0>;
-					phy-mode = "internal";
-				};
-
-				switch_port2: port@2 {
-					reg = <0x2>;
-					phy-handle = <&phy_port1>;
-					phy-mode = "internal";
-				};
-
-				switch_port3: port@3 {
-					reg = <0x3>;
-					phy-handle = <&phy_port2>;
-					phy-mode = "internal";
-				};
-
-				switch_port4: port@4 {
-					reg = <0x4>;
-					phy-handle = <&phy_port3>;
-					phy-mode = "internal";
-				};
-			};
-
-			mdio {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				interrupt-parent = <&switch10>;
-
-				phy_port0: phy@0 {
-					reg = <0x0>;
-					interrupts = <0>;
-				};
-
-				phy_port1: phy@1 {
-					reg = <0x1>;
-					interrupts = <0>;
-				};
-
-				phy_port2: phy@2 {
-					reg = <0x2>;
-					interrupts = <0>;
-				};
-
-				phy_port3: phy@3 {
-					reg = <0x3>;
-					interrupts = <0>;
-				};
-
-				phy_port4: phy@4 {
-					reg = <0x4>;
-					interrupts = <0>;
-				};
-			};
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/net/dsa/qca,ar9331.yaml b/Documentation/devicetree/bindings/net/dsa/qca,ar9331.yaml
new file mode 100644
index 000000000000..fd9ddc59d38c
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/dsa/qca,ar9331.yaml
@@ -0,0 +1,161 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/dsa/qca,ar9331.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Atheros AR9331 built-in switch
+
+maintainers:
+  - Oleksij Rempel <o.rempel@pengutronix.de>
+
+description:
+  Qualcomm Atheros AR9331 is a switch built-in to Atheros AR9331 WiSoC and
+  addressable over internal MDIO bus. All PHYs are built-in as well.
+
+properties:
+  compatible:
+    const: qca,ar9331-switch
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 1
+
+  mdio:
+    $ref: /schemas/net/mdio.yaml#
+    unevaluatedProperties: false
+    properties:
+      interrupt-parent: true
+
+    patternProperties:
+      '(ethernet-)?phy@[0-4]+$':
+        type: object
+        unevaluatedProperties: false
+
+        properties:
+          reg: true
+          interrupts:
+            maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: switch
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-controller
+  - '#interrupt-cells'
+  - mdio
+  - ports
+  - resets
+  - reset-names
+
+allOf:
+  - $ref: dsa.yaml#/$defs/ethernet-ports
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        switch10: switch@10 {
+            compatible = "qca,ar9331-switch";
+            reg = <0x10>;
+
+            interrupt-parent = <&miscintc>;
+            interrupts = <12>;
+            interrupt-controller;
+            #interrupt-cells = <1>;
+
+            resets = <&rst 8>;
+            reset-names = "switch";
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0x0>;
+                    ethernet = <&eth1>;
+
+                    phy-mode = "gmii";
+
+                    fixed-link {
+                        speed = <1000>;
+                        full-duplex;
+                    };
+                };
+
+                port@1 {
+                    reg = <0x1>;
+                    phy-handle = <&phy_port0>;
+                    phy-mode = "internal";
+                };
+
+                port@2 {
+                    reg = <0x2>;
+                    phy-handle = <&phy_port1>;
+                    phy-mode = "internal";
+                };
+
+                port@3 {
+                    reg = <0x3>;
+                    phy-handle = <&phy_port2>;
+                    phy-mode = "internal";
+                };
+
+                port@4 {
+                    reg = <0x4>;
+                    phy-handle = <&phy_port3>;
+                    phy-mode = "internal";
+                };
+            };
+
+            mdio {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                interrupt-parent = <&switch10>;
+
+                phy_port0: ethernet-phy@0 {
+                    reg = <0x0>;
+                    interrupts = <0>;
+                };
+
+                phy_port1: ethernet-phy@1 {
+                    reg = <0x1>;
+                    interrupts = <0>;
+                };
+
+                phy_port2: ethernet-phy@2 {
+                    reg = <0x2>;
+                    interrupts = <0>;
+                };
+
+                phy_port3: ethernet-phy@3 {
+                    reg = <0x3>;
+                    interrupts = <0>;
+                };
+
+                phy_port4: ethernet-phy@4 {
+                    reg = <0x4>;
+                    interrupts = <0>;
+                };
+            };
+        };
+    };
-- 
2.34.1


