Return-Path: <devicetree+bounces-11308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC267D516D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:21:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2CAD22811F5
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 13:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D96C22B5F8;
	Tue, 24 Oct 2023 13:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IFf5k+VO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07302B5DE
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:20:44 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B72D612C
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 06:20:40 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-507a55302e0so6043871e87.0
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 06:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698153639; x=1698758439; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IpZ8b7O2cRe1OvuYy4CjSC9AKU1bWUMAZ3eqzNW29dM=;
        b=IFf5k+VOFbXindKp11L+8xfJZdZX8KIsLMPpYcuaPCeI3dS6gwGel/I8D4zfhUW+RT
         FtaSr05apHp1DC7bv2xr5THYhPQlLEbXLhXW+/jRJTdVpFWC4X3SfaNUQmg3VOu5NO9L
         e/uwwiw0vR2dw09qK2iEKLu4Sj7AV+JeStNcQNLslZljVMERi1haXCvmuWiosf4GeFkH
         DBaIyZeLeiK/kVopGzxFKX7b/ITfJPHRYyq+8RmVi1T6BDszdpK0ThsY/UUnr6m6qZNT
         XZOaqMMWzi5K2rmynEOVKvMTauceqqBWCEd8VOfP52EEwunntCfyemziFWkIexR0EKEl
         eLaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698153639; x=1698758439;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IpZ8b7O2cRe1OvuYy4CjSC9AKU1bWUMAZ3eqzNW29dM=;
        b=R8vjhAyxPEgUaRHBO8+sdVMS9AV/zqjSR9pKGxegTGze7KQNXi40KFJxCYg4emgPdF
         kiaSafax67Y9BZE2uL/HKM3fz8vfPhxfqU3GxQtW0ulsouClMzMpsv/TBnzSsSR5+il1
         YNhlE2Pu0qTTvH5bWR72mriD7/5Bn8CT/9iPbxO8RDSqQAdl404B0ZEgBfWgtVZrPU58
         G84jmJFynlc1fIaAETwjmgE/NelYIPK/ml33wQJC92+2Nh6Y7HYDquLG9gwogcvdtWB1
         Bj+tzo/M3MXSExluedbmu2Dvjfl90Ez82xdq7UzmLyzLOkGg4p06FqtnXpJ1QC52P8rg
         +Z7w==
X-Gm-Message-State: AOJu0Yz2xqqDuCfOfYv7hwYtx8gku/cuQeygIaiaPN9juPgMLIMz8cvY
	HF+w3KczzpZrjUbdXLiS7HHT7Q==
X-Google-Smtp-Source: AGHT+IE42ZwxuiLGgEP6CY50vZPuTWFatHkn0sPZUAo9tit11mSOsxO/4Gi/5hxrfG8TnIW9Qz6dpw==
X-Received: by 2002:ac2:4183:0:b0:507:9f51:acee with SMTP id z3-20020ac24183000000b005079f51aceemr7796503lfh.22.1698153638918;
        Tue, 24 Oct 2023 06:20:38 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id d5-20020a193845000000b00507ab956ab9sm2147365lfj.147.2023.10.24.06.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 06:20:38 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 24 Oct 2023 15:20:33 +0200
Subject: [PATCH net-next v7 7/7] dt-bindings: marvell: Add Marvell
 MV88E6060 DSA schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231024-marvell-88e6152-wan-led-v7-7-2869347697d1@linaro.org>
References: <20231024-marvell-88e6152-wan-led-v7-0-2869347697d1@linaro.org>
In-Reply-To: <20231024-marvell-88e6152-wan-led-v7-0-2869347697d1@linaro.org>
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
 Vladimir Oltean <vladimir.oltean@nxp.com>, Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.4

The Marvell MV88E6060 is one of the oldest DSA switches from
Marvell, and it has DT bindings used in the wild. Let's define
them properly.

It is different enough from the rest of the MV88E6xxx switches
that it deserves its own binding.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
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


