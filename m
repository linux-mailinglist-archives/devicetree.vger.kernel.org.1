Return-Path: <devicetree+bounces-77762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CF690FE49
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 10:06:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CE492867BE
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 08:06:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D8A2174ED7;
	Thu, 20 Jun 2024 08:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="vLq9zNgf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 952B2175544
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 08:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718870752; cv=none; b=JHJUa3NcD/yFfp+v2KH1PkFcWBixqSz7zSZ1AzsU1Xr+DYysw5EnQNWmrfrrsMKXqGbbnhqeiKtK1aQfNQva0DDoh8L7meeGI1yI/PfTgXOvVxx5gsZQ5L7DMxZh8AAHkPtvwjM71DR1YR0VKa3LgKPiYxCoPltfJQR2G5qwJBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718870752; c=relaxed/simple;
	bh=TR/p/s+7xIFTDCxFlPxAv5HhWtahQakW/X1rrhPB/Aw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=QIOyhM8zsYaXTtKx8TKSIU58HH9bJW4egff5jFXpwvESYUgvNdp+koHkChVXZ2JDD/uz2OBbTMnK3IFXuFdixfpxKAYbvQC8UeYnxAyuWg9lxWyYc3RCXdotMzwiUoNWw4gZh0LToV8LNj5NtVb/jvFdQzw6/JnnGDKqdl+2T1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=vLq9zNgf; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-250ca14422aso352701fac.0
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 01:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1718870749; x=1719475549; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AMOoGP2LakwJmw2FH71ZMogJWrdUzY8/qHEtPyyBbV4=;
        b=vLq9zNgf1gVmIG8qbOyL5na+FHPzzzUbLTcsNitbryKC/GKPuxnfGHsin7QkFSLaTm
         g7MxOjvQHcr/kzJi6mg/C8wkxkAuRU6RTCNBMNsrK5YVG8wQl3XBTPOoDjUtqaRt6w18
         Rtu4pvb9KFDauXzZBRqzdHe2cU5QFh8091IK+Ykg5LoUXNikVpvVATzqyfG07KCDjyF8
         U8U8LJFbVxvurfu5KGPk1nc4jw/g2trQXv9eMwKeCwOdGZb1A53q23MWhDp1841pTq+N
         GUwxq3ANhqZ/lrg47eGA7i0E2JYUu7Wuq7mjwggctbEvUDNevxjKBDO4GEiPDY161NvQ
         Q0pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718870749; x=1719475549;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AMOoGP2LakwJmw2FH71ZMogJWrdUzY8/qHEtPyyBbV4=;
        b=jFWxZYhP9h1mwKLkvE/YDJu3vNVjDxGa7jFpSUgkgMYLHL+50tXQwobDs1YLuVQSTN
         u9HQs3kGOX1s+N58dcrrI2d4z8inywW+kayeY2SLeuVkRhlzTCNJpxSvhbW17Q6R4Gyf
         8RpxVbWXOzclkf4IzRjnFhPoSsnZ+XmKwxN8ol67dNioqTHdx4fAoK5YDX2GCH7+76uq
         QAZXqhF2aeG1ukNXlBfHl6Hrdr68ghGsJO3jf9y4KvnF93Oh3LvnRrkapC5TqqQm9shx
         L2FZwkBkKtftQj/FbgqU8Xp6MN7asEsLaA7mW/ZkU3yyZ1hsb2MyQeyffU3JnTGZxC4O
         o9Fw==
X-Forwarded-Encrypted: i=1; AJvYcCWmcUtcDMWKcrx5LrkjFtGHtF12jHY9im3HD8s/yFWQSaSMN48vtTNcH/COwHyjNLf6a6LiTmO5Z8nxd7QMqJ9onDZCzhgLQSs/bQ==
X-Gm-Message-State: AOJu0YyYOqx/bFCSlH2opoHj8baTIbxJdn+mX68dgFnfvezRHSAmYl9/
	jCsfBI98YyTiAzcjvMIhCGFzIoRPccsV0vg9H+UCgBBmfodJjvr3dzcaNUmaC+4=
X-Google-Smtp-Source: AGHT+IEbQAMEJgVsRzS0P1rsWA85d/j/lSoDKbJ+GhYfS/LOyoubfsealP8TGQ73YDuxPIYvuL2izg==
X-Received: by 2002:a05:6870:b50f:b0:255:1819:b458 with SMTP id 586e51a60fabf-25c948f70cfmr4660143fac.8.1718870749476;
        Thu, 20 Jun 2024 01:05:49 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-705cc96c8c5sm11805889b3a.58.2024.06.20.01.05.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 01:05:49 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v4 4/4] drm/panel: jd9365da: Add the function of adjusting orientation
Date: Thu, 20 Jun 2024 16:05:09 +0800
Message-Id: <20240620080509.18504-5-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240620080509.18504-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240620080509.18504-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This driver does not have the function to adjust the orientation,
so this function is added.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---

Changes between V4 and V3:
- No changes.

---
 drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
index 632bffa035ee..2545e22a5c85 100644
--- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
+++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
@@ -46,7 +46,7 @@ struct jadard {
 	struct drm_panel panel;
 	struct mipi_dsi_device *dsi;
 	const struct jadard_panel_desc *desc;
-
+	enum drm_panel_orientation orientation;
 	struct regulator *vdd;
 	struct regulator *vccio;
 	struct gpio_desc *reset;
@@ -203,12 +203,20 @@ static int jadard_get_modes(struct drm_panel *panel,
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
 
 static const struct jadard_init_cmd radxa_display_8hd_ad002_init_cmds[] = {
@@ -893,6 +901,12 @@ static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
 	drm_panel_init(&jadard->panel, dev, &jadard_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
 
+	ret = of_drm_get_panel_orientation(dev->of_node, &jadard->orientation);
+	if (ret < 0) {
+		dev_err(dev, "%pOF: failed to get orientation %d\n", dev->of_node, ret);
+		return ret;
+	}
+
 	ret = drm_panel_of_backlight(&jadard->panel);
 	if (ret)
 		return ret;
-- 
2.17.1


