Return-Path: <devicetree+bounces-224442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 56688BC3D73
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 10:29:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EFC153AF403
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 08:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1C032F5A28;
	Wed,  8 Oct 2025 08:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O8x7cF3D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E632F5466
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 08:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759912127; cv=none; b=bSmI/cRXiikokLegWxd8jLgJq5kItMxj01hYo1kJBKEgmlILY2XZudrnOrFz80O/EtrFs83c7itANheK20k08Y2UDC3C+ZHHVIDv3G7PwPqkPzdGTsj8k7vqnubMS2dHuX+L/zswiz1DeoBtM4VZnirZAy3oEwzJLLmBJR96vaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759912127; c=relaxed/simple;
	bh=0Ne+TrGBDrX3c10etUDnWFPIq6tGiw8KBjG6kT7gL3k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Os1k+mdR4sPE4ftb4QI8iWx8OfB9msp0/T4e3aViYiB2/va6crGhgWv0B8JT4VOREwB3E1ujPIiUQPJSIOtoB5YujetmtlREcIh7MHl+H0hDGxD0Sf3jVVSx3ZqUR0we1y/72Wjp8NX6yhGebr+aPmYDF5utcS6qhJ4w9+ef6D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O8x7cF3D; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-57edfeaa05aso8510929e87.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 01:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759912124; x=1760516924; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uV9bEo+jpzFCLNbrvyE91xLWTJAB/c8fcrn62g9WVnM=;
        b=O8x7cF3DphlQtsulEAM5U/b6e810sgh4xgJ4hAaOXoQ7cu2nc6F+wN1zRWSx/btMnl
         kWXoGUZHeMHFgWYX58Ra/5w25fM+ZX2OiorbuFR0+TfJq6jpSRPnH9CM/2JKFyCngFAd
         kWciwkmOX/6luJVBpqJqLJUh4LlKV957+9siybmivx9GZ3juF6HOM8GIP6jL9W089G/P
         x4rjoyciPm6MC2E2TUF7f+wnACY3vhgygXFPKRQ2/gQ5iPdpUlW1z0S6clgDPprz6rUi
         QCZvVqJQv9N33cehCkLW6ZQhsYzKYxpM0b3+3Z9NfS4DtWCfvbOy/xSI6EZhVndX9UV9
         Z7PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759912124; x=1760516924;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uV9bEo+jpzFCLNbrvyE91xLWTJAB/c8fcrn62g9WVnM=;
        b=l73qnXYARRoaRCgFnoaoDGKZLL43e1k0aE9aITurKb9ONcgPzz7bxJ3BOh8Ae2i/tf
         212z0mmPXmMoKTVbRJEWHDwyAzrZmIV31Ggi34+mwArEi0Kd302IALrrIbKNihG6o8H/
         ohU8j+8Z3dkC2XTpDBicQQlSdI4y4xW4QuK1qGYqZll0txlj+DZtt4EUBNziNcHt2I3U
         HCK6Y0DOJ0q6AYipuxU8tu58NpOQ5bzhzeMWhoR0pZfZ73xvBc0PMOiFygLx3ynnyrd3
         PP9egP8BlcIAo5wyE4Sg2BQITGvi+coc5+iniJAaaolkLwvl1cUlZLInSgBzpRW6L2pG
         SU/Q==
X-Forwarded-Encrypted: i=1; AJvYcCW1nPKfBPDnEBOQCX76jdSmyVTlxR8pGl9OPUKuVQvf11juFMjmi977GPYi5xMpnfFgN2EAdCMZYJ9y@vger.kernel.org
X-Gm-Message-State: AOJu0YwfVFSLvdajpTULPBZxwm4MmpFrgjYavLziSQDBx5j5UQOaWwj9
	dKzbv8hVHm0zxXtD7dJY/pFD1g8C8z08Ztkhz46zA2d7wI2PQTT/Weo7
X-Gm-Gg: ASbGnctfbqzT7kTzgQhnDJslCgkjhopXXh3BmVBYXjM+jTD/lJ5I9RpZMNV7ph4+iNa
	i7UshECbuEumATWX0d5Q7eMIOEF1qD/Qx/rXhMXYXd3qvy75J3QVpCPSvvBLBIFhluMWg/gN/8J
	DbBzH7kO1T0uOVCM0E6ZH5miv+eNaKEkKcc/A8wW8gumOKf0Kh2UzbROPDzm2c78XqQpMDkazaO
	T5CFsznDtA6tIEixMKMHGvxpOcJZnZxqohP9wRGp5/VUZSGhRz9tr2+GlpqXlePPMbyKGVnF8kT
	2FYtYD1r3l2dpKiOSuvN0OkEgBcnBqtAR9SHyA4RP/Nz5MsdcosD8XRNwB0KaU9LgCAf9xe6J88
	O4sgKDJz76vdNpoKih/SovSZDlElUfwOMg3wSxw==
X-Google-Smtp-Source: AGHT+IFIW595D9hFhReYazPCYD5IL0kfVrXBukuOyPqDZomqnbAGHxukrmHmJaTHzusxTCMjXJg+5A==
X-Received: by 2002:a05:6512:3e29:b0:57b:cebe:ce04 with SMTP id 2adb3069b0e04-5906d896bb8mr627734e87.1.1759912123399;
        Wed, 08 Oct 2025 01:28:43 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01124649sm6968733e87.15.2025.10.08.01.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 01:28:43 -0700 (PDT)
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
Subject: [PATCH v2 5/7] gpu/drm: panel: simple-panel: add Samsung LTL106AL01 LVDS panel support
Date: Wed,  8 Oct 2025 11:27:57 +0300
Message-ID: <20251008082800.67718-6-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251008082800.67718-1-clamor95@gmail.com>
References: <20251008082800.67718-1-clamor95@gmail.com>
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
index 81350ef50295..753149a9ac3f 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -4191,6 +4191,37 @@ static const struct panel_desc samsung_ltl101al01 = {
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
@@ -5355,6 +5386,9 @@ static const struct of_device_id platform_of_match[] = {
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


