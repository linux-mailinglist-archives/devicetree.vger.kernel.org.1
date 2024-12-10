Return-Path: <devicetree+bounces-129407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E90489EB7E1
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:15:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4C8F282A6C
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:15:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E56C243520;
	Tue, 10 Dec 2024 17:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ZUd6KoHx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FAC242AB7
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850663; cv=none; b=TfnpqsLvhjfCK24c6OWB2eLRjwlMCacZv0HZS+npr3ofSHlfeXMjvzpl/u1eHj9TsChMF56XtnOD05RuX/D8O+ZwlcLr81Lh6dKWwMCZtg8rSohZVh3oBwxQoZFS89LZ7bY8vLhHy28KNYz+qkVl26bvloqJJLkyY1uPAAYjXrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850663; c=relaxed/simple;
	bh=j3EZQQ+bJ4Pgh8+9W/k4Ypg3jmTVeLSoZtZxACS5Ilw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rUn0E+AA+tYn03IyUE846EL3Qfs3mTJ5+jXmb9buTvSkW4ZgYwJ0G3ht1r17ZXfHekUvCOz5dFkHhorFcbubWzThGElHWR+iyYMwfawDz5DPQHqdX/T3vZMzNK7DTp1P4nRlaM94JGkoxmHkCopOBUdenCuozawEze3ZNHZJZNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ZUd6KoHx; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5d3f28a4fccso3468943a12.2
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850660; x=1734455460; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jE6wTwaLZbTxO8+1zmhGoRQFuhziI2yndu2tr5ybLTY=;
        b=ZUd6KoHxKUkZMl4YclFXBsHflSt9GCw+rx+Gpsrq6TTs5QX4jgkXrgGTYXCN6PALaK
         q80rRXMJsxj3Qt3fCxRv/oKsmrtOAPPw1UMJJdne8jQrCcp6JlvB03urTzkY7rakPhnQ
         T69cej1tAaWAijNxNwOvbIA0BOPlAGX+NIIrCMvuwKujcTl98Vn+3TMwjdD/eAblZCP+
         zYFIXt+2umxLxxLRDuGg7Wty0d2hf3UZVOOf9m352Ufe8fS6bH0mLohsiO82326s5i0c
         2dmH6ZtwOpFUkyur5lGfjGKOPLHhlaKR+T8hMPbsMkwntU2NjqTBrG1jqjjFu386saVU
         GUJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850660; x=1734455460;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jE6wTwaLZbTxO8+1zmhGoRQFuhziI2yndu2tr5ybLTY=;
        b=CdzbGV0Avk6w2EADJV99KKQLCxDZNccuD74Efg8Qq8eWQcy+0vt29SxpGUsI6K1w3w
         +nmzF4UQox87nLD1AZjA0kKZgAwq5QA9tKdA0ToK53v+lH7wr9zEL+Sz6AH822GW2cSb
         Vj2ir5RrGRa2JSjRik2cLVqp0gYgHKEV4FADl2twylP4Y11AMh9wyKF2X67fgeq95tgq
         v9bbTCunpokDTsaEOF3kV7Tl9DQK6kVbbMYi+tXTysqMflTt2PWcwMhdhK1HKd/inCPw
         ofciBmGH7SMmoLmxAxHINZBVVv3RopHCNe1+OUEzvItesPMG2FbcZdMj6WGG2P6LVS4O
         y0Pg==
X-Forwarded-Encrypted: i=1; AJvYcCXbNL7Saf7gRgoS3+zjcDPjlOD93YrcUHsFeo/coZJUUOEXdphBZwgNQLDMyZR1ZmpB/5eMccW0W06n@vger.kernel.org
X-Gm-Message-State: AOJu0YyQtK0wSOdLHOQuACKvSzh8JV9awTOQXMq0WuDq1gc4XS5RSYPF
	W/+Z9tVEaVj4PMg9IIrcTYi+/tP5VEYF8MdeoBrhK1qbOuNiZWvqCnt1nSZrLTo=
X-Gm-Gg: ASbGncsU1Jst9b1bl3agqQE1v0Z5N/U+/bycciHXzwdoAoY2ly0x6rkllbHUBEs443H
	klG/nFDoa7OcF4U50Y9JaOy1vS8w7CFgnOCtKV8N/z+EYqDpFTrHXCmtYIgkdTkiIw1fA8GGXr7
	bYV1SNatcm3hSh2VXYyAfAFOXvMNfvIp0gORo/SHb3PLqkMJCrF/i+N3FcktM2i3oJtnctHOmkp
	B8lsijUMB0hTpizGPc0kp4msaoMkC40k5NDz0hxWR5sFIv8FbvfrH/P9AL/0c4oaH+JEFIDmyq7
	3Njaxm7Y
X-Google-Smtp-Source: AGHT+IFlYyo736yb9cxpJS2cGnLCOO0TpZQwWI6UbvDphomE+gSa6jZr1VtWzN9wAD+vqnofdD3cjQ==
X-Received: by 2002:a05:6402:2791:b0:5d0:b925:a8a with SMTP id 4fb4d7f45d1cf-5d3be6c1598mr19946134a12.16.1733850659570;
        Tue, 10 Dec 2024 09:10:59 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:59 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 23/24] arm64: dts: renesas: rzg3s-smarc: Enable SSI3
Date: Tue, 10 Dec 2024 19:09:52 +0200
Message-Id: <20241210170953.2936724-24-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable SSI3.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- collected tags
- dropped status for audio_clk2

Changes in v3:
- none

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 25 ++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 899d88467d79..1944468a2961 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -64,6 +64,10 @@ vccq_sdhi1: regulator-vccq-sdhi1 {
 	};
 };
 
+&audio_clk2 {
+	clock-frequency = <12288000>;
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -105,6 +109,11 @@ power-monitor@44 {
 };
 
 &pinctrl {
+	audio_clock_pins: audio-clock {
+		pins = "AUDIO_CLK1", "AUDIO_CLK2";
+		input-enable;
+	};
+
 	key-1-gpio-hog {
 		gpio-hog;
 		gpios = <RZG2L_GPIO(18, 0) GPIO_ACTIVE_LOW>;
@@ -162,6 +171,13 @@ cd {
 			pinmux = <RZG2L_PORT_PINMUX(0, 2, 1)>; /* SD1_CD */
 		};
 	};
+
+	ssi3_pins: ssi3 {
+		pinmux = <RZG2L_PORT_PINMUX(18, 2, 8)>, /* BCK */
+			 <RZG2L_PORT_PINMUX(18, 3, 8)>, /* RCK */
+			 <RZG2L_PORT_PINMUX(18, 4, 8)>, /* TXD */
+			 <RZG2L_PORT_PINMUX(18, 5, 8)>; /* RXD */
+	};
 };
 
 &scif0 {
@@ -182,3 +198,12 @@ &sdhi1 {
 	max-frequency = <125000000>;
 	status = "okay";
 };
+
+&ssi3 {
+	clocks = <&cpg CPG_MOD R9A08G045_SSI3_PCLK2>,
+		 <&cpg CPG_MOD R9A08G045_SSI3_PCLK_SFR>,
+		 <&versa3 2>, <&audio_clk2>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&ssi3_pins>, <&audio_clock_pins>;
+	status = "okay";
+};
-- 
2.39.2


