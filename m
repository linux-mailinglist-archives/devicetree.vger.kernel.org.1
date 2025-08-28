Return-Path: <devicetree+bounces-209945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDB5B3996B
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 12:17:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4CEF51C26C89
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 10:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1489730DD28;
	Thu, 28 Aug 2025 10:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CAE90OZ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DC330C62D
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 10:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756376143; cv=none; b=i7l441l3QhZGo+N06sZFHCnQdlaHuWwWvD63vN/iabWgB/nQX32PAmFN88yU8FyQuyHXvx3g9AWvop2xSssW0o+0KUNsn7ZJzlgMOYzBJX9RcREU8ejg5dH9hhRkiwzFwG9bRn1MJrGduuTRbHHNJDH4q4wkBKblNlfMJ7M6+xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756376143; c=relaxed/simple;
	bh=+vua32+ZisCIKoZtgwxULPWaV1MKJPVYFqaHRCFc2jA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PPEk+4qo9PaSCXmp52T06HRA7cpvSZZtsqWwDj3E17o1HDFDHFkzcN1oyqcRwL4rsudoRR9pyyzTe5Xi+1JCcy8lSEJwtE7iSwgOwoIxM3CbkM72WGR4OGcFkXA2nC55V5u1hxuGFMIlDVLFkgPRKG4T6xRPWtMFE4+r8CJDeOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CAE90OZ3; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3c79f0a5b8bso600155f8f.1
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 03:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756376139; x=1756980939; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yp6uP3SnVVC8UtclhAtZ36zVvCvjaZ1bDiL+uis450g=;
        b=CAE90OZ3Qzj/FsXu8/0AiTYsX3CWwXbGh8fdvH6Khzz0an2MHTDVVg9D2Cg1y8GO54
         LP5qRnN+Uqd5aoAO9WVroxXPsuOc4/XmdV6d5oL0nle2/8CGYMg9adhk5fb9UcsizpoH
         Tc1QAsgTDyBRdnvMIEA3hjQRH3+zemfQeUjSPxSKiY8O12wEbzuG0xiRhRiCo6PI8zFd
         BhShIKUwI/kX4QpTvYYmBaGO9+kpgqp6awbS/vgaNnnaYgzEuGFrnvB9+mjR3TBFIQeN
         zOMxRqaoKT81c37Ydh3bFFR2kbp3mWPxHlcYfnex5Z7U7A0zQq/GmsCNNyas6gWIPnTq
         59aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756376139; x=1756980939;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yp6uP3SnVVC8UtclhAtZ36zVvCvjaZ1bDiL+uis450g=;
        b=Lb8sPqAxLP79L/h9JfMGs+Q/sbYBGAfziVtnKAM1QjXuR9f+MsG90sDoxJCdnKU29Q
         3ygQ492Cfue64XnRkedELEq9/3HAXI1OGvkQbMlO3Y/Teq38UO9rfkl8hhpG1A1cRKad
         JyuSIb/NijPL+moT4INjb2CXwcsjHNCR2DwwCovUl0+RBcbjEJ9bxeHqCDuauq76NCLK
         RVDprfyJCBDvcPjmWhLqpyoQZRbncMOnp+G6FK2O6M++YtVar5jr5qe7xqMMSh8jEL/G
         6/Iun/LsQWAzLYAmmVVm5i7B+eRAwEr8EMBFrurlHLUv4zyk/6goALxHOnXOymbF/8/c
         VOZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoq2ilcqYRyLCVwOUQjPeUgjjZIKoZRouR32Zscz0gfaDg8drKTedI7IPfFZ3crSgzlCAZjHae9wRD@vger.kernel.org
X-Gm-Message-State: AOJu0YwuhS/wEiYxBTgEpl4brJrvuD3FGo+Mlj51ByEmYgtim9a1P+ml
	IZ2CPQRWR62DDCcEf+00xR8FFKn63AGMlSTiliH87KWoCFgKlCXZHQygSht9U6eHjGY=
X-Gm-Gg: ASbGncs4BHlAa3b6GYgp/8zGJ9SMsDTj4RhAOu54XxmygWV1LdpWJVBaMrzVuIyBrlO
	BMFye9UMUXcjLp1XHwujVgivimNSWgvm57ibEsr+PfAu8rKE701OTqxDz3VplKZ645c68psQhUo
	qgaLLlVEQwK0eC9MF0AnxGHvF+Sy+DU5P9ampEeLT2WCh1NaWL0FUGaErTI8Otd7pPxzAFZDN1O
	6PwL+1sSt65aOh5WonMg6zBfxtKPE7nf776u+G9CFNGTn48TLFifz5mRS00iRjccVygTcnv29RX
	dtxMIEBtgutwG7pbnyfVXvfN9znkqZ2nRDbqbqz7aUkQWZU/IKdiO3D5nnyX1D2vnCPkuX6EOyG
	PWUqkj7qoW5LF3R/xbdFL+6xBir9Bqdv8kG5qt5IvuQ==
X-Google-Smtp-Source: AGHT+IHt/hz7pSxKUT3aLdo/Gb/ZNoVM9J+1IsQAvEnajR37wO8sFmm+lOvT+aASpbunKjjiXbYm8Q==
X-Received: by 2002:a5d:5887:0:b0:3c4:2005:fb9d with SMTP id ffacd0b85a97d-3c5dcdfd700mr17926935f8f.31.1756376138965;
        Thu, 28 Aug 2025 03:15:38 -0700 (PDT)
Received: from ho-tower-lan.lan ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b66f2041fsm49976305e9.5.2025.08.28.03.15.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 03:15:38 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 28 Aug 2025 11:14:48 +0100
Subject: [PATCH v2 9/9] spi: spi-fsl-lpspi: Add compatible for S32G
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250828-james-nxp-lpspi-v2-9-6262b9aa9be4@linaro.org>
References: <20250828-james-nxp-lpspi-v2-0-6262b9aa9be4@linaro.org>
In-Reply-To: <20250828-james-nxp-lpspi-v2-0-6262b9aa9be4@linaro.org>
To: Frank Li <Frank.Li@nxp.com>, Mark Brown <broonie@kernel.org>, 
 Clark Wang <xiaoning.wang@nxp.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
 Larisa Grigore <larisa.grigore@oss.nxp.com>, 
 Larisa Grigore <larisa.grigore@nxp.com>, 
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, 
 Ciprianmarian Costea <ciprianmarian.costea@nxp.com>, s32@nxp.com
Cc: James Clark <james.clark@linaro.org>, linux-spi@vger.kernel.org, 
 imx@lists.linux.dev, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.0

From: Larisa Grigore <larisa.grigore@nxp.com>

S32G doesn't have the max prescale erratum (default) and it can query
the max number of CS from hardware, so add those settings.

Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-lpspi.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/spi/spi-fsl-lpspi.c b/drivers/spi/spi-fsl-lpspi.c
index ce347cdbb009..431439d4cdda 100644
--- a/drivers/spi/spi-fsl-lpspi.c
+++ b/drivers/spi/spi-fsl-lpspi.c
@@ -145,9 +145,14 @@ static const struct fsl_lpspi_devtype_data imx7ulp_lpspi_devtype_data = {
 	/* All defaults */
 };
 
+static const struct fsl_lpspi_devtype_data s32g_lpspi_devtype_data = {
+	.query_hw_for_num_cs = true,
+};
+
 static const struct of_device_id fsl_lpspi_dt_ids[] = {
 	{ .compatible = "fsl,imx7ulp-spi", .data = &imx7ulp_lpspi_devtype_data,},
 	{ .compatible = "fsl,imx93-spi", .data = &imx93_lpspi_devtype_data,},
+	{ .compatible = "nxp,s32g2-lpspi", .data = &s32g_lpspi_devtype_data,},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, fsl_lpspi_dt_ids);

-- 
2.34.1


