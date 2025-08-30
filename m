Return-Path: <devicetree+bounces-210794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45527B3CD60
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 18:48:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 079183AA769
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 16:48:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95F1A2C3256;
	Sat, 30 Aug 2025 16:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D7B6xbNQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800C326981E
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 16:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756572526; cv=none; b=q7TVNSWFQ/Y65uuI3BGoPv3Tdjs8d3oK/aMzeXclWaMYPwuo8s9QWUiVaf503QcQmXxiggOCWUJeF8WEvELPL3WBthT1BvBhieXT8t6sYou0TRq8tZMZ5BSTVAT75DoPuLi43MovolfxZSjVvXDJC4Vn1bbPB+wHVVEpyZKF39c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756572526; c=relaxed/simple;
	bh=7uER2DvoLLE6z6epL6HrNFtjDW4TWlnYFUC2TNnSIPk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gPYU83VAm8O6iF1xikI+YTMWskHTUi4ezq20LFZMNmVNm3LUuD1r+ZSoUmsz3mrcmSp12HClP2RG9/rW9xGwnQ3mkS96nHhv5NFUdp56GO6GGvvN10ba6BAOxLENUjnGCYEVFxfa/JWjS6oZRnDuArtT7AqXHOpxDjiyc0unNJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D7B6xbNQ; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3cd151c38ceso449050f8f.3
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 09:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756572523; x=1757177323; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kwHNHld86Ahk+TRbfmt7h72W95FfFhoR7W7sL+uYmow=;
        b=D7B6xbNQyhoQGODZw9BF2Jwadd/lwFoYcOz4MVwS+I2WtMh7iBUMKb0w9DnaUoj7w3
         hSJmFJSM5gF5LI+NkKb1k0A2DmR4ckoGjFTKEW5Ev2Ju+EJQCv13yyP3BlDGWFnr/9Oa
         v3MW0LD+clhahBdOiAqhTy+Nkzyn6tiweP3Ea3W7M/rxgCEoCwxqlwCedvLuTRRtsjQB
         bhM9i8limr87pLqNQF36+bT505xXVUh6CDuP0uldN9RrI2B3GcL+lU7eWeOIYsVkwfyb
         Tv16Uv3huN1iTT/5vX7+SKpGxkt9uouY0ti9Jt5bdq14VgNMu8upyLoAEF/5FMs7hIKl
         qNVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756572523; x=1757177323;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kwHNHld86Ahk+TRbfmt7h72W95FfFhoR7W7sL+uYmow=;
        b=JpOcaz9JYqn41HoS3z0Eg+xMnvmhcn+IkBqueu5HmKHFMGtur5blYMNTneswsF9E1Q
         oQrr/zA0L850HhEQo+lH9EgHsG+/PLq2ZTZm9s9Yc6+SIT9XCdBRoc96K3hOVQl1b9Qy
         d9hNoJfxXESBP3iqhvnPZ+lWH4mz3miJTZ+FHE91Le2YcmRlIOKEHQiSlkkl+eQKUwpc
         CCkcp76sNL65CPIGlrs/gsS4Jkhvp+L1HRTK6cF+C+I2IlCz1IorH7SpbBx+3HOZQh1+
         Sl0p0DERhU6WFvvs6JlPleYteVGrcbuKxQoabTSw6SW47Zu2f/bAFPEMnLvAmpFdJy98
         O0qQ==
X-Forwarded-Encrypted: i=1; AJvYcCW3ELTP2LcRS/DI+MzVtBOWMM1vZV2yMrGVVWrjl+A4IKMeAPjOQa3KeXOnpmC+ZnCQtDEh1f9ug0Go@vger.kernel.org
X-Gm-Message-State: AOJu0YyRfu9puWWfnyjdmT2fCQpyuf5GpL8SzQBdbqfOTq+noRmQ35yy
	1cG78DGkU0MVIjl5GnogRKT/wHWbavvoGyOirsn6E5tYvADCsMmJi285BI0z9+X/Nwc=
X-Gm-Gg: ASbGncstnf+1GzlBon3+7usivkvYIePWDIiUpO7D8x+Zlenmo9Eed664PZuPko5+Erw
	YfMkP+C5oi1W47Yk51oEvrObtEsuj02YKCFwymdB30RKT2R2b5/mCUyLvvIsFvijAB3zzvEdTFb
	EDnk9pQhcbEl0N/up/YOQKgYPzU7Va4N1m1t0fIzYIMjNAM1eSuWPcSc0YcpQi3IjjK6XkTvLXb
	sKze6qw+TPyAhCX2RJuL3nwEeM7KDqKy49Nf57jYj8hj6azMlP/wTY41u9E3kB0UQLXaxyLRQP5
	d93gfOVAm2oTFKg+iAQF4nJQSvayafVkR6IVboYbAazzGEsZaQsNAf/JqXWJgcwPchVG29sKw4i
	3orN6bXvZNT+qRTi+leskU35ORrUljdOJTyc3djI=
X-Google-Smtp-Source: AGHT+IGUYbZV5y47P6lmjYscKjNdQ2Uw8ELxYIkx4OD71yfrs+H4TcNwkmZsQ6P3v/fHNbcN0w5aPQ==
X-Received: by 2002:a5d:4490:0:b0:3d1:6e71:4915 with SMTP id ffacd0b85a97d-3d16e714b0dmr1046081f8f.4.1756572522774;
        Sat, 30 Aug 2025 09:48:42 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf274dde69sm7818129f8f.14.2025.08.30.09.48.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 09:48:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sat, 30 Aug 2025 18:48:30 +0200
Subject: [PATCH v2 1/5] iio: adc: exynos_adc: Drop S3C2410 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250830-s3c-cleanup-adc-v2-1-4f8299343d32@linaro.org>
References: <20250830-s3c-cleanup-adc-v2-0-4f8299343d32@linaro.org>
In-Reply-To: <20250830-s3c-cleanup-adc-v2-0-4f8299343d32@linaro.org>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4264;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=7uER2DvoLLE6z6epL6HrNFtjDW4TWlnYFUC2TNnSIPk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBosytjN2yInA7p39V8n1XoJXYzoAUFvLq/xOHS6
 dqUEsdByBGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLMrYwAKCRDBN2bmhouD
 1x9QD/wP0Tzu8mof+pIAGOVInqw3xEGpRCv4RnJN0E5qMXRG9QqqJNdBW2jeKvNmvYaYzO6zJAY
 Ev7ZpFXpiRZNKoGRbe6yPsfoVCLfXL2htcCeFgoSPKj9r0dsVJ5vQcDYEJ61UrmOdbd5IeB8Iaa
 z2yx4V+eF/xCz/UUS1JKcwo5saIq8aqQlxNjufJK/RxTUi/z6kPnczOXA+jali0A3lXVphMABDf
 9dN7bnsGgy4Tzl+3OME5+VoQRNpiRnOXcKpnOa8Ljpx7V5zgZTsGF4hpL2nLD/ACLBIbNxvSLAL
 7Vx2vi0K83YcWGQ+sugWZ+VZ0uiCEbpNU31k2QuhDk+1U55VbN6RnjOSP6HrVu1Y5dTcvu2z4LV
 Asmjc+u/KHPBJTSbfmxzAv/USAuaZDK5sVodbVSlKABJasrieBwAmse0NRU5kQilaHgkL4cTA+J
 q/pxj0YOSEL1sR6EWpxwyg8dWsdsWoxW2C1R8dn66ur9rBN82aqcxuHA5TfuUpN59A/Ub5W8/Kx
 O8+joypsCNHDmOH+1jvCa4j8kYfae2PVTplVv12sZFYCVsmB0U0ouzZajd+ozTIaN+KA3+ZNBc4
 8n9gIcZFRJBgjeoX3l0ghSLrEJji28t/r8xm1hANzB4Am+xtEioguys9BdSsk//SRbElZE5I6Ck
 9lClcMh5sUUutag==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Samsung S3C24xx family of SoCs was removed from the Linux kernel in the
commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
2023.  There are no in-kernel users of its compatibles.

Reviewed-by: Andy Shevchenko <andy@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/iio/adc/exynos_adc.c | 75 +-------------------------------------------
 1 file changed, 1 insertion(+), 74 deletions(-)

diff --git a/drivers/iio/adc/exynos_adc.c b/drivers/iio/adc/exynos_adc.c
index 4614cf848535944a41e0ab19f35c5ca0546000c0..17fd33c6bd6d0dcf41771331ecb328e58d820ed0 100644
--- a/drivers/iio/adc/exynos_adc.c
+++ b/drivers/iio/adc/exynos_adc.c
@@ -44,9 +44,6 @@
 #define ADC_V1_MUX(x)		((x) + 0x1c)
 #define ADC_V1_CLRINTPNDNUP(x)	((x) + 0x20)
 
-/* S3C2410 ADC registers definitions */
-#define ADC_S3C2410_MUX(x)	((x) + 0x18)
-
 /* Future ADC_V2 registers definitions */
 #define ADC_V2_CON1(x)		((x) + 0x00)
 #define ADC_V2_CON2(x)		((x) + 0x04)
@@ -61,10 +58,8 @@
 #define ADC_V1_CON_PRSCLV(x)	(((x) & 0xFF) << 6)
 #define ADC_V1_CON_STANDBY	(1u << 2)
 
-/* Bit definitions for S3C2410 ADC */
+/* Bit definitions for S3C2410 / S3C6410 ADC */
 #define ADC_S3C2410_CON_SELMUX(x) (((x) & 7) << 3)
-#define ADC_S3C2410_DATX_MASK	0x3FF
-#define ADC_S3C2416_CON_RES_SEL	(1u << 3)
 
 /* touch screen always uses channel 0 */
 #define ADC_S3C2410_MUX_TS	0
@@ -307,53 +302,6 @@ static const struct exynos_adc_data exynos_adc_s5pv210_data = {
 	.start_conv	= exynos_adc_v1_start_conv,
 };
 
-static void exynos_adc_s3c2416_start_conv(struct exynos_adc *info,
-					  unsigned long addr)
-{
-	u32 con1;
-
-	/* Enable 12 bit ADC resolution */
-	con1 = readl(ADC_V1_CON(info->regs));
-	con1 |= ADC_S3C2416_CON_RES_SEL;
-	writel(con1, ADC_V1_CON(info->regs));
-
-	/* Select channel for S3C2416 */
-	writel(addr, ADC_S3C2410_MUX(info->regs));
-
-	con1 = readl(ADC_V1_CON(info->regs));
-	writel(con1 | ADC_CON_EN_START, ADC_V1_CON(info->regs));
-}
-
-static struct exynos_adc_data const exynos_adc_s3c2416_data = {
-	.num_channels	= MAX_ADC_V1_CHANNELS,
-	.mask		= ADC_DATX_MASK,	/* 12 bit ADC resolution */
-
-	.init_hw	= exynos_adc_v1_init_hw,
-	.exit_hw	= exynos_adc_v1_exit_hw,
-	.start_conv	= exynos_adc_s3c2416_start_conv,
-};
-
-static void exynos_adc_s3c2443_start_conv(struct exynos_adc *info,
-					  unsigned long addr)
-{
-	u32 con1;
-
-	/* Select channel for S3C2433 */
-	writel(addr, ADC_S3C2410_MUX(info->regs));
-
-	con1 = readl(ADC_V1_CON(info->regs));
-	writel(con1 | ADC_CON_EN_START, ADC_V1_CON(info->regs));
-}
-
-static struct exynos_adc_data const exynos_adc_s3c2443_data = {
-	.num_channels	= MAX_ADC_V1_CHANNELS,
-	.mask		= ADC_S3C2410_DATX_MASK, /* 10 bit ADC resolution */
-
-	.init_hw	= exynos_adc_v1_init_hw,
-	.exit_hw	= exynos_adc_v1_exit_hw,
-	.start_conv	= exynos_adc_s3c2443_start_conv,
-};
-
 static void exynos_adc_s3c64xx_start_conv(struct exynos_adc *info,
 					  unsigned long addr)
 {
@@ -365,15 +313,6 @@ static void exynos_adc_s3c64xx_start_conv(struct exynos_adc *info,
 	writel(con1 | ADC_CON_EN_START, ADC_V1_CON(info->regs));
 }
 
-static struct exynos_adc_data const exynos_adc_s3c24xx_data = {
-	.num_channels	= MAX_ADC_V1_CHANNELS,
-	.mask		= ADC_S3C2410_DATX_MASK, /* 10 bit ADC resolution */
-
-	.init_hw	= exynos_adc_v1_init_hw,
-	.exit_hw	= exynos_adc_v1_exit_hw,
-	.start_conv	= exynos_adc_s3c64xx_start_conv,
-};
-
 static struct exynos_adc_data const exynos_adc_s3c64xx_data = {
 	.num_channels	= MAX_ADC_V1_CHANNELS,
 	.mask		= ADC_DATX_MASK,	/* 12 bit ADC resolution */
@@ -486,18 +425,6 @@ static const struct exynos_adc_data exynos7_adc_data = {
 
 static const struct of_device_id exynos_adc_match[] = {
 	{
-		.compatible = "samsung,s3c2410-adc",
-		.data = &exynos_adc_s3c24xx_data,
-	}, {
-		.compatible = "samsung,s3c2416-adc",
-		.data = &exynos_adc_s3c2416_data,
-	}, {
-		.compatible = "samsung,s3c2440-adc",
-		.data = &exynos_adc_s3c24xx_data,
-	}, {
-		.compatible = "samsung,s3c2443-adc",
-		.data = &exynos_adc_s3c2443_data,
-	}, {
 		.compatible = "samsung,s3c6410-adc",
 		.data = &exynos_adc_s3c64xx_data,
 	}, {

-- 
2.48.1


