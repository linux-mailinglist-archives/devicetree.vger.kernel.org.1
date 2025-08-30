Return-Path: <devicetree+bounces-210801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE816B3CDA4
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 19:01:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA1D67C4808
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 17:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 560DD279DDA;
	Sat, 30 Aug 2025 17:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qkw891aE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80946253359
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 17:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756573281; cv=none; b=UID0KJ96i2bZKMWrNUYhAKuF+wS6NAZcA+EGJcskQwj1YaI9H4e530U0hEB29qmWSw77H60FU24HpyEqKABWnJ8b2VCCVNgjVsNeUBrifgty7up7w/V2E37WJaATdE1e9ByglnsYMoRGWsHT08HHxQsU1WbQsvHrgp1D58kGiE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756573281; c=relaxed/simple;
	bh=RPUJbg100xa0IEvnoF3u1mdVLmvj7pTfHeSRkyLDqeE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TobslbzzBAsYCdr2G+1ASiHtyC5J8ffkgn3udHgagfM2IqQmNVtjAuYLm5x//5o+qkt85h3IeUzxXyCG6E3C3ly9G7w2dNsvqBpDgIAjaKWj/ADIkfVDBGv7o6RAmZBr3bWn1T7Vbiim2s/n2fFm2ZfUQvYIcGIEvaFVsRQ+LLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qkw891aE; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-afcb7ab87ffso41499766b.3
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 10:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756573278; x=1757178078; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RdB5MqNC+p3bmf/ntWx5h3e+QQrokyQ+em8wO8bj1sc=;
        b=Qkw891aEUEZdoBQiqvMPCPc7lWTnfMqpIFI1KYxLzvRDWLJwVJ7sPHL+86IPyNk4lK
         iSxhk6SRsUe5HEtZ3dW3dmGp2B6Q0ouKJtdKtqvhn2zvgc/t+49M5i2l+pM2BtIvaoew
         RInTEqvYd11YgeHf3dgEb4huPTqSFMudmceaNutoEVcv7FFK1MMpsHMxEn0+sPAbctWk
         ppovUgoXnZVvjcoDdsQxEl6vFbI0p7984QowvvLdIL53uRxtrzA8xyLLl77ZUuNrT0H1
         hRMCexZOjkn4PY/a5tArVtkRwVsu2SDmCcJQVx2aWVUd5jLWqa8ItwGTtKjmjTdTES2c
         N6KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756573278; x=1757178078;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RdB5MqNC+p3bmf/ntWx5h3e+QQrokyQ+em8wO8bj1sc=;
        b=TdZPmUN9Jg4oGjrIj5gD/fcAsZUhAWiHE27w8dDuWwZS7D3vW2q6uVVM2W5c2ZjMbS
         J4ZK93txmzPpfPwu30NxIqXRdA6NzmMdcWzDwA5FrJj1I0+pp1y1A7o9zbHSqDSdt51q
         ImMzcd1OLtA+FI9jcFk/+b9mTrPW6qm0XUYiqj+SAYI9erMWe9/YeojZKppyTaDl6YxP
         bea8Obhod6P5YcTAFljJlpC+ExJvs/EuzK9N/rdLx8qS7/g+4nRZ+uEe2aEWxlkWCY/T
         H8/BGajAtjN5Sxx9yZZGogML+4hZqgdBev+Bt2kwnznWITJzCQ16WAV5igFhjaLx3St4
         H39A==
X-Forwarded-Encrypted: i=1; AJvYcCXIq0IA6B4EUrWkghpICTaTybGZ4C6G2clXAUnp/M4rQkyeDsURyifdqoMfd6MGJqtSMu6Dq8xxETMc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/Wi3cEYtteJ7m5otYkronunReP/U6Y/hNNuEQ0q7/k4TKJRFd
	3+3tRokK3JMnqan2AZtT4E7X53yNP848wIi0kAI0foYMccVeMK9bz8FCmsbpqmLusY4=
X-Gm-Gg: ASbGnctR22e+xuPQ0HSs8Yp9lXn9Pe8xf92mWownC8zJ5HyptSsyqZ+BHuki0cdwuRo
	3t+XcrlSNNIATAP61e8OfsTZXejHip/NoEnq/wZGXLjaOZtujqykasKVre9XZg3WZu5bqXWGMCC
	Vk/IsALe8GnPFYpO6R3IPE40WPBusKkd3cwz3vgjPtjU3drcotDDSsoHTKIm3XKAYFKAUoVIfGN
	n5CVGzHW3q4FxgA1dliCpZOqOjG6MyF3NukK2FAclR6I2tcZZjhXOoukdaKKFA4IErBek8mEhBP
	NassVeFg35PjfETHhqD7X72QG82Cm2orNG0YPfgezVp4ftmPfRJda4vCqajVurSVHj5wgn3Elt7
	YPf7XkW5HWm8AEPofHY57/x3XLldjzE+PRxecCl2lkQHI8cIkJQ==
X-Google-Smtp-Source: AGHT+IHe++mZhWzLj+V2kR1/YfRvNVOIAhKLNUILUb6vPmc6HP8S/l0mFC1K58GUtxiQDbdzEfLucA==
X-Received: by 2002:a17:906:9f85:b0:afe:ae6c:4141 with SMTP id a640c23a62f3a-aff0ee05414mr274464566b.2.1756573277761;
        Sat, 30 Aug 2025 10:01:17 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff12a6b404sm309038766b.88.2025.08.30.10.01.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 10:01:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sat, 30 Aug 2025 19:01:09 +0200
Subject: [PATCH 1/4] mtd: rawnand: s3c2410: Drop S3C2410 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250830-s3c-cleanup-nand-v1-1-05b99ef990fe@linaro.org>
References: <20250830-s3c-cleanup-nand-v1-0-05b99ef990fe@linaro.org>
In-Reply-To: <20250830-s3c-cleanup-nand-v1-0-05b99ef990fe@linaro.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Russell King <linux@armlinux.org.uk>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2620;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=RPUJbg100xa0IEvnoF3u1mdVLmvj7pTfHeSRkyLDqeE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBosy5XzOuvSuRgZYrPBWhcA/8cx0Ta1ZMMtq3VA
 U97dWTDNgGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLMuVwAKCRDBN2bmhouD
 15CkD/9SA+hmrUU/1U3lo3ofl7xEfszMtOVsHre48VzovCwtJVbvY66wq2HilKGrcKVaCJzaThw
 /0pxt9R8+UI8qBpXmErjOiZoOSArSvZwnPrY2IQiynNufwCqsoBkvKOEuIaOtPTOJnsxkJKCk4H
 x9fLs6FX74gWPS9K38wmcebzL+rWDEy+oVtVB+L78jnjI64mH4xo2bv8HKnBQa9ZfCL1LdLNMbR
 d8VElMJoGEsZkOOZxR/stuuVdZD3dXombq/YjrCw2nRpJtyLap6CcTg5TmpVKGL35wdcmXI/OZI
 MjekuYui0ID1Ft43KT0xlyAQUK/IoESXLBVRuIUChjCFuyEuP7RY1u50r+ETJDQb7y8xTWHBE/D
 ZKRpBXP5BP8IiclImSst1JMUfKoM8+gzYSgQd/mOxY+iiUHv9Gb5j/hzNrkI4XBakbHWlHXd+C+
 ndvykMkA5Ymrasd+5bVN6fSUaY0gMUeu8vf+X1Zo4XP4fdMl6MlC6XXSAMvmwO39AxEt8zKVgZm
 dDoFqaKhVT0CHbg2mQfgG8Wr9wGRZ3Rwo5r+mqebEQ0E7kQ3Y9i4h3c18MrGoGn2HVRYpD/mYee
 C1izWKtMDfyU0Yhn1qP+CovK8XgHtSzrkczRxDC/VAivNBM4SJcrnRlUJt0qeZTRqoRew7wjkQu
 3z+KzqjjHeF0x4w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Samsung S3C24xx family of SoCs was removed from the Linux kernel in the
commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
2023.  There are no in-kernel users of its compatibles and platform IDs.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/mtd/nand/raw/s3c2410.c | 38 --------------------------------------
 1 file changed, 38 deletions(-)

diff --git a/drivers/mtd/nand/raw/s3c2410.c b/drivers/mtd/nand/raw/s3c2410.c
index 229f2e87d56eeacf5fda0ad29df59655b328658e..33130d75c5bab709a3e5cfd6e95b273cf62e4d46 100644
--- a/drivers/mtd/nand/raw/s3c2410.c
+++ b/drivers/mtd/nand/raw/s3c2410.c
@@ -169,18 +169,6 @@ struct s3c24XX_nand_devtype_data {
 	enum s3c_cpu_type type;
 };
 
-static const struct s3c24XX_nand_devtype_data s3c2410_nand_devtype_data = {
-	.type = TYPE_S3C2410,
-};
-
-static const struct s3c24XX_nand_devtype_data s3c2412_nand_devtype_data = {
-	.type = TYPE_S3C2412,
-};
-
-static const struct s3c24XX_nand_devtype_data s3c2440_nand_devtype_data = {
-	.type = TYPE_S3C2440,
-};
-
 /* conversion functions */
 
 static struct s3c2410_nand_mtd *s3c2410_nand_mtd_toours(struct mtd_info *mtd)
@@ -944,22 +932,6 @@ static const struct nand_controller_ops s3c24xx_nand_controller_ops = {
 	.setup_interface = s3c2410_nand_setup_interface,
 };
 
-static const struct of_device_id s3c24xx_nand_dt_ids[] = {
-	{
-		.compatible = "samsung,s3c2410-nand",
-		.data = &s3c2410_nand_devtype_data,
-	}, {
-		/* also compatible with s3c6400 */
-		.compatible = "samsung,s3c2412-nand",
-		.data = &s3c2412_nand_devtype_data,
-	}, {
-		.compatible = "samsung,s3c2440-nand",
-		.data = &s3c2440_nand_devtype_data,
-	},
-	{ /* sentinel */ }
-};
-MODULE_DEVICE_TABLE(of, s3c24xx_nand_dt_ids);
-
 static int s3c24xx_nand_probe_dt(struct platform_device *pdev)
 {
 	const struct s3c24XX_nand_devtype_data *devtype_data;
@@ -1194,15 +1166,6 @@ static int s3c24xx_nand_resume(struct platform_device *dev)
 
 static const struct platform_device_id s3c24xx_driver_ids[] = {
 	{
-		.name		= "s3c2410-nand",
-		.driver_data	= TYPE_S3C2410,
-	}, {
-		.name		= "s3c2440-nand",
-		.driver_data	= TYPE_S3C2440,
-	}, {
-		.name		= "s3c2412-nand",
-		.driver_data	= TYPE_S3C2412,
-	}, {
 		.name		= "s3c6400-nand",
 		.driver_data	= TYPE_S3C2412, /* compatible with 2412 */
 	},
@@ -1219,7 +1182,6 @@ static struct platform_driver s3c24xx_nand_driver = {
 	.id_table	= s3c24xx_driver_ids,
 	.driver		= {
 		.name	= "s3c24xx-nand",
-		.of_match_table = s3c24xx_nand_dt_ids,
 	},
 };
 

-- 
2.48.1


