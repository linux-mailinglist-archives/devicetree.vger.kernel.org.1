Return-Path: <devicetree+bounces-77257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CE29E90DDA3
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 22:46:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76DFD1F247EA
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 20:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6429D17E441;
	Tue, 18 Jun 2024 20:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tFfjpUMC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F09D176AB5
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 20:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718743530; cv=none; b=IF2fPY4vHMBW4AE+o+4PZsYqhapdtlMZ/xv+PeNPsxfoHO4g8gI7rHMZVl4jdyI2CqSe1Boo58GE9j250QQjGPVnBkBofjh+S1Xy6UKBdoWCn8Q5XU9N5VxxxpJhivPhPqxHSP+/9Ctcy9CLazPsqJq9h0o3uiiCi3VeoWRZQi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718743530; c=relaxed/simple;
	bh=sT0sL+RgnVg+AcQBnBOs3VMjWsZ2hzrqXKz/8cJCc5Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bv+P0Qi1yFdzq8r/1fY7Vbqq1x+5zEPLG39MjdTIQZg1uHhP9vdVSf6MmemPLTs1JWmU+7gyoToH5L3rq2EQF3Ensfz7VrDBQfk7oCTKBqu0c7e3n6Nef2pUCpjOzArop+D4mwkavE3wzT/kPujTbbivF1M+nD21ikRZFJ/lB/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tFfjpUMC; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6f980c89db8so3239569a34.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 13:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718743526; x=1719348326; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0aRxOAD2Qgk5Lly7g3t86NVGFyqjyCN/MyLZiIAVgHs=;
        b=tFfjpUMCoTEIxTtYITK2ouVif7oQGDFsXuGPjH5Z2yG/pst/U9bLYzawApH1QPvjY+
         jMH2f/umE6iK9aSiNKWSAOitylJDmkzJ4+oX+Qgd3OUhRVNVshWc0Sv352thIostt54N
         +d1INApBiKOKOCKxVeG/Sy7A90BACt+TumHrMNxkuf+6To+2CyQS1/5iO2XkbNw5ydqG
         rE8mF+AAo1xoil1fssubZ2Dk2XY+LJVnf0gzDUq6iGBYMyVv6hGM9OwTJuy0B8IVpVEb
         nIq+TQ0GR4aMTEq7236TuTD5hrptq08T6dzcVpXoxvwB+4xuxnUmn+iUmOCc4I3zY2fA
         /oVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718743526; x=1719348326;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0aRxOAD2Qgk5Lly7g3t86NVGFyqjyCN/MyLZiIAVgHs=;
        b=qqnmAA7BbULLK+KVTeqz3g/EPE+qz+N4A+Qkdc8rgRDHRToOS7uHQOnCku1uWCzB69
         tvmpnyRUcjpKppjYIcWyF4vIicxg0NrLfcqq+QYgx7Sjk/ptJz3X1Hd2nt6VIiLMDQL4
         GCKrhCk/7Wkp39Ccn1mQ4CGwy/560XlyugmU+NK6eNe/lhajKGd1R4f86PN64sOH+UNP
         /HWMDwRjtiUKBa6u2tA2MVHBI0H+rVbdqSb9PAD0YqDKsqnWti0tP71Rxi8qu6gHlNTW
         rpQ6CABc/9RtBuxf4bh1f8+7dx4vFtm6jot3TzdFPGwmg/U2nxvb0yyymEGB6GUvp6Pa
         18eA==
X-Forwarded-Encrypted: i=1; AJvYcCXsWuqlUkRZklyn+OkCC5K5sKxvLhUFrN/o49bxhAKUGcgE9YkRiR/qkpuwiLxyPah8pY/hx/S7Hxf67X5qV++m+8iGmkViKa/z1w==
X-Gm-Message-State: AOJu0Yw3y75gN74OmZHrIMsrpijVZzd7MRY7D84FkTPuuAmrV2/fZe7v
	zUa467luQIi2Ju/FwIsnXux8U+3hhsMTG9md0BdwvkUsjrC+TBxtop8JB0E+f0w=
X-Google-Smtp-Source: AGHT+IFsyuXPTcRk/B3lUM1O8/TQZfkRs+GDfXqj2NsRA9yWpG9ZWVrUspoi5rnxH+NBKKi8Gu9VmQ==
X-Received: by 2002:a05:6830:1d91:b0:6f9:c989:261c with SMTP id 46e09a7af769-700766349damr883708a34.33.1718743526611;
        Tue, 18 Jun 2024 13:45:26 -0700 (PDT)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-6fb97051e68sm1692599a34.80.2024.06.18.13.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 13:45:26 -0700 (PDT)
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
Subject: [PATCH v2 3/7] hwrng: exynos: Use devm_clk_get_enabled() to get the clock
Date: Tue, 18 Jun 2024 15:45:19 -0500
Message-Id: <20240618204523.9563-4-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240618204523.9563-1-semen.protsenko@linaro.org>
References: <20240618204523.9563-1-semen.protsenko@linaro.org>
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
---
Changes in v2:
  - No changes (it's a new patch added in v2)

 drivers/char/hw_random/exynos-trng.c | 21 ++++-----------------
 1 file changed, 4 insertions(+), 17 deletions(-)

diff --git a/drivers/char/hw_random/exynos-trng.c b/drivers/char/hw_random/exynos-trng.c
index 88a5088ed34d..91c210d80a3d 100644
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
+				    "Could not get clock");
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


