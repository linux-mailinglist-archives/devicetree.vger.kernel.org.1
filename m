Return-Path: <devicetree+bounces-8307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0DC7C79D9
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 00:35:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33E671C2159A
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D7B13D020;
	Thu, 12 Oct 2023 22:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PX6lNn9A"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CAC3D012
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 22:35:27 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17B7FD8
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 15:35:24 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c186ea81c7so18810381fa.1
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 15:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697150122; x=1697754922; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t8U+a3PhU8m5mApmJF8MtIvjJ5OqBpg+Pl3mnQuevJg=;
        b=PX6lNn9AThhXP8+nyVUcaa1tZhfQAw+6YVsqbdYckmvNa7ULpaq9Q8QVi6cpDNG2v4
         ba95jYbOflf10dBd9IxWw6j7GTK7yy8wrt838bF+0Fkj1/ThKusqPmZalG09COcARm/U
         lDVOXkAUkG5FuUUQoJeVBIzLhK9rFTFxRz3uslg8LfsC0JMQE3guMlmPDqkLTdJ8C5Zb
         ohmEQdELgWBc00rndcb3hy9iPtitlvE4UWNYlRY72ar34wt28CdImNPFiXmd0PEl3NIy
         kwc+Doewq0H02LpiBm4PLUprSPl/RlaWVj76FZmxNKkhFpImxeNBKV+gQcR0Zh9VsHGu
         qhNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697150122; x=1697754922;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t8U+a3PhU8m5mApmJF8MtIvjJ5OqBpg+Pl3mnQuevJg=;
        b=HPg+eXskmvVLahwBjxO03jajmX4YF5zQh7hP7w7Xuf7utt+7ZHwIEpbdxsX1CjRMR+
         4UqJBR1N/IrPa4WYr8qvJhVfoOu1zcodNBjsDRNd2qCHJv5cgW+JB8Mrxht8JkVn4lha
         /LgXpGCriSCBs48w3vPot87+s3N6WwHue3qFZsSEv7CErV2u8PMU3myZqdsGr+ygIMEH
         d1bSRcU97vYfGO4TosskJn6baubJrVq9vhz4Y5PQgLNESgJSNlzgtFSr8fVwtTrDUoQ9
         8CCQxgcP/o9RpsA91FWhvxEzT2ANhg6Xcz5JhiJKa6gSE2+sdQ+VmRDYnDil0sU62J9q
         vG2g==
X-Gm-Message-State: AOJu0Yw63hxMVqRgvvfsD6Sy9UzogOif0NPIuF7ER5nhR9x9u+GxPDgn
	/xQS5fcFFR/1qiHKgUTto2GyEg==
X-Google-Smtp-Source: AGHT+IGZTSbPvJZxknKfkA/iTsRvkhXfDcNp+3UEqfdvugniSIIFexQMavXsFpbuZZAamp/mOQab9g==
X-Received: by 2002:a2e:be0e:0:b0:2c5:12b:6ef2 with SMTP id z14-20020a2ebe0e000000b002c5012b6ef2mr1334606ljq.33.1697150122289;
        Thu, 12 Oct 2023 15:35:22 -0700 (PDT)
Received: from [192.168.1.2] (c-21d3225c.014-348-6c756e10.bbcust.telenor.se. [92.34.211.33])
        by smtp.gmail.com with ESMTPSA id x21-20020a05651c105500b002bcb89e92dcsm3811671ljm.6.2023.10.12.15.35.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 15:35:21 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 13 Oct 2023 00:35:14 +0200
Subject: [PATCH 1/3] ARM: dts: marvell: Fix some common switch mistakes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231013-marvell-88e6152-wan-led-v1-1-0712ba99857c@linaro.org>
References: <20231013-marvell-88e6152-wan-led-v1-0-0712ba99857c@linaro.org>
In-Reply-To: <20231013-marvell-88e6152-wan-led-v1-0-0712ba99857c@linaro.org>
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
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Fix some errors in the Marvell MV88E6xxx switch descriptions:
- The top node had no address size or cells.
- switch0@0 is not OK, should be switch@0.

This serves as an example of fixes needed for introducing a
schema for the bindings, but the patch can simply be applied.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/marvell/armada-370-rd.dts               | 2 --
 arch/arm/boot/dts/marvell/armada-381-netgear-gs110emx.dts | 2 --
 arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-l8.dts  | 2 +-
 arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-s4.dts  | 2 +-
 arch/arm/boot/dts/marvell/armada-385-linksys.dtsi         | 2 --
 arch/arm/boot/dts/marvell/armada-388-clearfog.dts         | 2 --
 arch/arm/boot/dts/marvell/armada-xp-linksys-mamba.dts     | 2 --
 7 files changed, 2 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/armada-370-rd.dts b/arch/arm/boot/dts/marvell/armada-370-rd.dts
index b459a670f615..e3a1834986ee 100644
--- a/arch/arm/boot/dts/marvell/armada-370-rd.dts
+++ b/arch/arm/boot/dts/marvell/armada-370-rd.dts
@@ -151,8 +151,6 @@ led@0 {
 
 	switch: switch@10 {
 		compatible = "marvell,mv88e6085";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		reg = <0x10>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
diff --git a/arch/arm/boot/dts/marvell/armada-381-netgear-gs110emx.dts b/arch/arm/boot/dts/marvell/armada-381-netgear-gs110emx.dts
index f4c4b213ef4e..d4fff4ea9f20 100644
--- a/arch/arm/boot/dts/marvell/armada-381-netgear-gs110emx.dts
+++ b/arch/arm/boot/dts/marvell/armada-381-netgear-gs110emx.dts
@@ -79,14 +79,12 @@ &mdio {
 
 	switch@0 {
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
diff --git a/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-l8.dts b/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-l8.dts
index 1990f7d0cc79..1be0419f8f3e 100644
--- a/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-l8.dts
+++ b/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-l8.dts
@@ -7,7 +7,7 @@ / {
 };
 
 &mdio {
-	switch0: switch0@4 {
+	switch0: switch@4 {
 		compatible = "marvell,mv88e6190";
 		reg = <4>;
 		pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-s4.dts b/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-s4.dts
index b795ad573891..6ec536222bfb 100644
--- a/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-s4.dts
+++ b/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr-s4.dts
@@ -11,7 +11,7 @@ &sfp0 {
 };
 
 &mdio {
-	switch0: switch0@4 {
+	switch0: switch@4 {
 		compatible = "marvell,mv88e6085";
 		reg = <4>;
 		pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/marvell/armada-385-linksys.dtsi b/arch/arm/boot/dts/marvell/armada-385-linksys.dtsi
index fc8216fd9f60..63a0bc9455ca 100644
--- a/arch/arm/boot/dts/marvell/armada-385-linksys.dtsi
+++ b/arch/arm/boot/dts/marvell/armada-385-linksys.dtsi
@@ -160,8 +160,6 @@ &mdio {
 
 	switch@0 {
 		compatible = "marvell,mv88e6085";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		reg = <0>;
 
 		ports {
diff --git a/arch/arm/boot/dts/marvell/armada-388-clearfog.dts b/arch/arm/boot/dts/marvell/armada-388-clearfog.dts
index 32c569df142f..ab46903580aa 100644
--- a/arch/arm/boot/dts/marvell/armada-388-clearfog.dts
+++ b/arch/arm/boot/dts/marvell/armada-388-clearfog.dts
@@ -94,8 +94,6 @@ &mdio {
 
 	switch@4 {
 		compatible = "marvell,mv88e6085";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		reg = <4>;
 		pinctrl-0 = <&clearfog_dsa0_clk_pins &clearfog_dsa0_pins>;
 		pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/marvell/armada-xp-linksys-mamba.dts b/arch/arm/boot/dts/marvell/armada-xp-linksys-mamba.dts
index 7a0614fd0c93..2a5518c73bff 100644
--- a/arch/arm/boot/dts/marvell/armada-xp-linksys-mamba.dts
+++ b/arch/arm/boot/dts/marvell/armada-xp-linksys-mamba.dts
@@ -267,8 +267,6 @@ &mdio {
 
 	switch@0 {
 		compatible = "marvell,mv88e6085";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		reg = <0>;
 
 		ports {

-- 
2.41.0


