Return-Path: <devicetree+bounces-76801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B8890C083
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 02:40:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32AB4B229B9
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 00:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E5B91CF92;
	Tue, 18 Jun 2024 00:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PUtLX58D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1D014295
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 00:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718671069; cv=none; b=azbfObYaxbuYGnddN/2Yi8LRR2bM79ukiQN2I8KffvmzVAyXZLeaF4y/jLPVW2R4q5eVZ5XEJN1L8vJXHVYjmoozH8svjsebsMSa1dR7LB6D1cEHrDjmDA1cM1bauluH10rQajI52gi/LsZJEP0AtYv1SobFDP0p12l3vet4lq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718671069; c=relaxed/simple;
	bh=0XLUBor4Wy71S2SW7ou5JiqldczfvtidDdV09ttw2Rs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rXNfjp5ZU6gMkrWwjdM51fS9uxiKKUrz/kTrgFXf6gpN9jrSPUbJwe2tXsmEQQFnBnDCWvWRCABbbW32+Tf95LqBn661UfcOfoL+6GVk5s4iwT1EEHhk47+OYuZw+8Gd2C6Gu6WRoclb9jvrz927AlLA8Jg8yfBX8fLG0W/Enew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PUtLX58D; arc=none smtp.client-ip=209.85.161.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-5b970e90ab8so2783606eaf.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 17:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718671066; x=1719275866; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UzEHeTFimKuQQxWwyrDcO+o5XCit+aZv+PnU9elFrsI=;
        b=PUtLX58DR5JgYvbCN1BHnB4DgXLXwGGYlNMeOGwGirio4667qdNIOIl2XkJdnkSYIf
         pwdgVyAmm5v4Zgubw9YM0UFkfKqa2ulzl0xMtZUwTTBRsOl8x2XzHHOIRGds6kanf32D
         w0AF0YmES4sqUq/Pvoz0eUnjwv/P3PyJh2JymMfeAZMv3ExNJSmu/5RLubFZ+gE0AIXx
         iqu/gyZjvIer1r74nyiiXUoDoHLSc2rsajJZ+pT4gyNmNI+1IBop0g5dAZ01GqPPwsj8
         puWx4E5QqDprxCeH72wROcvdrOE4q7SvGcpRwJooDiUDsSCTmWxshzmhup2xXJXcvWkw
         fFpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718671066; x=1719275866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UzEHeTFimKuQQxWwyrDcO+o5XCit+aZv+PnU9elFrsI=;
        b=dc0DuJKNnGzbeASCDpzACPl89M0TBnh7XJ9mj/yfZJ1BZ03ezhHy/HCHd02VuoXnBj
         tUfXqK2XzAOsrGwxLihVJfjwJ8s+idtlJXjGfVcY/VQW1zo2zeYC7da6AqMbFF/C/Zg8
         KX3/VD2hSjnwwdeB5u5m4JTyEBKTHoT34Au/9k2tckUOwjiybgpKK7VzLQboe6jGyVt2
         twmfZIm5mPYH2YUsT7K1PfILoasBYo2LhyKMxt/yJq+py3z/C31In4Nx2kOnEBmRYsVn
         28HTdRexFTUAGwuKs7PMwh0sqQEUKgt60d2ZXUTGgzdhNecz2fHqIvLxlEbVZO6KWpnJ
         5cxA==
X-Forwarded-Encrypted: i=1; AJvYcCWx9Xio+tLUu7jVSFy0BNPgNfbbX483OfeepVopveYSQHYea+0EG6E/d5zJU85VrU77cGm5pGRqv09oXcFNFi4iD/0diUgNTiYHRA==
X-Gm-Message-State: AOJu0Yxsk1WzTUgJ+qJy1HqrNKf++uyewsUyVXlSXPZOsRe6RNzgmPr5
	2hdFXo6h6vI0WTmPXH9jJn5cnrZTtimi2qWLH6PWeMHckW2apawZMi8jwSW3N3E=
X-Google-Smtp-Source: AGHT+IGfQPJkGUEmf7bvL5EHIQMFh2lzC9gdoJFes+mvAbebBn2gmOigq0ygMHUP4CBQUyY/zDxPJA==
X-Received: by 2002:a05:6820:80c:b0:5ba:f20c:361b with SMTP id 006d021491bc7-5bdadc84948mr13508706eaf.8.1718671066504;
        Mon, 17 Jun 2024 17:37:46 -0700 (PDT)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5bd5f2a1801sm1216364eaf.37.2024.06.17.17.37.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 17:37:46 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-samsung-soc@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/7] hwrng: exynos: Implement bus clock control
Date: Mon, 17 Jun 2024 19:37:40 -0500
Message-Id: <20240618003743.2975-5-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240618003743.2975-1-semen.protsenko@linaro.org>
References: <20240618003743.2975-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some SoCs like Exynos850 might require the SSS bus clock (PCLK) to be
enabled in order to access TRNG registers. Add and handle optional PCLK
clock accordingly to make it possible.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 drivers/char/hw_random/exynos-trng.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/char/hw_random/exynos-trng.c b/drivers/char/hw_random/exynos-trng.c
index 88a5088ed34d..4520a280134c 100644
--- a/drivers/char/hw_random/exynos-trng.c
+++ b/drivers/char/hw_random/exynos-trng.c
@@ -47,7 +47,8 @@
 struct exynos_trng_dev {
 	struct device	*dev;
 	void __iomem	*mem;
-	struct clk	*clk;
+	struct clk	*clk;	/* operating clock */
+	struct clk	*pclk;	/* bus clock */
 	struct hwrng	rng;
 };
 
@@ -141,10 +142,23 @@ static int exynos_trng_probe(struct platform_device *pdev)
 		goto err_clock;
 	}
 
+	trng->pclk = devm_clk_get_optional(&pdev->dev, "pclk");
+	if (IS_ERR(trng->pclk)) {
+		ret = dev_err_probe(&pdev->dev, PTR_ERR(trng->pclk),
+				    "cannot get pclk");
+		goto err_clock;
+	}
+
+	ret = clk_prepare_enable(trng->pclk);
+	if (ret) {
+		dev_err(&pdev->dev, "Could not enable the pclk.\n");
+		goto err_clock;
+	}
+
 	ret = clk_prepare_enable(trng->clk);
 	if (ret) {
 		dev_err(&pdev->dev, "Could not enable the clk.\n");
-		goto err_clock;
+		goto err_clock_enable;
 	}
 
 	ret = devm_hwrng_register(&pdev->dev, &trng->rng);
@@ -160,6 +174,9 @@ static int exynos_trng_probe(struct platform_device *pdev)
 err_register:
 	clk_disable_unprepare(trng->clk);
 
+err_clock_enable:
+	clk_disable_unprepare(trng->pclk);
+
 err_clock:
 	pm_runtime_put_noidle(&pdev->dev);
 
@@ -174,6 +191,7 @@ static void exynos_trng_remove(struct platform_device *pdev)
 	struct exynos_trng_dev *trng = platform_get_drvdata(pdev);
 
 	clk_disable_unprepare(trng->clk);
+	clk_disable_unprepare(trng->pclk);
 
 	pm_runtime_put_sync(&pdev->dev);
 	pm_runtime_disable(&pdev->dev);
-- 
2.39.2


