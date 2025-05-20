Return-Path: <devicetree+bounces-179010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C62BABE5A6
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 23:03:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8605F1BC33F7
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 21:03:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DF8725E817;
	Tue, 20 May 2025 21:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zwP0ukwn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8336925D20E
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 21:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747774883; cv=none; b=BplJf6jjwFqIxy2vozRdLn6ZHvwU1HnUlyokVPPd85utAWkpwvTpf8xwGufmTOqF6TK/WQ4qIHqlRHLZ9NnZbxEkVW1SA7budB5gCQJMKU1uNKf+/OeY9MBuhtqu76sVgYbRGfKv3tBDMuCF5WzktnxT7mhYrGS0t5qToVZ99Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747774883; c=relaxed/simple;
	bh=TYzqLREmBgexvsz9PZQevnPssE1wDdpicIj5Bnz2/Xc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T0bz9vHJ+sXNOZmCwOosI0zg7qm2jW7n70M++xsf9WfqZmSR7LMJdID4XUNv3DJrFksv1CdBwi1hFb46TTPCt6Q5I8bFJfJPvo/c+xrO240IfG/QsRgOitULnbRL2n11DWxGu2UYYCh1UFYmId+osBMB3pR0Jny1hjuvIMRQQdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zwP0ukwn; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2db78ef7f69so2800532fac.1
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747774880; x=1748379680; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gxw8iLrpNsBvpLOn8gYCJj5pkdF8n5zYuoMcaqPicuE=;
        b=zwP0ukwnWaGA7gcsLDLa114bHZ9C/P7uLkHBqueo/4PfJQVVgU1mgeVylZAQGwdQGA
         vQf35i+rm3Hg0Zbi0NiJo9GT7ynhq4rIi8Lh4xSzLeZK13ganEYG+f6lMGMbGKKLLO7z
         2HJoTUqkh2AgVzWS8KuyJv3c3J+86KF9WiL/9LUbmh4tUPSPbDKYftUM3qjrkgDIMBXf
         f2IqQBCSidlL6arKgvvYdlFBoh+wJsdV298wTfkZc5VCf/PO77WPteBCEmqfCenqZkOa
         WRS84zAH+d0bgoK33FUKQC+JR0WThTEj4IVVWr8bWlUxOUuI+fdIKLBmUvH3iob9TVRD
         u6Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747774880; x=1748379680;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gxw8iLrpNsBvpLOn8gYCJj5pkdF8n5zYuoMcaqPicuE=;
        b=vtYnVIJHb5uI8c7pelzYrfkXU3A9+C6zYpiHyHORO9eRsQTUCBRo1KUhpHrx4C8LMZ
         Rt6Q6Hdx5ufdI9P+JWsJLdDIxHYetkCVFtQfgN3+faflOxufdYzvkH6Hw51cgThKGoCL
         I0PAWLAjVQohcFvYzij78nf9KaU8I8NpgCaWZJXL6mIZyZ9j8jKDHl8QCJIgtTjRBfVP
         G02a9mZuRk3WVUNbZ7q9b7FJqZk8fbSMkPblh3R/WcPiiMyVhu6+oOu5ytX4Z2YoMN++
         5g1mKi+vCPqW3DN8/1A7oUkH4tAPUiHwdNMaHZ0eE189P611bDhHxojxrr12VJNb/ymE
         MFMA==
X-Forwarded-Encrypted: i=1; AJvYcCVNbjrFHR4FRDU3i+zcp3ZEQN9ZBKJuTBXm6ZSy5z9XvGXkjXSyBIM6nnEURMQ70ZyUbvM4xeX56IoF@vger.kernel.org
X-Gm-Message-State: AOJu0Yxkr+FIt/qQirnxxlQ88bgnF7TcMViEiIc0Ok8W7YRepbb1mUgk
	x9dRDS8ROb2wGZ08Td4WaiHojFGFTQtZSEI6hxy74il4cqo5dhYN+SMUAa+snXYVypE=
X-Gm-Gg: ASbGncs23iUbNuyjlzHFYUV5nmu9ddnQQViR/TWUA7MWeD92mkuMZHtBIj75C3nqott
	AX6QqhnlDM2GohHcX8PqGw4RKBYqkveOTgckiB2mmfnV5Q0v4Mr77WZviV++21iE2M4nJH5PiZa
	zq+gsEs+qyyQs3nMC6MS0pmNC6voZvNZH+K/uFpm73JVGi1A3PeQ2GaSBHe2lze0t+S9zQuRq9A
	9H2uO6fRGgnB+XPj5847eSzFKcC2tXQZrSMVBl2QM8TX8cZHTpSFrsyxpX2teo4xKYqzCKUX38s
	rNQgcPwnfq9SqXfNF4nRd+RpPUpV/5dV4oey3fRDbFtyH5nKVB2Sc2ba
X-Google-Smtp-Source: AGHT+IF00yIYVhAM2/2YKzM5Wnk78+0WkOTnvtVFK4tQyxuQ27n2qodJQCyucgUhei6kcsT0uasO0A==
X-Received: by 2002:a05:6870:b008:b0:2c1:5fe3:22eb with SMTP id 586e51a60fabf-2e3c1c09f18mr10511704fac.15.1747774880410;
        Tue, 20 May 2025 14:01:20 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:d77b:6acc:2ad1:8ff])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2e3c0b2e1a7sm2348470fac.48.2025.05.20.14.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 14:01:20 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 20 May 2025 16:00:46 -0500
Subject: [PATCH 3/3] pwm: axi-pwmgen: add support for external clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250520-pwm-axi-pwmgen-add-external-clock-v1-3-6cd63cc001c8@baylibre.com>
References: <20250520-pwm-axi-pwmgen-add-external-clock-v1-0-6cd63cc001c8@baylibre.com>
In-Reply-To: <20250520-pwm-axi-pwmgen-add-external-clock-v1-0-6cd63cc001c8@baylibre.com>
To: Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Trevor Gamblin <tgamblin@baylibre.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1679; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=TYzqLREmBgexvsz9PZQevnPssE1wDdpicIj5Bnz2/Xc=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoLO2VEzZ73OwL8J3QkRirtbm0l9ISQHAAbUU4Y
 L5+krhSA2CJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaCztlQAKCRDCzCAB/wGP
 wE/MB/9mrWrsGJWOY3mwNNW4D7EgEd8x2+e3B7rIxSQrzo4cFpRkXRTGMy0DagpmffQW20PReB1
 YxaXDGUK9QVU8bZxz8yvgTKNnTjL2nDig9jy+W2DDJpuaoaq5L/qxfvs49XdAld9whrf82dY7SJ
 9EHOpJolxK47UiogFJ86R5zMJYct6Nqi7UvlamccaE9obqr1eHyCuxdTObW3OkzqsU0qXhWI3wd
 i/XapIbOqjhkHIn/Omj3DVtaLcmkJQWxteflYg9phlrtAY9Up9HNIDC4SaoE9NQ5MOUDF/BETS0
 vD3K84mDiSQeNuZVtpRrBdENunazADiVxqFZONJA6QBPSji1
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Add support for external clock to the AXI PWM generator driver.

In most cases, there is a separate external clock that drives the PWM
output separate from the peripheral clock. This allows enabling both
clocks.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/pwm/pwm-axi-pwmgen.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-axi-pwmgen.c b/drivers/pwm/pwm-axi-pwmgen.c
index 4337c8f5acf055fc87dc134f2a70b99b0cb5ede6..67992a7561ec0440b1c1fa327f844a0602872771 100644
--- a/drivers/pwm/pwm-axi-pwmgen.c
+++ b/drivers/pwm/pwm-axi-pwmgen.c
@@ -280,9 +280,26 @@ static int axi_pwmgen_probe(struct platform_device *pdev)
 	ddata = pwmchip_get_drvdata(chip);
 	ddata->regmap = regmap;
 
-	clk = devm_clk_get_enabled(dev, NULL);
-	if (IS_ERR(clk))
-		return dev_err_probe(dev, PTR_ERR(clk), "failed to get clock\n");
+	/* When clock-names is present, there is a separate ext clock. */
+	if (device_property_present(dev, "clock-names")) {
+		struct clk *axi_clk;
+
+		axi_clk = devm_clk_get_enabled(dev, "axi");
+		if (IS_ERR(axi_clk))
+			return dev_err_probe(dev, PTR_ERR(axi_clk),
+					     "failed to get axi clock\n");
+
+		clk = devm_clk_get_enabled(dev, "ext");
+		if (IS_ERR(clk))
+			return dev_err_probe(dev, PTR_ERR(clk),
+					     "failed to get ext clock\n");
+	} else {
+		/* Otherwise, a single clock does everything. */
+		clk = devm_clk_get_enabled(dev, NULL);
+		if (IS_ERR(clk))
+			return dev_err_probe(dev, PTR_ERR(clk),
+					     "failed to get clock\n");
+	}
 
 	ret = devm_clk_rate_exclusive_get(dev, clk);
 	if (ret)

-- 
2.43.0


