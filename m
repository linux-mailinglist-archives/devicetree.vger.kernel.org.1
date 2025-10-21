Return-Path: <devicetree+bounces-229426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC47BF74D1
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 17:24:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E809619A1415
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:24:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CABC73446DA;
	Tue, 21 Oct 2025 15:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DypI9YAP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0CFA3446C3
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 15:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761060196; cv=none; b=pnyrwt56H3Gg/7+g9IsK/Nk9VP3ATvEgvVhCWkJNZa6J/yzCKb4O3haZXJGC+BHxXGrWLjtV5qSoZwcSkQeEpFGuug2E2tyJGdJ8d6tMQlK1S3XXytZ2GTNzWDjX6CorSLoPEtMk6FLaCW0DH3FPPNMaXhF1TWqSVxlzNcXnv0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761060196; c=relaxed/simple;
	bh=bbLkMw7UcmIuEMTR9k22odEZGyw/YV7/JKsrSoEscUk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O+2zNyRKMcAMCPEdnW//QXfmfWffA+389Zj0PEiHVoJvwXBgQIoe0VT3981e4T350bzpchhbBKnV0Lx4YXXtMw6xE/J4zlhTTdgwKfsXhyodqKgtd0yDyLt9R6/p8XfHnEQ4Ms/fLCqJgrsSqTNmd8QkJ/k9M6ExczBXorEWZ+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DypI9YAP; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b3b27b50090so1054380966b.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761060192; x=1761664992; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d9adNp0vIB1m6cHMOI8TscYP77iYGGA2dR4MofxfiQU=;
        b=DypI9YAPUPxXJCxxeh/9Hes7mTxApI9QOdVXffDBhPE/SvMUoD0KfM7AfFPv8rrDKu
         xn20fiNCL6p+bdIryebaNyOFe/b8L3/3E5ncnvSKKmIYvepkVO+LkVdc0iHWPCOtJmrj
         a3UuWhcML+d5h9qKJ6o7xkZiaApvAJyEJ5+dzsDONWZ9n8E+2r/MFtkAmJDvgygKf4LV
         lONVcTlsGrQ7XayY3IS4YxEIu/U955dL+rbPoEAsXQcQnc1Zq3+pHJ8vkg1Um7x0oR5a
         X9au/4qoWEFsB0mu69cjlbrIFJg1DXGcrSHQkx2k2oD+UGLVxxTqhVcGfe68OscQA5D2
         s9zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761060192; x=1761664992;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d9adNp0vIB1m6cHMOI8TscYP77iYGGA2dR4MofxfiQU=;
        b=ClwJNBAgHcmrzz9M5vKnf5kC2dvJgyg7ZH3R8Ja/ro7BkTayJ3OnmwGW/ZUddOOZ1m
         onglTRlFM/dWx2c5cWiVQC6p+coY78ZAc+KrCaTvl8Yt50J6GDxbhhNgbxOlFrFvoZTN
         YX0G4g3y7D8oeS147AQcUg6c2rUXcpGnoEHZBFUqmc2+LSBFmaWkNGwXjfw/W9udvBIJ
         OtDjyIqe0Xr6wPWcfAKvA2NUv1yXgpzvMts/K2KrL19LRm7/OZSrZujvH5kaamHihFVz
         /Svl6i8z6tdPLfJ71WbJOXLyI1+Wi87neoK2Pl1Iqi789rfwIKv1X5R79Mvwhh31o4vj
         ue0Q==
X-Gm-Message-State: AOJu0Yw0YOosmhjjBA6quKMmM4Eifg3ZXkd26AwIyZA9LiYmZyugJEvC
	NW4ZncNa869G+yHyI3xScXWeQC+FpCCYi6ymiUkUTSAjOV/Ez0DNDw/M
X-Gm-Gg: ASbGncuQnJTblXvc+A69XED09bhyEo/Q3vtaHIksgcj/MDZmxOnnxf78eZKGmQ/tqBv
	OT2q+LhnkW+kY0B242KsxcAyI3XNr6C90IGe7Hjs/34iaAJMgtkhgS/o/Y8fAr1sybmyMBrCflo
	FJgMLFVwMYLRBlO78ZvFFOiPh8xX6WprabxCHL+dIU9OXVagkAGAa6FVNyOGhdBDJO707pXGKnZ
	wePT/2vUFPYyx5I04UcE0TMDu+MtLmXaivHBijUP7e7pTQdn5ztvKjZ/paMw7GfJJ6ZVKe7vcQN
	JecwjCtmidw3uZK1Qw6xZPpDZ1jg0sn33tMZXM74/HpeL2iWEou3/HfRaFZRXUZ1uIQVvueJFAJ
	C+ukqxRu2WWCnQF5GczK1nQ6b6iXJA5VElqYct6YFBeTGY878wL0QaRCWnKG8Y+8jPD/ifcARG1
	Ez9vu8qTs0z+pA0+7PfPLr3ssaAbLXHfxUxbUXfg==
X-Google-Smtp-Source: AGHT+IHurBcs/BvjTvbOQhGO+EbHIilgUbXuYs+sCrM7j/eTqSvavNvGUlTAR8coiGhQ9kPUDFiU+Q==
X-Received: by 2002:a17:907:3daa:b0:b34:985c:a503 with SMTP id a640c23a62f3a-b6474b36a19mr1999860966b.35.1761060191871;
        Tue, 21 Oct 2025 08:23:11 -0700 (PDT)
Received: from tearch (pc142.ds2-s.us.edu.pl. [155.158.56.142])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8581780sm1082737866b.31.2025.10.21.08.23.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 08:23:11 -0700 (PDT)
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
Subject: [PATCH v3 4/5] thermal: khadas_mcu_fan: add support for Khadas Edge 2
Date: Tue, 21 Oct 2025 17:22:44 +0200
Message-ID: <68fbedccd22459c3fb5bff8a41c485075799a111.1761059314.git.efectn@protonmail.com>
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

Fan control on the Khadas Edge 2 is controlled with the 0x8A register,
using percentage values from 0 to 100, whereas there are only 3 constant
steps in previous Khadas boards. Therefore, i adjusted max_level and
fan_ctrl_reg when the mcu node is defined with khadas,mcu-edge2 compatible.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 drivers/thermal/khadas_mcu_fan.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/thermal/khadas_mcu_fan.c b/drivers/thermal/khadas_mcu_fan.c
index d35e5313bea41..e3ac4fb6d1f82 100644
--- a/drivers/thermal/khadas_mcu_fan.c
+++ b/drivers/thermal/khadas_mcu_fan.c
@@ -15,10 +15,13 @@
 #include <linux/thermal.h>
 
 #define MAX_LEVEL 3
+#define MAX_LEVEL_EDGE2 100
 
 struct khadas_mcu_fan_ctx {
 	struct khadas_mcu *mcu;
 	unsigned int level;
+	unsigned int max_level;
+	unsigned int fan_ctrl_reg;
 	struct thermal_cooling_device *cdev;
 };
 
@@ -26,8 +29,7 @@ static int khadas_mcu_fan_set_level(struct khadas_mcu_fan_ctx *ctx,
 				    unsigned int level)
 {
 	int ret;
-
-	ret = regmap_write(ctx->mcu->regmap, KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG,
+	ret = regmap_write(ctx->mcu->regmap, ctx->fan_ctrl_reg,
 			   level);
 	if (ret)
 		return ret;
@@ -40,7 +42,9 @@ static int khadas_mcu_fan_set_level(struct khadas_mcu_fan_ctx *ctx,
 static int khadas_mcu_fan_get_max_state(struct thermal_cooling_device *cdev,
 					unsigned long *state)
 {
-	*state = MAX_LEVEL;
+	struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
+
+	*state = ctx->max_level;
 
 	return 0;
 }
@@ -61,7 +65,7 @@ khadas_mcu_fan_set_cur_state(struct thermal_cooling_device *cdev,
 {
 	struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
 
-	if (state > MAX_LEVEL)
+	if (state > ctx->max_level)
 		return -EINVAL;
 
 	if (state == ctx->level)
@@ -88,6 +92,14 @@ static int khadas_mcu_fan_probe(struct platform_device *pdev)
 	if (!ctx)
 		return -ENOMEM;
 	ctx->mcu = mcu;
+	ctx->max_level = MAX_LEVEL;
+	ctx->fan_ctrl_reg = KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG;
+
+	if (of_device_is_compatible(mcu->dev->of_node, "khadas,mcu-edge2")) {
+		ctx->fan_ctrl_reg = KHADAS_MCU_EDGE2_FAN_CTRL_REG;
+		ctx->max_level = MAX_LEVEL_EDGE2;
+	}
+
 	platform_set_drvdata(pdev, ctx);
 
 	cdev = devm_thermal_of_cooling_device_register(dev->parent,
-- 
2.51.1.dirty


