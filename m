Return-Path: <devicetree+bounces-70997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8A38D54E1
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 23:53:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 150CC1F24D5E
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 21:53:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 113C4183095;
	Thu, 30 May 2024 21:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LTFcpd8j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509AA183974
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 21:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717106001; cv=none; b=Kd8myGHSqfuX+MmAr97QRHYwiDBjesU0OVCW+2jWZNaCFQl8aKQZDutN4Hn3r9aLQDrAOgTZKjOlXeAhWqBW6G5hESj6HjfPjXibYeVK/8h2TGWTqDmJI683kOZgMYC5UfSrHujHOz7Qde4zW11AFqCW0ootKUoqPbE5heXuqGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717106001; c=relaxed/simple;
	bh=JERaJpaM8OjMD5Y9f+mQQmsUUGJl0Ce9rp2zn2zz8EA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=kzUgtm/JVpjNvuKg7cstRzILQt6X7vfAiGjq0UYJJGa6DE5bdaHeBLWJTdve+B3T07x/w0+lK9LB9nIushjwiMmRRbGA5F57ymUPyz/sTsCHjMhioGSs4jTbxx3Q+ZUoXb2q/Nec2D9TE4Hcbv8POf7OXPIOnT8m291h0NE5u5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LTFcpd8j; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ea80a18094so15121791fa.0
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 14:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717105996; x=1717710796; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6L7CJk8y7uxjPPzXJtWTSWLVeKZoEtck7qZWUqtY9fI=;
        b=LTFcpd8jD34FOu6pbWkNMzK/ZILZiv8sTDYOSN7dIVJn/0Qrdo7I9GCJc4M7gpu9B+
         hfQniERAelxTk/p9HSqVB8lrpGWWY589grXmlnYdMnljPSB/8Px4+6CN/kHcJLCdcto0
         JJSacURIm5ToXxy57dtZYLtG8Kmt8L/dEOgk+3jTS2rU4gemSWyRW+fr1sSeaidgVWWW
         LSicQco/w5rgX1TtnqXJfEXqmH0psmuLWfec1PjVR3K9ZuBCwJMP8l4WDJYoXQ3dfcY0
         cG7EAvC8FejBWk/vQbjBN0GJCpl2hd2cTWueiJRF5aZ/7WYv7lNv8p+k0l4X0XLcSZxp
         AaTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717105996; x=1717710796;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6L7CJk8y7uxjPPzXJtWTSWLVeKZoEtck7qZWUqtY9fI=;
        b=k1hMa8vSDZX6nE4D0ndUi67eBlsdhqAe3bpn8LUmGig6ETMQZsUtoVLArPJk/7/Mvq
         7w8nZh5xqFc3UzVV8FzAxHjxOMUMvoTJyCJPnDQistuKl4EzVVIM7nktnZlQXMvZTqHq
         0Ape4RBvst2e3n0SJ9wkps0fT+NOj8Kk2KISmDkffBLPzGzyTwIIhFicMuscfgNq1OFB
         fKEHt8e23qUSWSqppFMv1LwwQ6TNP21+AyAScR4e97cz4MSEb14d3gjRWJInzTPiwzOr
         W5wgd/+BpX5VSQiNKHAML8fmVyyvleInrr2V9Ulvh33rv52MXaBVEXGidTluTh1ui8M0
         bi+w==
X-Forwarded-Encrypted: i=1; AJvYcCUOU5TAIDpnHK3UFGfYnp/AHgCfKV7PxS6m7JiRU5RUOnMYL0k5byul1b3DNWebx5PlViElHOjFPNs+/f8tyG1GLncmAtqdpwdLaA==
X-Gm-Message-State: AOJu0Yx8GvnpQfz2kF50b573hFlZpeErJQnnMrawLsHvtkVhggSryqhw
	W5BlVZjb22xP8SMLfcaG5GCPd6Jmn9tBKi5DQC5uQzrxwp4Kq2csZWcOaJBW8vU=
X-Google-Smtp-Source: AGHT+IHlP+TH7Z9To/RNIyj4xlimApxVfmb86NNGIyENpMij6cepHKd6loBcqhMO/wgRQcgWncX0Zg==
X-Received: by 2002:a19:5504:0:b0:52b:6a18:5b00 with SMTP id 2adb3069b0e04-52b8878cc6bmr54785e87.34.1717105996039;
        Thu, 30 May 2024 14:53:16 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d75d59sm103944e87.175.2024.05.30.14.53.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 14:53:15 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 30 May 2024 23:53:07 +0200
Subject: [PATCH] dt-bindings: dsa: Rewrite Vitesse VSC73xx in schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240530-vitesse-schema-v1-1-8509ad9b03f8@linaro.org>
X-B4-Tracking: v=1; b=H4sIAEL1WGYC/x3MSwqAIBRG4a3EHSeopFFbiQaif3UHPfBGBNHek
 4bf4JyHBJkh1FcPZVwsvG8Fpq4oLmGboTgVk9W20c526uITIlASF6xBOQ/Xad9qYxOV6MiY+P6
 Hw/i+H27PhntgAAAA
To: Pawel Dembicki <paweldembicki@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 Vladimir Oltean <olteanv@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.13.0

This rewrites the Vitesse VSC73xx DSA switches DT binding in
schema.

It was a bit tricky since I needed to come up with some way
of applying the SPI properties only on SPI devices and not
platform devices, but I figured something out that works.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/net/dsa/vitesse,vsc73xx.txt           | 129 ----------------
 .../bindings/net/dsa/vitesse,vsc73xx.yaml          | 162 +++++++++++++++++++++
 2 files changed, 162 insertions(+), 129 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/dsa/vitesse,vsc73xx.txt b/Documentation/devicetree/bindings/net/dsa/vitesse,vsc73xx.txt
deleted file mode 100644
index 258bef483673..000000000000
--- a/Documentation/devicetree/bindings/net/dsa/vitesse,vsc73xx.txt
+++ /dev/null
@@ -1,129 +0,0 @@
-Vitesse VSC73xx Switches
-========================
-
-This defines device tree bindings for the Vitesse VSC73xx switch chips.
-The Vitesse company has been acquired by Microsemi and Microsemi has
-been acquired Microchip but retains this vendor branding.
-
-The currently supported switch chips are:
-Vitesse VSC7385 SparX-G5 5+1-port Integrated Gigabit Ethernet Switch
-Vitesse VSC7388 SparX-G8 8-port Integrated Gigabit Ethernet Switch
-Vitesse VSC7395 SparX-G5e 5+1-port Integrated Gigabit Ethernet Switch
-Vitesse VSC7398 SparX-G8e 8-port Integrated Gigabit Ethernet Switch
-
-This switch could have two different management interface.
-
-If SPI interface is used, the device tree node is an SPI device so it must
-reside inside a SPI bus device tree node, see spi/spi-bus.txt
-
-When the chip is connected to a parallel memory bus and work in memory-mapped
-I/O mode, a platform device is used to represent the vsc73xx. In this case it
-must reside inside a platform bus device tree node.
-
-Required properties:
-
-- compatible: must be exactly one of:
-	"vitesse,vsc7385"
-	"vitesse,vsc7388"
-	"vitesse,vsc7395"
-	"vitesse,vsc7398"
-- gpio-controller: indicates that this switch is also a GPIO controller,
-  see gpio/gpio.txt
-- #gpio-cells: this must be set to <2> and indicates that we are a twocell
-  GPIO controller, see gpio/gpio.txt
-
-Optional properties:
-
-- reset-gpios: a handle to a GPIO line that can issue reset of the chip.
-  It should be tagged as active low.
-
-Required subnodes:
-
-See net/dsa/dsa.txt for a list of additional required and optional properties
-and subnodes of DSA switches.
-
-Examples:
-
-SPI:
-switch@0 {
-	compatible = "vitesse,vsc7395";
-	reg = <0>;
-	/* Specified for 2.5 MHz or below */
-	spi-max-frequency = <2500000>;
-	gpio-controller;
-	#gpio-cells = <2>;
-
-	ports {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		port@0 {
-			reg = <0>;
-			label = "lan1";
-		};
-		port@1 {
-			reg = <1>;
-			label = "lan2";
-		};
-		port@2 {
-			reg = <2>;
-			label = "lan3";
-		};
-		port@3 {
-			reg = <3>;
-			label = "lan4";
-		};
-		vsc: port@6 {
-			reg = <6>;
-			ethernet = <&gmac1>;
-			phy-mode = "rgmii";
-			fixed-link {
-				speed = <1000>;
-				full-duplex;
-				pause;
-			};
-		};
-	};
-};
-
-Platform:
-switch@2,0 {
-	#address-cells = <1>;
-	#size-cells = <1>;
-	compatible = "vitesse,vsc7385";
-	reg = <0x2 0x0 0x20000>;
-	reset-gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
-
-	ports {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		port@0 {
-			reg = <0>;
-			label = "lan1";
-		};
-		port@1 {
-			reg = <1>;
-			label = "lan2";
-		};
-		port@2 {
-			reg = <2>;
-			label = "lan3";
-		};
-		port@3 {
-			reg = <3>;
-			label = "lan4";
-		};
-		vsc: port@6 {
-			reg = <6>;
-			ethernet = <&enet0>;
-			phy-mode = "rgmii";
-			fixed-link {
-				speed = <1000>;
-				full-duplex;
-				pause;
-			};
-		};
-	};
-
-};
diff --git a/Documentation/devicetree/bindings/net/dsa/vitesse,vsc73xx.yaml b/Documentation/devicetree/bindings/net/dsa/vitesse,vsc73xx.yaml
new file mode 100644
index 000000000000..b99d7a694b70
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/dsa/vitesse,vsc73xx.yaml
@@ -0,0 +1,162 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/dsa/vitesse,vsc73xx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Vitesse VSC73xx DSA Switches
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description:
+  The Vitesse DSA Switches were produced in the early-to-mid 2000s.
+
+  The Vitesse company has been acquired by Microsemi and Microsemi has
+  been acquired Microchip but the new owner retains this vendor branding.
+
+  The currently supported switch chips are
+  Vitesse VSC7385 SparX-G5 5+1-port Integrated Gigabit Ethernet Switch
+  Vitesse VSC7388 SparX-G8 8-port Integrated Gigabit Ethernet Switch
+  Vitesse VSC7395 SparX-G5e 5+1-port Integrated Gigabit Ethernet Switch
+  Vitesse VSC7398 SparX-G8e 8-port Integrated Gigabit Ethernet Switch
+
+  This switch can use one of two different management interfaces.
+
+  If SPI interface is used, the device tree node is an SPI device so it must
+  reside inside a SPI bus device tree node, see spi/spi-bus.txt
+
+  When the chip is connected to a parallel memory bus and work in memory-mapped
+  I/O mode, a platform device is used to represent the vsc73xx. In this case it
+  must reside inside a platform bus device tree node.
+
+properties:
+  compatible:
+    enum:
+      - vitesse,vsc7385
+      - vitesse,vsc7388
+      - vitesse,vsc7395
+      - vitesse,vsc7398
+
+  reg:
+    maxItems: 1
+
+  gpio-controller: true
+  "#gpio-cells":
+    const: 2
+
+  reset-gpios:
+    description: GPIO to be used to reset the whole device
+    maxItems: 1
+
+allOf:
+  - $ref: dsa.yaml#/$defs/ethernet-ports
+
+# This checks if reg is a chipselect so the device is on an SPI
+# bus, the if-clause will fail if reg is a tuple such as for a
+# platform device.
+if:
+  properties:
+    reg:
+      minimum: 0
+      maximum: 256
+then:
+  $ref: /schemas/spi/spi-peripheral-props.yaml#
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
+
+    spi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      ethernet-switch@0 {
+        compatible = "vitesse,vsc7395";
+        reg = <0>;
+        spi-max-frequency = <2500000>;
+        gpio-controller;
+        #gpio-cells = <2>;
+
+        ethernet-ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          ethernet-port@0 {
+            reg = <0>;
+            label = "lan1";
+          };
+          ethernet-port@1 {
+            reg = <1>;
+            label = "lan2";
+          };
+          ethernet-port@2 {
+            reg = <2>;
+            label = "lan3";
+          };
+          ethernet-port@3 {
+            reg = <3>;
+            label = "lan4";
+          };
+          ethernet-port@6 {
+            reg = <6>;
+            ethernet = <&gmac1>;
+            phy-mode = "rgmii";
+            fixed-link {
+              speed = <1000>;
+              full-duplex;
+              pause;
+            };
+          };
+        };
+      };
+    };
+
+    bus {
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      ethernet-switch@10000000 {
+        compatible = "vitesse,vsc7385";
+        reg = <0x10000000 0x20000>;
+        reset-gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
+
+        ethernet-ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          ethernet-port@0 {
+            reg = <0>;
+            label = "lan1";
+          };
+          ethernet-port@1 {
+            reg = <1>;
+            label = "lan2";
+          };
+          ethernet-port@2 {
+            reg = <2>;
+            label = "lan3";
+          };
+          ethernet-port@3 {
+            reg = <3>;
+            label = "lan4";
+          };
+          ethernet-port@6 {
+            reg = <6>;
+            ethernet = <&enet0>;
+            phy-mode = "rgmii";
+            fixed-link {
+              speed = <1000>;
+              full-duplex;
+              pause;
+            };
+          };
+        };
+      };
+    };

---
base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
change-id: 20240529-vitesse-schema-56e59067012d

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


