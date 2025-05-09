Return-Path: <devicetree+bounces-175525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A1749AB1192
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:08:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 167BB4E4299
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8988290BCD;
	Fri,  9 May 2025 11:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cR58UcSU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2AB428FFFD
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 11:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746788826; cv=none; b=YQuMn/O8Cp3NR0aquZOlCSCPmh4ZYV6SN0a7DiQQpN0qR/B4IWbmEq2EKy9NKxesoSgSPVCxcdkYZJ8WZPKyGEuri0TDkCvxPMMUIijRdtxhgC8EZGbjvOejU1bYnpf1amytUzrKPcgS1iRFkpvzd/3Ppiz7u0H1BYTNf4vEtMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746788826; c=relaxed/simple;
	bh=/FAuRPFC8ORDoN/VXflFQ2NEMxezE2lgdO50IWKPdAg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qPvMMNCKHHz25OkqTZJzirIYpCMFV/sUkcCoFpc+UP98l8k0yb24w5g4TuqvCALZ15Q/yoQYxx/to9TwzjK8aa3Yk53MTI4lvbgDORUzFZBnu9s8ns+srTevZgLm6IGA1Yjy11c57tlIuq8gIqfTYm4i1u8oIU7GQJFV3EFPy8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cR58UcSU; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a0af41faa5so1063336f8f.2
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 04:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746788823; x=1747393623; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z83P5zYL5aiqJ4xhC2aD1SNehmR83/wjYJwbnC4UTJU=;
        b=cR58UcSUp/4wAZsyJLhDxagPmAE4OvsGkoqXjnMSbinDq8D4c8pZmsgQu6aGouYWmY
         myOi28F6hyfSnjK8d+CLNeq1ndhgujIW57ZUfUm5nCWd3VC/FKEp+8b6MTXl7ea9S45t
         491OHUVYWn4h+qAFHZ+042p7OAszCPpuamaWjgb1GPztv0u+YcU09dk1CteHnFkxq53/
         qeb4T76lMakZpwpw+Ivundd8J1mbxs4f/o+FB/t5OQAYd+P7cZL6n3u3jl1rgGw2jyCr
         RW9YRy65kxmBLVK4YofjVT8RP2gD6rQZufo5a8a8V2qDFiwugzjONC3ydvmZBLb9k8Z/
         m0dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746788823; x=1747393623;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z83P5zYL5aiqJ4xhC2aD1SNehmR83/wjYJwbnC4UTJU=;
        b=LjG343jlmJ6rxLdLwRGko2QEfhNdBouEog8zc/oZ896FCcUD+zkh5gwgHW6l0+MzG+
         BuWRorfvpmK+ZAe4s+CfAqnRRRiKZ/9AT0VJWpnYfGYlUH2ieuEnrIbxR5O089hHENai
         dyUk5QXU7l7/2h6NPa4VZfnkf/S3Fn7oMtsuCMnnGSC7rkVOKBPedn6K6fZv0inO6hj2
         Slz/M5zwgi5qu6HJZDj5r4Q+s1cxswW+SJBbeK/bZ852DEkYivXJ+ehPRmQaawiGKSI9
         DDj8+laHDZLdG0wV/DkclPtxuzz1w49jatX4PiPyC5JsSDTkmjH4q2GR32rkQwjZwkH0
         77uw==
X-Forwarded-Encrypted: i=1; AJvYcCUTynmEmMt+8b+XPolKgXdzjUV6vvRmdMAM2mbeAvMqfcuqMjCESOqXnUZMxyhzS5klj4t6zZ9XybPr@vger.kernel.org
X-Gm-Message-State: AOJu0Yz40W/SS9wOOpFNzh9HfP8GXn5heRJkED8jKD+WS5iKMp3kbTl5
	cjLnjOYNaK0mvA1Zlq2uHmQliU0usI7XpyYqztzLgKvwQp27ZgUnXi4pWlmIZVs=
X-Gm-Gg: ASbGncsL0gTeJXl7h2fdJuGIOQQ6BtWtpjDi62Hb3S1IL1qeOrSnRnx8V+T57O37S7f
	JTsHCrDwe8B/OcOABaKjzdh0jFuuQKurJzYCh74Dd+q8N+x5yaQqXsnhBXRclSbfwoggYdtM2BL
	PdA11qc9h1R0V6dBwwCI1G+vzDcHHDegQYv+XchVp5elReryiozdFAi2tFyq2+AyjG0HCr6JkqR
	8ln5Je8QqYbFhlui0T5eZTzoo6p66bnE5YAqZJ+5Uk8yHROaLkXnOpeOnCPPb72L2wIb9J7leMQ
	xEwvX9/vWJ3S15B4lfBJ9jNb07yS+mCBHVCuXTxglm0JC34=
X-Google-Smtp-Source: AGHT+IEzZyvVmE0isCL1qd+GE70rpX9DLtjU5jOZ0ngvIzyhV3E/BibSqbyphaSiycReT9JsLKLk1g==
X-Received: by 2002:a05:6000:2cb:b0:3a0:b8b9:6b2e with SMTP id ffacd0b85a97d-3a1f64a430cmr2498885f8f.34.1746788822979;
        Fri, 09 May 2025 04:07:02 -0700 (PDT)
Received: from ho-tower-lan.lan ([77.81.75.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ecadfsm2914797f8f.22.2025.05.09.04.07.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 04:07:02 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Fri, 09 May 2025 12:05:53 +0100
Subject: [PATCH 06/14] spi: spi-fsl-dspi: Avoid setup_accel logic for DMA
 transfers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250509-james-nxp-spi-v1-6-32bfcd2fea11@linaro.org>
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

DMA can't repack the buffer like the CPU can, so skip the accel path
which may change the word size and break DMA assumptions.

Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-dspi.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index f7f9425a19e1..902bf23d276a 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -849,8 +849,8 @@ static void dspi_setup_accel(struct fsl_dspi *dspi)
 	struct spi_transfer *xfer = dspi->cur_transfer;
 	bool odd = !!(dspi->len & 1);
 
-	/* No accel for frames not multiple of 8 bits at the moment */
-	if (xfer->bits_per_word % 8)
+	/* No accel for DMA transfers or frames not multiples of 8 bits at the moment */
+	if (dspi->devtype_data->trans_mode == DSPI_DMA_MODE || xfer->bits_per_word % 8)
 		goto no_accel;
 
 	if (!odd && dspi->len <= dspi->devtype_data->fifo_size * 2) {
@@ -859,10 +859,7 @@ static void dspi_setup_accel(struct fsl_dspi *dspi)
 		dspi->oper_bits_per_word = 8;
 	} else {
 		/* Start off with maximum supported by hardware */
-		if (dspi->devtype_data->trans_mode == DSPI_XSPI_MODE)
-			dspi->oper_bits_per_word = 32;
-		else
-			dspi->oper_bits_per_word = 16;
+		dspi->oper_bits_per_word = 32;
 
 		/*
 		 * And go down only if the buffer can't be sent with

-- 
2.34.1


