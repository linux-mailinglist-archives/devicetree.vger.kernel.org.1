Return-Path: <devicetree+bounces-175520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F30AB1185
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:07:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 390AF9E0E13
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F12A628F94C;
	Fri,  9 May 2025 11:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tFa3SB56"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C798828F531
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 11:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746788819; cv=none; b=jL/ti1UfynVTIfCk9Z1zPqsI1fvsNAnlQuh+N+VXaLTDFDm06EYY9bw4UZZB0D1vvlr2nytTRywhJfpy0XpaBPkM6ogv+8iHd3SQcNjqePqQqx6Wp0M6H9kr4hC5tT8Frgk2R61+idER6yJwRDBcwlz2vIKENos5Y8Oh542XWuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746788819; c=relaxed/simple;
	bh=2Me3n9aaBCtjK+qaTkwH9V1pF/7QGlCrjR9j27nmWwE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HKJ6IuY4Jfe6RC2GFc43TTvH5vIE/yMfRB4Uafa5mJ83JC8VJG098cYpsOFDlQGHiViyBuk7xOIbX0ErWDAH3CT2/bwXYYfM1ZZJ5+JEVRimA60951NN+HJo5bpi1wt059mr07qC+RRmMxwSBIo3xFso+X89u1ElsGw+BxoSl60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tFa3SB56; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3a1d8c0966fso847201f8f.1
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 04:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746788816; x=1747393616; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SUoeaJOnz98LhxzrB2OQnuTIO89rQsZt/lwrASJetuQ=;
        b=tFa3SB56OlxIm4M6PvsOZ+b8+1wTH1hlihXXvrJoob9Din6ZUUTPyC1WbCXXdeR76t
         6DcfLgHbcvsstA1fyD0x7y7mLwUjlvBHtFFmisRlMU2LUyS7MDszZsbtJZ8e9iamRUGy
         rpqJtTPv2txKtLKDNiJi5hqy1orGtVbRGCZFcuTj5F53DCrRiKWTQXd98a+riZocPcWW
         Pg498khWnvIc92fKyTCXza2wDUtGpbdW1AxKCQCcuPgHwqUd9diaVJWU3ae37R8lnf64
         da40gC7wZVzZcE+iDdLw2VUnlDz+tlMNgospItPEAVzyNKxGKW0F3VGqL7UFl+JCPMrn
         Wlkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746788816; x=1747393616;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SUoeaJOnz98LhxzrB2OQnuTIO89rQsZt/lwrASJetuQ=;
        b=GdeNjB9iKiqKKRoR3SHMahQNnhvkfQI+Z/RIVWoYossotLcVHkAkSiFvD5R8RWIQDu
         zcwoRcGyRVmGn/AAnJiOlssC9j5nx2275Rj2tIC/BcFhp/y6ant2jF7D2nJrgHn12Mfx
         SiSGHX+RjSacbUQAueEnLk0mmy0enbTEtNq5NnN4yY/W9BUjoVfmzizjfRpR0t2AWv/I
         eEtlp9BAkBtSB+nZ+c6n62dSinmN4E5YBTbQqjl82/T/CkVmyY8bTz7zaxrg/OrhcXmA
         lDLA5gpmBas+WS7HWxeMsatqu5Uxk2t+q7Unc3P7TbpbMg8KpcuHbnEgnplQkINv+gGY
         pTdA==
X-Forwarded-Encrypted: i=1; AJvYcCXMoR69P1280CqqvzXXvvaHzS23YqhdZ+xazXhanN3C53b8nrkCHQaXIcenxr/LTzVV8HNiTfktS5Ly@vger.kernel.org
X-Gm-Message-State: AOJu0YyAPOlgERsBJ0rpds0HqBgvPeqO6rWNk/nJcyze5iruSgIS4+B6
	C7ekLlx4Lk/HmIKdTxcuBuJMLlS9ws3FVYNieGA5mxEeYpUW5Hi/361SpkjugmY=
X-Gm-Gg: ASbGncvcEq6NC6uHYiQmGX633nG/guQaSAC6IIHYx4QfkMVqBlJ4LjFKIhMPqzNPOfi
	vkN3KyVWjJrc+TNpd/B9K/lnPKVTQnnw9XM4QQ5VpnryxPoCrZy5Dd2RaiK8tQr66Er+bmusXX4
	ExMceicOXT8XM1ZcoRpvwsTM20Whjd3W8ij7i8hcDufs0rlNBGnlgkk6GQWlgGclEuGOT8GM1dZ
	LeUwlP11VIEbnGYFeRbn8YUIOyUOahNDbwQHwZkqpYVvaJ8yOS6hsytFEUuEcAWNKFej097tdzo
	n35xpX4te8dTjE24a3jI/9YbcXgqW9zMENesKHm8WDG7soA=
X-Google-Smtp-Source: AGHT+IFJQRyVMr2U93vokfpSUulnWLDfNfE0bAch8J9y68HcjUDSO608e30Saz1ZNqv66Dvdty+TYw==
X-Received: by 2002:a05:6000:2ab:b0:39f:c05:c220 with SMTP id ffacd0b85a97d-3a0b9941e27mr6449970f8f.22.1746788815916;
        Fri, 09 May 2025 04:06:55 -0700 (PDT)
Received: from ho-tower-lan.lan ([77.81.75.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ecadfsm2914797f8f.22.2025.05.09.04.06.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 04:06:55 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Fri, 09 May 2025 12:05:48 +0100
Subject: [PATCH 01/14] spi: spi-fsl-dspi: Define regmaps per device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250509-james-nxp-spi-v1-1-32bfcd2fea11@linaro.org>
References: <20250509-james-nxp-spi-v1-0-32bfcd2fea11@linaro.org>
In-Reply-To: <20250509-james-nxp-spi-v1-0-32bfcd2fea11@linaro.org>
To: Vladimir Oltean <olteanv@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
 Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, 
 NXP S32 Linux Team <s32@nxp.com>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, larisa.grigore@nxp.com, arnd@linaro.org, 
 andrei.stefanescu@nxp.com, dan.carpenter@linaro.org
Cc: linux-spi@vger.kernel.org, imx@lists.linux.dev, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, James Clark <james.clark@linaro.org>
X-Mailer: b4 0.14.0

Refactor the regmaps so they can be defined per device rather than
programmatically. This will allow us to add two new regmaps for S32G in
a later commit.

No functional changes.

Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-dspi.c | 121 ++++++++++++++++++++++++---------------------
 1 file changed, 66 insertions(+), 55 deletions(-)

diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index 067c954cb6ea..31ea8ce81e98 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -121,6 +121,7 @@ struct fsl_dspi_devtype_data {
 	enum dspi_trans_mode	trans_mode;
 	u8			max_clock_factor;
 	int			fifo_size;
+	const struct regmap_config *regmap;
 };
 
 enum {
@@ -136,60 +137,123 @@ enum {
 	VF610,
 };
 
+static const struct regmap_range dspi_volatile_ranges[] = {
+	regmap_reg_range(SPI_MCR, SPI_TCR),
+	regmap_reg_range(SPI_SR, SPI_SR),
+	regmap_reg_range(SPI_PUSHR, SPI_RXFR3),
+};
+
+static const struct regmap_access_table dspi_volatile_table = {
+	.yes_ranges	= dspi_volatile_ranges,
+	.n_yes_ranges	= ARRAY_SIZE(dspi_volatile_ranges),
+};
+
+static const struct regmap_range dspi_xspi_volatile_ranges[] = {
+	regmap_reg_range(SPI_MCR, SPI_TCR),
+	regmap_reg_range(SPI_SR, SPI_SR),
+	regmap_reg_range(SPI_PUSHR, SPI_RXFR3),
+	regmap_reg_range(SPI_SREX, SPI_SREX),
+};
+
+static const struct regmap_access_table dspi_xspi_volatile_table = {
+	.yes_ranges	= dspi_xspi_volatile_ranges,
+	.n_yes_ranges	= ARRAY_SIZE(dspi_xspi_volatile_ranges),
+};
+
+enum {
+	DSPI_REGMAP,
+	DSPI_XSPI_REGMAP,
+	DSPI_PUSHR
+};
+
+static const struct regmap_config dspi_regmap_config[] = {
+	[DSPI_REGMAP] = {
+		.reg_bits	= 32,
+		.val_bits	= 32,
+		.reg_stride	= 4,
+		.max_register	= 0x88,
+		.volatile_table	= &dspi_volatile_table
+	},
+	[DSPI_XSPI_REGMAP] = {
+		.reg_bits	= 32,
+		.val_bits	= 32,
+		.reg_stride	= 4,
+		.max_register	= 0x13c,
+		.volatile_table	= &dspi_xspi_volatile_table
+	},
+	[DSPI_PUSHR] = {
+		.name		= "pushr",
+		.reg_bits	= 16,
+		.val_bits	= 16,
+		.reg_stride	= 2,
+		.max_register	= 0x2
+	}
+};
+
 static const struct fsl_dspi_devtype_data devtype_data[] = {
 	[VF610] = {
 		.trans_mode		= DSPI_DMA_MODE,
 		.max_clock_factor	= 2,
 		.fifo_size		= 4,
+		.regmap			= &dspi_regmap_config[DSPI_REGMAP]
 	},
 	[LS1021A] = {
 		/* Has A-011218 DMA erratum */
 		.trans_mode		= DSPI_XSPI_MODE,
 		.max_clock_factor	= 8,
 		.fifo_size		= 4,
+		.regmap			= &dspi_regmap_config[DSPI_XSPI_REGMAP]
 	},
 	[LS1012A] = {
 		/* Has A-011218 DMA erratum */
 		.trans_mode		= DSPI_XSPI_MODE,
 		.max_clock_factor	= 8,
 		.fifo_size		= 16,
+		.regmap			= &dspi_regmap_config[DSPI_XSPI_REGMAP]
 	},
 	[LS1028A] = {
 		.trans_mode		= DSPI_XSPI_MODE,
 		.max_clock_factor	= 8,
 		.fifo_size		= 4,
+		.regmap			= &dspi_regmap_config[DSPI_XSPI_REGMAP]
 	},
 	[LS1043A] = {
 		/* Has A-011218 DMA erratum */
 		.trans_mode		= DSPI_XSPI_MODE,
 		.max_clock_factor	= 8,
 		.fifo_size		= 16,
+		.regmap			= &dspi_regmap_config[DSPI_XSPI_REGMAP]
 	},
 	[LS1046A] = {
 		/* Has A-011218 DMA erratum */
 		.trans_mode		= DSPI_XSPI_MODE,
 		.max_clock_factor	= 8,
 		.fifo_size		= 16,
+		.regmap			= &dspi_regmap_config[DSPI_XSPI_REGMAP]
 	},
 	[LS2080A] = {
 		.trans_mode		= DSPI_XSPI_MODE,
 		.max_clock_factor	= 8,
 		.fifo_size		= 4,
+		.regmap			= &dspi_regmap_config[DSPI_XSPI_REGMAP]
 	},
 	[LS2085A] = {
 		.trans_mode		= DSPI_XSPI_MODE,
 		.max_clock_factor	= 8,
 		.fifo_size		= 4,
+		.regmap			= &dspi_regmap_config[DSPI_XSPI_REGMAP]
 	},
 	[LX2160A] = {
 		.trans_mode		= DSPI_XSPI_MODE,
 		.max_clock_factor	= 8,
 		.fifo_size		= 4,
+		.regmap			= &dspi_regmap_config[DSPI_XSPI_REGMAP]
 	},
 	[MCF5441X] = {
 		.trans_mode		= DSPI_DMA_MODE,
 		.max_clock_factor	= 8,
 		.fifo_size		= 16,
+		.regmap			= &dspi_regmap_config[DSPI_REGMAP]
 	},
 };
 
@@ -1167,54 +1231,6 @@ static int dspi_resume(struct device *dev)
 
 static SIMPLE_DEV_PM_OPS(dspi_pm, dspi_suspend, dspi_resume);
 
-static const struct regmap_range dspi_volatile_ranges[] = {
-	regmap_reg_range(SPI_MCR, SPI_TCR),
-	regmap_reg_range(SPI_SR, SPI_SR),
-	regmap_reg_range(SPI_PUSHR, SPI_RXFR3),
-};
-
-static const struct regmap_access_table dspi_volatile_table = {
-	.yes_ranges	= dspi_volatile_ranges,
-	.n_yes_ranges	= ARRAY_SIZE(dspi_volatile_ranges),
-};
-
-static const struct regmap_config dspi_regmap_config = {
-	.reg_bits	= 32,
-	.val_bits	= 32,
-	.reg_stride	= 4,
-	.max_register	= 0x88,
-	.volatile_table	= &dspi_volatile_table,
-};
-
-static const struct regmap_range dspi_xspi_volatile_ranges[] = {
-	regmap_reg_range(SPI_MCR, SPI_TCR),
-	regmap_reg_range(SPI_SR, SPI_SR),
-	regmap_reg_range(SPI_PUSHR, SPI_RXFR3),
-	regmap_reg_range(SPI_SREX, SPI_SREX),
-};
-
-static const struct regmap_access_table dspi_xspi_volatile_table = {
-	.yes_ranges	= dspi_xspi_volatile_ranges,
-	.n_yes_ranges	= ARRAY_SIZE(dspi_xspi_volatile_ranges),
-};
-
-static const struct regmap_config dspi_xspi_regmap_config[] = {
-	{
-		.reg_bits	= 32,
-		.val_bits	= 32,
-		.reg_stride	= 4,
-		.max_register	= 0x13c,
-		.volatile_table	= &dspi_xspi_volatile_table,
-	},
-	{
-		.name		= "pushr",
-		.reg_bits	= 16,
-		.val_bits	= 16,
-		.reg_stride	= 2,
-		.max_register	= 0x2,
-	},
-};
-
 static int dspi_init(struct fsl_dspi *dspi)
 {
 	unsigned int mcr;
@@ -1272,7 +1288,6 @@ static int dspi_target_abort(struct spi_controller *host)
 static int dspi_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
-	const struct regmap_config *regmap_config;
 	struct fsl_dspi_platform_data *pdata;
 	struct spi_controller *ctlr;
 	int ret, cs_num, bus_num = -1;
@@ -1355,11 +1370,7 @@ static int dspi_probe(struct platform_device *pdev)
 		goto out_ctlr_put;
 	}
 
-	if (dspi->devtype_data->trans_mode == DSPI_XSPI_MODE)
-		regmap_config = &dspi_xspi_regmap_config[0];
-	else
-		regmap_config = &dspi_regmap_config;
-	dspi->regmap = devm_regmap_init_mmio(&pdev->dev, base, regmap_config);
+	dspi->regmap = devm_regmap_init_mmio(&pdev->dev, base, dspi->devtype_data->regmap);
 	if (IS_ERR(dspi->regmap)) {
 		dev_err(&pdev->dev, "failed to init regmap: %ld\n",
 				PTR_ERR(dspi->regmap));
@@ -1370,7 +1381,7 @@ static int dspi_probe(struct platform_device *pdev)
 	if (dspi->devtype_data->trans_mode == DSPI_XSPI_MODE) {
 		dspi->regmap_pushr = devm_regmap_init_mmio(
 			&pdev->dev, base + SPI_PUSHR,
-			&dspi_xspi_regmap_config[1]);
+			&dspi_regmap_config[DSPI_PUSHR]);
 		if (IS_ERR(dspi->regmap_pushr)) {
 			dev_err(&pdev->dev,
 				"failed to init pushr regmap: %ld\n",

-- 
2.34.1


