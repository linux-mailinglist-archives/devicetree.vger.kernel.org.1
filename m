Return-Path: <devicetree+bounces-175532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0370EAB11AE
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:10:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5216F506569
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:09:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 780BC292090;
	Fri,  9 May 2025 11:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HEQ49tpH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972332918EA
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 11:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746788836; cv=none; b=Dy6jZ1UzZf7R+UU4RUvsheMvebRxeQDlUNOaI8nwwp0QYrbr8S2B651lz8YOca4cXiUg+KPx/92exInoXFa/5d2SWvdw3FbFSLSYpMLlQh1UqkVkpDpbvaZ09jf6XEGm/lZN9JYGdft/LO+K/X/h8J4nOPrS+hesv4PGJXPDAtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746788836; c=relaxed/simple;
	bh=/1WgmjiUPsgAyXKXEEwEXpR87Eos0KeMZvFNpmziqFU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WHJ5x5ur1hM58Vv7jzihhTykb6zJZd35Ho0mw51sQOvqrzBu0JYdv5cncLAQeHcY1EAuU2i5Cag9zzwPycQSObr9RzhffDUUms9QLWA+DCrF86H6jpS20SA79GllJzMm4p8uxW8x/bkqv9eiHBXQQoQtf/kNkxSPUUtde+lr7xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HEQ49tpH; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3a064a3e143so1098106f8f.3
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 04:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746788833; x=1747393633; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RMuvm3u0FO0tHSMEJjZ+2DIuKHjMVjXj0UsWrbU1Pz0=;
        b=HEQ49tpHF/8MWJJvzi7xzrZVF1gUvVVz/Nc1uMt7YwNgI6rZV4HvgzzdvJfm8QwpKc
         ISYkH/NazjU9KtE4ZSEnRSoGhzkKyceM09XjdHQFDopwbTWPIAeNDysqPw7zrX99ntrQ
         U4+r/aehnPNg6rXyPXtB4WjZbITPoOR3x8qFTDeK4ba0eLoszsSlkjwjgDyUFlJuskMf
         awRNwOmRgbQDaU/peWwEUD4WAy7Jo7us8MuIiV3iKGtTN84UzQaOyOH7kcPQTf+nGAWE
         pysvi3kZRHsgbhL2GxeAGM3uo0mtPVJVO6ltBEk3Av9JibJ7ODV28h9rNbCAnj7d4g3E
         aN8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746788833; x=1747393633;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RMuvm3u0FO0tHSMEJjZ+2DIuKHjMVjXj0UsWrbU1Pz0=;
        b=ON/BBJdRBN4et3RWmiYZkMNRVq08mtG5lAYu/zhnmCwpKqFj/seDB6HXqPD+952lHM
         /kHaQxLCfu01ruLEg9cZaS++WzdPPNZWtUeoFOuH6vAYHpQzNOjj6/cLbsuZwtQDiaov
         7en0OxQMY6kCSLft/MsgvjnhTUMAHCKNLrPAHwbiLoo5f+Se0aU9Zw7VXPb4xvugjJVJ
         gtQBwkp2ydH64wIFeeHecKLzB4K7OlYnWLClmoOv2qHQjlf++8WF63+FhhkHMwZArkPM
         zGViyAf/w57hmB4xvFVyh7GjHAFuOfD6mfr1rlA+YVPLd2cIpMPTk8UsTVtygF0U77hy
         wj4g==
X-Forwarded-Encrypted: i=1; AJvYcCW5hYPPHLC38G0CTRI/AdVbdYqZdaQiEeLr6paX0znW8aCI7HZLPaUeFQe1TmxmDhGrkaOvE0sp0LXj@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh+1LphYMpDXDPNVBV3jFLJAWOZ3sgNJmCWhytk9r8qQmKgkF8
	yS4G8BmBKJcbMf13nPuko/V1mcOGArJ8H/YscAEPjGopYVXwBlElILwK1ql7EUY=
X-Gm-Gg: ASbGncswppsUzgDz6DtGqzFGzTiZO1XiG6inqbfKXbpnmUtOXcxGpiK16S2LBPJrBWL
	AUCpI5D+LDhzo9xyGyqTUhlgHTB5+m6V0UygvWd88ZRbNOLl1nZmATAPz7FI/gILJ88a/dsk6uM
	BfNkDbbTqWZQET6PRHozxxIpU/Yr03jEHg/eUala56i3J3niSFfytEn17z4ooy3q46/QysqiAFC
	0ML1xI6Jm4kAEgKiofNNeI+9hMggX+boLWtR+9U9WPjkbAJH4lOkJ1eMrY8dJqxeaLEkYi/iZoM
	NeeggW1SUwQ9u/h488yebmXskDShsW6BxEB3/O2oEJZqUW8A8AFrvK5L2A==
X-Google-Smtp-Source: AGHT+IEI/21cAkCpKqtXo/RJBX5fMArAhVFuko7+5QHt2vTuixWOjpsB6oyJPSHitDVLWZA2KHt5xA==
X-Received: by 2002:a5d:64ce:0:b0:3a0:b8b0:441a with SMTP id ffacd0b85a97d-3a1f643ba6bmr2415644f8f.25.1746788832870;
        Fri, 09 May 2025 04:07:12 -0700 (PDT)
Received: from ho-tower-lan.lan ([77.81.75.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ecadfsm2914797f8f.22.2025.05.09.04.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 04:07:12 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Fri, 09 May 2025 12:06:00 +0100
Subject: [PATCH 13/14] spi: spi-fsl-dspi: Enable support for S32G platforms
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250509-james-nxp-spi-v1-13-32bfcd2fea11@linaro.org>
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
index db921ee6305f..0982f27a9b2a 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -1311,6 +1311,9 @@ static const struct of_device_id fsl_dspi_dt_ids[] = {
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


