Return-Path: <devicetree+bounces-179622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B66FEAC0EFE
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 16:56:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1CC9F188C916
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C17928F948;
	Thu, 22 May 2025 14:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o6diGKi8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB2F28F50C
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 14:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747925584; cv=none; b=iF05fXz07w4kGR5/857y7LfF3CGuQEi8mTKfDGJTSK5fGcnnrETKqLPOOAj7zzX6sZfEbVZPZmrAYf6I1/nEpc2F63obUtPBm4JguqvEvId2X3wvno9BAw3/YiJ8vRDUEDplWVysCzTORcHZnpgH8K72bDP8iFjWDKqI5dHR758=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747925584; c=relaxed/simple;
	bh=92hGTnTOgw+qrBuRhXzTVXcHw+H/usL3iGRcHSlTmfU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JIGlWrRUJmjPKeHSAViLXWdIMbkk5ZY94Sh0uHp0SE0y7cLOcbWLwQ8SnnBYhIxOscB3RhhdO27M372QLUBnIsBG5gi/eCToYK8tvAWMYgL1f9rSbC9zIkNeX8ECjEKOaBNiPVFlK1R9p2s7YEaSpVG0NpoMkRzktzIxpN9MJw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o6diGKi8; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-442f4a3a4d6so52998995e9.0
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 07:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747925580; x=1748530380; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fJIIfru2scNsoUvLKp5rkkh2CkzNDRkWDJuYnMI9SSw=;
        b=o6diGKi8Ues8vrSxkxvVypH7D4tr/deJt06TtSd2ZHOjkRdYI1BWAKixLvKADAWWr3
         ddELtzXA3XVEknj94GYevKcK7DITSaT9+8Oxdy6WlAUSUp+EcFozYc6ZHUFf2gd5cwus
         0tBZBVyf42NGQbNvQX74IJGb2aSrTU6xl1uT+9KqVO9IqOCTmPReuUdljdUnAomHm3+4
         2OfTp7vB/rQKYSofaGe+XRzPvse3wVwnc79zKCx8ckrpZ2IX+QMs4kkZHQy9EtXM60Wv
         1ZUh/5WmkSMEJt2Wl1r+d5m9DGuioR6Y7AUsxFZTSJhzmTXCKFQliBT0zToO2EYIAH/g
         OkXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747925580; x=1748530380;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fJIIfru2scNsoUvLKp5rkkh2CkzNDRkWDJuYnMI9SSw=;
        b=E+TFcLtrupyi77tmTJCIAE5KGvOUy4KfCkUAEL0g4eo7IdtvK98LU67KMuaUMFN09k
         +tjUX+m1ntanUUX4T+qYpmJGAtSIWp511iZ3ldsF2IwrOKxJYBCHkTFr3R6sLWI+7p1D
         MrMdgdvwNPUCjuuN9Tmtt99D6lBefuApkNeYAGgRmxWWUAGw5G2OW/eM+GXj32qY7dxh
         nOlrXfK50bXUgx+NECgqpTI5qKHQBQfn4jHht73dwDpp8u0SCkZDz5Gydttr5EELIpF7
         lTerVjTn/TmD5PsSBumwVAW98lkDV74TmECx54p1dwyym1MrtxncuIdUCjb1b8gHupkK
         cMAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWo15FZKmfcY+bTtDcxnQFSPmUocJOsVGUnkjjMyHFDVN+hA1tBLvzix+EQUS0USjqNwnvjuAPShhZH@vger.kernel.org
X-Gm-Message-State: AOJu0YxiI2/lLd0lbeLrc9iO2dpKzw6ArG1EiX9Cn0ySoC3SRXuSrG5F
	uBRQ9BvJFELblPvms9Gq+cbopy+pJlUh6SDFifBOje1QxFFIlIAj51jLh8Y6z5yWK/g=
X-Gm-Gg: ASbGnctqcT2WHbmpXzfGUEond+drZQ8fyyyfrUYXtZk01PREcZU36fc+wQhnuClvqst
	EBAPhCYTuzRmmGKjrXGMpDx4pCy427mezy/QFYPeUV7B0Z2kdn9DY4IjEk7i21VkqtemaG+EHbX
	0mBQ40rlIExc5xyJpHHP0QCEWDzx16GHMwHKW6pstlQPOHl/ey/qTlzggn1zqO0zgrWDF7BziaV
	QI+dAa2ROeOerKXoUDc4voZxF0Zx1iYNrNNKWm3Sr6+KMtt4yL++aJ8RMavzPJhdVysXeZLhN2n
	ieMUTEtyHUF2yVkbD8j6LqHuW/Wqc/iNHjxJszzsKLxiqRiTZHHApgfeS70R
X-Google-Smtp-Source: AGHT+IGKSX/g08qT9uRPihxiVfgN5hqQC7JQm68hkcjFhtYvodzbfGfpy0Z0MOE5bK4aqE+Du9TaVA==
X-Received: by 2002:a05:600c:46c7:b0:439:4b23:9e8e with SMTP id 5b1f17b1804b1-442fd93d0a1mr262843345e9.3.1747925580466;
        Thu, 22 May 2025 07:53:00 -0700 (PDT)
Received: from ho-tower-lan.lan ([37.18.136.128])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f78aeb56sm104965555e9.27.2025.05.22.07.52.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 07:53:00 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 22 May 2025 15:51:42 +0100
Subject: [PATCH v2 13/14] spi: spi-fsl-dspi: Enable support for S32G
 platforms
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-james-nxp-spi-v2-13-bea884630cfb@linaro.org>
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
 Ciprian Marian Costea <ciprianmarian.costea@nxp.com>, 
 Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>, Dan Nica <dan.nica@nxp.com>, 
 Larisa Grigore <Larisa.Grigore@nxp.com>, 
 Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>, 
 James Clark <james.clark@linaro.org>
X-Mailer: b4 0.14.0

From: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>

Add compatible for S32G platforms, allowing DSPI to be used.

Add a depends for ARCH_NXP which can replace LAYERSCAPE and also
includes the new ARCH_S32 for S32G. Similarly, ARCH_MXC can replace
SOC_VF610 || SOC_LS1021A which should avoid updating this for every new
sub-platform in the future.

Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>
Signed-off-by: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
Signed-off-by: Dan Nica <dan.nica@nxp.com>
Signed-off-by: Larisa Grigore <Larisa.Grigore@nxp.com>
Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/Kconfig        | 4 ++--
 drivers/spi/spi-fsl-dspi.c | 3 +++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index ed38f6d41f47..ff26be07226b 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -647,10 +647,10 @@ config SPI_FSL_SPI
 config SPI_FSL_DSPI
 	tristate "Freescale DSPI controller"
 	select REGMAP_MMIO
-	depends on SOC_VF610 || SOC_LS1021A || ARCH_LAYERSCAPE || M5441x || COMPILE_TEST
+	depends on ARCH_MXC || ARCH_NXP || M54541x || COMPILE_TEST
 	help
 	  This enables support for the Freescale DSPI controller in master
-	  mode. VF610, LS1021A and ColdFire platforms uses the controller.
+	  mode. S32, VF610, LS1021A and ColdFire platforms uses the controller.
 
 config SPI_FSL_ESPI
 	tristate "Freescale eSPI controller"
diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index 01af641fa757..04c88d090c4d 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -1316,6 +1316,9 @@ static const struct of_device_id fsl_dspi_dt_ids[] = {
 	}, {
 		.compatible = "fsl,lx2160a-dspi",
 		.data = &devtype_data[LX2160A],
+	}, {
+		.compatible = "nxp,s32g2-dspi",
+		.data = &devtype_data[S32G],
 	},
 	{ /* sentinel */ }
 };

-- 
2.34.1


