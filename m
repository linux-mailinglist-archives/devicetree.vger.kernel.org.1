Return-Path: <devicetree+bounces-87460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1419399B0
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 08:27:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F24FB1F22525
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 06:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D8AB142629;
	Tue, 23 Jul 2024 06:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="BS71e/hR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D946713FD97
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 06:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721715997; cv=none; b=hMnYbaSOxZlSa9nG2zhkGVrV3tUQipRZBOa7t7NOi5f+cfQH91LXrkTNIvka1romzNmtvBB6XmAJbha6W3gaYAEstlGqtv2awme1UeabTnZ9s0ODCB6pGrLDWiidFclri+ZvOJjEahoDO7Ex/n4L7K0pUyZzDqzPFclzzvQt2Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721715997; c=relaxed/simple;
	bh=IOlFdcG+Qc+uHnT45i1vLJl0/ZkiTyUuqIT6O9QcgxM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=mWnBNLPC1gDsYiOFIJ1ObFz7ND0T2umtAQCC2ztkFMj1ZtmVf1s4m2aC80XLrKUAVkh7ZvI3ZZiU6bqFH7EIP/SBvQky9iHeurlY1MnF8KN2Q2P/aGcY8C0VvbNH3r3yPOLZt7pAr3vqJ+amyKpnq5EhOkXfeGS/kGNRflfZv3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=BS71e/hR; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1fc611a0f8cso29572255ad.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 23:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721715995; x=1722320795; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a4U/lX5wwRXFBYNa5qyfaellagLlJY0UfTFYRgdibjk=;
        b=BS71e/hRiXrVMwNqWpo/3z/NzDEWuPu202a+NbPrCqcZyNR6Edk9Mp+N9TvFFlAGeZ
         CkArcuvLQPhDQ6m1my2qX9HERfjqPYQ5kr7UWFPlZZ7BV0bYIzATCmkFCfAq7T+RT0xW
         bangmuH6pBJ9HsSs5BOYXXQ4SlPyPlqen6QRHIg/iZOi3xPSNz0ZMI1fn/fN/rhcyAe4
         OHUimvMy3As5FBVg5+/eyqwHeDmoEjewTDQKAqdKBvk/ITnn82trPR4jUpQDAXjRHtAx
         T/UYp0kUJB05WxBduMWsv+7hSenrTOUaNhWqP8VJRmC0ecdqtPtjN+8COmXkJGy5PXpp
         9fwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721715995; x=1722320795;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a4U/lX5wwRXFBYNa5qyfaellagLlJY0UfTFYRgdibjk=;
        b=XJs7bub7otFY/YuvsptJV5dlwG3e4V5Eb7eH6qcDmgc5wX/sKrG3u+wGpMhFggKTiA
         7pNYnEPjbNCs/S5tXHwRaLQgoudO/+L5ptgwKry6flGkxYvd/gTbyth0CKWvVYCxd5kZ
         7tij9+MyNO8T29H8cYto90RpRFIjZmFMXQuW7RGuOrRd8EA47CWourMOpFQOdCNAGHBU
         tJ6eIfwJSCeMr6Ka9Tay7hQwbXaniMrZx7WZ31QDqx/VTGAiqI8qZe6qxqUsKX58Wljv
         yW9kq2UDHo51mpaxipr5qXMOWSkYo/QzqDFIBGdPmOUgtjQkKOVdqcHuyYi7dyo9S1u0
         DwWA==
X-Forwarded-Encrypted: i=1; AJvYcCWOGXCDt7+S8tU5h2nQpTCTzA10uGy3h8glm4EtCq/LnrT6cPRrqWVfukuzQqg4f6wGdsnDq0Xs//O3wXqx00lvHBklPT3jzK5N1g==
X-Gm-Message-State: AOJu0Yy/e7ow8GyLvKpu44m0BBXL8+/sG8AdttPlt0b33C7wyRxn/AxV
	hmuZZpwqIhowsNQix6Mjo7zPXDfC8+lJuNf8Aq6YtrLO3o81cO0o3DQfnUqkPt0=
X-Google-Smtp-Source: AGHT+IHVekg2SGD27MeBu8a61N2QblO1dxpPiH7hnQpFqY1dwa+oz13T7HNCePcM1CZMQrcn7ELDFg==
X-Received: by 2002:a17:903:2306:b0:1fd:69d6:856d with SMTP id d9443c01a7336-1fd74598718mr72102175ad.17.1721715995165;
        Mon, 22 Jul 2024 23:26:35 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fd6f25ab47sm66351465ad.45.2024.07.22.23.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 23:26:34 -0700 (PDT)
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
Subject: [PATCH v4 2/2] drm/panel: boe-th101mb31ig002 : using drm_connector_helper_get_modes_fixed()
Date: Tue, 23 Jul 2024 14:26:15 +0800
Message-Id: <20240723062615.14796-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240723062615.14796-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240723062615.14796-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Use public functions( drm_connector_helper_get_modes_fixed()) to
get porch parameters.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Changes between V4 and V3:
-  1.Modify the return value, return drm_connector_helper_get_modes_fixed(connector, desc_mode).
v3: https://lore.kernel.org/all/20240722092428.24499-3-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V3 and V2:
-  1. Keep bpc settings and drm_connector_set_panel_orientation() function..
v2: https://lore.kernel.org/all/20240716121112.14435-3-lvzhaoxiong@huaqin.corp-partner.google.com/
---
 .../drm/panel/panel-boe-th101mb31ig002-28a.c  | 19 ++-----------------
 1 file changed, 2 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
index d4e4abd103bb..0b87f1e6ecae 100644
--- a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
+++ b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
@@ -16,6 +16,7 @@
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_modes.h>
 #include <drm/drm_panel.h>
+#include <drm/drm_probe_helper.h>
 
 struct boe_th101mb31ig002;
 
@@ -313,31 +314,15 @@ static int boe_th101mb31ig002_get_modes(struct drm_panel *panel,
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
-
-	return 1;
+	return drm_connector_helper_get_modes_fixed(connector, desc_mode);
 }
 
 static enum drm_panel_orientation
-- 
2.17.1


