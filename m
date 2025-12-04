Return-Path: <devicetree+bounces-244207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B5FCA2776
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 07:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2B8630BCAD7
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 06:07:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C269730E831;
	Thu,  4 Dec 2025 06:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mWp+1lOY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B569303A0B
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 06:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764828421; cv=none; b=HfpdTpYAk9+q4KJlPhwLCuJ4a/4q2n5kwHg7e5DsVMYOQQtR/OqsifgLljpfnuXRXvtCeMEZKhjrzS40++05qKlsP1FOjionDQiokclFrpzy9mMAqqRFURAunqtqOJBKJiXl0AzcOBd4dSB9w93YTvRNApWaausdqfa1pJTkWgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764828421; c=relaxed/simple;
	bh=8+iUUVydqpAz6T10SlyE62zEhHHm5bu3B1mX+Enxrqw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ooH7ssstKGdFxW8x1YUNxyk40YAS+HSySpykLCYpFgBhpgM1IIUdEzZvRc0E7SWSwAe/LQD/zNaOdIf+VaC9yqomHqrBxe7JfBUYjznovUhwVmrvY7TxX6O91TBFstj2p0+jehSjY5Sv/eoobxuhPyb5mxlzMcBXB/ln9ZColGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mWp+1lOY; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b79b9113651so89112266b.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 22:06:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764828417; x=1765433217; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RzQwYBywu5dQ+NXbmQKbTsDDp6aCCRs8Xn3HiCAnbrQ=;
        b=mWp+1lOYUiEZ97p2eQTN8b0Jvtd5gKH6k0/l+NcNb3kPmFxUCJsnecdfs0ZDAU4mYt
         J+mwGKZeWQoMGrjWhwDrrrzgmlUPS+glvWwqZuD+e3VHwfSzEu7tHAZK0KLkj8gvIy14
         k6/s9OrBCbBFBPd+hu2+sffD1wy6rJPMehsCG2gEB0FDDV4Pi9LiA5mlKqOWspMsLhPF
         WTXzQhZVWGQ+GF5Pn8q0DJbPnN0M9WvM0C1FvKgXF883x2FFqJxCw1zGZjWI6z2PaFnQ
         pFVAiOPirQa85AjHdGGVEYNoiOhliPMBdPmwacjXl2E+Yi3AJFVLrQb4uD33pTZs+xiR
         HhlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764828417; x=1765433217;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RzQwYBywu5dQ+NXbmQKbTsDDp6aCCRs8Xn3HiCAnbrQ=;
        b=xKPm+lkiJOi8ThRvMCGFU/uWvfuvCY1xO5s//YSTg8rYoHg4oq2tOx5J6KeZ2iKImc
         kpDkk9PI4mnBn33nmRxH5CeaPaC8wvH4n1XYQIBysKb12G8xJ3qAHa8ZmtZp8kRvL9iS
         JgB/ykvPCsFg2sly5Qrui/HDFldL5d2+k54Ho4GWYGM034x/DM8sK+expf75DFTEJDZH
         PecdEOMdEcR9EuusBKYh2YCBbLSJodNc2xGNB5nSZTz1lb2VE+XfkduusHY1Ib92wcST
         IX43fTvoZXFqZku1WKpk2a/jX7kooeFWiUUP3uVmw5RrgIi4UPj5MBOhBDSahMxpAZcn
         XMJw==
X-Forwarded-Encrypted: i=1; AJvYcCU8sR16yVP9bxcpNR+musJPrh/PLlO+ibSqbfvKWNweWtFZ5l/wYpPsHpSbHTbwIlK/kULLhx/fysY2@vger.kernel.org
X-Gm-Message-State: AOJu0YzGsGQUIpFH3CCJoaIWkTjDlzF/hLnl4yFfYJbShYTzc54uAbXX
	hZ6C1PJZFx5Y4TKXvgINY6Rnavk0+pt6CHoSF9ztkW1gStfY6oanUcuv
X-Gm-Gg: ASbGncvY34+cXK0//s2yRyI/VZm9oJ8EjII8dn/A5xWJFtRLuA9t7IgmO5HLy+OwFHX
	AhSiv0gFpywNByn15OQZ76w1cA+4MJAGNZDcxwh3O+O+rJUl3Rui/jHwAy+NUAVyIJTYVUS0yYo
	tMilcnn1EL5TrX4hAUmm76Up/bU06loRx3FpDE663mkxYqeb4L+530SlBv2q73l2t6b7uAdpIyu
	5c7D/RVgx15+R8Z7yw9DqpoUOQ81r8ld1tdH4Q9rOZ8jnhOl3VDBgCIOTx+EVtFuCcxeZbjSzan
	XiB7JE4ipZm1cyH55MwVidSjyITulZC65fML3pBAAUs/j+k4h7bxLnbxGNbDQKMJlrXo1E5d+9E
	QSYzL02EdtCKwWGgPvaFuy5jarMJCSZzImgh85QiaZiw1t0tYLnFk64zhmWFPVeeZzFcN7TWTjw
	hu6YV+jlnCxQ==
X-Google-Smtp-Source: AGHT+IFtMcIib2KK0rM9it1qxR9Y9tOOlZNiy0Ui6unryK95uOARlpcCnZM+R1FaHUMpUZkUjRTLoQ==
X-Received: by 2002:a17:906:6a07:b0:b70:ac7a:2a93 with SMTP id a640c23a62f3a-b79ec6b93d3mr176869766b.43.1764828417241;
        Wed, 03 Dec 2025 22:06:57 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b2ef7798sm460296a12.15.2025.12.03.22.06.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 22:06:56 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
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
Date: Thu,  4 Dec 2025 08:06:21 +0200
Message-ID: <20251204060627.4727-6-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251204060627.4727-1-clamor95@gmail.com>
References: <20251204060627.4727-1-clamor95@gmail.com>
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
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
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


