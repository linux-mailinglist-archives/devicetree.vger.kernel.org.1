Return-Path: <devicetree+bounces-120723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 277489C3CFE
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 12:21:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB7CF282D76
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 11:21:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3459B18FC7F;
	Mon, 11 Nov 2024 11:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q2NMald+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0BD189F5E
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 11:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731323997; cv=none; b=Gfq9vxA7aQss42WOeWdiHJ+YcqsY8xDPC+9B0nx8psdRbcDJAIT5GqXylzrGyyY/INy3QRwXWiMB52CakSYM4WryvQo3DnoUHgNm48nOc1X4llipIKLDdsV+tqf2uyOSI5jbo0u98bTLylutGfcC8KhNDdjIjNanyqf5kgu3qig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731323997; c=relaxed/simple;
	bh=xXAvRj8AmLSKWPBTJCUUr8yNr91DS97PKpc1oBmJELU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DYl5SB7B/9ae6j4ota6z35tS5aFP/bKdIvdov6Jnd9RmaWts/4CtLtMAHkE1vfxtMRgnV3Hho418vgU5WFGYu7lFpnUFSxrbVAekKzgZ3zEEhtLL/nFsAHDSAXC68gApicASh64tV0B7XpjWxGWvrhVvkR6hmi3P8OmLT3mcEDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q2NMald+; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a9acafdb745so875345266b.0
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 03:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731323993; x=1731928793; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yq4v/gyj/fLO48IP0NaLXgCS56M3wS/277l+hJaYFIg=;
        b=q2NMald+8snba06NqkBt1oPerkFC1VMgGuDQhOdNBsyFrvgiknXPT/yAtmaosVqNOU
         oxPrSsdnc2tdQZCM8FSXyMosd952aS2H4sjt1WObryWMBg+dL3cMu56z/VG/XBiUkaJX
         qqz/cR+VIzGSUApif+hXo9DPak18CYRPEgxUMBul4IPxnWHF+gOWrLT888wi7A9h0MfX
         li6EapL4RnS76eFjP9PG8VcxqfVYZXGN87s/dOIX5v5txdPeQzRuoJt2kUc4QlTXUF7j
         qqkfM0xZzbkSQVBtI5PkjRgn03Ts2JCZXwuQMvaHBVeKhIByLGeLE8dDcIlRsByx1625
         eCqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731323993; x=1731928793;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yq4v/gyj/fLO48IP0NaLXgCS56M3wS/277l+hJaYFIg=;
        b=oAREzAT6Jg6SbYumkXx6Py9iHcGjbe45Vhv+kc7lqgmKMhbgXrhziqBV0glIQX0UIF
         5JiDeIy+nVurradXkEV0vSkJx7YrRs5TgyOknzZF+ifpXBoH6SxDaLIXwBrYqggwVEkE
         6dNnoJZRNwl+TK29iffyOU0kdP+OIYGswDrP0wsoJI+LIfB1B9tr8pMH9EFI9tEk8hRr
         gRpm06ET+1R3g3y9HQFESZWnyoK0/RTVjQ+xOHFmQ1TQBESoM8yTARezbd8xW9aFuJ8k
         HUnu6+vRzUMNIPotqaanip9MkJd1fjWf4LcQZjnHsVxsf6xDCxcXOjv4NzOjKjGFt59m
         AbCg==
X-Forwarded-Encrypted: i=1; AJvYcCXntXv7/WOiPCfAXTdrHY++KflVFM3J5On+EPlFYMf3Xs53cKJOEX24e2bXXI2BjlSvQdu+d+UEJVA0@vger.kernel.org
X-Gm-Message-State: AOJu0YypvqMfASeuy/da0wZKh9122rwA6JRCrl1f8XIphSfAjUfHhW8E
	bkNuKl/6OJKH4hdoeXOt6DvIWp7v8aF0ldexygQOH494poQA2qdcX1Al6+cgAWU=
X-Google-Smtp-Source: AGHT+IGuK2Mqhh/4a1qh5q0NmwjtNgZX29PbWEQEw3KvEot2jIrlM7uXsL6sEyoljZjEBiZjnawbgg==
X-Received: by 2002:a17:907:96aa:b0:a9e:b5d0:4714 with SMTP id a640c23a62f3a-a9eeff934b8mr1161128666b.21.1731323993471;
        Mon, 11 Nov 2024 03:19:53 -0800 (PST)
Received: from 1.. ([79.115.63.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0e2e922sm582530866b.193.2024.11.11.03.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 03:19:52 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peng.fan@oss.nxp.com,
	m.felsch@pengutronix.de
Cc: pratyush@kernel.org,
	mwalle@kernel.org,
	miquel.raynal@bootlin.com,
	richard@nod.at,
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
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v5 2/3] mtd: spi-nor: use local variable for struct device
Date: Mon, 11 Nov 2024 13:19:45 +0200
Message-Id: <20241111111946.9048-2-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241111111946.9048-1-tudor.ambarus@linaro.org>
References: <20241111111946.9048-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1819; i=tudor.ambarus@linaro.org; h=from:subject; bh=xXAvRj8AmLSKWPBTJCUUr8yNr91DS97PKpc1oBmJELU=; b=owEBbQGS/pANAwAKAUtVT0eljRTpAcsmYgBnMehS9ebdJFKcsy5atBuVMxdS3C7109r1J/woe qFiYPTIviuJATMEAAEKAB0WIQQdQirKzw7IbV4d/t9LVU9HpY0U6QUCZzHoUgAKCRBLVU9HpY0U 6ZjVB/0WO+cX4vsaTdpLFXuKZKYDOuInLaBWEUgEPPZ/8cU4SDjiZKvr8yqh0UtViU1djsAGxrU lbbkvJAMmNKkIx66H4M55b1h6KMzypC7Gh2btvdMNc0kajfHClQULdOw/bmIgmUvlEGyMUaesei wMP4FzWZrVtgS990dISZi7Pb49XLFqGXQ+Ljbjhjh52HD0NDBRYPAY0GoVz2WfswymhIVH58lLn qM4IX/9b2evCs9iyAkAnuO6ihfSpfUSuoisuuY3nW3tEB9ewWucFstc9YWOmEQD/QN9wZiBRnk3 kFup7CWm/XBWyReXdRdjHbbjrhiBuF8zQinlnQoUIb61MhR1
X-Developer-Key: i=tudor.ambarus@linaro.org; a=openpgp; fpr=280B06FD4CAAD2980C46DDDF4DB1B079AD29CF3D
Content-Transfer-Encoding: 8bit

Use a local variable for the struct device pointers to avoid
dereferencing.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
v5: new patch

 drivers/mtd/spi-nor/core.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index b6f374ded390..2a329084505c 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -3576,7 +3576,8 @@ static int spi_nor_create_write_dirmap(struct spi_nor *nor)
 static int spi_nor_probe(struct spi_mem *spimem)
 {
 	struct spi_device *spi = spimem->spi;
-	struct flash_platform_data *data = dev_get_platdata(&spi->dev);
+	struct device *dev = &spi->dev;
+	struct flash_platform_data *data = dev_get_platdata(dev);
 	struct spi_nor *nor;
 	/*
 	 * Enable all caps by default. The core will mask them after
@@ -3586,13 +3587,13 @@ static int spi_nor_probe(struct spi_mem *spimem)
 	char *flash_name;
 	int ret;
 
-	nor = devm_kzalloc(&spi->dev, sizeof(*nor), GFP_KERNEL);
+	nor = devm_kzalloc(dev, sizeof(*nor), GFP_KERNEL);
 	if (!nor)
 		return -ENOMEM;
 
 	nor->spimem = spimem;
-	nor->dev = &spi->dev;
-	spi_nor_set_flash_node(nor, spi->dev.of_node);
+	nor->dev = dev;
+	spi_nor_set_flash_node(nor, dev->of_node);
 
 	spi_mem_set_drvdata(spimem, nor);
 
@@ -3628,9 +3629,8 @@ static int spi_nor_probe(struct spi_mem *spimem)
 	 */
 	if (nor->params->page_size > PAGE_SIZE) {
 		nor->bouncebuf_size = nor->params->page_size;
-		devm_kfree(nor->dev, nor->bouncebuf);
-		nor->bouncebuf = devm_kmalloc(nor->dev,
-					      nor->bouncebuf_size,
+		devm_kfree(dev, nor->bouncebuf);
+		nor->bouncebuf = devm_kmalloc(dev, nor->bouncebuf_size,
 					      GFP_KERNEL);
 		if (!nor->bouncebuf)
 			return -ENOMEM;
-- 
2.34.1


