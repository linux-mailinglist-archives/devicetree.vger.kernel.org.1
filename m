Return-Path: <devicetree+bounces-16756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0FD7EF89F
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:25:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 425712810DE
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:25:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7837E45BF5;
	Fri, 17 Nov 2023 20:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NxodvEGG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DA46120
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:25:43 -0800 (PST)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1f084cb8b54so1321184fac.1
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252742; x=1700857542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8YEgY9ZT7EiPnB9BBj7vVf8RmyWGZIlUy6iEpY8nmGA=;
        b=NxodvEGGoL+gCfgvZuuQl27dxLRUPw5OFnpOn1E8Vi5eg60v407NYQPnZAWXVS7p2T
         NKrVNrosE6iI+tK6FC+smLfQ4ugIKEVJ6Fqxfg4k0hX5UWh2QKolkpAs0vlnmog1EKes
         qqYYxNpLi1Y3uxByrVUUpZf+6iBPqvRZ8gFru5aCBJtCfL8Bg82Gwg2wq5NpXWXgWWCM
         xixF/v2mRmFTxeLEUq8ZJm0cu1HH8PxALMAdFm1hmfdT9sTZ8u48aaRmJaM9qmxRhDiW
         +O/xq5eqnn6+O534NYf33Wr0lx6dtp08h9X+inhi2nYq11Kx87LblPCLenj7Q41bbPed
         L5Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252742; x=1700857542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8YEgY9ZT7EiPnB9BBj7vVf8RmyWGZIlUy6iEpY8nmGA=;
        b=lNIVVYxkHHS9NUMTqvkXkjEWei3NX8Y0Jew6ndr/KBPYBkzP/JrA6ucNM5mS3HIIZn
         po3tKbnN0sKXkKICngYhJw3xPbd08lTkk5xRyoj2Gur1dhHjwJlIrYVY+Jt7ComJo5Gc
         RzFZkz+XbJpw3vTjspC+675U6yaK4GuxmMHo5NJCnPzXM6J1NYJ5Gf1s/V221KFu/On0
         O1gn6ttFve/XViXl2I9klvb1EPXvBnct5YZiDMZmcMDG7KUedQ8xd8fVlX/f1PiAyaY5
         /gDIis6tK1a4HOa3mLqhr6nxtKb5giRs/AjUiB4/DvBX+QHQwj9vaXD2WAmeU+rM9l3G
         8+HQ==
X-Gm-Message-State: AOJu0YzRrqBd50YtNIkjvq5LXmuggjPpYkKV74b8bDILkp8iAUYXmU+f
	XGLq8+Xb/5dIAiDjSr/9HnQ=
X-Google-Smtp-Source: AGHT+IFjVKENFjedAKB0p8uRVXHf+/TVB7NzTGb0+zWfV0zF0I1hQzrNkznJ2oiwFcLijAaN87J0IQ==
X-Received: by 2002:a05:6870:9a8d:b0:1ea:3e52:b66e with SMTP id hp13-20020a0568709a8d00b001ea3e52b66emr325407oab.41.1700252742284;
        Fri, 17 Nov 2023 12:25:42 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id zf15-20020a0568716a8f00b001f224cbbde1sm390543oab.41.2023.11.17.12.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:25:42 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>
Subject: [PATCH V4 2/6] drm/panel: nv3051d: Hold panel in reset for unprepare
Date: Fri, 17 Nov 2023 14:25:32 -0600
Message-Id: <20231117202536.1387815-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231117202536.1387815-1-macroalpha82@gmail.com>
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Improve the panel's ability to restore from suspend by holding the
panel in suspend after unprepare.

Fixes: b1d39f0f4264 ("drm/panel: Add NewVision NV3051D MIPI-DSI LCD panel")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
---
 drivers/gpu/drm/panel/panel-newvision-nv3051d.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
index 79de6c886292..c44c6945662f 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
@@ -261,6 +261,8 @@ static int panel_nv3051d_unprepare(struct drm_panel *panel)
 
 	usleep_range(10000, 15000);
 
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+
 	regulator_disable(ctx->vdd);
 
 	return 0;
-- 
2.34.1


