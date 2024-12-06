Return-Path: <devicetree+bounces-127955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E569A9E6CE2
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:14:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F79C282562
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE5E91FF7C0;
	Fri,  6 Dec 2024 11:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="KTyk/JTS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD6571FF604
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 11:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733483642; cv=none; b=Ohjb/ACek2PigsNoR4MZwnQAJTPkDGFN91e4X4pz8fO7ClPcZTuyAPYUJ5MR0bFZQdz/rh+xxkpUvvF5fwTFolerkokZIQnWZX4LKM1NnHCp4ghrqWcdzAP3DJ2G0uhLvlNFrIzNROveVWxpVA+h/jAjm3ws4DbVqd1HRLGshww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733483642; c=relaxed/simple;
	bh=pFeVqwq5TdQjxpLyK7iTM1W+bmcdyJjKWS9gDr7aPgY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ggy4/RgjkKDat6tP40cVxSo4iw0mWHzllHOMtgmQVpzpEsmME6NzVI2qWjZ+Z8gOmvoxCDVQXQS2BzQX8esy6c/UYZIOuLniBZHGtPxzfkjmIN7PHIHsU6OhTgd94FjilVpaqd31rPOfd1Swy6OnBQdgJwBgXNSLBaWJPwpmJQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=KTyk/JTS; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5d2726c0d45so2450646a12.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 03:14:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733483639; x=1734088439; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IF+3d6YLoFd8ymBLjEJf+CI6Y+EI/atf0HIxguIiGOc=;
        b=KTyk/JTSj84SQaukd1UW5/e2pUXUmY4LMfK3scIgA5GUK5NXxh1JUjIOy2mvdCKPoc
         4RUOzTCk5ejmI4TMxPI3IwlvgJjccg1KUm6GMuMzUzjZc+HWNEj8NwF8fse4+ucyoKg+
         SDm/FliQmJHkw1u9yJtjMtAyvUjx/EsHww0B4qy5WoTGpkUDAnvI4fQqEhQthyRwxEDM
         5gkzMPLMBvwF4AkmMYF59/a3vKFgNjklGsCTjrJYjkFXemCR2JL54Trv7bbgoyuMxm0Y
         FUD3dKOJMLvLka7DIOiO+PwSXNGSqFFeDqWAWM2CHIwKpRHFdvsze5IgCdmo6d+gZSaW
         we4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733483639; x=1734088439;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IF+3d6YLoFd8ymBLjEJf+CI6Y+EI/atf0HIxguIiGOc=;
        b=UU3lNxAZ6sLQ9wmohFvZtIUwpfTRA/Wcds3YhhigbfnnJe9CmMGUrDiEp/lW8GM3Ti
         pmBnAW2t9PGg6SrGy8EMvvE6YUE9ckUHSYkNXy+rL1mTfB/pCYo9UO5xN5Chff9YWmF/
         QW0x2wsdFGfANr7CuvPXXHjmL0WRWYQEHjoozb+UcKNJpaWo7BK2k2gzxbcL94fo/SPV
         CO4+xPssudb3QXEzLoF+Yd5NbjqelRckMB+ejwhoYP36xYbcQq18YOVK011CrAQH7WjE
         pPISQ5tJdnT+M0t4upybpbYhOy4paejXcWOuC4UDXHsVMO6OGGxPNOmLAeFPXj6iwUIU
         1ZWw==
X-Forwarded-Encrypted: i=1; AJvYcCVVbN1sbZwzqUWHm95a4VRVtrx6RAYeA+wUWndln7FP9jJMXNMI1SIKjqxtAikz33pRcQj4/p76/q7N@vger.kernel.org
X-Gm-Message-State: AOJu0Ywap4PdcwOW8lQZZI0CO0lYTg+10Ls32Jv65GEk0X5LP1g0wtMg
	2Z5Rg6I9NGR1Xal4QcGAc6V1I6iUc6E8d7Vw5sJu/m7lkQyrlEu31kVMvtRuHwA=
X-Gm-Gg: ASbGncsi8+Pg5fmyyUV20mRfmjrDrjc5HIPUswZ3JIeAdPLGXbKaiXVLcgWGCGn/On9
	pxrrZwQGq+rYMGsQ98+kS1riCUChIf9N71REYeUalcmkwH+lOrmYVwjeemj17KGk2CPGxi1L1tp
	2Oxh985VYvGPRTT2i2d3W+/azWlU0vKYvGGbcFZf10Qw9+TBBu+bs6u0/htLKFkvtPCjSrtqykx
	mtEJPNCVD/1O/zowLYr3TKcZOSqvpAOLM9ngXSKQPmMJfwlERSaqCp/bjIYDSfl5QVcd5pN5RfW
	sQ72
X-Google-Smtp-Source: AGHT+IE8/6k5bsY8E9y5ISlKPNleG7y4yY/FFLd5nbbFNGCG10Rgtm0MhHvZLaSwwmr1LC62i+/LQg==
X-Received: by 2002:a17:907:3a57:b0:aa5:1cdf:7bb1 with SMTP id a640c23a62f3a-aa63a03afedmr192091466b.24.1733483639246;
        Fri, 06 Dec 2024 03:13:59 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eee2a6sm226877866b.90.2024.12.06.03.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 03:13:58 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: prabhakar.mahadev-lad.rj@bp.renesas.com,
	jic23@kernel.org,
	lars@metafoo.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-iio@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 03/15] iio: adc: rzg2l_adc: Use devres helpers to request pre-deasserted reset controls
Date: Fri,  6 Dec 2024 13:13:25 +0200
Message-Id: <20241206111337.726244-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241206111337.726244-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241206111337.726244-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Starting with commit d872bed85036 ("reset: Add devres helpers to request
pre-deasserted reset controls"), devres helpers are available to simplify
the process of requesting pre-deasserted reset controls. Update the
rzg2l_adc driver to utilize these helpers, reducing complexity in this
way.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- rebased on top of patch 2/15 from this version
- used "failed to get/deassert" failure messages

 drivers/iio/adc/rzg2l_adc.c | 37 ++++++-------------------------------
 1 file changed, 6 insertions(+), 31 deletions(-)

diff --git a/drivers/iio/adc/rzg2l_adc.c b/drivers/iio/adc/rzg2l_adc.c
index 8a804f81c04b..c0c13e99aa92 100644
--- a/drivers/iio/adc/rzg2l_adc.c
+++ b/drivers/iio/adc/rzg2l_adc.c
@@ -411,11 +411,6 @@ static void rzg2l_adc_pm_runtime_set_suspended(void *data)
 	pm_runtime_set_suspended(dev->parent);
 }
 
-static void rzg2l_adc_reset_assert(void *data)
-{
-	reset_control_assert(data);
-}
-
 static int rzg2l_adc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -448,34 +443,14 @@ static int rzg2l_adc_probe(struct platform_device *pdev)
 	if (IS_ERR(adc->adclk))
 		return dev_err_probe(dev, PTR_ERR(adc->adclk), "Failed to get adclk");
 
-	adc->adrstn = devm_reset_control_get_exclusive(dev, "adrst-n");
+	adc->adrstn = devm_reset_control_get_exclusive_deasserted(dev, "adrst-n");
 	if (IS_ERR(adc->adrstn))
-		return dev_err_probe(dev, PTR_ERR(adc->adrstn), "failed to get adrstn\n");
-
-	adc->presetn = devm_reset_control_get_exclusive(dev, "presetn");
-	if (IS_ERR(adc->presetn))
-		return dev_err_probe(dev, PTR_ERR(adc->presetn), "failed to get presetn\n");
-
-	ret = reset_control_deassert(adc->adrstn);
-	if (ret)
-		return dev_err_probe(&pdev->dev, ret, "failed to deassert adrstn pin, %d\n", ret);
-
-	ret = devm_add_action_or_reset(&pdev->dev,
-				       rzg2l_adc_reset_assert, adc->adrstn);
-	if (ret) {
-		return dev_err_probe(&pdev->dev, ret,
-				     "failed to register adrstn assert devm action, %d\n", ret);
-	}
+		return dev_err_probe(dev, PTR_ERR(adc->adrstn), "failed to get/deassert adrst-n\n");
 
-	ret = reset_control_deassert(adc->presetn);
-	if (ret)
-		return dev_err_probe(&pdev->dev, ret, "failed to deassert presetn pin, %d\n", ret);
-
-	ret = devm_add_action_or_reset(&pdev->dev,
-				       rzg2l_adc_reset_assert, adc->presetn);
-	if (ret) {
-		return dev_err_probe(&pdev->dev, ret,
-				     "failed to register presetn assert devm action, %d\n", ret);
+	adc->presetn = devm_reset_control_get_exclusive_deasserted(dev, "presetn");
+	if (IS_ERR(adc->presetn)) {
+		return dev_err_probe(dev, PTR_ERR(adc->presetn),
+				     "failed to get/deassert presetn\n");
 	}
 
 	ret = rzg2l_adc_hw_init(adc);
-- 
2.39.2


