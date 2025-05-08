Return-Path: <devicetree+bounces-175253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E311AB0410
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 21:55:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 99734B25530
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 19:53:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 981C828C2D8;
	Thu,  8 May 2025 19:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="vrfxWYMf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA17286D60
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 19:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746734062; cv=none; b=KH9cooOZWY6tIWJkQ7Pq20PTWs5eM09QgixkzMfK1ZhEJ/NnTU1VGbOjRm8avHw5RnY1B+IFgJC6aiY+n8iybOIug3fQn5fm1kZVdwYPj9qYoFtUbYI8FOYOtUZXOAaEWOaFg12bx+r2TFZZVcZzZOQGWZTH2lwC8EqZx+6fs3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746734062; c=relaxed/simple;
	bh=7v0p8GTanUulmd/yJJq3W29d4ljiHnCna/oQKmCPYgw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=joAVeauCFiCciRfC9DHvy5WUT+8THVOdulA/QxFFx1kpcGfLz55YGQP2sDU5XQmrBzYmD1iD4wwb9WfQyUVH3+cIplH9/Bwl+5ZZ567XVdYZLqBRqaOyQMByAhk0Y272HG6wOTUuEU0JCoD/ncpJTjnKO/0PckfOwNa4J9T90Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=vrfxWYMf; arc=none smtp.client-ip=209.85.166.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-8647a81e683so40520139f.1
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 12:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1746734058; x=1747338858; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r06uiGf7LKwLLkidgxdzaXRW8dtg/cHi/0enoG+J9mg=;
        b=vrfxWYMfaLKkBYmj8d8Pb/kzEIKM/tpdpE6KE9/1aCtC/gghVPaHf3mVE3lYMz1eGM
         wxYFsiRx8cTAfUKvcedj2N+HnCSTuhbYPcNL7xyAiysacFEle1ls5aPvGj3uJ9FDnIQk
         +DLWgMT8bkg3gzd9Pu0lQFiNz7ny+mV/04m1QsGm/TFfWH8IJl8v7WwXNfa6CciHWV3F
         kpworc3wpkMC6EidK9OXiCgSGuBQ/yvy7zaD1swPTt5dg/6j/lCAjArCi4cV/gjDZk32
         VQeito+Ab6f81ZumieVz3lP9t+6peF5dNJ4/+u/Dj9t8zQYQdUaZ/lA7O6QkYKsqyIjV
         49ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746734058; x=1747338858;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r06uiGf7LKwLLkidgxdzaXRW8dtg/cHi/0enoG+J9mg=;
        b=bekiIMuTn9/hbvYexy5jTJElYX4kdmpOmOIRze1dJlTHjrpoj0n7lUa9UA+rkjaQmS
         fFGUCuwx1hy3N/ntLjH0WzozZ3fcLoSJtUhuSbuBVqQ01yrULm0wHNrX8IsRv3Wl1S+G
         Um6E5ov1ug3Tzu2b6kbt3VWpQLwUVdvY2R7HedkYw0C+NMez4P/Uy19YgSg+REg0vAXf
         8LgvCAq/Blf1Ft6ruSESETpGxQEtSdL9Xo/lCyd/irq8F0NgVJWUCnxtPZbG4w5obF2H
         kXRieVOafgQjrX93/fkDUL/L8ddKouSqjETN8V8sZU9EtKVFwIYhvGHN3LBDwykk2LHy
         Fk/g==
X-Forwarded-Encrypted: i=1; AJvYcCX2Gg5X1CWngEwuOVUeAwN1UpJqEi8ohhDuyV6cD+QVsCfXCQOfSvZECGumJ2RpyShXiaKNvmFS00Pd@vger.kernel.org
X-Gm-Message-State: AOJu0YyTLCGCpGx/KRTjMp5Gee9lc1qBeAcnYcN9/meV6UhUGSIPSigo
	DYo7lFkdptEF1P/ufE8l7DIFbChOOuBib/3UH4YytjG0LH39PHx+70wLaZpG0lQ=
X-Gm-Gg: ASbGnctbVM2L5Bw/jpYyXy/9/C41O9LiUwYKUIZj5RvPLCadaNjK/Xf0PbSGFVhTdLF
	zGcdX52YaI4E3eV/kKTlvYqcn1yQ7Kp7GGu6PWvN/c45ZhztT/BlWNwz7F38iVsVJbSHPAn/S2A
	xlBaOjzffGAKbuhZ+uiVEnn4K5D2IRtMwIb2mY5HIs+Pkfjj1huq+iG78qAFla8nPxK3MSF30WH
	0ZNM+qwucrX49uWzYEooz/6TXlvG4JcQpHGxrqcTWkiS4HF1vYF051M1QXckJwY5oxwSqes+lVS
	dBCVt5S1waSdxjM3Q8dX3iUZWI6sggTxIlT1lE4OOq70R8hrEUlEtCIGA1pD+9iDiuFJ9eIS5X9
	AXCVJqqmcRelP8A==
X-Google-Smtp-Source: AGHT+IHsNDTIe/NXdxRfO7WQawDdywrVbLCIbfPNKwj4snYFs74Rqbnh+J4CCW3w7bAfdONDwtaabw==
X-Received: by 2002:a05:6602:154c:b0:864:4a9c:1bd7 with SMTP id ca18e2360f4ac-86763392674mr160893439f.0.1746734058501;
        Thu, 08 May 2025 12:54:18 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4fa226850e1sm93983173.134.2025.05.08.12.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 12:54:18 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org
Cc: heylenay@4d2.org,
	inochiama@outlook.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 3/6] clk: spacemit: set up reset auxiliary devices
Date: Thu,  8 May 2025 14:54:05 -0500
Message-ID: <20250508195409.2962633-4-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250508195409.2962633-1-elder@riscstar.com>
References: <20250508195409.2962633-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a new reset_name field to the spacemit_ccu_data structure.  If it is
non-null, the CCU implements a reset controller, and the name will be
used in the name for the auxiliary device that implements it.

Define a new type to hold an auxiliary device as well as the regmap
pointer that will be needed by CCU reset controllers.  Set up code to
initialize and add an auxiliary device for any CCU that implements reset
functionality.

Make it optional for a CCU to implement a clock controller.  This
doesn't apply to any of the existing CCUs but will for some new ones
that will be added soon.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
v7: - The SPACEMIT_CCU config option now selects AUXILIARY_BUS

 drivers/clk/spacemit/Kconfig     |  1 +
 drivers/clk/spacemit/ccu-k1.c    | 89 ++++++++++++++++++++++++++++----
 include/soc/spacemit/k1-syscon.h | 12 +++++
 3 files changed, 92 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/spacemit/Kconfig b/drivers/clk/spacemit/Kconfig
index 4c4df845b3cb2..3854f6ae6d0ea 100644
--- a/drivers/clk/spacemit/Kconfig
+++ b/drivers/clk/spacemit/Kconfig
@@ -3,6 +3,7 @@
 config SPACEMIT_CCU
 	tristate "Clock support for SpacemiT SoCs"
 	depends on ARCH_SPACEMIT || COMPILE_TEST
+	select AUXILIARY_BUS
 	select MFD_SYSCON
 	help
 	  Say Y to enable clock controller unit support for SpacemiT SoCs.
diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
index 801150f4ff0f5..b9c574f9e0d7f 100644
--- a/drivers/clk/spacemit/ccu-k1.c
+++ b/drivers/clk/spacemit/ccu-k1.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/array_size.h>
+#include <linux/auxiliary_bus.h>
 #include <linux/clk-provider.h>
 #include <linux/delay.h>
 #include <linux/mfd/syscon.h>
@@ -21,6 +22,7 @@
 #include <dt-bindings/clock/spacemit,k1-syscon.h>
 
 struct spacemit_ccu_data {
+	const char *reset_name;
 	struct clk_hw **hws;
 	size_t num;
 };
@@ -710,8 +712,9 @@ static struct clk_hw *k1_ccu_pll_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_pll_data = {
-	.hws	= k1_ccu_pll_hws,
-	.num	= ARRAY_SIZE(k1_ccu_pll_hws),
+	/* The PLL CCU implements no resets */
+	.hws		= k1_ccu_pll_hws,
+	.num		= ARRAY_SIZE(k1_ccu_pll_hws),
 };
 
 static struct clk_hw *k1_ccu_mpmu_hws[] = {
@@ -751,8 +754,9 @@ static struct clk_hw *k1_ccu_mpmu_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_mpmu_data = {
-	.hws	= k1_ccu_mpmu_hws,
-	.num	= ARRAY_SIZE(k1_ccu_mpmu_hws),
+	.reset_name	= "mpmu-reset",
+	.hws		= k1_ccu_mpmu_hws,
+	.num		= ARRAY_SIZE(k1_ccu_mpmu_hws),
 };
 
 static struct clk_hw *k1_ccu_apbc_hws[] = {
@@ -859,8 +863,9 @@ static struct clk_hw *k1_ccu_apbc_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_apbc_data = {
-	.hws	= k1_ccu_apbc_hws,
-	.num	= ARRAY_SIZE(k1_ccu_apbc_hws),
+	.reset_name	= "apbc-reset",
+	.hws		= k1_ccu_apbc_hws,
+	.num		= ARRAY_SIZE(k1_ccu_apbc_hws),
 };
 
 static struct clk_hw *k1_ccu_apmu_hws[] = {
@@ -929,8 +934,9 @@ static struct clk_hw *k1_ccu_apmu_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_apmu_data = {
-	.hws	= k1_ccu_apmu_hws,
-	.num	= ARRAY_SIZE(k1_ccu_apmu_hws),
+	.reset_name	= "apmu-reset",
+	.hws		= k1_ccu_apmu_hws,
+	.num		= ARRAY_SIZE(k1_ccu_apmu_hws),
 };
 
 static int spacemit_ccu_register(struct device *dev,
@@ -941,6 +947,10 @@ static int spacemit_ccu_register(struct device *dev,
 	struct clk_hw_onecell_data *clk_data;
 	int i, ret;
 
+	/* Nothing to do if the CCU does not implement any clocks */
+	if (!data->hws)
+		return 0;
+
 	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, data->num),
 				GFP_KERNEL);
 	if (!clk_data)
@@ -981,9 +991,63 @@ static int spacemit_ccu_register(struct device *dev,
 	return ret;
 }
 
+static void spacemit_cadev_release(struct device *dev)
+{
+	struct auxiliary_device *adev = to_auxiliary_dev(dev);
+
+	kfree(to_spacemit_ccu_adev(adev));
+}
+
+static void spacemit_adev_unregister(void *data)
+{
+	struct auxiliary_device *adev = data;
+
+	auxiliary_device_delete(adev);
+	auxiliary_device_uninit(adev);
+}
+
+static int spacemit_ccu_reset_register(struct device *dev,
+				       struct regmap *regmap,
+				       const char *reset_name)
+{
+	struct spacemit_ccu_adev *cadev;
+	struct auxiliary_device *adev;
+	static u32 next_id;
+	int ret;
+
+	/* Nothing to do if the CCU does not implement a reset controller */
+	if (!reset_name)
+		return 0;
+
+	cadev = devm_kzalloc(dev, sizeof(*cadev), GFP_KERNEL);
+	if (!cadev)
+		return -ENOMEM;
+	cadev->regmap = regmap;
+
+	adev = &cadev->adev;
+	adev->name = reset_name;
+	adev->dev.parent = dev;
+	adev->dev.release = spacemit_cadev_release;
+	adev->dev.of_node = dev->of_node;
+	adev->id = next_id++;
+
+	ret = auxiliary_device_init(adev);
+	if (ret)
+		return ret;
+
+	ret = auxiliary_device_add(adev);
+	if (ret) {
+		auxiliary_device_uninit(adev);
+		return ret;
+	}
+
+	return devm_add_action_or_reset(dev, spacemit_adev_unregister, adev);
+}
+
 static int k1_ccu_probe(struct platform_device *pdev)
 {
 	struct regmap *base_regmap, *lock_regmap = NULL;
+	const struct spacemit_ccu_data *data;
 	struct device *dev = &pdev->dev;
 	int ret;
 
@@ -1012,11 +1076,16 @@ static int k1_ccu_probe(struct platform_device *pdev)
 					     "failed to get lock regmap\n");
 	}
 
-	ret = spacemit_ccu_register(dev, base_regmap, lock_regmap,
-				    of_device_get_match_data(dev));
+	data = of_device_get_match_data(dev);
+
+	ret = spacemit_ccu_register(dev, base_regmap, lock_regmap, data);
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to register clocks\n");
 
+	ret = spacemit_ccu_reset_register(dev, base_regmap, data->reset_name);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register resets\n");
+
 	return 0;
 }
 
diff --git a/include/soc/spacemit/k1-syscon.h b/include/soc/spacemit/k1-syscon.h
index 039a448c51a07..53eff7691f33d 100644
--- a/include/soc/spacemit/k1-syscon.h
+++ b/include/soc/spacemit/k1-syscon.h
@@ -5,6 +5,18 @@
 #ifndef __SOC_K1_SYSCON_H__
 #define __SOC_K1_SYSCON_H__
 
+/* Auxiliary device used to represent a CCU reset controller */
+struct spacemit_ccu_adev {
+	struct auxiliary_device adev;
+	struct regmap *regmap;
+};
+
+static inline struct spacemit_ccu_adev *
+to_spacemit_ccu_adev(struct auxiliary_device *adev)
+{
+	return container_of(adev, struct spacemit_ccu_adev, adev);
+}
+
 /* APBS register offset */
 #define APBS_PLL1_SWCR1			0x100
 #define APBS_PLL1_SWCR2			0x104
-- 
2.45.2


