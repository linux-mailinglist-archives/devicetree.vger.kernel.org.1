Return-Path: <devicetree+bounces-236586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 29529C4592A
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:16:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8A69189081F
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 09:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E4A2FF14D;
	Mon, 10 Nov 2025 09:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bL02WzZo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97A9E2FFFA8
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 09:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762766133; cv=none; b=ROCbZfRyDPR5kBOqCq5Epl9NZ/xXewsvdHrN5CBfLITEcgZQQZ/MVr8XtLewWaKy2qcubUyyydOR4tjoyVgx+whMNaP8w0v6AnbjBJeJTRjhN3c8w7vfzulqZPA970xHimeMRU0Vus1Rf5dFDJgAFgoBiWp3qY68Fu9Ve/EY8Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762766133; c=relaxed/simple;
	bh=kEk5LNotciAZWjxbpPSAlsjwVvH/hQCIwHrwOOjX+Ls=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OEjgbLqhtc4EfP/pvY0H58JV+gmNY2P+cKiUcQVYbGLwDYKHLc4eyO87SKYwBQ4v5MYc2PkVk3aqrGelITBfvW9S8+u/6q9zKdks8hhSb/ngw1x2PDnqFWW++EF/aYuBXruujasvK/bp8GNnsc/5RI2G+UnFhiWtpTVqrhfW3dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bL02WzZo; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5945510fd7aso2067914e87.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 01:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762766130; x=1763370930; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RAf6EGQeqIJGv2EMJ3digEJ7PV9lZXWnKBDi4CC+hkM=;
        b=bL02WzZo38Qm2DoYCbD/JJ8g1hVIWbKZz1cmHrVSeOZ5qxNBeT5j/ziRrufn+wvCvM
         8SQIPeJWO/BTmkdBUCrbUvWmF5R7dHqriQRZobl4R1y8b4IZ5LfIovB5C/WWhPbYPbWf
         IVognFVnWJAyStQ6+XdCYKg5VdjbKM+0eE4NwehW/sFgafA1F/OnuGwXZsOFyL3Ac6nZ
         qCfRnxBGFycAmChkL/xxeFhGcBF7vgW+J0j1GK/j/nE3UbZyRHrNh9qstRfdN/Hlm6ib
         KPvC2WcK9ny2JHvmABfSI5xDA/PY22zY6ezrew8nF+/8dml2fGcb2u2th4FzRDWyifyb
         293Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762766130; x=1763370930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RAf6EGQeqIJGv2EMJ3digEJ7PV9lZXWnKBDi4CC+hkM=;
        b=V7Mh/WrXC6IZtr4pPzNyhRIufLIFWpbyWOshTpWr/udorw6F3Vm+ejSikr4xb6gmeB
         TPfWSmFPt1XsECUNp0QnaJMIbKdXNtG7gg1fjHF0VGmW4L+qj9a17YPxbs1QYrpWxlnU
         x4qvypzAWOqWauIYIQ+bODPn35l7mn9H29y1wwY2R3RQ/89YDKz/0zkt/+X495Ffcdax
         Bau3VA/v21qFY4NCJ963rFdJZ1IPa7zXV3j08aE+HrXq4JkcSaT/trNn0JtPHqytNKO+
         NOZ258ar8hqFrz2dUI9VBvpjJ6OpZZuZleRBRnU7GYSFObjSJzN28rtJlh/dMnSZ/+BJ
         wokA==
X-Forwarded-Encrypted: i=1; AJvYcCUf+dDhVMS1Cp2Zc+tAV43JWc1k3e6pRq+nEndQ8XE8RSZ8m2qUnh1k0vof/UmlIAsGb8Mv9N/9z6nz@vger.kernel.org
X-Gm-Message-State: AOJu0YwnsMgJi9NStWT1qHeYI/6ZCLBZGBdMTFWGdDsIM3p99WoONZuH
	WQanNwO39wkhp6yn/lGiwtcfDTqchObep472gPWbskZDKiZ6GxWlie88
X-Gm-Gg: ASbGncsrvfIXi/ndgw1U/Tqy5oWneQcl+KAnz79dYk7MKu0mG9OUzAgqe+xMhW4a8h1
	pIMwkZy26YSskMyjqgZxnn6Rv/SpMaKbx/KJNmEBBabjQWqOJNheKhbCtrVkOanrQhqpaA4v8/f
	uL7gDvY+D/SaEcavvWPez0clQRQb7PrMJPMobWP4/XAmZPNacd3W25tQ0RsuiZDPIO6eY4mD45l
	ltsIsqjoXlVLz/30wLvE0ljpmY9DMzN//B/FlJ8pC+jMCbrs0YnpHJBi/orpJH6ghRMW7yMmrOP
	olUv8sO0t/LS++wlm1GUTuiKEq3xcojIHknLZ3tXhwzPz7y/7xxo7XIpA2kLfqc2j8FbJ4s7yEA
	5br2ChEh6aFsheP150DDvmT8pFKafsGibps97emAJ1oa+lmCirc+C/BIj8a2YzApGoBFHRu22eN
	kBIKwzgApEnw==
X-Google-Smtp-Source: AGHT+IHKVA2KBHA8B796GKRYtFtqhfXw7u6AasCbdjSjaT+/hAWyiSuW0TYURDuTx8uldyGjv94z6w==
X-Received: by 2002:a05:6512:308c:b0:594:34b9:a7f4 with SMTP id 2adb3069b0e04-5945f1b6d56mr1751014e87.29.1762766129518;
        Mon, 10 Nov 2025 01:15:29 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a0b76f4sm3852006e87.73.2025.11.10.01.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 01:15:29 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
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
Subject: [PATCH v3 5/7 RESEND] gpu/drm: panel: simple-panel: add Samsung LTL106AL01 LVDS panel support
Date: Mon, 10 Nov 2025 11:14:35 +0200
Message-ID: <20251110091440.5251-6-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251110091440.5251-1-clamor95@gmail.com>
References: <20251110091440.5251-1-clamor95@gmail.com>
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
index 6369e5828189..bdb53824e3ed 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -4223,6 +4223,37 @@ static const struct panel_desc samsung_ltl101al01 = {
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
@@ -5390,6 +5421,9 @@ static const struct of_device_id platform_of_match[] = {
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


