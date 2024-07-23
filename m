Return-Path: <devicetree+bounces-87459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A1B9399AE
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 08:26:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DAA65B21AB7
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 06:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 712B913D8BA;
	Tue, 23 Jul 2024 06:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="rvrcS7Cp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E525613D896
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 06:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721715992; cv=none; b=nYIm6FM4oMOQYyfEb5wBAWPpNIaIpW/YoalpT46njTqfzBrQrloJb7Icqx9HbTKABazy1/mSXJMjZGCNCF1P6fJOYZ05ToyvwLLggzvtjAZkVZcTKvDKiiZ+U/OnwIhhwFpsjrrzBVH/Id2WPwHn83xQXSZTwvogvkvx7NLgpMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721715992; c=relaxed/simple;
	bh=sPvIUhcfxQrn/1WC2FAzQI+ObrcduHZ/wkF5+Fgq014=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=N7FnmL1XhsTFBD10m7Ge8lf+u5nxBib8CqxgC0ZyntxoXdhda7lJ1rEtuCWv2RFdDnSljhMW37gYcWaRdAEzbWQ1fLcxhR51tJS5PdCVOaHAq8CYAQZ3D3S4ykWy0+9HuTA5d7Wi37ECNK6i/YeAI3YpM/t2T7wz3F47/R2Xn/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=rvrcS7Cp; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1fd65aaac27so3242625ad.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 23:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721715990; x=1722320790; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Gkiwi2HblLWIRJEo+ICl77dLaAlbyjAEjVCFsYMguCg=;
        b=rvrcS7CpvC6SX661YwFE658PsgJB5sp10JvE4DwJCwY89k2I1Pj+gLdS7LgwrUNoFT
         vI+76ClIxm7T27BSrwdyRb+5gVqTPUZhlt+1p3ht0+DZCns/UOR9cfdctiYE+vU26IH/
         fl2oojjsO0RIZOei29D+kxTIWiv6hcgZ70e1s4zdlGCInAt86qCWe8bofhxp4Gcav/HG
         +2hQnNe1QkUC4NCJJzada202A7a5zWGTcVQEm6FCtUU4e8A52XG6t8eLclyZSQ2d7Ww4
         4xZQ1iI6e5g1qjc754DqEgISKHfGnj5s6xvJ6v6JTE3sVpp4i/eexvlcvyO+4FkwFQO2
         lwhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721715990; x=1722320790;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gkiwi2HblLWIRJEo+ICl77dLaAlbyjAEjVCFsYMguCg=;
        b=V7rabsOAC/ktFnoohqTR9JaWMbIWsobNYG/k4B+Xrtvog/VMgSOuZOwPU4SzFQFzIi
         PPhcNAAi6VU7m/nkd1YqDMqc8CPQFG5Kpx+lwQx9In/+ZbmxbED0PF8kTyllHYCDXzy/
         W9dfLM0ePrKSK70Ms2qd9CsimxEFZtjHTF4STqXDuKkqt/uoEtDW5OQpAZV91m7snazv
         OS1JJsjokIX9f27zo9Ddx0DxbjBxKzPKQHdc1b8uWK6dsu11tp/DOZv4Nlh+B9zZPq3/
         17J1GG3gcoOftI5R4X2/uUnNwrJSio+z2YRbkfPFFZmVBenOGfJ4V+2/knK7QpJEq/Hm
         OIsA==
X-Forwarded-Encrypted: i=1; AJvYcCWc6ZDRxlfo5yhxSqtQYDeS6YwX404cYmDQr/u98a83BLYBUT7pkAlk1zenUacDEzZ/9nepX5FD+E0RpMF5RNjQ6QSxgluN5upC9w==
X-Gm-Message-State: AOJu0YwU1qSatuC+RD0ARPoYD4bCS4uVUQnRV+xgDWWndw35YFyqiSOL
	O09MfXbBY+SyyAFZHPh1/WE9m8RIoH5BQWlKRZtJ85tcghyVXQMT6b103O5Vspo=
X-Google-Smtp-Source: AGHT+IEMEYV49A/7sN13fNs7QtDLUZ+KsEivgaXNWoeS2uNGXFKSc3HIPXHBpH2cEqizv54RUEDbdg==
X-Received: by 2002:a17:902:d509:b0:1fc:4acb:3670 with SMTP id d9443c01a7336-1fdb95128e9mr16250375ad.12.1721715990126;
        Mon, 22 Jul 2024 23:26:30 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fd6f25ab47sm66351465ad.45.2024.07.22.23.26.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 23:26:29 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	sam@ravnborg.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	dianders@chromium.org,
	hsinyi@google.com,
	awarnecke002@hotmail.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v4 1/2] drm/panel: boe-th101mb31ig002 : Fix the way to get porch parameters
Date: Tue, 23 Jul 2024 14:26:14 +0800
Message-Id: <20240723062615.14796-2-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240723062615.14796-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240723062615.14796-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The current driver can only obtain the porch parameters
of boe-th101mb31ig002. Modify it to obtain the porch
parameters of the panel currently being used.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Changes between V4 and V3:
-  1. No changes.
v3: https://lore.kernel.org/all/20240722092428.24499-2-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V3 and V2:
-  1. No changes.
v2: https://lore.kernel.org/all/20240716121112.14435-2-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
-  1. No changes, Modify the commit information format.
v1: https://lore.kernel.org/all/20240715031845.6687-2-lvzhaoxiong@huaqin.corp-partner.google.com/
---
 drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
index b55cf80c5522..d4e4abd103bb 100644
--- a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
+++ b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
@@ -312,15 +312,14 @@ static int boe_th101mb31ig002_get_modes(struct drm_panel *panel,
 	struct boe_th101mb31ig002 *ctx = container_of(panel,
 						      struct boe_th101mb31ig002,
 						      panel);
+	const struct drm_display_mode *desc_mode = ctx->desc->modes;
 	struct drm_display_mode *mode;
 
-	mode = drm_mode_duplicate(connector->dev,
-				  &boe_th101mb31ig002_default_mode);
+	mode = drm_mode_duplicate(connector->dev, desc_mode);
 	if (!mode) {
 		dev_err(panel->dev, "Failed to add mode %ux%u@%u\n",
-			boe_th101mb31ig002_default_mode.hdisplay,
-			boe_th101mb31ig002_default_mode.vdisplay,
-			drm_mode_vrefresh(&boe_th101mb31ig002_default_mode));
+			desc_mode->hdisplay, desc_mode->vdisplay,
+			drm_mode_vrefresh(desc_mode));
 		return -ENOMEM;
 	}
 
-- 
2.17.1


