Return-Path: <devicetree+bounces-162853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 86754A79F38
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 11:02:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 357647A6015
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 09:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 700F524EAA9;
	Thu,  3 Apr 2025 08:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hhk8vDhb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC3C24DFE6
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670767; cv=none; b=RiebPt3BhM8/zxFUeJzSSYw065e/xhk6FH0/ETmKRT6xuwkl8rbOaV5VoC94fwA5hqI6QLp/0LjIX5QVGk32b4eIlmmohxMGOFWuea283YMGahl628FtaR4+pWbv2Ba4KdAQSk0COWaqASUXLOSQtCHm60eQZi9ZvsUlp85oI5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670767; c=relaxed/simple;
	bh=X823p7d8VeG19dJIhYLsSWA3HtswWk7j0eIGd+yYPcU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y3wJbg9mhhX4ufLtKm06gXkK1Ew2R1+Hw1n5XO2QHybMWoJ4ASVgFqdef2Dg3SF8owDoqcpa+Us7K9zElv5KlBeIq1MWshY7QVPhn333J7ioLYkN/5RS2jxcU9LlmSlQI1N8K+o6w1VxRBmv6HUnzyviHICikCp22S3UADFOQT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hhk8vDhb; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5e677f59438so1078421a12.2
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670758; x=1744275558; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5TCn0wifCdb3UC3ucEx7Zkhg1UJ6ww+TPiSGCbm38yQ=;
        b=Hhk8vDhbqcYUwCwLviKA6jMQYEXZJsFvuMh8G+Xqvfdnf2TKNr0cc1BjulGiJ/rXlj
         GsFFn/4bG+va3UMLRfaFSkYMY3d84AKVFWFXQAU9SrSByg/0//BUbzK7J1OnXa7DGgKD
         4hd0Jqcx1KpjeojwJCkAZfVLUU6UP2HIvkscBwtJJKDkauUVoJe1htL7wKTKwxZyS3PG
         /lpiDyrO6MkTboVoXfTxqZTFbnc9mhizkOpLAhlVqVtASUfsPKc+1p4MiP6eCueamnsu
         o5MO68lllCRJZEx6/2sIhoyqxKOqq34CkWBzSf85cX9eoWOrN3MeXfd0Df+BDtCmIiY6
         6ygg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670758; x=1744275558;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5TCn0wifCdb3UC3ucEx7Zkhg1UJ6ww+TPiSGCbm38yQ=;
        b=TCnC9NtuPSYJ6wgtCwgmVN+MA1lWGR1yFem239mxkUWDLrS2edlWvIq4odkr0LsFQ0
         MlrcFnKDxvmRe8HNM06sKuakB9YZSeDUjbbzb4GZEH3oky+kDar3neBImRFRsv1YCk4R
         3lsOl/6fHmsH/b7cX6wM78dWpEgTabKqeB1+d+1seBHsTiTD238oa1OyHFoXUqABM7ke
         E5qAsqZsw/K5YCzpyT+fBSAvBWWnyA7kercvDSIS8QupEPbssBCFAgfYIiKzxtytxzi7
         74XVYqz1XWrqQq4R/NYSJNkc8wLqxIpL3sm+elhm84srpVMRUdxONky3DdHnPji2R2qg
         FEaA==
X-Forwarded-Encrypted: i=1; AJvYcCWxkYSkcQEnnWc2jEb19/tWgyV+WDQFYTbwRyKJ6cqRVQzi7YmqArq54k7K+y6t9rIz2qaBKRUT9Cv9@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2L13GZmsFnLpNX/ogvid2sKy8qSgskamK7yAWY13xoWOSXK5d
	xXB+d3pH80hfTjAtehe3Sid84khe3E9hkrTDmwy57obRMAe5nPyvn23Q1CtCnSc=
X-Gm-Gg: ASbGnctJsTnwDMwnsWDUDVw4nPBJpvmKpwc4Ls7nnmnE3XYQ3mn90dI7iA3t+4N5DXW
	Kt+FCiHuAsmJ1jvB42l9Iph1fab8pYLus9Ef3PLEX2UyQmrIRLbIdWyUVUImioYvMq3PDOdvmOb
	GmlVsE6t1DB7ARfJCdChJHdZLKp+5O26uUcK84XgKDDce/q8B/rG4VP2aFV9gIdlPlCgzbs/PSl
	TOASan/nB+DXNOMT08QEE539Ln19JC6yGF0a5V3uAQoOz5kCPYycXdrvU4f9WkN+tYvz2TZvKyG
	y4lREfqnMNX8LoV5iowyfix7dxj+2GWsFHBDQdrP2QtGB9lJrOsLLyj3ilNLBkfzOYwo328mJO3
	ItoeKQhkbmVQSU1ff2vwHkY11RNU1Jqk+OEQEmLQ=
X-Google-Smtp-Source: AGHT+IGkYnX6rQ6GWjWnABJsBjhI2LJzWv6z53In1ISOpBusxw5cuCX0wciz6W5/efFFB3SIsEOq4g==
X-Received: by 2002:a17:907:d25:b0:abf:4708:8644 with SMTP id a640c23a62f3a-ac738bbebedmr1751267266b.43.1743670757782;
        Thu, 03 Apr 2025 01:59:17 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.59.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:59:17 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:59:21 +0100
Subject: [PATCH v3 29/32] rtc: s5m: switch to devm_device_init_wakeup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-29-b542b3505e68@linaro.org>
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

To release memory allocated by device_init_wakeup(true), drivers have
to call device_init_wakeup(false) in error paths and unbind.

Switch to the new devres managed version devm_device_init_wakeup() to
plug this memleak.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/rtc/rtc-s5m.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-s5m.c b/drivers/rtc/rtc-s5m.c
index 7b00e65bdd9c25b3426f92355f8ea36e66c3939f..e8e442c503064eb4e570af5bf7dcff6bfa7f4656 100644
--- a/drivers/rtc/rtc-s5m.c
+++ b/drivers/rtc/rtc-s5m.c
@@ -779,7 +779,11 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 			return dev_err_probe(&pdev->dev, ret,
 					     "Failed to request alarm IRQ %d\n",
 					     info->irq);
-		device_init_wakeup(&pdev->dev, true);
+
+		ret = devm_device_init_wakeup(&pdev->dev);
+		if (ret < 0)
+			return dev_err_probe(&pdev->dev, ret,
+					     "Failed to init wakeup\n");
 	}
 
 	if (of_device_is_system_power_controller(pdev->dev.parent->of_node) &&

-- 
2.49.0.472.ge94155a9ec-goog


