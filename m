Return-Path: <devicetree+bounces-8662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E337C9659
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 22:52:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D30AFB20D15
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 20:52:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC901266BD;
	Sat, 14 Oct 2023 20:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XYNtJSZK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01EA266B5
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 20:51:46 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48494E6
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 13:51:42 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50435a9f800so4105520e87.2
        for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 13:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697316700; x=1697921500; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bRAJxOH+ejiFnd2dNnRhzRVyCxEiMIKKKk9Axu7hk70=;
        b=XYNtJSZK/uzSruRzgwY9rbGzw3b5LZBXjrfV1JJ5cBMaNlH4e2QOAnMN6K5LiEuVDW
         T8iQCPgKd6bcM1yN6YEDNHi3sBV9T6vxBlszwxGV2VLV9moIAysVUUjmKL7ZXqnmrwoq
         hrvJIA/TRSA2W8xr/oYcPfTQEu80UEkwQNY2rNW2XtAcXId83xneZZ03AdfL9P5nQxqZ
         dPH0tFdvo0a7IyRAdhk5K03r1/PJtrWqd6w5nbRJnwfkaRWVCZX9ZQMsr+D7Cv73EH1u
         Ut7FLrXQHe3fJ6oc8pQiYFQqS3aacvOep7oJKguFjvcfK0lku58rolqvLmDIzpeu0UB+
         yZdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697316700; x=1697921500;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bRAJxOH+ejiFnd2dNnRhzRVyCxEiMIKKKk9Axu7hk70=;
        b=nEbMSpSUMxoeKpdZ+oAxJU6KMJePV+f0Y964RkHUP4mjz8YUI+20WFbup9BHPGpfB5
         Abtz4ZkAqhagOindus93ivFqPirSnAmIKR2ZRPRtnu1+PPMMTmNwEQN4jNdhY4wxbjlV
         sMgpc8Dy8on7r+83rC9nX4eIMFUyalAUGi/meIU3wxuV+AhrJPSgxYzuK3+DXSiNC2nO
         JUWPElSqtjCMPawy9V1FT9c8wcsIOCXEg4c2pTi89NFAUq/CCmNbHKNcoN5vVYi7M0/c
         DsVSFgLRm/j+Q2FS1T16Q3XfOxr28bgM7lz4iJdWDWFUbmICLfG0I0/F/mVTJUBbWIqd
         YkPQ==
X-Gm-Message-State: AOJu0Yx8eBzB/zIr7i48Ix2mpVoQEeIgaVfNT46WivmSg4P0d5mWKmDh
	Id1JP9NKJ2PIv/4aLnaxMzCnUg==
X-Google-Smtp-Source: AGHT+IHiYFzH4L27RvGel/ewKBVSDQZKNNhqc1MjbrSoR+syC458v0e8MZxut888hqckGMcP6t+aYw==
X-Received: by 2002:ac2:46ed:0:b0:507:a12c:558c with SMTP id q13-20020ac246ed000000b00507a12c558cmr2254730lfo.46.1697316700511;
        Sat, 14 Oct 2023 13:51:40 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id o17-20020ac24e91000000b004ff96c09b47sm49926lfr.260.2023.10.14.13.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Oct 2023 13:51:40 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 14 Oct 2023 22:51:35 +0200
Subject: [PATCH net-next v2 4/5] ARM: dts: nxp: Fix some common switch
 mistakes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231014-marvell-88e6152-wan-led-v2-4-7fca08b68849@linaro.org>
References: <20231014-marvell-88e6152-wan-led-v2-0-7fca08b68849@linaro.org>
In-Reply-To: <20231014-marvell-88e6152-wan-led-v2-0-7fca08b68849@linaro.org>
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
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Fix some errors in the Marvell MV88E6xxx switch descriptions:
- switch0@0 is not OK, should be switch@0

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/nxp/vf/vf610-zii-cfu1.dts      | 2 +-
 arch/arm/boot/dts/nxp/vf/vf610-zii-scu4-aib.dts  | 8 ++++----
 arch/arm/boot/dts/nxp/vf/vf610-zii-spb4.dts      | 2 +-
 arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-dtu.dts  | 4 ++--
 arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-spu3.dts | 2 +-
 5 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/vf/vf610-zii-cfu1.dts b/arch/arm/boot/dts/nxp/vf/vf610-zii-cfu1.dts
index 1a19aec8957b..add47d8fb58a 100644
--- a/arch/arm/boot/dts/nxp/vf/vf610-zii-cfu1.dts
+++ b/arch/arm/boot/dts/nxp/vf/vf610-zii-cfu1.dts
@@ -162,7 +162,7 @@ mdio1: mdio {
 		suppress-preamble;
 		status = "okay";
 
-		switch0: switch0@0 {
+		switch0: switch@0 {
 			compatible = "marvell,mv88e6085";
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_switch>;
diff --git a/arch/arm/boot/dts/nxp/vf/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/nxp/vf/vf610-zii-scu4-aib.dts
index df1335492a19..50356bd87d04 100644
--- a/arch/arm/boot/dts/nxp/vf/vf610-zii-scu4-aib.dts
+++ b/arch/arm/boot/dts/nxp/vf/vf610-zii-scu4-aib.dts
@@ -47,7 +47,7 @@ mdio_mux_1: mdio@1 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			switch0: switch0@0 {
+			switch0: switch@0 {
 				compatible = "marvell,mv88e6190";
 				reg = <0>;
 				dsa,member = <0 0>;
@@ -130,7 +130,7 @@ mdio_mux_2: mdio@2 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			switch1: switch1@0 {
+			switch1: switch@0 {
 				compatible = "marvell,mv88e6190";
 				reg = <0>;
 				dsa,member = <0 1>;
@@ -188,7 +188,7 @@ mdio_mux_4: mdio@4 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			switch2: switch2@0 {
+			switch2: switch@0 {
 				compatible = "marvell,mv88e6190";
 				reg = <0>;
 				dsa,member = <0 2>;
@@ -276,7 +276,7 @@ mdio_mux_8: mdio@8 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			switch3: switch3@0 {
+			switch3: switch@0 {
 				compatible = "marvell,mv88e6190";
 				reg = <0>;
 				dsa,member = <0 3>;
diff --git a/arch/arm/boot/dts/nxp/vf/vf610-zii-spb4.dts b/arch/arm/boot/dts/nxp/vf/vf610-zii-spb4.dts
index 1461804ecaea..20e9e2dacbe6 100644
--- a/arch/arm/boot/dts/nxp/vf/vf610-zii-spb4.dts
+++ b/arch/arm/boot/dts/nxp/vf/vf610-zii-spb4.dts
@@ -123,7 +123,7 @@ mdio1: mdio {
 		suppress-preamble;
 		status = "okay";
 
-		switch0: switch0@0 {
+		switch0: switch@0 {
 			compatible = "marvell,mv88e6190";
 			pinctrl-0 = <&pinctrl_gpio_switch0>;
 			pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-dtu.dts b/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-dtu.dts
index 463c2452b9b7..aa53a60518c3 100644
--- a/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-dtu.dts
+++ b/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-dtu.dts
@@ -112,7 +112,7 @@ mdio1: mdio {
 		suppress-preamble;
 		status = "okay";
 
-		switch0: switch0@0 {
+		switch0: switch@0 {
 			compatible = "marvell,mv88e6190";
 			pinctrl-0 = <&pinctrl_gpio_switch0>;
 			pinctrl-names = "default";
@@ -167,7 +167,7 @@ port@9 {
 				};
 			};
 
-			mdio1 {
+			mdio-external {
 				compatible = "marvell,mv88e6xxx-mdio-external";
 				#address-cells = <1>;
 				#size-cells = <0>;
diff --git a/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-spu3.dts b/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-spu3.dts
index f5ae0d5de315..0b7063b74130 100644
--- a/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-spu3.dts
+++ b/arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-spu3.dts
@@ -137,7 +137,7 @@ mdio1: mdio {
 		suppress-preamble;
 		status = "okay";
 
-		switch0: switch0@0 {
+		switch0: switch@0 {
 			compatible = "marvell,mv88e6190";
 			pinctrl-0 = <&pinctrl_gpio_switch0>;
 			pinctrl-names = "default";

-- 
2.34.1


