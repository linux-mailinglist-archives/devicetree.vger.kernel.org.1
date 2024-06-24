Return-Path: <devicetree+bounces-79365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 172B1914FCD
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:21:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 392D01C21DA1
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 14:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C7A8173357;
	Mon, 24 Jun 2024 14:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="AoFspo+G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6CD617556F
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 14:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719238886; cv=none; b=YPGg6UzTPzOl72D4sq0FZjEkXaFVImtJPKh3nhJdUDxmgSGxiT/qgpd9dHK3dgARJg+HJolqkMpIrdZlSfyt6eKIFQp1agXtj47d99/CCdJ3bY49hRUbIpOdE+CSZtTRxqZ5CfEIjaKyaPC+PbCOTN+KWOYuuLAb/GH9vpPtEC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719238886; c=relaxed/simple;
	bh=U+k1LJOUm6r8bTySJM4mWYdoZLBP3XGtTun3J1Lpvpc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=LgATjCR8E/6LA77BxAtLNHPzVdELGUnuNNsIyEh7K8YJGaQBkhIqbtDFulpHTPimbFG4P8s7TRkcxSMhGE8knWFNQC8fuls7F0LZHJyzbVkFCfwtwuCsUOnlUR72/LkPrN1Fqd2ifUROYghhDha4Ps1Y9qyJ97amZ5DUPyj99k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=AoFspo+G; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1f70c457823so30388195ad.3
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 07:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1719238875; x=1719843675; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1qpj0f/OeWA6dGKiRxuI0hvWF2bl8N/2CZEVg3ha4Ow=;
        b=AoFspo+GMeqwAuQPgdkur6F53yUJa7Pu6p2nJuEHve+YXrMvgB0dZQizI2Rs32tlfI
         521+3WZAVchlsk+FYMnT6HDa5tVw5iKm1s+2+e/QLv8PYQRvdwsQFFwypflzC0LZKEZ8
         R8WY37AHj0DRgJ6CpV1Yfv1yADsL0b8uga0NOZeSMtRr2UWlFpXPNtnrnn89FSnmdiIv
         q9hhVzAtZVE6XkgTda9V2TGHa9+tmy0V9Smgc7a1zTCW8fmP6lXxa4IT4CxQswl5Gird
         ULVA6EHnNNLWnPQfeWHcjPAHqJAqDXWswtseMZzIEwX7ZnDNfBmHKfri9Vop0P5yKRQD
         VKsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719238875; x=1719843675;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1qpj0f/OeWA6dGKiRxuI0hvWF2bl8N/2CZEVg3ha4Ow=;
        b=U6GmtJIHnwtlq7A9+i3WiqOaWZMmXO8MKv170Hz27GK+aAM1hE9E5N04qa+tGyLqpE
         Be/whyMoNKcob1D+0xZc7kHfJoUHQso5pZO63mRkQdL2t8DEzjyMV/1+iViohhJLGaMF
         DfmwzBPtKw1Q76Ug0Fnc2F5KE/0bd577f5FwkrAHxdwoDr+uyRy9pLry+fl3lU2tVvPU
         fDAlWvxyXm32/WzIWVDjBZ60qSTkUk5D4Vhc9HoWttMN3eWdwhRFEMeggnqXFL0Bmh5P
         WHF4DJWwl2xPgyBATVA7bz8BaKSayY1UODoPIvTFUXKQZ3exv3INUklCpZNcGBroKad4
         P69A==
X-Forwarded-Encrypted: i=1; AJvYcCWmpzXWt9JL48IXw5RZ3j1SEp9jKvIsMU9t78VdKbxh8eg46fyUZVeIQNiRbjERbA83q3viYIiu3rz8qHBQ+yI8iGldScrK7Lcz6w==
X-Gm-Message-State: AOJu0YzuduUJcM0RHmPO5ZmJz6pAbwDnPvoeo73tiiQB5y2zqvV9YIwJ
	uhs6PqG5iZ6rsk7leTPHE/AUAId19gQfpKvaEgXs+kez0OEesGL3M5JjxfGfciE=
X-Google-Smtp-Source: AGHT+IGOvHDC4YqenIDttqXlIUEmp0xeeweiw5w0vewijcFzwGrUoNqHB/fSBZ8ly/gUksuCYnoCrg==
X-Received: by 2002:a17:902:ea11:b0:1fa:a89:fd1a with SMTP id d9443c01a7336-1fa23bdce4fmr53443755ad.10.1719238874719;
        Mon, 24 Jun 2024 07:21:14 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9eb3d5fa9sm63243855ad.206.2024.06.24.07.21.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 07:21:13 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com,
	jagan@edgeble.ai,
	neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v5 5/5] drm/panel: jd9365da: Add the function of adjusting orientation
Date: Mon, 24 Jun 2024 22:19:26 +0800
Message-Id: <20240624141926.5250-6-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240624141926.5250-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240624141926.5250-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This driver does not have the function to adjust the orientation,
so this function is added.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Changes between V5 and V4:
- 1. Change dev_err() to dev_err_probe().

V4:https://lore.kernel.org/all/20240620080509.18504-5-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V4 and V3:
- No changes.

---
 drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
index 593e12b31ebd..c6b669866fed 100644
--- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
+++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
@@ -42,7 +42,7 @@ struct jadard {
 	struct drm_panel panel;
 	struct mipi_dsi_device *dsi;
 	const struct jadard_panel_desc *desc;
-
+	enum drm_panel_orientation orientation;
 	struct regulator *vdd;
 	struct regulator *vccio;
 	struct gpio_desc *reset;
@@ -178,12 +178,20 @@ static int jadard_get_modes(struct drm_panel *panel,
 	return 1;
 }
 
+static enum drm_panel_orientation jadard_panel_get_orientation(struct drm_panel *panel)
+{
+	struct jadard *jadard = panel_to_jadard(panel);
+
+	return jadard->orientation;
+}
+
 static const struct drm_panel_funcs jadard_funcs = {
 	.disable = jadard_disable,
 	.unprepare = jadard_unprepare,
 	.prepare = jadard_prepare,
 	.enable = jadard_enable,
 	.get_modes = jadard_get_modes,
+	.get_orientation = jadard_panel_get_orientation,
 };
 
 static int radxa_display_8hd_ad002_init_cmds(struct jadard *jadard)
@@ -880,6 +888,10 @@ static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
 	drm_panel_init(&jadard->panel, dev, &jadard_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
 
+	ret = of_drm_get_panel_orientation(dev->of_node, &jadard->orientation);
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "failed to get orientation\n");
+
 	ret = drm_panel_of_backlight(&jadard->panel);
 	if (ret)
 		return ret;
-- 
2.17.1


