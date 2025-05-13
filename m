Return-Path: <devicetree+bounces-176944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECE1AB5EA8
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 23:54:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B29663B9C3C
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 21:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37606202983;
	Tue, 13 May 2025 21:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="gXpny+Ur"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE6A20C461
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 21:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747173237; cv=none; b=nzzX9vlGDwJledPaVFAxQciKWDT30r8V7Iy8+E+l+ydyNM9IyN3aI+w+g9pA2YHv4QKsFseXMSlNGVJMNUslWdsoRYfuVoMvAO/KE5u+Z6Kj0Zo131CAEEc/l4RcHI5cGy/HxOFT9qFTWqSMSA3MYIdffh8n0MLcuYYSZyjzEAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747173237; c=relaxed/simple;
	bh=Yykr4pXHm+eFZeLoxnQj4YQ7g7m8no0bRdRqTGC2FXA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ap1JkFTthGl738HBg9ehueVonfabeCWvTDoXoHSj3HBfvoJ5E5mktUMOWkX4iYTRuiXvYGE7Kk/kD+X/8H0j6fTqFjbdSMxOts3qCCt7IqzLeaj//DAygrRlRAWN0D18B6WAFgaiPIzqYo0fi6/9ybDguNuLRN+4voykdnddzwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=gXpny+Ur; arc=none smtp.client-ip=209.85.166.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-86135ae2a29so579833039f.2
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1747173234; x=1747778034; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CofZ6mxwdPQ5E5kE6D3I1SRbGpA+t1hpeEYsYL5jGT4=;
        b=gXpny+Ur7k15sHOEJAB2dlyV5YpsWLw24Zd+KUXyprQt59C4uVc9yRgjDmbZhKDzN3
         QRjjmic1Az24priJhQisK68ZL+EHM7bwHZi58USfxlExxh4CqhAkOlXHDFPfyqcaoL+Z
         8nuCuFJf5Tz7Fv7EssLrPfxu7XdNNy0q+VScW0rZku5xqpZW2K5RqyTJGUUGmD7UhMOm
         Xqfv6tVmRLp7ALSaudYDnY5I2F3mn73lTYqAgjV/Z9k0xFY9FLTQy15of97eg16I5G2h
         gzaM6LCaX6dly/KzsSzCXasdxmQR9ib2sGT9n3dms8kqZPZWOq1m7hwFIr93NOP25zlU
         ZEAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747173234; x=1747778034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CofZ6mxwdPQ5E5kE6D3I1SRbGpA+t1hpeEYsYL5jGT4=;
        b=KVcuW1f3UVRtuRR+0Qi3II7nm/cVIyuxsCRvbt7Va/kfdexpN4UtUu64VQK7PkoiYO
         sMtuwZYQmaRTvvrOcRoafs25QxFtxVFQRd7WF11CFYYIuQN8ODGS+IRJjUkKEQ5vdSuD
         CzxYjfDGzq3V0b6x/fAXlMaQxUFlrFwjNjN5rOTPq1KYAutJbde0ZlsGJpNaXcAjfR8x
         LKVHK2RDsnI575ZzWAoI86vpEzS/BFW3YyDaBSY1PlMx6W63TiD7R7liIl+AmRTD7GzQ
         JOtqWyaFo9V/WTIgbb2/bvAaKcAxULrleaihqhuXH0KLqhdiu/3xALy2gDgXLJXBp5VV
         0N6A==
X-Forwarded-Encrypted: i=1; AJvYcCUyVle27eFMzCnmvSyTvDKWzkr64gmoqXyo3SuRzmQYt2LzsnUZVvV2bpXFJF8tY3VrXArRDJ4s1FvV@vger.kernel.org
X-Gm-Message-State: AOJu0YwUl2iPL5+yhe1tZ53twrmE/I8cmyLLsYZ2LPRYilDkYh4uly+u
	K9Xf8sK4sujmRzyHPECix0lNRxhkduLwawHE0pb2Avm1JUcmrTaXzgy4c3rIEt4=
X-Gm-Gg: ASbGncsk3MI07sV0qYlG8VRqZBzABo01M6cCfc6QougIPNjh8Kzhz5YwYWspVsOZuJK
	B2MCNkexVWr6fma6U2I2p+KghVp92dgHZ0giFWxfz8nUgFKVe0dkTfo6f2LJ2bhSMYjWjIbdjPu
	24OOpBo/kjtLTgGT+5YMfQdo+emWVHE8jmO8rB2EjMjUy8bnuwXaOuw2lA3sHwL+GB41xd5HceB
	sT9X/omSUMY0mzQJvQCB4Ofp5GgEuZWccNg/6VXonKsh58sMTPIWA1s6xJYN0w4Et8aIhZcuQp3
	dAn9mOOyiIr01PtG+YymrM8VmxaKw5Gh12irlXRl0YfHYBl9uxKLvcsK0+3z5fnJoHM/ds3N+vp
	RmUUrrw/J54JfqMYrLhxBH/nB
X-Google-Smtp-Source: AGHT+IE+tdGzdtN7678iU4Ivi8ODMsCF92xBzdacl7enWU++qN65n+N0dHtpayrDwOqxA6q/g4x1TA==
X-Received: by 2002:a05:6602:3a01:b0:861:d8ca:3587 with SMTP id ca18e2360f4ac-86a08dcff41mr132336939f.4.1747173233800;
        Tue, 13 May 2025 14:53:53 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-867636e0dedsm239622539f.32.2025.05.13.14.53.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 14:53:53 -0700 (PDT)
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
Subject: [PATCH v10 3/6] clk: spacemit: set up reset auxiliary devices
Date: Tue, 13 May 2025 16:53:41 -0500
Message-ID: <20250513215345.3631593-4-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250513215345.3631593-1-elder@riscstar.com>
References: <20250513215345.3631593-1-elder@riscstar.com>
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
Reviewed-by: Haylen Chu <heylenay@4d2.org>
Reviewed-by: Yixun Lan <dlan@gentoo.org>
---
 drivers/clk/spacemit/Kconfig     |   1 +
 drivers/clk/spacemit/ccu-k1.c    | 104 ++++++++++++++++++++++++++++---
 include/soc/spacemit/k1-syscon.h |  12 ++++
 3 files changed, 107 insertions(+), 10 deletions(-)

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
index 801150f4ff0f5..1c9ed434ae93e 100644
--- a/drivers/clk/spacemit/ccu-k1.c
+++ b/drivers/clk/spacemit/ccu-k1.c
@@ -5,12 +5,15 @@
  */
 
 #include <linux/array_size.h>
+#include <linux/auxiliary_bus.h>
 #include <linux/clk-provider.h>
 #include <linux/delay.h>
+#include <linux/idr.h>
 #include <linux/mfd/syscon.h>
 #include <linux/minmax.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
+#include <linux/slab.h>
 #include <soc/spacemit/k1-syscon.h>
 
 #include "ccu_common.h"
@@ -21,10 +24,13 @@
 #include <dt-bindings/clock/spacemit,k1-syscon.h>
 
 struct spacemit_ccu_data {
+	const char *reset_name;
 	struct clk_hw **hws;
 	size_t num;
 };
 
+static DEFINE_IDA(auxiliary_ids);
+
 /* APBS clocks start, APBS region contains and only contains all PLL clocks */
 
 /*
@@ -710,8 +716,9 @@ static struct clk_hw *k1_ccu_pll_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_pll_data = {
-	.hws	= k1_ccu_pll_hws,
-	.num	= ARRAY_SIZE(k1_ccu_pll_hws),
+	/* The PLL CCU implements no resets */
+	.hws		= k1_ccu_pll_hws,
+	.num		= ARRAY_SIZE(k1_ccu_pll_hws),
 };
 
 static struct clk_hw *k1_ccu_mpmu_hws[] = {
@@ -751,8 +758,9 @@ static struct clk_hw *k1_ccu_mpmu_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_mpmu_data = {
-	.hws	= k1_ccu_mpmu_hws,
-	.num	= ARRAY_SIZE(k1_ccu_mpmu_hws),
+	.reset_name	= "mpmu-reset",
+	.hws		= k1_ccu_mpmu_hws,
+	.num		= ARRAY_SIZE(k1_ccu_mpmu_hws),
 };
 
 static struct clk_hw *k1_ccu_apbc_hws[] = {
@@ -859,8 +867,9 @@ static struct clk_hw *k1_ccu_apbc_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_apbc_data = {
-	.hws	= k1_ccu_apbc_hws,
-	.num	= ARRAY_SIZE(k1_ccu_apbc_hws),
+	.reset_name	= "apbc-reset",
+	.hws		= k1_ccu_apbc_hws,
+	.num		= ARRAY_SIZE(k1_ccu_apbc_hws),
 };
 
 static struct clk_hw *k1_ccu_apmu_hws[] = {
@@ -929,8 +938,9 @@ static struct clk_hw *k1_ccu_apmu_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_apmu_data = {
-	.hws	= k1_ccu_apmu_hws,
-	.num	= ARRAY_SIZE(k1_ccu_apmu_hws),
+	.reset_name	= "apmu-reset",
+	.hws		= k1_ccu_apmu_hws,
+	.num		= ARRAY_SIZE(k1_ccu_apmu_hws),
 };
 
 static int spacemit_ccu_register(struct device *dev,
@@ -941,6 +951,10 @@ static int spacemit_ccu_register(struct device *dev,
 	struct clk_hw_onecell_data *clk_data;
 	int i, ret;
 
+	/* Nothing to do if the CCU does not implement any clocks */
+	if (!data->hws)
+		return 0;
+
 	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, data->num),
 				GFP_KERNEL);
 	if (!clk_data)
@@ -981,9 +995,74 @@ static int spacemit_ccu_register(struct device *dev,
 	return ret;
 }
 
+static void spacemit_cadev_release(struct device *dev)
+{
+	struct auxiliary_device *adev = to_auxiliary_dev(dev);
+
+	ida_free(&auxiliary_ids, adev->id);
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
+	int ret;
+
+	/* Nothing to do if the CCU does not implement a reset controller */
+	if (!reset_name)
+		return 0;
+
+	cadev = kzalloc(sizeof(*cadev), GFP_KERNEL);
+	if (!cadev)
+		return -ENOMEM;
+
+	cadev->regmap = regmap;
+
+	adev = &cadev->adev;
+	adev->name = reset_name;
+	adev->dev.parent = dev;
+	adev->dev.release = spacemit_cadev_release;
+	adev->dev.of_node = dev->of_node;
+	ret = ida_alloc(&auxiliary_ids, GFP_KERNEL);
+	if (ret < 0)
+		goto err_free_cadev;
+	adev->id = ret;
+
+	ret = auxiliary_device_init(adev);
+	if (ret)
+		goto err_free_aux_id;
+
+	ret = auxiliary_device_add(adev);
+	if (ret) {
+		auxiliary_device_uninit(adev);
+		return ret;
+	}
+
+	return devm_add_action_or_reset(dev, spacemit_adev_unregister, adev);
+
+err_free_aux_id:
+	ida_free(&auxiliary_ids, adev->id);
+err_free_cadev:
+	kfree(cadev);
+
+	return ret;
+}
+
 static int k1_ccu_probe(struct platform_device *pdev)
 {
 	struct regmap *base_regmap, *lock_regmap = NULL;
+	const struct spacemit_ccu_data *data;
 	struct device *dev = &pdev->dev;
 	int ret;
 
@@ -1012,11 +1091,16 @@ static int k1_ccu_probe(struct platform_device *pdev)
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


