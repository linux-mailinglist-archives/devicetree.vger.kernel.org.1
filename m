Return-Path: <devicetree+bounces-82073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CE691E5BD
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 18:49:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6726B1F23E4C
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 16:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C89316DC35;
	Mon,  1 Jul 2024 16:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GnXtAKHz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D16D18635
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 16:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719852565; cv=none; b=oBJNJ0SXj5fgtrsKsCgZXI4gxkoFivoqvn3q1tjsUhbunFJn1OYmr4IyVCow0rQPbu0e4ovruJToey3QF7iLg2NY6yFCweRiK/wufR42sZLybIcgRQ5i7xa2wpjzqqsvLTtZ+fXnuQ3MFEwI+ymsu8y5Dd2nA75Uew9vnXbazBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719852565; c=relaxed/simple;
	bh=ogY8eksTgOJEzLHcJSsQlFUjVUlsR7AprxV7ks4rpY4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dbgUHazk/ZRXTLmFtMR5Uf+wngbPLaln00UC7lusq3vTo+sKQ9e7p4LupF8aewU39Lr3JuHfXavIgy5VTTu2Y7NVjc/anaPpLv/060i8oYwbxORyYNqggjGWVSSXI0tXTWWkKi+ShWdZUsRttJcj3W/YaLJ/yswEhdO/GDYYoSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GnXtAKHz; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2ebe40673d8so43328501fa.3
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 09:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719852560; x=1720457360; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jmslyL3Yn8FM3/FwJClSS40SS89bOK/NcyYZfwBo1Ic=;
        b=GnXtAKHzPTyZUfjaN9jIdCOaqgkLLjiWwpomv12iuzkd6qY6MZLA3wGymbIvwCUoW5
         LrbSWByb76TQEDy9aZRH9JG+EbcnNPtsQODfJgoavp0bUqYm3ZRb8+5w2eU386lwa9D6
         RS32SX9kCebSqWcIXzibR16F2JsHJG0xzq2+HjFzqOaNHwnzOxW07FhuYtaD8pYWVIz7
         ed+t1aVJMfHoIqyT+d8L5GTQxw5JVJOAIN5wHhFIO8qc7Ext9B3hoJ+XurcUSkqN+OTI
         Om8v6s9iYOZ28leERN9zPffRbHfTWJBBWZ0Ha2FHfLxNAFFVHwTlgVds6fex4UT6TFSg
         8X0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719852560; x=1720457360;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jmslyL3Yn8FM3/FwJClSS40SS89bOK/NcyYZfwBo1Ic=;
        b=VhBjShlRgOdqOHxp6M9q/ZTRuMM4S9G4uz/ZblbAISWAD+8FP3D0FBkMasSMEWwfHx
         Bk5SIotHpUIURmyNJ55z/jr7G2976i75qkAFWstPcwgnU00nVz4S9JLOTIEP8V7pjfrg
         rHpoEb7DFb7+xd6BwBUcGTkMNN9E8iKR3oX+fxoV8tpx7QaZ9ocI8I/S7Hqrta514nVq
         b0iFB4qYQGQygLUwufCV3gm4OfPREbHHokoQqA/c/xKIBOATgZxb1wBToyfWaEX1vL1K
         l7g8em1obAbh0NXz7H5KEaI1bC8eHNf3TNX6n8lqAczKPSJUZ5pXr07pf2c6s37F2605
         6AHA==
X-Forwarded-Encrypted: i=1; AJvYcCXpVk4ZILohmwCxm+2uBddQ23w6puv7hC1cEvOI2Y32p25mjZg7QomtGVywrr+GzDsgPpbXJ+EexdyMr/az9q183WaoG/YLSRQFVw==
X-Gm-Message-State: AOJu0YyDUZjP/1Bf+cdsuJRN8ttKLwIVMcc4ba55lAHqLNQTIl77bE6A
	74WQlmvSrFAD/EXBRXQnyO+dDNb366nlgBuKOggQrUzE5BimFqipvYdWd+2soic=
X-Google-Smtp-Source: AGHT+IGj4DUhd8pV8+1mduRvo0vDVwumXm4bICtrXZb7XCpM/RKei3IVsk5mGhfTZVB0zL0SL0HWtw==
X-Received: by 2002:a2e:9e15:0:b0:2ee:5a38:751a with SMTP id 38308e7fff4ca-2ee5e3759d8mr38050791fa.28.1719852559568;
        Mon, 01 Jul 2024 09:49:19 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af5b8e2sm161211505e9.16.2024.07.01.09.49.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 09:49:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: nuvoton: wpcm450: align LED and GPIO keys node name with bindings
Date: Mon,  1 Jul 2024 18:49:15 +0200
Message-ID: <20240701164915.577068-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect the LED and GPIO keys node names to follow certain
pattern, see dtbs_check warnings:

  nuvoton-wpcm450-supermicro-x9sci-ln4f.dtb: gpio-keys: 'uid' does not match any of the regexes: '^(button|event|key|switch|(button|event|key|switch)...

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../dts/nuvoton/nuvoton-wpcm450-supermicro-x9sci-ln4f.dts   | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-wpcm450-supermicro-x9sci-ln4f.dts b/arch/arm/boot/dts/nuvoton/nuvoton-wpcm450-supermicro-x9sci-ln4f.dts
index b78c116cbc18..edb907f740bf 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-wpcm450-supermicro-x9sci-ln4f.dts
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-wpcm450-supermicro-x9sci-ln4f.dts
@@ -34,7 +34,7 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&key_pins>;
 
-		uid {
+		button-uid {
 			label = "UID button";
 			linux,code = <KEY_HOME>;
 			gpios = <&gpio0 14 GPIO_ACTIVE_HIGH>;
@@ -46,12 +46,12 @@ gpio-leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&led_pins>;
 
-		uid {
+		led-uid {
 			label = "UID";
 			gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
 		};
 
-		heartbeat {
+		led-heartbeat {
 			label = "heartbeat";
 			gpios = <&gpio1 4 GPIO_ACTIVE_LOW>;
 		};
-- 
2.43.0


