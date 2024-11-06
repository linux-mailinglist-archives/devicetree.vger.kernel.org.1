Return-Path: <devicetree+bounces-119359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBB89BE0D1
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 09:26:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6397828264E
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 08:26:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E29F51E00B0;
	Wed,  6 Nov 2024 08:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NgVaLZ/B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D98E1DFE01
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 08:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730881220; cv=none; b=PTyTEqsPWlKGGJZ7ZGxYJ6kjVBYmY6r0J8g/t0cEFZPxw7ghSXn89dYC6gX8iaY5bg2Z8iTK09V0bpsyCDxwalx2Li/ffwgkefgVEoHtuNFOJgjOy5H+HsGqu974TJsUkQWBO3oubq3Tlnb4WeofAYE8FxiZy+7jaiZGp2vjW8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730881220; c=relaxed/simple;
	bh=AmQ9VjO7lv1oInRN+F47Jod2ymKziE+6QNjH+4sP+io=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iylgm8E1fdh0+bKbORjfij1cx2RM8r57YizggIWkqCAV+/7QZFPTOi5AWkGeY3TCVAh9Oum1H90ZTP+rmSor2mdRYGzhhUlZ7qGEELqy5c6n3MQ3+zLcVKB3CqqoW7Do6wY7wlmGUtJlTzWVnOfcLnSPK3InlAg8sqPFmS/m3g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NgVaLZ/B; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a9ec86a67feso71017266b.1
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 00:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730881216; x=1731486016; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OP8a/ac/GS/uy3/6XCttRayjfeh07Xpvr/y4hz/gpH8=;
        b=NgVaLZ/BAlxl2IsxLOgTA7+/qmjZEkVB0M1SF+x6PhYXPfD/2kRRr3Vk5sDhBOt0wl
         E/F1bLgBih30qux+hb4Rp9NGTNlhDvMJ02eE5XmZkmSt22UMc7qPEqxXpg/B2Yf59Ewp
         SBnxTIlGdGB42nHxBZPLofJ87KQxeRXZWEEA6ARpqr3dGxBR+9H/YxI0fFJQXBi/Lq2q
         58QaGVJLK1LRo9VwqBwYCA+JIPxVLgYEn3HRI4yGXp51pLcjPrKmiZx5uG/jYOU0g8Nm
         gg3mzZAIQilBncnEgDsMf+jfhQBVE4uLSH9n/t9+tI9KxmcnfCkgJMbmWIbIOimksf+x
         LKxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730881216; x=1731486016;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OP8a/ac/GS/uy3/6XCttRayjfeh07Xpvr/y4hz/gpH8=;
        b=VeoQi5/V1iB6i6cK+qQV32iiwwWTdHpjz/4RVoh9ao7Fbgrkl5QvjcWOSlUZZCojj8
         SvpQpFQrri9RXyxFMI+lpYHkxU1M0v8p5EQhG2C3G9j790k7XWVrwwPydEfKl5WWq6fQ
         iEqh/0aDICSghly8et6HR20YGL7KrAtH/Q6JAAMIqwd2T25LNpJZnYlfmS3ZXYzmNdno
         IttVQNONyRhbua+r+df3E34Zsbo9SEB3myKw3/XTnPSXuIkEPfVBbf6FP6DQwlZfCWad
         KROy5yoJFZWXntFjyHtUTFf5MZ542tW7w9eBEpCbW4FeKLfdS+D+WNU4YZbKIaX5wX9K
         8o4w==
X-Forwarded-Encrypted: i=1; AJvYcCUTXZfmwB1vRN+5rq3Anl4lyyddD/JR9hFU444IjQFrYEpWjr7o7y+TY0eGFVOCMW5ZDWros/6YGT/5@vger.kernel.org
X-Gm-Message-State: AOJu0YxxoPUE+xconKFpb3t6qKd/+Pq5ZWYqjxWHQNwOxBJhb4NSs5GD
	6xnD9NAXFEhaVwSTNLvKPrbmZeVt1OvsxB2qckNNOVJBD6qeEY6MIas9ON4nCOc=
X-Google-Smtp-Source: AGHT+IGJiZzESlntHvmDLzeM53IQCRK40t//hDLlFo21WKnp1qf5ws9XSkdc+uo5ygVV3pB54qSSUg==
X-Received: by 2002:a17:907:724c:b0:a99:fa01:2b72 with SMTP id a640c23a62f3a-a9de5ee15e8mr3705276366b.33.1730881216506;
        Wed, 06 Nov 2024 00:20:16 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb16a2dbcsm241369766b.40.2024.11.06.00.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 00:20:16 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	biju.das.jz@bp.renesas.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	linus.walleij@linaro.org,
	support.opensource@diasemi.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	Adam.Thomson.Opensource@diasemi.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 28/31] arm64: dts: renesas: rzg3s-smarc-som: Add versa3 clock generator node
Date: Wed,  6 Nov 2024 10:18:23 +0200
Message-Id: <20241106081826.1211088-29-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add versa3 clock generator node. It provides the clocks for the Ethernet
PHY, PCIe, audio devices.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 2ed01d391554..6e58d47d85b0 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -92,6 +92,12 @@ vcc_sdhi2: regulator2 {
 		gpios = <&pinctrl RZG2L_GPIO(8, 1) GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 	};
+
+	x3_clk: x3-clock {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+	};
 };
 
 #if SW_CONFIG3 == SW_ON
@@ -152,6 +158,30 @@ &extal_clk {
 
 &i2c1 {
 	status = "okay";
+
+	versa3: clock-generator@68 {
+		compatible = "renesas,5l35023";
+		reg = <0x68>;
+		clocks = <&x3_clk>;
+		#clock-cells = <1>;
+		assigned-clocks = <&versa3 0>,
+				  <&versa3 1>,
+				  <&versa3 2>,
+				  <&versa3 3>,
+				  <&versa3 4>,
+				  <&versa3 5>;
+		assigned-clock-rates = <24000000>,
+				       <12288000>,
+				       <11289600>,
+				       <25000000>,
+				       <100000000>,
+				       <100000000>;
+		renesas,settings = [
+		  80 00 11 19 4c 42 dc 2f 06 7d 20 1a 5f 1e f2 27
+		  00 40 00 00 00 00 00 00 06 0c 19 02 3f f0 90 86
+		  a0 80 30 30 9c
+		];
+	};
 };
 
 #if SW_CONFIG2 == SW_ON
-- 
2.39.2


