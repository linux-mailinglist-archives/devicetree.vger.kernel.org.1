Return-Path: <devicetree+bounces-42384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FC7857675
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 08:07:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C45EC1F203B0
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 07:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17C961B948;
	Fri, 16 Feb 2024 07:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i2iFqbvO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD5714A8E
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 07:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708067170; cv=none; b=ppoQDhGUL2i5L2x9WLbqLuXzTLlvxwguXQCOPbs9PRHHe3XHaphllRnCfexBxTBOSKlAuXzDLhQdeynslW7A2OoD2OJ4QQvfHNshwJ3vxppIxj2DH45lstadwEwdt6gTiIR3RC7D1041LPRNbGyLzRHfL1G4piNGhYkfkWqr6XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708067170; c=relaxed/simple;
	bh=mG+75mZLgRp2agc33t7IrmsrcHEZ055Yeb5TSZ4C1wc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iBhKmmODm8N/b8oIc8ZS2R4I1+eSUdd5vQGN92myadkYWmSPZwPubucIJfK9ChC9vsOL9cnGG1QFWmioAJReijs48QXXOEFhQKX/rmbpiqOAtGkveYbarLIbssVAOWDqhjwenlBzBdZomjgZT2BjJJaBMk++b3m1Uno+47E0Aho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i2iFqbvO; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d0d95e8133so20564591fa.1
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 23:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708067167; x=1708671967; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hp4R5FqMMv454plXIhV7qJWhdTsbC/ksc+0K6w+UCm0=;
        b=i2iFqbvOeKwQD5zMQJ9oYr25OJbv7aAv3D7fTaCHNudCbgUVaafnzztbD275XrJZ5j
         vyiRtH5HMafClu5mZJeZWU/5wDXabk7Umq/6HaTif8tKBZ5JnXfm2TYk18Vn+uc8gKRd
         eug8Wj4iyjIco3PGdOnLG4eKc37gs+Amj5h3Yty7mqLt1YmwaM+VTslJse93iMml5eRI
         UqSECjEXO9F9EpUdOSmwhJKUrCJqe9ZsiwB6gV3plUq1p/3ciA7nzaOkLQOO8ToHp1k/
         usU4LzPGQl//zaflzeZ1hL4O/L7tqiWa5sRws4jPKYKz1PGWdsJNCEifKhIBoW+3J1Xz
         4QpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708067167; x=1708671967;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hp4R5FqMMv454plXIhV7qJWhdTsbC/ksc+0K6w+UCm0=;
        b=IbyAtBtsYjB6kiofplQDwmN3kpw+bx7+YsZMJwRYjXzqGlN9anFunviqX8rkmR86VS
         iMpdac6rmCrA4rLpn7AUS1lSYku4X4UflSkPLGvgFt1YSHyYnWlXvAKenlK9ipMUlcia
         gk5yRbbBrXTToyKo9BKzaIHCsZpE5MKdExshWQZt6GguMHt4KiUtqpd70Wi2HxWH8UkL
         rtjeomrTJmFMoKn4oFQzmS5bgqRwAS9i0xU4mEoERI6GsQXU/4PXqID3hn/Jp4agdJZS
         VMSHEQiHVvYeVA921RAdD6dtv0nqN2wcmO7xzm1yFcvPv2T5kKUDa78F22K3/6kN2EhU
         7PSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqVWVWqK+W8H+pQA8/GRZWBjU/oSjXu/rTs0O/DcqWRrVekDtAetXnF/WCRhcNqUHhpX+U7yurDw0o3MOGTsfzAthJ/VhcrgPGwA==
X-Gm-Message-State: AOJu0YziYJTDNKpnm6S519eRc0Mf2m1sWr65LENDpHKFZQ3FHBRGPbCw
	ZHqTGTMOMHO8K9n2Yk65O3P1AU3fj/nt7gmqkRV2kvica/7lqdoBoJr0feskgFM=
X-Google-Smtp-Source: AGHT+IEIfJLwnjTBPzZlAN6MdmD15Q2SiURRcXeLTvWrYKudV8i77tM6zGBzeDiBhkG+NoQXNoJ5AA==
X-Received: by 2002:a2e:889a:0:b0:2d2:ccc:ac28 with SMTP id k26-20020a2e889a000000b002d20cccac28mr2399275lji.38.1708067166715;
        Thu, 15 Feb 2024 23:06:06 -0800 (PST)
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id k18-20020a5d66d2000000b0033940016d6esm1298839wrw.93.2024.02.15.23.06.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 23:06:05 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	robh@kernel.org,
	andi.shyti@kernel.org,
	krzysztof.kozlowski@linaro.org,
	semen.protsenko@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	devicetree@vger.kernel.org,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v3 06/12] spi: s3c64xx: allow FIFO depth to be determined from the compatible
Date: Fri, 16 Feb 2024 07:05:49 +0000
Message-ID: <20240216070555.2483977-7-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
In-Reply-To: <20240216070555.2483977-1-tudor.ambarus@linaro.org>
References: <20240216070555.2483977-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are SoCs that use the same FIFO depth for all the instances of the
SPI IP. See the fifo_lvl_mask defined for gs101 for example:
    .fifo_lvl_mask  = { 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
                        0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f},

Instead of specifying the FIFO depth with the same value for all 16
nodes in this case, allow such SoCs to infer the FIFO depth from the
compatible. There are other SoCs than can benefit of this, see:
{gs101, fsd, exynos850, s3c641, s3c2443}_spi_port_config.

The FIFO depth inferred from the compatible has a higher precedence than
the one that might be specified via device tree, the driver shall know
better.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index b1c63f75021d..68f95c04d092 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -137,6 +137,7 @@ struct s3c64xx_spi_dma_data {
  * struct s3c64xx_spi_port_config - SPI Controller hardware info
  * @fifo_lvl_mask: Bit-mask for {TX|RX}_FIFO_LVL bits in SPI_STATUS register.
  * @rx_lvl_offset: Bit offset of RX_FIFO_LVL bits in SPI_STATUS regiter.
+ * @fifo_depth: depth of the FIFO.
  * @rx_fifomask: SPI_STATUS.RX_FIFO_LVL mask. Shifted mask defining the field's
  *               length and position.
  * @tx_fifomask: SPI_STATUS.TX_FIFO_LVL mask. Shifted mask defining the field's
@@ -159,6 +160,7 @@ struct s3c64xx_spi_dma_data {
 struct s3c64xx_spi_port_config {
 	int	fifo_lvl_mask[MAX_SPI_PORTS];
 	int	rx_lvl_offset;
+	unsigned int fifo_depth;
 	u32	rx_fifomask;
 	u32	tx_fifomask;
 	int	tx_st_done;
@@ -1263,8 +1265,10 @@ static int s3c64xx_spi_probe(struct platform_device *pdev)
 		sdd->port_id = pdev->id;
 	}
 
-	if (of_property_read_u32(pdev->dev.of_node, "fifo-depth",
-				 &sdd->fifo_depth))
+	if (sdd->port_conf->fifo_depth)
+		sdd->fifo_depth = sdd->port_conf->fifo_depth;
+	else if (of_property_read_u32(pdev->dev.of_node, "fifo-depth",
+				      &sdd->fifo_depth))
 		sdd->fifo_depth = FIFO_DEPTH(sdd);
 
 	s3c64xx_spi_set_fifomask(sdd);
-- 
2.44.0.rc0.258.g7320e95886-goog


