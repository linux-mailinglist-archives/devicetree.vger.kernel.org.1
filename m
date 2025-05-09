Return-Path: <devicetree+bounces-175521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 332D0AB1187
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:07:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 184E29E2A4B
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:06:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1AB628FA92;
	Fri,  9 May 2025 11:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bA2PtdQe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4E128ECE9
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 11:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746788820; cv=none; b=rck4BHOQtILdRhwRQk+RwKnV+cLh/5PJmimmpp1uDapSlS3aOQAzGaSHbXQG9C4Zq8F2XAtNKLXXlk1wablHzfySqZ3s9bt9jL3MMJ+NdCw3hbQPrXQ9Yoy8qJ03elfsNgcMhnVrPcm/TGTLpEDKvSLE3nhxJmQxUFPmfNADnvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746788820; c=relaxed/simple;
	bh=lNzAOm2fsnFGf82dcqxl1YBX/mz6uR9h5/TJgWh82NI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kSgqgBde2vwpZFdOjccS9ihMjU7NDdRI0ZN7pKPhWajSntSj2wEZF17YqBGfz2X7SCBs3M6ydokG1431HhVe4lwqNxQKYutDvWSAkeNehiuLpfLi8EY1uM/5uPiFkQDCQGGndSivifWHJkneFKJAkIrJ4PdQ8bMADhsnyY8/v2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bA2PtdQe; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3a0bd7f4cd5so1474590f8f.0
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 04:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746788817; x=1747393617; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A+3jb/fX+IugayjdNWEytVWeF5yooMmRjS6ouVsYvEU=;
        b=bA2PtdQeVxJdFWl6Ek4y4qB9rQ8yAYJTIWzbu6cUYgSQ+dQDGP58p6R+9nQRusPq7m
         +MnGkujJLu45OkTrpWF2vkWnZhHdGk+gLGdzJtnbVXOmHnU9jAaVwUwdbaoJT7g9L5R3
         xykWYQPvEr1l4TRBIvazL+EGgNS3cbFNMNGh9b6q2ZuPU1WHcCL29fKG37V19n+oWDJh
         o5f36b1A4lrcr6vvc5tC6U7BZrNNd/LbmdwuTUSoC6EmrV4047cLnsYpP4F5w4B2MPau
         rCqCVgxBjXF5eiMj2/tQ1V/r6uejsJLQdbgWeKs5tGZNhK3BgSsVL2kBkr/EEfua760u
         5zpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746788817; x=1747393617;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A+3jb/fX+IugayjdNWEytVWeF5yooMmRjS6ouVsYvEU=;
        b=W1GRudrnnZIPcv/GSBMT3OCGQIU6h5oi+NhkmcZygNCApLJHaiqsXI00TmQmpgy7DF
         QovbEDO3Qy/NO8IJM6tC19t20WP4nEprzAbrjZjGiWzip5WDpGWQ09Avk+dNfbVm3Gjy
         hLNhEkaoVzf1mra5Xieuy8BuG0AXynIGjI3MG+RvG4bblF5LL65BV8oOpH5cQB1fGHQ4
         oIWv7eiWfIHF2XXklyioippM8NzVm0i6t8RD2bv/Vw7kAn/pjZHK+HXLCG3nd4yrK/qs
         XdDXme95NvkvufY7qhuT0H65ZH9QcbY2naTgRhpuAlI7PxLeQhBUFgHhbDqBQcnQdutz
         GFHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIxkpYpO447UFz49kb6qJoEiDzgAVqafgD4f7LCFRpKXJGkpx4zsgC56Lt5PP1F5PIxZ/4oX4Hs7cJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyZc/HNvwl46umD2+zDYFMtjaayqCo7LARcneJPkUWhF3BHWW2X
	F9MjBTbETgQoMpvIANdMZh/c1Wu2xVgp6JACireRoyJo7eqsiDWTeM4Y4eNQk0g=
X-Gm-Gg: ASbGncso1Cwylt2fexgj7gJVQQutIOtjqViES7Rp62ZdBhcDiquR1MWYqW8x36gkn+4
	g/RFdvqCUxxurCxD3uAqai8GaHlxuYlq++ZZF/7sTFEvPU1fCK933zsgGUMi2wO9r8r9FQTS6vR
	ECwdcOg85hTB0Q/LmY5Evjz/AtrOVQ9zuZ9jV9pLkdv4cG92eu3MwaLo2JA/9fpOSlFP+bhzKnY
	BPt/v9/gbrE+XFSdafjUwf9PFWpokiFep33zOm26D+oPYuD5J/IFFauMvQrLfNKZTP7QTWWnRNq
	150TahIa1cY0ReJR359FwVuT3hSPL6Oto/5nNW9bC/LF+pmaudJrPj3kkw==
X-Google-Smtp-Source: AGHT+IFC6m07o95wlBL8z66ZHFQZFey0yAwlkLMNz025uhOiNU0gJ9upByEMU9FvrvfyyVzrnKIsgw==
X-Received: by 2002:a05:6000:4287:b0:3a0:8c45:d41b with SMTP id ffacd0b85a97d-3a1f6457726mr2691256f8f.20.1746788817253;
        Fri, 09 May 2025 04:06:57 -0700 (PDT)
Received: from ho-tower-lan.lan ([77.81.75.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ecadfsm2914797f8f.22.2025.05.09.04.06.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 04:06:56 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Fri, 09 May 2025 12:05:49 +0100
Subject: [PATCH 02/14] spi: spi-fsl-dspi: Re-use one volatile regmap for
 both device types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250509-james-nxp-spi-v1-2-32bfcd2fea11@linaro.org>
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

max_register overrides anything in the volatile ranges, so we can get
away with sharing the same one for both types. In a later commit we'll
add more devices and also read/write ranges which also override volatile
ranges so this avoids adding even more duplication.

No functional changes.

Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-dspi.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index 31ea8ce81e98..cb0e55a49eea 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -141,6 +141,7 @@ static const struct regmap_range dspi_volatile_ranges[] = {
 	regmap_reg_range(SPI_MCR, SPI_TCR),
 	regmap_reg_range(SPI_SR, SPI_SR),
 	regmap_reg_range(SPI_PUSHR, SPI_RXFR3),
+	regmap_reg_range(SPI_SREX, SPI_SREX)
 };
 
 static const struct regmap_access_table dspi_volatile_table = {
@@ -148,18 +149,6 @@ static const struct regmap_access_table dspi_volatile_table = {
 	.n_yes_ranges	= ARRAY_SIZE(dspi_volatile_ranges),
 };
 
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
 enum {
 	DSPI_REGMAP,
 	DSPI_XSPI_REGMAP,
@@ -179,7 +168,7 @@ static const struct regmap_config dspi_regmap_config[] = {
 		.val_bits	= 32,
 		.reg_stride	= 4,
 		.max_register	= 0x13c,
-		.volatile_table	= &dspi_xspi_volatile_table
+		.volatile_table	= &dspi_volatile_table
 	},
 	[DSPI_PUSHR] = {
 		.name		= "pushr",

-- 
2.34.1


