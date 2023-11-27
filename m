Return-Path: <devicetree+bounces-19295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A007FA556
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 16:55:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 495B81C209FD
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 15:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED78A34570;
	Mon, 27 Nov 2023 15:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jto7psFl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A70CAD4C
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 07:55:23 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c4fdf94666so54145021fa.2
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 07:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701100522; x=1701705322; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d8MMdLwOnB1QTRyQh+U10EChfRoJeTQS+0yevJYroxY=;
        b=jto7psFlX2DR/p/Stf266r/qEhGESEY3UxbdX7Wxau/vaVhponkXxeB137pWQMmeuo
         NRyxL+rWqzNDSXul6AdmZe0ivO78p1s+Waaia5xxTNRfJjaIfzis5B5RmwgYeUMubXJl
         nxSCr6BoIZCf09webal0L4MY9LRo8TuknWbp8hrq0z5tH6sdbh3dE0pBeByqO5pq/WRm
         Z50IaAOjBly1LKvKOc+ho7cN7QZjx6E6oWrDQnhvYj92qJ7bZ9NWSWp3rFgCtl+mBwhX
         MXBAVE5noFSxVFAmYpSmrPa9BrqNF+4DsUKS9MUeALTenmdTo/vEQP2X9BP0nCQmdafP
         Y89A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701100522; x=1701705322;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d8MMdLwOnB1QTRyQh+U10EChfRoJeTQS+0yevJYroxY=;
        b=Dj3Rw5ktSmsSXqtLN44kRxVmo9DVhrCDvH7tSLJXPe8SzuNiVVpYnCGwqdjNxV4OBE
         pA8SYvecBzDAYJdLvYxIfReomTh4XIHkL/LLngAwtJ+Nr0Ao6e52vRooSF5TBnOU7x/o
         RPt064AWbnt9V7ADEKeJbrOXC01rJtm1PoYsGQPRMaef6EgvYznfOqZEN0bxZ1qDhweB
         L6AsBOsCTW1T+AsT+oGVXxmVVSVAHwPH2smOHzQ2t2wr+d4VdQiNOQFY+0apTJIgUJVx
         zE0pwuE1vNQXK44wiVxD9N4sv1qfdsnqY7yJjpr8DlYsDj0fUTv/WVfxCGO76FJd32Ao
         mSJg==
X-Gm-Message-State: AOJu0YxmH9dDYt8S2mZ7VpN0lIPlppNmD4yTBgmWawooO4PPp+Jr1lXs
	9lEsi9N1WcT3f4LligvaNv3j2w==
X-Google-Smtp-Source: AGHT+IE1OqIhwgU4jjORM3hrnH4E+rMzDTpV6gTSV00HgWJZI5JtvgrxGvrJzepHDg5iyoyQUQW7Dw==
X-Received: by 2002:a2e:998c:0:b0:2c5:19ab:7270 with SMTP id w12-20020a2e998c000000b002c519ab7270mr7364544lji.35.1701100521706;
        Mon, 27 Nov 2023 07:55:21 -0800 (PST)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id b1-20020a05651c032100b002bfff335ca1sm1386988ljp.79.2023.11.27.07.55.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 07:55:21 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Nov 2023 16:55:20 +0100
Subject: [PATCH v9] ARM: dts: nxp: Fix some common switch mistakes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231127-mv88e6xxx-nxp-v9-1-69f3f783f4af@linaro.org>
X-B4-Tracking: v=1; b=H4sIAOe7ZGUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyLHUUlJIzE
 vPSU3UzU4B8JSMDI2NDQyNz3dwyC4tUs4qKCt28igJdU/NUSwPDZBNTY4tUJaCegqLUtMwKsHn
 RsbW1AKsRE6dfAAAA
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Stefan Agner <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.4

Fix some errors in the Marvell MV88E6xxx switch descriptions:
- switch0@0 is not OK, should be ethernet-switch@0
- ports should be ethernet-ports
- port should be ethernet-port
- phy should be ethernet-phy

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
This patch is split off from the actual bindings so these can
be merged to netdev. Applying it will fix warnings that will
appear from device tree checks.

Link to v9 bindings patches:
https://lore.kernel.org/r/20231127-marvell-88e6152-wan-led-v9-0-272934e04681@linaro.org
---
 arch/arm/boot/dts/nxp/vf/vf610-zii-cfu1.dts      | 14 ++---
 arch/arm/boot/dts/nxp/vf/vf610-zii-scu4-aib.dts  | 70 ++++++++++++------------
 arch/arm/boot/dts/nxp/vf/vf610-zii-spb4.dts      | 18 +++---
 arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-dtu.dts  | 20 +++----
 arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-spu3.dts | 18 +++---
 5 files changed, 70 insertions(+), 70 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/vf/vf610-zii-cfu1.dts b/arch/arm/boot/dts/nxp/vf/vf610-zii-cfu1.dts
index 1a19aec8957b..7e72f860c3c5 100644
--- a/arch/arm/boot/dts/nxp/vf/vf610-zii-cfu1.dts
+++ b/arch/arm/boot/dts/nxp/vf/vf610-zii-cfu1.dts
@@ -162,7 +162,7 @@ mdio1: mdio {
 		suppress-preamble;
 		status = "okay";
 
-		switch0: switch0@0 {
+		switch0: ethernet-switch@0 {
 			compatible = "marvell,mv88e6085";
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_switch>;
@@ -173,26 +173,26 @@ switch0: switch0@0 {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 
-			ports {
+			ethernet-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				port@0 {
+				ethernet-port@0 {
 					reg = <0>;
 					label = "eth_cu_1000_1";
 				};
 
-				port@1 {
+				ethernet-port@1 {
 					reg = <1>;
 					label = "eth_cu_1000_2";
 				};
 
-				port@2 {
+				ethernet-port@2 {
 					reg = <2>;
 					label = "eth_cu_1000_3";
 				};
 
-				port@5 {
+				ethernet-port@5 {
 					reg = <5>;
 					label = "eth_fc_1000_1";
 					phy-mode = "1000base-x";
@@ -200,7 +200,7 @@ port@5 {
 					sfp = <&sff>;
 				};
 
-				port@6 {
+				ethernet-port@6 {
 					reg = <6>;
 					phy-mode = "rmii";
 					ethernet = <&fec1>;
diff --git a/arch/arm/boot/dts/nxp/vf/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/nxp/vf/vf610-zii-scu4-aib.dts
index df1335492a19..77492eeea450 100644
--- a/arch/arm/boot/dts/nxp/vf/vf610-zii-scu4-aib.dts
+++ b/arch/arm/boot/dts/nxp/vf/vf610-zii-scu4-aib.dts
@@ -47,17 +47,17 @@ mdio_mux_1: mdio@1 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			switch0: switch0@0 {
+			switch0: ethernet-switch@0 {
 				compatible = "marvell,mv88e6190";
 				reg = <0>;
 				dsa,member = <0 0>;
 				eeprom-length = <65536>;
 
-				ports {
+				ethernet-ports {
 					#address-cells = <1>;
 					#size-cells = <0>;
 
-					port@0 {
+					ethernet-port@0 {
 						reg = <0>;
 						phy-mode = "rmii";
 						ethernet = <&fec1>;
@@ -68,37 +68,37 @@ fixed-link {
 						};
 					};
 
-					port@1 {
+					ethernet-port@1 {
 						reg = <1>;
 						label = "aib2main_1";
 					};
 
-					port@2 {
+					ethernet-port@2 {
 						reg = <2>;
 						label = "aib2main_2";
 					};
 
-					port@3 {
+					ethernet-port@3 {
 						reg = <3>;
 						label = "eth_cu_1000_5";
 					};
 
-					port@4 {
+					ethernet-port@4 {
 						reg = <4>;
 						label = "eth_cu_1000_6";
 					};
 
-					port@5 {
+					ethernet-port@5 {
 						reg = <5>;
 						label = "eth_cu_1000_4";
 					};
 
-					port@6 {
+					ethernet-port@6 {
 						reg = <6>;
 						label = "eth_cu_1000_7";
 					};
 
-					port@7 {
+					ethernet-port@7 {
 						reg = <7>;
 						label = "modem_pic";
 
@@ -108,7 +108,7 @@ fixed-link {
 						};
 					};
 
-					switch0port10: port@10 {
+					switch0port10: ethernet-port@10 {
 						reg = <10>;
 						label = "dsa";
 						phy-mode = "xgmii";
@@ -130,32 +130,32 @@ mdio_mux_2: mdio@2 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			switch1: switch1@0 {
+			switch1: ethernet-switch@0 {
 				compatible = "marvell,mv88e6190";
 				reg = <0>;
 				dsa,member = <0 1>;
 				eeprom-length = <65536>;
 
-				ports {
+				ethernet-ports {
 					#address-cells = <1>;
 					#size-cells = <0>;
 
-					port@1 {
+					ethernet-port@1 {
 						reg = <1>;
 						label = "eth_cu_1000_3";
 					};
 
-					port@2 {
+					ethernet-port@2 {
 						reg = <2>;
 						label = "eth_cu_100_2";
 					};
 
-					port@3 {
+					ethernet-port@3 {
 						reg = <3>;
 						label = "eth_cu_100_3";
 					};
 
-					switch1port9: port@9 {
+					switch1port9: ethernet-port@9 {
 						reg = <9>;
 						label = "dsa";
 						phy-mode = "xgmii";
@@ -168,7 +168,7 @@ fixed-link {
 						};
 					};
 
-					switch1port10: port@10 {
+					switch1port10: ethernet-port@10 {
 						reg = <10>;
 						label = "dsa";
 						phy-mode = "xgmii";
@@ -188,17 +188,17 @@ mdio_mux_4: mdio@4 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			switch2: switch2@0 {
+			switch2: ethernet-switch@0 {
 				compatible = "marvell,mv88e6190";
 				reg = <0>;
 				dsa,member = <0 2>;
 				eeprom-length = <65536>;
 
-				ports {
+				ethernet-ports {
 					#address-cells = <1>;
 					#size-cells = <0>;
 
-					port@2 {
+					ethernet-port@2 {
 						reg = <2>;
 						label = "eth_fc_1000_2";
 						phy-mode = "1000base-x";
@@ -206,7 +206,7 @@ port@2 {
 						sfp = <&sff1>;
 					};
 
-					port@3 {
+					ethernet-port@3 {
 						reg = <3>;
 						label = "eth_fc_1000_3";
 						phy-mode = "1000base-x";
@@ -214,7 +214,7 @@ port@3 {
 						sfp = <&sff2>;
 					};
 
-					port@4 {
+					ethernet-port@4 {
 						reg = <4>;
 						label = "eth_fc_1000_4";
 						phy-mode = "1000base-x";
@@ -222,7 +222,7 @@ port@4 {
 						sfp = <&sff3>;
 					};
 
-					port@5 {
+					ethernet-port@5 {
 						reg = <5>;
 						label = "eth_fc_1000_5";
 						phy-mode = "1000base-x";
@@ -230,7 +230,7 @@ port@5 {
 						sfp = <&sff4>;
 					};
 
-					port@6 {
+					ethernet-port@6 {
 						reg = <6>;
 						label = "eth_fc_1000_6";
 						phy-mode = "1000base-x";
@@ -238,7 +238,7 @@ port@6 {
 						sfp = <&sff5>;
 					};
 
-					port@7 {
+					ethernet-port@7 {
 						reg = <7>;
 						label = "eth_fc_1000_7";
 						phy-mode = "1000base-x";
@@ -246,7 +246,7 @@ port@7 {
 						sfp = <&sff6>;
 					};
 
-					port@9 {
+					ethernet-port@9 {
 						reg = <9>;
 						label = "eth_fc_1000_1";
 						phy-mode = "1000base-x";
@@ -254,7 +254,7 @@ port@9 {
 						sfp = <&sff0>;
 					};
 
-					switch2port10: port@10 {
+					switch2port10: ethernet-port@10 {
 						reg = <10>;
 						label = "dsa";
 						phy-mode = "2500base-x";
@@ -276,17 +276,17 @@ mdio_mux_8: mdio@8 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			switch3: switch3@0 {
+			switch3: ethernet-switch@0 {
 				compatible = "marvell,mv88e6190";
 				reg = <0>;
 				dsa,member = <0 3>;
 				eeprom-length = <65536>;
 
-				ports {
+				ethernet-ports {
 					#address-cells = <1>;
 					#size-cells = <0>;
 
-					port@2 {
+					ethernet-port@2 {
 						reg = <2>;
 						label = "eth_fc_1000_8";
 						phy-mode = "1000base-x";
@@ -294,7 +294,7 @@ port@2 {
 						sfp = <&sff7>;
 					};
 
-					port@3 {
+					ethernet-port@3 {
 						reg = <3>;
 						label = "eth_fc_1000_9";
 						phy-mode = "1000base-x";
@@ -302,7 +302,7 @@ port@3 {
 						sfp = <&sff8>;
 					};
 
-					port@4 {
+					ethernet-port@4 {
 						reg = <4>;
 						label = "eth_fc_1000_10";
 						phy-mode = "1000base-x";
@@ -310,7 +310,7 @@ port@4 {
 						sfp = <&sff9>;
 					};
 
-					switch3port9: port@9 {
+					switch3port9: ethernet-port@9 {
 						reg = <9>;
 						label = "dsa";
 						phy-mode = "2500base-x";
@@ -322,7 +322,7 @@ fixed-link {
 						};
 					};
 
-					switch3port10: port@10 {
+					switch3port10: ethernet-port@10 {
 						reg = <10>;
 						label = "dsa";
 						phy-mode = "xgmii";
diff --git a/arch/arm/boot/dts/nxp/vf/vf610-zii-spb4.dts b/arch/arm/boot/dts/nxp/vf/vf610-zii-spb4.dts
index 1461804ecaea..2a490464660c 100644
--- a/arch/arm/boot/dts/nxp/vf/vf610-zii-spb4.dts
+++ b/arch/arm/boot/dts/nxp/vf/vf610-zii-spb4.dts
@@ -123,7 +123,7 @@ mdio1: mdio {
 		suppress-preamble;
 		status = "okay";
 
-		switch0: switch0@0 {
+		switch0: ethernet-switch@0 {
 			compatible = "marvell,mv88e6190";
 			pinctrl-0 = <&pinctrl_gpio_switch0>;
 			pinctrl-names = "default";
@@ -134,11 +134,11 @@ switch0: switch0@0 {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 
-			ports {
+			ethernet-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				port@0 {
+				ethernet-port@0 {
 					reg = <0>;
 					phy-mode = "rmii";
 					ethernet = <&fec1>;
@@ -149,32 +149,32 @@ fixed-link {
 					};
 				};
 
-				port@1 {
+				ethernet-port@1 {
 					reg = <1>;
 					label = "eth_cu_1000_1";
 				};
 
-				port@2 {
+				ethernet-port@2 {
 					reg = <2>;
 					label = "eth_cu_1000_2";
 				};
 
-				port@3 {
+				ethernet-port@3 {
 					reg = <3>;
 					label = "eth_cu_1000_3";
 				};
 
-				port@4 {
+				ethernet-port@4 {
 					reg = <4>;
 					label = "eth_cu_1000_4";
 				};
 
-				port@5 {
+				ethernet-port@5 {
 					reg = <5>;
 					label = "eth_cu_1000_5";
 				};
 
-				port@6 {
+				ethernet-port@6 {
 					reg = <6>;
 					label = "eth_cu_1000_6";
 				};
diff --git a/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-dtu.dts b/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-dtu.dts
index 463c2452b9b7..078d8699e16d 100644
--- a/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-dtu.dts
+++ b/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-dtu.dts
@@ -112,7 +112,7 @@ mdio1: mdio {
 		suppress-preamble;
 		status = "okay";
 
-		switch0: switch0@0 {
+		switch0: ethernet-switch@0 {
 			compatible = "marvell,mv88e6190";
 			pinctrl-0 = <&pinctrl_gpio_switch0>;
 			pinctrl-names = "default";
@@ -123,11 +123,11 @@ switch0: switch0@0 {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 
-			ports {
+			ethernet-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				port@0 {
+				ethernet-port@0 {
 					reg = <0>;
 					phy-mode = "rmii";
 					ethernet = <&fec1>;
@@ -138,27 +138,27 @@ fixed-link {
 					};
 				};
 
-				port@1 {
+				ethernet-port@1 {
 					reg = <1>;
 					label = "eth_cu_100_3";
 				};
 
-				port@5 {
+				ethernet-port@5 {
 					reg = <5>;
 					label = "eth_cu_1000_4";
 				};
 
-				port@6 {
+				ethernet-port@6 {
 					reg = <6>;
 					label = "eth_cu_1000_5";
 				};
 
-				port@8 {
+				ethernet-port@8 {
 					reg = <8>;
 					label = "eth_cu_1000_1";
 				};
 
-				port@9 {
+				ethernet-port@9 {
 					reg = <9>;
 					label = "eth_cu_1000_2";
 					phy-handle = <&phy9>;
@@ -167,12 +167,12 @@ port@9 {
 				};
 			};
 
-			mdio1 {
+			mdio-external {
 				compatible = "marvell,mv88e6xxx-mdio-external";
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				phy9: phy9@0 {
+				phy9: ethernet-phy@0 {
 					compatible = "ethernet-phy-ieee802.3-c45";
 					pinctrl-0 = <&pinctrl_gpio_phy9>;
 					pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-spu3.dts b/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-spu3.dts
index f5ae0d5de315..22c8f44390a9 100644
--- a/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-spu3.dts
+++ b/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-spu3.dts
@@ -137,7 +137,7 @@ mdio1: mdio {
 		suppress-preamble;
 		status = "okay";
 
-		switch0: switch0@0 {
+		switch0: ethernet-switch@0 {
 			compatible = "marvell,mv88e6190";
 			pinctrl-0 = <&pinctrl_gpio_switch0>;
 			pinctrl-names = "default";
@@ -148,11 +148,11 @@ switch0: switch0@0 {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 
-			ports {
+			ethernet-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				port@0 {
+				ethernet-port@0 {
 					reg = <0>;
 					phy-mode = "rmii";
 					ethernet = <&fec1>;
@@ -163,32 +163,32 @@ fixed-link {
 					};
 				};
 
-				port@1 {
+				ethernet-port@1 {
 					reg = <1>;
 					label = "eth_cu_1000_1";
 				};
 
-				port@2 {
+				ethernet-port@2 {
 					reg = <2>;
 					label = "eth_cu_1000_2";
 				};
 
-				port@3 {
+				ethernet-port@3 {
 					reg = <3>;
 					label = "eth_cu_1000_3";
 				};
 
-				port@4 {
+				ethernet-port@4 {
 					reg = <4>;
 					label = "eth_cu_1000_4";
 				};
 
-				port@5 {
+				ethernet-port@5 {
 					reg = <5>;
 					label = "eth_cu_1000_5";
 				};
 
-				port@6 {
+				ethernet-port@6 {
 					reg = <6>;
 					label = "eth_cu_1000_6";
 				};

---
base-commit: b85ea95d086471afb4ad062012a4d73cd328fa86
change-id: 20231127-mv88e6xxx-nxp-57e901c4538e

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


