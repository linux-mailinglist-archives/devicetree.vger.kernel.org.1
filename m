Return-Path: <devicetree+bounces-175526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF84AB1195
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:08:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E2CA4E5973
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A729A290DBE;
	Fri,  9 May 2025 11:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tADtBuj2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D1C290BB8
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 11:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746788828; cv=none; b=aTKXEzWS4T0nj+sV6Oxu+XhZraBEbX+7Imsf977chVD6khLUIoSfcZdm4hGMzdc0owml3bqhKf21jeeTV8KZZWhaPKZty/OHzU0lBH/67qM5Fz5pTPJHJj91HXpEhsAbFQ73Y9/aGwDMX3kAO7oFeFVyhQg5ZKHpChDdLLrUvNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746788828; c=relaxed/simple;
	bh=xranPDn1OkC/NMUiO3u7jz/wgKrHQyAzstGTneAYvJY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TvD6//FFec6Heuyojey6BIkpJfbhXXOVeXDACIzyaYni0fsMmEcSSfhpGEICXCX2Bp65gxiVOPl0p23rqBnO/tijhJzCfCg23lo5AiVGhC8xYW+ykKbRUhhoylPfF7sz6L9xIrinkxFNR0SpSiHJCd46eLgq+VKxPI6jqvLDixk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tADtBuj2; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a1d8c09683so774516f8f.0
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 04:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746788824; x=1747393624; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0/ugUs7fJj63IN/MNSKX5UMLi4/fRK7xsOMmgdlrCl8=;
        b=tADtBuj2ACcYtc6anYQGg1c1PTCpJPHv+zQuWM0YaC3aJDyaMSSbzAwz0MjpQDW4Lx
         CVIg79ZG72kmS+b0LmZhliIymGi9jhEHq0oPv0cI7omaxYTPGPkeXzxQKP/yPIPcsoZV
         RJ07pX4bYCtJX8Htkn2DVX74I7g8azDwY35sC0Ry5tAT/2NuihUa6GTeKyzdvX4eRGDW
         RogW5TR93r+QsAqDKO6YdO+xN6L/AoQNX5Rht8i2mrWzD1Rm7J3UKheazNQ0nyWZAZ8S
         gmXDKQs3sIeo3vr4/IkN07UgONRZuDMf4xyW2tlo5Hx2K/EQS7crC08TAQQxMI7gR/C5
         moQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746788824; x=1747393624;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0/ugUs7fJj63IN/MNSKX5UMLi4/fRK7xsOMmgdlrCl8=;
        b=BRouf+BQrAQ9gBnK1vxeRe0OPKu2Rc8mDX9dMPInLcC986AxUu+4DyQlTRxNQQ2YHX
         daNvSdfTASdE5eOOGQ5/pX6jo9pDIeDYv01NWU7DdoeYsQsK7KdiHzfLKNBXtiZqzkW2
         4k9S1Z5oVjD+62v5B/nFFfOaifpsBfwpun7hqv0P+BzD5dtyGtPpATGT5MTRfNttOfv0
         MV8A2y81u5zu8bgj1t3talILk/h/nn6Evn5Ne5e5TDGpIQmf45M0o4a48WVgvy4R98ZQ
         x9P/nivyLyrvdVU+ngN47CdCQK7ew0q+9YICEWXrz/fSvFzcxhIR56GUa287hTyoNCFj
         PouA==
X-Forwarded-Encrypted: i=1; AJvYcCU/abZPw/DEP4u6uJ0MB5SYk9FKM+gtTTe5+FCr3b98HeXG3nCN/ANF6VqhMyygfTdoP0dJ11ViHI5j@vger.kernel.org
X-Gm-Message-State: AOJu0YyxOTx6MkgUUtJQPlPmAQ6/GFz/fk81d0HroPpiVKLOBdeg1drS
	DLgzN+tHE0PWzqnJeY4jchmGDCkRm/cxIa0vfyMgWcjzZEZxF6gjsqymbW7id8E=
X-Gm-Gg: ASbGncuI73lYk4bPE+RH4X5afDLGykgFUENt0Zim1alJNQ7C+KO2BkJJgIqEF4wKuU4
	va7DIy958obJRNug0L3IPyF9BgxgJAPxmIWxMfs5nQOHywRmfRgM3uEpbgBRyoxeqXpJpEmtq9m
	Cg2IvpkqfmxnR/63dwtiJACpfGbRiRO4DtIbmVFaYoF+orgsDtPWvY0egM+vrs/Ara+LjyW8sNz
	cFNHRU/C+ZkPpZakJ2JWZa4ya2XsYOaxgtq2zaHYg9v44mHGtJ98a+IA2jGHYgqG18WMMOAAy/m
	4L+xeq4alwVcIXFLEUxw/RmoumgK0Ove/XRWETLrO6LaSKM=
X-Google-Smtp-Source: AGHT+IGt4VaJbNHq9FNQxWvc/835NhTOA2iiwAH7rDv6mlJrY9Iqd6PFdsksfuN5qOW+kOzhHmEEPA==
X-Received: by 2002:a05:6000:2404:b0:39c:c64e:cf58 with SMTP id ffacd0b85a97d-3a1f64ab930mr2978779f8f.55.1746788824315;
        Fri, 09 May 2025 04:07:04 -0700 (PDT)
Received: from ho-tower-lan.lan ([77.81.75.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ecadfsm2914797f8f.22.2025.05.09.04.07.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 04:07:03 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Fri, 09 May 2025 12:05:54 +0100
Subject: [PATCH 07/14] spi: spi-fsl-dspi: Reset SR flags before sending a
 new message
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250509-james-nxp-spi-v1-7-32bfcd2fea11@linaro.org>
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

From: Larisa Grigore <larisa.grigore@nxp.com>

If, in a previous transfer, the controller sends more data than expected
by the DSPI target, SR.RFDF (RX FIFO is not empty) will remain asserted.
When flushing the FIFOs at the beginning of a new transfer (writing 1
into MCR.CLR_TXF and MCR.CLR_RXF), SR.RFDF should also be cleared.
Otherwise, when running in target mode with DMA, if SR.RFDF remains
asserted, the DMA callback will be fired before the controller sends any
data.

Take this opportunity to reset all Status Register fields. This is
required for enabling target mode for S32G in a later commit.

Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-dspi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index 902bf23d276a..b7363cfc649d 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -1063,6 +1063,8 @@ static int dspi_transfer_one_message(struct spi_controller *ctlr,
 				   SPI_MCR_CLR_TXF | SPI_MCR_CLR_RXF,
 				   SPI_MCR_CLR_TXF | SPI_MCR_CLR_RXF);
 
+		regmap_write(dspi->regmap, SPI_SR, SPI_SR_CLEAR);
+
 		spi_take_timestamp_pre(dspi->ctlr, dspi->cur_transfer,
 				       dspi->progress, !dspi->irq);
 

-- 
2.34.1


