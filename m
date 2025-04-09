Return-Path: <devicetree+bounces-165023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A004A8326C
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:39:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 052AE44526F
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C822B21CC4E;
	Wed,  9 Apr 2025 20:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gWIUrwjA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B93FA2135DD
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231068; cv=none; b=AEtgMJlMdCKEKiUWLYDurars4XeIpDQ5nmv3VraDV1/JlVunUYjsEvhhb9z66X81FNsKGnIzdcdlemopYdoP5D1lLQvZwMCcXP+o+7pRXTnjzCxpqxi+UimX8HkKZkV0x61pF172wSZn1ZQqxemMkW7D9t5g2ZAQ5/s9/gAhVps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231068; c=relaxed/simple;
	bh=r6smFZgsyvYKwLnUW3VFAaGUFxxCp3IhW+h05mnaA0c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CK4JrQZGKGAr48xG/7FyEStZuEayT50Ay/DQUZZ2+DckGL2rHyJF6DmFdzBGOpWRKckeT71oaPHKpqFvQqo8Jsy4aJKplJPQPCdRUgwLht77pyEFRNriW9aKjZVWUgZzVV+n8r5OMzGIdWDH9q7tzPUDgZBXcZ8Y6+MlNPsVSqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gWIUrwjA; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e5e34f4e89so231472a12.1
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231057; x=1744835857; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kmSrMGoeJhjCv4GCZAjjQS+ND2LDsdDEjRLwJnkiGJQ=;
        b=gWIUrwjASdtltdfEBAW8Gc0UbwhKZibQyKOFqrVRc0G4OTmvtS3DJXkzdLSpksXob1
         morXzSgUfvjaeb53skdUmtdqGyKNxFXrrg6Kj2P+jGpiOQJiRLu9Y5s97TkyEHxr852j
         ZoOc9b+88U7fER2AxNR+/8W0QpPmsqSU2rIvAIOzbdarQeii+oH2hE51yN/LRkbBJ0Bd
         2OZjBauC4P1M3kiHk0KdRBHvvhamyQXyoV19/6Qyr5Pi4Or2l/KctJQt7omZxqFJt6ox
         j41MCjdarcDbjphcaCjm5nuCfMJZsuBiXG8fUZucgAN6xGOcs5+uBfH7ls9R/LtQEGdj
         Fdjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231057; x=1744835857;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kmSrMGoeJhjCv4GCZAjjQS+ND2LDsdDEjRLwJnkiGJQ=;
        b=YhBrmOY9ez3+oEZvbV3TA0d0sgvvMV5OFhMbcvqgd9DWZ1oy3mNsLghNL70HTOm8CQ
         Vd8xl2C229eq9TT9CrwdYUDdHjwGFuffekM62rc10J69QW1LvM/qbtr+hzNZFvx77qi5
         6Q/fgyNQCrQHtoB28HyYHucf5v9exZ9xLnBbUC0duVosR7D/By7j/tADapqf1Wrr7aA7
         S5RYIGB8vsZx6Z+7dGAZZQv9M2Eo/hzxTz645fSffh4c3pQbg1FPuRRDBI+1IrC/kqAo
         +KhVQt3U5LB470/YESw2Qt1TNLbxXz18ycFY5NKrEtLIIgYC7uHsHTweCO83eZum5kr5
         YnbQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSwO1iPPTgvl2IXcSlcHX4xavLnZH4KG7J1quPJ7+vu7vX8H405ucJS0p/t+kg30pzkyBw6v3/0QBW@vger.kernel.org
X-Gm-Message-State: AOJu0YwfUguJknMjvyj2lFiJvmkMSQ2NU1xDB3RYCOEM1RDs9A+xPWne
	wKjUjFYtkHSt8KlOT47Yiks1UG3+QIkZ+TAcEhZpBypujV4rAssUvO3WdVpF5Fw=
X-Gm-Gg: ASbGncsBoS+8nI7easP0aPLliEcwSbuMZ8DC1Ewd6C94H0SdQlJScDs6/V2mDjh7Ab+
	/4TYrDvOxQ+AkKmEDhAqCsjO8o6eUgH4ttCYHo5OfIcEOfPPyCA0AvfC9aiFICQwNblnDiSRuLx
	klTP+6nJLRRufbwonUOgriQPlqmRNVWBVz5JVLJu/8bbzOdJUJ+N6cbcXacSJmKt2C4PG3/cgLg
	tyTyKCShpAzJ2Z5UXWkNARnwZp5iG/+SW4nsI7/JREOVvjuDF98luV0uZrh+5mjxA4R11Vx5fyB
	l7ruXjureYh2zxs+UkLZn76zeUEz+gZlfkgGAzCwVZlYGZRHdX9GWxl8/ldz+GG5q4Wl1XhymOY
	iyfrpjI/wd/7YrUCeZszVR7pCIgbpEfP4ObnTJw==
X-Google-Smtp-Source: AGHT+IEguQmAOmJYZ1+smy8DhSOYym4o75iF/puDiUuMJfxajIedLWJgLrYqcjqdKMU+je2OXAl/OA==
X-Received: by 2002:a17:907:968b:b0:abf:7453:1f1a with SMTP id a640c23a62f3a-acabd2594d9mr9093966b.36.1744231057321;
        Wed, 09 Apr 2025 13:37:37 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:36 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:36 +0100
Subject: [PATCH v4 15/32] mfd: sec-irq: s2dos05 doesn't support interrupts
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-15-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
In-Reply-To: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

The commit bf231e5febcf ("mfd: sec-core: Add support for the Samsung
s2dos05") adding s2dos05 support didn't add anything related to IRQ
support, so I assume this works without IRQs.

Rather than printing a warning message in sec_irq_init() due to the
missing IRQ number, or returning an error due to a missing irq chip
regmap, just return early explicitly.

This will become particularly important once errors from sec_irq_init()
aren't ignored anymore in an upcoming patch and helps the reader of
this code while reasoning about what the intention might be here.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-irq.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/mfd/sec-irq.c b/drivers/mfd/sec-irq.c
index 340f5f14eba3fad3b25935803dd33e91f7ec6629..79b4f74b05a24e413a84ff8c0b16156a828310e5 100644
--- a/drivers/mfd/sec-irq.c
+++ b/drivers/mfd/sec-irq.c
@@ -452,16 +452,12 @@ int sec_irq_init(struct sec_pmic_dev *sec_pmic)
 	int type = sec_pmic->device_type;
 	const struct regmap_irq_chip *sec_irq_chip;
 
-	if (!sec_pmic->irq) {
-		dev_warn(sec_pmic->dev,
-			 "No interrupt specified, no interrupts\n");
-		return 0;
-	}
-
 	switch (type) {
 	case S5M8767X:
 		sec_irq_chip = &s5m8767_irq_chip;
 		break;
+	case S2DOS05:
+		return 0;
 	case S2MPA01:
 		sec_irq_chip = &s2mps14_irq_chip;
 		break;
@@ -492,6 +488,12 @@ int sec_irq_init(struct sec_pmic_dev *sec_pmic)
 				     sec_pmic->device_type);
 	}
 
+	if (!sec_pmic->irq) {
+		dev_warn(sec_pmic->dev,
+			 "No interrupt specified, no interrupts\n");
+		return 0;
+	}
+
 	ret = devm_regmap_add_irq_chip(sec_pmic->dev, sec_pmic->regmap_pmic,
 				       sec_pmic->irq, IRQF_ONESHOT,
 				       0, sec_irq_chip, &sec_pmic->irq_data);

-- 
2.49.0.604.gff1f9ca942-goog


