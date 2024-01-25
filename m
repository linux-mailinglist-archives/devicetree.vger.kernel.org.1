Return-Path: <devicetree+bounces-35110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D5383C567
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:52:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7BCB1C22DCB
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:52:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6EF176910;
	Thu, 25 Jan 2024 14:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G+Vk2Pnu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9246A74E00
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706194221; cv=none; b=h+qGqM4oLb++rASPBkR2h6AeoKQJtYQmi+AXYv+mXl3tmMNjd+nUQuXIOw+wgC9WBfHCPdeZFiieAhv+sifUISXLsJyCzuKiclrNXmDge49KWAQXDQCYPivKj7cgUQehTDh56B8iiHFJwsqgV/cdBIRdmS/rYCQ4t+xNLwmg+I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706194221; c=relaxed/simple;
	bh=ham+cV2mcKCIhHRsWeNlCLcmQmBEqa3Yf08zGUNpCnA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NbLCnxNmOvX9mAiAK/8X/NrRAYFJuTAqdU6Oe/QHV5bqYfTcAjDL4NLxWSdUQ2PYQeOGDypnK8OjdLfsU+v7IJLJ6r0+fx/vAuXnzbYIQb7miwUyqQE7/TweoFoguvjH6ETdogjfbX5Dczm8vpcqAgkBRLH6oUivEt6AiCqjdJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G+Vk2Pnu; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40eccf4a91dso14288115e9.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 06:50:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706194216; x=1706799016; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gfapMhR078yFz2BCJ06O4fPl8ddG0C3B6BN3m2+gI9M=;
        b=G+Vk2Pnut3I0t0k1kx3ilAMIQKTNOkaZojAhQwN63KbwZhVV1gMl/814du1TerQVgy
         iVAXgQCUswzersAgMO8aOSDExIAz4rnXPo1i4Jj/YITO5UmyT4J3huxn14eY9D8Y3HpQ
         YXo0XQWO69oTfFWiV7/uwXU7ScGwjMdj/NyNccMOwYAhYdcL5c/UQ0P4We8tJut8aVxB
         XjOQmcOSP5D0XY+d9pum/+RjHWENVqnp2i2XOq06pd5j74YBs+crB5nBYdPfTYFr1Zd7
         vrT9CCHm2LjuzCMcbTB9DBNjJFCZgwCrUj/1iV1xFLB2pcabCuwlqbh51i1lqOajp8wS
         gIJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706194216; x=1706799016;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gfapMhR078yFz2BCJ06O4fPl8ddG0C3B6BN3m2+gI9M=;
        b=qKxV/m2u2YYPa5EMz4WX+aTdRPZZTKvSvghlQ3DouWjS962yxbsUlY6JT/2BT0ZVPm
         lP2F+BVZ3zbwOwtggycuufzoLt7Us6aHazLLuZ/7oyu+hOycWygwXA79V4VBEpFZDoWL
         WeTpC0o4hBjUz75c6GoGzKy3MlqRcDzYqeT50zolyVeTj+ehiA6wYpclbjR53sIexXnD
         L7Bli44IzHXI+/DRssCPDsFcttF1gVmqbWVZxewT1E7omYVxz3Xwalr6kwCew/fWlwQH
         p6eJalH+wYfWy9AFseZHk6ZMNV6m5sY3WTy5KjvMZTEm5jsK9IMJMQiXwwZSJu2NEzHg
         90xg==
X-Gm-Message-State: AOJu0Yw6dBeMFpuc20q2NiYMN/Enhr3S+MUQuwTagBa2tPQ2Q0IqZRK6
	+6QO02SEg24vLU7cYwi1Ez8sdhbhBEOougKYFZzX3G+pGevCr4RPJJILNng3cCI=
X-Google-Smtp-Source: AGHT+IGKMPYcJt5PfYIPyPZWi6QgWizho+wseuLkKZqmdgxi7otGRqXHMWOgPklU52YF7k7f3SrRKA==
X-Received: by 2002:a05:600c:378a:b0:40e:a302:5ce9 with SMTP id o10-20020a05600c378a00b0040ea3025ce9mr655114wmr.39.1706194216523;
        Thu, 25 Jan 2024 06:50:16 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c471100b0040d91fa270fsm2875875wmo.36.2024.01.25.06.50.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 06:50:16 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	andi.shyti@kernel.org,
	arnd@arndb.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 07/28] spi: s3c64xx: remove unneeded (void *) casts in of_match_table
Date: Thu, 25 Jan 2024 14:49:45 +0000
Message-ID: <20240125145007.748295-8-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240125145007.748295-1-tudor.ambarus@linaro.org>
References: <20240125145007.748295-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

of_device_id::data is an opaque pointer. No explicit cast is needed.
Remove unneeded (void *) casts in of_match_table. While here align the
compatible and data members.

Reviewed-by: Andi Shyti <andi.shyti@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 45 +++++++++++++++++++++++----------------
 1 file changed, 27 insertions(+), 18 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 230fda2b3417..137faf9f2697 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -1511,32 +1511,41 @@ static const struct platform_device_id s3c64xx_spi_driver_ids[] = {
 };
 
 static const struct of_device_id s3c64xx_spi_dt_match[] = {
-	{ .compatible = "samsung,s3c2443-spi",
-			.data = (void *)&s3c2443_spi_port_config,
+	{
+		.compatible = "samsung,s3c2443-spi",
+		.data = &s3c2443_spi_port_config,
 	},
-	{ .compatible = "samsung,s3c6410-spi",
-			.data = (void *)&s3c6410_spi_port_config,
+	{
+		.compatible = "samsung,s3c6410-spi",
+		.data = &s3c6410_spi_port_config,
 	},
-	{ .compatible = "samsung,s5pv210-spi",
-			.data = (void *)&s5pv210_spi_port_config,
+	{
+		.compatible = "samsung,s5pv210-spi",
+		.data = &s5pv210_spi_port_config,
 	},
-	{ .compatible = "samsung,exynos4210-spi",
-			.data = (void *)&exynos4_spi_port_config,
+	{
+		.compatible = "samsung,exynos4210-spi",
+		.data = &exynos4_spi_port_config,
 	},
-	{ .compatible = "samsung,exynos7-spi",
-			.data = (void *)&exynos7_spi_port_config,
+	{
+		.compatible = "samsung,exynos7-spi",
+		.data = &exynos7_spi_port_config,
 	},
-	{ .compatible = "samsung,exynos5433-spi",
-			.data = (void *)&exynos5433_spi_port_config,
+	{
+		.compatible = "samsung,exynos5433-spi",
+		.data = &exynos5433_spi_port_config,
 	},
-	{ .compatible = "samsung,exynos850-spi",
-			.data = (void *)&exynos850_spi_port_config,
+	{
+		.compatible = "samsung,exynos850-spi",
+		.data = &exynos850_spi_port_config,
 	},
-	{ .compatible = "samsung,exynosautov9-spi",
-			.data = (void *)&exynosautov9_spi_port_config,
+	{
+		.compatible = "samsung,exynosautov9-spi",
+		.data = &exynosautov9_spi_port_config,
 	},
-	{ .compatible = "tesla,fsd-spi",
-			.data = (void *)&fsd_spi_port_config,
+	{
+		.compatible = "tesla,fsd-spi",
+		.data = &fsd_spi_port_config,
 	},
 	{ },
 };
-- 
2.43.0.429.g432eaa2c6b-goog


