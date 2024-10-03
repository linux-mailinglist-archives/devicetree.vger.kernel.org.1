Return-Path: <devicetree+bounces-107633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B070698F537
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 19:33:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4CA15B22016
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 17:33:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D25451BFE01;
	Thu,  3 Oct 2024 17:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zRvINnFH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C6C1B85FF
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 17:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727976654; cv=none; b=JfPkxWCyMr67hZzH/7qII8fpYBnQwIRT1x/600xLM2q9C6I09i1VDYVXRaOYCkz2lYmUPth8BRuXFCqqavVkcxE0uKlK2Qi/e9Z2aPXRm7j+2Sc59eu2+5wPMmZlDeMhgNC48+sPENXW53tpIE0bK7CtnpYLCE1H4zPGYH7xvhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727976654; c=relaxed/simple;
	bh=8dHTKjCZVNMcsze3dDDJ4oS+kMea10P4y0F/Tg+NNnM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VLSECmSucZDpllEb1AI+AaGOxbYFj7elYy73thFg+D4yaAqVe80XdHHYA332pEXsu/gAfH2W6Qlzyoxbl5Gv7/nWKIXz2CV5YqDuLjBBACOWQTausb2igVZpFnbkbd9AnGuuJKE2CWokge8zyKPpbgNWPHusBgOlb2U2dJS9sWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zRvINnFH; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-37cdac05af9so1227153f8f.0
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 10:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727976651; x=1728581451; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uO+WBbOmHlGwifz4VwZoKFqxk2R06ItHz0cGV8i9Sjs=;
        b=zRvINnFHuOba9Z5xVHEAVZ7o3V2koCkkc/aI8iFkPyIKbRz80bZPrX5u4fv7bxrVlr
         5d8kNOZnWh1Y4eymcjjGLPkYCusrx1d9OXVbmWSSG9zjsm6G3Zatbc40BtfkSbJotquA
         wGaTtOZyGJwZ9anAJiMI4YRfzz/wP2trtGB4GM0JLYuPn+imAKzWSweKrVhkhMplV+m1
         fK2Qb6G3I0blfwOaIy0nTVwJXTANhXkRVKhjpQz2p4qh8X6/j7ypMaBQl5551q7Onni/
         LZ70JbsEDe5r+6qjUmL0Fh3IBzc9hHR6sOeg/BZg2kPdQ/JDF7Old3mEUHH+QnBT6QFT
         Qw2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727976651; x=1728581451;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uO+WBbOmHlGwifz4VwZoKFqxk2R06ItHz0cGV8i9Sjs=;
        b=tftSw/nXSqyBvE32ektYH7G8xv5TlzlJ/Y+KipRzdorxLL026Te/8wxF0HO9ZqicLa
         kpLetVOqsSinTknJrJxp53aFxlXBR6GNWhJ8Ryb7qeF1papS3ZELPmkM26Y8USqWT37B
         uXkDYpwz+medkDYHnf6OqincEK1MWnqKRvOQNRJETBxpXOK6EXeIcgQTCCuNOO2xNdKg
         OuLMdFIkvTBCKOLURP08xR/gRCQy0QIeM2CZkFF2FXY+VQRaQfWlzD+UdsC5TM+gWA7j
         9XFq+47hVBDTfsdoGrSnO1q0hjVrHE97YojzvMBRs8IqI88obKLV16ph1HoRIOLwdH8c
         UTOw==
X-Forwarded-Encrypted: i=1; AJvYcCVeyMt/1eykIlrCRBP3H3gynpTzkPio7vL/XEFn93aUH+PxN6JDMPXKvh4nQLS0EgIU4z5iToo7E5UF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5/ksks4A66oYivOv8SDkbifsGVCire545SaVJesH+hkLFqHKk
	TO3s7Yw7V+fL15I8fEdr4i1U3OgvrBbDyxnUzchJXWe1kBAwNTzQZfKsiok4TGc=
X-Google-Smtp-Source: AGHT+IG279V9qh1sV37G+COHQjzoPmiNRlyjseX5xpB3bVBYQ84Ug8hMAcGFR6glKEubq8D8wPCW/g==
X-Received: by 2002:adf:ebcb:0:b0:374:c658:706e with SMTP id ffacd0b85a97d-37d0e8db679mr115278f8f.39.1727976651472;
        Thu, 03 Oct 2024 10:30:51 -0700 (PDT)
Received: from [127.0.1.1] (host-79-54-25-3.retail.telecomitalia.it. [79.54.25.3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d082d116asm1703735f8f.90.2024.10.03.10.30.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 10:30:50 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 03 Oct 2024 19:29:08 +0200
Subject: [PATCH v4 11/11] iio: dac: adi-axi-dac: add registering of child
 fdt node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241003-wip-bl-ad3552r-axi-v0-iio-testing-v4-11-ceb157487329@baylibre.com>
References: <20241003-wip-bl-ad3552r-axi-v0-iio-testing-v4-0-ceb157487329@baylibre.com>
In-Reply-To: <20241003-wip-bl-ad3552r-axi-v0-iio-testing-v4-0-ceb157487329@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Nuno Sa <nuno.sa@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mihail Chindris <mihail.chindris@analog.com>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, devicetree@vger.kernel.org, 
 dlechner@baylibre.com, Mark Brown <broonie@kernel.org>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Angelo Dureghello <adureghello@baylibre.com>

Change to obtain the fdt use case as reported in the
adi,ad3552r.yaml file in this patchset.

The DAC device is defined as a child node of the backend.
Registering the child fdt node as a platform devices.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/dac/adi-axi-dac.c | 62 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/drivers/iio/dac/adi-axi-dac.c b/drivers/iio/dac/adi-axi-dac.c
index a4147231cd57..c0d965560546 100644
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
@@ -107,6 +108,8 @@ struct axi_dac_info {
 struct axi_dac_state {
 	struct regmap *regmap;
 	struct device *dev;
+	/* Target DAC platform device */
+	struct platform_device *dac_pdev;
 	/*
 	 * lock to protect multiple accesses to the device registers and global
 	 * data/variables.
@@ -750,6 +753,45 @@ static int axi_dac_bus_reg_read(struct iio_backend *back, u32 reg, u32 *val,
 	return regmap_read(st->regmap, AXI_DAC_CUSTOM_RD_REG, val);
 }
 
+static void axi_dac_child_remove(void *data)
+{
+	struct axi_dac_state *st = data;
+
+	if (st->dac_pdev)
+		platform_device_unregister(st->dac_pdev);
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
+	ret = devm_add_action_or_reset(st->dev, axi_dac_child_remove, st);
+	if (ret)
+		return ret;
+
+	st->dac_pdev = pdev;
+
+	return 0;
+}
+
 static const struct iio_backend_ops axi_dac_generic_ops = {
 	.enable = axi_dac_enable,
 	.disable = axi_dac_disable,
@@ -874,6 +916,26 @@ static int axi_dac_probe(struct platform_device *pdev)
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


