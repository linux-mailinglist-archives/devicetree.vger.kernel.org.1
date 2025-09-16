Return-Path: <devicetree+bounces-217760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A82B592C4
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:53:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CADC32194D
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B27572BE043;
	Tue, 16 Sep 2025 09:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LzFZqaXm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99F629BD91
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 09:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758016372; cv=none; b=JKbs+TwyVS1siK+VMlYSjbPqJjT9mIXg30pbfK1SHDqXznL4guSl6QwfVbECTnPFLH3PB/820FMsj/NsM6juVn2JPHZ/UCLbfk0n2fOee5qfNCA3wugdfPLwv3j0z4dNG9EKSwyUFHG6KC1BLTH/rzJQIfz5IwQ6odQsLfi84x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758016372; c=relaxed/simple;
	bh=GMzo4G/K64hUgE+aHnc+wOYatYFyjlLEAeAZYwZxris=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dEpCbgZhFv0y1tmZKzTExqBt5XTjm4Ss0qC37zA7CrhNlKHAccd8p46JNN7tlohxr87CYajiPdbBFbIC+X886RjTv3aPXiL0ALrCt+Vdiab6h/zHPUd6kZQwBpfMz+nU/mSwLp6eZsEn6qWUoZ/zjSlJiD80SQ+7EA9jvw7Ocig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LzFZqaXm; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b54b301d621so3305534a12.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758016369; x=1758621169; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=49QsBXiYXTpwW15ExZiEsCuxBVACiimdNLk2zhQ/sDM=;
        b=LzFZqaXmRf5tFdb7bf0dtd/95SZiusiKCKTzeFHeiPz7NjorZOp1oCFpkSdqOSLkEd
         EoC0nAMoVaxHLVwmCuINFABOdzCVMmWog1yfrHnXh3nJjUfi08PzAbxnNXY+uP4MYUHR
         WlMi5o5mpCvJF53KrhU/dHNNfXjo0eLvjbKTu1YtxslmmJNB6hVwO8U0DbmsBRxpT3cD
         G91J+artgkmdbisjLTykOOYX6sBHS/m+XnowLkR0kloByfJMbpGzLT9EEFsosxirVGYF
         Psb2H7fuXaNw6Q/MGzNqpycuYXgCv5+98oWc8NQDlVWQHdNfZ216//VuAQyTYRK96FYC
         0pZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758016369; x=1758621169;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=49QsBXiYXTpwW15ExZiEsCuxBVACiimdNLk2zhQ/sDM=;
        b=sAhap+k/81GVy7MKYJhO3zGg2o7gmdfu05W2xYGjChtT95eAKPqXxhc0JGgashu6oP
         OXxtg5TXXHcfY3XsM1TwWcu0wFxyP1nKltddXuTboKQzStJ2MM5KWEsdb9n/wVYQaM3C
         W11SulhrXwRtwLWxByZDrsSnb5/kACzcM9gZcVXTmJudJnGjOm3iV6q/F/jJc/kEDWDu
         T20oOWXbApvFMm/8YgNMjevCgzFtikb36txNdPlwXHgVpo1isWkhA/JmzqHnuoeHVVX7
         V/RXTFVNtl4HaY+kngWt59DNZay4ftBjRJy4XPQSwmFtT0IR2RY0UZcQz1hL5woOrMHT
         V75A==
X-Gm-Message-State: AOJu0YzjON6hUhmL2krNNAYFjXxpchfyiXg7cxgK9aATir3IWqLaErBV
	0ON/+4vHuO55HJnXJ5EMDInROLq/IROEb2VKyVcVWuqBYkRDO0NO9tkN
X-Gm-Gg: ASbGncuKIZjNXNd7MerbzcgKJ+EJnXHEbPvZWOnBPH8JpN+jCaRY7Uj/80U7UtkOksn
	oh1wIKr4RAD4JoPCOcSy52qVivXMuZSrUgfpR5+5qmRucgoLGPH7lJ/EEsGkSyH3ofJSRSW7IOP
	m8YZL45tk4sQUqs8vwxkYjVKmAGQpPqkpUkre/kpE5zTg0kqa/uS+5s8BBcJ1fmHDpYBWTz/caf
	s++awNfyFBMOkWOE33RErCls0ArrpjEdngVh8c3srDWxGqaGG3Z3/o9w0EjZSI0MvMlOdvaOMij
	JLKNPQ7Dg+BqpEWZA+SvtQa+1TCsjs7zaEvSxs6/KqEwDHSB+KW9bdANg+N3eKEiWqMrCTsVp+f
	IVl1C+XP2SWCWA0m8T7NUKecS6KWl8xl9XYLsquunPG16veXmxYV4fKnw+kkZgp46VDCZcFsGBj
	9hhGcuSyBmOjtVoWg4vizKFcI=
X-Google-Smtp-Source: AGHT+IF9/+KWd45S6FYhiVJ8Q4f8Eu69CpQKUelHersC4ax5SQgbWHAEIysbDLfaY6JhGQ4DWDv1Vg==
X-Received: by 2002:a17:902:c40a:b0:267:6754:8fd9 with SMTP id d9443c01a7336-26767549b82mr74458675ad.39.1758016369128;
        Tue, 16 Sep 2025 02:52:49 -0700 (PDT)
Received: from cosmo-ubuntu-2404.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2667b4d380csm53935775ad.71.2025.09.16.02.52.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 02:52:48 -0700 (PDT)
From: Cosmo Chou <chou.cosmo@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jdelvare@suse.com,
	linux@roeck-us.net
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org,
	corbet@lwn.net,
	cosmo.chou@quantatw.com,
	Cosmo Chou <chou.cosmo@gmail.com>
Subject: [PATCH 2/2] hwmon: (pmbus/mp5990) add support for MP5998
Date: Tue, 16 Sep 2025 17:50:26 +0800
Message-ID: <20250916095026.800164-2-chou.cosmo@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250916095026.800164-1-chou.cosmo@gmail.com>
References: <20250916095026.800164-1-chou.cosmo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the MPS MP5998 hot-swap controller. Like MP5990, MP5998
uses EFUSE_CFG (0xC4) bit 9 to indicate linear/direct data format.

Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
---
 Documentation/hwmon/mp5990.rst | 30 +++++++++++++--
 drivers/hwmon/pmbus/mp5990.c   | 67 ++++++++++++++++++++++++++++++----
 2 files changed, 85 insertions(+), 12 deletions(-)

diff --git a/Documentation/hwmon/mp5990.rst b/Documentation/hwmon/mp5990.rst
index 6f2f0c099d44..7fd536757ff2 100644
--- a/Documentation/hwmon/mp5990.rst
+++ b/Documentation/hwmon/mp5990.rst
@@ -9,9 +9,13 @@ Supported chips:
 
     Prefix: 'mp5990'
 
-  * Datasheet
+    Datasheet: Publicly available at the MPS website: https://www.monolithicpower.com/en/mp5990.html
 
-    Publicly available at the MPS website : https://www.monolithicpower.com/en/mp5990.html
+  * MPS MP5998
+
+    Prefix: 'mp5998'
+
+    Datasheet: Not publicly available
 
 Author:
 
@@ -21,7 +25,7 @@ Description
 -----------
 
 This driver implements support for Monolithic Power Systems, Inc. (MPS)
-MP5990 Hot-Swap Controller.
+MP5990 and MP5998 Hot-Swap Controller.
 
 Device compliant with:
 
@@ -53,7 +57,7 @@ The driver provides the following attributes for output voltage:
 
 **in2_alarm**
 
-The driver provides the following attributes for output current:
+The driver provides the following attributes for current:
 
 **curr1_input**
 
@@ -63,6 +67,14 @@ The driver provides the following attributes for output current:
 
 **curr1_max**
 
+**curr2_input**
+
+**curr2_label**
+
+**curr2_max**
+
+**curr2_max_alarm**
+
 The driver provides the following attributes for input power:
 
 **power1_input**
@@ -71,6 +83,16 @@ The driver provides the following attributes for input power:
 
 **power1_alarm**
 
+The driver provides the following attributes for output power:
+
+**power2_input**
+
+**power2_label**
+
+**power2_max**
+
+**power2_max_alarm**
+
 The driver provides the following attributes for temperature:
 
 **temp1_input**
diff --git a/drivers/hwmon/pmbus/mp5990.c b/drivers/hwmon/pmbus/mp5990.c
index 4ce381a39480..9a4ee79712cf 100644
--- a/drivers/hwmon/pmbus/mp5990.c
+++ b/drivers/hwmon/pmbus/mp5990.c
@@ -8,6 +8,8 @@
 #include <linux/of_device.h>
 #include "pmbus.h"
 
+enum chips { mp5990, mp5998 };
+
 #define MP5990_EFUSE_CFG	(0xC4)
 #define MP5990_VOUT_FORMAT	BIT(9)
 
@@ -110,10 +112,53 @@ static struct pmbus_driver_info mp5990_info = {
 	.read_word_data = mp5990_read_word_data,
 };
 
+static struct pmbus_driver_info mp5998_info = {
+	.pages = 1,
+	.format[PSC_VOLTAGE_IN] = direct,
+	.format[PSC_VOLTAGE_OUT] = direct,
+	.format[PSC_CURRENT_IN] = direct,
+	.format[PSC_CURRENT_OUT] = direct,
+	.format[PSC_POWER] = direct,
+	.format[PSC_TEMPERATURE] = direct,
+	.m[PSC_VOLTAGE_IN] = 64,
+	.b[PSC_VOLTAGE_IN] = 0,
+	.R[PSC_VOLTAGE_IN] = 0,
+	.m[PSC_VOLTAGE_OUT] = 64,
+	.b[PSC_VOLTAGE_OUT] = 0,
+	.R[PSC_VOLTAGE_OUT] = 0,
+	.m[PSC_CURRENT_IN] = 16,
+	.b[PSC_CURRENT_IN] = 0,
+	.R[PSC_CURRENT_IN] = 0,
+	.m[PSC_CURRENT_OUT] = 16,
+	.b[PSC_CURRENT_OUT] = 0,
+	.R[PSC_CURRENT_OUT] = 0,
+	.m[PSC_POWER] = 2,
+	.b[PSC_POWER] = 0,
+	.R[PSC_POWER] = 0,
+	.m[PSC_TEMPERATURE] = 1,
+	.b[PSC_TEMPERATURE] = 0,
+	.R[PSC_TEMPERATURE] = 0,
+	.func[0] =
+		PMBUS_HAVE_VIN | PMBUS_HAVE_VOUT | PMBUS_HAVE_IOUT |
+		PMBUS_HAVE_IIN | PMBUS_HAVE_PIN | PMBUS_HAVE_POUT |
+		PMBUS_HAVE_TEMP | PMBUS_HAVE_STATUS_IOUT |
+		PMBUS_HAVE_STATUS_INPUT | PMBUS_HAVE_STATUS_TEMP,
+	.read_byte_data = mp5990_read_byte_data,
+	.read_word_data = mp5990_read_word_data,
+};
+
+static const struct i2c_device_id mp5990_id[] = {
+	{"mp5990", mp5990},
+	{"mp5998", mp5998},
+	{ }
+};
+MODULE_DEVICE_TABLE(i2c, mp5990_id);
+
 static int mp5990_probe(struct i2c_client *client)
 {
 	struct pmbus_driver_info *info;
 	struct mp5990_data *data;
+	enum chips chip;
 	int ret;
 
 	data = devm_kzalloc(&client->dev, sizeof(struct mp5990_data),
@@ -121,7 +166,15 @@ static int mp5990_probe(struct i2c_client *client)
 	if (!data)
 		return -ENOMEM;
 
-	memcpy(&data->info, &mp5990_info, sizeof(*info));
+	if (client->dev.of_node)
+		chip = (uintptr_t)of_device_get_match_data(&client->dev);
+	else
+		chip = i2c_match_id(mp5990_id, client)->driver_data;
+
+	if (chip == mp5990)
+		memcpy(&data->info, &mp5990_info, sizeof(*info));
+	else
+		memcpy(&data->info, &mp5998_info, sizeof(*info));
 	info = &data->info;
 
 	/* Read Vout Config */
@@ -140,6 +193,9 @@ static int mp5990_probe(struct i2c_client *client)
 		data->info.format[PSC_VOLTAGE_OUT] = linear;
 		data->info.format[PSC_CURRENT_OUT] = linear;
 		data->info.format[PSC_POWER] = linear;
+		if (chip == mp5998)
+			data->info.format[PSC_CURRENT_IN] = linear;
+
 		ret = i2c_smbus_read_word_data(client, PMBUS_READ_VOUT);
 		if (ret < 0) {
 			dev_err(&client->dev, "Can't get vout exponent.");
@@ -153,16 +209,11 @@ static int mp5990_probe(struct i2c_client *client)
 }
 
 static const struct of_device_id mp5990_of_match[] = {
-	{ .compatible = "mps,mp5990" },
+	{ .compatible = "mps,mp5990", .data = (void *)mp5990 },
+	{ .compatible = "mps,mp5998", .data = (void *)mp5998 },
 	{}
 };
 
-static const struct i2c_device_id mp5990_id[] = {
-	{"mp5990"},
-	{ }
-};
-MODULE_DEVICE_TABLE(i2c, mp5990_id);
-
 static struct i2c_driver mp5990_driver = {
 	.driver = {
 		   .name = "mp5990",
-- 
2.43.0


