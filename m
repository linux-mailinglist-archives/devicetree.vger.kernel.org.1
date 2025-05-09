Return-Path: <devicetree+bounces-175527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7664CAB11A2
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:09:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A94AD9E674D
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:08:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6E96291171;
	Fri,  9 May 2025 11:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gGLnv/Tl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90926290D93
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 11:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746788829; cv=none; b=pBSnFJFSzi/hNaslwECHAGGSs9cIg1btYYWUt3vqIHrrbqMAn/u9WhnFNFrs8E9hxmOON3OvIlm59p9XTuStX7rM1+smLVCSa2lGpp7UmfyHSTLZK57xpG1oSfaYzVaeQN+67tiv4oX/aFMhZmBK4ND1tp2Ye8fVa6K+QRUpeOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746788829; c=relaxed/simple;
	bh=Wzbi1SX9mtAF2E7Mjcw8XjP0xTVKnkUioAGI/9ufBe8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f5ImUw+L92EtBtq4UYwHdcN/6XOUEvcuq+fuOdHRJsP7CvJBsYfSfLiUP8T2FoS9RPg/zD+cW5G7daVgYKBxzoxoQ7z7CoSx+TdOCDc/yIpPgrHALv3CtrEmQefaq1pFo0FZ1ycaSAEecdPmYrWOPNCsoxpGntIO2KgnAnf/NvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gGLnv/Tl; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a1c85e77d7so799075f8f.0
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 04:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746788826; x=1747393626; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X9YN8+8rnHDsp/b09Y/xOR9H3TlYqB2jpDQsHdPnIdk=;
        b=gGLnv/Tl8Sm21KyMwuvCdXbd/QsLcu66maSgRkpo7Zjrz41eM6Ml3NXnPwDdguOBmG
         yk7DlIZHnti3+8ZO+ATC171E9QAeblcJk8IuII7C33S8y8yHFobCehDUvDXFLyG3klEY
         G2o1ggip1ye+gdIRxc5L6+biWMJpkd+LuJWXjHYCU+WeNriNDbBiaA3SVfmBAucptSKk
         u7NMYImjM3YTkLZo3WgIAXhgOqqtNAM232Cl+J7xwLZwXT9ro9HEPq0VZTIYT75WaOYT
         sSLIpiR2GKXhs2ACMBuTh/DY0nBLPbzOqJ826zjR3GBZ6sLwfIttmmkONeR4ZQe64DDT
         9/qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746788826; x=1747393626;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X9YN8+8rnHDsp/b09Y/xOR9H3TlYqB2jpDQsHdPnIdk=;
        b=uMuRgt7xoAWYaLDihL6JpFvbfpCAggdpJMKq+qR3yp2NnNUhQ83BbGaOzF+g72O6Kg
         DwpzhVgJ8bV0Z8xa5i7ZQLcJQQ339/nUauM0smkmV+Xxd0mSLPrno475e7YSFDoRnp/0
         SJe5kDHTZtCkCJyfMbZh5kVMOsB4BVZU4j3V3EjIg7+/YLxoET+KSvhv4Sh6yv4W2EYy
         gOwX/0EQtHP3MmrFAwYXw0VoVCLGGEoqfD0IdplokHy8PL6RgbuiftY1hcND+49xtUEc
         P1P+zLfrVgvRsCOgAbXk2dpoRRHNcrwXjLzT/s0kiMCtaub3ZXZO/jj1BFJUadufiJsg
         HQpg==
X-Forwarded-Encrypted: i=1; AJvYcCUzLhXD/dd5uWFp03Q51JTNmPg92+4HCzeZExNgXKiMb1zOjM35r2RkW6CntmgcRewBiX5yy5fgtKIc@vger.kernel.org
X-Gm-Message-State: AOJu0YzH52yDcPGcd9WodJQ1GXCAKCxpt8DXNvtfr06IJiDRLUElKh1A
	PW2seZIGDujqFHU0qkXueUMYl0WIggVw3SbhF3gGzh5fWwAsUCO2Hj4LcHzI4es=
X-Gm-Gg: ASbGncuHJS5ZpqjQr81y1NOz01sYxuiJeduq5d+8DTwsTXW7ZHeUSb5F6j3/cuG+N6F
	gz7VYEhs6UHoX1E5W+1FkWMMHGccWPtxEXC+juW5NtRdV+ohL7/8PnLaiVLk7VnmhhaqxLGxhAx
	Csr5Ub49gOeIhNKSkEWn4+mN6pvjvfqJtQzyyjHa4B3wVe40uF3HJmQNZBxzNb/eFfku+3a01jH
	Agu+MivU6K9J1Ii4wzO0WTdDc1ESYvUFGphzmpjxJ8rgXzatb4RcxLRDejgNqgzQWCMcIM5c3VL
	j3HbB+5o5gz1E+eO2zvTTaQe4xIquGzpaG2/advCCNvjsSM=
X-Google-Smtp-Source: AGHT+IGTcDbYuLQC5gOTqBLxhDeYoC8oTLnNT0OALiU2xxGu34CRv1e+8uSkOAx/4GXBO/mVq1Dayg==
X-Received: by 2002:a5d:584b:0:b0:3a1:f635:1136 with SMTP id ffacd0b85a97d-3a1f6487d80mr2603233f8f.28.1746788825706;
        Fri, 09 May 2025 04:07:05 -0700 (PDT)
Received: from ho-tower-lan.lan ([77.81.75.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ecadfsm2914797f8f.22.2025.05.09.04.07.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 04:07:05 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Fri, 09 May 2025 12:05:55 +0100
Subject: [PATCH 08/14] spi: spi-fsl-dspi: Use DMA for S32G controller in
 target mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250509-james-nxp-spi-v1-8-32bfcd2fea11@linaro.org>
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
 linux-arm-kernel@lists.infradead.org, 
 Ciprian Marian Costea <ciprianmarian.costea@nxp.com>, 
 James Clark <james.clark@linaro.org>
X-Mailer: b4 0.14.0

From: Larisa Grigore <larisa.grigore@nxp.com>

Switch to DMA for target mode otherwise the controller is too slow to
feed TX FIFO and UNDERFLOW occurs frequently. DMA can work only with 8
and 16 bits per word. 32bits per word is not supported, this is a
hardware limitation, so we keep the controller mode in TCFQ mode.

Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-dspi.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index b7363cfc649d..50cec3b94322 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -137,7 +137,8 @@ enum {
 	LX2160A,
 	MCF5441X,
 	VF610,
-	S32G
+	S32G,
+	S32G_TARGET
 };
 
 static const struct regmap_range dspi_yes_ranges[] = {
@@ -182,6 +183,7 @@ static const struct regmap_access_table dspi_volatile_table = {
 
 enum {
 	DSPI_REGMAP,
+	S32G_DSPI_REGMAP,
 	DSPI_XSPI_REGMAP,
 	S32G_DSPI_XSPI_REGMAP,
 	DSPI_PUSHR
@@ -197,6 +199,15 @@ static const struct regmap_config dspi_regmap_config[] = {
 		.wr_table	= &dspi_access_table,
 		.rd_table	= &dspi_access_table
 	},
+	[S32G_DSPI_REGMAP] = {
+		.reg_bits	= 32,
+		.val_bits	= 32,
+		.reg_stride	= 4,
+		.max_register	= 0x8C,
+		.volatile_table	= &dspi_volatile_table,
+		.wr_table	= &s32g_dspi_access_table,
+		.rd_table	= &s32g_dspi_access_table,
+	},
 	[DSPI_XSPI_REGMAP] = {
 		.reg_bits	= 32,
 		.val_bits	= 32,
@@ -294,6 +305,12 @@ static const struct fsl_dspi_devtype_data devtype_data[] = {
 		.max_clock_factor	= 1,
 		.fifo_size		= 5,
 		.regmap			= &dspi_regmap_config[S32G_DSPI_XSPI_REGMAP]
+	},
+	[S32G_TARGET] = {
+		.trans_mode		= DSPI_DMA_MODE,
+		.max_clock_factor	= 1,
+		.fifo_size		= 5,
+		.regmap			= &dspi_regmap_config[S32G_DSPI_REGMAP]
 	}
 };
 
@@ -350,6 +367,12 @@ struct fsl_dspi {
 	void (*dev_to_host)(struct fsl_dspi *dspi, u32 rxdata);
 };
 
+static bool is_s32g_dspi(struct fsl_dspi *data)
+{
+	return data->devtype_data == &devtype_data[S32G] ||
+	       data->devtype_data == &devtype_data[S32G_TARGET];
+}
+
 static void dspi_native_host_to_dev(struct fsl_dspi *dspi, u32 *txdata)
 {
 	switch (dspi->oper_word_size) {
@@ -1398,6 +1421,9 @@ static int dspi_probe(struct platform_device *pdev)
 		dspi->pushr_tx = 0;
 	}
 
+	if (spi_controller_is_target(ctlr) && is_s32g_dspi(dspi))
+		dspi->devtype_data = &devtype_data[S32G_TARGET];
+
 	if (dspi->devtype_data->trans_mode == DSPI_XSPI_MODE)
 		ctlr->bits_per_word_mask = SPI_BPW_RANGE_MASK(4, 32);
 	else

-- 
2.34.1


