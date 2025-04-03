Return-Path: <devicetree+bounces-162854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4422BA79F65
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 11:03:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 249E8175688
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 09:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6697D24E004;
	Thu,  3 Apr 2025 08:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MK9oQ5Ll"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E065C24166A
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670767; cv=none; b=njGyi9F9kwF3qdcgmKUVfL0BPyaMcrd1c+OXdSBVf8cB9bg72tu4qENhvhqW7UpHesvQFALVssMKtC8ISeF2PhDr0zirv30zqpJuT8j36N64dxUI0DP+rBsvodZjyyY1zUUlxuSD8zUWm/157zjO1UrNoY7u16aJunybIs2LTxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670767; c=relaxed/simple;
	bh=XY+ty2A6DQsXp5psWmWSxlDWQ8KjYhDNZ4NRtatMswk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qZLnFEikqU/2FL9gb8F0AW1BZj0jl1K7NFQT7yVQAK1IMr7TI38QVf3ELATSYvwl9mRhdF3sTbXVm2iJQNNBUsK6/qMMPz9bfLScet6ZBB6saybNZ3WU8J3nDI3/LsV/Fhm0nm0NrHhfTBINLCPB0d/OopirFPfxs+glli+Y+0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MK9oQ5Ll; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-abec8b750ebso106540566b.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670756; x=1744275556; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZwiQ684ZfeWSIriRYeiGWHceehqqEuabrmdfgVRjbUU=;
        b=MK9oQ5LlNoFVd/eiMrTIFte5DX5KBItDdT5nwdslQOV0d74+Rv6+RE8WRrGV1zk/MV
         fUWV+fldEyWoycNJF1zNTQEOHIKPcfQShWUfdd/4lSVIUBAQsN8MB9WMqq3MxOIoixcw
         E3sK899aMCyIENr4RWnal14aRubHIRzVFsP+mwIGeE+7FNnOm3+yvVDmcebmOrB29fxj
         gwegwC857GTWxfjk78BTXuZuqUeOW0y6aFFbao+Jb/BDZIh8MnUUX5T0PUKvSPigU3Nh
         pKcMGmktO+m6HLrf3ujS2hbuaUmQFOz1L5Am8GBtIpYyjzkqUNNDsp9PjKEl8fQQH1SI
         A6RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670756; x=1744275556;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZwiQ684ZfeWSIriRYeiGWHceehqqEuabrmdfgVRjbUU=;
        b=Ix6lr6jm95bi88Ev+YaiVypZ1Bc3j6ZX2bvxwGkfQ2yd6R7B5jnQev9ONrBUuvv6r7
         ZqFJaFFI7ATd9vM3wxEexWJIZth+SoAIbvpMztr7yPBx1Ud5hp2JZCmBoJ1sneCDQV03
         dCMb17PqgjF1RLoP8csWriwPADQgmoQNC/HMkhx5NOymNz5RCNzKtMf6X4eBMWOD2F1Z
         jF+fphZf6si5ZWrlZdfPhn8m7fNZ3m1yNmCBxVoWPfHnB92McD5lWkzvkg81EJCwOhVS
         NCPwm6QKL6rdgTytmHrUCr4CvjPXjiXHRFUw1X0nJDuk1BYo1CdjP0Sx3DhijHRRqewB
         ITXA==
X-Forwarded-Encrypted: i=1; AJvYcCXRp9LvmRnNAsoEJ0OG4TnsGitfJGIQuXrT71KZliWp5LonH7wLvnCvex89Ha5hUrtEFr3l/ZdnD8WX@vger.kernel.org
X-Gm-Message-State: AOJu0YxBaTsSAZFwKqFiB53r+J+FwPj3/Q52W9O/q7Rd/S3fUqNPs9XW
	nvYHp5DVRnnUZ5LDjGWB9Jfihi/V3b5FK2O0kkNL12lnSxlxFU57iuiO6VKOIPo=
X-Gm-Gg: ASbGncunfAqQlovvEvNl0KTMcYf9fVkIBwHCS77SNQBt0+uVfjCKsfcmPyjytkgX/EB
	IWE6MT5WoambKDC1TV8dHqQc5PxzWB2HS53DyJPW7hWleY0O7abTOXx14juxVqRhflRbz7JT85u
	ELqNtMBYlSBT1Q5DHcl63ZlFzJeClBiQhlHgWYQl+wC41mcLPUi4Xs+YOqDpLkIiVP9LKnMJKob
	pL8ZKE/4KDn0QJ/8XN5o1BhFW+Ch9b5ihd8fN+g2nyKohm17CWYv72jcjO50pJma8R0KVaV3GnP
	63pI6833EDxn3VOdT2QkQTj6mGYV4UkaJbBEhhdPLmhe/1RfLpD0Z11+27aRRvhTovQ0LlOI0FZ
	w2Di8FgJFi2brskadPpZoZfQasaDY
X-Google-Smtp-Source: AGHT+IGxqvs9WDVLgnZbd0Q1P61p74Sjm20wNP22/EBrrIOH4ecB3274nitjn+0Tvp+BuQBO2JC0vA==
X-Received: by 2002:a17:907:c23:b0:ac3:8895:8e99 with SMTP id a640c23a62f3a-ac7a165e83fmr473122266b.3.1743670756231;
        Thu, 03 Apr 2025 01:59:16 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.59.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:59:15 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:59:18 +0100
Subject: [PATCH v3 26/32] rtc: s5m: prepare for external regmap
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-26-b542b3505e68@linaro.org>
References: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
In-Reply-To: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The Samsung S2MPG10 PMIC is not connected via I2C as this driver
assumes, hence this driver's current approach of creating an I2C-based
regmap doesn't work for it, and this driver should use the regmap
provided by the parent (core) driver instead for that PMIC.

To prepare this driver for s2mpg support, restructure the code to only
create a regmap if one isn't provided by the parent.

No functional changes, since the parent doesn't provide a regmap for
any of the PMICs currently supported by this driver. Having this change
separate will simply make the addition of S2MPG10 support more
self-contained, without additional restructuring.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/rtc/rtc-s5m.c | 81 ++++++++++++++++++++++++++++-----------------------
 1 file changed, 45 insertions(+), 36 deletions(-)

diff --git a/drivers/rtc/rtc-s5m.c b/drivers/rtc/rtc-s5m.c
index 53c76b0e4253a9ba225c3c723d35d9182d071607..86ccf666c68059408907c97f2647716ffaad10c6 100644
--- a/drivers/rtc/rtc-s5m.c
+++ b/drivers/rtc/rtc-s5m.c
@@ -640,52 +640,61 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 	const struct platform_device_id	* const id =
 		platform_get_device_id(pdev);
 	struct s5m_rtc_info *info;
-	struct i2c_client *i2c;
-	const struct regmap_config *regmap_cfg;
 	int ret, alarm_irq;
 
 	info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 	if (!info)
 		return -ENOMEM;
 
-	switch (id->driver_data) {
-	case S2MPS15X:
-		regmap_cfg = &s2mps14_rtc_regmap_config;
-		info->regs = &s2mps15_rtc_regs;
-		alarm_irq = S2MPS14_IRQ_RTCA0;
-		break;
-	case S2MPS14X:
-		regmap_cfg = &s2mps14_rtc_regmap_config;
-		info->regs = &s2mps14_rtc_regs;
-		alarm_irq = S2MPS14_IRQ_RTCA0;
-		break;
-	case S2MPS13X:
-		regmap_cfg = &s2mps14_rtc_regmap_config;
-		info->regs = &s2mps13_rtc_regs;
-		alarm_irq = S2MPS14_IRQ_RTCA0;
-		break;
-	case S5M8767X:
-		regmap_cfg = &s5m_rtc_regmap_config;
-		info->regs = &s5m_rtc_regs;
-		alarm_irq = S5M8767_IRQ_RTCA1;
-		break;
-	default:
+	info->regmap = dev_get_regmap(pdev->dev.parent, "rtc");
+	if (!info->regmap) {
+		const struct regmap_config *regmap_cfg;
+		struct i2c_client *i2c;
+
+		switch (id->driver_data) {
+		case S2MPS15X:
+			regmap_cfg = &s2mps14_rtc_regmap_config;
+			info->regs = &s2mps15_rtc_regs;
+			alarm_irq = S2MPS14_IRQ_RTCA0;
+			break;
+		case S2MPS14X:
+			regmap_cfg = &s2mps14_rtc_regmap_config;
+			info->regs = &s2mps14_rtc_regs;
+			alarm_irq = S2MPS14_IRQ_RTCA0;
+			break;
+		case S2MPS13X:
+			regmap_cfg = &s2mps14_rtc_regmap_config;
+			info->regs = &s2mps13_rtc_regs;
+			alarm_irq = S2MPS14_IRQ_RTCA0;
+			break;
+		case S5M8767X:
+			regmap_cfg = &s5m_rtc_regmap_config;
+			info->regs = &s5m_rtc_regs;
+			alarm_irq = S5M8767_IRQ_RTCA1;
+			break;
+		default:
+			return dev_err_probe(&pdev->dev, -ENODEV,
+					     "Unsupported device type %lu\n",
+					     id->driver_data);
+		}
+
+		i2c = devm_i2c_new_dummy_device(&pdev->dev,
+						s5m87xx->i2c->adapter,
+						RTC_I2C_ADDR);
+		if (IS_ERR(i2c))
+			return dev_err_probe(&pdev->dev, PTR_ERR(i2c),
+					     "Failed to allocate I2C\n");
+
+		info->regmap = devm_regmap_init_i2c(i2c, regmap_cfg);
+		if (IS_ERR(info->regmap))
+			return dev_err_probe(&pdev->dev, PTR_ERR(info->regmap),
+					     "Failed to allocate regmap\n");
+	} else {
 		return dev_err_probe(&pdev->dev, -ENODEV,
-				     "Device type %lu is not supported by RTC driver\n",
+				     "Unsupported device type %lu\n",
 				     id->driver_data);
 	}
 
-	i2c = devm_i2c_new_dummy_device(&pdev->dev, s5m87xx->i2c->adapter,
-					RTC_I2C_ADDR);
-	if (IS_ERR(i2c))
-		return dev_err_probe(&pdev->dev, PTR_ERR(i2c),
-				     "Failed to allocate I2C for RTC\n");
-
-	info->regmap = devm_regmap_init_i2c(i2c, regmap_cfg);
-	if (IS_ERR(info->regmap))
-		return dev_err_probe(&pdev->dev, PTR_ERR(info->regmap),
-				     "Failed to allocate RTC register map\n");
-
 	info->dev = &pdev->dev;
 	info->s5m87xx = s5m87xx;
 	info->device_type = id->driver_data;

-- 
2.49.0.472.ge94155a9ec-goog


