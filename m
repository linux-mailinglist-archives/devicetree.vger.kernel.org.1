Return-Path: <devicetree+bounces-123489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 223FA9D4AA6
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 11:19:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9CF671F22823
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 10:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44F391CCB26;
	Thu, 21 Nov 2024 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ULBJOm0P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A491D0954
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 10:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732184314; cv=none; b=CEY2rtKSWBghpTI3ZLaYcOg9aFDErBpoffa7E0IGlJqDA3Xb/AAe4qZe4e8PgBj6DSSupAk0hiWSOoPzdr7kxDS/i52y9Eukv8QAlVhe8xOJvtiiKiyrntaDj9JogMegLgLC8MTDcd086vWr8bnMB4ALcJGpi5iuPBV/fXSegxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732184314; c=relaxed/simple;
	bh=HHOSoPIWfNm0HnbAMkX8836VUfYDnNBWup0D9xZOL+0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q8Nc6Xqibslc7/DDUkqojDMIfBZ5qaQtmOVsL23f4IIwd1Y5gF6Fb/ItW2t6NdtaL2qpR5FyKiexnwRipZ2Ku851CKXkr2MFp0MxJGPeBZ86c8wDWAimFPi7inzEMqpoXpmkvcI6aYwqKk2CmEnCqTytUtXKOAnR2l6p0Kcj/xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ULBJOm0P; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-38231f84dccso474026f8f.1
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 02:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732184310; x=1732789110; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hi5bVanQGTryoQ83MNFt/N/BFoKRDteIDz8dPQygmAk=;
        b=ULBJOm0PZzk+p2S0GgBJKZU9eMgSLmhn43AlAOf/kbS9tKoWA0MrKh0X0+R1udseV1
         XP0LVlzz7rZefs6/6NF8IdoTt5RpBYyJk7QdEvQno0InzkmqXkr2tCMZXCDE2fw5wJJN
         WKs5mxTLlz4m4TEc2YxnOayIaRu/1ARKK7j7S/XYdF6V6sETdLxejWqOqSuDAmt8cBSq
         qgFs2Km8dh/6szfz9YG/kyK9aryduXvd8p5d7c81dt47351cG4J/yF2yNgbl1BvYtPAB
         FQ0cirLE0+vKhf0hAhXCRGgsSSPLrheE6RqF41N/jDTGOXmwvzGM9rNoYq+Ilt+7HVpG
         Tu6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732184310; x=1732789110;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hi5bVanQGTryoQ83MNFt/N/BFoKRDteIDz8dPQygmAk=;
        b=IFODh9MqUFfWpJXD7xztnDab3HqQz+a7wMsGUES4/VrbFiS8AVIflILeHw4crLkwOa
         U700yOwOY7ALGBPnsH4xK0liDxw/Xzz3RdgkpVmIj7nNGSjcKD6W+aDzWEpxwe8E03NA
         cPA5Sd3RAiOSObtplLqmOmnds08VeyqGKmHxUMTUK9bCWe9v/aSvGQVZRZBR0RHnYign
         wUMkXAlxxYY18cjWcYAUbdPv3p7eKD3uiIKFiZk3GNWv+MY8P+d3irdJehKmtNJxcbzV
         xYSlTX8JHwdbb3OpIARAquRh3oGyyFJv4fBVHlCkALWqpeWPTP7l81ORtXiCJh3jx8P4
         fjOQ==
X-Forwarded-Encrypted: i=1; AJvYcCU87nDR9GVu+tXkRykzCF5XZOXaGt0R4vaWsrihdbOygr4GwUH8lt0WT2SxDOBQUcCs4fKCZZ8ZNe8z@vger.kernel.org
X-Gm-Message-State: AOJu0Yxrv7XOXPoyDUGGpGKD99X1ogt7VbmS8xiK5hshx1i1k+7/LzFR
	kXK6t3EE/wz7FtysrtuIjKF0tDPohRcD3z7kWbNM/2chN4uSwZr8q65jkprb6E3VflSywwn1J4L
	G
X-Gm-Gg: ASbGncvaIXOK96rJRwtctFimPYg+DG5JAeLIHhsX0JbDoZIuIa3p62xzQFRCXXY4+t4
	391IZ9neOb08rJBaOZnqpNHP6MHCe9HYZXMF5Ay1Z8WL8cwZ5OHuKlKIYFxu75z3JCBXiSHsE6k
	0T+qt3LhPobYZ3NSMWsgjzw6G1tEBmr33j8wviwxbvAAHypj3G9TDyT3BQ9KNvdjBvuEVhdeSHP
	/p62deYWsaFAEmcb+cJ1Ee20d5DGoeRwdHpAR/oRHSFIK5VA7vpPvoxIWysrdAd9HfL4v/jqA==
X-Google-Smtp-Source: AGHT+IFhAX7+7XznixvsNJsjc3q81w2BiVcH2N32ixt+KbqUuzLZi9a/71WYWQUP9twJX5zY1CJQSg==
X-Received: by 2002:a5d:47a1:0:b0:382:511c:b994 with SMTP id ffacd0b85a97d-38254adec9emr4465833f8f.12.1732184309848;
        Thu, 21 Nov 2024 02:18:29 -0800 (PST)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38254910796sm4598065f8f.47.2024.11.21.02.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 02:18:29 -0800 (PST)
From: Guillaume Stols <gstols@baylibre.com>
Date: Thu, 21 Nov 2024 10:18:27 +0000
Subject: [PATCH 5/9] iio: adc: adi-axi-adc: Add platform children support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241121-ad7606_add_iio_backend_software_mode-v1-5-8a693a5e3fa9@baylibre.com>
References: <20241121-ad7606_add_iio_backend_software_mode-v1-0-8a693a5e3fa9@baylibre.com>
In-Reply-To: <20241121-ad7606_add_iio_backend_software_mode-v1-0-8a693a5e3fa9@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Nuno Sa <nuno.sa@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, dlechner@baylibre.com, jstephan@baylibre.com, 
 aardelean@baylibre.com, adureghello@baylibre.com, 
 Guillaume Stols <gstols@baylibre.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732184304; l=4168;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=HHOSoPIWfNm0HnbAMkX8836VUfYDnNBWup0D9xZOL+0=;
 b=cdgJjwHaT6JBL+245zHbg1ONOImGhBi77kCCrt1ejDxZ6LxMrlkvAbVlXXaXQZqBmbY+b/brp
 Mdb2kJjvKBBC/wdL8A0A2BEQq3sB2HTjGXGChTzLiJvEtD7V7UtCCa1
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

This is a preparation for the next commit adding support for register
read and write functions on AD7606.
Since sometimes a bus will be used, it has been agreed during ad3552's
driver implementation that the device's driver bus is the backend, whose
device node will be a child node.
To provide the special callbacks for setting the register, axi-adc needs
to pass them to the child device's driver through platform data.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 drivers/iio/adc/adi-axi-adc.c | 79 ++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 74 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/adc/adi-axi-adc.c b/drivers/iio/adc/adi-axi-adc.c
index 5c8c87eb36d1..704ebd6ea83e 100644
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
@@ -325,6 +336,40 @@ static const struct regmap_config axi_adc_regmap_config = {
 	.reg_stride = 4,
 };
 
+static void axi_adc_child_remove(void *data)
+{
+	struct adi_axi_adc_state *st = data;
+
+	platform_device_unregister(st->adc_pdev);
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
+	st->adc_pdev = pdev;
+
+	ret = devm_add_action_or_reset(st->dev, axi_adc_child_remove, st);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 static const struct iio_backend_ops adi_axi_adc_ops = {
 	.enable = axi_adc_enable,
 	.disable = axi_adc_disable,
@@ -370,7 +415,9 @@ static int adi_axi_adc_probe(struct platform_device *pdev)
 		return dev_err_probe(&pdev->dev, PTR_ERR(st->regmap),
 				     "failed to init register map\n");
 
-	expected_ver = device_get_match_data(&pdev->dev);
+	st->info = device_get_match_data(&pdev->dev);
+
+	expected_ver = &st->info->version;
 	if (!expected_ver)
 		return -ENODEV;
 
@@ -408,6 +455,25 @@ static int adi_axi_adc_probe(struct platform_device *pdev)
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
+			ret = fwnode_property_read_u32(child, "io-backends",
+						       &val);
+			if (ret)
+				continue;
+
+			ret = axi_adc_create_platform_device(st, child);
+			if (ret)
+				continue;
+		}
+	}
+
 	dev_info(&pdev->dev, "AXI ADC IP core (%d.%.2d.%c) probed\n",
 		 ADI_AXI_PCORE_VER_MAJOR(ver),
 		 ADI_AXI_PCORE_VER_MINOR(ver),
@@ -416,12 +482,15 @@ static int adi_axi_adc_probe(struct platform_device *pdev)
 	return 0;
 }
 
-static unsigned int adi_axi_adc_10_0_a_info = ADI_AXI_PCORE_VER(10, 0, 'a');
+static const struct axi_adc_info adc_generic = {
+	.version = ADI_AXI_PCORE_VER(10, 0, 'a'),
+	.backend_info = &adi_axi_adc_generic,
+};
+
 
-/* Match table for of_platform binding */
 static const struct of_device_id adi_axi_adc_of_match[] = {
-	{ .compatible = "adi,axi-adc-10.0.a", .data = &adi_axi_adc_10_0_a_info },
-	{ /* end of list */ }
+	{ .compatible = "adi,axi-adc-10.0.a", .data = &adc_generic },
+	{  }
 };
 MODULE_DEVICE_TABLE(of, adi_axi_adc_of_match);
 

-- 
2.34.1


