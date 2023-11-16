Return-Path: <devicetree+bounces-16101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 111BE7ED86C
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 01:17:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B3F7D281123
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 00:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B9CF81E;
	Thu, 16 Nov 2023 00:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m755KT2u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E06BB1A3
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:17:49 -0800 (PST)
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-6cd0a8bc6dcso129767a34.2
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700093869; x=1700698669; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5axKZ3rBh2546l575rzKo4AVUrOHl6dJO+NCLZTqdmQ=;
        b=m755KT2uv68pE5ecw6tzIbSXk6gnVrO3V1pHlwl3+DZ+zzOxNZd5UBfQ9r9lx70FNA
         cQIDuSFhJZJwVkkTtE35e2nFfOjj8/c/94cpSAZa3MrmDrv92GkqlezYjn2yyTJZ7Q1h
         wotgzevuUkMeqDfMEdofL/jrAF6KJ7i/Y5gk6EDoMQRW90xb23PpyGsQi3aeD0rbtqAZ
         E2xQa/Z/IpIOT351XXks7yUm9eYoaB9xliK/NFDvb+GM0Ld/EXZ3hPjfqcCUPO4NACVO
         Lznb8+CQMk9jPLIjeJhQgsGvajtunPUv6MF+Csup7cXCq0wcBrmis6PhZWI86PECRfwY
         QDfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700093869; x=1700698669;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5axKZ3rBh2546l575rzKo4AVUrOHl6dJO+NCLZTqdmQ=;
        b=Yb/rAjmvedjJthvZKwHOQzU9e8e3AefWtSXzSmKULQvCLKhcEHDg3sXk4Jy0YQV2eJ
         Asvd+h4oe+18Ix/boCyAqMKk9vZkm1tbTEqHVngO3uJo4fZtUjWA47uFAEzFmOmj729E
         9Of2y3gEUpXdXr1N5fJf9gLC1lBrU4PebnyI4PpCQbkkEpaGb9JdGaVstBQE9W5l2mEc
         kYFBnBIUOjHE2ZOe1Q8QPnROmrys2pbn26vSVZhfF8goefbWyuGYD6QpVMzrg6OYQ2gJ
         W7ACL4pCANZm972rBpecvU9WqXrxKqBvAzH+AEKt1ftGhLk+nY3GXtcE1QR8yO3Axivk
         U8ag==
X-Gm-Message-State: AOJu0YzMMQgpGpmkTH+faR/etYRJprUV7DyeZZS7WDywS6rhEstBfeUJ
	z+2bk3H9mdCbfUjvZouCnwI=
X-Google-Smtp-Source: AGHT+IFDBddG1lVi868AvwqXMsbhb/xjnNXZ9npqgsEGmKHtLPeO2U8aBbM2Pm0KhfnvhakZQEzH6g==
X-Received: by 2002:a05:6870:b155:b0:1ef:62fc:d51c with SMTP id a21-20020a056870b15500b001ef62fcd51cmr16441458oal.51.1700093869189;
        Wed, 15 Nov 2023 16:17:49 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id j18-20020a9d7d92000000b006c619f17669sm727117otn.74.2023.11.15.16.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 16:17:48 -0800 (PST)
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
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 2/6] drm/panel: nv3051d: Hold panel in reset for unprepare
Date: Wed, 15 Nov 2023 18:17:38 -0600
Message-Id: <20231116001742.2340646-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231116001742.2340646-1-macroalpha82@gmail.com>
References: <20231116001742.2340646-1-macroalpha82@gmail.com>
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


