Return-Path: <devicetree+bounces-98244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 491299657B4
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 08:35:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75E8FB21502
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 06:35:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2841D1547D3;
	Fri, 30 Aug 2024 06:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ukgDzcjL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF5F1531F7
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 06:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724999711; cv=none; b=e+S3grhD6bksU3h+/YcvnclaCiGsjtd1JQNHwXk4VckrzoYvFf4xIck3joeNGuBgv8kqfeVQC7DXyDXfVk4B4sm8eCaq9pVgH6Jqof2HYwrbgYDG1HczmXLS9U0iSlBGh0s3Mz+ynNF2FBePEqcpNbj9xnGbGt03dx6+A5m90xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724999711; c=relaxed/simple;
	bh=qwacd3v8db7ChZ+WZMKSWez3bE4sxEYchYaETEsSQXw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Zx5EzdwJ2/uVF/InxUMK3zHMiIoAsHFJ7yD50onHMkorBKfKTi48uV7ZUV1im2spwBmywvtqroMih2bKe8EwsNnMozsoqPHWFy8dskfbDwyD8KrtznH60XHTjOkYplYla87ueO//mQYvK6pNeZzgMnb+C6mvJ2IaSuoKnweQ3DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ukgDzcjL; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2f4044f2ab9so1000291fa.1
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 23:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724999707; x=1725604507; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nsKfnicCMY52tHbvGBlR5SwuuGZIL8kCBaXTYqhfZaY=;
        b=ukgDzcjL4oUatJbZRfSJTiJxvu8dbpfFAG2HWy3bwrStgIGr2tL9U6+rrJW7UYsGOI
         5ApfHT/GzopNP2Cw3x0Or0ETqOJFVDoiMjHEL8CGRDq1AJZi59kshY3hts+8m8DUJVx1
         10uMnBkTLn/gqbFQstROeGilQVPe1sdLogDYaLstgOQHFwFZi6yXzRvsrQgsMbH9/GAa
         mxpcQc7OJ5AEig1W8YB4mnsMk6pr9aruKOdRn82E+c5ggwkKtZ2DUgXcZlWHA3H887Fj
         cphD1682LsBh9m0W6/1pGzm8dgiFxZLGpH66DYGPZvMfM1Hq6QHAiqcMSlEezKnGcTx6
         UKGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724999707; x=1725604507;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nsKfnicCMY52tHbvGBlR5SwuuGZIL8kCBaXTYqhfZaY=;
        b=FMX7wg9JwKhQhmaaj4FTqcRRD3hATtFpE4//zqa/CDKjk/ez4+6kAit4yEI64qft1U
         NEIwJ/ZPavauchqC79aORho56P1RE0OJtVw1R0G1l/s5kEfDdttozLMusmGT/nN8i9Lh
         EzTvMrb6vtnTjCxQHAgobZCiY2V1tFjn6wjL6PdRPRYC/2QTThoAAcKwLOdv7wZitlXu
         L/KVliAwW6ONUu5BglDT38GBIzyK1NdFrxe4UUlscTWnm7Y4JB6AwfKKTSqXE07N+aaj
         BHJj00OZjz17aN2JDKTbCa96HifveCtSHPkhM3vH73LOn9KtAaRaw9ziuhYuJF8aHeGI
         ElIg==
X-Forwarded-Encrypted: i=1; AJvYcCX4N1plQQB8VzPTWa2GefNbdr5F7gV7rBkiI1eF/piWZh8U6DWu4bugi/VyFMuhXMVKcsyaSeqSaOha@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+vvVde8idarSwwCvvfxjUzU8lkWQnwcfF3MSLb80wH/Qj7r/v
	RDh0YK77z9W6BqYmtX6JUmcgrptA1lY8Uv7Nhn5AnekjA6xvBntlckU5zORNgsM=
X-Google-Smtp-Source: AGHT+IFlrPfvFMPyPcuwacinKJMUXIogt+p/bJI5w0NNx6sTLh5gP4vbYfAWS56ojG5vMJG7B6aOMg==
X-Received: by 2002:a05:651c:198c:b0:2f3:e2f0:5140 with SMTP id 38308e7fff4ca-2f61e0266e7mr3981021fa.2.1724999707456;
        Thu, 29 Aug 2024 23:35:07 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f614f00860sm4879441fa.45.2024.08.29.23.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 23:35:07 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 5/6] media: i2c: og01a1b: Add management of optional reset GPIO
Date: Fri, 30 Aug 2024 09:34:58 +0300
Message-ID: <20240830063459.3088895-6-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830063459.3088895-1-vladimir.zapolskiy@linaro.org>
References: <20240830063459.3088895-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Omnivision OG01A1B camera sensor may have a connected active low GPIO
to XSHUTDOWN pad, and if so, include it into sensor power up sequence.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 drivers/media/i2c/og01a1b.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/og01a1b.c b/drivers/media/i2c/og01a1b.c
index 406847d18062..95716c234cd5 100644
--- a/drivers/media/i2c/og01a1b.c
+++ b/drivers/media/i2c/og01a1b.c
@@ -5,6 +5,7 @@
 #include <linux/acpi.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
+#include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
 #include <linux/module.h>
 #include <linux/pm_runtime.h>
@@ -420,6 +421,7 @@ static const struct og01a1b_mode supported_modes[] = {
 
 struct og01a1b {
 	struct clk *xvclk;
+	struct gpio_desc *reset_gpio;
 
 	struct v4l2_subdev sd;
 	struct media_pad pad;
@@ -987,7 +989,11 @@ static int og01a1b_power_on(struct device *dev)
 	if (ret)
 		return ret;
 
-	if (og01a1b->xvclk)
+	gpiod_set_value_cansleep(og01a1b->reset_gpio, 0);
+
+	if (og01a1b->reset_gpio)
+		usleep_range(5 * USEC_PER_MSEC, 6 * USEC_PER_MSEC);
+	else if (og01a1b->xvclk)
 		usleep_range(delay, 2 * delay);
 
 	return 0;
@@ -1004,6 +1010,8 @@ static int og01a1b_power_off(struct device *dev)
 
 	clk_disable_unprepare(og01a1b->xvclk);
 
+	gpiod_set_value_cansleep(og01a1b->reset_gpio, 1);
+
 	return 0;
 }
 
@@ -1044,6 +1052,13 @@ static int og01a1b_probe(struct i2c_client *client)
 		return ret;
 	}
 
+	og01a1b->reset_gpio = devm_gpiod_get_optional(&client->dev, "reset",
+						      GPIOD_OUT_LOW);
+	if (IS_ERR(og01a1b->reset_gpio)) {
+		dev_err(&client->dev, "cannot get reset GPIO\n");
+		return PTR_ERR(og01a1b->reset_gpio);
+	}
+
 	/* The sensor must be powered on to read the CHIP_ID register */
 	ret = og01a1b_power_on(&client->dev);
 	if (ret)
-- 
2.45.2


