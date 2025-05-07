Return-Path: <devicetree+bounces-174814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2EAAAECD0
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:22:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48644506E6D
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:22:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F7C528EA70;
	Wed,  7 May 2025 20:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ga/T5fee"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE0A28EA69
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649353; cv=none; b=iXrh5M/ovVVhqHcuKUqr6rGulKWwneNTuUHShMkdvh/ahvL9Q5pEffWEStYNJkDH9MssF8zKU4qYCuz5DLiQiP0crSNu27669EWJo1bPLUM3h7YTg8znvrgnP/DF0KiukP5foWP+eb/X1RG/h9W3djjkKcOAqBdlR8Avl9SUGUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649353; c=relaxed/simple;
	bh=aE+44eaEhFoEmPEBWxm3CnBBIL5z0Mws6Wyjwk7GFfA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O096PO0GRXIey6yrNwMmF3pQyglPW2l1el9kQZOQIPAr+Dd+cm9bMSmX9kJvN07qet9O3b0eTcUqXAst0SuPeaTOsKYCW3zwYfcsQ/U4yJ7bZul98v8cTmJenthVlm+wgk05JDvGgWiQuk7/ClEcjItG6HabvftBB32JuN6VpS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ga/T5fee; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-72b0626c785so153157a34.2
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649350; x=1747254150; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ECm4vsoW+32S8jcl8nf2NLWmke5G4xraIMQjtb0TqM=;
        b=Ga/T5feesIg04vcM1pocxKoHzWfzFN7A9qftJHx9Y7RWhs/tby0W7RaORkbjftDYKq
         n6JRN5OMJKvb9MSrpYYQtHClvMh4MtNsogsHoaF9ZLCLkRHsJ12YYTXGKnxJxb4gKByp
         ACJsuKDgQZYNx+R5EB6P+EIW9hei3RJFWAWNrD6q2yGvC+6s4RJ/ayPzQBAukCnoUmps
         LHJcKxgRlh8Z/kq1STvR0ksVgCFRh/+7Zd4/oYeOKXmSQQGqnpE7mlNAsIi3sPP8kCf4
         EAhXyz7wLH1Kq+2dEnGWoBLFtTVH8Ptc3Fcxe9oiop4O2xnxgQLZ5x87oj4yi0TgdCHu
         rdLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649350; x=1747254150;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6ECm4vsoW+32S8jcl8nf2NLWmke5G4xraIMQjtb0TqM=;
        b=hvM20C1EIDj6ZC6f7qPG0jszNZp7e6E7+iDYo52PP6cw8SW/ngYIWsK0gr0mbNGmyZ
         qUpJWopOi13giBnKe508zV6+KLh/vYGb/6pGFmburlQwMKqpF2tpKuWfsSANtPlE5JuC
         py9BTg+ChLL5rtiDAWClc+M+CJJuAuiaW3Z23dai/fYB1VPluHy+BWVxHwvguJ/hW80m
         qjnMQmNDsRh+loQhg7ue5dVgkgNgeiaXw5cNuHC1uw8neOi6k5q6XbpZ3okZjBrXwRx7
         DUk60R/NQIHzTYcxp9xV74+yg+ZHX6MuHObejLt4TYdCL3pU5/GYW8Wud+FK4+EFdBKS
         H1zQ==
X-Gm-Message-State: AOJu0YwmqxSpBv1g2/NBG88hJCeSA7Q2I6Co/kenh2lA4oG6KvEuWBJS
	P2ie69mOKWuBCRA25WHjrYh1PondccfnScjBbhRT7atIy1APOKQ3
X-Gm-Gg: ASbGncuQQ6bX9sGYblM/bn9n21xNWgPXQRh+sJwsZ13ZKR+559PQzyQ2/ihf6liFBeR
	cCk90cTK3pohtj/2gI7rr3FB7F/FrjQ3lA/KBCkARhd83giiVvClmi6wkIKiKT9E/lmGug2ZKGg
	b4BcdwcHxbWBzNJzLHuHOuHkjcVfy9CliZkoIHhRt9cSs93e/dl/8TNVMR+OjFlpczsuVAOLQPj
	obkTbo4M/anqnEJZLo7d2AlQOmHUV0GW25Ax3pENMfI6eNGyH0nZ2dpmf/yPUv1nDIdTaJ0YUhQ
	6zr6XiZ8YCs4oiIyLcFzLTfSJIH0HvAsn0/k1989lY0m5Dkf5tmUWozhSLeCAIMwVgmN65o=
X-Google-Smtp-Source: AGHT+IFNYiTe2ivxn2BpZru44Mz+Cbpuh5GShVyQbiTzaZin9SYSI0N+J6lKKB11hGqcKOTRI24Jlw==
X-Received: by 2002:a05:6830:3c8c:b0:72b:9bac:c044 with SMTP id 46e09a7af769-7321b9dc5dcmr559263a34.0.1746649350502;
        Wed, 07 May 2025 13:22:30 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:30 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Andre Przywara <andre.przywara@arm.com>
Subject: [PATCH V9 04/24] drm: sun4i: de2/de3: refactor mixer initialisation
Date: Wed,  7 May 2025 15:19:23 -0500
Message-ID: <20250507201943.330111-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Now that the DE variant can be selected by enum, take the oppportunity
to factor out some common initialisation code to a separate function.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
---
Changelog v1..v2:
- Combine base register allocation and initialisation in
  sun8i_mixer_init
- Whitespace fix

Changelog v4..v5:
- Remove trailing whitespace

Changelog v7..v8:
- Remove CSC configuration changes (logically better placed with future
  YUV support) making this the first patch in the series.
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c | 64 +++++++++++++++--------------
 1 file changed, 34 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 2252bef19597..41815b42d6d2 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -425,6 +425,38 @@ static int sun8i_mixer_of_get_id(struct device_node *node)
 	return of_ep.id;
 }
 
+static void sun8i_mixer_init(struct sun8i_mixer *mixer)
+{
+	unsigned int base = sun8i_blender_base(mixer);
+	int plane_cnt, i;
+
+	/* Enable the mixer */
+	regmap_write(mixer->engine.regs, SUN8I_MIXER_GLOBAL_CTL,
+		     SUN8I_MIXER_GLOBAL_CTL_RT_EN);
+
+	/* Set background color to black */
+	regmap_write(mixer->engine.regs, SUN8I_MIXER_BLEND_BKCOLOR(base),
+		     SUN8I_MIXER_BLEND_COLOR_BLACK);
+
+	/*
+	 * Set fill color of bottom plane to black. Generally not needed
+	 * except when VI plane is at bottom (zpos = 0) and enabled.
+	 */
+	regmap_write(mixer->engine.regs, SUN8I_MIXER_BLEND_PIPE_CTL(base),
+		     SUN8I_MIXER_BLEND_PIPE_CTL_FC_EN(0));
+	regmap_write(mixer->engine.regs, SUN8I_MIXER_BLEND_ATTR_FCOLOR(base, 0),
+		     SUN8I_MIXER_BLEND_COLOR_BLACK);
+
+	plane_cnt = mixer->cfg->vi_num + mixer->cfg->ui_num;
+	for (i = 0; i < plane_cnt; i++)
+		regmap_write(mixer->engine.regs,
+			     SUN8I_MIXER_BLEND_MODE(base, i),
+			     SUN8I_MIXER_BLEND_MODE_DEF);
+
+	regmap_update_bits(mixer->engine.regs, SUN8I_MIXER_BLEND_PIPE_CTL(base),
+			   SUN8I_MIXER_BLEND_PIPE_CTL_EN_MSK, 0);
+}
+
 static int sun8i_mixer_bind(struct device *dev, struct device *master,
 			      void *data)
 {
@@ -433,8 +465,6 @@ static int sun8i_mixer_bind(struct device *dev, struct device *master,
 	struct sun4i_drv *drv = drm->dev_private;
 	struct sun8i_mixer *mixer;
 	void __iomem *regs;
-	unsigned int base;
-	int plane_cnt;
 	int i, ret;
 
 	/*
@@ -534,8 +564,6 @@ static int sun8i_mixer_bind(struct device *dev, struct device *master,
 
 	list_add_tail(&mixer->engine.list, &drv->engine_list);
 
-	base = sun8i_blender_base(mixer);
-
 	/* Reset registers and disable unused sub-engines */
 	if (mixer->cfg->de_type == sun8i_mixer_de3) {
 		for (i = 0; i < DE3_MIXER_UNIT_SIZE; i += 4)
@@ -551,7 +579,7 @@ static int sun8i_mixer_bind(struct device *dev, struct device *master,
 		regmap_write(mixer->engine.regs, SUN50I_MIXER_FMT_EN, 0);
 		regmap_write(mixer->engine.regs, SUN50I_MIXER_CDC0_EN, 0);
 		regmap_write(mixer->engine.regs, SUN50I_MIXER_CDC1_EN, 0);
-	} else {
+	} else if (mixer->cfg->de_type == sun8i_mixer_de2) {
 		for (i = 0; i < DE2_MIXER_UNIT_SIZE; i += 4)
 			regmap_write(mixer->engine.regs, i, 0);
 
@@ -564,31 +592,7 @@ static int sun8i_mixer_bind(struct device *dev, struct device *master,
 		regmap_write(mixer->engine.regs, SUN8I_MIXER_DCSC_EN, 0);
 	}
 
-	/* Enable the mixer */
-	regmap_write(mixer->engine.regs, SUN8I_MIXER_GLOBAL_CTL,
-		     SUN8I_MIXER_GLOBAL_CTL_RT_EN);
-
-	/* Set background color to black */
-	regmap_write(mixer->engine.regs, SUN8I_MIXER_BLEND_BKCOLOR(base),
-		     SUN8I_MIXER_BLEND_COLOR_BLACK);
-
-	/*
-	 * Set fill color of bottom plane to black. Generally not needed
-	 * except when VI plane is at bottom (zpos = 0) and enabled.
-	 */
-	regmap_write(mixer->engine.regs, SUN8I_MIXER_BLEND_PIPE_CTL(base),
-		     SUN8I_MIXER_BLEND_PIPE_CTL_FC_EN(0));
-	regmap_write(mixer->engine.regs, SUN8I_MIXER_BLEND_ATTR_FCOLOR(base, 0),
-		     SUN8I_MIXER_BLEND_COLOR_BLACK);
-
-	plane_cnt = mixer->cfg->vi_num + mixer->cfg->ui_num;
-	for (i = 0; i < plane_cnt; i++)
-		regmap_write(mixer->engine.regs,
-			     SUN8I_MIXER_BLEND_MODE(base, i),
-			     SUN8I_MIXER_BLEND_MODE_DEF);
-
-	regmap_update_bits(mixer->engine.regs, SUN8I_MIXER_BLEND_PIPE_CTL(base),
-			   SUN8I_MIXER_BLEND_PIPE_CTL_EN_MSK, 0);
+	sun8i_mixer_init(mixer);
 
 	return 0;
 
-- 
2.43.0


