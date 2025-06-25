Return-Path: <devicetree+bounces-189286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 464CCAE7788
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 08:52:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9798C7AEA6B
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 06:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 007271E98E6;
	Wed, 25 Jun 2025 06:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PMbabNB5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3DEF1F428C
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 06:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750834292; cv=none; b=dsriZ3R0ctlc4TIj3GyEZyvMRKq6GkNQZTubm2lwE+9MhyjJn18lrsKbeQNoW7ydgJ7sL5jykMhD2T5YlVQtBxXmsQ9yHOn4qQHtIjwFWYt0Pe5GQs7yoVCtOm4q5kPUWmCxmoK6xRRKRh9AUwrfuQxYX1chY70zDwCstd3e91c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750834292; c=relaxed/simple;
	bh=TVt2glf3A/9aIAZIwDxoGAZLKL/vwHTf0ketNOC4F/o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pvPNNTjXHjZ1A83EXCe9do12rUuVTpPIlP9mDeGI/0Rj6DjzZ+V0zXrPKlXZdzxy+s7Yr2QWjJP3zWAfIBvXUtw6owb6elIm9X1cSvkxbmeniWtg9+nuP8smfP8VZq9ROVR+qN53/Yt9CPDm8zHLsUZ/i81XulfniK3DQ8NU5hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PMbabNB5; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-55351af2fc6so6368999e87.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 23:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750834289; x=1751439089; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=12dE6oYeLrCIwLimRV+TklOXKBgCTUbUVyiZtB0fiQM=;
        b=PMbabNB5NnDJ4tYgbysikMG++OO3jlsU1qrFUwozU4dAou564rIfRzVx3Kl+UdsXN4
         7JFfhEZxwpsJKl62lf0YtWf8Ol5Y1ekKL9FjQqR5+ZVFckVIUiiSOpXD5iytojJ0lStt
         hGRTkwg+oVUTPGC8nJMUlbhJJwPJfEPGIAmY9wt+NYEzo6/JgwP5/YGMkEZDk3iFeLSt
         A/KrPz0A8wtKwwOyX7oaIbPmi/IDjAzn547E1WMd8E3cAIZmbHBkKKlHqOTbveMqZtCO
         r25oZ/CN1ZK2dtmCp39lpx3swgQxX9mGtdmNIo99NhF29Ya/LcQCAMFM5sIR8D09m90D
         27oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750834289; x=1751439089;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=12dE6oYeLrCIwLimRV+TklOXKBgCTUbUVyiZtB0fiQM=;
        b=ZNll/Y1uuA0WjNsBTgz5zREcfQjSPA1RpSHv6oySpJ7hcO1/aeKKi1zEmjElc9c/HF
         rwEQL6SzFz2AQYqcIqHnwR2diy0R+HrVaqfPUlvhtq9AfmRuTt7JDff0CcgCpkPGEtTZ
         aKESKPL4fAPbdsqYaeC8/B0+0UyhEzxfl87WKisclR9LfOzy9rlMUNd9quUQu4/Lzvwg
         XBmtrdfzTnXAc+5GKrurQxPgqafzoVcFaWw546qKZ1Q2BseZGByKakPViXUr6cYJ/Qhk
         At/85kNJBy09va9WQAzLmKAKzPcgFNfLX/VLtpM/WYNZUXFk3zjypk9e2FeV0rxGcMhM
         OPVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYSV2qBRggqBfCHXJImmel4gCXtIWfA3UJBSJN299zvfarAumpMCrtaQGy4P7HFI87S9G7hj7p3gFE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0a3dz0j3mCmGf0tpQq+hm9YlUHX+XGK6MOrPLfDE7mU0DWxQw
	kaO0QUzJrcshsUJYx3szQqrg8ha2h7Xc26yCNHbYVtbAbE727sRzU9cV4Cj02CScS3nRlEnlq9H
	L73eh
X-Gm-Gg: ASbGncvC1Ic7MJ9pvbfBN6zu4kSl8VmFVBDsGvIFPoTEq2YIxRJm4BRFezXxszF4rp8
	3MtKslJAlBxd4C1DIP9/8tkvb/sBecJuxyzZXOw9Lx/H750/560rzL3sm5OaPfvLpTHgNRVUyun
	PD+CmSanMsjDTL4fgPLQcqtWD9HcGEa4IrZYz1J41Apr9k2+VnORKljBO4CbnADE+IDMAj0/+Dq
	lqGRVrEKwvIvX8vbeYx4jNqHshVMFN5hZclN/TIcQXOMPYVcstSPmjmpMtkibg3D9LBK/C2jp9E
	dTgP7dl1b/TD+3BkeZHOSvz1A0Ltw2bBn0LhIUFx5Kh4WOeLmAUnKA/Wx3gkXy9iwWBpRT62
X-Google-Smtp-Source: AGHT+IGUxv5nPacgAguVtkjJXEqXYX68CANliwIoRa997Go2LL0qf50HZWO93djsmy6Nfeo9S33zQQ==
X-Received: by 2002:a05:6512:3996:b0:553:ad3f:1597 with SMTP id 2adb3069b0e04-554fdf66ff2mr480996e87.53.1750834288878;
        Tue, 24 Jun 2025 23:51:28 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41c3dc4sm2068379e87.157.2025.06.24.23.51.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 23:51:28 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 25 Jun 2025 08:51:24 +0200
Subject: [PATCH net-next v2 1/2] dt-bindings: dsa: Rewrite Micrel KS8995 in
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-ks8995-dsa-bindings-v2-1-ce71dce9be0b@linaro.org>
References: <20250625-ks8995-dsa-bindings-v2-0-ce71dce9be0b@linaro.org>
In-Reply-To: <20250625-ks8995-dsa-bindings-v2-0-ce71dce9be0b@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Imre Kaloz <kaloz@openwrt.org>
Cc: Frederic Lambert <frdrc66@gmail.com>, Gabor Juhos <juhosg@openwrt.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

After studying the datasheets for some of the KS8995 variants
it becomes pretty obvious that this is a straight-forward
and simple MII DSA switch with one port in (CPU) and four outgoing
ports, and it even supports custom tags by setting a bit in
a special register, and elaborate VLAN handling as all DSA
switches do.

What is a bit odd with KS8995 is that it uses an extra MII-P5
port to access one of the PHYs separately, on the side of the
switch fabric, such as when using a WAN port separately from
a LAN switch in a home router.

Rewrite the terse bindings to YAML, and move to the proper
subdirectory. Include a verbose example to make things clear.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/net/dsa/micrel,ks8995.yaml | 135 +++++++++++++++++++++
 .../devicetree/bindings/net/micrel-ks8995.txt      |  20 ---
 2 files changed, 135 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/dsa/micrel,ks8995.yaml b/Documentation/devicetree/bindings/net/dsa/micrel,ks8995.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..854808ff5ad5d1a607e1e0eb537989351f1f881c
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/dsa/micrel,ks8995.yaml
@@ -0,0 +1,135 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/dsa/micrel,ks8995.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Micrel KS8995 Family DSA Switches
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description:
+  The Micrel KS8995 DSA Switches are 100 Mbit switches that were produced in
+  the early-to-mid 2000s. The chip features a CPU port and four outgoing ports,
+  each with an internal PHY. The chip itself is managed over SPI, but all the
+  PHYs need to be accessed from an external MDIO channel.
+
+  Further, a fifth PHY is available and can be used separately from the switch
+  fabric, connected to an external MII interface name MII-P5. This is
+  unrelated from the CPU-facing port 5 which is used for DSA MII traffic.
+
+properties:
+  compatible:
+    enum:
+      - micrel,ks8995
+      - micrel,ksz8795
+      - micrel,ksz8864
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    description: GPIO to be used to reset the whole device
+    maxItems: 1
+
+allOf:
+  - $ref: dsa.yaml#/$defs/ethernet-ports
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
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
+        compatible = "micrel,ks8995";
+        reg = <0>;
+        spi-max-frequency = <25000000>;
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
+          ethernet-port@4 {
+            reg = <4>;
+            ethernet = <&mac2>;
+            phy-mode = "mii";
+            fixed-link {
+              speed = <100>;
+              full-duplex;
+            };
+          };
+        };
+      };
+    };
+
+    soc {
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      /* The WAN port connected on MII-P5 */
+      ethernet-port@1000 {
+        reg = <0x00001000 0x1000>;
+        label = "wan";
+        phy-mode = "mii";
+        phy-handle = <&phy5>;
+      };
+
+      mac2: ethernet-port@2000 {
+        reg = <0x00002000 0x1000>;
+        phy-mode = "mii";
+        fixed-link {
+          speed = <100>;
+          full-duplex;
+        };
+      };
+    };
+
+    mdio {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      /* LAN PHYs 1-4 accessible over external MDIO */
+      phy1: ethernet-phy@1 {
+        reg = <1>;
+      };
+      phy2: ethernet-phy@2 {
+        reg = <2>;
+      };
+      phy3: ethernet-phy@3 {
+        reg = <3>;
+      };
+      phy4: ethernet-phy@4 {
+        reg = <4>;
+      };
+      /* WAN PHY accessible over external MDIO */
+      phy5: ethernet-phy@5 {
+        reg = <5>;
+      };
+    };
diff --git a/Documentation/devicetree/bindings/net/micrel-ks8995.txt b/Documentation/devicetree/bindings/net/micrel-ks8995.txt
deleted file mode 100644
index 281bc2498d12764740dab821e8cabcb5e0a3d8fc..0000000000000000000000000000000000000000
--- a/Documentation/devicetree/bindings/net/micrel-ks8995.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-Micrel KS8995 SPI controlled Ethernet Switch families
-
-Required properties (according to spi-bus.txt):
-- compatible: either "micrel,ks8995", "micrel,ksz8864" or "micrel,ksz8795"
-
-Optional properties:
-- reset-gpios : phandle of gpio that will be used to reset chip during probe
-
-Example:
-
-spi-master {
-	...
-	switch@0 {
-		compatible = "micrel,ksz8795";
-
-		reg = <0>;
-		spi-max-frequency = <50000000>;
-		reset-gpios = <&gpio0 46 GPIO_ACTIVE_LOW>;
-	};
-};

-- 
2.49.0


