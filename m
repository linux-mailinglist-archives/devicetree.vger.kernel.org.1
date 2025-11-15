Return-Path: <devicetree+bounces-239002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C58DC606F0
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 15:14:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C163A35D0E3
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:14:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 140DB2FF664;
	Sat, 15 Nov 2025 14:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bGKTHkTS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538FF2FD1D6
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 14:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763216059; cv=none; b=LxYyg0XAUZ+4a2rcqUdL4XhmaZichFUyhERie4DiKVi6hqdboRIAxfe4cLWYX+Wm/hIqoKubZhEDykcqme0o1hkg/qmB3+dHG7ZhKb14bZIRZMMD4coEMgnQUqpscYCOcVnTvqRvMKg+IOEaE2gDNbGIuaCSHZ71TS/51P8AGjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763216059; c=relaxed/simple;
	bh=S0twu21aOxJ0VLQedxu7u559MvY/4tOCK9iLWkudnWI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t8imKS+Oar1u3q/ncbivC2DEt6bMRdg0BJo5KLl1A5/SLC+1ng29nZXxVgbVCY7sinrlUKH2A54M8zvm2QWZKEtmCFC2qVEUwrTDGC01wGsCkqCb1DijO5uV6kt61gHDGSNGVbbjco5uL2dD+nPPWFbhueCnfBr6pYYFRwwZq3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bGKTHkTS; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-64198771a9bso5467541a12.2
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 06:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763216056; x=1763820856; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TdxCYAFUxE8TEo/HdclUzBmM8/cH8lgIgGUaiseaWSY=;
        b=bGKTHkTSMmDreaLRKekZdXkPAu0VMx6SORhMdmq0/nSmU4i93rCk/bTMxpQV6P+gzu
         q774IWj9qyOphosXqov3uMd8ZR/0qrToRzCPclfVfExUXHOA2xMqM+tYmvFmF18ufhSv
         bIgvfK4smUSk6zr5xlbhb/wP3hhXjYY/XlxztYGS50cjQL8CyCs559PFr5TqD3+G2RNz
         4o9C43drnPLHTrtuyTQCoCcAjUQXxFDgB6gUQ9532PsdsMghx0ZLWdW6tdih2vCe81He
         a8YFC7kosvDnfDtoFBmOr61o5xgoQFruZXuZjVPyG8ZhVuw571lVi+aRuC3g6rKaqlqt
         dDfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763216056; x=1763820856;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TdxCYAFUxE8TEo/HdclUzBmM8/cH8lgIgGUaiseaWSY=;
        b=EkEFC1lKtF6ThFYgC/fbKhGESQDRZVuFEFnfr77Tf6DPlvjixphB8mbJ/ZKhP09PxO
         orPdmzEo6son1c6xF/g9TxrjQmI/KN5eSHJPm/3zX7ehYzinG83DtLStxcxUfeIV7Yr0
         4GzWbiCUM4eVEyS6S+g3x1xu0WhyrGw+FRXPm/G/YsEFufHXwf+QiVPF4qG+EPHjwy8J
         5PpOM5XYGT9D/W37xO399wZ/Sxpx1/oRyd7L0zrTixBgn4vBxoyniNLNDzzagjVj5trG
         HGxHYqozKzLJNuPIUKFcoNdGqVQ9vwhcncNuGPRCwscXtekyja2xLzx1jexYTpoNtuPS
         FDlw==
X-Forwarded-Encrypted: i=1; AJvYcCXtZUUEKQJF2PthRb5Hgy2NPeTJwmI9+YBRU5W7llUakwqoCEdBap76Ve6gunFxW593NpnzDAg/Qt91@vger.kernel.org
X-Gm-Message-State: AOJu0YwcvQQ47qwCgu3X/W5CUK+25m5uCTN30sI2cMTmAbKa9ynQGjPj
	HztqAqk3G/pLC0+aHsVbx1yM00YkNyTPBZS8TOCq2opXkbfi/iw5fwjj
X-Gm-Gg: ASbGncsZOCk7shkheqI1eD2ROtSiVEz8yHLm3rOorq0J9xJd8xQOSDxBZr1kk1L0FU1
	E2QCnJTCSra4qAe4R59ohDqYMWJvcJ/o3MIRln3TuEsLNtvwFYIT/esWEwh8L5c5H+RzZDzO32W
	wsR34OyZJrZwRu4CfYZxeZH3K3C2tVtKJ5b3Gu7CdEYFtWz8sXGH+mNpbvbDq4rKyRPi1BQJuog
	fxKcmDyRDh6EAV/5BF1xQPg+GWoHAHrVQjnWhLx518mCrqk13pDdp/gd2xm2Vnv47+ypfjWNTKV
	9qFQpC+SkF/d6WwJdpbrlKAVa87q7T8VWpCzMqesA5n+LQoIv4Bq1RKKy4b2kOZab1XL+/PJylv
	QNPP9BWvtdJjJm4/GQPJjzX3TW7cqCPdjW6mNNBSkKTM9Bcq6AZTKbWevCc5XMn/HXfnKbtH0on
	C6C4xXeErJVzjogWciExYhK/rUlNyNAlkkeIg32JS65Q70Aw==
X-Google-Smtp-Source: AGHT+IFh8CjX1reglk+d9qFWiwVdzTnZZrgC6zCnkQGkRjSeca5TyFvpwvWCslriMZOQG7eYdwduUg==
X-Received: by 2002:a17:907:7f05:b0:b73:880a:fdb7 with SMTP id a640c23a62f3a-b73880b0177mr94905066b.35.1763216055478;
        Sat, 15 Nov 2025 06:14:15 -0800 (PST)
Received: from jernej-laptop (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fda933fsm606189866b.56.2025.11.15.06.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 06:14:15 -0800 (PST)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: wens@csie.org,
	samuel@sholland.org
Cc: mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [PATCH 2/7] drm/sun4i: vi_layer: Limit formats for DE33
Date: Sat, 15 Nov 2025 15:13:42 +0100
Message-ID: <20251115141347.13087-3-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251115141347.13087-1-jernej.skrabec@gmail.com>
References: <20251115141347.13087-1-jernej.skrabec@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

YUV formats need scaler support due to chroma upscaling, but that's not
yet supported in the driver. Remove them from supported list until
DE33 scaler is properly supported.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 36 +++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index 40008c38003d..baa240c4bb82 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -403,6 +403,37 @@ static const u32 sun8i_vi_layer_de3_formats[] = {
 	DRM_FORMAT_YVU422,
 };
 
+/*
+ * TODO: DE33 VI planes naturally support YUV formats but
+ * driver needs improvements in order to support them.
+ */
+static const u32 sun8i_vi_layer_de33_formats[] = {
+	DRM_FORMAT_ABGR1555,
+	DRM_FORMAT_ABGR2101010,
+	DRM_FORMAT_ABGR4444,
+	DRM_FORMAT_ABGR8888,
+	DRM_FORMAT_ARGB1555,
+	DRM_FORMAT_ARGB2101010,
+	DRM_FORMAT_ARGB4444,
+	DRM_FORMAT_ARGB8888,
+	DRM_FORMAT_BGR565,
+	DRM_FORMAT_BGR888,
+	DRM_FORMAT_BGRA1010102,
+	DRM_FORMAT_BGRA5551,
+	DRM_FORMAT_BGRA4444,
+	DRM_FORMAT_BGRA8888,
+	DRM_FORMAT_BGRX8888,
+	DRM_FORMAT_RGB565,
+	DRM_FORMAT_RGB888,
+	DRM_FORMAT_RGBA1010102,
+	DRM_FORMAT_RGBA4444,
+	DRM_FORMAT_RGBA5551,
+	DRM_FORMAT_RGBA8888,
+	DRM_FORMAT_RGBX8888,
+	DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_XRGB8888,
+};
+
 static const uint64_t sun8i_layer_modifiers[] = {
 	DRM_FORMAT_MOD_LINEAR,
 	DRM_FORMAT_MOD_INVALID
@@ -432,7 +463,10 @@ struct sun8i_layer *sun8i_vi_layer_init_one(struct drm_device *drm,
 	layer->regs = regs;
 	layer->cfg = cfg;
 
-	if (layer->cfg->de_type >= SUN8I_MIXER_DE3) {
+	if (layer->cfg->de_type == SUN8I_MIXER_DE33) {
+		formats = sun8i_vi_layer_de33_formats;
+		format_count = ARRAY_SIZE(sun8i_vi_layer_de33_formats);
+	} else if (layer->cfg->de_type == SUN8I_MIXER_DE3) {
 		formats = sun8i_vi_layer_de3_formats;
 		format_count = ARRAY_SIZE(sun8i_vi_layer_de3_formats);
 	} else {
-- 
2.51.2


