Return-Path: <devicetree+bounces-39800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B7884E262
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 14:51:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1624BB24642
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 13:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57D987B3D3;
	Thu,  8 Feb 2024 13:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CfU4L5YR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EC479923
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 13:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707400261; cv=none; b=eB1bywuvAXdhoLp6y4luCrH3KXbaqRu96UnBL6aaB218V7r/cgCRt7qsmTBtnSK9d8qnWnqF+630434ppWU3OBr6aohUiKFofcnxHqzgdfm+fJVRVnws1P1EfxOO6UD38iYuOegmSxduGtnI6K8p/VJhoV2zTPSCViN478fybqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707400261; c=relaxed/simple;
	bh=KjnXCwRxnG+I8/k2U9CBoqUpWqsb3SH0YxbrALUYHXw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=froc3Nvl9Vhc3vDJtDjccCoZWvjgCbsJx4dqVWDR4IJdJkQQi83QXlze8zorP1izGtE96QbS4fpJRy0vgdDEzXo0W8Ql6BA6LmtsNgRMBSGk2L7S+Ncm9OhMolwZLLP8lWOHJZt87IoXsse3H5GlwbYUueRG9Bufb95AMiOEJXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CfU4L5YR; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-33b5e649dd1so23496f8f.1
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 05:50:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707400257; x=1708005057; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VwdchoB+O7sv0WsEEn/4CtktSHX1kT968ZrMEmEikx8=;
        b=CfU4L5YR+LBcEFOPrssXGM79tigww3Eh3e//+d/8LilFnnvL3bkH5pyLkqfPqVM4Ya
         yYNLrLK/Sc7m5Qwx5ePv02ejeCgCX6eDk7BTKfwGRAyVa6ObmMVoeDvIeQj7pEzYaCer
         CqpUZzBD7BzhxsSSkZyiDnpPOecYd6cDEVCsJdrWLR6fthq+FlQGgybFzYMp+a5G6a22
         Ze4rqDTqpcg36IL2O2lkpaNnC6hZerORJzpusHofOWdyrU9HaXWQM0COo5yIJmPv12WZ
         ltdADFy6pdhuK9vR/GkVPcujbYWKt/u9/+Q2Sycvco0UzGPE4l887i0y7IzaH1Ym/c9Q
         Ls2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707400257; x=1708005057;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VwdchoB+O7sv0WsEEn/4CtktSHX1kT968ZrMEmEikx8=;
        b=UctpmC/MT2TpZbKsk+o9LeU6gcUOgouth6uuf9VSoZ0PGsJHKD6sCO7y4vSlDpT/5y
         joL5S1K0YJuN7HBCBTlN0qdZerTcM3kipJi64N6jD1R6MoaqpNtW+ISJ8oYM0VrhLpa6
         XLtMcb1fhdjtNZnVdZWifOnrmmiH+ANJrZRnZra3SlemxZ61WGd//9WFoJrdyY47SvW6
         mPXpc2aQZozN8QBLgFBYwLZz99Su/5ZLj1RxPFmKAEZn51KiN6ZFVnTh8M0CBozS6JuR
         qa5TviTJDx7gRFIRiZd/Wxq048+zkKWkuu8zLKvazdl5P3dzrwkVgB/BUejste60nz00
         dDCg==
X-Gm-Message-State: AOJu0YzbgZCb/2jt15/AjV7czCOH0Evuxf6ZVJsvz8nb1hEq/GkMjZTI
	0PRfFIwRDj+u9bIHMwwtIIQj1LG3Nfcj7+n3dVJYNSEJ6KgD6BJ8UoP9d+B0ebg=
X-Google-Smtp-Source: AGHT+IErDSEMm4+MzPBJg+PVj8BPXIsnEGIWYWHhsX4FdGK1phMhY2zSWecyUY22Ctak1N91C6WGSQ==
X-Received: by 2002:a5d:6907:0:b0:33b:4818:f438 with SMTP id t7-20020a5d6907000000b0033b4818f438mr6147709wru.50.1707400257283;
        Thu, 08 Feb 2024 05:50:57 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVD2BtTdQyMMYRJrTK3bDt5vQN9wkgVRullPlVDHnJ996iF2irv2e1knx2f8tULTWZKWLwXSvaVzgW6+rvuLbd8HgD6d0U79NNGQFIytJTC0NSZjkc7KdXhrJe6bNVCfFRXRcU09Fn5L9D9Yk82If0OEEwAesgVqVzSYNIxgFwPqN1YvAZWARQS0+o8RT0SYzfiqI3pNu/I+Tuvx/P3yr0FsSTEbZLQAWw8zmirZcBuqRpoADQyF1IaKb+JbziBcXI6r89RCE0epPpdtgwOcYCbHzi8cQp84fGG4zL5buMhXFEMxJv3DCvDdzqru7MZFcDIHuAwBfzHXrhynGJrfkS+zWPLp9iKftslplQdX5GF1xO0UACGuTEa9zxIr1NqupKCfVWeGqX4IUz4NsaJqXn3f1Xm36h2Gx8uPh18ybA23Hcsz85oDZQa1bzW7LhEwFIpMun1RkATi09ppilGbVt+VyUavd5HFwDDaHgFmuV83gQRh3yRdXTcUnWwLM4haTKqJ1B+2GYoEe3QHreGBzvLXynmBlPP3J9BiREUdZFiBCy/ju0/I6e77ft6ftdUSEAfeqmL+HqmiR9K0oDFNCHTKoXjhM5z4bLYtl+GPA==
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id m20-20020a056000181400b0033b43a5f53csm3618820wrh.103.2024.02.08.05.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 05:50:56 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	robh@kernel.org,
	andi.shyti@kernel.org,
	semen.protsenko@linaro.org
Cc: krzysztof.kozlowski@linaro.org,
	alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	arnd@arndb.de,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 05/12] spi: s3c64xx: retrieve the FIFO depth from the device tree
Date: Thu,  8 Feb 2024 13:50:38 +0000
Message-ID: <20240208135045.3728927-6-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.687.g38aa6559b0-goog
In-Reply-To: <20240208135045.3728927-1-tudor.ambarus@linaro.org>
References: <20240208135045.3728927-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are SoCs that configure different FIFO depths for their instances
of the SPI IP. See the fifo_lvl_mask defined for exynos4_spi_port_config
for example:
        .fifo_lvl_mask  = { 0x1ff, 0x7F, 0x7F },
The first instance of the IP is configured with 256 bytes FIFOs, whereas
the last two are configured with 64 bytes FIFOs.

Instead of mangling with the .fifo_lvl_mask and its dependency of the DT
alias ID, allow such SoCs to determine the FIFO depth via the
``fifo-depth`` DT property.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 72572e23cde5..b1c63f75021d 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -1263,7 +1263,9 @@ static int s3c64xx_spi_probe(struct platform_device *pdev)
 		sdd->port_id = pdev->id;
 	}
 
-	sdd->fifo_depth = FIFO_DEPTH(sdd);
+	if (of_property_read_u32(pdev->dev.of_node, "fifo-depth",
+				 &sdd->fifo_depth))
+		sdd->fifo_depth = FIFO_DEPTH(sdd);
 
 	s3c64xx_spi_set_fifomask(sdd);
 
-- 
2.43.0.687.g38aa6559b0-goog


