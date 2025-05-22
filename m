Return-Path: <devicetree+bounces-179609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CC8AC0ECB
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 16:52:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C30ED176AA6
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:52:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70A0928CF74;
	Thu, 22 May 2025 14:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i5AH8kMw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8022028C025
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 14:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747925562; cv=none; b=cu0cxgEWfSXtXjPHeJCRoZRv8CrESBzZnCQ1JzH7q64fpjHz6oCEINSO990M41QwJkJA89g2OfgZ5TwJX1DWuVPW2Ve7uT8uMmZThPaAmhbLFn+uF1s2KWz7fE3r6EEVodMEZfpsu+ynBRZ7HTFHW1izUaq325cPIN6G1SE1BOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747925562; c=relaxed/simple;
	bh=tdIGdyYQ20MkL5rp4ZKUkrznRFJ9rMy7wxoT6sn8RP4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=XCVQcoBmM5CePTb3ehXuyL12+mKRzDNd/JL+LJaLfKq+GVjMEb+CRQOv8rVW5FX06BIGe81lVERuto6IS0ciaIiy935zO2ZJbra0D4+lUvdXmiET4vyIRJcIZF2z+DaSyM3wbXVoiakKCTNiQheVcZfkAn6cDN0Z5HQkLsSX9SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i5AH8kMw; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-442f9043f56so47676585e9.0
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 07:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747925559; x=1748530359; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VEeX4pHU5dbnP7BXmwT5H8fSOKMWm7ham8iEEngBq2c=;
        b=i5AH8kMwkl9dlsOMchu+w6bP/rKe9y9aujCYrvb+YSBCBA/39dE/JYJx2t9jo+nC+8
         E0bzyABESMThdygMzuagKiBUJ29vHewmuNe0YoMo1WkAte03WQD7HzqE2bgxK+KoQ+wB
         vpI+d3ACNhipJw2expDepLaL5McDf/vUMeDLpZAiXUmhzl5dr4GzbT2XKROGO/u3lc8Z
         ZhYbFQpVlNuFwHLtkTkUTlo+v2Vk68EulLh5eYIL1mAhxEqt+yI1i+wHFj0GsOUJdeeN
         FCMutJXGkMfaMY05d4xuLjx6qI81OERi6G1vf3IK8MHZdOCIvDa1DvcpL3p3YrxK+ZWJ
         JsUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747925559; x=1748530359;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VEeX4pHU5dbnP7BXmwT5H8fSOKMWm7ham8iEEngBq2c=;
        b=XdbaKANu7yGoBbttvPWkPgus2OHiE2bS7FJvBbL2/gM8y7b6vba1aQ4sTfHeRHvtx0
         Y1GkRNgVzG5yZBJ3dOTvQtmtZGQ+t/XPHhsJpqGsgkAZa+lpH3TtPm3OMO4M8ZfA1eMY
         a90U2hf2wMFXIQTSGzD3KpRtEyKc7vV1M5xFOzgKVDLouRHV4PrUjB2Q3xEeMSeWDyyx
         J/+fhPjaYFnzSEg3JRIyW7e5+uIOJl29IEdF9SWtAmc4yy/eTLEyYU6VLUvYuukaeeO7
         AhKCS6PHGNW/Qb/c/Ud0eF+GHi/Omk0yJqhP7mzUNxdFy9fcUHavVdcRivAyWqhRVvbd
         O6gQ==
X-Forwarded-Encrypted: i=1; AJvYcCUo0oQeHI/HAm9sOhtiQgVpMK8bkA2fqDbOm50jpouQZ97vZTG2UYKAzKuhx8Rnof47JzL42KEM4K6y@vger.kernel.org
X-Gm-Message-State: AOJu0Yztvw6+/1dS4GQqZEt+Vvkoi+GRsEF+fABjtA9JOzs52fZdjOxl
	7XqyPgGTMFjEbKRyF6ZzJsiyilQykPs4LpEJuZEPiqGnfzPhXeh1itTDAP+4NuSs4AA=
X-Gm-Gg: ASbGncvaMyPS2rJlxOZvFvjIQ3Gd+s+0ixWLJ54bv/ay5XsudCXbQskIE/1BvBDGMvG
	CSqoMB6NsmkchLBcPkAPHDYd5MQNfwu4g0KBJY74X9IcxzCBegwCR2ldUzvERj9umdlekzdywIx
	hua3Bcr8tmI0lliF6fY5jFInzKeaxF8nW9bils9JvIzDG146Ozkl2whiKf5gh2SYXTCeFQSWu6I
	POIj/gWZTrAuUCx53up1JgVQbdEEgIxxpWmFmMgFIA0CbQe+4mBWTzKChNE/AoKyY9UHpOJK+dc
	oTJr7WlHbRgsbNLqc/V3SXw+yahfyOR9ge9D5slES8pGRgRDVaoIa6tgw3Id
X-Google-Smtp-Source: AGHT+IGuO6Y6d+kCxwoNrEY38IpkexCj4wL5pVJUa3/XxA+mRVZ8kHkKd9XIST6kB9JCbxHGl+gsxw==
X-Received: by 2002:a05:600c:3114:b0:440:61eb:2ce5 with SMTP id 5b1f17b1804b1-442fd64e335mr299932885e9.17.1747925558639;
        Thu, 22 May 2025 07:52:38 -0700 (PDT)
Received: from ho-tower-lan.lan ([37.18.136.128])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f78aeb56sm104965555e9.27.2025.05.22.07.52.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 07:52:38 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Subject: [PATCH v2 00/14] spi: spi-fsl-dspi: DSPI support for NXP S32G
 platforms
Date: Thu, 22 May 2025 15:51:29 +0100
Message-Id: <20250522-james-nxp-spi-v2-0-bea884630cfb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPE5L2gC/13MQQ6CMBCF4auQWTumnaYLXHkPw6LCFMZo27SEY
 Ah3t+LO5f+S921QOAsXuDQbZF6kSAw16NRAP7kwMspQG0iRVYYsPtyLC4Y1YUmCvfOaSbUtGQ3
 1kzJ7WQ/v1tWepMwxvw9+0d/1J1nV/kmLRoWG7r4fyLPT+vqU4HI8xzxCt+/7B7lZF6qrAAAA
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
 Xulin Sun <xulin.sun@windriver.com>, James Clark <james.clark@linaro.org>, 
 Bogdan-Gabriel Roman <bogdan-gabriel.roman@nxp.com>, 
 Marius Trifu <marius.trifu@nxp.com>, 
 Ciprian Marian Costea <ciprianmarian.costea@nxp.com>, 
 Andra-Teodora Ilie <andra.ilie@nxp.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>, Dan Nica <dan.nica@nxp.com>, 
 Larisa Grigore <Larisa.Grigore@nxp.com>, 
 Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>, 
 "Radu Pirea (NXP OSS)" <radu-nicolae.pirea@oss.nxp.com>
X-Mailer: b4 0.14.0

DT and driver changes for DSPI on S32G platforms. First 3 commits are
fixes for various edge cases which also apply to other platforms.
Remaining commits add new S32G registers and device settings, some S32G
specific fixes and then finally add the DT compatibles and binding docs.

Tested in both host and target mode on S32G-VNP-RDB3 by transferring to
an external device over spi1 using spidev_test.c

---
Changes in v2:
- Add trailing commas to lists
- Line length fixes
- DT coding style changes
- Remove fake "rohm,dh2228fv" device for testing
- Improve some commit messages
- Put all fixes commits first and add fixes: tags
- Link to v1: https://lore.kernel.org/r/20250509-james-nxp-spi-v1-0-32bfcd2fea11@linaro.org

---
Andra-Teodora Ilie (1):
      spi: spi-fsl-dspi: Enable modified transfer protocol on S32G

Bogdan-Gabriel Roman (1):
      spi: spi-fsl-dspi: Halt the module after a new message transfer

Ciprian Marian Costea (2):
      dt-bindings: spi: dspi: Add S32G support
      spi: spi-fsl-dspi: Enable support for S32G platforms

James Clark (2):
      spi: spi-fsl-dspi: Re-use one volatile regmap for both device types
      spi: spi-fsl-dspi: Define regmaps per device

Larisa Grigore (7):
      spi: spi-fsl-dspi: restrict register range for regmap access
      spi: spi-fsl-dspi: Reset SR flags before sending a new message
      spi: spi-fsl-dspi: Add config and regmaps for S32G platforms
      spi: spi-fsl-dspi: Avoid setup_accel logic for DMA transfers
      spi: spi-fsl-dspi: Use DMA for S32G controller in target mode
      spi: spi-fsl-dspi: Reinitialize DSPI regs after resuming for S32G
      arm64: dts: Add DSPI entries for S32G platforms

Marius Trifu (1):
      spi: spi-fsl-dspi: Use spi_alloc_target for target

 .../devicetree/bindings/spi/fsl,dspi.yaml          |  18 +
 arch/arm64/boot/dts/freescale/s32g2.dtsi           |  78 +++++
 arch/arm64/boot/dts/freescale/s32g3.dtsi           |  78 +++++
 arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi    |  83 +++++
 arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi    |  83 +++++
 drivers/spi/Kconfig                                |   4 +-
 drivers/spi/spi-fsl-dspi.c                         | 362 +++++++++++++++------
 7 files changed, 600 insertions(+), 106 deletions(-)
---
base-commit: d608703fcdd9e9538f6c7a0fcf98bf79b1375b60
change-id: 20250325-james-nxp-spi-caf1e2099231

Best regards,
-- 
James Clark <james.clark@linaro.org>


