Return-Path: <devicetree+bounces-63829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C888B6B0B
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 09:04:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CA5B283A43
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 07:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBF7E2C683;
	Tue, 30 Apr 2024 07:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JwvfhrWV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E6A2A1C9
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 07:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714460636; cv=none; b=PTJuJF86ycIspnbWlntNJHTawqrfReFwvJK56sxXGNFczVLw7Ut54a0NLSbqLM7tsckV+m+UhcgMFBQfnYd7b+u1Ti2YTlTzUZoSk588QYMm1+w+SsyCDI68zVNzgxxEtkgh/SepLPnMr7XVuNo+QenVIvfMI1e0EEGVfiOUQtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714460636; c=relaxed/simple;
	bh=OdoW269dMYChy3+DU+KNyzjUhldkA+9Km5hn1NUmvnI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CIZ4qaVypOwp2OX1SLx/6NKuPYtq5d+rEz6eR9GtXQNN9LINwgGmQs7cnLBdHu+dqmfkHYrCp40lJy2NHMQEkj1MNJuFzoeEM3jOnkn3jpRuHstbM2xx6MpM8ZAiL3Dd3uAzqODYo2GpAxZxcjGfzs2INmirUPRnQb949t4CBcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JwvfhrWV; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-61bed5ce32fso1602357b3.2
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 00:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714460634; x=1715065434; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h0ixy7fv19ExAcreEswXg94DycLU86SeU2ojNLlxijk=;
        b=JwvfhrWVnLdHAtBPIoJ4h+1feKPUE6bgM1Bu+LTzh/Pd3QHdYMS3Y2Y1u5srHRxE0s
         XqJNaFDS25aHZEjP6OB8Iyg+6UhpIxB7LnfKQu7r1vrJCGrdObRZFebKm60uMYY6Nx0w
         Ly3WCu4ra6dVdlMsXnMRjNWAIDtI24oAoA0rQVea1fqnFI1p+iUzTupzFjvSEU7TTig2
         x6WXgKqZ6VqYq9FrYG++53Y8GRhV998H99lLAKqGfRrVJN7SVU27PaKqTz9UXhQKW7nH
         f2OP1opO0xUiTWeWmhbJ7otVPgAJSlCVrACK3aBYHPKs7MJNAFmPXU8psn5tkTBj4kAe
         z5pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714460634; x=1715065434;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h0ixy7fv19ExAcreEswXg94DycLU86SeU2ojNLlxijk=;
        b=XpCUen+j6L8M9YhV0zPA4s1ASnFmgKxOw+GNorvOcETSrHq5uw+ZysZWsPuX/7AP7l
         t4AagVModNyNxn2wbtnvoELFNbZs7uugE/uGHD0WDwHZCkSBlioF1v5PYCBbKY9UQ8wG
         066E035vQsQdIVW8GdfbIL3gYwPe2iD8YZAdpLBpnxcI/U7fM/Hy/3gjVq9IF+hKsvin
         I/G2sNpElbDSp+zVuNK2ogfYVLwEtOZIwGCbEwhyr7NupqAM1VWVV04qTPwUFaMxwIkq
         ZStdMrY0RpthWGdzlGPRM/SZicIa1nauOO9CBwDOR4Fbk/egC+JpsxNotHSZ6u8clg3/
         FJFw==
X-Forwarded-Encrypted: i=1; AJvYcCUS5Xl2n8UckUEQGy3BaaIanh/epuq+3hgPavDgr2H+1sqMKomqpSWSR9Ukl1OMeU5KXh+FrOvnenRoeQLdcDvf2reguNDv4Iq9EQ==
X-Gm-Message-State: AOJu0YypTpnw7z462VNLWK+krB/ygt5TJ2h/HEb9Djl2P1jF75QrwYmT
	unhFc2r1mqnedUprRaIsmMyK/lPhyu++CAcfF2Izi8448VHurnS0F2WwEQ08bIk=
X-Google-Smtp-Source: AGHT+IFhrTYVyGAxSgGpphlVFdD7358nVt142kj/csynXWwvRVabPFRJKNRP1Kglb24GmrH2zD4MsQ==
X-Received: by 2002:a05:690c:e:b0:61a:d2a0:5497 with SMTP id bc14-20020a05690c000e00b0061ad2a05497mr14316415ywb.8.1714460634450;
        Tue, 30 Apr 2024 00:03:54 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id z11-20020a05622a124b00b00437b4048972sm10610674qtx.18.2024.04.30.00.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 00:03:53 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 30 Apr 2024 09:03:47 +0200
Subject: [PATCH 1/3] ARM: spitz: Convert Spitz board to GPIO descriptors
 for LEDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240430-gpio-leds-miscarm-v1-1-9c94d7711f6c@linaro.org>
References: <20240430-gpio-leds-miscarm-v1-0-9c94d7711f6c@linaro.org>
In-Reply-To: <20240430-gpio-leds-miscarm-v1-0-9c94d7711f6c@linaro.org>
To: Daniel Mack <daniel@zonque.org>, 
 Haojian Zhuang <haojian.zhuang@gmail.com>, 
 Robert Jarzmik <robert.jarzmik@free.fr>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.13.0

This makes the LEDs on the PXA Spitz board use GPIO
descriptors instead of hardcoded GPIOs from the global
numberspace.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/mach-pxa/spitz.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-pxa/spitz.c b/arch/arm/mach-pxa/spitz.c
index cc691b199429..36aec5ea7218 100644
--- a/arch/arm/mach-pxa/spitz.c
+++ b/arch/arm/mach-pxa/spitz.c
@@ -456,12 +456,21 @@ static struct gpio_led spitz_gpio_leds[] = {
 	{
 		.name			= "spitz:amber:charge",
 		.default_trigger	= "sharpsl-charge",
-		.gpio			= SPITZ_GPIO_LED_ORANGE,
 	},
 	{
 		.name			= "spitz:green:hddactivity",
 		.default_trigger	= "disk-activity",
-		.gpio			= SPITZ_GPIO_LED_GREEN,
+	},
+};
+
+static struct gpiod_lookup_table spitz_gpio_leds_table = {
+	.dev_id = "leds-gpio",
+	.table = {
+		GPIO_LOOKUP_IDX("gpio-pxa", SPITZ_GPIO_LED_ORANGE, NULL,
+				0, GPIO_ACTIVE_HIGH),
+		GPIO_LOOKUP_IDX("gpio-pxa", SPITZ_GPIO_LED_GREEN, NULL,
+				1, GPIO_ACTIVE_HIGH),
+		{ },
 	},
 };
 
@@ -480,6 +489,7 @@ static struct platform_device spitz_led_device = {
 
 static void __init spitz_leds_init(void)
 {
+	gpiod_add_lookup_table(&spitz_gpio_leds_table);
 	platform_device_register(&spitz_led_device);
 }
 #else

-- 
2.44.0


