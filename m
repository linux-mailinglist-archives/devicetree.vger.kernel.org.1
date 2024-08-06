Return-Path: <devicetree+bounces-91239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D724948938
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 08:10:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 27B27B2308D
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 06:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A4291BCA0E;
	Tue,  6 Aug 2024 06:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mainlining.org header.i=@mainlining.org header.b="nYIcZwLk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mainlining.org (mail.mainlining.org [5.75.144.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F111BA87B;
	Tue,  6 Aug 2024 06:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.75.144.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722924627; cv=none; b=Z4/Md6dX8NVA2Nj1BNUtxdXF93emvja/fh4TkZqgBvMsesyDhQwdTApl2wEhQpw4EGXg6AB31z7BB+gwBVPmTUDyEXoRXyVbjhtEtoyx/SZPTVMhsMI19VNq9sL/1Jx/qQazbxY7r14c9hzu6jHMo1LQTjJTq31ktb4FBhXZFyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722924627; c=relaxed/simple;
	bh=aPKE4/8trXpSquPAIuTqESMHokl3vhV6kOilccBLWLU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L+0Vkd0Zd2DRpCG9+uw3sKp05ly5mCxos6LUJUCZfWvDlojGOYDS35JhedJunpG9NiE5q56m7QjWK8NdWuMiqsFbGsRItqefpLXXEAgeyDy8874l9HUmXOeTfXBxg8SQeqS4oLPni0fEvftyZ5bSDiWoszdwjvTsv9lXaUwjBf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mainlining.org; spf=pass smtp.mailfrom=mainlining.org; dkim=pass (2048-bit key) header.d=mainlining.org header.i=@mainlining.org header.b=nYIcZwLk; arc=none smtp.client-ip=5.75.144.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mainlining.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mainlining.org
Received: from [192.168.1.90] (86FF4CFD.dsl.pool.telekom.hu [134.255.76.253])
	by mail.mainlining.org (Postfix) with ESMTPSA id 68C8EE4519;
	Tue,  6 Aug 2024 06:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mainlining.org;
	s=psm; t=1722924623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HNDFTztkXS/sedAHfU7QWiVYU7fhTTZK67e1Wh/UHys=;
	b=nYIcZwLkUKiwoJb2zyWMv/9j+CA4ShgUmHPCFSvw9Mft4YOLL924aq96uYLs6qNbaisyFm
	yhiLNcKjXIwNUyZISfQEb1MaRRwvReAsBx8dwCVZawGx0xT+22yHAewihcncY2LRmSA6me
	rk9fQXK7MfLS8svvSm4fL2WEBLibXP5HFVaT+gLw5/gD9K5mY4NxPAhTaRB8B9Itm0Huqv
	7OaNZohiky5BNUzNIVcf9YRQjUR/pMkCaYnOti3bTt9GYGZ0eoyusYHB+/rj6ADI9dwN9B
	yfTYk3fVGqBsnzfao5wF2LM67f1ukCzyF8D1uA3uvkq1WZttqCZFAJ8Rq8QvUw==
From: =?utf-8?q?Barnab=C3=A1s_Cz=C3=A9m=C3=A1n?= <barnabas.czeman@mainlining.org>
Date: Tue, 06 Aug 2024 08:10:20 +0200
Subject: [PATCH v2 3/3] iio: magnetometer: ak8975: Add AK09118 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240806-ak09918-v2-3-c300da66c198@mainlining.org>
References: <20240806-ak09918-v2-0-c300da66c198@mainlining.org>
In-Reply-To: <20240806-ak09918-v2-0-c300da66c198@mainlining.org>
To: Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jonathan Albrieux <jonathan.albrieux@gmail.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux@mainlining.org, 
 =?utf-8?q?Barnab=C3=A1s_Cz=C3=A9m=C3=A1n?= <barnabas.czeman@mainlining.org>, 
 Danila Tikhonov <danila@jiaxyga.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1722924621; l=3739;
 i=barnabas.czeman@mainlining.org; s=20240730; h=from:subject:message-id;
 bh=Xdbc05wTk5VMNycxtvRYoLhMwu6ggaU3k/NJrqplOAk=;
 b=V5GXI3sTfYh5s+9b/YeC3DxjPQrm1MgP46/7ofTwuKbt6dQ7T+KtWyqJcrUfK9dBmg9eTrtnE
 KdNUwcSWpSkDVYDPyOwn3dtq1awE++nz+tRHyeVvTK5CeCcgflGHd8M
X-Developer-Key: i=barnabas.czeman@mainlining.org; a=ed25519;
 pk=TWUSIGgwW/Sn4xnX25nw+lszj1AT/A3bzkahn7EhOFc=

From: Danila Tikhonov <danila@jiaxyga.com>

Add additional AK09118 to the magnetometer driver which has the same
register mapping and scaling as the AK09112 device.

Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
---
 drivers/iio/magnetometer/Kconfig  |  2 +-
 drivers/iio/magnetometer/ak8975.c | 34 ++++++++++++++++++++++++++++++++++
 2 files changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/magnetometer/Kconfig b/drivers/iio/magnetometer/Kconfig
index cd2917d71904..8eb718f5e50f 100644
--- a/drivers/iio/magnetometer/Kconfig
+++ b/drivers/iio/magnetometer/Kconfig
@@ -39,7 +39,7 @@ config AK8975
 	select IIO_TRIGGERED_BUFFER
 	help
 	  Say yes here to build support for Asahi Kasei AK8975, AK8963,
-	  AK09911, AK09912 or AK09916 3-Axis Magnetometer.
+	  AK09911, AK09912, AK09916 or AK09918 3-Axis Magnetometer.
 
 	  To compile this driver as a module, choose M here: the module
 	  will be called ak8975.
diff --git a/drivers/iio/magnetometer/ak8975.c b/drivers/iio/magnetometer/ak8975.c
index 925d76062b3e..9871fea67ae3 100644
--- a/drivers/iio/magnetometer/ak8975.c
+++ b/drivers/iio/magnetometer/ak8975.c
@@ -78,6 +78,7 @@
  */
 #define AK09912_REG_WIA1		0x00
 #define AK09912_REG_WIA2		0x01
+#define AK09918_DEVICE_ID		0x0C
 #define AK09916_DEVICE_ID		0x09
 #define AK09912_DEVICE_ID		0x04
 #define AK09911_DEVICE_ID		0x05
@@ -209,6 +210,7 @@ enum asahi_compass_chipset {
 	AK09911,
 	AK09912,
 	AK09916,
+	AK09918,
 };
 
 enum ak_ctrl_reg_addr {
@@ -371,6 +373,31 @@ static const struct ak_def ak_def_array[] = {
 			AK09912_REG_HXL,
 			AK09912_REG_HYL,
 			AK09912_REG_HZL},
+	},
+	[AK09918] = {
+		.type = AK09918,
+		.raw_to_gauss = ak09912_raw_to_gauss,
+		.range = 32752,
+		.ctrl_regs = {
+			AK09912_REG_ST1,
+			AK09912_REG_ST2,
+			AK09912_REG_CNTL2,
+			AK09912_REG_ASAX,
+			AK09912_MAX_REGS},
+		.ctrl_masks = {
+			AK09912_REG_ST1_DRDY_MASK,
+			AK09912_REG_ST2_HOFL_MASK,
+			0,
+			AK09912_REG_CNTL2_MODE_MASK},
+		.ctrl_modes = {
+			AK09912_REG_CNTL_MODE_POWER_DOWN,
+			AK09912_REG_CNTL_MODE_ONCE,
+			AK09912_REG_CNTL_MODE_SELF_TEST,
+			AK09912_REG_CNTL_MODE_FUSE_ROM},
+		.data_regs = {
+			AK09912_REG_HXL,
+			AK09912_REG_HYL,
+			AK09912_REG_HZL},
 	}
 };
 
@@ -452,6 +479,7 @@ static int ak8975_who_i_am(struct i2c_client *client,
 	/*
 	 * Signature for each device:
 	 * Device   |  WIA1      |  WIA2
+	 * AK09918  |  DEVICE_ID_|  AK09918_DEVICE_ID
 	 * AK09916  |  DEVICE_ID_|  AK09916_DEVICE_ID
 	 * AK09912  |  DEVICE_ID |  AK09912_DEVICE_ID
 	 * AK09911  |  DEVICE_ID |  AK09911_DEVICE_ID
@@ -484,6 +512,10 @@ static int ak8975_who_i_am(struct i2c_client *client,
 		if (wia_val[1] == AK09916_DEVICE_ID)
 			return 0;
 		break;
+	case AK09918:
+		if (wia_val[1] == AK09918_DEVICE_ID)
+			return 0;
+		break;
 	default:
 		dev_err(&client->dev, "Type %d unknown\n", type);
 	}
@@ -1066,6 +1098,7 @@ static const struct i2c_device_id ak8975_id[] = {
 	{"ak09911", (kernel_ulong_t)&ak_def_array[AK09911] },
 	{"ak09912", (kernel_ulong_t)&ak_def_array[AK09912] },
 	{"ak09916", (kernel_ulong_t)&ak_def_array[AK09916] },
+	{"ak09918", (kernel_ulong_t)&ak_def_array[AK09918] },
 	{}
 };
 MODULE_DEVICE_TABLE(i2c, ak8975_id);
@@ -1081,6 +1114,7 @@ static const struct of_device_id ak8975_of_match[] = {
 	{ .compatible = "ak09912", .data = &ak_def_array[AK09912] },
 	{ .compatible = "asahi-kasei,ak09916", .data = &ak_def_array[AK09916] },
 	{ .compatible = "ak09916", .data = &ak_def_array[AK09916] },
+	{ .compatible = "asahi-kasei,ak09918", .data = &ak_def_array[AK09918] },
 	{}
 };
 MODULE_DEVICE_TABLE(of, ak8975_of_match);

-- 
2.46.0


