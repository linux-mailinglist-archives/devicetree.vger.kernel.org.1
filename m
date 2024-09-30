Return-Path: <devicetree+bounces-106571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B52C898AD5C
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 21:52:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3377528260B
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 19:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64C321A00D7;
	Mon, 30 Sep 2024 19:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="U24fbq6A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97ED819DF40
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 19:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727725877; cv=none; b=SolRWl0cz8pTm3XhHrGy8cKyS/2pTtdOt968pIPXLorArm+EVL5LWKQ9zF/eMpBgPsP58B3PfrW+5gIeSi1Ii5xLFAqflMO6lNLuop7rSElJP3KYiZ/w3sbQLnns4BBJxsoLNp7LGMeYmIyxJKswtFgp6H1nh4zN5yOyZSgpGvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727725877; c=relaxed/simple;
	bh=vYj5/By2MHeVIqLmc4BCFQXnO2uHpMAioQuqwRTRItY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jSf7V4+qFWaxq87Scdl6vz2cEPCeX166YBOH7GwDoqyrB7Mta/VziA/Le5xCwhGaT20pf5xCktGmzXLcTWWh8AqUAbH52WBWklJo50yO7rG0+aj+krvahqEm4nO9BiyRziHsS0Sfl+NBGDwzlFQHK0rfwAeX9jNqqaTRGKlIQOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=U24fbq6A; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-718e2855479so3389328b3a.1
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 12:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1727725875; x=1728330675; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uZdSF4JqYyS0KQvdy68Lr3bkRoh68PGBl8bGIxtVBZI=;
        b=U24fbq6ATKvj4zXgOIQjIdKPJr6m+xZ20yIwZFItUNz+INaDtAk0/47hDedN9a7QXU
         qRrnBPdaxEXZhVfQvwBPkz2xOrcOZogtxQVky92CXM9c5zJCsoRMpGVFkRVUjUaJGJsQ
         XSiyRaIYspeZ/A0TTZ7nGH6lyh7Atu/9LT2jdGgRGLcWZWhjOIJ1VTp4w+SBmjj55edh
         sKB0BTO93KPUF7nSztPGP7d5UoYDURoBA1m+bU6PXAhGYf9jzDE1MkCmbnzaqaAT8cd/
         VsgPXJtetthMLHeo4oqH94Qfh6xja4Mu84PwlnOFhyPn9ktYfvPKUpIWloLO7WgxBLV8
         5V+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727725875; x=1728330675;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uZdSF4JqYyS0KQvdy68Lr3bkRoh68PGBl8bGIxtVBZI=;
        b=ae1Uu4xhBrFbtzJDqX20Uhx5AKiBNpIGrugtfnv9IV9q7Ld06eIs69FfBfj5k35qib
         LYpYmZb+t396xu4kgJApxVSm32jRFtAnN7rvEXYDKEeyLgkW1blCqqJlFJl+6yFQ4wIy
         8ERRxJef++enoR/mUzZtOmymEHiKHcj38ae53jDRByo+LHyYG/hiA3n38KSFYZExinfM
         9d0aegJJTGKkygjDjOSH+qQJuEgyvyhJA09e74jDNMfbZanZG/kQBTF7rsLd5UaUH4nb
         ZR1uCkNyAFmpP3KyplPzQOygsaEudvEXO0/G3DUiUKFCpnNufaZjLhz17QX82GVNaDbT
         ztng==
X-Forwarded-Encrypted: i=1; AJvYcCU4hKXHlW1dDFpKBGdvQCf63T6aWOitXewep/KZFb7zNw8mOHWzRFHGLdDftYTKLOSqrGUGTvVB6OCi@vger.kernel.org
X-Gm-Message-State: AOJu0YzNp73Xj5aRFLQqNE78mSXrZ365urIvWvfUTxI6b0hVxof47jPW
	E8yREODdfOj1FuoFBWqfkZOECUX07oXI+sI2AqNbi3RdtcEhjF/x0+qfePUGJwo=
X-Google-Smtp-Source: AGHT+IH1UWn6GR0PSUwjld9YOqDEPEWUiDR7fiim+3Ls/OwdAW7upk1oDC+Mq7kZcHJ6ZqHR7mr4lQ==
X-Received: by 2002:a05:6a00:4b13:b0:70d:1b48:e362 with SMTP id d2e1a72fcca58-71b2607a58fmr18203751b3a.26.1727725874895;
        Mon, 30 Sep 2024 12:51:14 -0700 (PDT)
Received: from [127.0.1.1] (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b26529d4bsm6630213b3a.158.2024.09.30.12.51.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 12:51:14 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 30 Sep 2024 12:50:58 -0700
Subject: [PATCH v3 8/8] riscv: dtb: thead: Add BeagleV Ahead LEDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240930-th1520-pinctrl-v3-8-32cea2bdbecb@tenstorrent.com>
References: <20240930-th1520-pinctrl-v3-0-32cea2bdbecb@tenstorrent.com>
In-Reply-To: <20240930-th1520-pinctrl-v3-0-32cea2bdbecb@tenstorrent.com>
To: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Cc: linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.14.1

From: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Add nodes for the 5 user controllable LEDs on the BeagleV Ahead board.

Tested-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 6c0b768e8d17..5a5888f4eda6 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -7,6 +7,8 @@
 /dts-v1/;
 
 #include "th1520.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 
 / {
 	model = "BeagleV Ahead";
@@ -35,7 +37,42 @@ chosen {
 	memory@0 {
 		device_type = "memory";
 		reg = <0x0  0x00000000  0x1 0x00000000>;
+	};
+
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
 
+		led-5 {
+			gpios = <&gpio4 12 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_BLUE>;
+			label = "led5";
+		};
 	};
 };
 
@@ -71,6 +108,24 @@ &sdio0 {
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
2.34.1


