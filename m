Return-Path: <devicetree+bounces-109113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A819953B9
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 17:47:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 379BC1F22CD2
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 15:47:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6E0A1E1A2C;
	Tue,  8 Oct 2024 15:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VfEk4aVw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2DF1E1A09
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 15:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728402337; cv=none; b=S5Os7ZLwqctIhF4VEFf/kcS87NjH1XtkC9BR1rI2yeoyG1MVPCsHcvhyQflPPUMBfcI91zyVOANhNpHprDCz2uWRDGnVu1z3QpZK7gJYLwC0HvecriB4NNNCQoxioR3GBUHdEwdY3SfUeUYoPGyzBLTo/6eSoRDo2kWcRhMi6vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728402337; c=relaxed/simple;
	bh=PQ48ZK/gm5V8RwwxhBBMo4/sqXLf2kkI+gpNiFs5sCY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NAStBiK9EeakWCPfQnUXmU4gBVlNzQIbzYgH3fa2Y/fYOBcV/zLzomuqFX6erOU9OB06S/gpe9mlQ4ayIPw3vgXhi2cd/EYCMfkXDQ3EsGP0WVRsXVsDGwdEkRK30itBnvI/wmKqr/31f9vbx1YDwGHk9DJT0l5PL1y1YKviSww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VfEk4aVw; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42cbbb1727eso59095385e9.2
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 08:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728402334; x=1729007134; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GuOiGtFFTA51SDVW4bz4lupIQm3oJJ9qZOAEL77L5ww=;
        b=VfEk4aVwzSZ7JnnJynSrrGgq7rYMxjy6wyyfWfbNpR6cz03WybTsi3HUnZ5DhpBhs7
         ZR0SX2ohrO/f+MM5aNC5w8O/WGBBluYP9ELcvlPWdRlM4SMgCHl5IzEVUZAv7AV+5xeL
         HJLgBXRrmSqf/KL9A7PgQs4EarJTbiqMCw4+1AbfYE1VWUD6JTZXbu1KFr3OFSonIu7+
         F/l5eZuV4DHQqkYoYNTtIlmXZXFLCI+wWAW123WHM1bSBeSPf/1cs4nRJKE7i6FBtf68
         b3fj0Cnr4dAHfEZFZ+f6pzYpZg59Ty7iqgoXILjVajmPIHT6we2plWRJ1WewdAXqWAj7
         MDzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728402334; x=1729007134;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GuOiGtFFTA51SDVW4bz4lupIQm3oJJ9qZOAEL77L5ww=;
        b=XHP3/EEIdhU1oHcNRwH8AHhBKyUdfigZ85ka+5EZrjAwWjpIeTES7BeNP+QV9jQFt7
         xVTNDDn0ym+PdbLNK5kCdCjk66VHuMXY+TfaKECCSi2bkusbXeogXYio1x+ycMTDvzJU
         ptlgsh6bFLpaL+xsNeROfisNFXh5Uid42NxxYCVBgbdvANtE7QozFKQko2ZmDMmG3B5s
         rRDizS1rX6gJm8DHM4VyIXW1QZBvk0f9uokszpIyY9HvKDfyWI9xFtPCAchGDTeq1YeI
         KyKwUu73rC0WsudczkyTakYQc6VXNnkkUGwVJm5bgCxpHpT5QSfDYSpzCG1gYgcoA+oj
         jbEw==
X-Forwarded-Encrypted: i=1; AJvYcCV7hSSEqWFjzaxzGfVO8ZiWlW7pH24LEtGbf2nthW+AbFpt4UnSe9ZCa/CFHMjm6hruFEuVz46Iqmy1@vger.kernel.org
X-Gm-Message-State: AOJu0YzRrut+6XTl85dx7iicpk/DWh77cfDapadWWbz6oPNGwf6k5+vg
	0zK5eeaUemK2HK1rQ73trbgVrXwDbZrwnDE3WSWLZb1fBJwKN3H3mJZEzP9PoBm3yFuXQ1bpDqW
	g
X-Google-Smtp-Source: AGHT+IFVeDFFk6SjqajEbyi3OHIairo+zCYttkXRHgARAywEq/mQn5V3mRTGxo7c/TA6cLpCqKv77Q==
X-Received: by 2002:a05:600c:1da7:b0:42f:8d36:855e with SMTP id 5b1f17b1804b1-42f8d368710mr96417425e9.5.1728402333703;
        Tue, 08 Oct 2024 08:45:33 -0700 (PDT)
Received: from [127.0.1.1] (host-79-54-25-3.retail.telecomitalia.it. [79.54.25.3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f86b1d826sm129591215e9.26.2024.10.08.08.45.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 08:45:31 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Tue, 08 Oct 2024 17:43:42 +0200
Subject: [PATCH v5 10/10] iio: dac: adi-axi-dac: add registering of child
 fdt node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241008-wip-bl-ad3552r-axi-v0-iio-testing-v5-10-3d410944a63d@baylibre.com>
References: <20241008-wip-bl-ad3552r-axi-v0-iio-testing-v5-0-3d410944a63d@baylibre.com>
In-Reply-To: <20241008-wip-bl-ad3552r-axi-v0-iio-testing-v5-0-3d410944a63d@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Nuno Sa <nuno.sa@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, dletchner@baylibre.com, 
 Mark Brown <broonie@kernel.org>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Angelo Dureghello <adureghello@baylibre.com>

Change to obtain the fdt use case as reported in the
adi,ad3552r.yaml file in this patchset.

The DAC device is defined as a child node of the backend.
Registering the child fdt node as a platform devices.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/dac/adi-axi-dac.c | 61 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/drivers/iio/dac/adi-axi-dac.c b/drivers/iio/dac/adi-axi-dac.c
index e43d0ecccb50..754c4061d0e3 100644
--- a/drivers/iio/dac/adi-axi-dac.c
+++ b/drivers/iio/dac/adi-axi-dac.c
@@ -18,6 +18,7 @@
 #include <linux/module.h>
 #include <linux/mod_devicetable.h>
 #include <linux/mutex.h>
+#include <linux/platform_data/ad3552r-hs.h>
 #include <linux/platform_device.h>
 #include <linux/property.h>
 #include <linux/regmap.h>
@@ -108,6 +109,8 @@ struct axi_dac_info {
 struct axi_dac_state {
 	struct regmap *regmap;
 	struct device *dev;
+	/* Target DAC platform device */
+	struct platform_device *dac_pdev;
 	/*
 	 * lock to protect multiple accesses to the device registers and global
 	 * data/variables.
@@ -750,6 +753,44 @@ static int axi_dac_bus_reg_read(struct iio_backend *back, u32 reg, u32 *val,
 	return regmap_read(st->regmap, AXI_DAC_CUSTOM_RD_REG, val);
 }
 
+static void axi_dac_child_remove(void *data)
+{
+	struct axi_dac_state *st = data;
+
+	platform_device_unregister(st->dac_pdev);
+}
+
+static int axi_dac_create_platform_device(struct axi_dac_state *st,
+					  struct fwnode_handle *child)
+{
+	struct ad3552r_hs_platform_data pdata = {
+		.bus_reg_read = axi_dac_bus_reg_read,
+		.bus_reg_write = axi_dac_bus_reg_write,
+	};
+	struct platform_device_info pi = {
+		.parent = st->dev,
+		.name = fwnode_get_name(child),
+		.id = PLATFORM_DEVID_AUTO,
+		.fwnode = child,
+		.data = &pdata,
+		.size_data = sizeof(pdata),
+	};
+	struct platform_device *pdev;
+	int ret;
+
+	pdev = platform_device_register_full(&pi);
+	if (IS_ERR(pdev))
+		return PTR_ERR(pdev);
+
+	st->dac_pdev = pdev;
+
+	ret = devm_add_action_or_reset(st->dev, axi_dac_child_remove, st);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 static const struct iio_backend_ops axi_dac_generic_ops = {
 	.enable = axi_dac_enable,
 	.disable = axi_dac_disable,
@@ -886,6 +927,26 @@ static int axi_dac_probe(struct platform_device *pdev)
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
+			ret = axi_dac_create_platform_device(st, child);
+			if (ret)
+				continue;
+		}
+	}
+
 	dev_info(&pdev->dev, "AXI DAC IP core (%d.%.2d.%c) probed\n",
 		 ADI_AXI_PCORE_VER_MAJOR(ver),
 		 ADI_AXI_PCORE_VER_MINOR(ver),

-- 
2.45.0.rc1


