Return-Path: <devicetree+bounces-75841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF9A908DFA
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 16:56:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65F681C2386A
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 14:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE23314AD15;
	Fri, 14 Jun 2024 14:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="1t0HEgN8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6263B13AA4E
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 14:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718376943; cv=none; b=d/4pX4DC2yXCOR9aJYkXnJm1x/FFiMGdk2pOXCCLIko2TTrFpuSuewIfcSFogdqLFL6jpkRSbBOiAUkWuYm/qGPfyH6Uv87ZTr2eeT2/tGBtdJ7EkWGIDWSB4J3h87Ng+4cV1/0e6FHWU23drHMxGoXBK/xGvGO7u/caq9gLxkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718376943; c=relaxed/simple;
	bh=pIFJsNWKOr0xQwFw/ZYOmvm/4YKorklatk/hj0uGHRY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=oWZe8hHPw65HJUdzjI+ZjK/J89K4e5RBAELpH55FQqnuVujYBjjAke0sb3SKYKT6kiIfcQrld/xu8OrxWwpX7uTROlZ+XWvlc3vQDS2H/HvS/TI0osre4+lbaR+t9DV1Ip44CgCTtpy8EeAm/SH335LZcmDQixoLcCJ8+F5mNLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=1t0HEgN8; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1f44b441b08so18293255ad.0
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 07:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1718376940; x=1718981740; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Pu5LRvimdEl5RzT2qMnkBN0BnjaWqgD8vo8gH2oaLfw=;
        b=1t0HEgN83nlyyqk/CrRt2YZyEEV9QANP0Ucv+BAEG5bFtKi5ZYcG134M2P7w2+kXd0
         1cjabk/i8V9/HntQzlYeyw8CjUw64HS9LFQBVwdOjBhJmXm1BMt/cm6srE6KIO9t5uTa
         oyfAf9IbrJbn31shGVKSTQ9QveK704p0DqbfQ7b/FHcz0DvCNOnJN+q5Auk2Yh82ae3a
         UhJUQyuTZmfQVdCuloyCW+6ffdIWmUI1f99/NM233aor8WA0lt8EJDh1BqNeMBfdkWwI
         95tS+Xfqn3Uhm1R0f16hz/OLGHbb5240c75ToB6LBkLisTzgBXV/xr4l3Kj1cR1I4Nct
         xAhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718376940; x=1718981740;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pu5LRvimdEl5RzT2qMnkBN0BnjaWqgD8vo8gH2oaLfw=;
        b=lfHebcvCxx5wt6m1NBCW1l3g+N4JZVoCiWhfqGUfOocIrGWAgcWJIwIz3R00Nqw8UX
         4drTMVDL9adFGDSvP70KAvmuU3nG1Fa6wnww8+oa715khIfN3uUUrMGkPs3jXRv7BOwf
         J3w5s1Xa884LEsQtEFcX4gz7To5GUAMZpflMFSmZErHLKGEC0pJ5PVm62VBAamn5+ji5
         8Qodl8xPB+XMd/o2medQ7LgvrJWpUjKXZKzbzvtEH5vSqueYpxdKcmh0OLYukGnkAXXF
         62y+jYfh99dFaw/n612BPwCszS5RdVFyK7QazEqIQirF3XILhjpi29T999YPmGuYJzRu
         awSg==
X-Forwarded-Encrypted: i=1; AJvYcCV5lUoP8QZM6OCqho7KE5Q1nK2xhAn1KhXJLreCXSOKrKhN5Md2HVPGpgc2RfX5qk6bY+03LPjVi6Eo/KMEYoXGsOYSFhZQb9qElw==
X-Gm-Message-State: AOJu0YzSKj7jZ4R2psIPMtMJRUY6TvaA48cHWCfcazFtxaaB+Tmr8YGG
	W2veR5dGaKY0rfL2QIF2y/Ks5vNsbyRo14769AW9KHspaT+azLcmSS1HBKsiPZXSkJIKUJ406Pw
	4
X-Google-Smtp-Source: AGHT+IHsOWYnc/lagYtmrJqXed+bAdNj3O/ZwWwDQYPuGKWEmWzWAZNWgpSTjlu1pFBCi7TULC691g==
X-Received: by 2002:a17:902:c212:b0:1f7:2ba:4c15 with SMTP id d9443c01a7336-1f8625c6439mr26426005ad.2.1718376940567;
        Fri, 14 Jun 2024 07:55:40 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855e739b7sm32914495ad.93.2024.06.14.07.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 07:55:40 -0700 (PDT)
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
Subject: [PATCH v3 4/4] drm/panel: jd9365da: Add the function of adjusting orientation
Date: Fri, 14 Jun 2024 22:55:10 +0800
Message-Id: <20240614145510.22965-5-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240614145510.22965-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240614145510.22965-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This driver does not have the function to adjust the orientation,
so this function is added.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
index f6e130567707..7f86bb7f2299 100644
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
@@ -205,12 +205,20 @@ static int jadard_get_modes(struct drm_panel *panel,
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
@@ -907,6 +915,12 @@ static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
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


