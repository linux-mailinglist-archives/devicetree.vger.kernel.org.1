Return-Path: <devicetree+bounces-5913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 998997B857B
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 18:39:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 99FDC281839
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 16:39:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DA9E1C287;
	Wed,  4 Oct 2023 16:39:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97A31BDFF
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 16:39:37 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::221])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE980C0;
	Wed,  4 Oct 2023 09:39:34 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id C8488240002;
	Wed,  4 Oct 2023 16:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696437573;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MoL7tK/sFHlVwmkaF58wS2KqlyZYUgDZWDR3PVlkupE=;
	b=EeIP1pmbPB4UEYGgstYTh/lmdthejHe4/FFLflsZRL+bQMujIgkkiA5LkFtc1qnlK11wjZ
	n/THbQQkDOa88yXwfGKTa1fQbZKoHcze/VmgaCP/Rtw58Y9/3sTNbaM0Tooy6nn86su1F/
	C4iNR3Vz/wB22JnadJdYpeOM4JhhON1crG3J6DMHaxBPIccUp5ToUBOrQf25bzwBhEflaH
	SD13HVFaWua+Futq9F5QRi8pe1/vHKBhFjKbsYm1Z3cuDI8fsLR46Sz2+RXc5BdAQf4SUN
	2sVnc/1HqBgwg6kgMfpNTJn/AEUZIY1f8YCgvs4UtIELD9MQfMZyfO8d3bEnUQ==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Wed, 04 Oct 2023 18:39:28 +0200
Subject: [PATCH 2/2] iio: accel: mxc4005: allow module autoloading via OF
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231004-mxc4005-device-tree-support-v1-2-e7c0faea72e4@bootlin.com>
References: <20231004-mxc4005-device-tree-support-v1-0-e7c0faea72e4@bootlin.com>
In-Reply-To: <20231004-mxc4005-device-tree-support-v1-0-e7c0faea72e4@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.12.3
X-GND-Sasl: luca.ceresoli@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add OF device table with compatible strings to allow automatic module
loading.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 drivers/iio/accel/mxc4005.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/iio/accel/mxc4005.c b/drivers/iio/accel/mxc4005.c
index 75d142bc14b4..41182531feb5 100644
--- a/drivers/iio/accel/mxc4005.c
+++ b/drivers/iio/accel/mxc4005.c
@@ -476,6 +476,13 @@ static const struct acpi_device_id mxc4005_acpi_match[] = {
 };
 MODULE_DEVICE_TABLE(acpi, mxc4005_acpi_match);
 
+static const struct of_device_id mxc4005_of_match[] = {
+	{ .compatible = "memsic,mxc4005", },
+	{ .compatible = "memsic,mxc6655", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, mxc4005_of_match);
+
 static const struct i2c_device_id mxc4005_id[] = {
 	{"mxc4005",	0},
 	{"mxc6655",	0},
@@ -487,6 +494,7 @@ static struct i2c_driver mxc4005_driver = {
 	.driver = {
 		.name = MXC4005_DRV_NAME,
 		.acpi_match_table = ACPI_PTR(mxc4005_acpi_match),
+		.of_match_table = mxc4005_of_match,
 	},
 	.probe		= mxc4005_probe,
 	.id_table	= mxc4005_id,

-- 
2.34.1


