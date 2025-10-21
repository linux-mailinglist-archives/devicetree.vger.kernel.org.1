Return-Path: <devicetree+bounces-229425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF6EBF74C5
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 17:23:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13F2B464746
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EC3E3446B7;
	Tue, 21 Oct 2025 15:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JzxNambP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352CA342CB6
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 15:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761060194; cv=none; b=aEP+SKZ4vY0OcE2XVC55SzsahnGB82uu/QxpfZCLB8pxbj5LXzyDLh4iU9zgmmFqLqmPZblc5TRULH0kZEwjAg9Qfma2DqrYb/1+GAG0IEjoOjBs19TanJN9JvzLqlU2eaxkNA8lswaF17aJ/YsjZbB6QKWaOip2sQ6KuSlUOys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761060194; c=relaxed/simple;
	bh=SlIfPtwxh56EwI4A8K256lUp7Lg45VXnEe5YQZybb8s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jqhahYgwSbImD+PXeniE8qjZvGGaTwa/436Y7v4bDQISQ9K+hHMO4FdnukH/1ESp+5LYohl3Xy5evNfq3xfs5IttV21BmQG5gnkj3Gy/aMC8Q0ZlPdzXCFzQVq53boFODZkdhlJLnbX5MU4WINA5I0YvjMeR7mHIE08x3CcwiZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JzxNambP; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b3e234fcd4bso1015118766b.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761060190; x=1761664990; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nDj3ECZvGhO87X2x0sK6CPlVQ1x93vEAeNy8nF85d1o=;
        b=JzxNambP7nKxbdueX3r9fgUKbemkKcRPNZB4RNcF0Z0TN1gWINKB+CVTK7msk0ZzEx
         VIwPWkJSLzRZG//rJw0UtAELX0yhvqhe5E7QrAjaJ1uUH04j7+eMt0Ba8X7/CdEbRjOu
         gmcDE547IHMtCTex9WJtfdUzG7OcXYJdx+pTmmvrp9PzoQfmaG/vW1J61l9+TZahs9zO
         kmYE3h+ztbp44CAiij1JEgaMhtl6cJ6ec0V9kdfgKkDSTQy1vgg3xBg6mNzEtvy7lz7O
         Wv6pe3r7hCzAZoVvfrWiMs6dL95qegJUA6UFN28cHdcnygk7nFdT35JfsCyQmr9cRgrU
         6dWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761060190; x=1761664990;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nDj3ECZvGhO87X2x0sK6CPlVQ1x93vEAeNy8nF85d1o=;
        b=KpfHYtUqaUb+A38Zy+AF4oFgWCwoR6d1/PlpIYojMrntGsgzBV0YmMJeWxT+UOY2wb
         gxIgEk/cP5aHmcbBpKvyHUKO/fjZKmaUHwIRbgIxNcYnDI4B3hiRt+o8JiWq7y7Qe8qy
         tIvg8iaQUHdpr0jprelLrnVaBf6LnjECkYfTd3egtZNjKUXzsdQVZN5gd05ic2+hsckw
         gXcqBLG7joSAKxxtN9iIgBS9lcUfZwsvgmZ1pxzhQ/GdHRLj8Kvn2/7secsb7fVV+qm4
         YmU0frCctc+BUtSsaY/E5njRRwi3GAJvyjFQlZeQ5MMxuOVZKtQUXxWCN8GpmKU3Hl6s
         qz6A==
X-Gm-Message-State: AOJu0YzvEqdHWxMAgkOrhyvtWPAtGDWE7mhGQ0UiUK7V8GCRazSlVV7K
	ISYXD6B7Z+Z0+vy1Z6xhp3apB1cgeYuER28kGk4zqbIjujvHyqX8ypc8
X-Gm-Gg: ASbGncvUZ84C4as0/7lKaDYCzjgToB9/POmDxC+0weJHPwL8F4a+s6MV9y4/ZWYI3vk
	9GQIeSkg6lXI3lpUbdN8KELaiF2muPUz95EWfCJocWRUPB+YW3/pFCh+V2krLH+JoV2L4jYau4+
	nMNLTb3PkCVdipUMbAf22T5Y62z+5Af0daewmkMYA4LDohYXtOqANbmTmDEaBbwAptRrw30hbjc
	HW+08foWY/B1A00kvYzEgznmTYED2Fwdp2fs0mHblhroNdocdFsUna99QVs57Jpx+V6/pU2WfKp
	gg2uevKZFSfLtozU47WJd6pbLFfTZypYuhVKO6WN/CZKwS37MAiJBJZQru2D//iQL4CG9U0ud2e
	SAtXTV4m+0OHmHicYA/GBTnb+TGiLWENto7xgfuvtZ3VBZq40UrcuMP/E69l4jE9UQq7UsGCuTl
	66y5v29TO9ZEF+2KIL1FAKB4MbcoditJBrVAowYg==
X-Google-Smtp-Source: AGHT+IEpytNOEQt+J8yOVwE7tliyy/C42TnWv+wFLdWTQQ5Wh/eoDy2mY56x2p4z2YBP4D34UCBrnA==
X-Received: by 2002:a17:907:5c9:b0:b04:25ae:6c76 with SMTP id a640c23a62f3a-b6473f3feeamr1872558166b.47.1761060190303;
        Tue, 21 Oct 2025 08:23:10 -0700 (PDT)
Received: from tearch (pc142.ds2-s.us.edu.pl. [155.158.56.142])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8581780sm1082737866b.31.2025.10.21.08.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 08:23:10 -0700 (PDT)
From: muhammed.efecetin.67@gmail.com
X-Google-Original-From: muhammed.efecetin67@gmail.com
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	lee@kernel.org,
	rafael@kernel.org,
	efectn@protonmail.com,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 3/5] mfd: add Khadas Edge 2 registers to khadas-mcu.
Date: Tue, 21 Oct 2025 17:22:43 +0200
Message-ID: <adbd6dd5e9ed938bab7927597b7f21eca3274b78.1761059314.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.51.1.dirty
In-Reply-To: <cover.1761059314.git.efectn@protonmail.com>
References: <cover.1761059314.git.efectn@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Muhammed Efe Cetin <efectn@protonmail.com>

Add Khadas Edge 2 MCU registers to khadas-mcu.h with KHADAS_MCU_EDGE2 register.
New "khadas,mcu-edge2" compatible added as it is quite different compared to older MCU variants
and there are no way to distinguish them using any register.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 drivers/mfd/khadas-mcu.c       | 47 +++++++++++++++++++++++++++++++---
 include/linux/mfd/khadas-mcu.h | 32 +++++++++++++++++++++++
 2 files changed, 76 insertions(+), 3 deletions(-)

diff --git a/drivers/mfd/khadas-mcu.c b/drivers/mfd/khadas-mcu.c
index ca4bd6cf56994..8898f5ab6915a 100644
--- a/drivers/mfd/khadas-mcu.c
+++ b/drivers/mfd/khadas-mcu.c
@@ -32,6 +32,20 @@ static bool khadas_mcu_reg_volatile(struct device *dev, unsigned int reg)
 	}
 }
 
+static bool khadas_mcu_reg_volatile_edge2(struct device *dev, unsigned int reg)
+{
+	switch (reg) {
+	case KHADAS_MCU_EDGE2_SLEEP_EN_REG:
+	case KHADAS_MCU_EDGE2_LED_ON_RAM_REG:
+	case KHADAS_MCU_EDGE2_FAN_CTRL_REG:
+	case KHADAS_MCU_EDGE2_WDT_EN_REG:
+	case KHADAS_MCU_EDGE2_SYS_RST_REG:
+		return true;
+	default:
+		return false;
+	}
+}
+
 static bool khadas_mcu_reg_writeable(struct device *dev, unsigned int reg)
 {
 	switch (reg) {
@@ -65,6 +79,17 @@ static bool khadas_mcu_reg_writeable(struct device *dev, unsigned int reg)
 	}
 }
 
+static bool khadas_mcu_reg_writeable_edge2(struct device *dev, unsigned int reg)
+{
+	switch (reg) {
+	case KHADAS_MCU_EDGE2_VERSION1_REG:
+	case KHADAS_MCU_EDGE2_VERSION2_REG:
+		return false;
+	default:
+		return true;
+	}
+}
+
 static const struct regmap_config khadas_mcu_regmap_config = {
 	.reg_bits	= 8,
 	.reg_stride	= 1,
@@ -75,8 +100,18 @@ static const struct regmap_config khadas_mcu_regmap_config = {
 	.cache_type	= REGCACHE_MAPLE,
 };
 
+static const struct regmap_config khadas_mcu_regmap_config_edge2 = {
+	.reg_bits	= 8,
+	.reg_stride	= 1,
+	.val_bits	= 8,
+	.max_register	= KHADAS_MCU_EDGE2_SYS_RST_REG,
+	.volatile_reg	= khadas_mcu_reg_volatile_edge2,
+	.writeable_reg	= khadas_mcu_reg_writeable_edge2,
+	.cache_type	= REGCACHE_MAPLE,
+};
+
 static struct mfd_cell khadas_mcu_fan_cells[] = {
-	/* VIM1/2 Rev13+ and VIM3 only */
+	/* VIM1/2 Rev13+, VIM3 and Edge2 only */
 	{ .name = "khadas-mcu-fan-ctrl", },
 };
 
@@ -84,6 +119,7 @@ static int khadas_mcu_probe(struct i2c_client *client)
 {
 	struct device *dev = &client->dev;
 	struct khadas_mcu *ddata;
+	const struct regmap_config *regmap_config;
 	int ret;
 
 	ddata = devm_kzalloc(dev, sizeof(*ddata), GFP_KERNEL);
@@ -94,7 +130,11 @@ static int khadas_mcu_probe(struct i2c_client *client)
 
 	ddata->dev = dev;
 
-	ddata->regmap = devm_regmap_init_i2c(client, &khadas_mcu_regmap_config);
+	regmap_config = of_device_get_match_data(dev);
+	if (!regmap_config)
+		return -EINVAL;
+
+	ddata->regmap = devm_regmap_init_i2c(client, regmap_config);
 	if (IS_ERR(ddata->regmap)) {
 		ret = PTR_ERR(ddata->regmap);
 		dev_err(dev, "Failed to allocate register map: %d\n", ret);
@@ -112,7 +152,8 @@ static int khadas_mcu_probe(struct i2c_client *client)
 
 #ifdef CONFIG_OF
 static const struct of_device_id khadas_mcu_of_match[] = {
-	{ .compatible = "khadas,mcu", },
+	{ .compatible = "khadas,mcu", .data = &khadas_mcu_regmap_config },
+	{ .compatible = "khadas,mcu-edge2", .data = &khadas_mcu_regmap_config_edge2 },
 	{},
 };
 MODULE_DEVICE_TABLE(of, khadas_mcu_of_match);
diff --git a/include/linux/mfd/khadas-mcu.h b/include/linux/mfd/khadas-mcu.h
index a99ba2ed0e4e0..e278326451df6 100644
--- a/include/linux/mfd/khadas-mcu.h
+++ b/include/linux/mfd/khadas-mcu.h
@@ -10,6 +10,7 @@
 #ifndef MFD_KHADAS_MCU_H
 #define MFD_KHADAS_MCU_H
 
+/* Registers used by Khadas VIM2 rev14 and VIM3 */
 #define KHADAS_MCU_PASSWD_VEN_0_REG		0x00 /* RO */
 #define KHADAS_MCU_PASSWD_VEN_1_REG		0x01 /* RO */
 #define KHADAS_MCU_PASSWD_VEN_2_REG		0x02 /* RO */
@@ -70,12 +71,43 @@
 #define KHADAS_MCU_WOL_INIT_START_REG		0x87 /* WO */
 #define KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG	0x88 /* WO */
 
+/* Registers used by Khadas Edge 2 */
+#define KHADAS_MCU_EDGE2_VERSION1_REG             0x12  /* RO */
+#define KHADAS_MCU_EDGE2_VERSION2_REG             0x13  /* RO */
+#define KHADAS_MCU_EDGE2_BOOT_MODE_REG            0x20  /* RW */
+#define KHADAS_MCU_EDGE2_BOOT_EN_DCIN_REG         0x21  /* RW */
+#define KHADAS_MCU_EDGE2_BOOT_EN_RTC_REG          0x22  /* RW */
+#define KHADAS_MCU_EDGE2_LED_MODE_ON_REG          0x23  /* RW */
+#define KHADAS_MCU_EDGE2_LED_MODE_OFF_REG         0x24  /* RW */
+#define KHADAS_MCU_EDGE2_RGB_ON_R_REG             0x25  /* RW */
+#define KHADAS_MCU_EDGE2_RGB_ON_G_REG             0x26  /* RW */
+#define KHADAS_MCU_EDGE2_RGB_ON_B_REG             0x27  /* RW */
+#define KHADAS_MCU_EDGE2_RGB_OFF_R_REG            0x28  /* RW */
+#define KHADAS_MCU_EDGE2_RGB_OFF_G_REG            0x29  /* RW */
+#define KHADAS_MCU_EDGE2_RGB_OFF_B_REG            0x2A  /* RW */
+#define KHADAS_MCU_EDGE2_REST_CONF_REG            0x2C  /* WO */
+#define KHADAS_MCU_EDGE2_SLEEP_EN_REG             0x2E  /* RW */
+#define KHADAS_MCU_EDGE2_BOOT_EN_IR_REG           0x2F  /* RW */
+#define KHADAS_MCU_EDGE2_IR1_CUST1_REG            0x30  /* RW */
+#define KHADAS_MCU_EDGE2_IR1_CUST2_REG            0x31  /* RW */
+#define KHADAS_MCU_EDGE2_IR1_ORDER1_REG           0x32  /* RW */
+#define KHADAS_MCU_EDGE2_IR1_ORDER2_REG           0x33  /* RW */
+#define KHADAS_MCU_EDGE2_IR2_CUST1_REG            0x34  /* RW */
+#define KHADAS_MCU_EDGE2_IR2_CUST2_REG            0x35  /* RW */
+#define KHADAS_MCU_EDGE2_IR2_ORDER1_REG           0x36  /* RW */
+#define KHADAS_MCU_EDGE2_IR2_ORDER2_REG           0x37  /* RW */
+#define KHADAS_MCU_EDGE2_LED_ON_RAM_REG           0x89  /* WO */
+#define KHADAS_MCU_EDGE2_FAN_CTRL_REG             0x8A  /* WO */
+#define KHADAS_MCU_EDGE2_WDT_EN_REG               0x8B  /* WO */
+#define KHADAS_MCU_EDGE2_SYS_RST_REG              0x91  /* WO */
+
 enum {
 	KHADAS_BOARD_VIM1 = 0x1,
 	KHADAS_BOARD_VIM2,
 	KHADAS_BOARD_VIM3,
 	KHADAS_BOARD_EDGE = 0x11,
 	KHADAS_BOARD_EDGE_V,
+	KHADAS_BOARD_EDGE2,
 };
 
 /**
-- 
2.51.1.dirty


