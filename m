Return-Path: <devicetree+bounces-210717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C8AB3CA13
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 12:19:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7449A17C60A
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 10:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F418B275B18;
	Sat, 30 Aug 2025 10:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Uzxp6n4N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034FB274B46
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 10:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756549151; cv=none; b=NKU6+r7WfTIYqNIKLbcCdxEb7I4sxO3yU/VWn55H3qO0wR8170ulwiD4P2cuAUy7sgcjkABiE6ErK0GkTLSBCJjKc0pO/xSoconjU3bee/KnrG2gyei9bqlgdau3nzHG5drEfCylzU4eOv1PQksiIS8ltUcc9FLR9iBjCC0Q48g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756549151; c=relaxed/simple;
	bh=tzOQaWmU4Y2kJdGcyusF9g24SdvfScKvIrSTOFMPkHE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FcZUieQ3nrGcuFRTwpb5StbdzF+hfyv2XJH9bqpYuuqFijntYcRwsJehpKpKl8K+ixSktaejGhxFU+brgXDsjOkS89SIM+1gjpvWbj3lhI4y5ljA6DN5BbMc8pnmCF/p/29hfaX1enjrlLvxgwgV2x+GT1LHluTweWEuvhi+6As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Uzxp6n4N; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3cd151c38ceso419994f8f.3
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 03:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756549148; x=1757153948; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dZnyvhWBfuOE2HRHqZcb3d7aQZKVvQuhqPXuSlkPMk0=;
        b=Uzxp6n4NFwlvx43R8pXzHOxIIURYB/4IbfyaaPq4tdRKUqjSXzp2b0zZ/+DzUBkcvq
         Iy0HAE5ysIDJfUFwy/nfwEOEFXXz8dP0lW3JgyP7mv7Ed4Op9oFTWQ0AKjlRhWNNpQkH
         S1+YNN1SpCBGKiCNZxuIn7bK4W6GuSZQrh/xWQw+AvMQZf291YVtc2tbJo01mI7Zoz4+
         J+lpK6uHfcKYYVbHDjf7v8/3orplItMfB/nt/J8X/4RNC+W1er+9RbNPW6kMZ9bVNW/I
         F0KlTuF4LT37JG9cHhEZJqjYePdvQvr4MlFQnu2o0hWYsjMjzUebn0W7Dy15iMYvPctc
         M1jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756549148; x=1757153948;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dZnyvhWBfuOE2HRHqZcb3d7aQZKVvQuhqPXuSlkPMk0=;
        b=WeksFgJAPEmrhjuqsIOuU1yDW8LMHBYZenb4VP3UMSMNGEqfUv1VE0ZdR56zXXaPOn
         Ss21SUf4oSUUfMhwYDCTcex1I8Meyxks5wgFFxY6FKGEJaz7YMyd1j9IuFA235NBdI+Z
         D+e4+zCDxV4ExcKeWtKcvyw5FLNlCm37HmA0XRsH/0BDJxxkUdHoLep02m2iB280zxIJ
         r2xKXjodR0Sw0GSgul4vteissgpovGXDVFHI5QjIN2uNmiC3gsCpUWdRQGvQXJp2QgHL
         U0cftbI/wsT72yS34EAB2lzq5QEOIXj8slHlqnrxZ6NLroL9+D8Qnk5XMDF2gTMKQTw1
         SmGw==
X-Forwarded-Encrypted: i=1; AJvYcCWka1y2rfhFDWxAgLkoUjt7qydUb/K4rP0qnPPLtNLuFmdxEx6BbARH3TMBzXs2/Arkp0TLcA3o2tZ1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7TwalQODu0ToT0pJJXRAQsMIEmEkxj7v1PFIc+hvzxW3Fh4sg
	toE2KWjhI56BFriVcIcpk/jfR74KjvZ+NU0JYAGmJ9lNd01gd3GVb7fiSLr4ttAAoFU=
X-Gm-Gg: ASbGncuy6wbfTtl69MVvbVNy6xvI6DeuBh7nrd2iuO13mbG2usqTfIAhNJ3sW1XIW7t
	nM9shCS0kx7Z00YUgx4zc/UtQzrdKr5j0TUBNSo8Vu1U7GTc8asvbeznLMReHu03ukY7DpYPxQa
	RF7njJ20c1pVH7PAenhkzvhgR50jtWiH5RhYdtOdcmDCE1Fg4axhMOpUaHuvradxpQaDMhRVPuV
	gn+eUG+BALNr/wnRunJqHyKlVUPcEPFH0NhBZXSorC58BZ+r0GSMDZnAt/6mSyn/zYUKL4eyJsO
	jqEt49uxieNk5ivEAjHCqg/y+7HF/wbsBOYYffgSvQ8hbdCqf7SpH/ObHOKIJVRHrEbQZ2Mftr3
	5Ay0F7grQQ+xVfnsxfakTsic3qbP0g0l/79iXGTvPt0xWCLJQ3/uwrq8tLYYP
X-Google-Smtp-Source: AGHT+IFygDyjBigp6iZ69YDdQmrabcSS3QXu7NjqRTS+fEAREpf4yRLclbJcT/wkaR/57d/WiRMZ7A==
X-Received: by 2002:a05:6000:26c9:b0:3cf:6a9:f3dc with SMTP id ffacd0b85a97d-3d0fc3b630fmr1581151f8f.10.1756549148299;
        Sat, 30 Aug 2025 03:19:08 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf276c8eccsm6547492f8f.20.2025.08.30.03.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 03:19:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sat, 30 Aug 2025 12:18:58 +0200
Subject: [PATCH 2/4] watchdog: s3c2410_wdt: Drop S3C2410 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250830-watchdog-s3c-cleanup-v1-2-837ae94a21b5@linaro.org>
References: <20250830-watchdog-s3c-cleanup-v1-0-837ae94a21b5@linaro.org>
In-Reply-To: <20250830-watchdog-s3c-cleanup-v1-0-837ae94a21b5@linaro.org>
To: Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-watchdog@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2907;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=tzOQaWmU4Y2kJdGcyusF9g24SdvfScKvIrSTOFMPkHE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBostAUEYwVAJtWM+2isVc7f3o+wMUKCm0EagDjU
 aZ+JOri5seJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLLQFAAKCRDBN2bmhouD
 19uCD/9CaCFnhAJlqwZJknBdZ3Sgef20JhK7F0OVjmhy2NesYaYZyETjCt/5O33RFCN9lVnK8+l
 r8tud3DpSBL5Xyq4zqA1Fcuy5iKSpMuWigJ7LqDzquDawxoXtDcZ31/th4ZAg2Kpr0ONMCONsPx
 D8FjGLFmNJEGV0VDDcBKe3Dpv9fmAdvw89yHLwOpoEXPMboThA+eIUeOcH3lViARsaaI5taVPhU
 vDvo7xQOBXdSuzFNKsKrSis4pSoSa6/BTHoVAQX/UeVPK7uR+UnUow5LhLBCgck0ylZCU0Ey2e/
 +xFb7ptteGXzDJs36WyeCzmvqUgsEIDI6IEGdVOwE7PvZLc5Ho+PSsQ/Ij+28dDvZqv8+4yMf2M
 vFA7r+QD520/OAFmEePSx8QzVbFMkXse1EF73AnRYW7SEqS3I+gCYTIPRjflEmMqATuRoQR1NED
 m+72P3imsoEOus4/JdSRV+rXVuEYSK/sK1aUjdrTnT7+y3/CUSMDml1xuaxxHWttgkbHoCuJs10
 Mjm749ZzlD7bOY1J7GWBDI3IYaBquJX85jLKnxz8GpNZ/fXQKO7gLa2bP9eK9h9p5Eo2v7SXKXc
 QVgbwskQ2yQN7pnh+5oeGSaYhU395mJhe6AiPZ7NvNesoE+8d9N7tPq972tjXOlc3G8twG0IkSH
 m2aSXlbDucyrD0w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Samsung S3C2410 SoC was removed from Linux kernel in the
commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
2023.  There are no in-kernel users of samsung,s3c2410-wdt compatible
and s3c2410-wdt platform device name, so drop both.  This leaves the
driver boundable only via compatibles, so drop any CONFIG_OF ifdefs.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/watchdog/s3c2410_wdt.c | 22 +---------------------
 1 file changed, 1 insertion(+), 21 deletions(-)

diff --git a/drivers/watchdog/s3c2410_wdt.c b/drivers/watchdog/s3c2410_wdt.c
index 40901bdac42613458f93c09654353190785ff072..f65f25fcce3ecbb1739ff98245b69601dc5353d8 100644
--- a/drivers/watchdog/s3c2410_wdt.c
+++ b/drivers/watchdog/s3c2410_wdt.c
@@ -200,11 +200,6 @@ struct s3c2410_wdt {
 	struct regmap *pmureg;
 };
 
-static const struct s3c2410_wdt_variant drv_data_s3c2410 = {
-	.quirks = 0
-};
-
-#ifdef CONFIG_OF
 static const struct s3c2410_wdt_variant drv_data_s3c6410 = {
 	.quirks = QUIRK_HAS_WTCLRINT_REG,
 };
@@ -368,8 +363,6 @@ static const struct s3c2410_wdt_variant drv_data_exynosautov920_cl1 = {
 static const struct of_device_id s3c2410_wdt_match[] = {
 	{ .compatible = "google,gs101-wdt",
 	  .data = &drv_data_gs101_cl0 },
-	{ .compatible = "samsung,s3c2410-wdt",
-	  .data = &drv_data_s3c2410 },
 	{ .compatible = "samsung,s3c6410-wdt",
 	  .data = &drv_data_s3c6410 },
 	{ .compatible = "samsung,exynos5250-wdt",
@@ -389,16 +382,6 @@ static const struct of_device_id s3c2410_wdt_match[] = {
 	{},
 };
 MODULE_DEVICE_TABLE(of, s3c2410_wdt_match);
-#endif
-
-static const struct platform_device_id s3c2410_wdt_ids[] = {
-	{
-		.name = "s3c2410-wdt",
-		.driver_data = (unsigned long)&drv_data_s3c2410,
-	},
-	{}
-};
-MODULE_DEVICE_TABLE(platform, s3c2410_wdt_ids);
 
 /* functions */
 
@@ -705,7 +688,6 @@ s3c2410_get_wdt_drv_data(struct platform_device *pdev, struct s3c2410_wdt *wdt)
 			   platform_get_device_id(pdev)->driver_data;
 	}
 
-#ifdef CONFIG_OF
 	/* Choose Exynos850/ExynosAutov9 driver data w.r.t. cluster index */
 	if (variant == &drv_data_exynos850_cl0 ||
 	    variant == &drv_data_exynosautov9_cl0 ||
@@ -741,7 +723,6 @@ s3c2410_get_wdt_drv_data(struct platform_device *pdev, struct s3c2410_wdt *wdt)
 			return dev_err_probe(dev, -EINVAL, "wrong cluster index: %u\n", index);
 		}
 	}
-#endif
 
 	wdt->drv_data = variant;
 	return 0;
@@ -929,11 +910,10 @@ static DEFINE_SIMPLE_DEV_PM_OPS(s3c2410wdt_pm_ops,
 static struct platform_driver s3c2410wdt_driver = {
 	.probe		= s3c2410wdt_probe,
 	.shutdown	= s3c2410wdt_shutdown,
-	.id_table	= s3c2410_wdt_ids,
 	.driver		= {
 		.name	= "s3c2410-wdt",
 		.pm	= pm_sleep_ptr(&s3c2410wdt_pm_ops),
-		.of_match_table	= of_match_ptr(s3c2410_wdt_match),
+		.of_match_table	= s3c2410_wdt_match,
 	},
 };
 

-- 
2.48.1


