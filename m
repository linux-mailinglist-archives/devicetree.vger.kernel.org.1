Return-Path: <devicetree+bounces-179620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F4CAC0EF1
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 16:55:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CE8C502405
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:55:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AC3528ECEB;
	Thu, 22 May 2025 14:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rLZjU4GZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2054628ECC4
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 14:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747925581; cv=none; b=MrxdkLh+Iye7mU9pULuW/M+phcAJsOwHC6sVlcXthmyRLOIe8UZKkZfSopeNdqR/7obAY/3y6/3MQM67gdqmqOPVHiD6ZCfwuRbR7wQV0ZJfuZBOOR3PV2LaeTkI6aO9Y8OaVkWIZFlZVYgQLc/QnRFg16lBC5DvvG697HZmJVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747925581; c=relaxed/simple;
	bh=/P+b4YGOi1nleKTVzzh5Y6DcchLQUsvvU1yJkq6qFw0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XKF5trxPX8F1io4MjzgPzPoQQB4pbxVulQOF7g3XIbyBcPBl0VRvCFVqNp+6R8MBcBEmYYLc9aezf+2yw+0JainETI4QrkZJjUFqhjqLwj+6dxSIahkwW8Rgfqg0rqVMrd2EwSHLDn8Jb5AlNkiCseCpCDX/9/eqc+YPHOiOmdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rLZjU4GZ; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-443a787bd14so43250695e9.1
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 07:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747925577; x=1748530377; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nr/NDCyDgVLU7UV6iODdNqGZbsP83lb1uZk463tdmVs=;
        b=rLZjU4GZ7nB4HU0i5Y8o5jR6EEzjytqtGQXH0son65msLophoPKw3GFZnefaXUPqru
         7fJ2QJZBv0CfXJsiK40Zz5UUHc05qlEbFuD45LKRx9mNEemKWNTmRcqOvkPJ3mtuJFja
         l5rWVeiZerX6Ad4Yvlsd510lx1X+QCOtsdapdYTfxVLL99/gJbbKBmdTy8R8T//GhHMO
         mMeZJ1n/qTaW/KrcEuOyNw1mo41tQ0I45epokojUjGk+bHmCL+FCpHFOMWauUkj+dZML
         Ydkz3CAPuUsOWmmCdEnbfE5qmVf7E851FnSXQxrA95Vxgy5m24F4Z0dRYfaHZ6snAN3x
         w4qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747925577; x=1748530377;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nr/NDCyDgVLU7UV6iODdNqGZbsP83lb1uZk463tdmVs=;
        b=OP6PnTY2UCTiik+oIqdh/qKvdz8lmJnmPSC3a6bhQDSeW/GapXCaw6OMzpu6a1xnfP
         9u/924ZN1tuhr7ITea+2QeWUmszoRl+F/cKulZ3s+tiG0gQJTYL7mzFrVBkmKvaxbJMZ
         uXM3Wudwz1IE0OhGB0CCiFjY9keZpkCKK4GIEIdFSOTLIocYXPfUwrACEKeJSDWSSIjs
         4c7CIxdp93fHIMmxMjkvbsyw1WAGUP4dRCAulCYULxiV+PqqSWUr9kjX0IlJ1eplhdaU
         UHLK0cPE3FodiwAFQOr09Au3tgHUfC5WQWD7tqSOgDlrqr2JOZcwzEjB5O7j+GoQxC+q
         fuYg==
X-Forwarded-Encrypted: i=1; AJvYcCXwDQDb3lP742mWhvoX+2QCmh4uKteKjAMJIXkRbslER29nPatJtqj4/DqtMflAYYfTyw80oVB1VcGC@vger.kernel.org
X-Gm-Message-State: AOJu0YxdlD8CHRYHD0+Jx14kS3NwySnkpFd9ZipBp8tn9Skd7pW24yhj
	gILUezRT2jq/Zcdr+80mVJ/07oQOKE84Udx+wypZsP16pbDsIaxt7+RZ6Go/4Mdm2Bk=
X-Gm-Gg: ASbGncscyNs1E6///gALvZ6aJxaVDQLLEKNdEqivVjDe7YwoFvXdws2MoREi9Z4Ul1v
	wGzDywDdywrMpN5Jkq3AiimQ+f6/7x3jEnTR3dq2dbNZyWkT7daYG1q0ZjWHBUiMjPXcL/nIooh
	6W5y/SRtgjQT5ec/SNHHQ+PcFT9tfSbvFl8YrWnzeXmcQ4vHhf6DgTBg8ZvrcV1RdUpZBfBB0yM
	9y8K1/hIL15b9bXX9kzRhkPxcetzxvut8cDLO4JNoHdjV54pxNAji2M5LmL/HZy67Gv7A6FGJ8P
	Q5o3+BRI9qx8Bhb+4yntxx5pZlyfhJNRVk/HcQZCe54Pa/puOz/WKTfetxyA/uVUSkIjPVo=
X-Google-Smtp-Source: AGHT+IG/V3Opgz2PDL+bVOZGX8atJ6mbWrBQT/ugzNjANyQS6gfJjv43GgKxrWWCOwUGCfdzPvI8vg==
X-Received: by 2002:a5d:5f8a:0:b0:3a3:6b16:3bb3 with SMTP id ffacd0b85a97d-3a36b163d10mr15401385f8f.3.1747925577440;
        Thu, 22 May 2025 07:52:57 -0700 (PDT)
Received: from ho-tower-lan.lan ([37.18.136.128])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f78aeb56sm104965555e9.27.2025.05.22.07.52.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 07:52:56 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 22 May 2025 15:51:40 +0100
Subject: [PATCH v2 11/14] spi: spi-fsl-dspi: Enable modified transfer
 protocol on S32G
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-james-nxp-spi-v2-11-bea884630cfb@linaro.org>
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
 Andra-Teodora Ilie <andra.ilie@nxp.com>, 
 Bogdan-Gabriel Roman <bogdan-gabriel.roman@nxp.com>, 
 Larisa Grigore <larisa.grigore@nxp.com>, 
 James Clark <james.clark@linaro.org>
X-Mailer: b4 0.14.0

From: Andra-Teodora Ilie <andra.ilie@nxp.com>

S32G supports modified transfer protocol where both host and target
devices sample later in the SCK period than in Classic SPI mode to allow
the logic to tolerate more delays in device pads and board traces. Set
MTFE bit in MCR register for frequencies higher than 25MHz.

Signed-off-by: Andra-Teodora Ilie <andra.ilie@nxp.com>
Signed-off-by: Bogdan-Gabriel Roman <bogdan-gabriel.roman@nxp.com>
Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-dspi.c | 45 ++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 42 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index a3efe1bd3b37..01af641fa757 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -24,6 +24,7 @@
 
 #define SPI_MCR				0x00
 #define SPI_MCR_HOST			BIT(31)
+#define SPI_MCR_MTFE			BIT(26)
 #define SPI_MCR_PCSIS(x)		((x) << 16)
 #define SPI_MCR_CLR_TXF			BIT(11)
 #define SPI_MCR_CLR_RXF			BIT(10)
@@ -37,6 +38,7 @@
 
 #define SPI_CTAR(x)			(0x0c + (((x) & GENMASK(2, 0)) * 4))
 #define SPI_CTAR_FMSZ(x)		(((x) << 27) & GENMASK(30, 27))
+#define SPI_CTAR_DBR			BIT(31)
 #define SPI_CTAR_CPOL			BIT(26)
 #define SPI_CTAR_CPHA			BIT(25)
 #define SPI_CTAR_LSBFE			BIT(24)
@@ -111,6 +113,8 @@
 
 #define DMA_COMPLETION_TIMEOUT		msecs_to_jiffies(3000)
 
+#define SPI_25MHZ			25000000
+
 struct chip_data {
 	u32			ctar_val;
 };
@@ -346,6 +350,7 @@ struct fsl_dspi {
 	const void				*tx;
 	void					*rx;
 	u16					tx_cmd;
+	bool					mtf_enabled;
 	const struct fsl_dspi_devtype_data	*devtype_data;
 
 	struct completion			xfer_done;
@@ -722,7 +727,7 @@ static void dspi_release_dma(struct fsl_dspi *dspi)
 }
 
 static void hz_to_spi_baud(char *pbr, char *br, int speed_hz,
-			   unsigned long clkrate)
+			   unsigned long clkrate, bool mtf_enabled)
 {
 	/* Valid baud rate pre-scaler values */
 	int pbr_tbl[4] = {2, 3, 5, 7};
@@ -739,7 +744,13 @@ static void hz_to_spi_baud(char *pbr, char *br, int speed_hz,
 
 	for (i = 0; i < ARRAY_SIZE(brs); i++)
 		for (j = 0; j < ARRAY_SIZE(pbr_tbl); j++) {
-			scale = brs[i] * pbr_tbl[j];
+			if (mtf_enabled) {
+				/* In MTF mode DBR=1 so frequency is doubled */
+				scale = (brs[i] * pbr_tbl[j]) / 2;
+			} else {
+				scale = brs[i] * pbr_tbl[j];
+			}
+
 			if (scale >= scale_needed) {
 				if (scale < minscale) {
 					minscale = scale;
@@ -1146,6 +1157,20 @@ static int dspi_transfer_one_message(struct spi_controller *ctlr,
 	return status;
 }
 
+static int dspi_set_mtf(struct fsl_dspi *dspi)
+{
+	if (spi_controller_is_target(dspi->ctlr))
+		return 0;
+
+	if (dspi->mtf_enabled)
+		regmap_update_bits(dspi->regmap, SPI_MCR, SPI_MCR_MTFE,
+				   SPI_MCR_MTFE);
+	else
+		regmap_update_bits(dspi->regmap, SPI_MCR, SPI_MCR_MTFE, 0);
+
+	return 0;
+}
+
 static int dspi_setup(struct spi_device *spi)
 {
 	struct fsl_dspi *dspi = spi_controller_get_devdata(spi->controller);
@@ -1204,7 +1229,16 @@ static int dspi_setup(struct spi_device *spi)
 		cs_sck_delay, sck_cs_delay);
 
 	clkrate = clk_get_rate(dspi->clk);
-	hz_to_spi_baud(&pbr, &br, spi->max_speed_hz, clkrate);
+
+	if (is_s32g_dspi(dspi) && spi->max_speed_hz > SPI_25MHZ)
+		dspi->mtf_enabled = true;
+	else
+		dspi->mtf_enabled = false;
+
+	dspi_set_mtf(dspi);
+
+	hz_to_spi_baud(&pbr, &br, spi->max_speed_hz, clkrate,
+		       dspi->mtf_enabled);
 
 	/* Set PCS to SCK delay scale values */
 	ns_delay_scale(&pcssck, &cssck, cs_sck_delay, clkrate);
@@ -1226,6 +1260,9 @@ static int dspi_setup(struct spi_device *spi)
 				  SPI_CTAR_PBR(pbr) |
 				  SPI_CTAR_BR(br);
 
+		if (dspi->mtf_enabled)
+			chip->ctar_val |= SPI_CTAR_DBR;
+
 		if (spi->mode & SPI_LSB_FIRST)
 			chip->ctar_val |= SPI_CTAR_LSBFE;
 	}
@@ -1352,6 +1389,8 @@ static int dspi_resume(struct device *dev)
 		return ret;
 	}
 
+	dspi_set_mtf(dspi);
+
 	if (dspi->irq)
 		enable_irq(dspi->irq);
 

-- 
2.34.1


