Return-Path: <devicetree+bounces-165037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B02BA83261
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:39:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0CDFE1B62FAC
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:39:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97B2821C192;
	Wed,  9 Apr 2025 20:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QYT5EXN8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D4421C9F2
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231077; cv=none; b=Ch1Pidw7VNMj89BQf+RmexluyiWugFnJ+rvjGuY4ICZ1G/dEp53TdVXpSyzjlT/Kudv0KPg2373a0IJgiVeno3otQJ2rNMAhkdzOK8aaCk0HHsotoeXvHLURx4ZFoZOwKgPi4W+XV56pXqc1eYd+0dEfMaTWEf/NTp4WKMF40uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231077; c=relaxed/simple;
	bh=QZqp12Gpl5oL/WfKhx+VRQRqmvJcvISjDOsh/fCNvMg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VKuyfb9lW7CCNnopGMNcDH1l2fvndNpS+Kl5MnMCimMNx7QxxdN7inQkavqnvgzP/HKI5+Ret17AsZOAEi2GX+yK3qnsENnaUivPGqkGdDs0E8Gu6TOa6Grxu4A4VunDjcSGVAHvPfInUAdhXPw9BekCIaPeqb+1bSZ3V3XYG0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QYT5EXN8; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5e6c18e2c7dso204983a12.3
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231063; x=1744835863; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=10AZOLwAO1V0GSmGNS0bnbti04nTAWbZ/3NrDOuj7Tg=;
        b=QYT5EXN8rbmA8ypL1EZ3hUBUeQtgHZW/D7u1yIbNm9+xvNo4UgPXqU6JIdTOkpE7RL
         DezODl4X/Vig++YMhOh5fne6xkNqAlGhLvXPVvTJrHAdf6NopyROQ6wg3+G+bV3uLEub
         N97qDnvvYMkd7RABHfsnGKctvQ0j4aGMA1e+l3a9H4YaEsNWApSQn9PsGabXhPrIHYRX
         Si7kMpYonb1h/+h7lb0WU7tLjmjS/UPT9l9Op6rV8IQRQttZEFi6VI/OLI++TacgDuiT
         qo8oEiIrqpE0XB4SAdBRpcGTaGE+hCt7h5Ub//dwdXS7+wYb/G7W1gpOi5t6jKhDcDe2
         NgBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231063; x=1744835863;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=10AZOLwAO1V0GSmGNS0bnbti04nTAWbZ/3NrDOuj7Tg=;
        b=GwDxkp75sSfOrIJVzZNOEwQFHEXAfNSewT4TDEG3nf4oQdE0hGOITH1FKmZwlppuuR
         aRmGn5v07EjZqNqg10yrn+uJJcNEFBim40v10Wz7RM2NmzNL7N0mUk+acOpXp41jvi8r
         3b7paNq0vFzIwRpcOAjdWwDYtrXJ1m2cy97utMjMdAU4S/h2ciE1/Q/3c25EONQOTHLW
         ZkPzkTf4E8aRExNmo3hKKpPPjCQhRDSmgG04jedU8QpXRSmoLSjmUJrIopK4nVIQsKNR
         Yj7ueV74sQSwxBF5av5c/scwekjT13ul0nV/MUD4PPFf/HawYLIBa+3qTsBdZifS6XVw
         ZZvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJOkr1GrvpZnwbDY7mtudFlmjyLBeF6Mcczh+2Mf1qVqfGxCd1GnTmJQjgo15zkIzuwIJMXXcnQEc8@vger.kernel.org
X-Gm-Message-State: AOJu0YzJSdBnGw/fDXsJXgLeEzXLiCPOMM+Xg0yms3GnchDJYrFjdROq
	RsBRuGB4mCe9DCo9eJntpHuI0ZqBSOAFpdgCP/nsfvWsot9DEyeZUuqs5wpxSdo=
X-Gm-Gg: ASbGnct9FI4e1Et9cH2WK6JW6HRCnXnTYAcSuxtnTolmbVlQOFH4MmsR0vM5y9Y4oyg
	9W2V/sYGKHsj5lvujxgM8CUTICnVZSuAD9QHeR33lph5wNTJgWATp/9BZqAeUibhxGet397uE4T
	MekaHTc4Cg3s5F/89EVs8aSSwCJh2B2t1GuI4pqBwYpJmpeFKaUYDgwC4l/6+yipdkM5fojJdqg
	zTvH65XIv+O7B9hmobwvt/rysZPSNAl4wCW/ummKNtzjTNoGkwpVAxVwIfOOhcAo6LT6wPoQB8F
	4ySBKibagp6uky52LzDJHY/1WVWM/fXzEXemrfi4XfPq8fdC1hzyYzGvgIlZpb7eZfMhx1hrd04
	9wrYXZcdPAUcLtfHdCdW3VC/Z8jw=
X-Google-Smtp-Source: AGHT+IFUTssASe24CO9TPtl71HAttAgy9US9arxRXimezJ/dltcAvjXzhwFcY2meWd733DjD83/qUg==
X-Received: by 2002:a17:907:980a:b0:abf:6ec7:65e9 with SMTP id a640c23a62f3a-acabd3ac9bemr9253366b.43.1744231062911;
        Wed, 09 Apr 2025 13:37:42 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:42 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:47 +0100
Subject: [PATCH v4 26/32] rtc: s5m: prepare for external regmap
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-26-d66d5f39b6bf@linaro.org>
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/rtc/rtc-s5m.c | 81 ++++++++++++++++++++++++++++-----------------------
 1 file changed, 45 insertions(+), 36 deletions(-)

diff --git a/drivers/rtc/rtc-s5m.c b/drivers/rtc/rtc-s5m.c
index c7636738b797b8087a0ed6844df62d47427e33b8..f8abcdee8611d1181fb575aeb8d094360538ca7e 100644
--- a/drivers/rtc/rtc-s5m.c
+++ b/drivers/rtc/rtc-s5m.c
@@ -640,52 +640,61 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 	enum sec_device_type device_type =
 		platform_get_device_id(pdev)->driver_data;
 	struct s5m_rtc_info *info;
-	struct i2c_client *i2c;
-	const struct regmap_config *regmap_cfg;
 	int ret, alarm_irq;
 
 	info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 	if (!info)
 		return -ENOMEM;
 
-	switch (device_type) {
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
+		switch (device_type) {
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
+					     "Unsupported device type %d\n",
+					     device_type);
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
-				     "Device type %d is not supported by RTC driver\n",
+				     "Unsupported device type %d\n",
 				     device_type);
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
 	info->device_type = device_type;

-- 
2.49.0.604.gff1f9ca942-goog


