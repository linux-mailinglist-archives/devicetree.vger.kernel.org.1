Return-Path: <devicetree+bounces-9581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F201C7CD776
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 11:04:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F6971C20DD4
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 09:04:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BE281774E;
	Wed, 18 Oct 2023 09:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ds0Zu7LM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBEE6179A4
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 09:03:59 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72EF4FE
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 02:03:57 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507a3b8b113so5247651e87.0
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 02:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697619836; x=1698224636; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WaRGSJiSyL+S+illYvUU7qhAWqu/HnXRI140gzw51iM=;
        b=ds0Zu7LM4M5DWJCGhL1V1+6i9k/l0e3i3Hvnin5emrb6ynGJvwLXmABkZBcNSB7oLD
         WjDogUOAYYR82X2E2VdHDe9eQ0oNslZJ8Mdo3FbuP7bTPluRj45J9khDGIKgnj2ZE1bo
         P5r68qlEYOtDXXsXLwRmHpkStTp39rdppjHDnHfC0XxUTiTGPhMWiaJ6+lLpjS4XHvP+
         kIVWLJbzLJDOg3mpz8Ovd9yEIqFEfstmdDlSiXVUGZwFEDFkPbVWa9bXxsgC9ryadGdv
         c0ryWwlr9b++1NsdZ7iSqQ72SksUub3JRwd9+w16EmPaoEPRkIDB1sZ5rCDFX8RxMFqj
         mvLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697619836; x=1698224636;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WaRGSJiSyL+S+illYvUU7qhAWqu/HnXRI140gzw51iM=;
        b=kJZSFUFyWikckr+njl4ql0rCh7MAwu0ZiO9gWBjOW2RNIrYHClQCfEblyELt+cmNZ7
         2tkWQEZlmH58t5qFl34N3Ix2O76cOgurg0nF5dp7WxYDtKDrAVT0sv/bMVNROr6JXtZr
         BDiZCJiWdYTPu/8IQzn1PdYR28izLN4wdFLg0ZLsXdrvrnIAQHgE4sYHRymOoEzDBvOK
         bH36CRYvP6XY4yBw4K5CJL/aHNW/D+aDIoHzkicOqxmve56DDVNH+Sj6glYMfBwLPDTM
         L/1BuK4XUu1Kn4Npadec+WMQ/Epzb3kfkIFyqA+DGcPCLWfR/4Vv0r5QojG0ud9nNrGg
         Loag==
X-Gm-Message-State: AOJu0YxsgbXP14iID2tf5Hc2RRvoebnlcFd1riE/a18mojUykSqW3GmT
	AtrpM56Lxo30kH7l2tRCoXCNaQ==
X-Google-Smtp-Source: AGHT+IGUslfnvMPul2M2qD156+caCpfXigxQ6I2iIi+p6tHu0fMrYfIfRJtqp3ZFaxxwMQDqiloU+A==
X-Received: by 2002:ac2:5976:0:b0:507:b19e:90cc with SMTP id h22-20020ac25976000000b00507b19e90ccmr3474964lfp.40.1697619835745;
        Wed, 18 Oct 2023 02:03:55 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id w19-20020a05651234d300b005056fb1d6fbsm616595lfr.238.2023.10.18.02.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 02:03:55 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Oct 2023 11:03:44 +0200
Subject: [PATCH net-next v4 5/7] ARM64: dts: marvell: Fix some common
 switch mistakes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231018-marvell-88e6152-wan-led-v4-5-3ee0c67383be@linaro.org>
References: <20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org>
In-Reply-To: <20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org>
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Fix some errors in the Marvell MV88E6xxx switch descriptions:
- The top node had no address size or cells.
- switch0@0 is not OK, should be switch@0.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi   |  4 +---
 arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts      |  4 +---
 arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts     | 12 ++++++------
 arch/arm64/boot/dts/marvell/armada-7040-mochabin.dts       |  2 --
 arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts |  2 +-
 arch/arm64/boot/dts/marvell/cn9130-crb.dtsi                |  4 +---
 6 files changed, 10 insertions(+), 18 deletions(-)

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
index 9eab2bb22134..c69cb4e191e5 100644
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
index 32cfb3e2efc3..110d4c9898bc 100644
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

-- 
2.34.1


