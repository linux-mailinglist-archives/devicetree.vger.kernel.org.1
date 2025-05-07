Return-Path: <devicetree+bounces-174824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6052AAECF4
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:23:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4397506E9D
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B40F28F500;
	Wed,  7 May 2025 20:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g0xsZcz9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9715028ECF3
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649360; cv=none; b=Y9Ml/VoKutmxzQuQT/npGVnN+tDQgfjL0Leeg5sTUEs+UpU5fa+seh/AZuKoYpaB4bFlyWraFrchuivfZztv/nWJsYIjx1OngtHeLASqEwHZEQRJ8eh5BK4RB5WvRnyGvL4+VTjNp5T/uLjgIK3z7qEq7880egne+cjVpWNyGMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649360; c=relaxed/simple;
	bh=3jBDFCQbAgO97/OKa/61A175wN0Waxqcr5J2XffU1Cw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n2Bl/jnTra/eUT9z9zgY9zCGDHfW1l4Yw0ugqi0FdLp38jiL18rK6uRaL58RJidRg1E91YByu4pYSdpRVhGtDhL7oUkWVwq1vV8ObAsbTTyRAxA87SwKGFsZ2/+d4DlpsXkccSUOTVL2EIV71UF6D3EH1ZuvoMHsYQFps89/M+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g0xsZcz9; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7301c227512so140011a34.2
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649357; x=1747254157; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9sbHd8gUlvuYnzn7gA8PnML99Gdixf1hIAz0N6qS0P4=;
        b=g0xsZcz9mYz0pPpJ1H0N+ffhbq5kzSVmJKRYemFJS15irMO7P80devthZ7qUcHMDji
         V39IdFi89mIzokWJag6j4SBkAG7rjMLyzEFAnYsvI79MUSVXR2D7ghEI7VMDXMSzE0lu
         d5w7BJSdI8g7WZfoMTTLmBsrJMwKY6wH8OWrzB67+8kG4OINrs/ZBh1ScpQrsgh1mrfx
         qh3lH2bAyEP/99eJcTEZ/Qm6t3qZt4yVIKamDw1J/Z2gDPmnA93FaGjHYb0AGsuzvQht
         8VGXpf3cCzAk9dH+VEEw0O3TKtjMk96HcneLZgm7cfLaQuFuxYUabITCRcXG5egf95/P
         xMRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649357; x=1747254157;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9sbHd8gUlvuYnzn7gA8PnML99Gdixf1hIAz0N6qS0P4=;
        b=M6UVW6dw2THA4Fgn/c0tV/WzMAQuMVN+bLDRZ8JAZphOqAKBFMl66O+G0jqmVUH4Eo
         DdiFkIzXRvRNqbUjvgnOMpW9pSOf0MYZZSWL4rMmn/D3D3d3NqhI+KIhGadMEk/yfHzb
         yjYAzvQGKfP3uqjIDtT6sbKDuQ4DR631JsP6q9S2FfKcdxKGgtfst5exCL3BQlTmhzje
         sjnEW2iyYWE24FEKUqWUNAneZNxm90XrKKcetkIyfeQlmX5E1F3QI2HZ0ip3QQqoCv67
         ra8SyiwlutulQWVuPN4pvn5fp8K3vWLrn3WQPWEN/NnDXxGp+m78tcuMeW62n3XJhE7L
         D2Rw==
X-Gm-Message-State: AOJu0YxQR4W6Prh6EbYZJ1gbJ0ARm4fa0iCJEYyCbFGQ6Nb1uRE5V7ax
	GrD59bGEC9dfaURIoGsPQ6mCg6VVcFxBSlDNbsypoZU5UXoPi9dY
X-Gm-Gg: ASbGnct2VlDliGFemj/Tjri9brEH/wINl5TJj4i+9rdXKDxY6OGuV67WPP1nSvmJu59
	jgzqYkm1SQTGQgImQtaO5Wf4CsOBLyt49NJuR+csH1LtrHx6pEq1ZHtVPv87+vVUVM8r1l5RZav
	yQxIExdd430vJCLViW/Z8Nse3GsVoGV5Xzz6G/meWRphPNY2Q+DQurl5HJyhndYObgZzjDLCfv5
	nB/LQroOjhYZ/DwXV58PGdmzDDSPoKj1CcEAk+hJ/ghHUMzmqyBaEEAVzj3HGwYPKnbAk7Jod0Z
	M6KfjurV3mq82hYJBdqD+cawHo7TIXD0eGLvsvoZvyfnCoIvlcqTB6JcLMCe
X-Google-Smtp-Source: AGHT+IGe5N0nyCvS6qJkMbvSVFVtMjpTu1pefglJ9Uyewgv0lTh7SnRx1w9QVAtXhBd2yib+n33BeA==
X-Received: by 2002:a05:6830:368d:b0:72b:9506:8db1 with SMTP id 46e09a7af769-73210a6952cmr3059070a34.4.1746649357459;
        Wed, 07 May 2025 13:22:37 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:37 -0700 (PDT)
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
	robh@kernel.org
Subject: [PATCH V9 13/24] drm: sun4i: de33: mixer: add mixer configuration for the H616
Date: Wed,  7 May 2025 15:19:32 -0500
Message-ID: <20250507201943.330111-14-macroalpha82@gmail.com>
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

The H616 (and related SoC packages sharing the same die) carry the new
DE33 display engine.

Add the mixer configuration and a compatible string for the H616 to the
mixer.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
Changelog v7..v8:
- Separate DE33 support and H616 enablement in the mixer.
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 0d4695132dae..f774b693634d 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -799,6 +799,17 @@ static const struct sun8i_mixer_cfg sun50i_h6_mixer0_cfg = {
 	.vi_num		= 1,
 };
 
+static const struct sun8i_mixer_cfg sun50i_h616_mixer0_cfg = {
+	.ccsc		= CCSC_MIXER0_LAYOUT,
+	.de_type	= sun8i_mixer_de33,
+	.mod_rate	= 600000000,
+	.scaler_mask	= 0xf,
+	.scanline_yuv	= 4096,
+	.ui_num		= 3,
+	.vi_num		= 1,
+	.map		= {0, 6, 7, 8},
+};
+
 static const struct of_device_id sun8i_mixer_of_table[] = {
 	{
 		.compatible = "allwinner,sun8i-a83t-de2-mixer-0",
@@ -844,6 +855,10 @@ static const struct of_device_id sun8i_mixer_of_table[] = {
 		.compatible = "allwinner,sun50i-h6-de3-mixer-0",
 		.data = &sun50i_h6_mixer0_cfg,
 	},
+	{
+		.compatible = "allwinner,sun50i-h616-de33-mixer-0",
+		.data = &sun50i_h616_mixer0_cfg,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, sun8i_mixer_of_table);
-- 
2.43.0


