Return-Path: <devicetree+bounces-175522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0DAAB118B
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:07:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF2739E5478
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:07:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D02E828FFCB;
	Fri,  9 May 2025 11:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AmS/r9Y5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72AF828F95E
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 11:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746788822; cv=none; b=WtZenNDad7dfaQ0EcdjTIVYfxIuHHpHpurXdtIGyUgySP6MbjINPBrKjInCJcpzORN27mfHUKm7kTBbSRud6P758ms2SLRrAwBMubu0dMeW6tWl6xY7eIMeRprdVHsA9b9RfVIPVitr7BFlWg2A1BxavbvfPMXFz8Oa0dMmCBP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746788822; c=relaxed/simple;
	bh=eEjcZlIDJmLV5/jyvCAjQjBuHpvBbYFjopscg3ocaAU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hHKC6tlbV33M14dSnNzzLFBx7JTaa2g9xnoV/oTsf+Tz0aqgmg9BUzGO1fZ3QEUn6+SI50sLsHXns7JFBifvnqvIyd71tkM5A9sh+rUHHdDIghXLdMmg/CybE27/PTM2qOhu9IAu5ouY9N2y1vC4+q7LfbqzG2J9Jf9PwdrXGOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AmS/r9Y5; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a1fa0d8884so281047f8f.3
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 04:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746788819; x=1747393619; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XZ/3VdJhYRpNseu5U9lSFH9HxUE77S8ESF2tbbWAri0=;
        b=AmS/r9Y5uW7x4VbumhhDXBgwmqEk9OiGrr5gsv9+yhNaM6GKvS4L2f7pz2A9vyNVfd
         +Jo7dwcmAyU4jQ3l/iTN3w54QIjQ1Y0hRljRrE+rIOkheHYooYuwoTCf6PndC5yJRmfm
         JXAgvfw9w/GWPesyiiqVT6jg8MihR8PTXYTvw9n+V9oEoVEZdjRhr5rT+6No43r9YUy2
         0qC2yAl+xwxjfHB+fuJGDLf9A6Pu8bTLqsAeIM1KA9ubHIrjmOLwuilJDQb01N0P4lJs
         Zm246RiTTi8YaDAzD2NorjuS11zvYnwmdUGhKeXIL3wAWYrhcGqooupHDg6BJO7rJqPS
         9ESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746788819; x=1747393619;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XZ/3VdJhYRpNseu5U9lSFH9HxUE77S8ESF2tbbWAri0=;
        b=o9Evnxv38HzSZgjdj7HRABNfgK8KmehCofVkG6lxI63esA869lZMkWS6/xVxNpQNOo
         qLf3SCLN/HV8RMMbeKKnqkjdunSBac95rUdAGnF+zCPzbIVi+WM982YcNgOjCXD2Z4kI
         3cvu+yNDpMgudx4ocLg4q6qynmTel70E1kQSUHrthfEtXASgq4928cWIrXrVpWkNHA/Z
         EHbvyhFd/Gyv0It3/GAXYud1SYcKR3NIlEAm9+lCd8ngAAtQpLItQFp6gI2lOgUarSvf
         PP7st0VJskdcY8Tut4nzZVvo1uPaLiXTEGkluKMpcnohiRuseH/uF1EzosYR2PMSMPMz
         osTA==
X-Forwarded-Encrypted: i=1; AJvYcCVXUQtFXADyVysOqOvrTSOcu8zfyOlDllo1s0+z5dov/zvwviNnC3dsyjfDnXgK46tKf0kwH8sv4K9K@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj8xTMy41o4CtP7pzq2yt+/64Vc3BU+xR9CWjOdbJXycK+oZ2S
	pWH7B7C7Hoi4K/hJ60ap9+or1VvzFZf6XCB49fI8LBbiIvAQRGYlVWLU45Z5Ro4=
X-Gm-Gg: ASbGncuSoM5CV9c68NIsvsAwIRDybqoxU8HE6Akhoy7iPyhsXbnsySBYkARK0OG/qGh
	MIjzmuamQrumESdKyjfehRfG+icpf3Qamgx+h9grGt9+0cmdpQwUQnuPQrQ3xESi9FfVgbHODcc
	qIT7wHNsAbd3enDNLP+jBR4lZG6zaqF/T2A3jhzszi8j/hqhqiuX052zLAIvB+icUb1NvYj1gzo
	f6dvtM+qg0S83JPYujZ3Ebq4YXafG/PrWgg90qwdcjkSQVCJGvEphHVQMFQM9YMWSU3U+SEYwpw
	Dm0f/cDZS97yK2tjwKaOzY1COcxfIGq4X5xfqIt7hzgwwKE=
X-Google-Smtp-Source: AGHT+IFbRxA53PsQ6WEpfLOqgfTczthdryRGHNyvPGYt33prnCWmvz5n1DMnzXDap0L0ElCdAiEfKQ==
X-Received: by 2002:a05:6000:2905:b0:3a0:b9a8:b94c with SMTP id ffacd0b85a97d-3a1f64b5c83mr2393167f8f.50.1746788818691;
        Fri, 09 May 2025 04:06:58 -0700 (PDT)
Received: from ho-tower-lan.lan ([77.81.75.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ecadfsm2914797f8f.22.2025.05.09.04.06.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 04:06:58 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Fri, 09 May 2025 12:05:50 +0100
Subject: [PATCH 03/14] spi: spi-fsl-dspi: restrict register range for
 regmap access
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250509-james-nxp-spi-v1-3-32bfcd2fea11@linaro.org>
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
 linux-arm-kernel@lists.infradead.org, Xulin Sun <xulin.sun@windriver.com>, 
 James Clark <james.clark@linaro.org>
X-Mailer: b4 0.14.0

From: Larisa Grigore <larisa.grigore@nxp.com>

DSPI registers are NOT continuous, some registers are reserved and
accessing them from userspace will trigger external abort, add regmap
register access table to avoid below abort:

Internal error: synchronous external abort: 96000210 1 PREEMPT SMP
Modules linked in: fuse dummy tun hse sch_fq_codel openvswitch nsh
nf_conncount nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4
CPU: 2 PID: 18231 Comm: read_all Not tainted 5.2.33-yocto-standard #1
Hardware name: Freescale S32G275 (DT)
pstate: 20000085 (nzCv daIf -PAN -UAO)
pc : regmap_mmio_read32le+0x24/0x48
lr : regmap_mmio_read+0x48/0x70
sp : ffffff801123bb70
x29: ffffff801123bb70 x28: ffffffc873b5c000
x27: ffffff8010b408f0 x26: 0000000000000001
x25: 000000000000013c x24: ffffff801123be40
x23: 00000000000003ff x22: ffffff801123bcfc
x21: ffffff801123bcfc x20: ffffffc873a9e500
x19: 0000000000000024 x18: 0000000000000020
x17: 0000000000000000 x16: 0000000000000000
x15: ffffffc876189160 x14: 0000000000000003
x13: ffffffc873bf73ff x12: ffffffc873bf707e
x11: 0000000000000000 x10: 0000000000000000
x9 : 0000000000000000 x8 : ffffffc83fca4e00
x7 : 000000000000000f x6 : ffffffc873bf7083
x5 : 00000000fffffff9 x4 : 0000000000000002
x3 : ffffff801061f058 x2 : ffffff801061ee18
x1 : 0000000000000024 x0 : ffffff8011490024
Call trace:
regmap_mmio_read32le+0x24/0x48
regmap_mmio_read+0x48/0x70
_regmap_bus_reg_read+0x38/0x48
_regmap_read+0x68/0x1b0
regmap_read+0x50/0x78
regmap_read_debugfs+0x120/0x338
regmap_map_read_file+0x44/0x58
full_proxy_read+0x68/0x98
__vfs_read+0x48/0x90
vfs_read+0xb0/0x130
ksys_read+0x7c/0x108
__arm64_sys_read+0x24/0x30
el0_svc_common.constprop.0+0x74/0x168
el0_svc_handler+0x70/0x90
el0_svc+0x8/0xc

Co-developed-by: Xulin Sun <xulin.sun@windriver.com>
Signed-off-by: Xulin Sun <xulin.sun@windriver.com>
Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-dspi.c | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index cb0e55a49eea..701cf56d28e7 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0+
 //
 // Copyright 2013 Freescale Semiconductor, Inc.
-// Copyright 2020 NXP
+// Copyright 2020-2025 NXP
 //
 // Freescale DSPI driver
 // This file contains a driver for the Freescale DSPI
@@ -137,6 +137,20 @@ enum {
 	VF610,
 };
 
+static const struct regmap_range dspi_yes_ranges[] = {
+	regmap_reg_range(SPI_MCR, SPI_MCR),
+	regmap_reg_range(SPI_TCR, SPI_CTAR(3)),
+	regmap_reg_range(SPI_SR, SPI_TXFR3),
+	regmap_reg_range(SPI_RXFR0, SPI_RXFR3),
+	regmap_reg_range(SPI_CTARE(0), SPI_CTARE(3)),
+	regmap_reg_range(SPI_SREX, SPI_SREX),
+};
+
+static const struct regmap_access_table dspi_access_table = {
+	.yes_ranges	= dspi_yes_ranges,
+	.n_yes_ranges	= ARRAY_SIZE(dspi_yes_ranges),
+};
+
 static const struct regmap_range dspi_volatile_ranges[] = {
 	regmap_reg_range(SPI_MCR, SPI_TCR),
 	regmap_reg_range(SPI_SR, SPI_SR),
@@ -161,14 +175,18 @@ static const struct regmap_config dspi_regmap_config[] = {
 		.val_bits	= 32,
 		.reg_stride	= 4,
 		.max_register	= 0x88,
-		.volatile_table	= &dspi_volatile_table
+		.volatile_table	= &dspi_volatile_table,
+		.wr_table	= &dspi_access_table,
+		.rd_table	= &dspi_access_table
 	},
 	[DSPI_XSPI_REGMAP] = {
 		.reg_bits	= 32,
 		.val_bits	= 32,
 		.reg_stride	= 4,
 		.max_register	= 0x13c,
-		.volatile_table	= &dspi_volatile_table
+		.volatile_table	= &dspi_volatile_table,
+		.wr_table	= &dspi_access_table,
+		.rd_table	= &dspi_access_table
 	},
 	[DSPI_PUSHR] = {
 		.name		= "pushr",

-- 
2.34.1


