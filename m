Return-Path: <devicetree+bounces-86108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B1793264F
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 14:11:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BCF60B22549
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 12:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAB5A19AD62;
	Tue, 16 Jul 2024 12:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="JafaLfzm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADD519AA66
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 12:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721131896; cv=none; b=kqy/4uF2UXfxyvve2TrgdA9XvvFUKu01ZqrKNX2hqrU1YGO0AgGAjX/sPbn2hMUPP/7OhNupYxVcDqPdljJNf+EGABVBrOrb76QPfYUe3dlkC3GI+3dKx6l/D+aq56f8UpjJ3F4tQlZc0/obIU/BMpd4mJUmW6Z93YbVMMRuISQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721131896; c=relaxed/simple;
	bh=5CBB6v5QaY78wD6pH3DO3qUvRe+dZn3w4kNcQb79/aI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=efQ0Z1SM8cena9HiH8uWJQZiZXvWoJwUK2CxeWOkvaDRvWheFTXujOhCP5YtkJOsPaz522LGbxouzINYd0CDiqqgiZ2Qs0e9HOmt5lBv7o8lolHNNiPxrT8nCHWxXEsl/QR1L2XZ0QMe3agz5bNEFTNN2RJtYdUD4s1PCj5Ytjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=JafaLfzm; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-70aec66c936so3953245b3a.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 05:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721131893; x=1721736693; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ctnk4Qig36T6nuqfFemKrVj0VTPFOFW8uO+7ZSbbM1w=;
        b=JafaLfzm15espuJqtAYvK+VTaWHSWIxdgK6yrDzWDCRK6flwRk78djecJzKaqtMyHn
         K4X665kj6PXyKC7E9mdvrUgfsqtoY+LfnWxwWAutiyGB3kvutzg0bJumiIK/tHvbckQF
         lScScmlsBxl53SbBp2URTnflAx0N6EDfHWz6eq2PLswK7AuZEtN+7IOjRqte9bvgSY2y
         BAmg5BOuGvRfR3cgYWRQrId+z3VHBS9xSJmbjVKtdP27OnfArRqUfedBBwjDZXuhdjPS
         Iu9JsR+0FAmADmaC0VVbw0i5g8mZ4snU1mCGLJ68hmBXhnunehrtzuvm+kjebpfTPL+Q
         qJgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721131893; x=1721736693;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ctnk4Qig36T6nuqfFemKrVj0VTPFOFW8uO+7ZSbbM1w=;
        b=oh2MHi+CPX0+oBemmgdQCpf/cB82g2wsY0/EYKuONa70W3aFB3wmzq0/1rDqEw0PNY
         5pwreyPiTgWnxnkwl6pTp1a9Ls+PNEJuaTxOseh+FtahhWGlMHOf2l2CFUxA+cyj1czz
         xUARAPIK3+I4mbsPLwWGRyykMtXH6gICd4bibXkv6OQT9ArsnwvsgqZ6aBw507dpSRqQ
         k6MI/NlSpg33IYC7rPG4qOD2BMaCsPKYl75ob1l8y9WK+G/TUeW3I4Nt5gXu4YeVnd3o
         KG0wXsMRCax7h2bkH2O503pXHcRO149oAJBFqlOz6pXkLpuvunAIWCdiL27Lf2mM+JPd
         FC/w==
X-Forwarded-Encrypted: i=1; AJvYcCUZtrn/6lhx1K72MCgYNHaCSQ8TPmIOSYuSD6BX2ySVNQNLe7wLx28nwFuzW230bDElwyG8CF4xqHWx0+WR+1zGd8bS4qdUE8n+Rg==
X-Gm-Message-State: AOJu0Yx8rqPhsHoo+PcNEts3CsXtV7WS4e8M5zAtBf5gU/8XBRaC4lwE
	fnlOTwpcK4HhhX0vTgpWhxqMgS5RHF3DIYCo2ekSLh0Jp0P+tdNAN2Z4FyNRuAU=
X-Google-Smtp-Source: AGHT+IHm5RsQCEppC5izT7ZdsLIybhwjJpUCuQ5C82fMYEhLvy546hF8MA0rbBuj+iMezEQ+roGyiw==
X-Received: by 2002:a05:6a00:3cd2:b0:706:700c:7864 with SMTP id d2e1a72fcca58-70c1fb112a0mr2261549b3a.4.1721131893327;
        Tue, 16 Jul 2024 05:11:33 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b7eccc48bsm6114065b3a.203.2024.07.16.05.11.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 05:11:32 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	airlied@gmail.com,
	mripard@kernel.org,
	dianders@chromium.org,
	hsinyi@google.com,
	awarnecke002@hotmail.com,
	quic_jesszhan@quicinc.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v2 2/2] drm/panel: boe-th101mb31ig002 : using drm_connector_helper_get_modes_fixed()
Date: Tue, 16 Jul 2024 20:11:12 +0800
Message-Id: <20240716121112.14435-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240716121112.14435-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240716121112.14435-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Use public functions(drm_connector_helper_get_modes_fixed()) to
get porch parameters.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
 .../drm/panel/panel-boe-th101mb31ig002-28a.c  | 26 ++-----------------
 1 file changed, 2 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
index d4e4abd103bb..4a61a11099b6 100644
--- a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
+++ b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
@@ -16,6 +16,7 @@
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_modes.h>
 #include <drm/drm_panel.h>
+#include <drm/drm_probe_helper.h>
 
 struct boe_th101mb31ig002;
 
@@ -313,31 +314,8 @@ static int boe_th101mb31ig002_get_modes(struct drm_panel *panel,
 						      struct boe_th101mb31ig002,
 						      panel);
 	const struct drm_display_mode *desc_mode = ctx->desc->modes;
-	struct drm_display_mode *mode;
 
-	mode = drm_mode_duplicate(connector->dev, desc_mode);
-	if (!mode) {
-		dev_err(panel->dev, "Failed to add mode %ux%u@%u\n",
-			desc_mode->hdisplay, desc_mode->vdisplay,
-			drm_mode_vrefresh(desc_mode));
-		return -ENOMEM;
-	}
-
-	drm_mode_set_name(mode);
-
-	connector->display_info.bpc = 8;
-	connector->display_info.width_mm = mode->width_mm;
-	connector->display_info.height_mm = mode->height_mm;
-
-	/*
-	 * TODO: Remove once all drm drivers call
-	 * drm_connector_set_orientation_from_panel()
-	 */
-	drm_connector_set_panel_orientation(connector, ctx->orientation);
-
-	drm_mode_probed_add(connector, mode);
-
-	return 1;
+	return drm_connector_helper_get_modes_fixed(connector, desc_mode);
 }
 
 static enum drm_panel_orientation
-- 
2.17.1


