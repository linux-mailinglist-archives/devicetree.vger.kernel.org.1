Return-Path: <devicetree+bounces-15512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8AF7EA71B
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 00:36:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32F33B20A4E
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 23:36:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D9B63FE2F;
	Mon, 13 Nov 2023 23:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uU/KBqdw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B2E3FB01
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 23:36:11 +0000 (UTC)
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 638401728
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 15:36:08 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2c50fbc218bso66040781fa.3
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 15:36:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699918566; x=1700523366; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XzpjgIoTApBpg6RH8jtn7hI12q8Te+BGFiuT3n+0Mpg=;
        b=uU/KBqdwoiS0R7cUYvjtAYtLQGt3GqnCwBeS+O0UWPG6cQRV2s+ceDoE11Z5miV8ug
         85GBJc/C9N9iPO0upMx83NZBjqYX9U7OPLMCjlpFLjiQM4mzQ8T04cuL77oql77j7/BW
         tIF8GbUsSi4fBhiC4bqtwc/ju3WioxwcyM1CFrdUgSSL9CJUUcNE/SpYxUHe6PsdsWes
         fBwVm+smyqXEy9uKl39N7xjNZcNktMA4jv4zQGWJpZNbVPL0duaKdfUOYO2oXxSChI2m
         gD3oaWVXa2xPEqwBFsbTOX2olo9wUd6pz/dXX2KjAEltW6wFEbr67P4ZCYePmFQ8PZHw
         j1TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699918566; x=1700523366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XzpjgIoTApBpg6RH8jtn7hI12q8Te+BGFiuT3n+0Mpg=;
        b=VWWjXNEfGLwAfrv3t6t6tStPyM0XEzrCybOMxlaYidGWDpICb9UtAt1HrGqaF12fuq
         /aqlgsa5ooYlIzRPh5feUMlEYcLhKZIB+0nMZfn7JjaSU3dcF9T9ckHR+3cuA4x2Vn/g
         dYSkb5pdvF3SO7gPcD4hYgSAJsV1EV+vGXg1rdUz7duSdphj/ioUEU+gQHu1vayc7baF
         32hAgavWzTRxvKTJdBmmu13lfGOssMKC4BcyFzbOn9XsdKfUV2t8C8PDeCdojy13EiJt
         /UnoHDv1vWiIAw0TYKi2EYDEF8VYCR0IK886thJnKDjbzoJWGnjwSp6ZtaOn3cYdmAMw
         K2Zg==
X-Gm-Message-State: AOJu0YwTMUAvRxiyr6k9LD4+1jiynmEWrGrxqgWmzuzzkkaknswaP5cA
	I9brWuKWg4AF3eOgjByDyNDlcQ==
X-Google-Smtp-Source: AGHT+IFNcKHf6oE6p5RPbdVx7uMMDCSOP+eTKVss4Nmp8f/70WXA9vQVoDVofrpkOT5vFPot1i3/QQ==
X-Received: by 2002:a2e:bc28:0:b0:2c6:eccb:344d with SMTP id b40-20020a2ebc28000000b002c6eccb344dmr646562ljf.40.1699918566771;
        Mon, 13 Nov 2023 15:36:06 -0800 (PST)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 17-20020a2e0611000000b002b70a8478ddsm1202859ljg.44.2023.11.13.15.36.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 15:36:06 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Nov 2023 00:36:03 +0100
Subject: [PATCH net-next v8 8/9] ARM64: dts: Add special compatibles for
 the Turris Mox
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231114-marvell-88e6152-wan-led-v8-8-50688741691b@linaro.org>
References: <20231114-marvell-88e6152-wan-led-v8-0-50688741691b@linaro.org>
In-Reply-To: <20231114-marvell-88e6152-wan-led-v8-0-50688741691b@linaro.org>
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

These special compatibles are added to the Marvell Armada 3720
Turris Mox in order to be able to special-case and avoid
warnings on the non-standard nodenames that are ABI on this
one board due to being used in deployed versions of U-Boot.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
index 66cd98b67744..a89747d2a600 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
@@ -312,7 +312,7 @@ phy1: ethernet-phy@1 {
 	 * Also do not touch the "ports" or "port@n" nodes. These are also ABI.
 	 */
 	switch0@10 {
-		compatible = "marvell,mv88e6190";
+		compatible = "marvell,turris-mox-mv88e6190", "marvell,mv88e6190";
 		reg = <0x10>;
 		dsa,member = <0 0>;
 		interrupt-parent = <&moxtet>;
@@ -438,7 +438,7 @@ port-sfp@a {
 
 	/* NOTE: this node name is ABI, don't change it! */
 	switch0@2 {
-		compatible = "marvell,mv88e6085";
+		compatible = "marvell,turris-mox-mv88e6085", "marvell,mv88e6085";
 		reg = <0x2>;
 		dsa,member = <0 0>;
 		interrupt-parent = <&moxtet>;
@@ -506,7 +506,7 @@ port@5 {
 
 	/* NOTE: this node name is ABI, don't change it! */
 	switch1@11 {
-		compatible = "marvell,mv88e6190";
+		compatible = "marvell,turris-mox-mv88e6190", "marvell,mv88e6190";
 		reg = <0x11>;
 		dsa,member = <0 1>;
 		interrupt-parent = <&moxtet>;
@@ -632,7 +632,7 @@ port-sfp@a {
 
 	/* NOTE: this node name is ABI, don't change it! */
 	switch1@2 {
-		compatible = "marvell,mv88e6085";
+		compatible = "marvell,turris-mox-mv88e6085", "marvell,mv88e6085";
 		reg = <0x2>;
 		dsa,member = <0 1>;
 		interrupt-parent = <&moxtet>;
@@ -700,7 +700,7 @@ port@5 {
 
 	/* NOTE: this node name is ABI, don't change it! */
 	switch2@12 {
-		compatible = "marvell,mv88e6190";
+		compatible = "marvell,turris-mox-mv88e6190", "marvell,mv88e6190";
 		reg = <0x12>;
 		dsa,member = <0 2>;
 		interrupt-parent = <&moxtet>;
@@ -817,7 +817,7 @@ port-sfp@a {
 
 	/* NOTE: this node name is ABI, don't change it! */
 	switch2@2 {
-		compatible = "marvell,mv88e6085";
+		compatible = "marvell,turris-mox-mv88e6085", "marvell,mv88e6085";
 		reg = <0x2>;
 		dsa,member = <0 2>;
 		interrupt-parent = <&moxtet>;

-- 
2.34.1


