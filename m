Return-Path: <devicetree+bounces-42386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F45785767D
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 08:07:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47304284D14
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 07:07:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7D0E1BC41;
	Fri, 16 Feb 2024 07:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VhogkBSj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F0681B81B
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 07:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708067172; cv=none; b=IxjxIp1M3CbPtRukg3I07PoaxOvvVNpB2dRD0PWRkgpBdbZ4uPi1js2ocwFiBANadgaUnWLqSk1DsUrUitwr7mLikUxN6ZJIQikblsjfRzb0XiyBewhhGaDg1iS240CQ4QOzy3n02mq7vIuS1/e6aG/7aR/YgaoQx1R/si+pJQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708067172; c=relaxed/simple;
	bh=Q12iQnFdG2iZ85QopCuTAOBD4Ofa9upNXT0gtIFtD/A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uHcsY2ky0pSWZQXc8ToiwqgXC7RJy/XG/hAMxxNk+sNvxVGJ0Ct+e5YXzu5yoHzSNqtwvEhSInRNNEU4OC1OHNTUvzOPa844L5zU94lqrpPr8C6++TtpqhT64EBPsA9qNXTp1dJ7Mns+QbSpezVwIG3JeGBRohl7xvyJB3ejjJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VhogkBSj; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-33d18931a94so320914f8f.1
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 23:06:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708067169; x=1708671969; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D6DI6oxyBGAOnmgH57nVgi2YtxfkZy7vqtRyT86aOak=;
        b=VhogkBSj/SqwYQ2WW8NoO3s1pEJ7xrA5wDij/hNaCPUf77eA+7CWzhdM3vYGmx51rE
         H+Lgg6DGTlgGtvREhvMGJpiqwP0CVOZBCHQxAC96toU29K5p4Rs9NLXADxY+iymNqlJa
         55doR4aUvESFIb4ETmTON4m7xqGEDaVih5UDk+FF/sNRSplnxPFmdUsHAPWCMP2OoUXi
         Khj//chp0F/VUQE3AC4ata1BB0enEEL9FftfZNigw+y6vEl/x4tK7D+0y0YGoa/idkTJ
         mJVYjceIdwLETnoB9w4EnoaE8Nqrf6rrCoDIGEN1SxzZNPyymOXG9QnmsogC8/DXpi7E
         yFwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708067169; x=1708671969;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D6DI6oxyBGAOnmgH57nVgi2YtxfkZy7vqtRyT86aOak=;
        b=nblM9ml5hNhkc8Fp5mLJ0GWSeLIOowuJapsL8XuxoPhEJm/c2ThVw+ojMNQXRrPXPI
         QzZEVZvpBVb2zw6aTLiu5jcPAeKa1KUZCoOlvii7DIEcPHs6tAHdgqOo+oVrgn4kE+D5
         6mk+dIduH4xaeF6ZPQg0uwkYiMCirdZquE2QbCMQekDgOQ8YfCWCztl3zf4TZV3n8I3p
         KdGo/Gc/fAtNjtCD1+0mOHvDjXJAJkJhJB2YM9eGwOVFVmJRAucqT7x1/2fTwUobFvl0
         RAfiNm0/4dJxxkp3IOiLuwtfLjOPumPCzhK3to6vJji6UBcX42MMxmIUVPcFaZxZ9oxO
         JGCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUK7EaDV84EvrjJF05q+dpR1Fhiw0QRo9y/fWfdbxqdDtozifqXIrPjADMzMeaPgNBvsEUXqSfUfOeR9l5ncnnIrMbfCwbcCy/92A==
X-Gm-Message-State: AOJu0Yx/4sSN0PCyOyY7jyZr7QGuWTR0ZoarLK8EFsuHmeODyWZfswhM
	2guz8nxocDV9jvPEhi8PUeZlmtzxqltB+TipyYLyCK4PpHn2H8wn5Im5tZmNmSs=
X-Google-Smtp-Source: AGHT+IElxq2xk6aiqP+v7vVmB9Rn+o8tE/AamjN56/HIJFwjBwNBu23xznmMSINpOQWx94t5lmSSfA==
X-Received: by 2002:a5d:6190:0:b0:33c:f968:e243 with SMTP id j16-20020a5d6190000000b0033cf968e243mr2968421wru.43.1708067168666;
        Thu, 15 Feb 2024 23:06:08 -0800 (PST)
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id k18-20020a5d66d2000000b0033940016d6esm1298839wrw.93.2024.02.15.23.06.07
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
Subject: [PATCH v3 08/12] spi: s3c64xx: introduce s3c64xx_spi_set_port_id()
Date: Fri, 16 Feb 2024 07:05:51 +0000
Message-ID: <20240216070555.2483977-9-tudor.ambarus@linaro.org>
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

Prepare driver to get rid of the of alias ID dependency. Split the
port_id logic into a dedicated method.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 37 +++++++++++++++++++++++++------------
 1 file changed, 25 insertions(+), 12 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index ac47755beb02..40de325bd094 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -1200,6 +1200,27 @@ static inline const struct s3c64xx_spi_port_config *s3c64xx_spi_get_port_config(
 	return (const struct s3c64xx_spi_port_config *)platform_get_device_id(pdev)->driver_data;
 }
 
+static int s3c64xx_spi_set_port_id(struct platform_device *pdev,
+				   struct s3c64xx_spi_driver_data *sdd)
+{
+	int ret;
+
+	if (pdev->dev.of_node) {
+		ret = of_alias_get_id(pdev->dev.of_node, "spi");
+		if (ret < 0)
+			return dev_err_probe(&pdev->dev, ret,
+					     "Failed to get alias id\n");
+		sdd->port_id = ret;
+	} else {
+		if (pdev->id < 0)
+			return dev_err_probe(&pdev->dev, -EINVAL,
+					     "Negative platform ID is not allowed\n");
+		sdd->port_id = pdev->id;
+	}
+
+	return 0;
+}
+
 static void s3c64xx_spi_set_fifomask(struct s3c64xx_spi_driver_data *sdd)
 {
 	const struct s3c64xx_spi_port_config *port_conf = sdd->port_conf;
@@ -1252,18 +1273,10 @@ static int s3c64xx_spi_probe(struct platform_device *pdev)
 	sdd->host = host;
 	sdd->cntrlr_info = sci;
 	sdd->pdev = pdev;
-	if (pdev->dev.of_node) {
-		ret = of_alias_get_id(pdev->dev.of_node, "spi");
-		if (ret < 0)
-			return dev_err_probe(&pdev->dev, ret,
-					     "Failed to get alias id\n");
-		sdd->port_id = ret;
-	} else {
-		if (pdev->id < 0)
-			return dev_err_probe(&pdev->dev, -EINVAL,
-					     "Negative platform ID is not allowed\n");
-		sdd->port_id = pdev->id;
-	}
+
+	ret = s3c64xx_spi_set_port_id(pdev, sdd);
+	if (ret)
+		return ret;
 
 	if (sdd->port_conf->fifo_depth)
 		sdd->fifo_depth = sdd->port_conf->fifo_depth;
-- 
2.44.0.rc0.258.g7320e95886-goog


