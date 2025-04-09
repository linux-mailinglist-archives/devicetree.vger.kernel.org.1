Return-Path: <devicetree+bounces-165026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 343A0A83270
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:39:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1413B7AAA9B
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D018821D5B8;
	Wed,  9 Apr 2025 20:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qVDSeqEZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45162212B04
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231072; cv=none; b=OwCeCxGmW97qE7mm48jzGRsZTc7TqpxqPvQWwcHncgUUo27qJL7aAXf+QJnBvZqT/trDpjC9CbsWfOQdd+C5qx2Xh9Q4z600AuCf5S1HBhQJGhCTYdbcJ4mRqnSyRdTi1zj27KYsPyZB1kfKv7nqPV9z4rTthhHmejamYYVv2vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231072; c=relaxed/simple;
	bh=hAtV1I8/HBTzJa/1ItevQ1OBKbbx0NFNuvyQK5ezaJM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ajWXgjCFgMSLSJLoph0JoRhVJERrWna1egxk9T/XwRRIAqQaYLAdYGU4P3dBeGKHqDWwSxXp7MbwN5QoABVYbm+9Hr/liP3Q/0RL+N9Y++n0MmyAaTckgtxiYIU9Lj0/Ilh5/WJqvGmNBvRxNXKEMFvrZ8whooa4a4t2DSQo/0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qVDSeqEZ; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e5deb6482cso2257427a12.1
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231061; x=1744835861; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PrKApdHkTzLPincImPYL07CE0wRIY5rb+KJxRsRRgwI=;
        b=qVDSeqEZCB7SU2zk0vXePPRRFi7MjWwZJxtocDqmbmJG2MDs2AMIJZgXxktFRPn3dq
         Omm/v/s0zyxAF7kjhZ5OlGxZlx03VGtTGVxK3nxf/DfuiWfiJbF/SvpIWA6v07eXIv09
         pGJJNyItATmQNluEjlt1EM7T1TXqjuL2oihSmtmy2xEBxEJT6e9U9WPEu9xnwgPk5i/k
         N7MVcxrGhguxhHkNU6Jak7OovKhnV5spUgB0+F2kaWnVrXGqlsBfMamixirqJwshmJO5
         GYuj307BVe4X/qefY+FkfKlb0o2hkLWBYZcJCxKXVRgDxIM4QzmPLX97rWpDvrh19ylf
         nOxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231061; x=1744835861;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PrKApdHkTzLPincImPYL07CE0wRIY5rb+KJxRsRRgwI=;
        b=fHclffQdiUBruki1MY91X22PBvNH5VUgduTSgvyLw6lAzvsCASwUIEbhLgfcnj6U3a
         vB/LrCsArziOueIs8UpPmzBbDQRZoMMC2rAO3yQjlGxUrVgFM5YOxH6mdnUzod0gR3Oq
         cgnyJYzGar9ecW89lXj6cFRvRHFsAxUeyf0Z/JtQE8hBC7NtL5ObXNtkt7AZJMLuNGIi
         CiWWI5W73GvaFo7IfwLmIxR3yb/gV3NdqSE02hhBwF7zaJPmLKNLEeYHx5waBHSTZo+n
         KOUxUuv1uLohcsYD7EWZL5Lisvz9rUk0Pnf5wLtNvNibrNlDwyHTSg+THlIkzG/AgCd2
         sIig==
X-Forwarded-Encrypted: i=1; AJvYcCVQt4ImQRP+cgdTxoyFr4rpvP1tlRKf5AFJNojKvTNT7vB9nsnYckczbk+3eBTCmAHGK9CrwIuQCPQP@vger.kernel.org
X-Gm-Message-State: AOJu0YxYspRu/8MSWHBZahvYapt2ETCfpd8w80kchJDEZURpWSR+cimH
	SpzR3y9PgOpQ/6DZ3yau4DR6zNABbsb+Tb3az3RyZZUA3stB4z0HPgX6WbylFn8=
X-Gm-Gg: ASbGncuB8C1fVmv/qzxDWN8yz2s28Z7cRHDof0FpoyPmruNOcbfMlq3r24V7q4rlFVE
	QYWCgXLkLK8UiqNI0RY/5qYyd/cE8cDgzqwFn67vWuRz93ud+xGohKt/UVS0x8ryF2HEKHVkL8h
	ketZHhAO+9Fmb+lG0DQVhFkbq4fD9Ejg20RQJymbNOr0/Z5cNF1DhBCaMXAoa8WdYlHvH1mHnRn
	qBkhIGZP7/o+s+zLk7Wo8ri7yX2ojXi2O1tU5ylVzfgzw0v5hFQmyLS335mTYnkoYvI2VT7sCVJ
	b5A20Wh326BujxrvA6yc+j//Y02wo6aqzLa2tTzFVMho4yGWuhX8XJFJhg8WDXTvS4Hv3J2QSr+
	PAQrqk/hRKmQdPeAkxhxq2OPjy+o=
X-Google-Smtp-Source: AGHT+IHZN1tcDyD4GoVcTo50BtDzW8VsL3BkBBiKd/h+7UVK/nY6/nR1DP1DjOu7AhyjWKaQ5ByzdQ==
X-Received: by 2002:a17:906:f597:b0:ac8:1bbe:1a5b with SMTP id a640c23a62f3a-acabbee7e6cmr9840066b.9.1744231060854;
        Wed, 09 Apr 2025 13:37:40 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:40 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:43 +0100
Subject: [PATCH v4 22/32] mfd: sec-irq: Convert to using REGMAP_IRQ_REG()
 macros
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-22-d66d5f39b6bf@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Use REGMAP_IRQ_REG macro helpers instead of open coding. This makes the
code a bit shorter and more obvious.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-irq.c | 343 +++++++++++---------------------------------------
 1 file changed, 75 insertions(+), 268 deletions(-)

diff --git a/drivers/mfd/sec-irq.c b/drivers/mfd/sec-irq.c
index 4a6585a6acdb71d2fb368ddf38463f001e513c7c..c5c80b1ba104e6c5a55b442d2f10a8554201a961 100644
--- a/drivers/mfd/sec-irq.c
+++ b/drivers/mfd/sec-irq.c
@@ -74,212 +74,68 @@ static const struct regmap_irq s2mpg10_irqs[] = {
 };
 
 static const struct regmap_irq s2mps11_irqs[] = {
-	[S2MPS11_IRQ_PWRONF] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_PWRONF_MASK,
-	},
-	[S2MPS11_IRQ_PWRONR] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_PWRONR_MASK,
-	},
-	[S2MPS11_IRQ_JIGONBF] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_JIGONBF_MASK,
-	},
-	[S2MPS11_IRQ_JIGONBR] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_JIGONBR_MASK,
-	},
-	[S2MPS11_IRQ_ACOKBF] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_ACOKBF_MASK,
-	},
-	[S2MPS11_IRQ_ACOKBR] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_ACOKBR_MASK,
-	},
-	[S2MPS11_IRQ_PWRON1S] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_PWRON1S_MASK,
-	},
-	[S2MPS11_IRQ_MRB] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_MRB_MASK,
-	},
-	[S2MPS11_IRQ_RTC60S] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_RTC60S_MASK,
-	},
-	[S2MPS11_IRQ_RTCA1] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_RTCA1_MASK,
-	},
-	[S2MPS11_IRQ_RTCA0] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_RTCA0_MASK,
-	},
-	[S2MPS11_IRQ_SMPL] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_SMPL_MASK,
-	},
-	[S2MPS11_IRQ_RTC1S] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_RTC1S_MASK,
-	},
-	[S2MPS11_IRQ_WTSR] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_WTSR_MASK,
-	},
-	[S2MPS11_IRQ_INT120C] = {
-		.reg_offset = 2,
-		.mask = S2MPS11_IRQ_INT120C_MASK,
-	},
-	[S2MPS11_IRQ_INT140C] = {
-		.reg_offset = 2,
-		.mask = S2MPS11_IRQ_INT140C_MASK,
-	},
+	REGMAP_IRQ_REG(S2MPS11_IRQ_PWRONF, 0, S2MPS11_IRQ_PWRONF_MASK),
+	REGMAP_IRQ_REG(S2MPS11_IRQ_PWRONR, 0, S2MPS11_IRQ_PWRONR_MASK),
+	REGMAP_IRQ_REG(S2MPS11_IRQ_JIGONBF, 0, S2MPS11_IRQ_JIGONBF_MASK),
+	REGMAP_IRQ_REG(S2MPS11_IRQ_JIGONBR, 0, S2MPS11_IRQ_JIGONBR_MASK),
+	REGMAP_IRQ_REG(S2MPS11_IRQ_ACOKBF, 0, S2MPS11_IRQ_ACOKBF_MASK),
+	REGMAP_IRQ_REG(S2MPS11_IRQ_ACOKBR, 0, S2MPS11_IRQ_ACOKBR_MASK),
+	REGMAP_IRQ_REG(S2MPS11_IRQ_PWRON1S, 0, S2MPS11_IRQ_PWRON1S_MASK),
+	REGMAP_IRQ_REG(S2MPS11_IRQ_MRB, 0, S2MPS11_IRQ_MRB_MASK),
+
+	REGMAP_IRQ_REG(S2MPS11_IRQ_RTC60S, 1, S2MPS11_IRQ_RTC60S_MASK),
+	REGMAP_IRQ_REG(S2MPS11_IRQ_RTCA1, 1, S2MPS11_IRQ_RTCA1_MASK),
+	REGMAP_IRQ_REG(S2MPS11_IRQ_RTCA0, 1, S2MPS11_IRQ_RTCA0_MASK),
+	REGMAP_IRQ_REG(S2MPS11_IRQ_SMPL, 1, S2MPS11_IRQ_SMPL_MASK),
+	REGMAP_IRQ_REG(S2MPS11_IRQ_RTC1S, 1, S2MPS11_IRQ_RTC1S_MASK),
+	REGMAP_IRQ_REG(S2MPS11_IRQ_WTSR, 1, S2MPS11_IRQ_WTSR_MASK),
+
+	REGMAP_IRQ_REG(S2MPS11_IRQ_INT120C, 2, S2MPS11_IRQ_INT120C_MASK),
+	REGMAP_IRQ_REG(S2MPS11_IRQ_INT140C, 2, S2MPS11_IRQ_INT140C_MASK),
 };
 
 static const struct regmap_irq s2mps14_irqs[] = {
-	[S2MPS14_IRQ_PWRONF] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_PWRONF_MASK,
-	},
-	[S2MPS14_IRQ_PWRONR] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_PWRONR_MASK,
-	},
-	[S2MPS14_IRQ_JIGONBF] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_JIGONBF_MASK,
-	},
-	[S2MPS14_IRQ_JIGONBR] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_JIGONBR_MASK,
-	},
-	[S2MPS14_IRQ_ACOKBF] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_ACOKBF_MASK,
-	},
-	[S2MPS14_IRQ_ACOKBR] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_ACOKBR_MASK,
-	},
-	[S2MPS14_IRQ_PWRON1S] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_PWRON1S_MASK,
-	},
-	[S2MPS14_IRQ_MRB] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_MRB_MASK,
-	},
-	[S2MPS14_IRQ_RTC60S] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_RTC60S_MASK,
-	},
-	[S2MPS14_IRQ_RTCA1] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_RTCA1_MASK,
-	},
-	[S2MPS14_IRQ_RTCA0] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_RTCA0_MASK,
-	},
-	[S2MPS14_IRQ_SMPL] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_SMPL_MASK,
-	},
-	[S2MPS14_IRQ_RTC1S] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_RTC1S_MASK,
-	},
-	[S2MPS14_IRQ_WTSR] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_WTSR_MASK,
-	},
-	[S2MPS14_IRQ_INT120C] = {
-		.reg_offset = 2,
-		.mask = S2MPS11_IRQ_INT120C_MASK,
-	},
-	[S2MPS14_IRQ_INT140C] = {
-		.reg_offset = 2,
-		.mask = S2MPS11_IRQ_INT140C_MASK,
-	},
-	[S2MPS14_IRQ_TSD] = {
-		.reg_offset = 2,
-		.mask = S2MPS14_IRQ_TSD_MASK,
-	},
+	REGMAP_IRQ_REG(S2MPS14_IRQ_PWRONF, 0, S2MPS11_IRQ_PWRONF_MASK),
+	REGMAP_IRQ_REG(S2MPS14_IRQ_PWRONR, 0, S2MPS11_IRQ_PWRONR_MASK),
+	REGMAP_IRQ_REG(S2MPS14_IRQ_JIGONBF, 0, S2MPS11_IRQ_JIGONBF_MASK),
+	REGMAP_IRQ_REG(S2MPS14_IRQ_JIGONBR, 0, S2MPS11_IRQ_JIGONBR_MASK),
+	REGMAP_IRQ_REG(S2MPS14_IRQ_ACOKBF, 0, S2MPS11_IRQ_ACOKBF_MASK),
+	REGMAP_IRQ_REG(S2MPS14_IRQ_ACOKBR, 0, S2MPS11_IRQ_ACOKBR_MASK),
+	REGMAP_IRQ_REG(S2MPS14_IRQ_PWRON1S, 0, S2MPS11_IRQ_PWRON1S_MASK),
+	REGMAP_IRQ_REG(S2MPS14_IRQ_MRB, 0, S2MPS11_IRQ_MRB_MASK),
+
+	REGMAP_IRQ_REG(S2MPS14_IRQ_RTC60S, 1, S2MPS11_IRQ_RTC60S_MASK),
+	REGMAP_IRQ_REG(S2MPS14_IRQ_RTCA1, 1, S2MPS11_IRQ_RTCA1_MASK),
+	REGMAP_IRQ_REG(S2MPS14_IRQ_RTCA0, 1, S2MPS11_IRQ_RTCA0_MASK),
+	REGMAP_IRQ_REG(S2MPS14_IRQ_SMPL, 1, S2MPS11_IRQ_SMPL_MASK),
+	REGMAP_IRQ_REG(S2MPS14_IRQ_RTC1S, 1, S2MPS11_IRQ_RTC1S_MASK),
+	REGMAP_IRQ_REG(S2MPS14_IRQ_WTSR, 1, S2MPS11_IRQ_WTSR_MASK),
+
+	REGMAP_IRQ_REG(S2MPS14_IRQ_INT120C, 2, S2MPS11_IRQ_INT120C_MASK),
+	REGMAP_IRQ_REG(S2MPS14_IRQ_INT140C, 2, S2MPS11_IRQ_INT140C_MASK),
+	REGMAP_IRQ_REG(S2MPS14_IRQ_TSD, 2, S2MPS14_IRQ_TSD_MASK),
 };
 
 static const struct regmap_irq s2mpu02_irqs[] = {
-	[S2MPU02_IRQ_PWRONF] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_PWRONF_MASK,
-	},
-	[S2MPU02_IRQ_PWRONR] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_PWRONR_MASK,
-	},
-	[S2MPU02_IRQ_JIGONBF] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_JIGONBF_MASK,
-	},
-	[S2MPU02_IRQ_JIGONBR] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_JIGONBR_MASK,
-	},
-	[S2MPU02_IRQ_ACOKBF] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_ACOKBF_MASK,
-	},
-	[S2MPU02_IRQ_ACOKBR] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_ACOKBR_MASK,
-	},
-	[S2MPU02_IRQ_PWRON1S] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_PWRON1S_MASK,
-	},
-	[S2MPU02_IRQ_MRB] = {
-		.reg_offset = 0,
-		.mask = S2MPS11_IRQ_MRB_MASK,
-	},
-	[S2MPU02_IRQ_RTC60S] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_RTC60S_MASK,
-	},
-	[S2MPU02_IRQ_RTCA1] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_RTCA1_MASK,
-	},
-	[S2MPU02_IRQ_RTCA0] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_RTCA0_MASK,
-	},
-	[S2MPU02_IRQ_SMPL] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_SMPL_MASK,
-	},
-	[S2MPU02_IRQ_RTC1S] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_RTC1S_MASK,
-	},
-	[S2MPU02_IRQ_WTSR] = {
-		.reg_offset = 1,
-		.mask = S2MPS11_IRQ_WTSR_MASK,
-	},
-	[S2MPU02_IRQ_INT120C] = {
-		.reg_offset = 2,
-		.mask = S2MPS11_IRQ_INT120C_MASK,
-	},
-	[S2MPU02_IRQ_INT140C] = {
-		.reg_offset = 2,
-		.mask = S2MPS11_IRQ_INT140C_MASK,
-	},
-	[S2MPU02_IRQ_TSD] = {
-		.reg_offset = 2,
-		.mask = S2MPS14_IRQ_TSD_MASK,
-	},
+	REGMAP_IRQ_REG(S2MPU02_IRQ_PWRONF, 0, S2MPS11_IRQ_PWRONF_MASK),
+	REGMAP_IRQ_REG(S2MPU02_IRQ_PWRONR, 0, S2MPS11_IRQ_PWRONR_MASK),
+	REGMAP_IRQ_REG(S2MPU02_IRQ_JIGONBF, 0, S2MPS11_IRQ_JIGONBF_MASK),
+	REGMAP_IRQ_REG(S2MPU02_IRQ_JIGONBR, 0, S2MPS11_IRQ_JIGONBR_MASK),
+	REGMAP_IRQ_REG(S2MPU02_IRQ_ACOKBF, 0, S2MPS11_IRQ_ACOKBF_MASK),
+	REGMAP_IRQ_REG(S2MPU02_IRQ_ACOKBR, 0, S2MPS11_IRQ_ACOKBR_MASK),
+	REGMAP_IRQ_REG(S2MPU02_IRQ_PWRON1S, 0, S2MPS11_IRQ_PWRON1S_MASK),
+	REGMAP_IRQ_REG(S2MPU02_IRQ_MRB, 0, S2MPS11_IRQ_MRB_MASK),
+
+	REGMAP_IRQ_REG(S2MPU02_IRQ_RTC60S, 1, S2MPS11_IRQ_RTC60S_MASK),
+	REGMAP_IRQ_REG(S2MPU02_IRQ_RTCA1, 1, S2MPS11_IRQ_RTCA1_MASK),
+	REGMAP_IRQ_REG(S2MPU02_IRQ_RTCA0, 1, S2MPS11_IRQ_RTCA0_MASK),
+	REGMAP_IRQ_REG(S2MPU02_IRQ_SMPL, 1, S2MPS11_IRQ_SMPL_MASK),
+	REGMAP_IRQ_REG(S2MPU02_IRQ_RTC1S, 1, S2MPS11_IRQ_RTC1S_MASK),
+	REGMAP_IRQ_REG(S2MPU02_IRQ_WTSR, 1, S2MPS11_IRQ_WTSR_MASK),
+
+	REGMAP_IRQ_REG(S2MPU02_IRQ_INT120C, 2, S2MPS11_IRQ_INT120C_MASK),
+	REGMAP_IRQ_REG(S2MPU02_IRQ_INT140C, 2, S2MPS11_IRQ_INT140C_MASK),
+	REGMAP_IRQ_REG(S2MPU02_IRQ_TSD, 2, S2MPS14_IRQ_TSD_MASK),
 };
 
 static const struct regmap_irq s2mpu05_irqs[] = {
@@ -303,74 +159,25 @@ static const struct regmap_irq s2mpu05_irqs[] = {
 };
 
 static const struct regmap_irq s5m8767_irqs[] = {
-	[S5M8767_IRQ_PWRR] = {
-		.reg_offset = 0,
-		.mask = S5M8767_IRQ_PWRR_MASK,
-	},
-	[S5M8767_IRQ_PWRF] = {
-		.reg_offset = 0,
-		.mask = S5M8767_IRQ_PWRF_MASK,
-	},
-	[S5M8767_IRQ_PWR1S] = {
-		.reg_offset = 0,
-		.mask = S5M8767_IRQ_PWR1S_MASK,
-	},
-	[S5M8767_IRQ_JIGR] = {
-		.reg_offset = 0,
-		.mask = S5M8767_IRQ_JIGR_MASK,
-	},
-	[S5M8767_IRQ_JIGF] = {
-		.reg_offset = 0,
-		.mask = S5M8767_IRQ_JIGF_MASK,
-	},
-	[S5M8767_IRQ_LOWBAT2] = {
-		.reg_offset = 0,
-		.mask = S5M8767_IRQ_LOWBAT2_MASK,
-	},
-	[S5M8767_IRQ_LOWBAT1] = {
-		.reg_offset = 0,
-		.mask = S5M8767_IRQ_LOWBAT1_MASK,
-	},
-	[S5M8767_IRQ_MRB] = {
-		.reg_offset = 1,
-		.mask = S5M8767_IRQ_MRB_MASK,
-	},
-	[S5M8767_IRQ_DVSOK2] = {
-		.reg_offset = 1,
-		.mask = S5M8767_IRQ_DVSOK2_MASK,
-	},
-	[S5M8767_IRQ_DVSOK3] = {
-		.reg_offset = 1,
-		.mask = S5M8767_IRQ_DVSOK3_MASK,
-	},
-	[S5M8767_IRQ_DVSOK4] = {
-		.reg_offset = 1,
-		.mask = S5M8767_IRQ_DVSOK4_MASK,
-	},
-	[S5M8767_IRQ_RTC60S] = {
-		.reg_offset = 2,
-		.mask = S5M8767_IRQ_RTC60S_MASK,
-	},
-	[S5M8767_IRQ_RTCA1] = {
-		.reg_offset = 2,
-		.mask = S5M8767_IRQ_RTCA1_MASK,
-	},
-	[S5M8767_IRQ_RTCA2] = {
-		.reg_offset = 2,
-		.mask = S5M8767_IRQ_RTCA2_MASK,
-	},
-	[S5M8767_IRQ_SMPL] = {
-		.reg_offset = 2,
-		.mask = S5M8767_IRQ_SMPL_MASK,
-	},
-	[S5M8767_IRQ_RTC1S] = {
-		.reg_offset = 2,
-		.mask = S5M8767_IRQ_RTC1S_MASK,
-	},
-	[S5M8767_IRQ_WTSR] = {
-		.reg_offset = 2,
-		.mask = S5M8767_IRQ_WTSR_MASK,
-	},
+	REGMAP_IRQ_REG(S5M8767_IRQ_PWRR, 0, S5M8767_IRQ_PWRR_MASK),
+	REGMAP_IRQ_REG(S5M8767_IRQ_PWRF, 0, S5M8767_IRQ_PWRF_MASK),
+	REGMAP_IRQ_REG(S5M8767_IRQ_PWR1S, 0, S5M8767_IRQ_PWR1S_MASK),
+	REGMAP_IRQ_REG(S5M8767_IRQ_JIGR, 0, S5M8767_IRQ_JIGR_MASK),
+	REGMAP_IRQ_REG(S5M8767_IRQ_JIGF, 0, S5M8767_IRQ_JIGF_MASK),
+	REGMAP_IRQ_REG(S5M8767_IRQ_LOWBAT2, 0, S5M8767_IRQ_LOWBAT2_MASK),
+	REGMAP_IRQ_REG(S5M8767_IRQ_LOWBAT1, 0, S5M8767_IRQ_LOWBAT1_MASK),
+
+	REGMAP_IRQ_REG(S5M8767_IRQ_MRB, 1, S5M8767_IRQ_MRB_MASK),
+	REGMAP_IRQ_REG(S5M8767_IRQ_DVSOK2, 1, S5M8767_IRQ_DVSOK2_MASK),
+	REGMAP_IRQ_REG(S5M8767_IRQ_DVSOK3, 1, S5M8767_IRQ_DVSOK3_MASK),
+	REGMAP_IRQ_REG(S5M8767_IRQ_DVSOK4, 1, S5M8767_IRQ_DVSOK4_MASK),
+
+	REGMAP_IRQ_REG(S5M8767_IRQ_RTC60S, 2, S5M8767_IRQ_RTC60S_MASK),
+	REGMAP_IRQ_REG(S5M8767_IRQ_RTCA1, 2, S5M8767_IRQ_RTCA1_MASK),
+	REGMAP_IRQ_REG(S5M8767_IRQ_RTCA2, 2, S5M8767_IRQ_RTCA2_MASK),
+	REGMAP_IRQ_REG(S5M8767_IRQ_SMPL, 2, S5M8767_IRQ_SMPL_MASK),
+	REGMAP_IRQ_REG(S5M8767_IRQ_RTC1S, 2, S5M8767_IRQ_RTC1S_MASK),
+	REGMAP_IRQ_REG(S5M8767_IRQ_WTSR, 2, S5M8767_IRQ_WTSR_MASK),
 };
 
 /* All S2MPG10 interrupt sources are read-only and don't require clearing */

-- 
2.49.0.604.gff1f9ca942-goog


