Return-Path: <devicetree+bounces-8821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD527CA3C2
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:13:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 50F31B20EC7
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 09:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AA0B1CFA2;
	Mon, 16 Oct 2023 09:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hhj2zEX0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A22D1CA8C
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 09:13:05 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 501BFE8
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 02:13:03 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50305abe5f0so5522179e87.2
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 02:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697447581; x=1698052381; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e1L3K+Ebs1IkB2w2DJrMtsRdnXrx4C52cUF/HzYsLH8=;
        b=hhj2zEX02wOMHppCejkRKiGl0rKxAnn5nTqpCnjFcLYddfqc/VTVsukvQXtkEPd9F/
         9mZhCGjzID/SA0dxkdRbCBB1aDLD3/QBXhv83LE2yp0UbICTDH0M1LVNZBoC/UowMs9Y
         1d1aX57i0349x1YOufs78PPirM9Mzo7DwXTAfz4WNGtMIbiGd9mcsDSzsMlAfe5IApuS
         BWF2765H36/4xuOdVMkMQWVtCAPJJAQVoqiYvAz4gMUs/5JdF8+ZBQd+E0LGHAJ8PAEW
         IgIAI8O5dIIrZv2OouQkqMMz5P1Kb1w7RfMvvuljDDMFN3BXtZj4k5+eKvXROk6TMLj8
         Nc7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697447581; x=1698052381;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e1L3K+Ebs1IkB2w2DJrMtsRdnXrx4C52cUF/HzYsLH8=;
        b=b9QmyS/8ufJVFSz3j4E/GVKfJWNY0JC5T6pXqfPwYTlvTek+X0UZEJl6S2kzZ1kkEj
         utATTEs3Q8jn/zA2wIx7WT/PdSoKXB6R+8Y675mAY+tPk7H/haQckNiwMQ19GApN6Tiq
         uO9gayDrOQrhlE4YYd4SH42H9R94zawGGZpGj3H5z+SpSL9Gi9e+hI3pG7AL8qipRiq/
         ZOx6JarE0+vFfJlSEiHkdPubwXqVE6lNN6hLbIpmP6ynjRR667lCI181Wldt0iotqmiJ
         ppwvInIP6pUxg8bQbpvcAtu06rq9y8051mAw+fpicMXBcioD8Yt4vDJnfxlgzB1uLRJb
         nyHw==
X-Gm-Message-State: AOJu0Yyha5k/U3N/I7rWyKkZxUgHPclUQKlunGgFdrBKplhbqfxU48mX
	Q/5SJilo9efpQvurFUFqRIAOTQ==
X-Google-Smtp-Source: AGHT+IFfn9Snr0I842kSxbpCROov7mU/wJ/1gG4z+6bAP/V9j0dkm180JjDQesFPWG8M5bNfdl48TA==
X-Received: by 2002:ac2:54ad:0:b0:507:adc9:a739 with SMTP id w13-20020ac254ad000000b00507adc9a739mr2409707lfk.37.1697447581524;
        Mon, 16 Oct 2023 02:13:01 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id br34-20020a056512402200b005068e7a2e7dsm4160986lfb.77.2023.10.16.02.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 02:13:01 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Oct 2023 11:12:59 +0200
Subject: [PATCH net-next v3 6/6] ARM64: dts: marvell: Fix some common
 switch mistakes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231016-marvell-88e6152-wan-led-v3-6-38cd449dfb15@linaro.org>
References: <20231016-marvell-88e6152-wan-led-v3-0-38cd449dfb15@linaro.org>
In-Reply-To: <20231016-marvell-88e6152-wan-led-v3-0-38cd449dfb15@linaro.org>
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
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Fix some errors in the Marvell MV88E6xxx switch descriptions:
- The top node had no address size or cells.
- switch0@0 is not OK, should be switch@0.
- port@a is not normal port naming, use decimal port@10.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../boot/dts/marvell/armada-3720-espressobin.dtsi  |  4 +--
 .../boot/dts/marvell/armada-3720-gl-mv1000.dts     |  4 +--
 .../boot/dts/marvell/armada-3720-turris-mox.dts    | 32 +++++++++++-----------
 .../boot/dts/marvell/armada-7040-mochabin.dts      |  2 --
 .../dts/marvell/armada-8040-clearfog-gt-8k.dts     |  2 +-
 arch/arm64/boot/dts/marvell/cn9130-crb.dtsi        |  6 ++--
 6 files changed, 21 insertions(+), 29 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
index 5fc613d24151..b526efeee293 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
@@ -145,10 +145,8 @@ &usb2 {
 };
 
 &mdio {
-	switch0: switch0@1 {
+	switch0: switch@1 {
 		compatible = "marvell,mv88e6085";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		reg = <1>;
 
 		dsa,member = <0 0>;
diff --git a/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts b/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
index b1b45b4fa9d4..5de4417f929c 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
@@ -152,10 +152,8 @@ &uart0 {
 };
 
 &mdio {
-	switch0: switch0@1 {
+	switch0: switch@1 {
 		compatible = "marvell,mv88e6085";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		reg = <1>;
 
 		dsa,member = <0 0>;
diff --git a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
index 9eab2bb22134..ea66ba5a9762 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
@@ -305,7 +305,7 @@ phy1: ethernet-phy@1 {
 	};
 
 	/* switch nodes are enabled by U-Boot if modules are present */
-	switch0@10 {
+	switch@10 {
 		compatible = "marvell,mv88e6190";
 		reg = <0x10>;
 		dsa,member = <0 0>;
@@ -410,8 +410,8 @@ port@9 {
 				managed = "in-band-status";
 			};
 
-			switch0port10: port@a {
-				reg = <0xa>;
+			switch0port10: port@10 {
+				reg = <10>;
 				label = "dsa";
 				phy-mode = "2500base-x";
 				managed = "in-band-status";
@@ -419,8 +419,8 @@ switch0port10: port@a {
 				status = "disabled";
 			};
 
-			port-sfp@a {
-				reg = <0xa>;
+			port-sfp@10 {
+				reg = <10>;
 				label = "sfp";
 				sfp = <&sfp>;
 				phy-mode = "sgmii";
@@ -430,7 +430,7 @@ port-sfp@a {
 		};
 	};
 
-	switch0@2 {
+	switch@2 {
 		compatible = "marvell,mv88e6085";
 		reg = <0x2>;
 		dsa,member = <0 0>;
@@ -497,7 +497,7 @@ port@5 {
 		};
 	};
 
-	switch1@11 {
+	switch@11 {
 		compatible = "marvell,mv88e6190";
 		reg = <0x11>;
 		dsa,member = <0 1>;
@@ -602,8 +602,8 @@ switch1port9: port@9 {
 				link = <&switch0port10>;
 			};
 
-			switch1port10: port@a {
-				reg = <0xa>;
+			switch1port10: port@10 {
+				reg = <10>;
 				label = "dsa";
 				phy-mode = "2500base-x";
 				managed = "in-band-status";
@@ -611,8 +611,8 @@ switch1port10: port@a {
 				status = "disabled";
 			};
 
-			port-sfp@a {
-				reg = <0xa>;
+			port-sfp@10 {
+				reg = <10>;
 				label = "sfp";
 				sfp = <&sfp>;
 				phy-mode = "sgmii";
@@ -622,7 +622,7 @@ port-sfp@a {
 		};
 	};
 
-	switch1@2 {
+	switch@2 {
 		compatible = "marvell,mv88e6085";
 		reg = <0x2>;
 		dsa,member = <0 1>;
@@ -689,7 +689,7 @@ port@5 {
 		};
 	};
 
-	switch2@12 {
+	switch@12 {
 		compatible = "marvell,mv88e6190";
 		reg = <0x12>;
 		dsa,member = <0 2>;
@@ -794,8 +794,8 @@ switch2port9: port@9 {
 				link = <&switch1port10 &switch0port10>;
 			};
 
-			port-sfp@a {
-				reg = <0xa>;
+			port-sfp@10 {
+				reg = <10>;
 				label = "sfp";
 				sfp = <&sfp>;
 				phy-mode = "sgmii";
@@ -805,7 +805,7 @@ port-sfp@a {
 		};
 	};
 
-	switch2@2 {
+	switch@2 {
 		compatible = "marvell,mv88e6085";
 		reg = <0x2>;
 		dsa,member = <0 2>;
diff --git a/arch/arm64/boot/dts/marvell/armada-7040-mochabin.dts b/arch/arm64/boot/dts/marvell/armada-7040-mochabin.dts
index 48202810bf78..3cc794fcf12e 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040-mochabin.dts
+++ b/arch/arm64/boot/dts/marvell/armada-7040-mochabin.dts
@@ -303,8 +303,6 @@ eth2phy: ethernet-phy@1 {
 	/* 88E6141 Topaz switch */
 	switch: switch@3 {
 		compatible = "marvell,mv88e6085";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		reg = <3>;
 
 		pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index 4125202028c8..7a25ea36b565 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -497,7 +497,7 @@ ge_phy: ethernet-phy@0 {
 		reset-deassert-us = <10000>;
 	};
 
-	switch0: switch0@4 {
+	switch0: switch@4 {
 		compatible = "marvell,mv88e6085";
 		reg = <4>;
 		pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
index 32cfb3e2efc3..2f6281b66467 100644
--- a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
@@ -207,11 +207,9 @@ phy0: ethernet-phy@0 {
 		reg = <0>;
 	};
 
-	switch6: switch0@6 {
+	switch6: switch@6 {
 		/* Actual device is MV88E6393X */
 		compatible = "marvell,mv88e6190";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		reg = <6>;
 		interrupt-parent = <&cp0_gpio1>;
 		interrupts = <28 IRQ_TYPE_LEVEL_LOW>;
@@ -280,7 +278,7 @@ port@9 {
 				managed = "in-band-status";
 			};
 
-			port@a {
+			port@10 {
 				reg = <10>;
 				ethernet = <&cp0_eth0>;
 				phy-mode = "10gbase-r";

-- 
2.34.1


