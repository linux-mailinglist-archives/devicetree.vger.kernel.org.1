Return-Path: <devicetree+bounces-179615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA59AC0EE7
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 16:54:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F01F37AF391
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66B3A28E595;
	Thu, 22 May 2025 14:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XAwl34Qg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D0528DF23
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 14:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747925574; cv=none; b=t1oeINXvh+ORJiFAOVO5UmSA9dEPQtU6USqs7k7m10EbeH6iAWMTEfg/7vUJfvIQdJ51JCB4R9O7r/hahEvFsB1rgwda5lUGZNMombtJonGwttDbSZXAgiV1maZ1nh1SK3q4FZCt+B7WYGwu55zx1dOZTAYA0TCfFWB443v+8aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747925574; c=relaxed/simple;
	bh=1jgVYXcuSQUYEU1dVAp9lFPNyoIv4PIWXjFIMl5Vkvo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dz+HzXNnvKHWE7AsqG0wI+pcKlW0ycv9+k2Ro3QNRwOc8VEgTEQQsu9uuztLJDgny6PXjt2/AUR/4cEAqsfto2ND6Phn7D0fPadZTf8+ZcO5b70/vRFw2aV3Xc9n34B+tRQ2v0Q9Gbtk1EeZP3A6R7Knqdlj/qMcIX/7ExfF8RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XAwl34Qg; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43ede096d73so60191305e9.2
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 07:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747925569; x=1748530369; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0z6hcyVZAe0X+PJjkOMiFN3VGBYDX0qmANiIo/JWNSc=;
        b=XAwl34Qgvi1u2n/yPt7ihl7suWKBdzFD2ClY1Y8LOLtx6YDvx6IGPjWaU03A7heRn3
         4sQw8vJZ7kEZfUgNci88e+lXKxYwGR+5HLV+T8ghyCUtTys0RUSZ+KIakbzBmM1+h5iW
         DpzVFB52m15Kg+gldFTil/bX83lvHNAaYaFyXfYBBoAw0WezwPi/w/ZCcqzGh3W60gzK
         IduXjTbmfG+pFis0cxCG49U9H0nMTOHILTMY/aJH8PPiHyyDEKsbYotzKeAIwiogayHv
         c5MLpvngRZWbKM06HPMyPdjGlr5LbDRVh9XqM15WRhe10493v95Yn1lDSjvRAguKbsMy
         cG0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747925569; x=1748530369;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0z6hcyVZAe0X+PJjkOMiFN3VGBYDX0qmANiIo/JWNSc=;
        b=rC2XOCtwkMyFUKnFrrGHTCICrbYi7jTI5uT84s+Wa2PUB55RTPcPA2mtHy6xtniws0
         jc5e7aI8tLVWCBGHHNLEFaalWrWPbRjZqZwkoniecgkHdqBQSkFULTk/g8UCjKE2H2aq
         bo35Z8LREk+dcUj8Hob/031PeCPQR/T+ykZQ1EXwjMLeRUDrGde3yUnIUxcdYwTpOry+
         s+uYMxFnkkboB1gfF64c6H31uMGQ7BMq1jWZqkDhHftqLGl8Pa+NI3nMhyvffFE1hS1f
         FPwdKBKpmIrNe7f/QFaEcVIppKZSG7LboiatEq+9OIsRB2BC10CrZqGqvjMHwsg7GRsp
         viYA==
X-Forwarded-Encrypted: i=1; AJvYcCX5kyX2hUwSTB6hlLQl+TfMw8sr9MfBpgJLqlvszVDoPGSaTQ7rlzOVorG+ZR5E5ox4TJjEi41CIVFu@vger.kernel.org
X-Gm-Message-State: AOJu0YyJPIan8tV3oI1I71NdcVpGOqX2ZSKf/OMG7fvD4qjW1u2x3hoG
	MXXakgKbR1R6biNdp9oXgcNsrwqzkTCbwT1y6unKtFahb6K6MukybA1KVTOnq4hZ/5Y=
X-Gm-Gg: ASbGncthKj/ITf9wc7JqN+4FIyOXkVoGI0Vpr9gqS/rO7XF4wqQOwP7al4FZCqtSNPe
	X0BMO0IGok9Ds/TFtHu3jUdMGg4XdlbBlmMcH/HNf2x9RAIZahDNKHEmqyCPjGHzvKEeGZFz512
	n59mlodcipS5TEfoBExjMMh38ZIsyHO0/nz0Xp0fXtpgtJgYoaWsEwil9+N0r2Pj4YmKiNBTUjf
	tn9DWjjubBmT8IcUEfdeUoJR8kmZFL1h4+j3dBMk/mzZ5K5h9+LWKq/DC2IxbWHg+6+2CGiyv5f
	e+ENAyNeLj7HmaaJxgfHLxPWjA+LbR12hL0TF/ui9pxilnw3Bwl8Jc1MrF7OcE9D7rJCq48=
X-Google-Smtp-Source: AGHT+IHLLDacG6DJNXNgMnaF7nWhkFGvXH5XjtvmKDssa24rTSeprfh0E2gKpdqYxF8Xn+tcyTPTow==
X-Received: by 2002:a05:600c:c0d2:20b0:43c:f597:d589 with SMTP id 5b1f17b1804b1-442fda2e7d3mr147957455e9.27.1747925569155;
        Thu, 22 May 2025 07:52:49 -0700 (PDT)
Received: from ho-tower-lan.lan ([37.18.136.128])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f78aeb56sm104965555e9.27.2025.05.22.07.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 07:52:48 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 22 May 2025 15:51:35 +0100
Subject: [PATCH v2 06/14] spi: spi-fsl-dspi: Add config and regmaps for
 S32G platforms
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-james-nxp-spi-v2-6-bea884630cfb@linaro.org>
References: <20250522-james-nxp-spi-v2-0-bea884630cfb@linaro.org>
In-Reply-To: <20250522-james-nxp-spi-v2-0-bea884630cfb@linaro.org>
To: Vladimir Oltean <olteanv@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
 Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, 
 NXP S32 Linux Team <s32@nxp.com>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Chao Fu <B44548@freescale.com>, 
 Xiubo Li <Li.Xiubo@freescale.com>, Lukasz Majewski <lukma@denx.de>, 
 linux-spi@vger.kernel.org, imx@lists.linux.dev, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Vladimir Oltean <vladimir.oltean@nxp.com>, 
 Dan Carpenter <dan.carpenter@linaro.org>, 
 Larisa Grigore <larisa.grigore@nxp.com>, 
 James Clark <james.clark@linaro.org>
X-Mailer: b4 0.14.0

From: Larisa Grigore <larisa.grigore@nxp.com>

S32G adds SPI_{T,R}XFR4 and extends SPI_CTAR registers to 5. Add the
new regmaps, configs and bits.

dspi_volatile_ranges gets SPI_{T,R}XFR4 added which affects all
platforms, however they are further limited by dspi_yes_ranges.

Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-dspi.c | 39 ++++++++++++++++++++++++++++++++++++---
 1 file changed, 36 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index 437a8db9fa2b..10e511ba1cd8 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -35,7 +35,7 @@
 #define SPI_TCR				0x08
 #define SPI_TCR_GET_TCNT(x)		(((x) & GENMASK(31, 16)) >> 16)
 
-#define SPI_CTAR(x)			(0x0c + (((x) & GENMASK(1, 0)) * 4))
+#define SPI_CTAR(x)			(0x0c + (((x) & GENMASK(2, 0)) * 4))
 #define SPI_CTAR_FMSZ(x)		(((x) << 27) & GENMASK(30, 27))
 #define SPI_CTAR_CPOL			BIT(26)
 #define SPI_CTAR_CPHA			BIT(25)
@@ -93,12 +93,14 @@
 #define SPI_TXFR1			0x40
 #define SPI_TXFR2			0x44
 #define SPI_TXFR3			0x48
+#define SPI_TXFR4			0x4C
 #define SPI_RXFR0			0x7c
 #define SPI_RXFR1			0x80
 #define SPI_RXFR2			0x84
 #define SPI_RXFR3			0x88
+#define SPI_RXFR4			0x8C
 
-#define SPI_CTARE(x)			(0x11c + (((x) & GENMASK(1, 0)) * 4))
+#define SPI_CTARE(x)			(0x11c + (((x) & GENMASK(2, 0)) * 4))
 #define SPI_CTARE_FMSZE(x)		(((x) & 0x1) << 16)
 #define SPI_CTARE_DTCP(x)		((x) & 0x7ff)
 
@@ -136,6 +138,7 @@ enum {
 	LX2160A,
 	MCF5441X,
 	VF610,
+	S32G,
 };
 
 static const struct regmap_range dspi_yes_ranges[] = {
@@ -147,15 +150,29 @@ static const struct regmap_range dspi_yes_ranges[] = {
 	regmap_reg_range(SPI_SREX, SPI_SREX),
 };
 
+static const struct regmap_range s32g_dspi_yes_ranges[] = {
+	regmap_reg_range(SPI_MCR, SPI_MCR),
+	regmap_reg_range(SPI_TCR, SPI_CTAR(5)),
+	regmap_reg_range(SPI_SR, SPI_TXFR4),
+	regmap_reg_range(SPI_RXFR0, SPI_RXFR4),
+	regmap_reg_range(SPI_CTARE(0), SPI_CTARE(5)),
+	regmap_reg_range(SPI_SREX, SPI_SREX),
+};
+
 static const struct regmap_access_table dspi_access_table = {
 	.yes_ranges	= dspi_yes_ranges,
 	.n_yes_ranges	= ARRAY_SIZE(dspi_yes_ranges),
 };
 
+static const struct regmap_access_table s32g_dspi_access_table = {
+	.yes_ranges	= s32g_dspi_yes_ranges,
+	.n_yes_ranges	= ARRAY_SIZE(s32g_dspi_yes_ranges),
+};
+
 static const struct regmap_range dspi_volatile_ranges[] = {
 	regmap_reg_range(SPI_MCR, SPI_TCR),
 	regmap_reg_range(SPI_SR, SPI_SR),
-	regmap_reg_range(SPI_PUSHR, SPI_RXFR3),
+	regmap_reg_range(SPI_PUSHR, SPI_RXFR4),
 	regmap_reg_range(SPI_SREX, SPI_SREX),
 };
 
@@ -167,6 +184,7 @@ static const struct regmap_access_table dspi_volatile_table = {
 enum {
 	DSPI_REGMAP,
 	DSPI_XSPI_REGMAP,
+	S32G_DSPI_XSPI_REGMAP,
 	DSPI_PUSHR,
 };
 
@@ -189,6 +207,15 @@ static const struct regmap_config dspi_regmap_config[] = {
 		.rd_table	= &dspi_access_table,
 		.wr_table	= &dspi_access_table,
 	},
+	[S32G_DSPI_XSPI_REGMAP] = {
+		.reg_bits	= 32,
+		.val_bits	= 32,
+		.reg_stride	= 4,
+		.max_register	= SPI_SREX,
+		.volatile_table	= &dspi_volatile_table,
+		.wr_table	= &s32g_dspi_access_table,
+		.rd_table	= &s32g_dspi_access_table,
+	},
 	[DSPI_PUSHR] = {
 		.name		= "pushr",
 		.reg_bits	= 16,
@@ -263,6 +290,12 @@ static const struct fsl_dspi_devtype_data devtype_data[] = {
 		.fifo_size		= 16,
 		.regmap			= &dspi_regmap_config[DSPI_REGMAP],
 	},
+	[S32G] = {
+		.trans_mode	  = DSPI_XSPI_MODE,
+		.max_clock_factor = 1,
+		.fifo_size	  = 5,
+		.regmap		  = &dspi_regmap_config[S32G_DSPI_XSPI_REGMAP],
+	},
 };
 
 struct fsl_dspi_dma {

-- 
2.34.1


