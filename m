Return-Path: <devicetree+bounces-233747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DF514C2522E
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 14:00:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D7C5D4F4A64
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:56:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45B1534B18E;
	Fri, 31 Oct 2025 12:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jdWOXJDE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5F2348472
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761915369; cv=none; b=B28vV9mgGRSvs5/hClyx0kOMs/YoW39FW6Fx4qsffyerq1M3O3NXUKhV5BCcOuVcFAO22KaIrU39GpLNWI6VnYJf4qLAgFfPDrCWrJrrdEPpVUJBbi+2bDrt8KG7TOkI8CRNFGtvEI+RKEo1yNdrsr7DzArprhffJIdbEnBwZ18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761915369; c=relaxed/simple;
	bh=WFBXv1nyzbfw8zq+ghHGpCgVYngil2VfWMf3BgFxbsY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tik5rX/NGCIwm1bRi6tAOheJkecIX/fvTdAe7rLLmqY1S3ycKEeoEyucNTpJ2mWCQUaESZ72RhfXf4FSH+XxvR7FjyO3IbpNGyv09jcXkXU+Wi7e+w94wQiofr7ko9CWpRs4eH/z3hFiRiaeUb98Ij02LjdfwrI42LKLN7Jt6ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jdWOXJDE; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-475dc6029b6so22550505e9.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761915365; x=1762520165; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2aK59j1ErAGwj9CcBo7BjIb+jh09BV6QpI7OzF04L64=;
        b=jdWOXJDEhd9eeoNjdGpp1fAXiV3cgrkB/4C5XpEHfmqRWK8rgIzCJMulprjgEBQRqN
         pAkHlPB6ffQw0uu9Z/UDwuBzNoJbUL2PWzhJJKCxweI9zvIwm5awXnrDZkZ08nZaRmBH
         nGQZPJm9ShEHXwitNyoQviD6E8j+LEGmzHzE1V/71Szdfut4WKXnqdpO7NsMxuNEZP3P
         S/Msx2sruPdUhsSEk7pUmX2Ov9mlbD0nJ/gnxyUg1hHkJ70famCb8JgQEpbBxDjPKbY3
         J7wmvvBq10Lv8paIBs/d517S54ppbK8T8CJylcU8AOzKn0QbR3xWGZ54KDZF/Q8479xm
         E5Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761915365; x=1762520165;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2aK59j1ErAGwj9CcBo7BjIb+jh09BV6QpI7OzF04L64=;
        b=EXnq2hDwLuNeOBZgPN9BiO1KWLLrtdRvSNXYrQ8H3njHBMHjettLyCAyxc7oPpUCNR
         nWK7u4nYcbAU/adAvNs+/YfVlznCBiknvbfzdWthuwjVgI4Qm0RqIHbRq6lkqzjozngx
         YuZS+SnD3DJEaLIJmpDgOxrDnUXk2cF2IWJEzsQB4FEGxDF+ECWExiP67UEtPIE6iwvN
         yTs4dItACA+hYiBUTW+SdizcHzNLaju7DtVXg5neFGSwxBaI60D3DFMe6VTDbH3IFEto
         ezCHGMBrX8Pa6N1xqO2o+UF550XY+sVv5qMPbPm2z+VX9yO9MGGoBOQc69PJCpbq6Izu
         cwMg==
X-Forwarded-Encrypted: i=1; AJvYcCXDm8XeiP1lihkAMcf3ufUDpySeGbXSnx98Xiy72ejBNcE8q768ZzKkVNmCrvFthBVqL6SnqbBnuBpo@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx89BRR3Te36CZCKljUehfZTHrL5mZ/A+TWOWp2i8YfBT9GntY
	XNz+sbsLC7AtlpVz/ohF8f6oVk3KadIUhFg2/dO5z6jRnsYXapMKBlgh0etjPpbWOWk=
X-Gm-Gg: ASbGnct2jx4bXJZbbFb0FUgTQVObP7hfS80zlgqx3fggvmb8jYoZ2qvfMPsz9B1hv8k
	LuRjpx1xloNIKT7zf+/U37+RMcB73hceoYjvR6YGmYP4w/CAKesRfMM9ElQIdND2C90v5vgLOO9
	H13RXVdnyllKxyG88IXv13sThbeaTXHGO/qpHB7OKW85yazmx+oGeXlHIpyRwnjSJ/vrT/fdZ4n
	wkLL+XNOAJliVrUBkpOkxKcVCNnq7Mjz6GiqUw/griTYLBf4nrrksfr4GIl0T3Lk/VqBFpKox+E
	dRA9dMnmLQdfXsiGU0E6FEaUB4hTMJXcndIVYQsHasG8Lp3IdEsgFd1ySe8cWGyExjBkhtuwYBs
	d/Dxyi1pxShD8hGoGNBK3hB0DEiGS9gaF3+Cqu4cSd1FzCx3tSTVEhSNuNLTFce3L9+4MfYiEpZ
	mO900mbc4D2hDQnPuToDR7Tkpvue/+ATFuxACyrrrNnRR7Bn+pciDe
X-Google-Smtp-Source: AGHT+IEen8rgH8y7zo72nmcazSBpBM/gAUMmQggkgYQ2cpkTx7B7kTbDS6/45ddfno1IY5QEnPSQJQ==
X-Received: by 2002:a05:600c:5021:b0:477:1709:1f32 with SMTP id 5b1f17b1804b1-4773087266fmr25975815e9.26.1761915364886;
        Fri, 31 Oct 2025 05:56:04 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47732fe1075sm31814585e9.11.2025.10.31.05.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:56:04 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 31 Oct 2025 12:56:01 +0000
Subject: [PATCH 02/11] soc: samsung: exynos-chipid: use a local dev
 variable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251031-gs101-chipid-v1-2-d78d1076b210@linaro.org>
References: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
In-Reply-To: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761915362; l=2538;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=WFBXv1nyzbfw8zq+ghHGpCgVYngil2VfWMf3BgFxbsY=;
 b=QAW3wttm1FRERcy6yo9M/wXhR8vnpJD3NM/zeyw5mPRiA76Sag5UI/o7TUwkB0LqIEVC4cDVu
 cutaZOoGKzzD6K6kvEKA4luo67bc7xnKrARcCebzI1DVxlOHjiQLoeF
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Use a local variable for struct device to avoid dereferencing.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/soc/samsung/exynos-chipid.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index 0f9f83a006795df08dae556ef37c2b78bd599ef5..d3b4b5508e0c808ee9f7b0039073ef57915d60fc 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -109,16 +109,17 @@ static int exynos_chipid_probe(struct platform_device *pdev)
 	const struct exynos_chipid_variant *drv_data;
 	struct exynos_chipid_info soc_info;
 	struct soc_device_attribute *soc_dev_attr;
+	struct device *dev = &pdev->dev;
 	struct soc_device *soc_dev;
 	struct device_node *root;
 	struct regmap *regmap;
 	int ret;
 
-	drv_data = of_device_get_match_data(&pdev->dev);
+	drv_data = of_device_get_match_data(dev);
 	if (!drv_data)
 		return -EINVAL;
 
-	regmap = device_node_to_regmap(pdev->dev.of_node);
+	regmap = device_node_to_regmap(dev->of_node);
 	if (IS_ERR(regmap))
 		return PTR_ERR(regmap);
 
@@ -126,8 +127,7 @@ static int exynos_chipid_probe(struct platform_device *pdev)
 	if (ret < 0)
 		return ret;
 
-	soc_dev_attr = devm_kzalloc(&pdev->dev, sizeof(*soc_dev_attr),
-				    GFP_KERNEL);
+	soc_dev_attr = devm_kzalloc(dev, sizeof(*soc_dev_attr), GFP_KERNEL);
 	if (!soc_dev_attr)
 		return -ENOMEM;
 
@@ -137,8 +137,8 @@ static int exynos_chipid_probe(struct platform_device *pdev)
 	of_property_read_string(root, "model", &soc_dev_attr->machine);
 	of_node_put(root);
 
-	soc_dev_attr->revision = devm_kasprintf(&pdev->dev, GFP_KERNEL,
-						"%x", soc_info.revision);
+	soc_dev_attr->revision = devm_kasprintf(dev, GFP_KERNEL, "%x",
+						soc_info.revision);
 	if (!soc_dev_attr->revision)
 		return -ENOMEM;
 	soc_dev_attr->soc_id = product_id_to_soc_id(soc_info.product_id);
@@ -152,13 +152,13 @@ static int exynos_chipid_probe(struct platform_device *pdev)
 	if (IS_ERR(soc_dev))
 		return PTR_ERR(soc_dev);
 
-	ret = exynos_asv_init(&pdev->dev, regmap);
+	ret = exynos_asv_init(dev, regmap);
 	if (ret)
 		goto err;
 
 	platform_set_drvdata(pdev, soc_dev);
 
-	dev_info(&pdev->dev, "Exynos: CPU[%s] PRO_ID[0x%x] REV[0x%x] Detected\n",
+	dev_info(dev, "Exynos: CPU[%s] PRO_ID[0x%x] REV[0x%x] Detected\n",
 		 soc_dev_attr->soc_id, soc_info.product_id, soc_info.revision);
 
 	return 0;

-- 
2.51.1.930.gacf6e81ea2-goog


