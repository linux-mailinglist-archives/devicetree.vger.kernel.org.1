Return-Path: <devicetree+bounces-162845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3DBA79F26
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 11:01:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C4493B677C
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 09:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A2D624C09C;
	Thu,  3 Apr 2025 08:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="inbk4I+r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F4124A052
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670759; cv=none; b=gyi2/90WNC9JX/hfJ3uboF1iPkHOy+jjhmeZG1QT6mqbyZUEAUWnuLwhQLn2EjkDeQQQg5UJnZWwpjT0ybkOMNPtnxsYAUQtftxXo+gnfkLAJ/ISgT3cs475itGwzZsHqZ6bB8EPpwYJ51bQ/2ovGj/BqRMC+styeWva5aPLrTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670759; c=relaxed/simple;
	bh=3HQSCKKi1fwFRVm95IbU9t5Hr7ITyiskN+9xAwmrKhQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iZlY0rdiir2t/5/CrZp20KEluiJG/C+877be04rwgTfMak1M7M7WYXkRNUDhgYApNCuG1KZYgNcG69M7SCbCplFH5TeS4xGqG+0UGC/VK0EiPGq+Jco25C9VNcQTeeAU0MINFkZ+mgnlt8z/Tz7b37z2tZpvv8w+fQkVfqJc2OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=inbk4I+r; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5e61d91a087so1167899a12.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670752; x=1744275552; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c021jwV5dbsG8JoPrCRgjZmmvCnTfk3Xe/yBggRzooI=;
        b=inbk4I+r/k4ykJ/Nugo2yeQ4wXSJAhl8r0L/UHumax8beFQaeSG7wW4K6eYJdwPJwZ
         Op0as6SlDG2WVK8j7/uNNJJbIaJPNoo2yCKtf/Vfl9PbHDO2KR5MRn1lEqCbQciktX61
         VLwdEtLQjuWnmdTveoWv+1/5eY/w/E8A9MK8knRh7CK7gR7dTvRGlsifjdN1mhQ3Rc/v
         OL66GgE4HbECZJwJDdT48ZKXQcD0Mp21Mn0x+xsLlROFznQ1mT4WX82yuzac997GeFdV
         geLKIEl2t2qixDmGw3o4SSPEM4mZPXUfp24PUpgVGntda4dXhgJ/87dGlGS/vq/xYcFJ
         fc4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670752; x=1744275552;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c021jwV5dbsG8JoPrCRgjZmmvCnTfk3Xe/yBggRzooI=;
        b=tmVTpxH/YhA938lwUZIJx7qrzZEgoLu8alDoL3AHZIrHw3vnhw90r4UTGeHYF+Ye3f
         92FiKW/B3vv1bdVp/6/mrGw6CQ+B0mMyMMVNbuETnWW6BU7YvDaaYcE26BXKBQW+nkix
         odEVLksQUOUDBH9r9jzK5l21Rlu6orDkGGwRkw8iMNzUjGSmjIiRZ9Gjo3W1PgzhHPRo
         2/rHiIUZ25ea92Oeee2t8OIeiiGzRwCPK6/a/wqDmJvECoHTwJ/PtjL9w2VV51GhwVtw
         sPhx2KV+xFkUgdK8dBMMQ7vQgmYtGNXJTPcmKW1lmA7JZpZZx6KKo3N4f2ujCx+xZ/O6
         0JEA==
X-Forwarded-Encrypted: i=1; AJvYcCVC7yaQ2AM41dHB5Gia0OJKi+tXwvJBsgZTsGvddC72zTpDT/RzeES5p56zkEwnW8gDLxdm5GQaGt4U@vger.kernel.org
X-Gm-Message-State: AOJu0YwWtS+PxRk3neVrP8XvSfB5emUtBnIKtmiEKUs0XQwJ6onK37lz
	iYTWdVkeb68D1mHGpgv1aFvnb+t/qNoGIQIIIWdsZuUB/n6thRlwpKBC23yBbdI=
X-Gm-Gg: ASbGncv3msB4IaFTEKxTOX048ZgnAiC1sf9hsEZHAcHRLLH2NaJ8lAL61AJFfws+XcP
	xua2gDVmkBT4wdlXwaoE7Vw3XC/bNdfY+RNh9mQrETSaxLibkrzYLFatBfrp53fpgTqyu6SoY90
	cXGBw4ai4XN0cCKFqIWdBNJWQGIvGcfstmXsZtTZjRVgI69pPYmwX6TJUUqR1WGzD7Ud4xBru6R
	LTnyvTnP9Da8BLQALbG57DNtOx5HYCrCI1HUYYb/cWCd7YJdF2L+7+L1jbT1YgPX0vCKI2y7qrp
	Whgxjg2Di0+j6fm2Back7Jg4WGtBBw1cIXZ7Dp5qeBG9GXSTU5bSAUd8BSJbKUHr53FPuf11+Aj
	/nCJH7MBK1zCqQ0yMdimkX40dQRW1PUNgCgUPCwQ=
X-Google-Smtp-Source: AGHT+IHCv1y/iOD6tATf8l6JbAVP7nosxikaub6pMGAtowLVbGuj8LVxbHPFWCZvGPjo74E5dX1Kfg==
X-Received: by 2002:a05:6402:90e:b0:5e8:c0a7:4244 with SMTP id 4fb4d7f45d1cf-5f08716b5edmr1415400a12.9.1743670751910;
        Thu, 03 Apr 2025 01:59:11 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.59.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:59:11 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:59:11 +0100
Subject: [PATCH v3 19/32] mfd: sec: don't compare against NULL / 0 for
 errors, use !
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-19-b542b3505e68@linaro.org>
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

Follow general style and use if (!arg) instead of comparing against
NULL.

While at it, drop a useless init in sec-irq.c.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-common.c | 2 +-
 drivers/mfd/sec-irq.c    | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mfd/sec-common.c b/drivers/mfd/sec-common.c
index 4871492548f5efde4248b5b3db74045ec8c9d676..55edeb0f73ff4643f23b9759b115658d3bf03e9a 100644
--- a/drivers/mfd/sec-common.c
+++ b/drivers/mfd/sec-common.c
@@ -164,7 +164,7 @@ int sec_pmic_probe(struct device *dev, int device_type, unsigned int irq,
 	int ret, num_sec_devs;
 
 	sec_pmic = devm_kzalloc(dev, sizeof(struct sec_pmic_dev), GFP_KERNEL);
-	if (sec_pmic == NULL)
+	if (!sec_pmic)
 		return -ENOMEM;
 
 	dev_set_drvdata(dev, sec_pmic);
diff --git a/drivers/mfd/sec-irq.c b/drivers/mfd/sec-irq.c
index c4db58813059f07372679223ec570ed07f52cd73..5cd9667a21e9e8b052b2ef0b5d2991369bffe8bb 100644
--- a/drivers/mfd/sec-irq.c
+++ b/drivers/mfd/sec-irq.c
@@ -448,8 +448,8 @@ static const struct regmap_irq_chip s5m8767_irq_chip = {
 
 int sec_irq_init(struct sec_pmic_dev *sec_pmic)
 {
-	int ret = 0;
 	const struct regmap_irq_chip *sec_irq_chip;
+	int ret;
 
 	switch (sec_pmic->device_type) {
 	case S5M8767X:
@@ -496,7 +496,7 @@ int sec_irq_init(struct sec_pmic_dev *sec_pmic)
 	ret = devm_regmap_add_irq_chip(sec_pmic->dev, sec_pmic->regmap_pmic,
 				       sec_pmic->irq, IRQF_ONESHOT,
 				       0, sec_irq_chip, &sec_pmic->irq_data);
-	if (ret != 0)
+	if (ret)
 		return dev_err_probe(sec_pmic->dev, ret,
 				     "Failed to add %s IRQ chip\n",
 				     sec_irq_chip->name);

-- 
2.49.0.472.ge94155a9ec-goog


