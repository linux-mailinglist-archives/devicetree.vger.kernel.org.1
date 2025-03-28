Return-Path: <devicetree+bounces-161613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF218A74B50
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 14:44:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 278C43A6919
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 286AB23875D;
	Fri, 28 Mar 2025 13:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wxb+Qdrm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9258E2356BD
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 13:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743168679; cv=none; b=QKYdymo9QcNxjBuPbfxFH92gA8kSTwsEA0fGlqCe/fjFX6zf/n650IZxGx0B0jQ7Ai1Ptv0PLenGJUVstdL3cq0UPbzax5mhC8BMfkm+f9QL8elAyffAe0l3h7gFIAasaLZyYylt5RugBq6IU/X+2ZkdINezdd0aIQREz+Him48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743168679; c=relaxed/simple;
	bh=kEDFa+8UVBQzgPmv5eunRw1YTfTPcSizj/QHfDecNE8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UhGUPgQsu6M90iIKJTMjjuQiUrtEsxugpJo1K5frfc3sJWNQ4QxQJQJAVd2xhtnzc2b4+8ocQO6P9ex7QPYN1M+JZ9xSyHba3l1XAdXrAfn+lP87tJjjiScd/XPwq3Lf5louUUdxpEqBmiEiJLJOT78J98yZyeu0ojLdqrMQFqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wxb+Qdrm; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5e6ff035e9aso3940652a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 06:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743168668; x=1743773468; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zep9f0d4foFUFHvL7+wCfhcQlnrOmBCem8a0X84Q4jI=;
        b=wxb+QdrmN0qPPO/RwMLqkwJc/6wB0XSt0nAlDcQjaFFlKc/QmsNn+9Zo79Yf0OTE7a
         H/czACU/hGSRn0EHehAjV7LktAH0knI0n6lYgk7lTqltik/OClP2GIdjiPrWPW1JJEIA
         sv5zQOq1qjUBm4TKq29Iy32WhAKbQeo44oqXxnjDO3GOiRw25bU1xaYAbIbVEnrxRiBL
         mpKZvgm429Z00pB/4TaBVGtaiqz63QmO+n3Z/SaPVJ4yGMVxQdqfikxuGyFuXqqzwpwD
         hWd0atk0x5i57PoAZtXDpd9xbLlixo2dhFTSVH8SCFIncWngoS6jddfpzl0VWw86gHdP
         QQXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743168668; x=1743773468;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zep9f0d4foFUFHvL7+wCfhcQlnrOmBCem8a0X84Q4jI=;
        b=QhyvQYC61OEdjJl5Hp/ZqRKr8Ka6iwTvjH85res4g4Q8Kyj38soooVo3t+rJRKKv//
         FLK8owUckzqw1Z1EgslMVgQu2mA6bRYEMovWvDN/s3qafefDJ4gUk6T431NKgQuCEuho
         Z3jlLpeDkhHuAvtI1J6/hMj8ckvkFVMpeT5yXNvnKMhzFrvLW5ckNLHb+WrDzZ5+bMYD
         4uzlpMyCsTF+QTw0ri4iE/i/l1+GFyNDkErWmRchKrV2PSoVJ+APE9qifApmX7eE/9Y8
         wI5dwVrA28/OfRBN2PmRtKY7Es+Ld0pC/2zht7LTPNYYEUdPye/ttUDyfVPAxJuO8v2w
         oHuw==
X-Forwarded-Encrypted: i=1; AJvYcCUBsdEmc4iR5t6RVBUH4oEBgDEJfGNf0gb7eodaoQzC46bbgejyQvimVRXGRTjVYzVcq/qkxCLL6JKF@vger.kernel.org
X-Gm-Message-State: AOJu0YxiQZ9EZFRxLZ+u585VET8BicOIAdQjQfAizUy8sZSZ5iNdoQlF
	EZRRjimb2Td5xxEcu2a6xDGtL6qdw7qF4cW/Kw4mOGKDAnPTs8myHnDNzrXeJhU=
X-Gm-Gg: ASbGncvEBT5TUi7P6n+RZnk53Utv0ya+SVFMcoZT5OTs/Zlsm3Xh9ejrffhTpBXyugL
	hHqBwuNR4IoayMrNDLe/52tie9/aLf/Mdgqxa65+q/9kN5JEH2X/srN0CREIZwHKlXBVbeYdxd9
	LMx2v4REqqnNBF93l9uWekTd3AZkQy0rDHGmHkQ+YpZVh6yJeyzcGzO7ZvCnDY2U48OyRQLQUIB
	oi+JSE7GduDOq9m5V1QbHjF6veaeJQpt8eaIOLU0hoBOX75GabBJFtqylLZ6PuXQIrE9Cs0PICn
	K5CC1r9uxM4l12tRIg1cZT8iAOv+YemVmQ+5q2KeeQAJGcn7yciummBzFEik6wRuD9Ks2ahF/5n
	IOCubhgqiz9V8R6k10ua8EaSnG0iyyeeWNzimosc=
X-Google-Smtp-Source: AGHT+IGAjkKL4/RcQRVs4lvBXbIgZ8dDCpbSsQ9PMQOGZfxyLbsOG8rXC4O3k3x5fcgkz2IEiIeoJg==
X-Received: by 2002:a05:6402:1d51:b0:5e5:e836:71f3 with SMTP id 4fb4d7f45d1cf-5ed8ef20410mr6346734a12.29.1743168665879;
        Fri, 28 Mar 2025 06:31:05 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc17e01f7sm1355284a12.79.2025.03.28.06.31.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 06:31:05 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Mar 2025 13:29:09 +0000
Subject: [PATCH v2 23/32] mfd: sec: add myself as module author
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-s2mpg10-v2-23-b54dee33fb6b@linaro.org>
References: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
In-Reply-To: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
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

Add myself as module author, so people know whom to complain to about
after the recent updates :-)

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-common.c | 1 +
 drivers/mfd/sec-i2c.c    | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/mfd/sec-common.c b/drivers/mfd/sec-common.c
index 448300ab547c10d81f9f2b2798d54c8a03c714d8..05658f05cb857a784c7d01b1cf25de4870e1a95e 100644
--- a/drivers/mfd/sec-common.c
+++ b/drivers/mfd/sec-common.c
@@ -293,6 +293,7 @@ static int sec_pmic_resume(struct device *dev)
 DEFINE_SIMPLE_DEV_PM_OPS(sec_pmic_pm_ops, sec_pmic_suspend, sec_pmic_resume);
 EXPORT_SYMBOL_GPL(sec_pmic_pm_ops);
 
+MODULE_AUTHOR("André Draszik <andre.draszik@linaro.org>");
 MODULE_AUTHOR("Chanwoo Choi <cw00.choi@samsung.com>");
 MODULE_AUTHOR("Krzysztof Kozlowski <krzk@kernel.org>");
 MODULE_AUTHOR("Sangbeom Kim <sbkim73@samsung.com>");
diff --git a/drivers/mfd/sec-i2c.c b/drivers/mfd/sec-i2c.c
index 2ccb494c8c024361c78e92be71ce9c215757dd89..74fd28a6bc9a42879fc1eb05546777f60e0062e9 100644
--- a/drivers/mfd/sec-i2c.c
+++ b/drivers/mfd/sec-i2c.c
@@ -233,6 +233,7 @@ static struct i2c_driver sec_pmic_i2c_driver = {
 };
 module_i2c_driver(sec_pmic_i2c_driver);
 
+MODULE_AUTHOR("André Draszik <andre.draszik@linaro.org>");
 MODULE_AUTHOR("Sangbeom Kim <sbkim73@samsung.com>");
 MODULE_DESCRIPTION("I2C driver for the Samsung S5M");
 MODULE_LICENSE("GPL");

-- 
2.49.0.472.ge94155a9ec-goog


