Return-Path: <devicetree+bounces-110211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F1709999A04
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 04:08:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0AAC51C2303D
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 02:08:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD32717BCA;
	Fri, 11 Oct 2024 02:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="xfw0/1oc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127647DA81
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 02:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728612511; cv=none; b=BOgqkVtpG8lziUPqbInQS+oisRiXaZ5E5qA9v+ofiWaDSidOTs8qep/eVRWAVgAXt+N0V2pk4G0do9vNcmWPUrS80UlpC2bpr8u9HYHzyB9yobz632J6792tdKXMm8hhGHfL6t1jLW1ARX6vTBaduI15CLKAQz4dMMsPOpBeoL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728612511; c=relaxed/simple;
	bh=Td0TJm+Om3ju1J+XYAaCbx6uIrE1N2pppsVpSa63E58=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=VME/HFpcdVBSfafNG+4yDGXZSYOsvnGz20lacVeyXUB499wRCXh/3iFCrvm5I7K0s20LsvP1AIlfv7azUIjzBdVFEJMOsBdC2FTiN3KzaL77R+EVBfK9a866YQtDxTnoC7QcfyiF/r9shSQfX5JQ2+1X+u/qsewLdSi/sn+8wRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=xfw0/1oc; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-7db1f13b14aso1304959a12.1
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 19:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1728612509; x=1729217309; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OX/0cWK2A4rNRPaYgXrW7HH4NgfbM9CvQw2XOjRlOYA=;
        b=xfw0/1ocRgETzjt3VRv2PRz0NfcmQkw3hSnrv3hpxTzALpvV87EPaKZsMKLkSjPiEi
         lassKPsGyY5aZdApyXK3E2JoDqe/vUfGIFg4y9pvPu15zmRfC5Fh7zF+hX+xHvTeuw62
         7xXlzOPgb/0zB2yFoLulsN+YpFGUR/cRmgTrkyX/iewwlk0kUgYJIEvoF4mUWs+cxKvx
         D5AO5EEnd8glII4O5hr1Q3gBPJfDLHIwRw8u64BzBo91qHw38b/BDhwiK9sz1Bt/QJLR
         cBkmoPUu3n5D5rFpv/w65UHXeVwFT0yfQm/+Jv/HJDtEdx/FcGq/5Ptjx9NIWF1OHBy1
         MQUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728612509; x=1729217309;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OX/0cWK2A4rNRPaYgXrW7HH4NgfbM9CvQw2XOjRlOYA=;
        b=Kjh/pLHTyWqnT9cewzkaARlhI7hyIgamlvd4oDaSEwLdnuF0fHajO8/q3RMf7JfP9c
         MlNhwFXltd8PK97cEfFKbgo8BKSrFIjSnwnPsQstV8kbK9SVJhlUd8KsZ7jM9bOlplPa
         ms5PISXnR6p/HyMoZmzIx3lq0tRS/+A0eeswIAobPx6qHhdM6mOOcNBLYkYbFDW8SB+j
         3jQgDn6sbd9Xq3dsmw+l9rV0PLUNOwdOmtCVdebPrAm1eqmBh47dCn/4LJU0cl8w9YZt
         t9HcX4RNLtduFcIckcju+GtNCk5AZNToHEtF2X01xIZSD0WI4rTvNSks7ZFFVefa2QeD
         dm1A==
X-Forwarded-Encrypted: i=1; AJvYcCW49DM5/IcoFbEbWDDi+t02WXfigxH3XtMM9UQMFOR2mM60/bMeGXuxtrrVgdRH4Cm4KcZt6CI7JCmQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxeGy0+zmzA/E/V6BDy7fgDNNUdlIdG9SPmlo2wV5Ndb70KLPt6
	GZ+eff5YEvq/yQ44LfEgGWacRCF4duoHbsAIW6b6pUjhbSzBVkGRaemj3Fh1y6k=
X-Google-Smtp-Source: AGHT+IF9mcm2RkDY9IO6EMccSf9CuYCSmn+WiuGWvmpj9/f/mKYsiETorNjFHxqPn1wD1ODbE5XKbg==
X-Received: by 2002:a05:6a21:478a:b0:1d8:a29b:8f6f with SMTP id adf61e73a8af0-1d8bcf12fcemr1829434637.16.1728612509380;
        Thu, 10 Oct 2024 19:08:29 -0700 (PDT)
Received: from yc.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2a9f4f35sm1701232b3a.47.2024.10.10.19.08.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 19:08:28 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	airlied@gmail.com,
	simona@ffwll.ch
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH] drm/panel: himax-hx83102: Adjust power and gamma to optimize brightness
Date: Fri, 11 Oct 2024 10:08:19 +0800
Message-Id: <20241011020819.1254157-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The current panel brightness is only 360 nit. Adjust the power and gamma to
optimize the panel brightness. The brightness after adjustment is 390 nit.

Fixes: 3179338750d8 ("drm/panel: Support for IVO t109nw41 MIPI-DSI panel")
Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/panel-himax-hx83102.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-himax-hx83102.c b/drivers/gpu/drm/panel/panel-himax-hx83102.c
index 6e4b7e4644ce..8b48bba18131 100644
--- a/drivers/gpu/drm/panel/panel-himax-hx83102.c
+++ b/drivers/gpu/drm/panel/panel-himax-hx83102.c
@@ -298,7 +298,7 @@ static int ivo_t109nw41_init(struct hx83102 *ctx)
 	msleep(60);
 
 	hx83102_enable_extended_cmds(&dsi_ctx, true);
-	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPOWER, 0x2c, 0xed, 0xed, 0x0f, 0xcf, 0x42,
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPOWER, 0x2c, 0xed, 0xed, 0x27, 0xe7, 0x52,
 				     0xf5, 0x39, 0x36, 0x36, 0x36, 0x36, 0x32, 0x8b, 0x11, 0x65, 0x00, 0x88,
 				     0xfa, 0xff, 0xff, 0x8f, 0xff, 0x08, 0xd6, 0x33);
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETDISP, 0x00, 0x47, 0xb0, 0x80, 0x00, 0x12,
@@ -343,11 +343,11 @@ static int ivo_t109nw41_init(struct hx83102 *ctx)
 				     0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xa0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 				     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 				     0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
-	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGMA, 0x04, 0x04, 0x06, 0x0a, 0x0a, 0x05,
-				     0x12, 0x14, 0x17, 0x13, 0x2c, 0x33, 0x39, 0x4b, 0x4c, 0x56, 0x61, 0x78,
-				     0x7a, 0x41, 0x50, 0x68, 0x73, 0x04, 0x04, 0x06, 0x0a, 0x0a, 0x05, 0x12,
-				     0x14, 0x17, 0x13, 0x2c, 0x33, 0x39, 0x4b, 0x4c, 0x56, 0x61, 0x78, 0x7a,
-				     0x41, 0x50, 0x68, 0x73);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGMA, 0x00, 0x07, 0x10, 0x17, 0x1c, 0x33,
+				     0x48, 0x50, 0x57, 0x50, 0x68, 0x6e, 0x71, 0x7f, 0x81, 0x8a, 0x8e, 0x9b,
+				     0x9c, 0x4d, 0x56, 0x5d, 0x73, 0x00, 0x07, 0x10, 0x17, 0x1c, 0x33, 0x48,
+				     0x50, 0x57, 0x50, 0x68, 0x6e, 0x71, 0x7f, 0x81, 0x8a, 0x8e, 0x9b, 0x9c,
+				     0x4d, 0x56, 0x5d, 0x73);
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTP1, 0x07, 0x10, 0x10, 0x1a, 0x26, 0x9e,
 				     0x00, 0x4f, 0xa0, 0x14, 0x14, 0x00, 0x00, 0x00, 0x00, 0x12, 0x0a, 0x02,
 				     0x02, 0x00, 0x33, 0x02, 0x04, 0x18, 0x01);
-- 
2.25.1


