Return-Path: <devicetree+bounces-210730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C73AB3CA5D
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 13:10:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E369A3BDBA2
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 11:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B28B27B326;
	Sat, 30 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gl1aNLPI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD4A279DAA
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 11:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756552193; cv=none; b=tQQ+/2gwMncSYL3FqxoQZWjH5zmGJ3/2FJgvypeAJ9mOaaVhLBmFCQvoN8zCTIRMlOKX+NRy0A2pZNite9avdpGm7eqBhs3p30Bi3j7UBnXLcYWg2YAWo1mb7PrkNFnm7KCjy/4npLcUd+QlzqS+FlQS0kxlZ4tyEXqWiqmviR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756552193; c=relaxed/simple;
	bh=xlL9W2A8Ervk1zk4ml7XK13XijuLbMR6cMtKEKCqU4U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gjPSbKj9OwsXux9vxCR5IHjASSZ2ZrAzCqmnbd2ihlD+97K6GEBpD0Zu+4RRoxYO6AUHA0nnHbcXh6fUtP53HdFJ0m5yXNnnk4n7lbFdoWWV7ey3NyYh0OIYR8zvqeT6vzxGNxZfVu0ZhTsNJijYBKEx4alRVAinX9JRI16r3XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gl1aNLPI; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-61cbe94a190so495132a12.3
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 04:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756552190; x=1757156990; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mt6BHImGK+4nyxlNYHkaJPBTdr1Pfx4Jy5o27YwNXXE=;
        b=Gl1aNLPIA9RKqFJ6b65526ZRotII9ojjwEFgfbRYASAtskcnnBV82vj4GAW436iR+J
         xK3RzWnTKj9Ibho2T7uJeqhv0U8SK19nvgZ91/jZY6yGy/aC4++6v8camjbmJ9mq/j29
         V9r3Uf6cAsOxq4yG7q4l0m4Mv1ld/Jt2q2JA3NpOMf1TWbYip7FJNKAwJ/ZVHGlOU0lD
         Kgv/vd/ZGT6yirTI5V74wu6D/9A1DG8YaENSiorFPq2LNN8yLORLSXvxDwIVFKix7nkX
         tJ/+3LukGgkMq39v+ld0aged/SQZRqwb9VA4CbBT6Ak+yNu4tM7QMK/jop+Hpk2ajw7m
         2fwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756552190; x=1757156990;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mt6BHImGK+4nyxlNYHkaJPBTdr1Pfx4Jy5o27YwNXXE=;
        b=PwdxPbYXxp1rI4jpUU3I9JazIrP2eod3tJ/rzcejdsKV6+CVCmETtWI9iSoxxmt42k
         wDfk2bIrQW1lx3pYyv6C8pNSp9Pm0Zhn56dka52NxGAVpKEm0IfF7iWoi1mDoRvAiZhr
         7xzNdA66UFhttvhNho6zS2qRtP4N31VM0+oxtoXuRCO17AGevuHb3iaEqKEzRHWL7brC
         J9wDqUyZmItM47Qy0NNvLPJ5GxAoLMF6Nu0iJB7wcqLfD8jEPYUt2KRKNwJ6iTrZ8Edp
         Fiu/jqMzFbyK3ZFEi/ZM15Efv0oMGMDzouIrkuyunMONfuG+/4kmDHXkYWZi7GylgB/y
         Xi0A==
X-Forwarded-Encrypted: i=1; AJvYcCWGaAchdEocATrBMy6DNejwBvlHDqPifCElbX4EmzkUkEmjn5vGCl1FXV5r1dVogZLp4O7GbfrjrgZ4@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp2fOrjw78lIjT1ULkVMBghmzXiDHm9w5DfEQN4ny/XCp2dhu/
	RQupnGGWmM1u6jzUhI1e+TiqUUn3pBBuq1b7HxQbSYe0hT5wUt8W7M1v/z6p98f2u54=
X-Gm-Gg: ASbGncuk0VU56LuiRGcnuOUAqE1CwmVdZ3faTDtWWubrimZq1jobHjlJzPw5d0a1KsS
	ikNpB0NJ61wCsJwBz0JA1gM3Z/O1nftdHZk5yQcn5H6GMN43XxNw64E4KJvEFOPgftVJTuv8ydO
	A23T1N/8RD9VrAztwt+hbVENVjfvHG9l5uyRoARg1WvJyQC4ynVZ9pVJAsRgZfkPbsQfiygAd7G
	cuQLC3tucprezPXZLaHKC8OdoGvtw/JWgH40murh+guTnq6gSI/CC0gLYg/nrr0Pc4V7kUfPzvw
	SikmdLEX4TYbm6KZbjrkm34lcUy2FUgURcVJju5WfeiZlTGPMxxuz8Wftp5jMHfdrytc9lg+nmK
	DD5kFJrMmWr3IbYYnehapm59wCXW2bX7KIQtmxKyBLFvw+jq6Fg==
X-Google-Smtp-Source: AGHT+IFm3KrQiJLTnoLMRt7QTIhNFVWdnibXFvne96elYLkhnCNgt8ifCrnPRnxK3Ji1sk6Eo0cXfA==
X-Received: by 2002:a05:6402:2546:b0:61c:ba89:fc81 with SMTP id 4fb4d7f45d1cf-61cfe99a87dmr2234309a12.4.1756552189591;
        Sat, 30 Aug 2025 04:09:49 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc21542asm3285666a12.18.2025.08.30.04.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 04:09:48 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sat, 30 Aug 2025 13:09:38 +0200
Subject: [PATCH 1/5] iio: adc: exynos_adc: Drop S3C2410 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250830-s3c-cleanup-adc-v1-1-de54dfb1d9ea@linaro.org>
References: <20250830-s3c-cleanup-adc-v1-0-de54dfb1d9ea@linaro.org>
In-Reply-To: <20250830-s3c-cleanup-adc-v1-0-de54dfb1d9ea@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4216;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=xlL9W2A8Ervk1zk4ml7XK13XijuLbMR6cMtKEKCqU4U=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBostv00r+mskd3qVXrYKZh1HyJjhQB2ZnbjdkDE
 GI5PiaBKZ6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLLb9AAKCRDBN2bmhouD
 11sLD/9HygQMMQRy9yLtFTmoijHCENaBVNvBPHQaTRIreeQUCqjjaiB/JtgGUDjf/6iWHt3e0v6
 7GnfvISOZWlWUAHxggNlJVJrUbVUSNXIxLlwoqWoG0inQ9G8+Hm0M/4PTJFuJMvTmgOonzehjo0
 99VEr8iVewZjA/93YCSw65d9h391VcVlDsyNQk3RNiChvkp2D0qwmIgGHpm5r0pSW5SZ0c3+z/M
 buEcjSS3nrDH82fc5oVxf9udiI/XmQKuYWOyXD99UbNekSBZkVEYE9OqXD1AFutGTaqTcvwoQo8
 0JvJhc9dF8tiR8EdIiKkMoeIdqw22l/jgwLzhlDXGQsAUdpjL38qNJ1JHkrHXFxXg2EugAmx8CT
 aJki8VRB3EwCOtVX/OHlcbT9rqUsfC29p/O/++NHecMyKYxl8ygmrOHA0bE/jFJqt0G3B6uWTnn
 NJ3BypW755mW4TYgeLui8nOCAu5cRqeZoOs9r2l9p7LmVAL0i+QTaCQJrDLHFBBKg7npC/i5aBK
 +RnKyWQzRR13gMTc079rIZohXogU/kNpdlWM5itsmZ3l0SX9TUxOiToxUmyZokzqj7Zes7VjsxU
 4x5q0JF1GRV72ifLNu1qF7eqLnJwWmCkwnV34tY1+066g5SxfGvGhC8tKnVDTmI01dw2BNVNZCE
 RKP77oFSoBRPdlw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Samsung S3C24xx family of SoCs was removed from the Linux kernel in the
commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
2023.  There are no in-kernel users of its compatibles.

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


