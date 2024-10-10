Return-Path: <devicetree+bounces-109942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A029988EC
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 16:13:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B8FC5B2C0D1
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 14:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64B491CB324;
	Thu, 10 Oct 2024 14:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ns7e+oNM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7A951CB328
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 14:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728569468; cv=none; b=ZjUvYf2T9dN5/VpaG0IY3qZx/t9UBVKkGx/MrUoEG9FcZcpYa6UsZxG3ZIeTUhnL3MvyeGbtM7/5pqELZac2OfsLR0OxRXzPcn2z0REoZg1VQSb2z3g+nH76c1wGj44rChKLfGVsDzqk8BL7+nUFaHHDvK7jSvhqx+HzvtEZ0gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728569468; c=relaxed/simple;
	bh=WusKKE0s/C250H6Ic+WHqBCTzkX5UUtA/Dz8FhleAm0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J1tR/iLsoyKfChQwVcNDeX1BcuJD/in+v/Gzhs7pgDYs80FRPMprSs7PVKxV4DHSanHTs3f8oUGTsdhv45zMw6GTEFgTIynOhMzurD3D9Baui2iXayCrrDNAg1+/F11479KzPA475s4FYyp1frwiNOylHYbEQRtKbjS32NfO/3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ns7e+oNM; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a999521d0c3so164680366b.1
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 07:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728569464; x=1729174264; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7gIA9KyLtGspfj/GVuihkBjQsPxtJlRt1YBA5ISw3Cw=;
        b=ns7e+oNMTc56qi6ENkdhMoLU7Bp1glGbdBsQixQ3bs4xFaiOjxNii8RPQfIJm261tB
         nEFV9xMSbq91s0fM/9fCAYlUdyE5MWeYy78NwU9zQlae1w391cAlUkep8I2uHc9D6F0s
         9Bur8F4SaN1grhdXml5Rb9R/gcrcQeQcduNOiEyGXK6Ai0HhSmirkwWhJgTCLRKuPDuk
         OzaE/TFkdabRDONiiDO81eXGzWr2vLQea23lMTF7HqGBZ5/oe3fXjtCPVj7aN2/1Ua9J
         1c9gOavRnAm2sYTEjApsr/nPfC5h2sojCerF+hIAbllKiazNwGkBZp5tX3I4xOWWT/C1
         x8VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728569464; x=1729174264;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7gIA9KyLtGspfj/GVuihkBjQsPxtJlRt1YBA5ISw3Cw=;
        b=LsIdBmWrLKlL3h3QCWXKbKjW9WAwo7AIo9f9m6IuBRamrZryF68T2N69buSf5BLf/3
         JWHh7q6SUQhjlj1Myd2XfoMSC1+eAg5EfZcexJEzo6f/mgpISEXJ4DxHkYzkpVqA1dSo
         zp6KUoBFV6v/zbak90WlMUFUgcP2CwcgqLxTIaD87wXgWHR47uG2VvKnjmlE3+krNi5Z
         mUnbi68ikEnGcUhF6tllQvu0y/YM/qW3GOoqrFTxeDCHXzIhcmdqnE7md+lmheiWBsei
         Ct4E+Klm7wGtVgBGGKz07zCcj7yDQNQyt4pBbgQnYH6sP3KjHBvoIVJ/Vxt1WAag0o/q
         i4MA==
X-Forwarded-Encrypted: i=1; AJvYcCXKUtwy/WKWQahgqNklp2afqSvb+r2PnCx8K0XYxLKk1i4jyYl/PPBP0jO999IV7+AOw3hJoVgeSf26@vger.kernel.org
X-Gm-Message-State: AOJu0YxbJVKy7Ay7sY4FpLFpqCSZK4Ok6GTY25u3nKzjL3jljBGzMSXY
	sxNiCKHZMCuyWsI0ENHLlg9fjJ67CWawMQMxZo3I0OlbZVelACLh18Fo2Erxo3wXjbNRAtrm0Ux
	S
X-Google-Smtp-Source: AGHT+IGDCy3FxI2wv1M4R8UM4BESWGps4XkzOFyCV8pwYF+qefWgWfkdQDDKuAV5rg1LwB5szYVh9A==
X-Received: by 2002:a17:907:c05:b0:a99:7bc0:bca9 with SMTP id a640c23a62f3a-a998d11f6bemr556191866b.3.1728569464224;
        Thu, 10 Oct 2024 07:11:04 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a7ec5704sm94540866b.23.2024.10.10.07.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 07:11:02 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 10 Oct 2024 16:10:53 +0200
Subject: [PATCH v4 4/4] leds: bcm63138: Add some register defines
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241010-bcm63138-leds-v4-4-cdb80780a555@linaro.org>
References: <20241010-bcm63138-leds-v4-0-cdb80780a555@linaro.org>
In-Reply-To: <20241010-bcm63138-leds-v4-0-cdb80780a555@linaro.org>
To: Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

The Power LUT (Look-up Table) register base was missing, also
add the bit define for sending serial LED data in reverse order,
and use the BIT() macro to define the bits in the control
register.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v3->v4:
- Add define for BCM63138_GLB_CTRL_SERIAL_LED_CLK_POL
- Rename the BCM63138_POWER_LUT to BCM63138_POWER_LUT_BASE0
---
 drivers/leds/blink/leds-bcm63138.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/leds/blink/leds-bcm63138.c b/drivers/leds/blink/leds-bcm63138.c
index 9fe1af156c80..ef2e511438cc 100644
--- a/drivers/leds/blink/leds-bcm63138.c
+++ b/drivers/leds/blink/leds-bcm63138.c
@@ -21,8 +21,10 @@
 #define BCM63138_LEDS_PER_REG				(32 / BCM63138_LED_BITS)	/* 8 */
 
 #define BCM63138_GLB_CTRL				0x00
-#define  BCM63138_GLB_CTRL_SERIAL_LED_DATA_PPOL		0x00000002
-#define  BCM63138_GLB_CTRL_SERIAL_LED_EN_POL		0x00000008
+#define  BCM63138_GLB_CTRL_SERIAL_LED_DATA_PPOL		BIT(1)
+#define  BCM63138_GLB_CTRL_SERIAL_LED_CLK_POL		BIT(2)
+#define  BCM63138_GLB_CTRL_SERIAL_LED_EN_POL		BIT(3)
+#define  BCM63138_GLB_CTRL_SERIAL_LED_MSB_FIRST		BIT(4)
 #define BCM63138_MASK					0x04
 #define BCM63138_HW_LED_EN				0x08
 #define BCM63138_SERIAL_LED_SHIFT_SEL			0x0c
@@ -35,6 +37,7 @@
 #define BCM63138_BRIGHT_CTRL3				0x28
 #define BCM63138_BRIGHT_CTRL4				0x2c
 #define BCM63138_POWER_LED_CFG				0x30
+#define BCM63138_POWER_LUT_BASE0			0x34 /* -> b0 */
 #define BCM63138_HW_POLARITY				0xb4
 #define BCM63138_SW_DATA				0xb8
 #define BCM63138_SW_POLARITY				0xbc

-- 
2.46.2


