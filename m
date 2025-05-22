Return-Path: <devicetree+bounces-179612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DF3AC0ED6
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 16:53:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81A1417A4F9
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34E0528DB63;
	Thu, 22 May 2025 14:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CAySu8Ej"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145DC28D8EB
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 14:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747925568; cv=none; b=H3rK9eJGKS5USvr+OTuulKEVE5xbZ/PixRmi7uwB2Cqbyw8Puup39UtnE9E9/w42sFWEC73CZFgRi0cUvBJhezKCJ9cuZj47fZNPelMqniHXuD2RNTHMaostpFPQGpzlR/HCk07io0lDeuxRxuLxw/wZVT+tVgmXCOS89JA7jZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747925568; c=relaxed/simple;
	bh=9fyJpp5VN7ktj8kNm8ocfTEUoU4tl3GIpRNf4HxHppk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rEuGh7N1H5w+s6mTlT7bHtoTXU2QtfaWoG0rr2rdLcu2r7cZIUEcd+ain3hY/isXisfBHuBH2fLNOG/bCEBP3W9iobW0thuSIRGyWIw0AZ1hdQY28TtHrqi2FYa5HDbFWGIWoJwAf8hHlQ/MToFpocDzDoWm+bE55vkzcVlA9c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CAySu8Ej; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3a37d24e607so2365291f8f.1
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 07:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747925564; x=1748530364; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dHewhTi8oRcJIXvkVA+zw1liGRuM2d0KooB3K/vBm40=;
        b=CAySu8Ej0gTfpGbz86l2HvjWIzIvhR73e1rRPVfYdl/JMfuRRzurIfZndQalGD5ZJ3
         p3WiddU+Evde6gUYukBCv9mc3BIr2hXwyeVoA5OYKrahMiykQ7wLVtRCtR/30FQrqOfP
         1v/VjpH9OSEMQBWefNixQBdQVwNNDQ0WMbTCcWBjh+ysJel0LYiiR0ZcA9ZlTdej8BTb
         loSi/hhgPH21ZcmlPeLO3INEBVQNmk9WqHU7+k5UhWJBYXUDdeD95iiRUMNkmCTay4ZB
         iBlJ15AknTUYvNFKwMMmkbTl2kx/bZYULbUCR7HNJAH4Ybm5GyzpbXuM7Uhk4ob99qh0
         ImIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747925564; x=1748530364;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dHewhTi8oRcJIXvkVA+zw1liGRuM2d0KooB3K/vBm40=;
        b=JB30MHdxzCnVRqTT25MSwm4XdcLe3M3MvL324G30uQzplId/JlhRPqDaep2nLvnF+H
         OA3qlMCNAoWSoLtJBPqZ+jwmHDGb44A/W6SAHGf3cx/JW8HWm5E9h1oWwSmtWApaajhe
         MXqNCyM77l0lZ67GVlvh7+2Dxci1Xufx2mU8EaQErPjdYQqqKkYsoZoFstDlAoTYtrz3
         vnuDYqC236nsbj0DQ/2rhkWbf0/TgCuucqfMmuMU4Ri14bqtZuvZJe7Sxxeq+g8YBPks
         dT2iKCwMCDfkcGmr8MEAmWPEMJx6V8xe2z1cPojYgBHaOaSNmpwR8xhVVYlhN09c8XR0
         2x9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWNj6G7RbUNflQc059n4h1VgIwsFyi6Jz8IbtrGE87gHKSaZKojMYRe16KHpXEJ2Sz6aXENT/IAC+e5@vger.kernel.org
X-Gm-Message-State: AOJu0YyzXGLCMjPqbZYGDcFagFek3ZIWHuCEdf8oy7U6Ik398jFc8pJ2
	OMxE6Ut4I7gAF0ilQfnE6XvoMHYX8RbpunLl9Qs6qmTCZBqk/vG2kxYINe3DrAktX/Q=
X-Gm-Gg: ASbGncss4lQQTq7syawACl7TJeCSLGOPxvWE6FXliDRu4YGG/mY308h8c/ezbzEh41u
	VGYVv9+vp3ezeRUwazT+gPw2b0dAuGV21yTgab/IBLI1mgiWsE2mgqg2Gew61JPeV8uRrDfUBGE
	gzmKJsxjdz4VjUmbxwJOeV8rAY6RWxofHwS6FSlwjhylFAKR4mKIXNS7yauQ1wIYwK1e4ty3ujt
	P8hH935GL1utDOqnD6v8my/nkfEbIcK7hZZdoHODZm1VJt/JS2ISZtki33mD9oDO0kTGrLyqXUw
	mP21XKCLoOsjpow7FHS/46uIBEf/J/R3AKnYQkjEXfizxOPq+3g4GsJHg+Xz
X-Google-Smtp-Source: AGHT+IGiCydEoZVMLu1W3WpDgmtDjO4iw8qiIAhfOUPDYq6buhqSWh3dCUK+1dZ+ss9slz1KiN0zOw==
X-Received: by 2002:a5d:5888:0:b0:3a3:760c:81b7 with SMTP id ffacd0b85a97d-3a3760c82c6mr14137962f8f.57.1747925564162;
        Thu, 22 May 2025 07:52:44 -0700 (PDT)
Received: from ho-tower-lan.lan ([37.18.136.128])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f78aeb56sm104965555e9.27.2025.05.22.07.52.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 07:52:43 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 22 May 2025 15:51:32 +0100
Subject: [PATCH v2 03/14] spi: spi-fsl-dspi: Reset SR flags before sending
 a new message
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-james-nxp-spi-v2-3-bea884630cfb@linaro.org>
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
 Larisa Grigore <larisa.grigore@nxp.com>, 
 James Clark <james.clark@linaro.org>
X-Mailer: b4 0.14.0

From: Larisa Grigore <larisa.grigore@nxp.com>

If, in a previous transfer, the controller sends more data than expected
by the DSPI target, SR.RFDF (RX FIFO is not empty) will remain asserted.
When flushing the FIFOs at the beginning of a new transfer (writing 1
into MCR.CLR_TXF and MCR.CLR_RXF), SR.RFDF should also be cleared.
Otherwise, when running in target mode with DMA, if SR.RFDF remains
asserted, the DMA callback will be fired before the controller sends any
data.

Take this opportunity to reset all Status Register fields.

Fixes: 5ce3cc567471 ("spi: spi-fsl-dspi: Provide support for DSPI slave mode operation (Vybryd vf610)")
Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-dspi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index 1fa96e8189cf..863781ba6c16 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -975,6 +975,8 @@ static int dspi_transfer_one_message(struct spi_controller *ctlr,
 				   SPI_MCR_CLR_TXF | SPI_MCR_CLR_RXF,
 				   SPI_MCR_CLR_TXF | SPI_MCR_CLR_RXF);
 
+		regmap_write(dspi->regmap, SPI_SR, SPI_SR_CLEAR);
+
 		spi_take_timestamp_pre(dspi->ctlr, dspi->cur_transfer,
 				       dspi->progress, !dspi->irq);
 

-- 
2.34.1


