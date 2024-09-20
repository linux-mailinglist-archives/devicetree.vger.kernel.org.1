Return-Path: <devicetree+bounces-104225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E3097DA61
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 23:59:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B8F78B221D5
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 21:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7765017DFE4;
	Fri, 20 Sep 2024 21:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QE26CvWc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B06F91420B6
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 21:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726869562; cv=none; b=DQz6HIEQ1nFcMhYQwWRxgki/GWKHBAq/Vy3oVoWmnX8DgmwQ+vKuNTKcaEXCz4t+UwiwuhyKwwkMT+Ra9eywIY5Wfp0ckUit1z2rih+4U889myUUbeLjwpxm9WRpOaEW0gQ4mnO8bD1WkBLguvvOkcFp7GbWgH7Wl1NymNCkRTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726869562; c=relaxed/simple;
	bh=l8UrMMl+XiCitGcSyZEyUnWFB/kx9++xvkTMEW+7fac=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=c3Nme7zPiwpTXXAgLk73ilIrEO5ZjI8xuKmQo3yjBkpg5dICxE1//Mf08UTStEmq/qbmtL7AY5PnW/Ysa1et4a/qghGiq1u+OeWc2AmDbHqzb44ZYjUvaoo0TSgQ3lPLHjbxmv0tOL7UQTFThl3qWN2HXkYn/C3YSBD5KqPVv1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QE26CvWc; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2f74e613a10so40135101fa.1
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 14:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726869559; x=1727474359; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VzPsbxlIe6IRbEbm5DY1ymWkQnjwtpeBnU1CWieHtFE=;
        b=QE26CvWcOHF7iWJOX+Qm8+BBELj/UA4WsbCS6rNmwOOaKuAazbtWYn4G6EcqaEdeLk
         3Tgtzne3jFE3qbUYMxnlZGSk8EtrJEjV61Wr8TUNccgU63k3ha4URUtUJNR3bB2SiYp0
         34DV/mB+TLOdsI+V4wGNMUBCGEPwCM/QEDlPsgTVpUo0Jz1tyRuzjl6ewtvZZAFjQrmD
         txUWs3/GRZ6+CkmJh6Mn29dCTcPAaGZmakS2EcyaYeZ4kcX4UCusz8xYvNmK3lVmhyj3
         5ny1rsYP5b6IDiMLy1cpIOxnSkSeErb89t7IVjPAzlqQqH1kTfHEjuAoRqorRHbFchYU
         ip/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726869559; x=1727474359;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VzPsbxlIe6IRbEbm5DY1ymWkQnjwtpeBnU1CWieHtFE=;
        b=t4xaMGeCJzAPBjKrTRt+fmWsnh9zLdmR1noBMOOZ67mlGyCyZ//emUSXSkrGhWrOBK
         fPtI/ps4W9ZGrI1+oyZv5MbbxkiQpE22deph1wOgFC/DQYbpjDbpyo6ApIAxZ20/HEpl
         pA6zWtAjLFNKFct02SwejDu2Mcvd03PzXsVN7H7SesdDmTes2Hdpkw2DECh8EtPT6QW/
         b4AJ692A1/gkmdo7GI3JnvI4Jnoj9xfWX26DFtdhYVtmnbp47wheUazBJdI7NUVojW3O
         JlOIG638vmKS3cWubPb/XRHWON6MFviFXgDv7WmJv2Mj3NKFb4gZuNGa3W7uBlvWrGke
         2AQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOu7yGjw3jIPFiiqAGFtLyIkrBQs1451GglkRZYlMog1cNe/svF1zW58wiTAQTl4thZvxpVBfTh2gm@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz9SyElnvihx6MSFQoUhOUPU9dm9fm4Wdj35++mr89RZPZ3RDo
	1Su/QGz4bDFAt0+I+/J5P6JvcGqUBsi6+E/dY8G/ypife8vu/sh92GD9wKKvWEo=
X-Google-Smtp-Source: AGHT+IH6SbCQEmEqRaiGipifz6PXrREBY/Ep5fUadn1XeA415QbsR2O46Rxq9QULzrKck/HpYpyc5w==
X-Received: by 2002:a2e:a546:0:b0:2f0:1a95:7106 with SMTP id 38308e7fff4ca-2f7cb36edaamr40852941fa.39.1726869558757;
        Fri, 20 Sep 2024 14:59:18 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90612b3a04sm900617766b.125.2024.09.20.14.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 14:59:17 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Sep 2024 23:59:06 +0200
Subject: [PATCH 4/4] leds: bcm63128: Add some register defines
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240920-bcm63138-leds-v1-4-c150871324a0@linaro.org>
References: <20240920-bcm63138-leds-v1-0-c150871324a0@linaro.org>
In-Reply-To: <20240920-bcm63138-leds-v1-0-c150871324a0@linaro.org>
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

The Powert LUT (Look-up Table) register base was missing, also
add the bit define for sending serial LED data in reverse order,
and use the BIT() macro to define the bits in the control
register.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/leds/blink/leds-bcm63138.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/leds/blink/leds-bcm63138.c b/drivers/leds/blink/leds-bcm63138.c
index bf170a5bb12a..7d9d970b2082 100644
--- a/drivers/leds/blink/leds-bcm63138.c
+++ b/drivers/leds/blink/leds-bcm63138.c
@@ -21,8 +21,9 @@
 #define BCM63138_LEDS_PER_REG				(32 / BCM63138_LED_BITS)	/* 8 */
 
 #define BCM63138_GLB_CTRL				0x00
-#define  BCM63138_GLB_CTRL_SERIAL_LED_DATA_PPOL		0x00000002
-#define  BCM63138_GLB_CTRL_SERIAL_LED_EN_POL		0x00000008
+#define  BCM63138_GLB_CTRL_SERIAL_LED_DATA_PPOL		BIT(1)
+#define  BCM63138_GLB_CTRL_SERIAL_LED_EN_POL		BIT(3)
+#define  BCM63138_GLB_CTRL_SERIAL_LED_MSB_FIRST		BIT(4)
 #define BCM63138_MASK					0x04
 #define BCM63138_HW_LED_EN				0x08
 #define BCM63138_SERIAL_LED_SHIFT_SEL			0x0c
@@ -35,6 +36,7 @@
 #define BCM63138_BRIGHT_CTRL3				0x28
 #define BCM63138_BRIGHT_CTRL4				0x2c
 #define BCM63138_POWER_LED_CFG				0x30
+#define BCM63138_POWER_LUT				0x34 /* -> b0 */
 #define BCM63138_HW_POLARITY				0xb4
 #define BCM63138_SW_DATA				0xb8
 #define BCM63138_SW_POLARITY				0xbc

-- 
2.46.0


