Return-Path: <devicetree+bounces-159956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F00D5A6D1DE
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:41:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 203151887FDD
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 421BD1EFF98;
	Sun, 23 Mar 2025 22:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DdIo1ocr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223971EE002
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769587; cv=none; b=mZw6zNOWqhH8vNBwYja/LxSvOOJ85awRPj64My7qD9whmrbvXc2g07FoWWznWV4nRIypIWhiwjFAq9aDwP+tgFh5OyDbuZ7yXvlmGs28984xN+qJr6X3xMQdxLQjG+8lbWiQjQEVBL9Oiwt0x7QGpIDb7y6vIizGKp4g3uGU7HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769587; c=relaxed/simple;
	bh=2SEWJHOQRVHtm1hZDIQV8G5h9Ihj/ZSId7FCsdh0cUI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gD+YxBqZLYL1LPigyMvL9x5Bud1sUWBJvmE0qPEOJmYmHf+16oNA89HlCXKIUA8LbkSlHHOkpsLpxCVwv7EMm7zHWszUWJmFvno3/8PZu0zsMt5qzXBnCow6zACJt5Vrg1BQbYE6m1HnKBY7Du9Dxx3syXgQf3M846WdwXkKjWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DdIo1ocr; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ac2a089fbbdso689707366b.1
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769580; x=1743374380; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QFi/wIa2zliLVLaoNCXevujk62BEru73nW/QKRcDHsY=;
        b=DdIo1ocr6oN1WklNPRlM4v5d7MVDSh5ol+XMGFqEPShgIb3z9VDnKq7j64GpehYkeo
         V7Q5zwbhXHjozJGe31PomdnLA9V3GY3+tRPOhlJ+Qq0YjXtmb0jS/i+9iiPblgToXjk7
         CwspOU3w2RNjPAhm2uf1eMc4CN1t1vlgIZHXsuh1N5QqHqQrZJklXZZXj+OrdnAXHR32
         Tv3qChqTcYXJeUhcyLBcu4syBqo+0hEupi7kPld0J4sMva324Fg8HBJcZrA7zj3hyqwM
         qRqNrvtOvb0RTJ+RXY1S6zSzrzSimFoKBSn4Ld1lIRcRIJOyKX161RHBMqlC7QsR3yt3
         8LQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769580; x=1743374380;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QFi/wIa2zliLVLaoNCXevujk62BEru73nW/QKRcDHsY=;
        b=SC8TboC/MMYPAqJSdStTVmKxYMaaK6S5v5E3vvG4vSh6shMdoNo5E6C6jwmNGzXz74
         brUegnbhJbZZpmEFTVRVHztpt2Uzwy45bAVtAZY94/DpfGCZV47jplUplZIYoYc3QlMf
         Qr0NuS/9JJtxwcgGGXGofL2UZo2N6Ta27pOOWvVqxQvDqy5y66bzTp04Ku8ib24iyvlN
         tTXABl69oQAJZe7IGI6sXNlzCbcEupxmC9zuPWRZ/hbP7OaVcnYJens65CJGg9INAwh2
         FkApnB3Ja32+GOyj6uQr2FdQHm3qpluSfiaFeZkaqefM/sPxxEtJDCiR01eA2Sd4fwW2
         lUnw==
X-Forwarded-Encrypted: i=1; AJvYcCVi1aOg5DNOBayV4TPJZMoA90ESm01SkpFRTx0jjIYr7MBOdMaJdPj7CwiaHbzAMlHOqcEfsVkHtAUw@vger.kernel.org
X-Gm-Message-State: AOJu0YwIuuGnpz7bNNQZcoBiYBaBNPOMU8VqUV0HkNq924JKmTMeZB/Z
	OI7Re3lC+wo3ZrGroPXJe0ANcLU8d5Q/XjglH8xE8QQZVXEcoT/K6t84ClDlvpM=
X-Gm-Gg: ASbGncvfrHmlTCxMQ15yPvOdG0lfF3O9fdsDE5/Lv8srBSFAICvwXqmtf9n9SaN5rq5
	F+pG1/UVrawCoG/P8/u/HhDBgNvO7CpV/5VAR8H1h2d143HCq+/VbQ6KmCwTNxla2G+dzoS1H57
	kgIsSk75OXqIippQA4Va6GEALsT2C5cTG0caYkhR82J+CGnvbBFT8+/0wQ2iWeC8rI29prhLiUd
	bCkYrj2yo995j4momobF8H8spW5kMQLQE1aoe4eOAFZmDetauO1vJwHvQFwB2ZCP0QeFfIuIdS4
	EKtXpwdTontezatC37D3DdOSdJB2zrQibxCr93ATYbqe0DICSmisVtGXLH9EbP4BmjvrWVmkaw/
	kVAGFStvDIf4JtwGbgQblj25SK3Jq
X-Google-Smtp-Source: AGHT+IExdWMeq50KMSeL2g8X5YzwdCsnSfpgrljF2A0N/7BkwT1ZoOB/F1xNUkswffcMZkq5HeqMZw==
X-Received: by 2002:a17:907:86a7:b0:ac3:c6a2:a02d with SMTP id a640c23a62f3a-ac3cdb95075mr1563087566b.7.1742769579644;
        Sun, 23 Mar 2025 15:39:39 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:39 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:43 +0000
Subject: [PATCH 27/34] rtc: s5m: cache value of platform_get_device_id()
 during probe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-27-d08943702707@linaro.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
In-Reply-To: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
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

platform_get_device_id() is called mulitple times during probe. This
makes the code harder to read than necessary.

Just get the ID once, which also trims the lengths of the lines
involved.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/rtc/rtc-s5m.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/rtc/rtc-s5m.c b/drivers/rtc/rtc-s5m.c
index db5c9b641277213aa1371776c63e2eda3f223465..31bdceac7aa245175a30eb13eaaf1f52f70e22c2 100644
--- a/drivers/rtc/rtc-s5m.c
+++ b/drivers/rtc/rtc-s5m.c
@@ -637,6 +637,8 @@ static int s5m8767_rtc_init_reg(struct s5m_rtc_info *info)
 static int s5m_rtc_probe(struct platform_device *pdev)
 {
 	struct sec_pmic_dev *s5m87xx = dev_get_drvdata(pdev->dev.parent);
+	const struct platform_device_id	* const id =
+		platform_get_device_id(pdev);
 	struct s5m_rtc_info *info;
 	struct i2c_client *i2c;
 	const struct regmap_config *regmap_cfg;
@@ -646,7 +648,7 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 	if (!info)
 		return -ENOMEM;
 
-	switch (platform_get_device_id(pdev)->driver_data) {
+	switch (id->driver_data) {
 	case S2MPS15X:
 		regmap_cfg = &s2mps14_rtc_regmap_config;
 		info->regs = &s2mps15_rtc_regs;
@@ -670,7 +672,7 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 	default:
 		return dev_err_probe(&pdev->dev, -ENODEV,
 				     "Device type %lu is not supported by RTC driver\n",
-				     platform_get_device_id(pdev)->driver_data);
+				     id_entry->driver_data);
 	}
 
 	i2c = devm_i2c_new_dummy_device(&pdev->dev, s5m87xx->i2c->adapter,
@@ -686,7 +688,7 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 
 	info->dev = &pdev->dev;
 	info->s5m87xx = s5m87xx;
-	info->device_type = platform_get_device_id(pdev)->driver_data;
+	info->device_type = id->driver_data;
 
 	if (s5m87xx->irq_data) {
 		info->irq = regmap_irq_get_virq(s5m87xx->irq_data, alarm_irq);

-- 
2.49.0.395.g12beb8f557-goog


