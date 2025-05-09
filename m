Return-Path: <devicetree+bounces-175426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D2FAB0E0D
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:00:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8476618992DC
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 09:00:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 980A227511E;
	Fri,  9 May 2025 08:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yF149tYB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE872749EE
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 08:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746781190; cv=none; b=uuKNZkNXah8o+9q8KK7SyDxUKFkBKmFCFWgzfbXZxCVE/grKBKoLktZaamEKETdPUiySsIhIrPBkep9niLdaAFkbiIXvaozggSOFvcruUS6rEAS6uOBYExErK0lPf2F0/hJAb8sdJTond3r8LPK1COzXBvYKhaxDNKBXdkN229Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746781190; c=relaxed/simple;
	bh=gDQq96GGiawbb69OmbCZK5wRVJLN5w3DnUGh97vmrJE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=I6N8L25b+4VgZSY40Z4Y1UiVnBoZYeGTwDNyIZnWGPAQQl3q6COZpDfT2X/Cchpavw9eqedOnJ7SQmlEuTJhb3yZNXfCHOTd9HTx9FQaMSUfTpj3ULf1+1lHPGKfy2nschrCuKawbIac7dRJaIF5bCCiiJR27UPIQq+6AmH4Ba8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yF149tYB; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cfe63c592so18282605e9.2
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 01:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746781186; x=1747385986; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LL0SI7hRp64EoC4NuU/ZcmxBzSY7mUI9jIp63c+PSfE=;
        b=yF149tYBXus86Qg5OPbVy7X9GcUSd7DqysPA5ncE39x1PrcQvkDjcF/qx+RHiBlwLT
         6GuuvwxiZmhAY0MjmLN5fAHaWb2Q0iom/d4qkqeFxiXwVnPYj5lzxaHJU6ePcxKhTfxv
         E6SgrRaxEsOCIEHkDfw4K2aGC9a0XqOko9uzr/dVaR0PD1jzBgD7VcOdEqHpLoXvEOky
         KQFgaqN/ZCVzL/WvuViDTiv0D2vuJq2aIIw6aNjdg0ioWtrb1eItxKQqyCW9B/f5QhC1
         PSF1rwNhSLhrPrX2wubSgn+mpWbzTwTyTgpAngrlA5Q6g1IILNwoogrHdHOvCZaRoCvD
         vaQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746781186; x=1747385986;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LL0SI7hRp64EoC4NuU/ZcmxBzSY7mUI9jIp63c+PSfE=;
        b=pqjLiMhMQKBSfzqBLW9TEamd5eC5Ck/tyKLF3fio0vho2W31dAw2FNNpmR+yJPM12k
         QV10bN9JvJHUFJIldSFgGmE2Z5/urBvIrqgq2cv1z7F+rqL5+Q+uPav+b6UDfW+x6GuP
         tv2ym+l02hM+F3ntktBQglSbEzhDcFCceSm6MrxYSqs9W1IC2jhvA6QEFX+oFUL0C4q8
         5gNycymGAhGmWQSxwPplsMDSVvXNsonB38xA1F1VaoxroC3dxmKU3aLyWpbSuO4kVokc
         kP/A/7R8ryiUYcji6eFQFram8qrZjvGtOQDdmsTDYTQ9a/iAGxm6N/q0HzyTDUPGXM8j
         EB0w==
X-Forwarded-Encrypted: i=1; AJvYcCWw1fKxLdvdCvXyjmF56wVDs32Er2S74I6XwLypNLVPJxLZiLJ0pTgpUFrCzaC7pec2h7xkqEvAcmQi@vger.kernel.org
X-Gm-Message-State: AOJu0YzCygNraAG8MTjKyinjRobSv2XDJvQrFotbspl2VKWbUCY8SzPx
	cTYvFy9i9ehvwdzoFo+1UPHq01cRd7nW+PdvOK8/TSnNLjH0+nn8dlCGbwlknt0=
X-Gm-Gg: ASbGnctVc0hxtQbpFzg/kIbQbuqWq69V91GjpJIqWuWSRpkSEkM7iPWXKkSu1tlKZmt
	fOq/3+LkoB/qFxT578TA3Q23wvCjTvdXFh8jkZZCkIbeC9LzMvxD22BjFiQQdbnD2ypBWi5DAFU
	L1GSUyIHpZQd8bGTFG8PVchVdU2Dta8HJ5yrIhQ3BA6btZVdXb1kedt/008iv/YujRSBOLVLToE
	K9JmfaeiL/SGFhk5cPrx6Wul9OwFk0ukvlr+h2ljQSa2U2OOENhnerC+Jw5fc+w8Oo/aZj8aefn
	9qsMEFZfcOLYDt4rBJU/rUW6nNtABTendNt10rTP6ShczZPdbqEMSVIn3lnrqA==
X-Google-Smtp-Source: AGHT+IF+OYkKTDmCWEB33fkMtV2Hs1Fyo+S5yTgPcYID1gXQGcB5imZPQroRvLjP1qNq1NuqZ7b1LQ==
X-Received: by 2002:a05:600c:37c6:b0:439:643a:c8d5 with SMTP id 5b1f17b1804b1-442d6c39d19mr25831495e9.0.1746781186524;
        Fri, 09 May 2025 01:59:46 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442d67df639sm22369115e9.13.2025.05.09.01.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 01:59:46 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 09 May 2025 10:59:40 +0200
Subject: [PATCH v2 2/6] drm/panel: visionox-rm69299: add plumbing to
 support panel variants
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250509-topic-misc-shift6-panel-v2-2-c2c2d52abd51@linaro.org>
References: <20250509-topic-misc-shift6-panel-v2-0-c2c2d52abd51@linaro.org>
In-Reply-To: <20250509-topic-misc-shift6-panel-v2-0-c2c2d52abd51@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Casey Connolly <casey.connolly@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4412;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=gDQq96GGiawbb69OmbCZK5wRVJLN5w3DnUGh97vmrJE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoHcP9+2WSCKMk4dRAWq2StiDl4binZHitA1jTM0EM
 nFNOI0+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaB3D/QAKCRB33NvayMhJ0ZznD/
 9WaRCwSPExe05+IQ9+4rP+3qkRLnLQn2WKQoVrOoVkk3Eq8BBHrUde2QOxoFiz67RaFd1+P/Ez/BM2
 RaOtY5IlvbL+Kc510TtJLW8DC45FKcEld1jZH1D58G6celPL7nr7I5WnYtWRqNhtUtdZ24IxAjK/Oh
 fyHslpFpHYSzMKsf7J8oboTfX49BU9VWRz5WvgitFIq9XjEoPFQxLfRfk4khsfUVgkjXyGXvrY6q2N
 huT+JcJUNxovJJMMwkwUF2WWBoNB8+bulebASPtgU2qaViHgwmVz27f2+tpFmDof1YFOXxV2iodGeC
 O1SCmq9aRNy2Ze9D3nMKMe3snEZT8B++8b3vvxwMxhLkU84jomwL9j+9b3Krn4udH1fXYd5bKv2/OH
 9zu7sBW/P+bGkdVogM3JwWhb3FELf66ylNzToxgvgE1s5eDea3ae/FwkbnTwYAaDvyuoRW/YGMqC7j
 fXBEfZAzOntkTrPdlTM6eI0UQWH/naD/BNxNm0l1Uog2MYTdsaLY7trvI9G5+P+wT0ScpsxjHn/wps
 nCdH80zuU3XaHbARsgym2+ZnGif4F6DpjkikYP7DoVRgtY8uMTRl5JG8rVc4YDyLQ2Or//4A1wEVJu
 +cvSnfFmyvVP+F6hS3DLTqm/H78QLXx9TotJYutdkonY2JyLx1s6Bcn1cTiA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

In order to support a panel variant, add plumbing code to pass
init sequence and mode as compatible data.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/panel/panel-visionox-rm69299.c | 58 ++++++++++++++------------
 1 file changed, 32 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-visionox-rm69299.c b/drivers/gpu/drm/panel/panel-visionox-rm69299.c
index be3a9797fbced5222b313cf83f8078b919e2c219..156bca0197481b470fa85b2eab7c979b76e489b6 100644
--- a/drivers/gpu/drm/panel/panel-visionox-rm69299.c
+++ b/drivers/gpu/drm/panel/panel-visionox-rm69299.c
@@ -5,6 +5,7 @@
 
 #include <linux/delay.h>
 #include <linux/module.h>
+#include <linux/property.h>
 #include <linux/mod_devicetable.h>
 #include <linux/gpio/consumer.h>
 #include <linux/regulator/consumer.h>
@@ -15,11 +16,22 @@
 #include <drm/drm_modes.h>
 #include <drm/drm_panel.h>
 
+struct visionox_rm69299_panel_desc {
+	const struct drm_display_mode *mode;
+	const u8 *init_seq;
+	unsigned int init_seq_len;
+};
+
 struct visionox_rm69299 {
 	struct drm_panel panel;
 	struct regulator_bulk_data supplies[2];
 	struct gpio_desc *reset_gpio;
 	struct mipi_dsi_device *dsi;
+	const struct visionox_rm69299_panel_desc *desc;
+};
+
+static const u8 visionox_rm69299_1080x2248_60hz_init_seq[][2] = {
+	{ 0xfe, 0x00 }, { 0xc2, 0x08 }, { 0x35, 0x00 }, { 0x51, 0xff },
 };
 
 static inline struct visionox_rm69299 *panel_to_ctx(struct drm_panel *panel)
@@ -84,7 +96,7 @@ static int visionox_rm69299_unprepare(struct drm_panel *panel)
 static int visionox_rm69299_prepare(struct drm_panel *panel)
 {
 	struct visionox_rm69299 *ctx = panel_to_ctx(panel);
-	int ret;
+	int ret, i;
 
 	ret = visionox_rm69299_power_on(ctx);
 	if (ret < 0)
@@ -92,28 +104,12 @@ static int visionox_rm69299_prepare(struct drm_panel *panel)
 
 	ctx->dsi->mode_flags |= MIPI_DSI_MODE_LPM;
 
-	ret = mipi_dsi_dcs_write_buffer(ctx->dsi, (u8[]) { 0xfe, 0x00 }, 2);
-	if (ret < 0) {
-		dev_err(ctx->panel.dev, "cmd set tx 0 failed, ret = %d\n", ret);
-		goto power_off;
-	}
-
-	ret = mipi_dsi_dcs_write_buffer(ctx->dsi, (u8[]) { 0xc2, 0x08 }, 2);
-	if (ret < 0) {
-		dev_err(ctx->panel.dev, "cmd set tx 1 failed, ret = %d\n", ret);
-		goto power_off;
-	}
-
-	ret = mipi_dsi_dcs_write_buffer(ctx->dsi, (u8[]) { 0x35, 0x00 }, 2);
-	if (ret < 0) {
-		dev_err(ctx->panel.dev, "cmd set tx 2 failed, ret = %d\n", ret);
-		goto power_off;
-	}
-
-	ret = mipi_dsi_dcs_write_buffer(ctx->dsi, (u8[]) { 0x51, 0xff }, 2);
-	if (ret < 0) {
-		dev_err(ctx->panel.dev, "cmd set tx 3 failed, ret = %d\n", ret);
-		goto power_off;
+	for (i = 0; i < ctx->desc->init_seq_len; i++) {
+		ret = mipi_dsi_dcs_write_buffer(ctx->dsi, &ctx->desc->init_seq[i * 2], 2);
+		if (ret < 0) {
+			dev_err(ctx->panel.dev,	"cmd tx failed, ret = %d\n", ret);
+			return ret;
+		}
 	}
 
 	ret = mipi_dsi_dcs_write(ctx->dsi, MIPI_DCS_EXIT_SLEEP_MODE, NULL, 0);
@@ -160,8 +156,7 @@ static int visionox_rm69299_get_modes(struct drm_panel *panel,
 	struct visionox_rm69299 *ctx = panel_to_ctx(panel);
 	struct drm_display_mode *mode;
 
-	mode = drm_mode_duplicate(connector->dev,
-				  &visionox_rm69299_1080x2248_60hz);
+	mode = drm_mode_duplicate(connector->dev, ctx->desc->mode);
 	if (!mode) {
 		dev_err(ctx->panel.dev, "failed to create a new display mode\n");
 		return 0;
@@ -191,6 +186,10 @@ static int visionox_rm69299_probe(struct mipi_dsi_device *dsi)
 	if (!ctx)
 		return -ENOMEM;
 
+	ctx->desc = device_get_match_data(dev);
+	if (!ctx->desc)
+		return -EINVAL;
+
 	mipi_dsi_set_drvdata(dsi, ctx);
 
 	ctx->dsi = dsi;
@@ -239,8 +238,15 @@ static void visionox_rm69299_remove(struct mipi_dsi_device *dsi)
 	drm_panel_remove(&ctx->panel);
 }
 
+const struct visionox_rm69299_panel_desc visionox_rm69299_1080p_display_desc = {
+	.mode = &visionox_rm69299_1080x2248_60hz,
+	.init_seq = (const u8 *)visionox_rm69299_1080x2248_60hz_init_seq,
+	.init_seq_len = ARRAY_SIZE(visionox_rm69299_1080x2248_60hz_init_seq),
+};
+
 static const struct of_device_id visionox_rm69299_of_match[] = {
-	{ .compatible = "visionox,rm69299-1080p-display", },
+	{ .compatible = "visionox,rm69299-1080p-display",
+	  .data = &visionox_rm69299_1080p_display_desc },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, visionox_rm69299_of_match);

-- 
2.34.1


