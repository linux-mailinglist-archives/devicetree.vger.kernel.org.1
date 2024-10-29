Return-Path: <devicetree+bounces-116938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 019549B46A7
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 11:22:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3268F284B84
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 10:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2946B204F60;
	Tue, 29 Oct 2024 10:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lM7UPgnP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75132040B5
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 10:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730197368; cv=none; b=Y+gAQewV6yQCYWQJSfrkkMR5oua2bK2nXAfYkMdgLmz+Fba4tiGvr+Zu91tasmaYvxbLYwBXoF51rleMHpK+vGMOvFu0G0SXAUYhkB8+0l/5ZlPRJ6tdk54zZYtvnBmRLCqeOul5MSoUIjGd8NFT94uOYF4zRpn+v8brkBxfdgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730197368; c=relaxed/simple;
	bh=LZjSpjIkQ/UIhxxD/94ZpTpj5VLNNB8ZWHzr8wWRiEI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EYclt1NEBJ0x7z5OCwbVOrh2uzlHYjhCyiQ/B0u55xBRY848WzpdE0QofSANHlWQckWtJ2Miobme0BKRjsmW++DW/uUfWyN8r1W/6aOYOhWgW5l25aX0NiSal0Z709ZqYMpVlrWStUSl5VNrrMJBQTi1SZvYp2Wh+fgEMYaPLRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lM7UPgnP; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2fb498a92f6so50048701fa.1
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 03:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730197364; x=1730802164; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gevxWDiw1Joa8obRCekHXlX/q8pa3Bd8D6cgQBHwmVE=;
        b=lM7UPgnPnJFAyDN07DEjbtKs6tkr0eJkya3uCIIvD1Jv6HcQ8iUdqnlrFOLgVsicn5
         7EJjs5lZEIbjAuDfzbKgNfJhVktBWH5IInKNMO5OgVnr7JHlDcCps7PP7vU8CSiCyZ6g
         y4gCWKV20SnVbnMYyljeqc4tf/TN6p3J/0SlL0xaGbXouqC8HIW2m1owDqb6cckFHVaU
         90NA4ulOtCpkfepn0mYpry2Op/8WSErBF/qzIo3hwXsBVIVpxZTl833yRA+A/hZmu/6W
         +6QyJnuK2kDvh4xht9+QTavWlmNYjg5Kvv59DvnUlNL3Znon5lM9lVy8zgfMMADUMm66
         wYUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730197364; x=1730802164;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gevxWDiw1Joa8obRCekHXlX/q8pa3Bd8D6cgQBHwmVE=;
        b=niLh/f2lfSgsjhO4uCQWhdktNdPIx0wJ0MjBDvP02CR8m7suB1b+Y/FzZxWrigBZoT
         joubLmDeggUdBYFauuykh6A0XcpWgh4tWj0JLyz0RI2+zJIak8VMA+KAA1B1Lf7zEx2g
         Wq3X9PWwpZHA0htTiSE8jIFFvxnorjFxWaquTCUwxM7gVbTa/xhiLy2EgoyN/iTZsMYi
         fJxVb4YhMF9HLT5yPkiB7JQG2DeECikWdqFpLEPkzDVEEEFltZIZ4MYhstW8xkwE0Gfk
         vDFbG4kbVU9VwRbjV09L2rorke/K5AcOdQ+CtevJSIc8Lo+nJ2q5VsMEdEhNdODmpbCs
         0LYg==
X-Forwarded-Encrypted: i=1; AJvYcCV8roK5TzATLvdaxob8ahHAaJqafaosqqrBdTf+9SFClDIZOfLNk1Tsb8m2KlacXFV/8KQN7McZ1TxL@vger.kernel.org
X-Gm-Message-State: AOJu0YyeAzvcDZ/7lCFY1U2aFNbHgxG27VbUVRH+a3Sxh5Wf0lj5gcct
	/a376RWgaRnOtSrmvcXg6MCiA3Lky3GE1D3yEKFkUfjvuVT9rJZpTH1AA4ZMsxk=
X-Google-Smtp-Source: AGHT+IFpXeHjBYJ4bh6c/28VpHHP35QvCnNGUuPqWzvC/md0zxhyDDRH72iKNBCLUTiNRx10pm7VKw==
X-Received: by 2002:a05:651c:551:b0:2fa:e658:27a1 with SMTP id 38308e7fff4ca-2fcbdf68ff0mr50076231fa.5.1730197363921;
        Tue, 29 Oct 2024 03:22:43 -0700 (PDT)
Received: from tudordana.roam.corp.google.com ([79.115.63.43])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b47a86sm12084498f8f.53.2024.10.29.03.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 03:22:43 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peng.fan@oss.nxp.com,
	m.felsch@pengutronix.de
Cc: pratyush@kernel.org,
	mwalle@kernel.org,
	miquel.raynal@bootlin.com,
	richard@nod.at,
	vigneshr@ti.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Peng Fan <peng.fan@nxp.com>,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [RESEND PATCH v4 2/2] mtd: spi-nor: support vcc-supply regulator
Date: Tue, 29 Oct 2024 10:22:38 +0000
Message-ID: <20241029102238.44673-2-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.47.0.163.g1226f6d8fa-goog
In-Reply-To: <20241029102238.44673-1-tudor.ambarus@linaro.org>
References: <20241029102238.44673-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Peng Fan <peng.fan@nxp.com>

SPI NOR flashes needs power supply to work properly. The power supply
maybe software controllable per board design. So add the support
for an vcc-supply regulator.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
[ta: move devm_regulator_get_enable() to spi_nor_probe(). Add local dev
variable to avoid dereferences.]
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
v4:
- move devm_regulator_get_enable() to spi_nor_probe().
- add local dev variable to avoid dereferences.

 drivers/mtd/spi-nor/core.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index b6f374ded390..29441f2bab5d 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -17,6 +17,7 @@
 #include <linux/mtd/spi-nor.h>
 #include <linux/mutex.h>
 #include <linux/of_platform.h>
+#include <linux/regulator/consumer.h>
 #include <linux/sched/task_stack.h>
 #include <linux/sizes.h>
 #include <linux/slab.h>
@@ -3576,7 +3577,8 @@ static int spi_nor_create_write_dirmap(struct spi_nor *nor)
 static int spi_nor_probe(struct spi_mem *spimem)
 {
 	struct spi_device *spi = spimem->spi;
-	struct flash_platform_data *data = dev_get_platdata(&spi->dev);
+	struct device *dev = &spi->dev;
+	struct flash_platform_data *data = dev_get_platdata(dev);
 	struct spi_nor *nor;
 	/*
 	 * Enable all caps by default. The core will mask them after
@@ -3586,12 +3588,16 @@ static int spi_nor_probe(struct spi_mem *spimem)
 	char *flash_name;
 	int ret;
 
-	nor = devm_kzalloc(&spi->dev, sizeof(*nor), GFP_KERNEL);
+	ret = devm_regulator_get_enable(dev, "vcc");
+	if (ret)
+		return ret;
+
+	nor = devm_kzalloc(dev, sizeof(*nor), GFP_KERNEL);
 	if (!nor)
 		return -ENOMEM;
 
 	nor->spimem = spimem;
-	nor->dev = &spi->dev;
+	nor->dev = dev;
 	spi_nor_set_flash_node(nor, spi->dev.of_node);
 
 	spi_mem_set_drvdata(spimem, nor);
-- 
2.47.0.163.g1226f6d8fa-goog


