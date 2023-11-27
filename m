Return-Path: <devicetree+bounces-19285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2A57FA511
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 16:43:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 19448B211C1
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 15:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 944173456A;
	Mon, 27 Nov 2023 15:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jOmAkxrC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A88061B6
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 07:43:20 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50baa2a278bso2813307e87.0
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 07:43:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701099799; x=1701704599; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3aP8K9Goq0Ajdk3ruXbrYq/NC+8PUborhUnZaj6PIZ0=;
        b=jOmAkxrCo3wCfew4GYwOGy/jb8LihQSVMqX/uPau083+FTuqdJ5PFq/Kr2QtkmPVt0
         o0mDjS+QD4P2/oOLaRvVp0ufbpxunMbtdpIJBLZJVri6DkQNpVAb9eGxG3hZvBO+MlW1
         BUD8dKz/TxJGUE4DbEZjCt9101dYDXpHlkdDR/YFu82rndP1HDICKYWDGR7nn/qfp6BX
         QwU5jiRylvMHvHfgq/QY9+oYTo8vK7nZ+M3iSfKWhmIQ3ymUN1zhOewtHyJDhG4mXrq2
         expIwSGQiGmlLPcW8wJE+Qa2q74JiuUBct9Ek9mMPnIQJTihCyWjoGZqeO95T/lfWrp0
         dTGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701099799; x=1701704599;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3aP8K9Goq0Ajdk3ruXbrYq/NC+8PUborhUnZaj6PIZ0=;
        b=CTrtoxwwzPNymu68CONNRjr2xwvA9yNXXSyfTwD85fTiTtk7aqciYijHYLm7eO3hfN
         VDLDy1TI9O3PRoo9s1yQIZa+LGUoNvo6BmOfkyGXrmZIaX9IPSYyErONz0nzfBezdlrB
         v4+aZJP6kT2WQMOL12q/PDSJ819v3H3A5EBVbz5+MDwcYPiLJMzyPPw6TK8RKpme3tT1
         0v7OzGujS/rwY/OEAI23liB/Ykva2TOKvT00LlOXdFeGRJnKk02rCwDGGYpIz1jck/ec
         b5T1LiIZN/yxI1sG1ONYMBDcel2wi0Z2PEkm9R/P0wRdi2Pp8OOcTR84Zbc92Igx66PS
         1YcA==
X-Gm-Message-State: AOJu0Yyh8yDD5rk2rXRy0BZHrttKkzfEBn0dWCRCjWm7Kn73vSM6EdXK
	nwzVbiOnyK5Rr10oBeUJKjqnag==
X-Google-Smtp-Source: AGHT+IEl2h/fOsgwU09exGBpssRKZnlkjGR2zVc5gS4VsLGIP5yLiJ2denrQ+5UDOLs7S1XfAarBhA==
X-Received: by 2002:a05:6512:1105:b0:50b:a69d:b8bb with SMTP id l5-20020a056512110500b0050ba69db8bbmr6124861lfg.49.1701099798589;
        Mon, 27 Nov 2023 07:43:18 -0800 (PST)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id v28-20020ac2559c000000b0050ab86037d8sm1505049lfg.205.2023.11.27.07.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 07:43:18 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Nov 2023 16:43:08 +0100
Subject: [PATCH net-next v9 5/5] dt-bindings: marvell: Add Marvell
 MV88E6060 DSA schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231127-marvell-88e6152-wan-led-v9-5-272934e04681@linaro.org>
References: <20231127-marvell-88e6152-wan-led-v9-0-272934e04681@linaro.org>
In-Reply-To: <20231127-marvell-88e6152-wan-led-v9-0-272934e04681@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 Vladimir Oltean <olteanv@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 =?utf-8?q?Marek_Beh=C3=BAn?= <kabel@kernel.org>
Cc: Christian Marangi <ansuelsmth@gmail.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Vladimir Oltean <vladimir.oltean@nxp.com>, Rob Herring <robh@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>
X-Mailer: b4 0.12.4

The Marvell MV88E6060 is one of the oldest DSA switches from
Marvell, and it has DT bindings used in the wild. Let's define
them properly.

It is different enough from the rest of the MV88E6xxx switches
that it deserves its own binding.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/net/dsa/marvell,mv88e6060.yaml        | 88 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 89 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/dsa/marvell,mv88e6060.yaml b/Documentation/devicetree/bindings/net/dsa/marvell,mv88e6060.yaml
new file mode 100644
index 000000000000..4f1adf00431a
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/dsa/marvell,mv88e6060.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/dsa/marvell,mv88e6060.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell MV88E6060 DSA switch
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+
+description:
+  The Marvell MV88E6060 switch has been produced and sold by Marvell
+  since at least 2008. The switch has one pin ADDR4 that controls the
+  MDIO address of the switch to be 0x10 or 0x00, and on the MDIO bus
+  connected to the switch, the PHYs inside the switch appear as
+  independent devices on address 0x00-0x04 or 0x10-0x14, so in difference
+  from many other DSA switches this switch does not have an internal
+  MDIO bus for the PHY devices.
+
+properties:
+  compatible:
+    const: marvell,mv88e6060
+    description:
+      The MV88E6060 is the oldest Marvell DSA switch product, and
+      as such a bit limited in features compared to later hardware.
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    description:
+      GPIO to be used to reset the whole device
+    maxItems: 1
+
+allOf:
+  - $ref: dsa.yaml#/$defs/ethernet-ports
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-switch@16 {
+            compatible = "marvell,mv88e6060";
+            reg = <16>;
+
+            ethernet-ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                ethernet-port@0 {
+                    reg = <0>;
+                    label = "lan1";
+                };
+                ethernet-port@1 {
+                    reg = <1>;
+                    label = "lan2";
+                };
+                ethernet-port@2 {
+                    reg = <2>;
+                    label = "lan3";
+                };
+                ethernet-port@3 {
+                    reg = <3>;
+                    label = "lan4";
+                };
+                ethernet-port@5 {
+                    reg = <5>;
+                    phy-mode = "rev-mii";
+                    ethernet = <&ethc>;
+                    fixed-link {
+                        speed = <100>;
+                        full-duplex;
+                    };
+                };
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 73e00086b130..3e1700d56736 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12786,6 +12786,7 @@ MARVELL 88E6XXX ETHERNET SWITCH FABRIC DRIVER
 M:	Andrew Lunn <andrew@lunn.ch>
 L:	netdev@vger.kernel.org
 S:	Maintained
+F:	Documentation/devicetree/bindings/net/dsa/marvell,mv88e6060.yaml
 F:	Documentation/devicetree/bindings/net/dsa/marvell,mv88e6xxx.yaml
 F:	Documentation/networking/devlink/mv88e6xxx.rst
 F:	drivers/net/dsa/mv88e6xxx/

-- 
2.34.1


