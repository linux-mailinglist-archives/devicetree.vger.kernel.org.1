Return-Path: <devicetree+bounces-175427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8758CAB0E0E
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:00:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 92D3D1C0331F
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 09:00:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A18227586B;
	Fri,  9 May 2025 08:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a/4wB04Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C630274FCF
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 08:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746781191; cv=none; b=pVu4Ja0Qlmw7N1e2y9d5eP05A4UKXU8UGbTZphLBFUKaySwgzZTKcF00lSPxCO/hV4iCw0wbrcOvQgr9Xkmatu4qGEIgcWsj+nZnqeImuvvdSPB1K9flD9ylcpqjI7ZnWrkL+YxTK/ySoCY0rqubUdprvrO6uaITQOx9SQ0zoIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746781191; c=relaxed/simple;
	bh=dN37TqGtAW4iOa2jbs7Cudzthti3SyAS+DOD3bmionU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u6Xs+dCQfTHyjWDlY+VQcLcHALnZPgJU/2UWKRZ+HymoluTIMp9Kcw54jhu72c3STBIPeyhhCbGOoJWjzlOqmmCqhSesZPxsh742w/g8pEjCPs/OdzMxbP2vilg0jgtUHoYnO6KhG41AvQzIB5Kv3wfhymB7qG7rJBU3ei5hzV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a/4wB04Z; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43d0c18e84eso8420625e9.3
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 01:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746781187; x=1747385987; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iC1XUrhKoAzfRL3DmpwkS9UkFLx2+etmwcGscfV3g9w=;
        b=a/4wB04Z2G8WGdn20e5PV9dLG6laTgRdRClLUpvSDPj5BTKs1IfNxKG90CegCvlUr/
         Zhn8IOXznvA5UZ4VeS6XKS2mIwkRUKCC8vb0FsgA5mX3XrKifgwHIhc8U0vipFeGX0rH
         6qUp9dhHoT6V3nlVd8vhsTM09yCWkSQ3GmVj9j8F+18pIbhwmPNWNy2GOkqiofLj3wdU
         soKRdw+2RD7nQkIEIuvF4ev4gozguungwG0sCyTEwLY1X6VHVRUg3DFzXLeLTzWHZiuL
         vEpjuAhP1y+2c9dYxieFlFUBhyTaKD7aixF1yIxrSrcaPeHclCTo1a/1qwKfcVE05afv
         5xzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746781187; x=1747385987;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iC1XUrhKoAzfRL3DmpwkS9UkFLx2+etmwcGscfV3g9w=;
        b=qwrjfvOgH6feK2WM1Pj94uCe+FoudklWaCe9NIEn5THg9Vf5+gq1Ii7ACGA9/lT3pw
         cdxVL77L+ejWHgBEjE1jpqwGUpIQWAgODhOU6pjUFTqxqgOmgX696W4T9AJEoTUJfNEW
         Nf7yD8V0GZS7UE3SLcSy19mPwxozgUy5uecoP5WcD4d58BNa1qfoC8VIikZ80LN8Kc/2
         sv8mN1AMvNWw1bIy6+fJViopVaLBEJaZbHhYXTumGVk12YNRY2jqbYoU0w83nVJCgVbG
         VopzB8kRiZMyZKXn1zzxBlKwrjg3zCbnD+4m91xFqaUxH+Qhurq+Opp0Bf7pVPC0po0E
         7Qxg==
X-Forwarded-Encrypted: i=1; AJvYcCWSd/EgevwpIa631HcWia101WKIAbL4I3BSimxFhIBykXse7lwBDmZI73lf9iUaUYckFZzU8abcAhri@vger.kernel.org
X-Gm-Message-State: AOJu0YxyavURUzW0HMK/OLRvK3w4gcxdO6aw9di1m11X479Lx8tsSOzb
	fKy0oIK3Uc4EyQd0HOlj8Z4uphXoG61dR9soJFNRk6b8MhFZ6+kixM5QPxRnjys=
X-Gm-Gg: ASbGncs981XL3w5It+A+VDVr2DIchvSGZRN0pM7nuYP/ge60Lp5In4Rspw7zRgHgFpO
	MkbMTEfKxV34yn+03gx8FEIvGByMryQBFX8nOospLTBU3l4eGukdxFH8ewA0Lmbog8WJKRjcurA
	+/AWjLIJSkmAxZAnnC/4dzVWPp7iB4U0NkFZxmNDDEsT7C/AmAofRu+wIBXLBWofNslUoEWEP4a
	PA13GpJG9m/YsE4aSQN4+YjB900xdgP1QxzP6AIfkKO9Bchko5RopFhuI1fsWBDF5XUAMrUksc3
	AeLXnCLMceBTnCps0g76Li8HsQs5XPCLgKR2CINUSLwQU++d2Jmk8tzzVhaUIA==
X-Google-Smtp-Source: AGHT+IEwTRbaYhLW+eKsAXK0abPfDBd+lPLDrxQV3TCNwHIkW2G3/B5QrqZiEPvbaIo3GBAyFIokyQ==
X-Received: by 2002:a05:600c:1d8c:b0:43d:683:8caa with SMTP id 5b1f17b1804b1-442d6d64644mr20786345e9.15.1746781187478;
        Fri, 09 May 2025 01:59:47 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442d67df639sm22369115e9.13.2025.05.09.01.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 01:59:47 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 09 May 2025 10:59:41 +0200
Subject: [PATCH v2 3/6] drm/panel: visionox-rm69299: switch to _multi
 variants
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250509-topic-misc-shift6-panel-v2-3-c2c2d52abd51@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3216;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=dN37TqGtAW4iOa2jbs7Cudzthti3SyAS+DOD3bmionU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoHcP9zSCgk84BclFuLXnIeyWSCLz/kAsnKXNY/oDo
 1ykb6meJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaB3D/QAKCRB33NvayMhJ0W3WD/
 9ZwENFWG05mEkF1pJBoOW+iQOVWmZLuZGgU1955waz/OaskZH1WGIVtXYGLXoK191ocla+lX7p77Sg
 7bMdEFUIxNgBV6JyyQa4AlbruCKX7rj3CcvXRmuQTKFpd8gmHcbEioLhruJ6jaEVzXiEZEbzCVhbvg
 oRtpUtxFf0MXgNLUKOcTK3S5vQDYaAByiyKi8wxtYYy2Wp+lAmz28emu8LnFsM/rD9HGzfSSYJBCIa
 auzZCTnRCvW6MhCbLGSu1TZYiNi4xc+xwFPSHb9uKLwtLBKjci+5gD0Bz2jHpz1bV9y/ieMu4a55o3
 P4L/r2h+MzibJ0wPHsZDiYjlyOGa3MN0angVnI1mG6ea0b+/NPntnLb51ZoDs2OkQ5q4t9jUUzQieV
 YLNsYWzMsKE/GiBLb88VNEa+JS/e4gRL8m2snBJ0tXutTWuA9Z9Kc9CExr1IqKCbRIxT6+zFQLsCgB
 corR5CfVUNFgF0royk2kDYxPl6/E9FgfNcYM2OcGdFPa9byxaUw23pZpqFaKpFY50EFz09kIhvl5m2
 0d+7htI1NDArTki9K/h3BagXPTxpeLrPIV94nbNdsLgbyWsqWLZdq01lBcZxFRSmwl9BVtAseco8c1
 qk5ei8qhofJ10/JiNptsP2FzxB9LG8knt2XwhLyrQ4p3Zxpui27cDWGI1rIw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Switch to the DSI _multi variants to simplify error handling.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/panel/panel-visionox-rm69299.c | 48 +++++++-------------------
 1 file changed, 13 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-visionox-rm69299.c b/drivers/gpu/drm/panel/panel-visionox-rm69299.c
index 156bca0197481b470fa85b2eab7c979b76e489b6..c3c14150a5546512151fb15c8e9a91269ca21c65 100644
--- a/drivers/gpu/drm/panel/panel-visionox-rm69299.c
+++ b/drivers/gpu/drm/panel/panel-visionox-rm69299.c
@@ -72,30 +72,24 @@ static int visionox_rm69299_power_off(struct visionox_rm69299 *ctx)
 static int visionox_rm69299_unprepare(struct drm_panel *panel)
 {
 	struct visionox_rm69299 *ctx = panel_to_ctx(panel);
-	int ret;
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
 
 	ctx->dsi->mode_flags = 0;
 
-	ret = mipi_dsi_dcs_write(ctx->dsi, MIPI_DCS_SET_DISPLAY_OFF, NULL, 0);
-	if (ret < 0)
-		dev_err(ctx->panel.dev, "set_display_off cmd failed ret = %d\n", ret);
+	mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
 
 	/* 120ms delay required here as per DCS spec */
-	msleep(120);
+	mipi_dsi_msleep(&dsi_ctx, 120);
 
-	ret = mipi_dsi_dcs_write(ctx->dsi, MIPI_DCS_ENTER_SLEEP_MODE, NULL, 0);
-	if (ret < 0) {
-		dev_err(ctx->panel.dev, "enter_sleep cmd failed ret = %d\n", ret);
-	}
+	mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
 
-	ret = visionox_rm69299_power_off(ctx);
-
-	return ret;
+	return visionox_rm69299_power_off(ctx);
 }
 
 static int visionox_rm69299_prepare(struct drm_panel *panel)
 {
 	struct visionox_rm69299 *ctx = panel_to_ctx(panel);
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
 	int ret, i;
 
 	ret = visionox_rm69299_power_on(ctx);
@@ -104,36 +98,20 @@ static int visionox_rm69299_prepare(struct drm_panel *panel)
 
 	ctx->dsi->mode_flags |= MIPI_DSI_MODE_LPM;
 
-	for (i = 0; i < ctx->desc->init_seq_len; i++) {
-		ret = mipi_dsi_dcs_write_buffer(ctx->dsi, &ctx->desc->init_seq[i * 2], 2);
-		if (ret < 0) {
-			dev_err(ctx->panel.dev,	"cmd tx failed, ret = %d\n", ret);
-			return ret;
-		}
-	}
+	for (i = 0; i < ctx->desc->init_seq_len; i++)
+		mipi_dsi_dcs_write_buffer_multi(&dsi_ctx, &ctx->desc->init_seq[i * 2], 2);
 
-	ret = mipi_dsi_dcs_write(ctx->dsi, MIPI_DCS_EXIT_SLEEP_MODE, NULL, 0);
-	if (ret < 0) {
-		dev_err(ctx->panel.dev, "exit_sleep_mode cmd failed ret = %d\n", ret);
-		goto power_off;
-	}
+	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
 
 	/* Per DSI spec wait 120ms after sending exit sleep DCS command */
-	msleep(120);
+	mipi_dsi_msleep(&dsi_ctx, 120);
 
-	ret = mipi_dsi_dcs_write(ctx->dsi, MIPI_DCS_SET_DISPLAY_ON, NULL, 0);
-	if (ret < 0) {
-		dev_err(ctx->panel.dev, "set_display_on cmd failed ret = %d\n", ret);
-		goto power_off;
-	}
+	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
 
 	/* Per DSI spec wait 120ms after sending set_display_on DCS command */
-	msleep(120);
+	mipi_dsi_msleep(&dsi_ctx, 120);
 
-	return 0;
-
-power_off:
-	return ret;
+	return dsi_ctx.accum_err;
 }
 
 static const struct drm_display_mode visionox_rm69299_1080x2248_60hz = {

-- 
2.34.1


