Return-Path: <devicetree+bounces-87178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A4412938C04
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 11:25:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B53A1F21A80
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 09:25:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5614916B74D;
	Mon, 22 Jul 2024 09:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="d7T/15Iq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC13C14F10F
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 09:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721640294; cv=none; b=Ky1aB/s0INCo1D0KhU9qA8RtxTbVwmcTysMpa22M1VcOMPk5/V160qJ5/MI3XJjEdP7wB0CEpGcJ5prrKcFtFXTPujJPFF/nUazX9EpJHUYLiF+4JA17//vVl4l9QQDl7nFjDL25nl9m+oSObM0VPO12PpYMALWSPYldYtRuVns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721640294; c=relaxed/simple;
	bh=5z8J3jCaMgq+XDqQ05huL8lSlwbo57cCYj7szikNg0w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=uIoMZlVnlQ0XIJ2On70B7bhBJCmMIzw/9veSYp4PyF56ONWxsNkdGLti22rFdTMR0fMlCGcMWm9ECN6zHLG5VIRFq62W9YUXwocQgxjH9xR+1o4m3YW/GIMnHOHtZTQN/pI4Rt8zWQMYIFCrwxscjbr1gkZWsJ4ztIsmDXhKDkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=d7T/15Iq; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7037c464792so2306305a34.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 02:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721640292; x=1722245092; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LwMtkumDOAcsN4lhSlus+4X6amT7wl8ZjMu53GJ7yCY=;
        b=d7T/15IqLBpQ95xWWXcZKfDuwd3sTM3L7+ZGrqDBjtCTbM53kGsldvUVLbbd0Z1XmY
         2Inx/QMioLvUurPQ93M+HJ9ltlGP0aHer3J0pKO+2Lz/h0ckY8V6yLpghsqadTyRPsJU
         QNaZs5kRptddngooGZmzXLxnAaOPHxJaL9LQoRH06rlDuVDiQqmlfzqO3nE9euA7444m
         SDLIRcQ7bSmBoPba0bx82pE1ES/mRD1LwD/ej3VdZ1iGdmGfPRFuKUjX+r+l4I4lV6V6
         zJpnT/lrEz57CnAIXzMktH4DLp0LQ1Iq9wnICk4IozXm+9w7MWzQcIm2w0Q8j7DtT6gn
         flQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721640292; x=1722245092;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LwMtkumDOAcsN4lhSlus+4X6amT7wl8ZjMu53GJ7yCY=;
        b=iBBMuxd3Ie4v0nu31Tiv0i8k+EbyZzrMLmAOm6F/FC+fL+CIrMsS5+dT6sNZVmMP4C
         oN7XPJkmbEvU8G/DYUoRpBgk2CzSc1M3uFJFeEMMs9cr/qGHpZ4AtXq0iFyIlm4A6k49
         cw3WN7WCWiZblYP7afdHtjFZU0FMQRTLjiKXDi7Yt7RMuA6WqOKIMAbAu1Z2HnghS53T
         +1ppXPRCt9vRx42b4tF+Yf0/8r1SnipjuhlbpogCSYyaQCgANke8mqK/u24Zn3oql1dX
         mMJ/AvME/QW/Hc9ThhK9O8Mwgo9mpoqRAlfonQO2Pnk4ZF6FLnzsnmoYUx4Y3jVn6Bno
         68lg==
X-Forwarded-Encrypted: i=1; AJvYcCXAihci8eZrQJcKqWijmvojykQcehg5rFMCSpDNlbuP9oMW1Wvqtq1aq/PKiqfEpsJ0GgWG0PW9U0qIoxO6xnpsBTwil8/YGmX/Bw==
X-Gm-Message-State: AOJu0Yw1f2gVA7aW1en4mNWFHkf3sMcewZigOoi94VIAu/0nIqf3dy3y
	xECpap3h7G5/C+B7NDLVWM7u/nnhGSESj/EJxc5IWMf8k0tL4Q54VBzXRqa9pqc=
X-Google-Smtp-Source: AGHT+IHkMmiH7CaJ/wWByiowS0sGdlHfkVI1a7RgoAb/wvbSEO4CaVFFvhQTZbT+KFwx627lM1ZaCA==
X-Received: by 2002:a05:6830:6881:b0:703:6988:dbed with SMTP id 46e09a7af769-708fdbf0792mr10341664a34.34.1721640291747;
        Mon, 22 Jul 2024 02:24:51 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70d26efe61dsm1639901b3a.149.2024.07.22.02.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 02:24:51 -0700 (PDT)
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
Subject: [PATCH v3 2/2] drm/panel: boe-th101mb31ig002 : using drm_connector_helper_get_modes_fixed()
Date: Mon, 22 Jul 2024 17:24:28 +0800
Message-Id: <20240722092428.24499-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240722092428.24499-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240722092428.24499-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Use public functions( drm_connector_helper_get_modes_fixed()) to
get porch parameters.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Changes between V3 and V2:
-  1. Keep bpc settings and drm_connector_set_panel_orientation() function..
v2: https://lore.kernel.org/all/20240716121112.14435-3-lvzhaoxiong@huaqin.corp-partner.google.com/
---
 .../drm/panel/panel-boe-th101mb31ig002-28a.c    | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
index d4e4abd103bb..8e5edda32731 100644
--- a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
+++ b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
@@ -16,6 +16,7 @@
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_modes.h>
 #include <drm/drm_panel.h>
+#include <drm/drm_probe_helper.h>
 
 struct boe_th101mb31ig002;
 
@@ -313,29 +314,15 @@ static int boe_th101mb31ig002_get_modes(struct drm_panel *panel,
 						      struct boe_th101mb31ig002,
 						      panel);
 	const struct drm_display_mode *desc_mode = ctx->desc->modes;
-	struct drm_display_mode *mode;
-
-	mode = drm_mode_duplicate(connector->dev, desc_mode);
-	if (!mode) {
-		dev_err(panel->dev, "Failed to add mode %ux%u@%u\n",
-			desc_mode->hdisplay, desc_mode->vdisplay,
-			drm_mode_vrefresh(desc_mode));
-		return -ENOMEM;
-	}
-
-	drm_mode_set_name(mode);
 
 	connector->display_info.bpc = 8;
-	connector->display_info.width_mm = mode->width_mm;
-	connector->display_info.height_mm = mode->height_mm;
-
 	/*
 	 * TODO: Remove once all drm drivers call
 	 * drm_connector_set_orientation_from_panel()
 	 */
 	drm_connector_set_panel_orientation(connector, ctx->orientation);
 
-	drm_mode_probed_add(connector, mode);
+	drm_connector_helper_get_modes_fixed(connector, desc_mode);
 
 	return 1;
 }
-- 
2.17.1


