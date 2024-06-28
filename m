Return-Path: <devicetree+bounces-81315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E16A691BEF8
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 14:46:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 368D9B23493
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 12:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64E07194A68;
	Fri, 28 Jun 2024 12:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="gA6C0CYu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86279194C72
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 12:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719578769; cv=none; b=fFfvlvWpH8FHIIatSeqWPkQwL+9ID9UYX1l8kvLGJaSHpzAGzoLmreLFa0WdRcbwlnylHPdvM2vYUoyDxSWK8u9NylMDEgZIKyi0Ak5xROJWgdHJiOMOPzNohd+k7nDxItYH+QJSi4LG5FHBuAQxmEslAziecY64yMtnVozYk7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719578769; c=relaxed/simple;
	bh=pNZs9jyP/A7Pf2JchDUxylJEiYsyQSUgSvF66qCzCUI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=iXOmcgR+FoJPz1HLn1DUYJYts4OQCYMsDX5UU1LN3Vu2JFEq6hL8AH0rwtmrrw5B8QvByLdUSGduRiExXK8xLuyEpThH3yMIA0uGfsCNHjsUfO4xL+7ahVe4J329xqOKJGZldWI1A/cXK+rB2NI0BQrdSqLCApaUmMVhrUERbG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=gA6C0CYu; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1fab03d2eecso3590805ad.0
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 05:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1719578757; x=1720183557; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NYdcAWuXYTWQAAXUNDXbS02yL9oAgEK+cNVTslAtCcU=;
        b=gA6C0CYuJWUh8DgW+ovhN3aBcQoVIMhLd9CAJdRdHqyM+Vji6NpOzn0CSSgyRpLLrV
         qSmcjU4gJIH9DyvjFam7q3xxjTwTGuV70dmWtjGh21zFb+7+ZH5+HA7PCQpL/iwDNA5o
         pFQXzRNxQefzO4AblacKT3QRXcJmDT95501pfgJ9bi07oa5uNkREr2p8P9mzIunUnHhx
         me6/MsS4j7t9lH2XFVCyTJwazQbK+VroEO7/KN0UJITQJllMymylImwYHCqe3zqeZTYo
         UhLB3cBgfDIOQCHxZ6Xw8FqrpyvO6Ghe31w734roshKfRiFb5Srgvpz/80GghW/AA+WM
         ZJ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719578757; x=1720183557;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NYdcAWuXYTWQAAXUNDXbS02yL9oAgEK+cNVTslAtCcU=;
        b=hlVdjRoMJzK6xf9xUmu7MOZj1Cv8kAbkpuPpg9zefZM8Ng+82Gvgvk907jAXqpTfCz
         ivy4BO+BKCEiKDtW4mn5VgQ/j4EWpVGaIahFB5wov0ZvBMBX7Nrm6sF7Agcei0cbffYj
         hC2uqtqGEC6FLdwEO6PjjUTRDAwp5TuuvHwDeLA3HHziiDxYwychjCbjluZ4Vf9xpBO1
         NqcUBvQsgi1ezXHDIwk99BOvY7EJFefenzsUT437ID4nOay2hdrMZtiML/I8AQdkxeB3
         3UDMEVsregfe+oeKvd34RDsMUvbIOGv52I+DHzwrt5n71OyomJ2WbsBINbtYm3EXHTX5
         ZYyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxb4TEC1+9T9tI55+RjGpdEq73fMrl2fnLJCOVeR3cGy8hbhFXA4sSpNKdiCMMHZcDlAXtPCTj2tEgDjaKO/MMgDdRsywPlOaxdQ==
X-Gm-Message-State: AOJu0Yw14Fs3ry+JMdgJyqeur1JRJ7p6wpj1lTfChNLLAPUie39+iRya
	PqjBEtMG1difrUG/rbUj+78j/xVDUrca3WL3MQzhxm6ISHsbkDeEurmPCDrxLT4=
X-Google-Smtp-Source: AGHT+IG+25MIgZJbSQk/taFj6VG+AknyVI+V2GARb6Z9W0SrNi26/KVVGwlFQTZ6sulU8JHp9mZozQ==
X-Received: by 2002:a17:902:ea11:b0:1f9:b697:b246 with SMTP id d9443c01a7336-1fa1d3de553mr202286995ad.5.1719578757393;
        Fri, 28 Jun 2024 05:45:57 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fac15695b4sm14346255ad.225.2024.06.28.05.45.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 05:45:56 -0700 (PDT)
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
Subject: [PATCH v6 5/5] drm/panel: jd9365da: Add the function of adjusting orientation
Date: Fri, 28 Jun 2024 20:44:44 +0800
Message-Id: <20240628124444.28152-6-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240628124444.28152-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240628124444.28152-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This driver does not have the function to adjust the orientation,
so this function is added.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
---
Changes between V6 and V5:
- 1. No changes.

V5: https://lore.kernel.org/all/20240624141926.5250-6-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V5 and V4:
- 1. Change dev_err() to dev_err_probe().

V4: https://lore.kernel.org/all/20240620080509.18504-5-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V4 and V3:
- No changes.
---
 drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
index b5265d95be4e..f002a80527b1 100644
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


