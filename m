Return-Path: <devicetree+bounces-42385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 25892857677
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 08:07:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2FC48B22641
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 07:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD5241B95B;
	Fri, 16 Feb 2024 07:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nbZDNiHr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B47017BD4
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 07:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708067171; cv=none; b=jMsRD1pvN+BicyAUioAmsbfkzZkDd8huuOz/O7fbywETgrKL6bFImXMKjTQP6HpsCA25oHLqDW4Qk+8JSfw7mkWkJLQPpBTI/gpcAxL779PrQPwfLVGzMVPcWhnFqIWVHwghlEojmsvWfI1io/qf6apMXVf+IkhQw5EMVy8YyRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708067171; c=relaxed/simple;
	bh=20H7Hn9r4pQjhyhiiMcQlcmQ8QYArnsE20vA7b79kLk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mb+d6FJQ+YLfXkRTQ2b5LFO3AxK8a0P+p5UmGNQ4n5cVIK7JjD4g4VwmDdGozNNedPoVJTCyrVgKMCKR7pnlrHSd8D7VKgbgtI0QtRJTLg5mfFjA54V97SupOnMt/EP0EU1f1n5f/QyE9lfGgEhva8sMD7ENQb5r2vl1C1BpqEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nbZDNiHr; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-337d05b8942so1091495f8f.3
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 23:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708067167; x=1708671967; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Le6XNl1MSpW8ND9xafZ+XDYHu2w9i8pp90k+8toYjg=;
        b=nbZDNiHrS8PFUiMDVZz9lgYKiYzGyehGCFo4ZtXzvpEKEKn8hHaOp2TTOSmmw9FP5v
         STj6bvz+ns/tmtGdLTy3w0SvSTCGZ43sa/2YW2PltUAa2oi5OXJnGT9TZey2Pyzks06n
         T/9uLEPGKXZCPOGyA7c8zP+wjHXOfrpjJPmS2IRPSJ28f5PAZJX9NUR5qc0pYnw1KjU0
         +s+jAd4Gq+uzja36Nl1Qfvx2Wz2aUNWlBoeegGRsgRVWXpP5oDpMV+YB6x8lfzyWFh2Q
         oPKJE11F25gMYlLtP32AqsGAlRaqqLCLOYg0u8YcgjsWnUfCJIPWEZkl9R0CBH4Yusp2
         O45Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708067167; x=1708671967;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Le6XNl1MSpW8ND9xafZ+XDYHu2w9i8pp90k+8toYjg=;
        b=s9ETm6PZNY6qRclwmub5r6HxoUOcvMdPHARxn/6UN9vjRTvKbvb8hWVG1UQXbrv+zr
         DcNYHSL2BLah9qMEcZp8PdcbJpplMtvaFk7+/chkqldv0WdJtgIHt6KcJaHxGdZ3MWkd
         sLhtVkQLPqlexlYD1g1xUOnkh42ZMASfe/QKoKFYGVqoX0Yp9qgFLMvCOWmJRxgr7WQy
         a9HZUJCldh5dxjnbs1K/y1dIXKeoqvjJ4cXmw2r+UP7Qv3ZtpU4A6ngXiaqq4yZ4Us5G
         ApZDrMMk138663cwiSPGKSfeZOwEutMGMsJptokYmN/neAo9r4XOir1LvogOFmTlTz7c
         KQqQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3t/FRmqVGWkOI8h1Alm6S4w+cSXLV+juDMvOxVewwWr/kBo3q6ketnKYxRl/NeXfKoLzAO1eOqjqmXyIJ7ezVtF5tzCuao5oAkg==
X-Gm-Message-State: AOJu0YyyIAEKiiwimq5kIgKFYd0tcvhDBLTtB1vRX7HmM4a8YeruoJy8
	GW+M6S5LEHFCZoJYNBIg2yAQnYjkCk5HQYCn5i/ZBuZ/KyAxy5LyG32MsIoklcg=
X-Google-Smtp-Source: AGHT+IGkiLaE+HZu8zlPglHiZL4OI53GAHWVvXP9fkAiSIGe1ORL1wzzW6K7wetMNBb2aYy3bf9WWw==
X-Received: by 2002:a5d:4a49:0:b0:33d:11a2:42 with SMTP id v9-20020a5d4a49000000b0033d11a20042mr1761501wrs.47.1708067167573;
        Thu, 15 Feb 2024 23:06:07 -0800 (PST)
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id k18-20020a5d66d2000000b0033940016d6esm1298839wrw.93.2024.02.15.23.06.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 23:06:07 -0800 (PST)
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
Subject: [PATCH v3 07/12] spi: s3c64xx: let the SPI core determine the bus number
Date: Fri, 16 Feb 2024 07:05:50 +0000
Message-ID: <20240216070555.2483977-8-tudor.ambarus@linaro.org>
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

Let the core determine the bus number, either by getting the alias ID
(as the driver forces now), or by allocating a dynamic bus number when
the alias is absent. Prepare the driver to allow dt aliases to be
absent.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 68f95c04d092..ac47755beb02 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -1279,7 +1279,7 @@ static int s3c64xx_spi_probe(struct platform_device *pdev)
 	sdd->rx_dma.direction = DMA_DEV_TO_MEM;
 
 	host->dev.of_node = pdev->dev.of_node;
-	host->bus_num = sdd->port_id;
+	host->bus_num = -1;
 	host->setup = s3c64xx_spi_setup;
 	host->cleanup = s3c64xx_spi_cleanup;
 	host->prepare_transfer_hardware = s3c64xx_spi_prepare_transfer;
@@ -1360,7 +1360,7 @@ static int s3c64xx_spi_probe(struct platform_device *pdev)
 	}
 
 	dev_dbg(&pdev->dev, "Samsung SoC SPI Driver loaded for Bus SPI-%d with %d Targets attached\n",
-					sdd->port_id, host->num_chipselect);
+		host->bus_num, host->num_chipselect);
 	dev_dbg(&pdev->dev, "\tIOmem=[%pR]\tFIFO %dbytes\n",
 		mem_res, sdd->fifo_depth);
 
-- 
2.44.0.rc0.258.g7320e95886-goog


