Return-Path: <devicetree+bounces-10785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DF67D2B0F
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 09:19:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 093EF281554
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 07:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A18A310A3A;
	Mon, 23 Oct 2023 07:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pgyCZKP+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052CA107AB
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:19:15 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5428D71
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 00:19:11 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-507f1c29f25so1777064e87.1
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 00:19:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698045550; x=1698650350; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JtzWop8mEc3XMcR0ZEd8QQd7a8Vp8IIddlLWcHlCccY=;
        b=pgyCZKP+ju8q48ECenPbfiusxclmwu9qhW/yUaf9Xm9Vt9s9MJncmcNIiy5OVEKMSt
         /sdO+MLSBfKcM0EEjHJy0MDnWeD0eEkMpKzEvVoejfwuJVQLrgkXW1K5PwCRFHGXGuhh
         RQxzs7MdsqyEQHjNzY5MK3bAgWHT2WZuh2vjUUId0+hJAy44COGQYzSuYBX7V0V5u2lK
         S0UApkk8gHNRd2nT5VJ59rwjziGRHfH5doL7r1hGCuxGsj7bztWejMrp/CIOAVZOxzN0
         GUXjARb0aOcCTg1X5lgY9G0j28OHkHiRVvgiKUSdguLiZW8KINb0myH2oe+Dr2Tb+LSq
         zy6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698045550; x=1698650350;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JtzWop8mEc3XMcR0ZEd8QQd7a8Vp8IIddlLWcHlCccY=;
        b=uYOGLkV6CT5nSD4d3YPbwXAb5zcoHmKNpmwmnzrH9slNIU8Kaa8B8vw7bSrp/OZIaA
         Xls2DIiizheir8FhyLyZIwTO95MAsm0aSTPR1iHLKAeNELwdItCPn9VMAvR0ViXAY4t1
         Z6zbsXmhfdlAX9yuQAwKoObfYqM08GvTSFIx1I/ATxRJJAqZo1Ndj2+A1dXvUzvuacGx
         9NJa7CqnLXkT2A/sYeyZbyjj3GMsPqWoWfPpK9s+9a7eSEzZG95O18ohM2qs4JwNt150
         xUSSc2L72pXmyEn7AXCMjfMpLHr4F4qsDJmsVUwm6Br8lgel1Ntwq2/CcN8bL4I5l610
         iI3Q==
X-Gm-Message-State: AOJu0YwA3BT+jV1ABfpUeneCyWlXPFgyr3YxmL8eXnxGp8qidy1Mqrrp
	3ysOShF0C6XQILOkdjuJNEGgLSWHfGVVObb+M+E=
X-Google-Smtp-Source: AGHT+IG+Kb2yBAvWGG4+XHZYdOjzh02sOp79sj+fGw/AkFEZRLDyZEinWTAXUwHpQhaq93yqF6jv3w==
X-Received: by 2002:a05:6512:e95:b0:507:a9e1:5a3b with SMTP id bi21-20020a0565120e9500b00507a9e15a3bmr8065216lfb.0.1698045550090;
        Mon, 23 Oct 2023 00:19:10 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id w15-20020a05651204cf00b00507a682c049sm1578727lfq.215.2023.10.23.00.19.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 00:19:09 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 23 Oct 2023 09:18:54 +0200
Subject: [PATCH net-next v5 3/7] ARM: dts: marvell: Fix some common switch
 mistakes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-marvell-88e6152-wan-led-v5-3-0e82952015a7@linaro.org>
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
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.4

Fix some errors in the Marvell MV88E6xxx switch descriptions:
- The top node had no address size or cells.
- switch0@0 is not OK, should be ethernet-switch@0.
- The ports node should be named ethernet-ports
- The ethernet-ports node should have port@0 etc children, no
  plural "ports" in the children.
- Ports should be named ethernet-port@0 etc
- PHYs should be named ethernet-phy@0 etc

This serves as an example of fixes needed for introducing a
schema for the bindings, but the patch can simply be applied.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/marvell/armada-370-rd.dts        | 24 ++++++------
 .../dts/marvell/armada-381-netgear-gs110emx.dts    | 44 +++++++++++-----------
 .../dts/marvell/armada-385-clearfog-gtr-l8.dts     | 38 +++++++++----------
 .../dts/marvell/armada-385-clearfog-gtr-s4.dts     | 22 +++++------
 arch/arm/boot/dts/marvell/armada-385-linksys.dtsi  | 18 ++++-----
 .../boot/dts/marvell/armada-385-turris-omnia.dts   | 20 +++++-----
 arch/arm/boot/dts/marvell/armada-388-clearfog.dts  | 20 +++++-----
 .../boot/dts/marvell/armada-xp-linksys-mamba.dts   | 18 ++++-----
 8 files changed, 96 insertions(+), 108 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/armada-370-rd.dts b/arch/arm/boot/dts/marvell/armada-370-rd.dts
index b459a670f615..1b241da11e94 100644
--- a/arch/arm/boot/dts/marvell/armada-370-rd.dts
+++ b/arch/arm/boot/dts/marvell/armada-370-rd.dts
@@ -149,39 +149,37 @@ led@0 {
 		};
 	};
 
-	switch: switch@10 {
+	switch: ethernet-switch@10 {
 		compatible = "marvell,mv88e6085";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		reg = <0x10>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
 
-		ports {
+		ethernet-ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			port@0 {
+			ethernet-port@0 {
 				reg = <0>;
 				label = "lan0";
 			};
 
-			port@1 {
+			ethernet-port@1 {
 				reg = <1>;
 				label = "lan1";
 			};
 
-			port@2 {
+			ethernet-port@2 {
 				reg = <2>;
 				label = "lan2";
 			};
 
-			port@3 {
+			ethernet-port@3 {
 				reg = <3>;
 				label = "lan3";
 			};
 
-			port@5 {
+			ethernet-port@5 {
 				reg = <5>;
 				ethernet = <&eth1>;
 				phy-mode = "rgmii-id";
@@ -196,25 +194,25 @@ mdio {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			switchphy0: switchphy@0 {
+			switchphy0: ethernet-phy@0 {
 				reg = <0>;
 				interrupt-parent = <&switch>;
 				interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
 			};
 
-			switchphy1: switchphy@1 {
+			switchphy1: ethernet-phy@1 {
 				reg = <1>;
 				interrupt-parent = <&switch>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH>;
 			};
 
-			switchphy2: switchphy@2 {
+			switchphy2: ethernet-phy@2 {
 				reg = <2>;
 				interrupt-parent = <&switch>;
 				interrupts = <2 IRQ_TYPE_LEVEL_HIGH>;
 			};
 
-			switchphy3: switchphy@3 {
+			switchphy3: ethernet-phy@3 {
 				reg = <3>;
 				interrupt-parent = <&switch>;
 				interrupts = <3 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/marvell/armada-381-netgear-gs110emx.dts b/arch/arm/boot/dts/marvell/armada-381-netgear-gs110emx.dts
index f4c4b213ef4e..5baf83e5253d 100644
--- a/arch/arm/boot/dts/marvell/armada-381-netgear-gs110emx.dts
+++ b/arch/arm/boot/dts/marvell/armada-381-netgear-gs110emx.dts
@@ -77,51 +77,49 @@ &mdio {
 	pinctrl-0 = <&mdio_pins>;
 	status = "okay";
 
-	switch@0 {
+	ethernet-switch@0 {
 		compatible = "marvell,mv88e6190";
-		#address-cells = <1>;
 		#interrupt-cells = <2>;
 		interrupt-controller;
 		interrupt-parent = <&gpio1>;
 		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-0 = <&switch_interrupt_pins>;
 		pinctrl-names = "default";
-		#size-cells = <0>;
 		reg = <0>;
 
 		mdio {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			switch0phy1: switch0phy1@1 {
+			switch0phy1: ethernet-phy@1 {
 				reg = <0x1>;
 			};
 
-			switch0phy2: switch0phy2@2 {
+			switch0phy2: ethernet-phy@2 {
 				reg = <0x2>;
 			};
 
-			switch0phy3: switch0phy3@3 {
+			switch0phy3: ethernet-phy@3 {
 				reg = <0x3>;
 			};
 
-			switch0phy4: switch0phy4@4 {
+			switch0phy4: ethernet-phy@4 {
 				reg = <0x4>;
 			};
 
-			switch0phy5: switch0phy5@5 {
+			switch0phy5: ethernet-phy@5 {
 				reg = <0x5>;
 			};
 
-			switch0phy6: switch0phy6@6 {
+			switch0phy6: ethernet-phy@6 {
 				reg = <0x6>;
 			};
 
-			switch0phy7: switch0phy7@7 {
+			switch0phy7: ethernet-phy@7 {
 				reg = <0x7>;
 			};
 
-			switch0phy8: switch0phy8@8 {
+			switch0phy8: ethernet-phy@8 {
 				reg = <0x8>;
 			};
 		};
@@ -142,11 +140,11 @@ phy2: ethernet-phy@c {
 			};
 		};
 
-		ports {
+		ethernet-ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			port@0 {
+			ethernet-port@0 {
 				ethernet = <&eth0>;
 				phy-mode = "rgmii";
 				reg = <0>;
@@ -158,55 +156,55 @@ fixed-link {
 				};
 			};
 
-			port@1 {
+			ethernet-port@1 {
 				label = "lan1";
 				phy-handle = <&switch0phy1>;
 				reg = <1>;
 			};
 
-			port@2 {
+			ethernet-port@2 {
 				label = "lan2";
 				phy-handle = <&switch0phy2>;
 				reg = <2>;
 			};
 
-			port@3 {
+			ethernet-port@3 {
 				label = "lan3";
 				phy-handle = <&switch0phy3>;
 				reg = <3>;
 			};
 
-			port@4 {
+			ethernet-port@4 {
 				label = "lan4";
 				phy-handle = <&switch0phy4>;
 				reg = <4>;
 			};
 
-			port@5 {
+			ethernet-port@5 {
 				label = "lan5";
 				phy-handle = <&switch0phy5>;
 				reg = <5>;
 			};
 
-			port@6 {
+			ethernet-port@6 {
 				label = "lan6";
 				phy-handle = <&switch0phy6>;
 				reg = <6>;
 			};
 
-			port@7 {
+			ethernet-port@7 {
 				label = "lan7";
 				phy-handle = <&switch0phy7>;
 				reg = <7>;
 			};
 
-			port@8 {
+			ethernet-port@8 {
 				label = "lan8";
 				phy-handle = <&switch0phy8>;
 				reg = <8>;
 			};
 
-			port@9 {
+			ethernet-port@9 {
 				/* 88X3310P external phy */
 				label = "lan9";
 				phy-handle = <&phy1>;
@@ -214,7 +212,7 @@ port@9 {
 				reg = <9>;
 			};
 
-			port@a {
+			ethernet-port@a {
 				/* 88X3310P external phy */
 				label = "lan10";
 				phy-handle = <&phy2>;
diff --git a/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-l8.dts b/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-l8.dts
index 1990f7d0cc79..1707d1b01545 100644
--- a/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-l8.dts
+++ b/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-l8.dts
@@ -7,66 +7,66 @@ / {
 };
 
 &mdio {
-	switch0: switch0@4 {
+	switch0: ethernet-switch@4 {
 		compatible = "marvell,mv88e6190";
 		reg = <4>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cf_gtr_switch_reset_pins>;
 		reset-gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
 
-		ports {
+		ethernet-ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			port@1 {
+			ethernet-port@1 {
 				reg = <1>;
 				label = "lan8";
 				phy-handle = <&switch0phy0>;
 			};
 
-			port@2 {
+			ethernet-port@2 {
 				reg = <2>;
 				label = "lan7";
 				phy-handle = <&switch0phy1>;
 			};
 
-			port@3 {
+			ethernet-port@3 {
 				reg = <3>;
 				label = "lan6";
 				phy-handle = <&switch0phy2>;
 			};
 
-			port@4 {
+			ethernet-port@4 {
 				reg = <4>;
 				label = "lan5";
 				phy-handle = <&switch0phy3>;
 			};
 
-			port@5 {
+			ethernet-port@5 {
 				reg = <5>;
 				label = "lan4";
 				phy-handle = <&switch0phy4>;
 			};
 
-			port@6 {
+			ethernet-port@6 {
 				reg = <6>;
 				label = "lan3";
 				phy-handle = <&switch0phy5>;
 			};
 
-			port@7 {
+			ethernet-port@7 {
 				reg = <7>;
 				label = "lan2";
 				phy-handle = <&switch0phy6>;
 			};
 
-			port@8 {
+			ethernet-port@8 {
 				reg = <8>;
 				label = "lan1";
 				phy-handle = <&switch0phy7>;
 			};
 
-			port@10 {
+			ethernet-port@10 {
 				reg = <10>;
 				phy-mode = "2500base-x";
 
@@ -83,35 +83,35 @@ mdio {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			switch0phy0: switch0phy0@1 {
+			switch0phy0: ethernet-phy@1 {
 				reg = <0x1>;
 			};
 
-			switch0phy1: switch0phy1@2 {
+			switch0phy1: ethernet-phy@2 {
 				reg = <0x2>;
 			};
 
-			switch0phy2: switch0phy2@3 {
+			switch0phy2: ethernet-phy@3 {
 				reg = <0x3>;
 			};
 
-			switch0phy3: switch0phy3@4 {
+			switch0phy3: ethernet-phy@4 {
 				reg = <0x4>;
 			};
 
-			switch0phy4: switch0phy4@5 {
+			switch0phy4: ethernet-phy@5 {
 				reg = <0x5>;
 			};
 
-			switch0phy5: switch0phy5@6 {
+			switch0phy5: ethernet-phy@6 {
 				reg = <0x6>;
 			};
 
-			switch0phy6: switch0phy6@7 {
+			switch0phy6: ethernet-phy@7 {
 				reg = <0x7>;
 			};
 
-			switch0phy7: switch0phy7@8 {
+			switch0phy7: ethernet-phy@8 {
 				reg = <0x8>;
 			};
 		};
diff --git a/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-s4.dts b/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-s4.dts
index b795ad573891..a7678a784c18 100644
--- a/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-s4.dts
+++ b/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-s4.dts
@@ -11,42 +11,42 @@ &sfp0 {
 };
 
 &mdio {
-	switch0: switch0@4 {
+	switch0: ethernet-switch@4 {
 		compatible = "marvell,mv88e6085";
 		reg = <4>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cf_gtr_switch_reset_pins>;
 		reset-gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
 
-		ports {
+		ethernet-ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			port@1 {
+			ethernet-port@1 {
 				reg = <1>;
 				label = "lan2";
 				phy-handle = <&switch0phy0>;
 			};
 
-			port@2 {
+			ethernet-port@2 {
 				reg = <2>;
 				label = "lan1";
 				phy-handle = <&switch0phy1>;
 			};
 
-			port@3 {
+			ethernet-port@3 {
 				reg = <3>;
 				label = "lan4";
 				phy-handle = <&switch0phy2>;
 			};
 
-			port@4 {
+			ethernet-port@4 {
 				reg = <4>;
 				label = "lan3";
 				phy-handle = <&switch0phy3>;
 			};
 
-			port@5 {
+			ethernet-port@5 {
 				reg = <5>;
 				phy-mode = "2500base-x";
 				ethernet = <&eth1>;
@@ -63,19 +63,19 @@ mdio {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			switch0phy0: switch0phy0@11 {
+			switch0phy0: ethernet-phy@11 {
 				reg = <0x11>;
 			};
 
-			switch0phy1: switch0phy1@12 {
+			switch0phy1: ethernet-phy@12 {
 				reg = <0x12>;
 			};
 
-			switch0phy2: switch0phy2@13 {
+			switch0phy2: ethernet-phy@13 {
 				reg = <0x13>;
 			};
 
-			switch0phy3: switch0phy3@14 {
+			switch0phy3: ethernet-phy@14 {
 				reg = <0x14>;
 			};
 		};
diff --git a/arch/arm/boot/dts/marvell/armada-385-linksys.dtsi b/arch/arm/boot/dts/marvell/armada-385-linksys.dtsi
index fc8216fd9f60..4116ed60f709 100644
--- a/arch/arm/boot/dts/marvell/armada-385-linksys.dtsi
+++ b/arch/arm/boot/dts/marvell/armada-385-linksys.dtsi
@@ -158,42 +158,40 @@ nand: nand@0 {
 &mdio {
 	status = "okay";
 
-	switch@0 {
+	ethernet-switch@0 {
 		compatible = "marvell,mv88e6085";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		reg = <0>;
 
-		ports {
+		ethernet-ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			port@0 {
+			ethernet-port@0 {
 				reg = <0>;
 				label = "lan4";
 			};
 
-			port@1 {
+			ethernet-port@1 {
 				reg = <1>;
 				label = "lan3";
 			};
 
-			port@2 {
+			ethernet-port@2 {
 				reg = <2>;
 				label = "lan2";
 			};
 
-			port@3 {
+			ethernet-port@3 {
 				reg = <3>;
 				label = "lan1";
 			};
 
-			port@4 {
+			ethernet-port@4 {
 				reg = <4>;
 				label = "wan";
 			};
 
-			port@5 {
+			ethernet-port@5 {
 				reg = <5>;
 				phy-mode = "sgmii";
 				ethernet = <&eth2>;
diff --git a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
index 2d8d319bec83..7b755bb4e4e7 100644
--- a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
@@ -435,12 +435,10 @@ phy1: ethernet-phy@1 {
 	};
 
 	/* Switch MV88E6176 at address 0x10 */
-	switch@10 {
+	ethernet-switch@10 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&swint_pins>;
 		compatible = "marvell,mv88e6085";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		dsa,member = <0 0>;
 		reg = <0x10>;
@@ -448,36 +446,36 @@ switch@10 {
 		interrupt-parent = <&gpio1>;
 		interrupts = <13 IRQ_TYPE_LEVEL_LOW>;
 
-		ports {
+		ethernet-ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			ports@0 {
+			ethernet-port@0 {
 				reg = <0>;
 				label = "lan0";
 			};
 
-			ports@1 {
+			ethernet-port@1 {
 				reg = <1>;
 				label = "lan1";
 			};
 
-			ports@2 {
+			ethernet-port@2 {
 				reg = <2>;
 				label = "lan2";
 			};
 
-			ports@3 {
+			ethernet-port@3 {
 				reg = <3>;
 				label = "lan3";
 			};
 
-			ports@4 {
+			ethernet-port@4 {
 				reg = <4>;
 				label = "lan4";
 			};
 
-			ports@5 {
+			ethernet-port@5 {
 				reg = <5>;
 				ethernet = <&eth1>;
 				phy-mode = "rgmii-id";
@@ -488,7 +486,7 @@ fixed-link {
 				};
 			};
 
-			ports@6 {
+			ethernet-port@6 {
 				reg = <6>;
 				ethernet = <&eth0>;
 				phy-mode = "rgmii-id";
diff --git a/arch/arm/boot/dts/marvell/armada-388-clearfog.dts b/arch/arm/boot/dts/marvell/armada-388-clearfog.dts
index 32c569df142f..3290ccad2374 100644
--- a/arch/arm/boot/dts/marvell/armada-388-clearfog.dts
+++ b/arch/arm/boot/dts/marvell/armada-388-clearfog.dts
@@ -92,44 +92,42 @@ pcie2-0-w-disable-hog {
 &mdio {
 	status = "okay";
 
-	switch@4 {
+	ethernet-switch@4 {
 		compatible = "marvell,mv88e6085";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		reg = <4>;
 		pinctrl-0 = <&clearfog_dsa0_clk_pins &clearfog_dsa0_pins>;
 		pinctrl-names = "default";
 
-		ports {
+		ethernet-ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			port@0 {
+			ethernet-port@0 {
 				reg = <0>;
 				label = "lan5";
 			};
 
-			port@1 {
+			ethernet-port@1 {
 				reg = <1>;
 				label = "lan4";
 			};
 
-			port@2 {
+			ethernet-port@2 {
 				reg = <2>;
 				label = "lan3";
 			};
 
-			port@3 {
+			ethernet-port@3 {
 				reg = <3>;
 				label = "lan2";
 			};
 
-			port@4 {
+			ethernet-port@4 {
 				reg = <4>;
 				label = "lan1";
 			};
 
-			port@5 {
+			ethernet-port@5 {
 				reg = <5>;
 				ethernet = <&eth1>;
 				phy-mode = "1000base-x";
@@ -140,7 +138,7 @@ fixed-link {
 				};
 			};
 
-			port@6 {
+			ethernet-port@6 {
 				/* 88E1512 external phy */
 				reg = <6>;
 				label = "lan6";
diff --git a/arch/arm/boot/dts/marvell/armada-xp-linksys-mamba.dts b/arch/arm/boot/dts/marvell/armada-xp-linksys-mamba.dts
index 7a0614fd0c93..ea859f7ea042 100644
--- a/arch/arm/boot/dts/marvell/armada-xp-linksys-mamba.dts
+++ b/arch/arm/boot/dts/marvell/armada-xp-linksys-mamba.dts
@@ -265,42 +265,40 @@ flash@0 {
 &mdio {
 	status = "okay";
 
-	switch@0 {
+	ethernet-switch@0 {
 		compatible = "marvell,mv88e6085";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		reg = <0>;
 
-		ports {
+		ethernet-ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			port@0 {
+			ethernet-port@0 {
 				reg = <0>;
 				label = "lan4";
 			};
 
-			port@1 {
+			ethernet-port@1 {
 				reg = <1>;
 				label = "lan3";
 			};
 
-			port@2 {
+			ethernet-port@2 {
 				reg = <2>;
 				label = "lan2";
 			};
 
-			port@3 {
+			ethernet-port@3 {
 				reg = <3>;
 				label = "lan1";
 			};
 
-			port@4 {
+			ethernet-port@4 {
 				reg = <4>;
 				label = "internet";
 			};
 
-			port@5 {
+			ethernet-port@5 {
 				reg = <5>;
 				phy-mode = "rgmii-id";
 				ethernet = <&eth0>;

-- 
2.34.1


