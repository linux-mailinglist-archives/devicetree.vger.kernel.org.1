Return-Path: <devicetree+bounces-11211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC417D4C03
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 11:25:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4348E281983
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A0C524A15;
	Tue, 24 Oct 2023 09:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d79JWtiu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1A1249F6
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:25:22 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF6CBC2
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:25:18 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-507c91582fdso6266979e87.2
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698139517; x=1698744317; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VRBNUBWDvC8PjaXpudIsup23k/J35U9YbvcI1paPU+Q=;
        b=d79JWtiukTsRgY+mXcRvEwSkisDVr0NLat6JwsFXaz+AzZ7QT/EfigX9efHXEOcfm4
         0i6ecFIH4K09uDGbW/kryDEm1Tcjks23Hxf3u9y+RmZzI2nXGKdcLRtSWUGizQveHI3j
         kjerDd6/6+4SNXwsyxxsy338AoH/yKenMITtDSZeRkQy8nBgfcgBf0mGuxR8LQEtrZDA
         pSQCAexBgx4zra99wRILWl669l5mxSdI44yNFn/hwv6gOQUyWRrEC4y3YHlWHp5qhWdB
         DItEtkyxTqjNA8DCHouiSVHPvE48EtnUEzF1Zjh3Cv/TNYXVhH2GW7+Qiq6eWp0R5cF6
         AxWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698139517; x=1698744317;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VRBNUBWDvC8PjaXpudIsup23k/J35U9YbvcI1paPU+Q=;
        b=r2WPGWExMFQeOIGyKv0VULji+my7++AWA9m/rGHHWugYzYgKeBq3+kXdDZdD3CXLAX
         qnMo0fiZ+ndXfQjC4UZkM7osLDrEWLTgB1aPq+1pMMbaSgKW7blSYI78VeJT7vGVn4et
         R/qWXg5o2jpIoIPO7k6d7WtghYIyOBEmpHYT2tsdN5t+TKlKVp3/QcFcva1nc/HSNGOy
         gf6K4FANSuTmEwSu+w2MMt7cEZ4DgQYcnRAZVLo6WFoDwB1wZvYPrNdpRV9bmfdvSGQH
         zWyqBZrsQcPjXouihR/j+ZyEdEytLBdSuO0bA1xTXmvkOs66hX4jn5S+PH5+Y20EP2gh
         n0ew==
X-Gm-Message-State: AOJu0YxyFhIjEGQ9r2atdoN2yuUe5esmq8LvVuzS9R7Unir2L+mqPDIa
	4oJ5rkiqG6QZ+aIi223UW+1VFg==
X-Google-Smtp-Source: AGHT+IFQ2FLbXn0PDUtpv+gk2Xu+4hbUZCJ5paeeuhuWIka7jpvKQNLcG7ZFgS5R4wv5UQ7zcAO5rQ==
X-Received: by 2002:ac2:5398:0:b0:506:926c:9b0d with SMTP id g24-20020ac25398000000b00506926c9b0dmr7927297lfh.20.1698139516764;
        Tue, 24 Oct 2023 02:25:16 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id c12-20020ac25f6c000000b004fbc82dd1a5sm2060246lfc.13.2023.10.24.02.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 02:25:16 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 24 Oct 2023 11:24:56 +0200
Subject: [PATCH net-next v6 4/7] ARM: dts: nxp: Fix some common switch
 mistakes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231024-marvell-88e6152-wan-led-v6-4-993ab0949344@linaro.org>
References: <20231024-marvell-88e6152-wan-led-v6-0-993ab0949344@linaro.org>
In-Reply-To: <20231024-marvell-88e6152-wan-led-v6-0-993ab0949344@linaro.org>
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
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.4

Fix some errors in the Marvell MV88E6xxx switch descriptions:
- switch0@0 is not OK, should be ethernet-switch@0
- ports should be ethernet-ports
- port should be ethernet-port
- phy should be ethernet-phy

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
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

-- 
2.34.1


