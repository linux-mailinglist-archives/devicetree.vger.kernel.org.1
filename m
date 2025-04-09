Return-Path: <devicetree+bounces-165012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A2AA83224
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:38:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 338D81B641DE
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DDFF215770;
	Wed,  9 Apr 2025 20:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q097XvRD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4276213220
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231059; cv=none; b=g9cEnQqLAFOU6/UD3VrOrofKvP0YtxjtaC9mf9/9HE4YOr7KUaWrlVrrSqZn7J8RJCpkiGBSVlZix7dKhtibz8z5gMe0CINgWfiN/P4+GyNntUWtRjiZZOv7gpBZ6DvzILq51B0XBqILiMk28HxdjanN9zhpcD/68k9vLmzePAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231059; c=relaxed/simple;
	bh=G2QuqVnFMg8y2zTjZxdmMu/QnwXErcjNOQU4yV6iUVc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gU83GritmH+/jgOVAcTpOH4S3MKjhzPhQ524qbYlvGYarOwew9UqnKCJpsUulrMnwiRUNONszxDysRaV0vgl1j0qk/kXsVT/Vzq3ZMs8G6+OhgZYxQaPlpJubrkSW+BrT3fwzzZ8fQO5GgoazQ/VcEfOHQ7ggCWFY95+yLCY/2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q097XvRD; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ac289147833so19062566b.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231052; x=1744835852; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZJ5xfpPt+Udr2klxgQkLdnjiXALVAMMpe1APzqbpdGM=;
        b=Q097XvRDDYtMidEVtgtFNl797DkTTk+NQ00daETce3y5PCoVWKI+muJw+lo+4teqyY
         1KUrI0+BcePBu66lz0iOkYYbCWmTdAcBtYUinYOtvjIGenbQDd73lntPoFBrq+bzFK9a
         2U/nhzV9MLpYhysPPpSWOzZRugSnoG0HkH4utVEOHjiiddrlWI+8qjH8LTDVtw8psZ6H
         noDfZpIKmyK9wZD+4aDazqwDjDESTI04Dkqn0YR3PcB16T1QJVvE0KTsQqPa71hVOvvI
         mxIT5ONJ5SX65+kMFTdaPuC69UknBCqfveqV4BTYTOxemX3J2n5HyO75np0j0Zb6eoe5
         WMZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231052; x=1744835852;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZJ5xfpPt+Udr2klxgQkLdnjiXALVAMMpe1APzqbpdGM=;
        b=SlkaZ0mnofkO4wiZQLv0HTZD83dODp10Vew7qjRbv4Wc5PMK7g0qm8QA+PFbm/CsTx
         x+2MLdb7/6xlKuHIaDbgFH5loHIH2XrjmTUbs4xf0bQPvqNcDCVmkT25wq3DUmeS9iUy
         MusIYJ6zTYJg8dDw3480ABM1KBhe7U1X56B363UVsLzn6pJT1uCi+gZ+KOS698K0dpVj
         he32EGSVPnx1cYChoyYOLPp3Wa8m5KmFSZgDo2wL3+WOlUWjbaySs/FYGBXi1t710TsN
         V1cWsK+8GTcbedNvXZh25c+8fGfLd7lQK7jEc5bvLxhGIruyILKJ6CGYWuNqC/UW/Je2
         dFRg==
X-Forwarded-Encrypted: i=1; AJvYcCXlpEiMSnmWGBYsakCYZ5WT1yJlqOy1+gCPviG1Yh54S8utnUC4gyHGrwYahPVEWkOnei1cJqs9eC7r@vger.kernel.org
X-Gm-Message-State: AOJu0Yzua9gXolOdodv+wYUAZMmcvF25pcuXIZXJOQS7pZRWR83S34Ww
	ikZw+YrQXR7z/o+VDcVB1i8haUJ7+0UcjWs44ONPNzCLOrLLLLtelah/aVn12GE=
X-Gm-Gg: ASbGncs0UFfo/sYKueaCZSXFVWBgOdm9XQgXpIuSVPlDwuU2xLMJZy/D/YRXBOnyLGq
	GiccFtznNDSyx5Z+cic+i1+2dMNbMYzY/yK6wpwf7QOYQlRizGHApF5z8hvO666rMlstis/nEHy
	ap53rWjYbG296MW97pBxdz44kQzOwHwqx4KLuOxpAMjsL2NwQrYX2++NrwHcNsYaL0sgBnYX1uq
	ilrMFQGnBwf4R+Qi76iO4p6rupLNliqdETmAfQXdcV8ItKv3gKuWdrBay7j112Ebz5MJjiF0yTJ
	Fao2dzAPkHNzweUeyy0Ve4OhX36QsOHqjaVUBdoQpzUyCbG3/qHC+vhuG4Hll7wMWJW7eHeSKia
	qjJTSEafj91nRmzFW1XjKoAzPab0=
X-Google-Smtp-Source: AGHT+IHjirWHIybtv9mCOYpNHyYmTU6KD1TdSj+7K0HHxN3o9SAgZZYxV6t8b5P0L2dTzB7k1zUW7w==
X-Received: by 2002:a17:906:f595:b0:ac2:7cf9:71a0 with SMTP id a640c23a62f3a-acabd3bbf77mr8344766b.48.1744231051972;
        Wed, 09 Apr 2025 13:37:31 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:31 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:26 +0100
Subject: [PATCH v4 05/32] mfd: sec: Sort includes alphabetically
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-5-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
In-Reply-To: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

Sorting headers alphabetically helps locating duplicates, and makes it
easier to figure out where to insert new headers.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-core.c | 14 +++++++-------
 drivers/mfd/sec-irq.c  |  5 ++---
 2 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/mfd/sec-core.c b/drivers/mfd/sec-core.c
index 3e9b65c988a7f08bf16d3703004a3d60cfcb1c75..e31b3a6fbc8922e04a8bfcb78c85b6dbaf395e37 100644
--- a/drivers/mfd/sec-core.c
+++ b/drivers/mfd/sec-core.c
@@ -3,16 +3,10 @@
 // Copyright (c) 2012 Samsung Electronics Co., Ltd
 //              http://www.samsung.com
 
-#include <linux/module.h>
-#include <linux/moduleparam.h>
-#include <linux/init.h>
 #include <linux/err.h>
-#include <linux/slab.h>
 #include <linux/i2c.h>
-#include <linux/of.h>
+#include <linux/init.h>
 #include <linux/interrupt.h>
-#include <linux/pm_runtime.h>
-#include <linux/mutex.h>
 #include <linux/mfd/core.h>
 #include <linux/mfd/samsung/core.h>
 #include <linux/mfd/samsung/irq.h>
@@ -23,7 +17,13 @@
 #include <linux/mfd/samsung/s2mps15.h>
 #include <linux/mfd/samsung/s2mpu02.h>
 #include <linux/mfd/samsung/s5m8767.h>
+#include <linux/module.h>
+#include <linux/moduleparam.h>
+#include <linux/mutex.h>
+#include <linux/of.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
+#include <linux/slab.h>
 
 static const struct mfd_cell s5m8767_devs[] = {
 	{ .name = "s5m8767-pmic", },
diff --git a/drivers/mfd/sec-irq.c b/drivers/mfd/sec-irq.c
index 047fc065fcf17f5bde84143d77a46749111ea5b8..5c0d949aa1a20f5538d8baf7a8aefc1160ffa14c 100644
--- a/drivers/mfd/sec-irq.c
+++ b/drivers/mfd/sec-irq.c
@@ -6,9 +6,6 @@
 #include <linux/device.h>
 #include <linux/interrupt.h>
 #include <linux/irq.h>
-#include <linux/module.h>
-#include <linux/regmap.h>
-
 #include <linux/mfd/samsung/core.h>
 #include <linux/mfd/samsung/irq.h>
 #include <linux/mfd/samsung/s2mps11.h>
@@ -16,6 +13,8 @@
 #include <linux/mfd/samsung/s2mpu02.h>
 #include <linux/mfd/samsung/s2mpu05.h>
 #include <linux/mfd/samsung/s5m8767.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
 
 static const struct regmap_irq s2mps11_irqs[] = {
 	[S2MPS11_IRQ_PWRONF] = {

-- 
2.49.0.604.gff1f9ca942-goog


