Return-Path: <devicetree+bounces-29425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8792822E5A
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 14:31:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE3F11C23512
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 13:31:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3302199C9;
	Wed,  3 Jan 2024 13:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="KQ50OvmX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCA41BDD9
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 013653F5B7
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1704288552;
	bh=j8polI0w/bjJ8tZqB1jGYw0XXYsOmvLZx8MNesRoCUY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=KQ50OvmXB7y3savHWjFD8br/ueisKFm+Vw37SScch2wY+uN/ZXwH8owvqgGzKtwql
	 SAJvjOlnDi5eloQvlUvJ/k92XnOwXDgvmtOswmUPCTj1fCp5A1GIcU0mUlJZ4l5cTt
	 qvLQ9tSjU6KyWtf1HmjAeaMUell7Zk0RL/Udn6WZ8xQLKB4S7wcJuKl6bKlTnnSath
	 niQQ//lm+Z5zA9d/udJsM+sbMI3zGHICTGGJWpZwe2KX+FpNS6O+HQxpX9Fmsc+Lf6
	 9AISVV/UsrGcx17c6Zr8NJC+zgdKR6ZZwDsxjw27WxTmmGNdjR7LnEBFm9tInDVb3u
	 k6CI4WpsAoReg==
Received: by mail-lf1-f70.google.com with SMTP id 2adb3069b0e04-50e7b20360bso5520736e87.3
        for <devicetree@vger.kernel.org>; Wed, 03 Jan 2024 05:29:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704288542; x=1704893342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j8polI0w/bjJ8tZqB1jGYw0XXYsOmvLZx8MNesRoCUY=;
        b=CR3c1vmGvQQkGzle/cb3Rfg/ow4kHU09sWKLIjjPcJhZA819b70ndICUq15PIHiwjd
         xOeTDstK1j1HEAhbM2q0R63zvfd98kyrOYUZJVrhnMKKgRDYA1YF+7nG/8Byc52tPMUI
         yhikf3Ow4+3FMNUAZJnZPrqwstnnGxk3z/WFSmI/97gXNModHse377eywzPRYf79jZph
         HLOidFen1mzcJOilaKDYgoxZcVpCHm7OXXRYnnQFrgReAt1lm4xnNbutikFlzRSQ/Dn4
         J5Ge6aB7077Fiz5x/X+NkuzvnkumczZRfzptIRCy0WDV7nwvG7i9w4IKBoM5w2tlpRGw
         Xsrw==
X-Gm-Message-State: AOJu0YxNYrY7hNsc6gOvglOLHf3v3i0kGQ701prhmB6e3d8E8ESq4Tge
	wQpSFsUfGsrqMHDt1k2FHm64CpqUWHOX3tOrhPZiR2tNOrdtYe5d/OTUVC1Ff3fNxBcViilpZ0G
	TVsT42iNGCO1t2nbAFp8am+n2hXl6qqGo93i6Yz92bKv2mA==
X-Received: by 2002:a05:6512:1145:b0:50e:3767:d381 with SMTP id m5-20020a056512114500b0050e3767d381mr7432120lfg.139.1704288541956;
        Wed, 03 Jan 2024 05:29:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEJt4/P/j0GlWbqbKebsvHvV6+jrN2+ONRLeoH23443/k+kOFBIdKz9RoGU2lF8BDUFzg5rrQ==
X-Received: by 2002:a05:6512:1145:b0:50e:3767:d381 with SMTP id m5-20020a056512114500b0050e3767d381mr7432116lfg.139.1704288541775;
        Wed, 03 Jan 2024 05:29:01 -0800 (PST)
Received: from stitch.. ([2a01:4262:1ab:c:5af0:999b:bb78:7614])
        by smtp.gmail.com with ESMTPSA id eu18-20020a170907299200b00a26e53be089sm9549873ejc.44.2024.01.03.05.29.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 05:29:01 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Drew Fustini <dfustini@baylibre.com>
Subject: [PATCH v2 8/8] riscv: dtb: thead: Add BeagleV Ahead LEDs
Date: Wed,  3 Jan 2024 14:28:45 +0100
Message-ID: <20240103132852.298964-9-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240103132852.298964-1-emil.renner.berthing@canonical.com>
References: <20240103132852.298964-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add nodes for the 5 user controllable LEDs on the BeagleV Ahead board.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 .../boot/dts/thead/th1520-beaglev-ahead.dts   | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index c697a50ca9b1..0b309c770202 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -7,6 +7,8 @@
 /dts-v1/;
 
 #include "th1520.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 
 / {
 	model = "BeagleV Ahead";
@@ -34,7 +36,42 @@ chosen {
 	memory@0 {
 		device_type = "memory";
 		reg = <0x0  0x00000000  0x1 0x00000000>;
+	};
 
+	leds {
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_pins>;
+		compatible = "gpio-leds";
+
+		led-1 {
+			gpios = <&gpio4 8 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_BLUE>;
+			label = "led1";
+		};
+
+		led-2 {
+			gpios = <&gpio4 9 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_BLUE>;
+			label = "led2";
+		};
+
+		led-3 {
+			gpios = <&gpio4 10 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_BLUE>;
+			label = "led3";
+		};
+
+		led-4 {
+			gpios = <&gpio4 11 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_BLUE>;
+			label = "led4";
+		};
+
+		led-5 {
+			gpios = <&gpio4 12 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_BLUE>;
+			label = "led5";
+		};
 	};
 };
 
@@ -62,6 +99,24 @@ &dmac0 {
 	status = "okay";
 };
 
+&padctrl_aosys {
+	led_pins: led-0 {
+		led-pins {
+			pins = "AUDIO_PA8",  /* GPIO4_8 */
+			       "AUDIO_PA9",  /* GPIO4_9 */
+			       "AUDIO_PA10", /* GPIO4_10 */
+			       "AUDIO_PA11", /* GPIO4_11 */
+			       "AUDIO_PA12"; /* GPIO4_12 */
+			function = "gpio";
+			bias-disable;
+			drive-strength = <3>;
+			input-disable;
+			input-schmitt-disable;
+			slew-rate = <0>;
+		};
+	};
+};
+
 &padctrl0_apsys {
 	uart0_pins: uart0-0 {
 		tx-pins {
-- 
2.43.0


