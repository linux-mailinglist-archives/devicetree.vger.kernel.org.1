Return-Path: <devicetree+bounces-179617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFECAC0EEF
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 16:55:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 74DDD1C00DEB
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6203228E61D;
	Thu, 22 May 2025 14:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZgNiAQm8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB4A428E567
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 14:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747925576; cv=none; b=pYmR1E7SQa7OA/BsV7TbMMejxtemia3oGNMy3VQjmPATtF8MZMX54mrel+IfamGh7U4TOAb71gwlF5HUI1aTkE1+fQLffRp5Ru0GzaSfGZNIiEjzg7F4z33ECJ4WHA5CC0QFehVkas4ID6YGVX6JdVRDItlVoZiEdQ257k4LCcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747925576; c=relaxed/simple;
	bh=0e0G7GONBUQeocyCnkkONaSF+xI1QoW7NjnPoRRusIo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XTM3oNjpprIb8SMgR+ATN/sgpAX55gIuAF5iTLgifBfo4eLB+25OtHBRYkH1lhV/SNnRbmGELiJhb+e6obhhyAPBENxkYyoJkFK1CL+XVgywQ1hbtcu1MS/KxZlLyF6do1W0JtxX2BulKWW/wQ9ofd0UdyxqaF8Yj3W/JR+NRIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZgNiAQm8; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-442d146a1aaso80804985e9.1
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 07:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747925571; x=1748530371; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N4sEJM+871Hq7BueZc9qSjjVinOO/X+0tYY6aaq4Jkg=;
        b=ZgNiAQm8a9BNLT9LZfOQCKWPb6DA+EevGOGOGdOgk+ze3aypACKwK5YHsVGT2urfyB
         YqwFW2gHAuAVD76fjkTqccUhFXAKlfF0fxd9joOjNqk43E/UvAt+sZD8VqOllb4eHY/o
         1ga9wtzEkMq1FjtgDG+gvZwHWwYnPokoeXgF1B7ZHqHWcOkI8WL+lOSQP9WgKwzraXHc
         Qa1Ut2zqkGYxSqj4vMHw4FqQXTfLBGKkRy94Om2vVIcx3g5zCN0luLYBiRacYljxXT8U
         9Xu5/n4DjYGOqKwimcpmyLBzqmjGera0LvDubtsWuJm752n4soVFJA2jsF2bxJbAQNhI
         qoBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747925571; x=1748530371;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N4sEJM+871Hq7BueZc9qSjjVinOO/X+0tYY6aaq4Jkg=;
        b=g+AyjOVB3vnFbCgsV707eexMQEsduVUpe25AR8OirvWbae1gqiIewqsJdkvIHdZk90
         1FPMaSgqQoccxwHYB+S5eaIUAKFN09iGZIW4/TtKdsc2g2Dc1F9bze65hiXesveHNr2f
         CDPRDykZIT16MYp7kvuPIR6g6GEINhN+1QERXAQzrUyd/cXw0MN/mUhCwfLe0WXfyEwp
         Luwuujh2bAfbwq9/YL23FaiBY506gHPyE1KHfRA8OCnPMRo/sgvl5GkpgR9hKWBetci8
         A1gV23SDNphPwzV6X3xS0ocgoMhNeKqH2g11bwfeYUWlCNEsRANqrePHLS0BI+G6QV9C
         KspA==
X-Forwarded-Encrypted: i=1; AJvYcCVMFxY21w7uwerI/5KwxUvsImqpa5Lks5yLG5e5ksQO5skYBZ1qw4LPmjxARU8NffRo4fecYabjArR/@vger.kernel.org
X-Gm-Message-State: AOJu0YwmQSx4OH5mmymAcz5jMuQC3LZHVPnk3HqCgeWj8FKK0DLgGkt8
	hTJnzp2FtJqAsmI4TiY6S3HwFzxUbgpoT3N3ncMxirx73FpE7qdnMvwvVbVDp0SwlxA=
X-Gm-Gg: ASbGncvVldNGhlnUeOBFmpCipaTvyKvXzWlLjwaqxGYeaREtSEQcPfVd92PDPufCfYf
	IkKSIxi8iJueQOW6iAh2vz3OwuYVnjHuHyWta1nGgCiJtBLO0retiWS8KsMuxW1Kpbonl/HX96H
	nDQABGdX9p5eLb6RMmft/2sGbpx6liDPCLy8ts337DcjciDWW0sFi5LoX7iJbGTPbVDXkpByH7v
	2frx66OHRtW0Vm5IzodhWNuGF8sQFAyxO+u7I1iyFTRtIs/tElyFEt9KQuQa7MFciSMp0JAbrxR
	r/DxpDi5N3coYpX9TQohltplJPHmeJRg84GGQO05YUy+qKA0D8VUo6LcnPYs
X-Google-Smtp-Source: AGHT+IF7HwvFx4mEXB3EyW4Q7v2VjPs8dvE+4oPy+CvCTPqUtNiIogBefTp2+DWncfUrub+h4prcpg==
X-Received: by 2002:a05:600c:3d8e:b0:43c:f87c:24ce with SMTP id 5b1f17b1804b1-442ff031845mr220598755e9.21.1747925570681;
        Thu, 22 May 2025 07:52:50 -0700 (PDT)
Received: from ho-tower-lan.lan ([37.18.136.128])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f78aeb56sm104965555e9.27.2025.05.22.07.52.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 07:52:50 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 22 May 2025 15:51:36 +0100
Subject: [PATCH v2 07/14] spi: spi-fsl-dspi: Use spi_alloc_target for
 target
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-james-nxp-spi-v2-7-bea884630cfb@linaro.org>
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
 Marius Trifu <marius.trifu@nxp.com>, 
 Larisa Grigore <larisa.grigore@nxp.com>, 
 James Clark <james.clark@linaro.org>
X-Mailer: b4 0.14.0

From: Marius Trifu <marius.trifu@nxp.com>

spi_alloc_target should be used for target devices. This also sets
ctlr->target automatically so delete that line.

Signed-off-by: Marius Trifu <marius.trifu@nxp.com>
Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-dspi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index 10e511ba1cd8..814a92b8064e 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -1366,7 +1366,10 @@ static int dspi_probe(struct platform_device *pdev)
 	if (!dspi)
 		return -ENOMEM;
 
-	ctlr = spi_alloc_host(&pdev->dev, 0);
+	if (of_property_read_bool(np, "spi-slave"))
+		ctlr = spi_alloc_target(&pdev->dev, 0);
+	else
+		ctlr = spi_alloc_host(&pdev->dev, 0);
 	if (!ctlr)
 		return -ENOMEM;
 
@@ -1405,9 +1408,6 @@ static int dspi_probe(struct platform_device *pdev)
 		of_property_read_u32(np, "bus-num", &bus_num);
 		ctlr->bus_num = bus_num;
 
-		if (of_property_read_bool(np, "spi-slave"))
-			ctlr->target = true;
-
 		dspi->devtype_data = of_device_get_match_data(&pdev->dev);
 		if (!dspi->devtype_data) {
 			dev_err(&pdev->dev, "can't get devtype_data\n");

-- 
2.34.1


