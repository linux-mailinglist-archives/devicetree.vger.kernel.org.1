Return-Path: <devicetree+bounces-179618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0C5AC0EED
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 16:55:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77F1D7B16BA
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFB3D28EA7B;
	Thu, 22 May 2025 14:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Sj7pAaf6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944B428E5FD
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 14:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747925578; cv=none; b=rRUy8NG9OyOcZ21kpXGCruy1X5cR11BfiRn80RaIkpIAfP6Mo+KRi+V0wn/gbJgasPOpkt+vt9NZbtO3VP2A3hfuopOpCj9/5DZx15HQBGqSVGG4scbvz/RlG1DmlUlkHX4atokg02Ni7m3vBiOxYKZphxysAKDWZ2kYBiMtlgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747925578; c=relaxed/simple;
	bh=elThI93HwB4PxLZjW2S1nGNED80rFcrhaDTiQgygkCE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CKTlYswcLDANRpRRfKA3Cpg2WxvugDlNAvJjnhLeqPDs/vVmwvCfauzDYx4gk4uGapxYx5tDvtSemXLHoSScCAoH2iEcs8n0ahyvmYAQeUAH5E+UPEyhaQi70IK7Ti6aQ3fYxT9yXTjT8N9DjPmTYXWPGvC/3vzxKvYNnTKyK5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Sj7pAaf6; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-443a787bd14so43249965e9.1
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 07:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747925574; x=1748530374; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GQcMbg+mj75exB6fMqaj4+6mofUOuhQ1ONizqDxy1LQ=;
        b=Sj7pAaf6CjWXFhuohXHo/iest4HI0rE3o6T+j5or0vQhuf1CWfHunZEBcrhJC4zRYu
         PmZK5EIjK6Ey1+G5V6OepQ2KichrrD+MUtKKrV6HPQ1UNBXq702OgiHMhetQYWAs6wC2
         5ao5z+lsyykvyVq9DgcegaUwEpe37pR/ZA8x7No9VODQZlgIGbhdk//HRleapUk28x3/
         qhaXFOW8kYyc2hX/Su5ZwWV4CtJRuFiS5Sm8IxfIPe1mpn4F5bIWF+zmaBsAFdHUSS4y
         GEDV/pJag4bvsnOLLY/mqGOnU+UijJbjSPUwdZrweMeSiosKy7BcTTMpAimvAmfl84Nh
         D/Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747925574; x=1748530374;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GQcMbg+mj75exB6fMqaj4+6mofUOuhQ1ONizqDxy1LQ=;
        b=ID4RtgghgxsUavNiZ+KT20M0V7Q5iRneRWI0/hcXOGIU3kjIqMSW/75YWIUycKaHea
         p6Un/IRz158xHM2GnATGkLLTYoWSMglrcwI/huRsMIcA4kVm+Srr98rN1tB1LQEOxEN6
         Zovarin8oMNMF19lhKjrivbS29qwhcRHG7e0lCeAZwrHFg/gxR63s0F5yOVB7IIxccVU
         Da1LotQYcJOcpetAH6NLBu2qpMfGeIOPzFx/Bl4bZh/IfJUmkadLW4d4PRTk+9GzQFJp
         6R1j3vPh21oDAjsNBsJCkdeyh7frlnltgPqMsBz85410QIy38dFrNhHHp+P26nEV3hJM
         yRgg==
X-Forwarded-Encrypted: i=1; AJvYcCVWvjWea9oTbO6d7zDxZQe92+SmihmcuXsUPTWIYjoXNJSSf2Mj2BbO/9icMHPLIftEMiAisxgmGsTw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6DvrbMQA/8WpwWE9QaKt9B19QxHsiYqNJ1QDCWmCPrGiNCEve
	C3UDqkRd/3zcpFfctLDcOXHlxR7i6La3E4ViuYMEVhDrYOZlerly5ZV9pA3Kdcopqww=
X-Gm-Gg: ASbGnct9RHrX8+MdOS9NNYRFe2pg3+QmYc5Ex1NICU6S0X4f+YvfVcdVlVO6uHiOIm5
	QupqWc1s0MNqPdgQpSATlHAl5YPvuMzN9abp7cKCigR3hy4TxckSfgLSI0inoxlyAAovOD4TpQZ
	MwLOYtFr96vsdrrea1WpcK5h1CG/nD94C99ibQqiC/5vklALkJhHCFANe50wqC+trwQLmjZmAq4
	VVM2WVST7DWYC5r69ll0BNxk1kAI6nm20/p8CM+EzgzqqEg6Ig/nNXwqhXT+eSiMZu01zRQifta
	XUrCfBZhCxgZMnJTduyBWU9QkTwAL540f8OaVB2BKqJkAsRSrk7QcqO2DXPG638uPR2A6JM=
X-Google-Smtp-Source: AGHT+IFcpjDviXjWNB7+EBIbhpiq2tpPR7sQlo7rFyrWtoBHLAjxGUQNW2PIVbs7fj19J7u5oXlJ7g==
X-Received: by 2002:a05:600c:a40a:b0:43b:c592:7e16 with SMTP id 5b1f17b1804b1-442f84c2092mr260241495e9.3.1747925573711;
        Thu, 22 May 2025 07:52:53 -0700 (PDT)
Received: from ho-tower-lan.lan ([37.18.136.128])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f78aeb56sm104965555e9.27.2025.05.22.07.52.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 07:52:53 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 22 May 2025 15:51:38 +0100
Subject: [PATCH v2 09/14] spi: spi-fsl-dspi: Use DMA for S32G controller in
 target mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-james-nxp-spi-v2-9-bea884630cfb@linaro.org>
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
 drivers/spi/spi-fsl-dspi.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index 24a51267cb4d..db5a2ed66f68 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -139,6 +139,7 @@ enum {
 	MCF5441X,
 	VF610,
 	S32G,
+	S32G_TARGET,
 };
 
 static const struct regmap_range dspi_yes_ranges[] = {
@@ -183,6 +184,7 @@ static const struct regmap_access_table dspi_volatile_table = {
 
 enum {
 	DSPI_REGMAP,
+	S32G_DSPI_REGMAP,
 	DSPI_XSPI_REGMAP,
 	S32G_DSPI_XSPI_REGMAP,
 	DSPI_PUSHR,
@@ -198,6 +200,15 @@ static const struct regmap_config dspi_regmap_config[] = {
 		.rd_table	= &dspi_access_table,
 		.wr_table	= &dspi_access_table,
 	},
+	[S32G_DSPI_REGMAP] = {
+		.reg_bits	= 32,
+		.val_bits	= 32,
+		.reg_stride	= 4,
+		.max_register	= SPI_RXFR4,
+		.volatile_table	= &dspi_volatile_table,
+		.wr_table	= &s32g_dspi_access_table,
+		.rd_table	= &s32g_dspi_access_table,
+	},
 	[DSPI_XSPI_REGMAP] = {
 		.reg_bits	= 32,
 		.val_bits	= 32,
@@ -296,6 +307,12 @@ static const struct fsl_dspi_devtype_data devtype_data[] = {
 		.fifo_size	  = 5,
 		.regmap		  = &dspi_regmap_config[S32G_DSPI_XSPI_REGMAP],
 	},
+	[S32G_TARGET] = {
+		.trans_mode	  = DSPI_DMA_MODE,
+		.max_clock_factor = 1,
+		.fifo_size	  = 5,
+		.regmap		  = &dspi_regmap_config[S32G_DSPI_REGMAP],
+	},
 };
 
 struct fsl_dspi_dma {
@@ -351,6 +368,12 @@ struct fsl_dspi {
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
@@ -1426,6 +1449,9 @@ static int dspi_probe(struct platform_device *pdev)
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


