Return-Path: <devicetree+bounces-34856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5293B83B6AE
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 02:37:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A91D1F210D6
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 01:37:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5747310A29;
	Thu, 25 Jan 2024 01:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XqAL1TUh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA90F511
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 01:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706146549; cv=none; b=c4BnZSCXvDo1HB5pxk5h5CrAv/7utWukyUHpWx/DKzplGKZSXXuxt8lV8la1vlqjceWkUJPeaj6OFnPRUlracYSqXzoI84i+yaHqQ8BO5HNKIInS4X9xfd5Ar0mB/qi42qNFhhvnViGS8Uxk9PVjslNwCnXbZ6AKQ/Tm8v0MeAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706146549; c=relaxed/simple;
	bh=1F1Aj5cUnjbKZW0MFBSCuoAq2nQMH9+wqAVLv2/faSE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=T2Zwuq23eaawNwm7H94fJccLeTZefG2neqI8cK2CLWf4rxL10XW1lOPWDjD5GKVqpS08mqx3e9jd7U5EUjoWz/DRiZNM1Ms49BcHgPHxKP8E7k3Hoi2UWTwJBMaiNh2/wAjn/Oeox3lrOqhOr/368m9DKodHXjahgZmBk6SgKoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XqAL1TUh; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3bdd7fae218so123818b6e.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 17:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706146546; x=1706751346; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mjuRSpcIWXYqOZvjAWqHzFzzwLvT3n28RLPhePkG0iw=;
        b=XqAL1TUh/Hj2SWsT/wrAGfwLjM3wFoOIQJcB2Lz3/AvntXclQN1vLys4EPn5GxhRp9
         gu22v4OIP3BIYB7rlqHatR63ourz23I6ePwj1+id42/RY/x9ZYxVR3qLx9EIxX54By6O
         89P3KrQB8u8k6hh84NB1GdZmbwcHMLFOtDbiT7TdNvqu+mhoq27aLAzO353OXY1slM4M
         Hu59AFOfobG/vATfkf5gWEoQaPfv+PwC7A3iBVl2lFAb0XEhM9AatBraBmzUzGUEy0h0
         vwlU7e3VQ0NenPFsYnO68uC/BqqwFSDgYeikjP3pziolZ6jQ1DvKA3P4oK03oS41uDO8
         biAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706146546; x=1706751346;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mjuRSpcIWXYqOZvjAWqHzFzzwLvT3n28RLPhePkG0iw=;
        b=McOLstAfRNwrsidrQdr05U7QPhveG91QrZIW1/QBtH2O67MSfcq7MFlVxYZnlvX06f
         N67tlvGhI2bAlUFfMs2ypvUE6F5lTC95767bh7rHBbtPQRpCOLxHssknbMzzpn8ALEZt
         sbPdtqyviariGl/5dwyUu3DumItEu3Zl3XuTFWi5UckXMReWSb9HkANagtPT0ZQOAM8a
         QcnKZamUJ7sWvCPrsW36RZCoJVqRbKv6VZeHVF6rGRReYYv8q+zEpLjZEOvZXnsK9wHj
         I76T6mIX3CWO9twis3IC24Q0dN2ey2hr5kNVmi/UE1vmH6S+ZK21Evjhp7FFvAt6AZ6z
         z9pA==
X-Gm-Message-State: AOJu0Yxb2qM6vofQVdqh1N+FVzV2BbIn4BOMLw07BiUBD4D2oaA7w49v
	2/fUKTp57WzVJVBii87KmGDDVJ73kZCphINqcq5igaXwsCh1Q1UbXxMrmo5wRvE=
X-Google-Smtp-Source: AGHT+IF1NjOAcZlzFenDqy/+nk1Kq9lvw6v6ZRFazJxCZbfcK9ZwgvkBymMMDhSaM/QVllJw7mJRjQ==
X-Received: by 2002:a05:6808:309c:b0:3bd:cd84:d119 with SMTP id bl28-20020a056808309c00b003bdcd84d119mr231759oib.5.1706146545915;
        Wed, 24 Jan 2024 17:35:45 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id k10-20020a056808068a00b003bda3125e3csm2446127oig.48.2024.01.24.17.35.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 17:35:45 -0800 (PST)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] spi: s3c64xx: Add Exynos850 support
Date: Wed, 24 Jan 2024 19:35:43 -0600
Message-Id: <20240125013543.31067-3-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240125013543.31067-1-semen.protsenko@linaro.org>
References: <20240125013543.31067-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SPI port configuration for Exynos850 SoC. It has 3 USI blocks which
can be configured in SPI mode:

  * spi_0: BLK_PERI_SPI_0 (0x13940000)
  * spi_1: BLK_ALIVE_USI_CMGP00 (0x11d00000)
  * spi_2: BLK_ALIVE_USI_CMGP01 (0x11d20000)

SPI FIFO depth is 64 bytes for all those SPI blocks, so the
.fifo_lvl_mask value is set to 0x7f. All blocks have DIV_4 as the
default internal clock divider, and an internal loopback mode to run
a loopback test.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Changes in v2:
  - Collected R-b tags

 drivers/spi/spi-s3c64xx.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 432ec60d3568..7f7eb8f742e4 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -1460,6 +1460,17 @@ static const struct s3c64xx_spi_port_config exynos5433_spi_port_config = {
 	.quirks		= S3C64XX_SPI_QUIRK_CS_AUTO,
 };
 
+static const struct s3c64xx_spi_port_config exynos850_spi_port_config = {
+	.fifo_lvl_mask	= { 0x7f, 0x7f, 0x7f },
+	.rx_lvl_offset	= 15,
+	.tx_st_done	= 25,
+	.clk_div	= 4,
+	.high_speed	= true,
+	.clk_from_cmu	= true,
+	.has_loopback	= true,
+	.quirks		= S3C64XX_SPI_QUIRK_CS_AUTO,
+};
+
 static const struct s3c64xx_spi_port_config exynosautov9_spi_port_config = {
 	.fifo_lvl_mask	= { 0x1ff, 0x1ff, 0x7f, 0x7f, 0x7f, 0x7f, 0x1ff, 0x7f,
 			    0x7f, 0x7f, 0x7f, 0x7f},
@@ -1514,6 +1525,9 @@ static const struct of_device_id s3c64xx_spi_dt_match[] = {
 	{ .compatible = "samsung,exynos5433-spi",
 			.data = (void *)&exynos5433_spi_port_config,
 	},
+	{ .compatible = "samsung,exynos850-spi",
+			.data = (void *)&exynos850_spi_port_config,
+	},
 	{ .compatible = "samsung,exynosautov9-spi",
 			.data = (void *)&exynosautov9_spi_port_config,
 	},
-- 
2.39.2


