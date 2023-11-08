Return-Path: <devicetree+bounces-14580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6277E5922
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 15:34:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABC401C20DD9
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 14:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 630EA1C2A4;
	Wed,  8 Nov 2023 14:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BA5E9/N+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A07F71C2B0
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 14:34:07 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA57B1FF1
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 06:34:06 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-507ad511315so10059554e87.0
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 06:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699454045; x=1700058845; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=78GU8j4+SoSSNRmxCZnZFjlRCHFt/xGux/FgF9FARuk=;
        b=BA5E9/N+hjkCBkXNo2GSEYWwgGb4ioYhqdzF7T0DzpCReIDP/433BPXtvE85AJrAkz
         GN3ACgC45g1C15b6V/fsatzmsaGVpEKBCeZcG5faFhyGLkzC2Wrk104ejAn4EopzQ5ZR
         dHgyH+FM8KHQ/MjXLxt3mGYxpF0OVPMniExqnVf4+ggq44GGKiNTa74brIbsTRO70ZX+
         jaGEjzu8gA5stmVsYCvAkPDka+SrXLJfGGLrl5PdRccl+Q+rFLWJLV+kz4XZm/wiECH1
         yuL0WY6JFltpZj8rBkG0vv+romuVYkHpPbKQGfje959be4/CUncvxAQsrbL2+hevnkhh
         OaNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699454045; x=1700058845;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=78GU8j4+SoSSNRmxCZnZFjlRCHFt/xGux/FgF9FARuk=;
        b=O6rXN2Kr40K6pAcHem06WhE7nBnnSGxLiLwfM49fdoTHIwHGcqipoxpms2XSdnPwHX
         D34FnxYbtRFupbU58ofvZKJVgd+aX1LbbdzQZJvDgkJeF45V+Dhjy8UQUDz/6Bp9i7Al
         +g+JMVLJYfem/fenPNAHo9UwywdF1YS9AtThzDDg4+xKo0jzGDbtSDJC7MTDIbPp1nUN
         jgZCq78XAx2W3ne4bnKr3CPuN4reXOHQDW9syg/BMZKldW5JvG7ZIKjjjF0v/EaYawHk
         3m7JfZjdHeenm9EpITLJRi2cJxlwKMjOg06CVRV/l/35TkFEEOeNQ0vUOw24mXlV9JWA
         7GJA==
X-Gm-Message-State: AOJu0YxcjwXT2bijrQJpvcPR50EHX4kCw1v5nBjdF9YQy1VQssotdVK0
	4Y8Gcuy8AqajR6GJcyG5haLaVQ==
X-Google-Smtp-Source: AGHT+IH6IcpUsu8l3iZ6cm3VeKSRvHVjWLm4/aWcEw/O+09FccupiAh8GMMm2qcpdhgkIocbk45f1A==
X-Received: by 2002:a19:9110:0:b0:507:b935:9f5f with SMTP id t16-20020a199110000000b00507b9359f5fmr1441210lfd.24.1699454044974;
        Wed, 08 Nov 2023 06:34:04 -0800 (PST)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id q10-20020ac24a6a000000b00507a3b8b007sm686773lfp.110.2023.11.08.06.34.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 06:34:04 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 08 Nov 2023 15:33:54 +0100
Subject: [PATCH 6/6] mtd: rawnand: gpio: Rename file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231108-fix-mips-nand-v1-6-5fc5586d04de@linaro.org>
References: <20231108-fix-mips-nand-v1-0-5fc5586d04de@linaro.org>
In-Reply-To: <20231108-fix-mips-nand-v1-0-5fc5586d04de@linaro.org>
To: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Tony Lindgren <tony@atomide.com>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Ben Dooks <ben.dooks@codethink.co.uk>
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-mips@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.4

The implementation of the GPIO NAND controller is just "gpio"
with the usecase for NAND implied from the folder nand/raw.

This is not so great when the module gets the name "gpio.ko".
Rename the implementation to nand-gpio.c so the module is
named nand-gpio.ko which is more reasonable.

We put "nand" first instead of "gpio" because the order is
usually <subsystem>-<driver>.c, cf ls drivers/gpio/

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/mtd/nand/raw/Makefile                | 2 +-
 drivers/mtd/nand/raw/{gpio.c => nand-gpio.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/Makefile
index 25120a4afada..f0e377332812 100644
--- a/drivers/mtd/nand/raw/Makefile
+++ b/drivers/mtd/nand/raw/Makefile
@@ -18,7 +18,7 @@ obj-$(CONFIG_MTD_NAND_NANDSIM)		+= nandsim.o
 obj-$(CONFIG_MTD_NAND_CS553X)		+= cs553x_nand.o
 obj-$(CONFIG_MTD_NAND_NDFC)		+= ndfc.o
 obj-$(CONFIG_MTD_NAND_ATMEL)		+= atmel/
-obj-$(CONFIG_MTD_NAND_GPIO)		+= gpio.o
+obj-$(CONFIG_MTD_NAND_GPIO)		+= nand-gpio.o
 omap2_nand-objs := omap2.o
 obj-$(CONFIG_MTD_NAND_OMAP2) 		+= omap2_nand.o
 obj-$(CONFIG_MTD_NAND_OMAP_BCH_BUILD)	+= omap_elm.o
diff --git a/drivers/mtd/nand/raw/gpio.c b/drivers/mtd/nand/raw/nand-gpio.c
similarity index 100%
rename from drivers/mtd/nand/raw/gpio.c
rename to drivers/mtd/nand/raw/nand-gpio.c

-- 
2.34.1


