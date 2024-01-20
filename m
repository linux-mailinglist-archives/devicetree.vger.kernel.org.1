Return-Path: <devicetree+bounces-33375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 20947833233
	for <lists+devicetree@lfdr.de>; Sat, 20 Jan 2024 02:30:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBC561F220B7
	for <lists+devicetree@lfdr.de>; Sat, 20 Jan 2024 01:30:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE3DF15C2;
	Sat, 20 Jan 2024 01:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WptZtKel"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F341C2105
	for <devicetree@vger.kernel.org>; Sat, 20 Jan 2024 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705714195; cv=none; b=epaC1gl/LD7KMS+OEKlAqbIDyebVBrtBfJqOV6GQHTags8q/4OPPYlBcl14NQOX6FGJ/yA+2VTi1kiDvUWNSgMYazSvks65xZsXfqHLXIkXcoqZPIt/3Hn56pbZBmBDvl+tHSizwfAwIzNy/MPaFmdxOLFnoLYlu43I9YPr7sj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705714195; c=relaxed/simple;
	bh=fk8XiabqMiTLyefse8VZLRwgyi31Z1xKcKy6eX/vYSY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qFJti9JqstgMheE4OUlRZvCav8J9uCpVM1ka2JFPJqDDQUIxZdIlFbM66tLWHGmM9mFl5pw6cNipXThXIatv49yIPF8dkgfh8mB41FMhXDihR9eLIqvo94ziPfQQTvos04P2+IgMzxnZaz832PfoVspMdstAI6FbYQvqvKHE2uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WptZtKel; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-206689895bfso777188fac.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 17:29:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705714193; x=1706318993; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iMnp1EnNyy6QblTmu0JteJYMQKXa/fw0V+fbcltXPTE=;
        b=WptZtKel4ZLqhEN/lirtHuuTO/OdBV5aTrWlK3mMS0DaxgrdnVaN+hF3zaA0k3EEnV
         pTXeE5wDusr1gWr7feXrxHqEHRBC6JqB8PqDEE71y5pfIXQ/omi09g+q40VxRB8qgkJ8
         qLLJAJneetQK6IY1e/opM9WNyS3ROI3lwnDRFAgmKUoQf+StDHWTzut53nvD5ESB4JRM
         XXpMP8f/+i8+zi2xeNz7nXuPx8z2L/FIicky8wR11xFuYFNpzrkbFgdJvoDTnu0F0nB0
         UEW2ACEMiCkE+m7AezI6ozyMaKbQnjicYrnmZvRHS7oXxN5YNwlfCA+RdanM67Am0uWx
         xD8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705714193; x=1706318993;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iMnp1EnNyy6QblTmu0JteJYMQKXa/fw0V+fbcltXPTE=;
        b=KGJIK95WZRuo9neQ6iUJaufAKz18dmE8JWflVnRqnoI69Ikdt7RdWtqO6s3vAYmPlH
         XmzgpUTYmWRgEbhD3lyAp5is8w+tTwL1fmI2yUrXFab66a/vRe4SIeSwBLYVTmJwBSMf
         3wa0GW/1mH2QDgjWPc0pZrbMvwvsZiFpWGQLeGZ1nB6A7tljdAZAst7T0k9OcQZgPTWk
         WGPyLQ9c2lYLEG3WFAxHQzCs0k8spDFRmtyJSyoOKv+il/Z8c9hyb9D6MhqzCLIslLQ8
         Sww38RvtTh0jqDflmizKDoteTG7XYQDFuCQUE30wv5eSCO8uSndC2f5czTQJgw6DnZ/W
         578A==
X-Gm-Message-State: AOJu0YykfMB07u/EA9tmE0sqjLZUV4bvFPDxTkDrk6IkUC+YPNeDdgtU
	/8RlEXwtoXnH40AhgNIUOYbtJWMMjSx6R7kAm5DcsEYh36fyHIt/z0j4/mQRqmE=
X-Google-Smtp-Source: AGHT+IE5ugFsy7UmjXj1qZCVNbkAYGUUWs7jRHd0FQAWQYKi6FOfsXMA/F4m2hxtyMEwUlCAYRksZw==
X-Received: by 2002:a05:6870:eca8:b0:214:2544:bfd9 with SMTP id eo40-20020a056870eca800b002142544bfd9mr379997oab.43.1705714193150;
        Fri, 19 Jan 2024 17:29:53 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id yl13-20020a05687c218d00b002109874642esm1096224oab.44.2024.01.19.17.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 17:29:52 -0800 (PST)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 5/7] spi: s3c64xx: Add Exynos850 support
Date: Fri, 19 Jan 2024 19:29:46 -0600
Message-Id: <20240120012948.8836-6-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240120012948.8836-1-semen.protsenko@linaro.org>
References: <20240120012948.8836-1-semen.protsenko@linaro.org>
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
---
 drivers/spi/spi-s3c64xx.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 0e48ffd499b9..f7d623ad6ac3 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -1461,6 +1461,17 @@ static const struct s3c64xx_spi_port_config exynos5433_spi_port_config = {
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
@@ -1515,6 +1526,9 @@ static const struct of_device_id s3c64xx_spi_dt_match[] = {
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


