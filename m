Return-Path: <devicetree+bounces-141641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B9853A21BC5
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 12:06:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 051D6162E35
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 11:06:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 240731DE2BE;
	Wed, 29 Jan 2025 11:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hg8dbtUs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6861DE2AD
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 11:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738148717; cv=none; b=GweCBnS4Qfw/I5l0sb/zIn880MM27eIivp+If575wUMRIt+oqqNkZ/x1wCZCx5EBoqjTUwxi3DTjpHFoDoG3Ot16ygUS1wd7zvglgQOinve5OGfRclWBq/oFIUorEif77549axVPxHvoEaIc9D8DBi6rRpsNoR1Niv64FDuMEgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738148717; c=relaxed/simple;
	bh=mPqWiYHTVbxQ1ZYyr5/FMNCEArrrEDwzZrloBMMEgyA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=odRJYaiHaknhxc0Nbub9u/bioZpc0UndRghIrAAH5gRtl3cXy8Y4J5p07biwHHjeqC6CcOnRAGdhQyJhNYB4V9a0cfxp+vomsoO5UfAQw/9MolntD6mAixJG7+1kpOxSL70dErCddJWmqpritcmofwdOZvhpbqZKTRaeUv6Xzig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hg8dbtUs; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-38a25d4b9d4so3628825f8f.0
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 03:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738148713; x=1738753513; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oB16y1gR9CriA2xIIhmFJG7RqN1ERbrsdfXmfj1Q/Eg=;
        b=hg8dbtUs3ej2s8+8uDCPZP696mOFtiureoxZPRDgnZFG+3poUzQF8iua9CSF8unCT1
         hAREj16yyzC4B9Ox5DiC/1W6Ooh8vGxpMLmI/ko2BvkED6xuOW8cZMC/z68GXSg8UoI/
         8ckm6diKfkBe3CtnebTVNcsCG1XRnNFkB/Lc/V8WabSSdo0Z/rmZjdvOpqK+GFNt5DzQ
         kLhGAqT+c4/2yb1Fu++S0yRmi5m7ocwUPFfEP4r0ddtTWCQavwgewzhdqvJIj39WU+no
         7oBN3DFGZdtnmL/GO/tTcU58bAZIZa0Toa7QqHVGwcExHsOwJE1oY9dvr6vnHpnHCgla
         yorA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738148713; x=1738753513;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oB16y1gR9CriA2xIIhmFJG7RqN1ERbrsdfXmfj1Q/Eg=;
        b=CZSivc3/h9uFCxGdFZAqfubAMZ468b3U/uZVTkUllUVmktO5CzB7UztKPgwHq9m5Ym
         LB2IOSVJGGQOL4OWk+SVxHZJIZXiM0V6iKaUx2u/sVE/4bdaioi36DzRm61QN9+Hmb0f
         I3WUrecc/EXhX8l5axt3VleHxhHcZ2eXWoU3udKqBl6bvANHF2byVeahYNZcfyihGCxG
         fR7PxgWOsQ6zNurYZBTJs9j5rB6TjL0PxAPbksIaYl6Dr0zE5e8Zl1J69Wryt7sxELLv
         atjjX+PoeeeLN+1/V1w1krC1fG2Qsmtr2qokQtgRhrgL133owwv7tPAne833/rGmxUKo
         psjA==
X-Forwarded-Encrypted: i=1; AJvYcCXogT5BKMWKnWmNaCKktLcm1iMoNL40wWRh1X0FCIAJ/NPglRmIev0AqQOlfZjfmKl3rpojOei2GUqP@vger.kernel.org
X-Gm-Message-State: AOJu0YxG44xqFdomtCoVCOUC/hLiFx1Hi3Jpw510oXPRyBtXYIUlxK4c
	/bGey1PKmL3bl6iRNmx0veYt2jtypP/F8vo7MdRwV1ngUVSW4P7YE+LibWGqdXE=
X-Gm-Gg: ASbGnct8Jtz/NBj+GxaE0ts0jEtm+32sCZavToinBsozbu8iBWLmYuu3YIEk05l8eqw
	wOcWTRUd7A5fCdPcCmztoDtbCcdmrLb5DcNmngS7FycWSh6D/NVgCpMEHp01QTY4A5l2c/04gQ9
	C76+VGMqnfvLO20Zeb+j/tKubAO/nkPcXgeItE8Qq+2yi3ASb1s/DjopjTfBOjJl0Z9YlLpV3/A
	E/wXeXS80LBJXlmIfRByKUNJhwdN6F6C79jsmPw8UDcYl4NhCXmItcrCoYarvvLGvafu+2+Dqs/
	ZVA2I3MXeKWB0pT0IJsQ8Q8ALB993ApTC5C2O9+B9Vq7aTg1GGnwIEb39kasjRUzvFaWc/Q=
X-Google-Smtp-Source: AGHT+IE2fvUTplc629GXhMiYkYYmY7/ekjLGkd6x/Utm4fEUGlUkylM4nyLFo8l3fkyBWJPLc/U7HQ==
X-Received: by 2002:a05:6000:1a41:b0:38c:1281:260d with SMTP id ffacd0b85a97d-38c51b5ee9fmr1571798f8f.31.1738148712977;
        Wed, 29 Jan 2025 03:05:12 -0800 (PST)
Received: from [127.0.1.1] (host-95-245-235-245.retail.telecomitalia.it. [95.245.235.245])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a17d7a7sm17107364f8f.32.2025.01.29.03.05.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 03:05:11 -0800 (PST)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Wed, 29 Jan 2025 12:03:07 +0100
Subject: [PATCH v3 06/10] iio: adc: adi-axi-adc: add platform children
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-6-c3aec77c0ab7@baylibre.com>
References: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-0-c3aec77c0ab7@baylibre.com>
In-Reply-To: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-0-c3aec77c0ab7@baylibre.com>
To: Michael Hennerich <michael.hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandru Ardelean <aardelean@baylibre.com>, 
 David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Guillaume Stols <gstols@baylibre.com>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Guillaume Stols <gstols@baylibre.com>

This is a preparation for the next commit adding support for register
read and write functions on AD7606.
Since sometimes a bus will be used, it has been agreed during ad3552's
driver implementation that the device's driver bus is the backend, whose
device node will be a child node.
To provide the special callbacks for setting the register, axi-adc needs
to pass them to the child device's driver through platform data.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
Co-developed-by: Angelo Dureghello <adureghello@baylibre.com>
Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/adc/ad7606_bus_iface.h | 16 ++++++++
 drivers/iio/adc/adi-axi-adc.c      | 84 ++++++++++++++++++++++++++++++++++----
 2 files changed, 91 insertions(+), 9 deletions(-)

diff --git a/drivers/iio/adc/ad7606_bus_iface.h b/drivers/iio/adc/ad7606_bus_iface.h
new file mode 100644
index 000000000000..d8d39822e2a9
--- /dev/null
+++ b/drivers/iio/adc/ad7606_bus_iface.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (c) 2010-2024 Analog Devices Inc.
+ * Copyright (c) 2024 Baylibre, SAS
+ */
+#ifndef __LINUX_PLATFORM_DATA_AD7606_H__
+#define __LINUX_PLATFORM_DATA_AD7606_H__
+
+struct iio_backend;
+
+struct ad7606_platform_data {
+	int (*bus_reg_read)(struct iio_backend *back, u32 reg, u32 *val);
+	int (*bus_reg_write)(struct iio_backend *back, u32 reg, u32 val);
+};
+
+#endif /* __LINUX_PLATFORM_DATA_AD7606_H__ */
diff --git a/drivers/iio/adc/adi-axi-adc.c b/drivers/iio/adc/adi-axi-adc.c
index c7357601f0f8..0923565cf5bb 100644
--- a/drivers/iio/adc/adi-axi-adc.c
+++ b/drivers/iio/adc/adi-axi-adc.c
@@ -80,7 +80,18 @@
 	 ADI_AXI_REG_CHAN_CTRL_FMT_EN |		\
 	 ADI_AXI_REG_CHAN_CTRL_ENABLE)
 
+struct axi_adc_info {
+	unsigned int version;
+	const struct iio_backend_info *backend_info;
+	bool bus_controller;
+	const void *pdata;
+	unsigned int pdata_sz;
+};
+
 struct adi_axi_adc_state {
+	/* Target ADC platform device */
+	struct platform_device *adc_pdev;
+	const struct axi_adc_info *info;
 	struct regmap *regmap;
 	struct device *dev;
 	/* lock to protect multiple accesses to the device registers */
@@ -325,6 +336,38 @@ static const struct regmap_config axi_adc_regmap_config = {
 	.reg_stride = 4,
 };
 
+static void axi_adc_child_remove(void *data)
+{
+	platform_device_unregister(data);
+}
+
+static int axi_adc_create_platform_device(struct adi_axi_adc_state *st,
+					  struct fwnode_handle *child)
+{
+	struct platform_device_info pi = {
+		.parent = st->dev,
+		.name = fwnode_get_name(child),
+		.id = PLATFORM_DEVID_AUTO,
+		.fwnode = child,
+		.data = st->info->pdata,
+		.size_data = st->info->pdata_sz,
+	};
+	struct platform_device *pdev;
+	int ret;
+
+	pdev = platform_device_register_full(&pi);
+	if (IS_ERR(pdev))
+		return PTR_ERR(pdev);
+
+	ret = devm_add_action_or_reset(st->dev, axi_adc_child_remove, pdev);
+	if (ret)
+		return ret;
+
+	st->adc_pdev = pdev;
+
+	return 0;
+}
+
 static const struct iio_backend_ops adi_axi_adc_ops = {
 	.enable = axi_adc_enable,
 	.disable = axi_adc_disable,
@@ -348,7 +391,6 @@ static const struct iio_backend_info adi_axi_adc_generic = {
 
 static int adi_axi_adc_probe(struct platform_device *pdev)
 {
-	const unsigned int *expected_ver;
 	struct adi_axi_adc_state *st;
 	void __iomem *base;
 	unsigned int ver;
@@ -370,8 +412,8 @@ static int adi_axi_adc_probe(struct platform_device *pdev)
 		return dev_err_probe(&pdev->dev, PTR_ERR(st->regmap),
 				     "failed to init register map\n");
 
-	expected_ver = device_get_match_data(&pdev->dev);
-	if (!expected_ver)
+	st->info = device_get_match_data(&pdev->dev);
+	if (!st->info)
 		return -ENODEV;
 
 	clk = devm_clk_get_enabled(&pdev->dev, NULL);
@@ -391,12 +433,13 @@ static int adi_axi_adc_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	if (ADI_AXI_PCORE_VER_MAJOR(ver) != ADI_AXI_PCORE_VER_MAJOR(*expected_ver)) {
+	if (ADI_AXI_PCORE_VER_MAJOR(ver) !=
+	    ADI_AXI_PCORE_VER_MAJOR(st->info->version)) {
 		dev_err(&pdev->dev,
 			"Major version mismatch. Expected %d.%.2d.%c, Reported %d.%.2d.%c\n",
-			ADI_AXI_PCORE_VER_MAJOR(*expected_ver),
-			ADI_AXI_PCORE_VER_MINOR(*expected_ver),
-			ADI_AXI_PCORE_VER_PATCH(*expected_ver),
+			ADI_AXI_PCORE_VER_MAJOR(st->info->version),
+			ADI_AXI_PCORE_VER_MINOR(st->info->version),
+			ADI_AXI_PCORE_VER_PATCH(st->info->version),
 			ADI_AXI_PCORE_VER_MAJOR(ver),
 			ADI_AXI_PCORE_VER_MINOR(ver),
 			ADI_AXI_PCORE_VER_PATCH(ver));
@@ -408,6 +451,26 @@ static int adi_axi_adc_probe(struct platform_device *pdev)
 		return dev_err_probe(&pdev->dev, ret,
 				     "failed to register iio backend\n");
 
+	if (st->info->bus_controller) {
+		device_for_each_child_node_scoped(&pdev->dev, child) {
+			int val;
+
+			/* Processing only reg 0 node */
+			ret = fwnode_property_read_u32(child, "reg", &val);
+			if (ret || val != 0)
+				continue;
+
+			ret = fwnode_property_read_u32(child, "io-backends",
+						       &val);
+			if (ret)
+				continue;
+
+			ret = axi_adc_create_platform_device(st, child);
+			if (ret)
+				return ret;
+		}
+	}
+
 	dev_info(&pdev->dev, "AXI ADC IP core (%d.%.2d.%c) probed\n",
 		 ADI_AXI_PCORE_VER_MAJOR(ver),
 		 ADI_AXI_PCORE_VER_MINOR(ver),
@@ -416,11 +479,14 @@ static int adi_axi_adc_probe(struct platform_device *pdev)
 	return 0;
 }
 
-static unsigned int adi_axi_adc_10_0_a_info = ADI_AXI_PCORE_VER(10, 0, 'a');
+static const struct axi_adc_info adc_generic = {
+	.version = ADI_AXI_PCORE_VER(10, 0, 'a'),
+	.backend_info = &adi_axi_adc_generic,
+};
 
 /* Match table for of_platform binding */
 static const struct of_device_id adi_axi_adc_of_match[] = {
-	{ .compatible = "adi,axi-adc-10.0.a", .data = &adi_axi_adc_10_0_a_info },
+	{ .compatible = "adi,axi-adc-10.0.a", .data = &adc_generic },
 	{ /* end of list */ }
 };
 MODULE_DEVICE_TABLE(of, adi_axi_adc_of_match);

-- 
2.47.0


