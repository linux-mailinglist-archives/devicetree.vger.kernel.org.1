Return-Path: <devicetree+bounces-10788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3064E7D2B12
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 09:19:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D442C281504
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 07:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C20811C91;
	Mon, 23 Oct 2023 07:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XBGE3orD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8EDF10A2B
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:19:19 +0000 (UTC)
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC055D7C
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 00:19:16 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c504a5e1deso46763101fa.2
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 00:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698045554; x=1698650354; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gq8DR5RNSIB2KF67rLQezzE4XvH4EK3ZE14X17dxVQY=;
        b=XBGE3orDkYGCRnROYC2ItWTwXtKU7waynHwyI3e5RKnZ713WYrwownzvts1SFp1eaq
         2Hwwrtyo0t0YEJVSf9KUCSX3jPgnheDpDuL18d0GaZ3HnhoHVw8IGn3Dpgwm9lmBTWdd
         UX0/saPUl9GPPkzbhAgtUHMf49vzV2YB8QaokLG2oKisdLPfZA5JgY/JPKujLxn9okBB
         Xj/cNdg8yOq8YM8HClkR0hnYK6/VhjSsL9ofOjJzKZGqBlg8oW62PWLZZiKHoC3OWNfO
         WTRbj4IGJPEjQ6IIu1OyXI0a+p95Gvo1gNBhhhyzkt8YsRaoPyu70NuPQwXOen5wtdKB
         Vmsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698045554; x=1698650354;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gq8DR5RNSIB2KF67rLQezzE4XvH4EK3ZE14X17dxVQY=;
        b=YgxjSqK6iv1FK02PematOcT5ktXqt5XCkHpd5b+rubWx7KWn7JTaYhZjpxTaLlUkiI
         OGSLCsumDrg8X6+SFda4xalqhKM/egETDmO3tt+YtSv+FpbHOGRoUWACISKhFH/CoitD
         HQuC1KKhBJf/JO7yxzSRoKZxM3SEwhwp0zf04DxbOp4ulScx2BgX1pKDl3lFS5nbEXVJ
         dHgz0oc7zn9luMOWC+sbilJxqcFqEasOyFQB1llQpnxwWzmIG+o1DJLqbFR8jeiuf3GP
         s7j2SFyrWuH/jYbBncUflbWOrfd5hmaKrPUUCKt5vzLYYgWj+LWZ7N4UkMB5YGo4I5RD
         Midw==
X-Gm-Message-State: AOJu0YyK8g11lByOCfHD5b50IQewOy4IuR+OJH6lo3x7ct+NZWG2UCB3
	2apF9DGIQQvl307CDaRMBqtzqA==
X-Google-Smtp-Source: AGHT+IFyR9pjQKtApff7NBytpKJ6G6eBrMw4j76oyESVgw9SxxMCqGOaLyBOAWJkZ4ODzm0UDxmoLQ==
X-Received: by 2002:a19:550f:0:b0:507:bbbe:5287 with SMTP id n15-20020a19550f000000b00507bbbe5287mr5543058lfe.51.1698045554720;
        Mon, 23 Oct 2023 00:19:14 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id w15-20020a05651204cf00b00507a682c049sm1578727lfq.215.2023.10.23.00.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 00:19:14 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 23 Oct 2023 09:18:58 +0200
Subject: [PATCH net-next v5 7/7] dt-bindings: marvell: Add Marvell
 MV88E6060 DSA schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-marvell-88e6152-wan-led-v5-7-0e82952015a7@linaro.org>
References: <20231023-marvell-88e6152-wan-led-v5-0-0e82952015a7@linaro.org>
In-Reply-To: <20231023-marvell-88e6152-wan-led-v5-0-0e82952015a7@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 Vladimir Oltean <olteanv@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: Christian Marangi <ansuelsmth@gmail.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailer: b4 0.12.4

The Marvell MV88E6060 is one of the oldest DSA switches from
Marvell, and it has DT bindings used in the wild. Let's define
them properly.

It is different enough from the rest of the MV88E6xxx switches
that it deserves its own binding.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
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
index 1b4475254d27..4c933a2a56ad 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12625,6 +12625,7 @@ MARVELL 88E6XXX ETHERNET SWITCH FABRIC DRIVER
 M:	Andrew Lunn <andrew@lunn.ch>
 L:	netdev@vger.kernel.org
 S:	Maintained
+F:	Documentation/devicetree/bindings/net/dsa/marvell,mv88e6060.yaml
 F:	Documentation/devicetree/bindings/net/dsa/marvell,mv88e6xxx.yaml
 F:	Documentation/networking/devlink/mv88e6xxx.rst
 F:	drivers/net/dsa/mv88e6xxx/

-- 
2.34.1


