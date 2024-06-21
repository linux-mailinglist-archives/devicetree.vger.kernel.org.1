Return-Path: <devicetree+bounces-78413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D8800912371
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 13:26:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6757C1F25FD2
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 11:26:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A79417B411;
	Fri, 21 Jun 2024 11:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="bcFzA+EA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDFA0179972
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 11:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718969021; cv=none; b=KnFxOKQyyq8m7TUTGBOOfCP1rKBPHaj+aM8Vlsi8g/Ny8MgtWRPxkmXh8HN5mA/Ysxo+z+SyK67JsUkOUNoJtdgOvURb3iSSaBOAGU99Mljul2fj9x5F44SqOz7pJvdcEMCwzYilXM1SdTEgUDzc5zYMIOnSUObrZwAvLZudBfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718969021; c=relaxed/simple;
	bh=lNldhumSE6RINO7oqa+VZtuUTBaUdRaXgz5D33kBNAs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZJWt819vqXb/xLNbkjsI6uUXajyZe+59EPTy/qMGzeUnSNMl2kzCchCwruqgbdZFrgadeRq5gLP25V8Ed1AesbbK0g9trCDOWsBpD4ddUosuEBRp7aFvL0cIiPbcgdBka6Ga+/GYDz45SPMGCV1m80sTIKenIUzPrtanQBiphbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=bcFzA+EA; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a6f177b78dcso200020266b.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 04:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1718969017; x=1719573817; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rP4+zuetuuIfhuOzhXeFAzrE549ps3331iDalIZrx6w=;
        b=bcFzA+EAsUy4SO6/cfglGOW42Yy0TzcyVBEJl1JTnRvaXaNchrVVgdQsvSpknXkhqC
         07rePusNlPT3B6Ae/vHfZOOZV7Hm0L/xKL6ResvzmkscXqNhLZ+zK1BM+T0GlmKBsYwP
         S/RpYudq4SRtfFlUffqHAqScjF6gfHZ3X4aZsV62vDukJW2YYFk9be3Wjrb0JxL71vs2
         zGHFY2QpHqQMXDfU40tg8e4tnlv3Xu+z9bgRyq7WQXEOwR+z3L32AmdonltmeQu1TpaZ
         M5NuTozDAb3d0rS4wBObPq1s/S0VMUnUbczSmfMnVtTK3W2cKacFkIGOkXT4NBcdrJKY
         hqvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718969017; x=1719573817;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rP4+zuetuuIfhuOzhXeFAzrE549ps3331iDalIZrx6w=;
        b=V9jvc1Xwqhe23vJQLjVMjDtAGwxgh1y3/48qWPI2R+1BEaXSFNubXWx+p8Xd5ysQU5
         RKK9hRmz3anHFTeLooRIzUUD7kZmZYx8QhPGgroO5+WxbVfYc+kjVD9dDJ01fgsWEGRh
         69C7Hg4loh3zsM4L0shygY9Davs8mcrepLfqqiQv86Ff6/Kr8vTuf1ypftlD+nVppRy9
         c0LTPjgXPrSLC7joFrjIuZCzYpWugiCtNYYaasMy7m7gcomJfn+AaPZgChS90O+VWI0q
         +8IF833m4uvQ9rKOw7uv6wmTa3UvxqTtTcq+ygijhqTZqTdokzcT8/RcpD9+qBfWUyXO
         Sugg==
X-Forwarded-Encrypted: i=1; AJvYcCWU/WiL2Uopx2eXu+fg7/satgcLBoQlVoa2adONR7VjvnQRNlM1UwxHudyXAK/fW1Bz6s5DOr/l254z9MgFsf7SIuiTGZZgDfUUNg==
X-Gm-Message-State: AOJu0YwCAe25xnREuRAMluVfkE67dl0VlU21S1uv1rEfelny77r/0/1d
	4fmZ/YPIWsYvS4aIgB/hVJYyeq8EvPRuh+PMB9BP7yI5Mei2fiAmYmSmQGhiki4=
X-Google-Smtp-Source: AGHT+IFIq66bSlA38LAdExrJtWaTZlg6NozLGS4VPpVsqky9aYie4i5NKq+JpOklKvZ45RaWZgib2g==
X-Received: by 2002:a17:907:bc4:b0:a6f:4ef7:85bd with SMTP id a640c23a62f3a-a6fab77a648mr353123466b.47.1718969017264;
        Fri, 21 Jun 2024 04:23:37 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fd0838345sm64498466b.99.2024.06.21.04.23.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 04:23:36 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 10/12] arm64: dts: renesas: r9a08g045: Add I2C nodes
Date: Fri, 21 Jun 2024 14:23:01 +0300
Message-Id: <20240621112303.1607621-11-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240621112303.1607621-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240621112303.1607621-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The Renesas RZ/G3S has 4 I2C channels. Add DT nodes for it.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 90 ++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 2162c247d6de..cc5beed37ae8 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -72,6 +72,96 @@ scif0: serial@1004b800 {
 			status = "disabled";
 		};
 
+		i2c0: i2c@10090000 {
+			compatible = "renesas,riic-r9a08g045", "renesas,riic-r9a09g057";
+			reg = <0 0x10090000 0 0x400>;
+			interrupts = <GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 263 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 264 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 258 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "tei", "ri", "ti", "spi", "sti",
+					  "naki", "ali", "tmoi";
+			clocks = <&cpg CPG_MOD R9A08G045_I2C0_PCLK>;
+			clock-frequency = <100000>;
+			resets = <&cpg R9A08G045_I2C0_MRST>;
+			power-domains = <&cpg>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c1: i2c@10090400 {
+			compatible = "renesas,riic-r9a08g045", "renesas,riic-r9a09g057";
+			reg = <0 0x10090400 0 0x400>;
+			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 271 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 272 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 267 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "tei", "ri", "ti", "spi", "sti",
+					  "naki", "ali", "tmoi";
+			clocks = <&cpg CPG_MOD R9A08G045_I2C1_PCLK>;
+			clock-frequency = <100000>;
+			resets = <&cpg R9A08G045_I2C1_MRST>;
+			power-domains = <&cpg>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c2: i2c@10090800 {
+			compatible = "renesas,riic-r9a08g045", "renesas,riic-r9a09g057";
+			reg = <0 0x10090800 0 0x400>;
+			interrupts = <GIC_SPI 273 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 279 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 280 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 275 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 276 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 274 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 277 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 278 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "tei", "ri", "ti", "spi", "sti",
+					  "naki", "ali", "tmoi";
+			clocks = <&cpg CPG_MOD R9A08G045_I2C2_PCLK>;
+			clock-frequency = <100000>;
+			resets = <&cpg R9A08G045_I2C2_MRST>;
+			power-domains = <&cpg>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			renesas,riic-no-fast-mode-plus;
+			status = "disabled";
+		};
+
+		i2c3: i2c@10090c00 {
+			compatible = "renesas,riic-r9a08g045", "renesas,riic-r9a09g057";
+			reg = <0 0x10090c00 0 0x400>;
+			interrupts = <GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 287 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 288 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 284 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 285 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 286 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "tei", "ri", "ti", "spi", "sti",
+					  "naki", "ali", "tmoi";
+			clocks = <&cpg CPG_MOD R9A08G045_I2C3_PCLK>;
+			clock-frequency = <100000>;
+			resets = <&cpg R9A08G045_I2C3_MRST>;
+			power-domains = <&cpg>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			renesas,riic-no-fast-mode-plus;
+			status = "disabled";
+		};
+
 		cpg: clock-controller@11010000 {
 			compatible = "renesas,r9a08g045-cpg";
 			reg = <0 0x11010000 0 0x10000>;
-- 
2.39.2


