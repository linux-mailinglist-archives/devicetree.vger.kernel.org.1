Return-Path: <devicetree+bounces-78196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EC4911685
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 01:14:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 69F6FB20E7E
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 23:14:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 019A9150987;
	Thu, 20 Jun 2024 23:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qwxekNTJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6C4149C65
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 23:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718925224; cv=none; b=nqYHaL3vSx53oZeE7y+qFzOE1lKICu3CYu5jxbBSqDDXapYyk2FHF8E4aDOJtyazIFk5rSlPAlLDkK99vkByovkKn+08ODUoxsA/8DYggeNNEgR9lSFW8i0wfHU3XhpicNIthB8ESdanuA0YmiH7Tj9qmzqNT1rTH+Ne01vBXbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718925224; c=relaxed/simple;
	bh=XEqdsVE48Lph9B2nh3iuLDFkzRd3MmpOXZcupNT95pk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tcDGGbKamfWWNB88qvZe6UGeQm5pujHysQlcKpbDKu1qGDhRxyJTgboaPwXxwIwGhgwbYYfoKfQwEygEusawz6EPfLlYkyLzC1F7Cl1ofN8tNgBb2ZguD/pMZzT17dDGn1h0EW5RaeJfglY0bWJZ3OPkFwsQQCBm4okkRn+3V7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qwxekNTJ; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-24c9f6338a4so744862fac.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 16:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718925222; x=1719530022; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xx9yiqfqGQhoL/OQzBJX0T4MbHx9pH2R2+We+nfV8yc=;
        b=qwxekNTJd0Q1PBUbF3u1bwPLHgotOIn4MXBzxsbe8mMIh05yuW5+6xzKvivl+gHPm6
         wxo21d9/5UqsgnQhYyyXRcTOxBtdt/bsEkabSNpZThOQ4JYmeT5CIeA/sAeysjs3yE+2
         F1gtmndQmHIKA4RMXYIKReKj0Cq2kB7nutm2XOo9A0uUlYrVD22Q7EUtIebYWu4NK0i6
         UMv5c7DKeaBxVn7l4PF7nPbYBXJ3OArcXUPb5/qczqo7HdUrCroGJ1mXLqRvGurVZkdk
         iyq1ZJGQI1Rw7FijTUfk0ybW7fvuEfiViv2s89xkjdtfZW/Jiu19CiCmkudELdDDDd1/
         lqfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718925222; x=1719530022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xx9yiqfqGQhoL/OQzBJX0T4MbHx9pH2R2+We+nfV8yc=;
        b=FJt/qMKMh2oCiz/ho5zOqcq8gnHxTxLD9t46v6fH/rj9F7PrJg05IZGpQpXM/1WJ0z
         PXwv9RVTM0AvoS5EK3pHlzh+t9mxKX2XECNZ/2SnQXd6dcNOUn5WfRC+moIws0qoJNlb
         cl3bZWtALep9Wa++YXmA7lCpzvjh5d4J7wtb4WWyjD+ZkEUEODRZUsBRnrifjZzOuZPT
         LDGp3b2ARUMCSaAiaYt9Rv+2JdvRzGjPLmXm7NCFQw4kLCAu0oSCeLHvFWN0dyiYiGn0
         ryQwCHTbM4LC014Pu5w37XLL6s4cB7DPysUuEJPKFAcCEvyuFQ5nv6Cff8g6lcuFWkgI
         EE3Q==
X-Forwarded-Encrypted: i=1; AJvYcCV1xp3XqyoJb+7jCs5y0MUSikwteefVj4YFfgq88kVEn9nXrvK4d7mJx1CsEY2TQLoMNSsF+hSXr8j5Ap0K+XAszTfTsA9BtFmufQ==
X-Gm-Message-State: AOJu0YyiqaYdYpmuo8w5H+7WbmFF6t3VeanZRT52CsXeDUnviC+Wdy9d
	iImfNd284xpLgoR9OyCsjhm4g3a+LarS7TWWM76xPTjI44FZrkzpiqRao0Rxz2w=
X-Google-Smtp-Source: AGHT+IG8lAKtWiSgYIqlkSt41d/qaNiahUHwFKBCRi2rphALIUFAjgt4BUmpmumuwrlgNLH0oGwTwA==
X-Received: by 2002:a05:6870:c111:b0:254:ada1:aa29 with SMTP id 586e51a60fabf-25c94a22a97mr8080798fac.27.1718925222389;
        Thu, 20 Jun 2024 16:13:42 -0700 (PDT)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-25cd49d18absm131302fac.25.2024.06.20.16.13.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 16:13:42 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-samsung-soc@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/6] hwrng: exynos: Use devm_clk_get_enabled() to get the clock
Date: Thu, 20 Jun 2024 18:13:36 -0500
Message-Id: <20240620231339.1574-4-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240620231339.1574-1-semen.protsenko@linaro.org>
References: <20240620231339.1574-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use devm_clk_get_enabled() helper instead of calling devm_clk_get() and
then clk_prepare_enable(). It simplifies the error handling and makes
the code more compact. Also use dev_err_probe() to handle possible
-EPROBE_DEFER errors if the clock is not available yet.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Anand Moon <linux.amoon@gmail.com>
---
Changes in v3:
  - Added missing '\n' in dev_err_probe()
  - Added R-b tag from Krzysztof
  - Added R-b tag from Anand

Changes in v2:
  - No changes (it's a new patch added in v2)

 drivers/char/hw_random/exynos-trng.c | 21 ++++-----------------
 1 file changed, 4 insertions(+), 17 deletions(-)

diff --git a/drivers/char/hw_random/exynos-trng.c b/drivers/char/hw_random/exynos-trng.c
index 266bdad84f3c..997bd22f4498 100644
--- a/drivers/char/hw_random/exynos-trng.c
+++ b/drivers/char/hw_random/exynos-trng.c
@@ -134,32 +134,23 @@ static int exynos_trng_probe(struct platform_device *pdev)
 		goto err_pm_get;
 	}
 
-	trng->clk = devm_clk_get(&pdev->dev, "secss");
+	trng->clk = devm_clk_get_enabled(&pdev->dev, "secss");
 	if (IS_ERR(trng->clk)) {
-		ret = PTR_ERR(trng->clk);
-		dev_err(&pdev->dev, "Could not get clock.\n");
-		goto err_clock;
-	}
-
-	ret = clk_prepare_enable(trng->clk);
-	if (ret) {
-		dev_err(&pdev->dev, "Could not enable the clk.\n");
+		ret = dev_err_probe(&pdev->dev, PTR_ERR(trng->clk),
+				    "Could not get clock\n");
 		goto err_clock;
 	}
 
 	ret = devm_hwrng_register(&pdev->dev, &trng->rng);
 	if (ret) {
 		dev_err(&pdev->dev, "Could not register hwrng device.\n");
-		goto err_register;
+		goto err_clock;
 	}
 
 	dev_info(&pdev->dev, "Exynos True Random Number Generator.\n");
 
 	return 0;
 
-err_register:
-	clk_disable_unprepare(trng->clk);
-
 err_clock:
 	pm_runtime_put_noidle(&pdev->dev);
 
@@ -171,10 +162,6 @@ static int exynos_trng_probe(struct platform_device *pdev)
 
 static void exynos_trng_remove(struct platform_device *pdev)
 {
-	struct exynos_trng_dev *trng = platform_get_drvdata(pdev);
-
-	clk_disable_unprepare(trng->clk);
-
 	pm_runtime_put_sync(&pdev->dev);
 	pm_runtime_disable(&pdev->dev);
 }
-- 
2.39.2


