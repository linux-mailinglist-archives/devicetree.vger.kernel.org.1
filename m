Return-Path: <devicetree+bounces-144763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C722A2F2C6
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 17:13:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D48821888513
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 16:13:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 981DA24FBE3;
	Mon, 10 Feb 2025 16:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="j0JhJKw3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3107259499
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739203977; cv=none; b=N3zRtvVCSrPyhsEdf6f4LNJQO73cnVClAHldONEP2VgwRnDr1FRXhoWKTxSY1dYyLju7QTyrHdFoR/Dog5tnzrL2kcIOI8azQx5LlxQagdamcx1gy3Z0lukdGUTWa0pVvx1V+2IBh2XilEpa5IJTXSVQyqjAan8vmgbEvHWNSUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739203977; c=relaxed/simple;
	bh=B5IY8sIP4gGC//Ma1JKc6dnncjGjGxHJYxsumbltiUQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=O2buxV8qLYoa1r759woPVyQUaWHo77ss/8OQMT+d/9lwg0+vYmQiRuigfr3opWRHWDcPgjWgiTq8lQRLGuiHQAKjA0ZNh5n+kxr0vDrt6EyiO6MK6T+sI2THWSS5RkOouzFZAmmciva0SYjg3iIgq5ST3bOfnUoTdqIEx0daLrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=j0JhJKw3; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4361815b96cso30640775e9.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 08:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739203972; x=1739808772; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Hn2hao0NOkqkUCBDvG2L0twm52DR6qAULRA/ZirsiU=;
        b=j0JhJKw3rHKQAYaUPOhF6c8VCvo1BGkIlKzayN51CZwL3jjhu30VV/JTaiFI7z5Z/E
         3deJWkLLfsDS20i3SKN9ARONKLXivNQZLFPKiJAzWRZ+jZG0AQpTUmGQM6II6L6fZvFV
         iJSRvYuHOLdGH1oLoEYVbNj63hY2XwONdtrk6eUYmESGQo+C+k5IjJqS4iZRJRnModAm
         rnSb5bNXIjNByGbCfdWly9TLmc+aPYoPVvdJHzcvsKB/S2bcy9o0/CVpsOSGQ2I0xJ5c
         edRiIkCG+Rtwh9bf9BhdTCamec/6tflorYkOYifmtGpnDwlNUk/x1cFuYAtFzbmGLh1E
         9xjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739203972; x=1739808772;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Hn2hao0NOkqkUCBDvG2L0twm52DR6qAULRA/ZirsiU=;
        b=GoNJJtRBRZWhDvckTo5mGFfdOBjhf2bIAcYutMFjz3uf4wTa8YZe+AL4ZCgz7ja6jM
         A9l77IzAjciq6zb7QepJIlu0o06Ck5VzeyJKaVDMn/4PVP2LDo/RzZN2imrI91tEacyQ
         28qTc9XBdgDOq94+zA0CiAAMOhZcfSnC/OnjtU2tRdCnVQdjYJIeLJ4hnndYZ4shsL9V
         mduoVp2qTaaPt37lTYLUAtwnxWHUTEEVALiBNS1jyMeF+rV/+6YBknBmRn9pAmHtraSi
         ddFG4h95VqAGpdffmz6DBXc3axaQRuo+uKRgjN2n6Fvz1buyqmKpYioTng2wZ4Gmyy79
         sCVg==
X-Forwarded-Encrypted: i=1; AJvYcCVC0rYbxOPftDe8meZ4utW1j2r+pjhFK0ecIWyQIa2X8/BRxt3anhHNhU+xzTusRhN6L+iow17DZZrJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzghcJiJ6njcLaQtEFS7U6B1pGpgM7wGB9TbWD3Y35vaFtMHskl
	MIj1prIA+A2ZvdmhL8Vo+EOjVpXauV1Hx1Ea3EI/bM9IlWlCrwyqOpJwlBpViHM=
X-Gm-Gg: ASbGncuysaNMY17fWgO//xSgBYf9Xc2u15KKmN2pypdzzxSogxo1+ca7d+CX10DcfRB
	NmKQAm1WtUd6VoHiVltGFISfzbhi73OknEzpyGkd1+XGYjtfIi1r3QBlO0HCfw/Kv3ZnMcyvQMA
	OMIDbPh6eh9mb2jQWAxeuovmdwhAKdc0p5o4ijkIFEvfBjsss+8eTDOFgjPeL2KB45RZzbXc9do
	djqDNNVNmE5aWjbsgDbSOo05htvQ30YSWou/N6viXfejKd+2tMZzDyMacgiuL8NhUomadpdVH3/
	PVxSnvacM1knT46Ewg2BqAAJxg96SJO416Rh6Kz4E/s5Xy8//yDZgRMstJb+3kY=
X-Google-Smtp-Source: AGHT+IG+Ta5SefNzrXZQv8f47DmZIQzG6z/VRvRAiXpN5x26tdYC8T+sHD2dKTEKhoPsudvtdFOnHA==
X-Received: by 2002:a05:600c:3b1a:b0:439:44eb:2d84 with SMTP id 5b1f17b1804b1-43944eb3121mr33206385e9.9.1739203972062;
        Mon, 10 Feb 2025 08:12:52 -0800 (PST)
Received: from [127.0.1.1] (host-87-8-15-130.retail.telecomitalia.it. [87.8.15.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391dc9ffcdsm146637945e9.15.2025.02.10.08.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 08:12:51 -0800 (PST)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Mon, 10 Feb 2025 17:10:54 +0100
Subject: [PATCH v4 4/9] iio: adc: adi-axi-adc: add struct axi_adc_info
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250210-wip-bl-ad7606_add_backend_sw_mode-v4-4-160df18b1da7@baylibre.com>
References: <20250210-wip-bl-ad7606_add_backend_sw_mode-v4-0-160df18b1da7@baylibre.com>
In-Reply-To: <20250210-wip-bl-ad7606_add_backend_sw_mode-v4-0-160df18b1da7@baylibre.com>
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

From: Angelo Dureghello <adureghello@baylibre.com>

Add struct axi_adc_info to allow different axi-adc compatibles that can
be added to this generic implementation.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/adc/adi-axi-adc.c | 30 +++++++++++++++++++++---------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/iio/adc/adi-axi-adc.c b/drivers/iio/adc/adi-axi-adc.c
index c7357601f0f8..b38e8a27af94 100644
--- a/drivers/iio/adc/adi-axi-adc.c
+++ b/drivers/iio/adc/adi-axi-adc.c
@@ -80,7 +80,16 @@
 	 ADI_AXI_REG_CHAN_CTRL_FMT_EN |		\
 	 ADI_AXI_REG_CHAN_CTRL_ENABLE)
 
+struct axi_adc_info {
+	unsigned int version;
+	const struct iio_backend_info *backend_info;
+	bool has_child_nodes;
+	const void *pdata;
+	unsigned int pdata_sz;
+};
+
 struct adi_axi_adc_state {
+	const struct axi_adc_info *info;
 	struct regmap *regmap;
 	struct device *dev;
 	/* lock to protect multiple accesses to the device registers */
@@ -348,7 +357,6 @@ static const struct iio_backend_info adi_axi_adc_generic = {
 
 static int adi_axi_adc_probe(struct platform_device *pdev)
 {
-	const unsigned int *expected_ver;
 	struct adi_axi_adc_state *st;
 	void __iomem *base;
 	unsigned int ver;
@@ -370,8 +378,8 @@ static int adi_axi_adc_probe(struct platform_device *pdev)
 		return dev_err_probe(&pdev->dev, PTR_ERR(st->regmap),
 				     "failed to init register map\n");
 
-	expected_ver = device_get_match_data(&pdev->dev);
-	if (!expected_ver)
+	st->info = device_get_match_data(&pdev->dev);
+	if (!st->info)
 		return -ENODEV;
 
 	clk = devm_clk_get_enabled(&pdev->dev, NULL);
@@ -391,12 +399,13 @@ static int adi_axi_adc_probe(struct platform_device *pdev)
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
@@ -416,11 +425,14 @@ static int adi_axi_adc_probe(struct platform_device *pdev)
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


