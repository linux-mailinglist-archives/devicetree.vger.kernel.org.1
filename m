Return-Path: <devicetree+bounces-16982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1439D7F0C55
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 08:02:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1C23281520
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 07:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06F836FD6;
	Mon, 20 Nov 2023 07:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="gvhZSfHr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D8A619A9
	for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 23:01:36 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40842752c6eso13460045e9.1
        for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 23:01:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700463695; x=1701068495; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1yFiK0NYk7EGIuf8SEqCXaymTTx+naIJSOZMfzmUUGc=;
        b=gvhZSfHr9dZaSElx5dbxLYdnQ3ymh01YZ4Eqt3Y5Lx3NDHtvCzrT117Xe7DinFXfKA
         j79pBaKT0tgjxiyCPMHboU5Cr/8n4Gl0yWdG65VfU7qHEpxPUPy9TUvQ3mlxmiMH/v1u
         SZf13pD/9rSBEeRMd4exUYQMzpknJjzvTcctiqCQojVggF49qF5wZGFw1mYoQHLCEqQz
         +3KZCf0yVZ82qVoJP0m0B6C1nos2KHCQcSxWOSvXgaflXZH5OrbD8hz2V5QahXA5WKy9
         +L1exMmspO1hrdkgYr8DKlk0ZrVVoR0FDjUbGxYZwrioFaYEDwTh11fnfCZ3woOs5ZMr
         CaBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700463695; x=1701068495;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1yFiK0NYk7EGIuf8SEqCXaymTTx+naIJSOZMfzmUUGc=;
        b=LPQ2SMWTTVYUzzxkoIGNdRLbjjge5elXWxEyP/oc4yYtGVWjywrSMDVVAIQedm3wWk
         CDuGBcebpmMlEn+dKBg6USlWBk0HthKYhMmQjy1oMq3caTYOQMqFaZA9apmdQZfNbTg4
         ThCo1aODa6dJxeVEaYgP3WPDaS5F8NlA3CiKHsMColpTmgMn661jKYnVGwwfHt2rvf1F
         e5aViopGvMf2VGtDkvnTnbBTBAgR586oV7DD76rNuTY3uEeFaDb7Xvgt8bdSZPYaLyPp
         A0E3IBUdE1EUO6WhVW2o4rSZvuxB9O1Yx7r5e0znH8E05DrxNrc7D1WY0mAG7fIth07V
         z37Q==
X-Gm-Message-State: AOJu0YwRW+yexiVzm0FG/+c9mVpRoH7sycDtCHtyqIOA1XGEZclz5sDx
	aYXKnza2fonqbI4d1e2MC8GW2w==
X-Google-Smtp-Source: AGHT+IHFhn4rk06q1oY1f3B4pJ5xJnFUhqo1ZH0o2iwWyO79GIKvQxqOYw64f2oyrMqqXwmSG8nMAQ==
X-Received: by 2002:adf:e912:0:b0:32d:8e54:29f7 with SMTP id f18-20020adfe912000000b0032d8e5429f7mr4002366wrm.64.1700463694977;
        Sun, 19 Nov 2023 23:01:34 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.183])
        by smtp.gmail.com with ESMTPSA id p2-20020a5d4582000000b003316d1a3b05sm8777667wrq.78.2023.11.19.23.01.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 23:01:34 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: s.shtylyov@omp.ru,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux@armlinux.org.uk,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	linus.walleij@linaro.org,
	p.zabel@pengutronix.de,
	arnd@arndb.de,
	m.szyprowski@samsung.com,
	alexandre.torgue@foss.st.com,
	afd@ti.com,
	broonie@kernel.org,
	alexander.stein@ew.tq-group.com,
	eugen.hristev@collabora.com,
	sergei.shtylyov@gmail.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	biju.das.jz@bp.renesas.com
Cc: linux-renesas-soc@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 11/14] arm64: renesas: rzg3s-smarc-som: Invert the logic for SW_SD2_EN macro
Date: Mon, 20 Nov 2023 09:00:21 +0200
Message-Id: <20231120070024.4079344-12-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120070024.4079344-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231120070024.4079344-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The intention of SW_SD2_EN macro was to reflect the state of SW_CONFIG3
switch available on RZ/G3S Smarc Module. According to documentation SD2
is enabled when switch is in OFF state. For this, changed the logic of
marco to map value 0 to switch's OFF state and value 1 to switch's ON
state. Along with this update the description for each state for better
understanding.

The value of SW_SD2_EN macro was not changed in file because, according to
documentation, the default state for this switch is ON.

Fixes: adb4f0c5699c ("arm64: dts: renesas: Add initial support for RZ/G3S SMARC SoM")
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 01a4a9da7afc..275b14acd2ee 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -14,8 +14,8 @@
  *	0 - SD0 is connected to eMMC
  *	1 - SD0 is connected to uSD0 card
  * @SW_SD2_EN:
- *	0 - SCIF1, SSI0, IRQ0, IRQ1 connected to SoC
- *	1 - SD2 is connected to SoC
+ *	0 - (switch OFF) SD2 is connected to SoC
+ *	1 - (switch ON)  SCIF1, SSI0, IRQ0, IRQ1 connected to SoC
  */
 #define SW_SD0_DEV_SEL	1
 #define SW_SD2_EN	1
@@ -25,7 +25,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhi0;
-#if SW_SD2_EN
+#if !SW_SD2_EN
 		mmc2 = &sdhi2;
 #endif
 	};
@@ -116,7 +116,7 @@ &sdhi0 {
 };
 #endif
 
-#if SW_SD2_EN
+#if !SW_SD2_EN
 &sdhi2 {
 	pinctrl-0 = <&sdhi2_pins>;
 	pinctrl-names = "default";
-- 
2.39.2


