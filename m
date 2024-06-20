Return-Path: <devicetree+bounces-78102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB7A910FC6
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 19:59:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C37E51C21450
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 17:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5D131BBBEA;
	Thu, 20 Jun 2024 17:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b="Ef2yOdoP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5781BA880
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 17:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718906239; cv=none; b=nhw3xqFtgIeiZ8tbe998Di3zf1R9xHdFh2qi3t6c/CUdMq7fvdNRupYzrcpDzye6KVekKNQLnHW2HCW/EZGDg1OCL+7Z4hCpMPIg2xtqDQktQc8kjGmMmdrLlTj3OJZc69OQ2IXEqyFODYpAsWw9fMNf8w+zYfYjMS6Ra4dCzus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718906239; c=relaxed/simple;
	bh=lL5HxCJiZymjowcOr7xVA2M7Te/xs6i3j2oxZgMh+rs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ANyvid0NGBAmWb2DudSZkfRdjUeC0uHtJ1a2qoe8AhihvPo52Obh9ZRO84xy2xzrfMIGEqR3xpEt+UAB9UOkSqk1fNOGEyYSsVDsUx4nh1x/7sxhcogixigjRVa4aiOiv5/99A97ss8g1/77Qmxz77yf0JyBPusgV6LhX03FUxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com; spf=pass smtp.mailfrom=timesys.com; dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b=Ef2yOdoP; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timesys.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a6f09b457fdso127229066b.2
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 10:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timesys-com.20230601.gappssmtp.com; s=20230601; t=1718906235; x=1719511035; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UP/GNN9hhxz4nMUGrLaNfWrPk3mVaVMWtBi9huNJxPk=;
        b=Ef2yOdoPvdrdIdPhr5LQiCJ0I9SLxjRSKaL/OqYMX5sqAZCEuTYZ7p/dgSstRd9dBo
         453/Yyxx0wzRqZnwLXEhOVZlIMMOGUCt9mtMNngn1z/AFwrxtSyZeZigZvfq7nDB88xV
         bfv/JdkfvxqG+JcOdNlu83TuBlMu8F15agYsQp6cQBRiayP82/3wP2Zfym+grexo+RbH
         33uSmqeotVnrH7QfBwkcsJPqVTYCS6ltvJkZVCpj529Q28XwqxMs+LKs1pdi2dvKdODM
         dBTtra4ZW7mcWHzmYzVTyIVE19mJcpcSI3bWWiS5kWd408yqD4I5puVMvo6ZbWc9XIqN
         69lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718906235; x=1719511035;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UP/GNN9hhxz4nMUGrLaNfWrPk3mVaVMWtBi9huNJxPk=;
        b=D9Ln7EH+Ywk2BnAPhUXEsxZf8wjGuCDF8XEazA6FO3d9M+IefjfY4QaYDGi/4/CkHJ
         OtI/nV4g7OJJ3phBLO1mXla0mKYwFmRPiJZe3kUwfVujhLAvcqvxPnvnooGkhGAF4jid
         E+tMBDczWamKJH70R55LC3G1ddeaRXDI690Ky9wc59mcFdHMrRUftb6F/pvFM9Np/xA/
         ge83gYLizEqLLmb0biAGwaeTQktFmNBgiHyGxjTZ0J6KHODib7ZD3pAIdX59K7mIHamj
         JEvzMv3xVsw5Wn2nmwyXKgZ6cZtBji102GJRBt4v1MlhXAoPKtTBtHMeu3Tf5iNVzBCU
         tQgg==
X-Forwarded-Encrypted: i=1; AJvYcCVmOMlTVGKzhLK0jYQXatLBJOZRQqSBz6I/Op7UJHnZ7jPb71BvbW1ozQATJ4DwCnUB95oF6Ll2U/NDod5L1kWBkOeHK9xuEnQ5lg==
X-Gm-Message-State: AOJu0YwPmgVUUOYPs5P5nIWIrTP1RLmViVTV0YWZ/oq5PDMUTiMRWtIJ
	CCllrcQjJtxO0qouXAXKJU7PIna5TCdprfOgXKz5L3mr/EHFjDR8fQdNmvgdLK4=
X-Google-Smtp-Source: AGHT+IHwzCxasTWecNI2BQg/1Mqv76qvz0pqMMUj9hgHTBodTuDhBkY00q2aX9YgUG43J9U17WwHFQ==
X-Received: by 2002:a17:906:a09:b0:a6e:f7bf:712e with SMTP id a640c23a62f3a-a6fab618973mr379689666b.27.1718906235388;
        Thu, 20 Jun 2024 10:57:15 -0700 (PDT)
Received: from localhost.localdomain ([91.216.213.152])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f42e80sm781370766b.186.2024.06.20.10.57.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 10:57:14 -0700 (PDT)
From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"J.M.B. Downing" <jonathan.downing@nautel.com>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Yangtao Li <frank.li@vivo.com>,
	Li Zetao <lizetao1@huawei.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Chancel Liu <chancel.liu@nxp.com>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	alsa-devel@alsa-project.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-sound@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-mtd@lists.infradead.org
Cc: Markus Elfring <Markus.Elfring@web.de>
Subject: [Patch v4 00/10] Add audio support for LPC32XX CPUs
Date: Thu, 20 Jun 2024 19:56:31 +0200
Message-Id: <20240620175657.358273-1-piotr.wojtaszczyk@timesys.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This pach set is to bring back audio to machines with a LPC32XX CPU.
The legacy LPC32XX SoC used to have audio spport in linux 2.6.27.
The support was dropped due to lack of interest from mainaeners.

Piotr Wojtaszczyk (10):
  dt-bindings: dma: pl08x: Add dma-cells description
  dt-bindings: dma: Add lpc32xx DMA mux binding
  ASoC: dt-bindings: lpc32xx: Add lpc32xx i2s DT binding
  ARM: dts: lpc32xx: Add missing dma and i2s properties
  clk: lpc32xx: initialize regmap using parent syscon
  dmaengine: Add dma router for pl08x in LPC32XX SoC
  ARM: lpc32xx: Remove pl08x platform data in favor for device tree
  mtd: rawnand: lpx32xx: Request DMA channels using DT entries
  ASoC: fsl: Add i2s and pcm drivers for LPC32xx CPUs
  i2x: pnx: Use threaded irq to fix warning from del_timer_sync()

 .../devicetree/bindings/dma/arm-pl08x.yaml    |   7 +
 .../bindings/dma/nxp,lpc3220-dmamux.yaml      |  56 +++
 .../bindings/sound/nxp,lpc3220-i2s.yaml       |  73 ++++
 MAINTAINERS                                   |  21 +
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi        |  53 ++-
 arch/arm/mach-lpc32xx/phy3250.c               |  54 ---
 drivers/clk/Kconfig                           |   1 +
 drivers/clk/nxp/clk-lpc32xx.c                 |  10 +-
 drivers/dma/Kconfig                           |   9 +
 drivers/dma/Makefile                          |   1 +
 drivers/dma/lpc32xx-dmamux.c                  | 195 +++++++++
 drivers/i2c/busses/i2c-pnx.c                  |   4 +-
 drivers/mtd/nand/raw/lpc32xx_mlc.c            |  10 +-
 drivers/mtd/nand/raw/lpc32xx_slc.c            |  10 +-
 sound/soc/fsl/Kconfig                         |   7 +
 sound/soc/fsl/Makefile                        |   2 +
 sound/soc/fsl/lpc3xxx-i2s.c                   | 376 ++++++++++++++++++
 sound/soc/fsl/lpc3xxx-i2s.h                   |  79 ++++
 sound/soc/fsl/lpc3xxx-pcm.c                   |  73 ++++
 19 files changed, 954 insertions(+), 87 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/dma/nxp,lpc3220-dmamux.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/nxp,lpc3220-i2s.yaml
 create mode 100644 drivers/dma/lpc32xx-dmamux.c
 create mode 100644 sound/soc/fsl/lpc3xxx-i2s.c
 create mode 100644 sound/soc/fsl/lpc3xxx-i2s.h
 create mode 100644 sound/soc/fsl/lpc3xxx-pcm.c

-- 
2.25.1


