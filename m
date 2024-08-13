Return-Path: <devicetree+bounces-93275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 132E4950251
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 12:21:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45B721C22908
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 10:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AD71194C9D;
	Tue, 13 Aug 2024 10:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q0EBzu/L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98B6119308A
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 10:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723544450; cv=none; b=O4dMJ2sNnLySMy9DaiaAjSvcE6sktQt+zEHtSkxczytYQv9Iv29ssNk8GPzboygA3HrtXygPvqILHw5aDimApBlQken5l3eKSoCjxjyGIbkpBWbtju9RF/2sbS9b0vVgQNuB38prcqEdp2gqUhetU43f/4PFVChmx9h8xJFrkEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723544450; c=relaxed/simple;
	bh=GCZa41LBUHJwi/6V+Gjr/aZ/mKBaKvgPNKryTB40qo8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Md6g/yyBZ7c6xJpiQ4W0ziT/72dbdf4oue5R+KEZ7iIt/SJTRg9zCKdUXfkSjnnUNqQi/5jFHtIxAEcBzH4nEvCUx+FU42jTORzriQtolyfjEF7UwGqpuQOQJof6ekfZ9xtsfNS/x168FHujqO/JvedpXhnAzw+7NjpcO9tUi3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q0EBzu/L; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53212a805c4so179991e87.0
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 03:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723544447; x=1724149247; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OCeplELLLeiitcqgFPRs5GSflnURqy8in4V3Us1wY+w=;
        b=Q0EBzu/LyeTT/aMG0Yd8tq46mVDsiPqJ09ljzVfwbZyudQ3pLrqzyNIugYzE4UmTud
         fb0NxqKe+tRZf7yGdYt3w9UeiT+j+jUBMpbVaQC0R3i0p1SsD3etdZ7VrQssgf3O6pBA
         S9HE8YR+7wr1XgzahqMYtHB3JFT5ATRuqXSGPJRXEMVXoNJLHS74sCfQMN9/PPZu2bu1
         cN9FOUpiY4QbqsEve/KqsGUqMen4RVXqYlJsj8gwr2WYYUo64Hn9kBOkTdGZPvj1xIlj
         C6894au1y+NtgmT2vzGfUhYNSkyLUmHDHUArKdDL3sDrSIupxH/RwvEsNv5ayRl3KzhM
         nIqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723544447; x=1724149247;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OCeplELLLeiitcqgFPRs5GSflnURqy8in4V3Us1wY+w=;
        b=I4lYsInwbAjhBBBkEAOTb4svUcsCklGEY+qnubWRf/Y44Uux8ndDm4mqu7xx7trCMb
         NYPnqhOptidRRsAVV+t1jiCvJm5FAD6Rf7anjoFVaQwXpObZW0henuVbSKLbLxIp0QiF
         jRlbuG9Flu43+CpfrbdMCT3RaoslixzLaHYuQ2OM4CObE3gMFII2i8WCL0PWCciQiGm/
         7NPocVM8NU5gXOTNgKLMwvyR7lJWtAEVb3Gxjpk/CtFWKAyLrjuTHeGnQabsu7uyvs2p
         AN2pV+fD6UG9dPNaoBZXZasVoYuaIdFmXwmmy3fm0a5JoUIwH3mhdSLRjedQYCsBpmri
         +l9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUUyJWXR62ItWxlfgyShu774ilHdw/5VSuQYVgVTQ8yi+25neMTSBJaaejkdUw5UlxKGCVHD424fLdlaExS/dRMs9D4S95AZ5g75w==
X-Gm-Message-State: AOJu0Ywen7ZuDbhJ5rLGDM94UW6+wDUUavfIa5F8aPzHDMRPjrv3QveQ
	eCF4RvyboyfMKD7DnghvJJDYfF6l5jEyRlyfDK1gEXalPrsYYgoML6wLphluvXs=
X-Google-Smtp-Source: AGHT+IFgVwF41KQ75i3T0DwK4BU0kkW5oi/pZQP5Yc9cpLSVxHpBIa1TDSXpkCVXuYT9LYoNUpi8YQ==
X-Received: by 2002:a05:6512:acb:b0:52f:cad0:2d4a with SMTP id 2adb3069b0e04-53215031142mr696682e87.9.1723544446585;
        Tue, 13 Aug 2024 03:20:46 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53200eb3ca5sm965917e87.55.2024.08.13.03.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2024 03:20:46 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 5/6] media: i2c: og01a1b: Add management of optional reset GPIO
Date: Tue, 13 Aug 2024 13:20:34 +0300
Message-ID: <20240813102035.1763559-6-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240813102035.1763559-1-vladimir.zapolskiy@linaro.org>
References: <20240813102035.1763559-1-vladimir.zapolskiy@linaro.org>
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
 drivers/media/i2c/og01a1b.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/media/i2c/og01a1b.c b/drivers/media/i2c/og01a1b.c
index 766740bd04c1..90a68201f43f 100644
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
@@ -981,6 +983,9 @@ static int og01a1b_power_on(struct device *dev)
 	struct v4l2_subdev *sd = dev_get_drvdata(dev);
 	struct og01a1b *og01a1b = to_og01a1b(sd);
 
+	gpiod_set_value_cansleep(og01a1b->reset_gpio, 0);
+	usleep_range(USEC_PER_MSEC, 2 * USEC_PER_MSEC);
+
 	return clk_prepare_enable(og01a1b->xvclk);
 }
 
@@ -991,6 +996,8 @@ static int og01a1b_power_off(struct device *dev)
 
 	clk_disable_unprepare(og01a1b->xvclk);
 
+	gpiod_set_value_cansleep(og01a1b->reset_gpio, 1);
+
 	return 0;
 }
 
@@ -1031,6 +1038,13 @@ static int og01a1b_probe(struct i2c_client *client)
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


