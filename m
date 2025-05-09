Return-Path: <devicetree+bounces-175523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D9EAB118C
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:07:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC70F7BDA93
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E12A28F505;
	Fri,  9 May 2025 11:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yLxOoJY0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0935A28FFCA
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 11:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746788824; cv=none; b=ZZFi/nZkyZBIU8sy5xcpJF7RTSqxdEdnOFa1kcDl83h0/TE3uPxjJMoDeskUk1tMrllBD5yOk5XnOglPI03J6z10r+GEkJ7+AwtAzTMJJujkZZVkd2JZNQAOj56cEuhzzqXxImw0LDj3Mkm0QHpihx3mdoD370mc7dLMigJc0KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746788824; c=relaxed/simple;
	bh=uxItPjqCvg33dWDIcD9DK2czP0Ojdua2Kzevid/t8oQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=chP3uZfPxvj/qWmcwtbK8SXsQZwEno2LVkvwCBTuMNSdvVMSSadQ62+ikISoVGlW7C8rfz8hbpqWx3gynLCNL4nzZrRp99OARXpKFoJ/9wQruklZVRwCOFPHFvO0ZNpNVAg8DPg3uGFp8L3at4x/Hr7V3quvGPiiUtUtTHUXXag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yLxOoJY0; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3a1b8e8b2b2so750910f8f.2
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 04:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746788820; x=1747393620; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kS0UyNciGcvIX/4wvXI4EYR5mKVhADe3ICPtGq7iTLM=;
        b=yLxOoJY0kakGFf3Tbqab7ebI0WTY+HLH/HJfDcEI+TUUek4mMVsh/jSJGN9PFUEUUF
         s3kOQw6iyoFhfOJ5kYeR2aexcrTUlrT0w0HbUDmddkM/7eTgUApSJZjbPf5RR2orypnF
         kAmK+TfB5ube3MzOpc2zzE4xpHtWAuSSCVqwDkC/fomn5vrc0bidfP1UOZPmqSll3drq
         r4awOK9xjSD2qafyIgdL6gpTP8UZRHUdFbGa7RbotI6SogX+GleKVPjX9DOBzpBdXQzf
         qLARsBDmdHgBOPVktv3/+gxVupORUevQHsIrLZwqG70RKBhXSsEgVI545hSfsobYJ5cY
         Cs9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746788820; x=1747393620;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kS0UyNciGcvIX/4wvXI4EYR5mKVhADe3ICPtGq7iTLM=;
        b=Z3eJViJWwc2+fUNiT0smN0Q9MorXqcj2weiA9Z1GZbiXjdysaXwg7Rg9Dj6D9FbYzY
         HnvD9SmjaVRtOvuqDd0DjxYEBd1gQnvW2X79TehFXuRLxoAsdaTZBPF6tiwaLTF0sqYA
         0q9iqDav3xoV3Mb35EYmhMSkyCxVN6g7JmS2PUqf1ZN6wKSPqhghUkr1m+xOoxyvxdKR
         RlTKPRNtxFtLXzc9tDkjoHak5lfZw0H6Cwu70EOmByehP3AFiznEwgkX3iexKRows5Ff
         fPNF23HULYvRAyFhNe/UUnGevnh9GBeL2/GwPD4NagS/VYg6epux7kIoffyc3QWS9iQO
         Pv9w==
X-Forwarded-Encrypted: i=1; AJvYcCWuyGUN+3cBEyAM7X1P51oYkao2cOq/IdnlK3d+NSgRnVULd3I0zX39A+Q9MOM9uB2n1YK7UaImwUGc@vger.kernel.org
X-Gm-Message-State: AOJu0Yzvh6ahbQlZ44Q33wO5meXv0QLyRhFk80qjzo2pqI0hWVhzhHza
	gl/86aFb4XVPjbTZEDma4WUKuAs7t+r8K3/UzeI0tRh1KRdURGdFTRkbGXfW/H4=
X-Gm-Gg: ASbGncuBpaFndFg7Z6BADsZWjNrxWVCeBfA/Gq51Zn7VkcPefN4tI8pLETXpyPvoY1t
	qByGdKZeP4+1DAPgVlmHXLnNorcEiEHyFkKl09XvAr/QffARtpBzBkazlNf6dp9eOmmD+280ZDG
	6fOxFuUVct2jM3V1APOARBa5AjDdaZHKVvPbbhZYxZzElAqpYO12qDc0PRygg+T4RSSwSkH1aOA
	MzvN+X6Ga/t2snoIiEHp0YjFB3tdsSq2gTAzE3p1J5ZzsQ2DI0Uu3cUAsK1U/Gq4jWe2GjY+zAw
	vs11AsR9fEQva89RfRPQ7r5ExIuXY4MAUoDuQPsi95fs7f2jwJrKthPBdg==
X-Google-Smtp-Source: AGHT+IEjLExiBo/pTRwIXb6nfVt9VVnMblJ/vXH80y5StmUX3A8QBF3za9FzG7eNZqTpd9SVfNtr1w==
X-Received: by 2002:a05:6000:2dc4:b0:39c:dfa:c3de with SMTP id ffacd0b85a97d-3a1f64a383dmr2369977f8f.47.1746788820116;
        Fri, 09 May 2025 04:07:00 -0700 (PDT)
Received: from ho-tower-lan.lan ([77.81.75.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ecadfsm2914797f8f.22.2025.05.09.04.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 04:06:59 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Fri, 09 May 2025 12:05:51 +0100
Subject: [PATCH 04/14] spi: spi-fsl-dspi: Add config and regmaps for S32G
 platforms
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250509-james-nxp-spi-v1-4-32bfcd2fea11@linaro.org>
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
index 701cf56d28e7..df6f85122bfe 100644
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
@@ -92,12 +92,14 @@
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
 
@@ -135,6 +137,7 @@ enum {
 	LX2160A,
 	MCF5441X,
 	VF610,
+	S32G
 };
 
 static const struct regmap_range dspi_yes_ranges[] = {
@@ -146,15 +149,29 @@ static const struct regmap_range dspi_yes_ranges[] = {
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
 	regmap_reg_range(SPI_SREX, SPI_SREX)
 };
 
@@ -166,6 +183,7 @@ static const struct regmap_access_table dspi_volatile_table = {
 enum {
 	DSPI_REGMAP,
 	DSPI_XSPI_REGMAP,
+	S32G_DSPI_XSPI_REGMAP,
 	DSPI_PUSHR
 };
 
@@ -188,6 +206,15 @@ static const struct regmap_config dspi_regmap_config[] = {
 		.wr_table	= &dspi_access_table,
 		.rd_table	= &dspi_access_table
 	},
+	[S32G_DSPI_XSPI_REGMAP] = {
+		.reg_bits	= 32,
+		.val_bits	= 32,
+		.reg_stride	= 4,
+		.max_register	= 0x13c,
+		.volatile_table	= &dspi_volatile_table,
+		.wr_table	= &s32g_dspi_access_table,
+		.rd_table	= &s32g_dspi_access_table,
+	},
 	[DSPI_PUSHR] = {
 		.name		= "pushr",
 		.reg_bits	= 16,
@@ -262,6 +289,12 @@ static const struct fsl_dspi_devtype_data devtype_data[] = {
 		.fifo_size		= 16,
 		.regmap			= &dspi_regmap_config[DSPI_REGMAP]
 	},
+	[S32G] = {
+		.trans_mode		= DSPI_XSPI_MODE,
+		.max_clock_factor	= 1,
+		.fifo_size		= 5,
+		.regmap			= &dspi_regmap_config[S32G_DSPI_XSPI_REGMAP]
+	}
 };
 
 struct fsl_dspi_dma {

-- 
2.34.1


