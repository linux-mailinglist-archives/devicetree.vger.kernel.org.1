Return-Path: <devicetree+bounces-222495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B66BA98F9
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 16:26:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 303D018987B8
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 14:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A31930C623;
	Mon, 29 Sep 2025 14:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EtnqdVN8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAD930C0FE
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 14:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759155928; cv=none; b=Is5vqoHaH+Yw+tvVvb/MLV2u3RHqvF4JxpXbddSRG1b9Aq/+TaQLOJg7WSI3XpYYn1WLzsZ2G/z3clzsNPf+/fdrSWttk9thO7IOL75ADCSh+9O1e3z4N2mkRRwWbpPauijdGI26+XkIKIRUYthPtzU9ltTHKzW8BTHBo3xZ6V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759155928; c=relaxed/simple;
	bh=oP7HhF0VB7JfxRrl8HfKSpO38vChxQF+xud/drKx6Rk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GK1Nup31MNi+jzyX3iXiDhETUCiG+vRdQ3kjvQv4EPGLyQ3Lb/TY5k5aHpYorZkACAcWyGLkxF4lLZH6XVTz4fePiYRbF76wABGfGn2xmzzYoa/s42D5d1yMiMMgTRfKZQaUWtDat0efOhFVHpZplmJtxwQXXq0yb3FcIs14t+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EtnqdVN8; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-370f3111dedso34065661fa.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 07:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759155925; x=1759760725; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CR2DRLiDhu+KIUp//MexW+twJoNutw9NX8KBL+bDU8Y=;
        b=EtnqdVN8cSZGbq6Izi3bf/IXC34vaUQXKxPobkKzo1OlOxda51J6wZzRJ/5fqCVFXF
         h36OBK8+FmQtGTvEYHpafaHlmN+Eox/lsGRVhhbJXY9CwkL6SUFDTH9X0D6XzF7qdSNt
         Kfdn4+tNqZoeNJf6XWnNZAGjgAJJ4jgQXhGo4SMdiYaQ1TRgl5HVL/eHbfqyEx/SbN14
         whxEv1VcyuLH62giTne40AqYJQEfWplk8TNoOsnw0/kR6tOIHVgHrm+zhS6qQ/tZv1yL
         ijGJt6UtO686XcZyOixm3n6TOkr7pC3Vnf5iC77UKrNJhCr/sWZ1/zCfCCtiVhbe9qum
         LnNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759155925; x=1759760725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CR2DRLiDhu+KIUp//MexW+twJoNutw9NX8KBL+bDU8Y=;
        b=RUgfoshGN6xOwEQaJ+OJ1EyubosJKpDCfeWjUWiFqBU/ejeFqgVKvWQ2zJ3AyC67za
         +pgrWKv5AvHzSxgJg3Dv6v7ZTbaYwUBie82MNUWSk+XOa6UTEgBfwS47YDVj88XtPH+3
         +uHISCdT8rMoPLPMEvyv1tzHyoa8uQSorLmI98Dc47kWNd2eia0s9BEcM4z7ms/a9duB
         p01I8TyTkaD4Oaff3JBFKzNQTc4EbGvAiQ7OAVHu+OiAvl+8loq8X04zHwcNFk7msCu7
         bUMo4BDD0CE+03J534JffXZbQGHncwhop5RT+H6ep2I3relQL7PE6136NERYraNa+vvA
         RsAA==
X-Forwarded-Encrypted: i=1; AJvYcCXP/gJLc/ZfECiNvpjKEpSOGi7Ogj3JmQmCkGvUJ3M6w7Ngnk562jmtqJThaGkEm6NgCghkc+Znm0H0@vger.kernel.org
X-Gm-Message-State: AOJu0YxuL7subkdvGFfuPYfSDQxPGjCN3MDPF2Ku/47y6JRlrZIebVcL
	x46FnqiqPXBCrcELhfnKvQRr47YAoPE33xYU9s+5hNxfDoiPBnL4upXl
X-Gm-Gg: ASbGnctvgFrDOmdNc2vWp9S+d0/XXIL5mWxbHFtPX93RswIsdM/bwtIKuVw4CbUS2+t
	LyzSlANlfE9c2o3wgWyhp1fw0/nXKZvz4aQ6cCH91P7el5v6pBybGnC8jPR1rs50Sa+lEORCgel
	Mjv31IkoYAud5D/bbibLBHi4nks2KAgq3vMhoTJrrFsIzN4Ca3g+Y4P0QWcM4BRqB8ho6PVWjPm
	3yEGvs2O6jlWxJtn6YMjRdUt71PqMMgeSYoegbw8JVhfBqYKqKgxxqmqCkdpeTNljD+knKF+cP8
	dGUZSbyBxOxo5mVevbxk6x042W3D3/rlbC9EBWnNoK6Jj4T2w1RTvseMy42ihHG54SZBUqgSjeA
	BXyy5Uk+bpSdmUbYEDzzWLcWb
X-Google-Smtp-Source: AGHT+IFNjIFgX8uVUv3LKnu6a8HZNQrQoOWo+SvjXPGY7p7tT2SghjlapbxzZJoZAFXHw1IMl5Pu2Q==
X-Received: by 2002:a05:651c:1117:10b0:371:7771:9f19 with SMTP id 38308e7fff4ca-372fa21bdfdmr2079601fa.7.1759155924484;
        Mon, 29 Sep 2025 07:25:24 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3728c23e6c1sm13201001fa.52.2025.09.29.07.25.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 07:25:24 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Douglas Anderson <dianders@chromium.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v1 5/8] gpu/drm: panel: simple-panel: add Samsung LTL106AL01 LVDS panel support
Date: Mon, 29 Sep 2025 17:24:51 +0300
Message-ID: <20250929142455.24883-6-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250929142455.24883-1-clamor95@gmail.com>
References: <20250929142455.24883-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Samsung LTL106AL01 is a 10.6" FWXGA (1366x768) simple LVDS panel found in
Microsoft Surface RT tablet.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/gpu/drm/panel/panel-simple.c | 34 ++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index ea2cdddb9b8f..6626393d7565 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -4144,6 +4144,37 @@ static const struct panel_desc samsung_ltl101al01 = {
 	.connector_type = DRM_MODE_CONNECTOR_LVDS,
 };
 
+static const struct display_timing samsung_ltl106al01_timing = {
+	.pixelclock = { 71980000, 71980000, 71980000 },
+	.hactive = { 1366, 1366, 1366 },
+	.hfront_porch = { 56, 56, 56 },
+	.hback_porch = { 106, 106, 106 },
+	.hsync_len = { 14, 14, 14 },
+	.vactive = { 768, 768, 768 },
+	.vfront_porch = { 3, 3, 3 },
+	.vback_porch = { 6, 6, 6 },
+	.vsync_len = { 1, 1, 1 },
+	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW,
+};
+
+static const struct panel_desc samsung_ltl106al01 = {
+	.timings = &samsung_ltl106al01_timing,
+	.num_timings = 1,
+	.bpc = 8,
+	.size = {
+		.width = 235,
+		.height = 132,
+	},
+	.delay = {
+		.prepare = 5,
+		.enable = 10,
+		.disable = 10,
+		.unprepare = 5,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct drm_display_mode samsung_ltn101nt05_mode = {
 	.clock = 54030,
 	.hdisplay = 1024,
@@ -5302,6 +5333,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "samsung,ltl101al01",
 		.data = &samsung_ltl101al01,
+	}, {
+		.compatible = "samsung,ltl106al01",
+		.data = &samsung_ltl106al01,
 	}, {
 		.compatible = "samsung,ltn101nt05",
 		.data = &samsung_ltn101nt05,
-- 
2.48.1


