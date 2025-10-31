Return-Path: <devicetree+bounces-233652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C892C2459F
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 11:06:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 35C644F390F
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 10:05:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 493B53346BC;
	Fri, 31 Oct 2025 10:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="FwsPqu8W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78FE933375A
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 10:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761905105; cv=none; b=mgxOzeHlx9xsDq3VdPIPyswa+UM4c/ja1rQKd9ll+6CtVPt2uh8vtvuSmIZCmXGaHCoIEK0hyh/geGMB3G5ck9zzlLEVMLks7yYHAWHLcU0nQHuUKHv/P3d9UU9fFc902pvcXuDn3mtPOoCa3/4CY+q+jHMaegUakfgFJrk2NOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761905105; c=relaxed/simple;
	bh=RA2ffTxjmwnG7Kd0+crA6vcO9h5AkbQtUlwc/WGyzWk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=q6JMCwNSklgr8hHzx6yrq+de0gkM43jCZ1Givvdr7gHxpHzdoR2VeHhQBlFKyIE0Z7OgNx/YwbNw6ZA5OwneJQDXKU9XzcAoktxjiOP9r8UK6FCSjf8lVq50Isk9esMGRg2nEp8YcXOugvIZ6Kr6jnneGu9ov9ixQjhpH9m73j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=FwsPqu8W; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7a27bf4fbcbso2057079b3a.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 03:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1761905103; x=1762509903; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FEUFh8n08DQQphEfu7D6Jjf0DyrDDA8NGdeNReXL22I=;
        b=FwsPqu8WvkG8v7qYCuaxqdxi18LkDgp53zTJ3YYXAKUHdJWvLPGpr6xcn7yoBFYDa7
         Q+BihNnGQVaOoI6t8jvlo85reVNeGu8Ea6U9eFQqNbf1Xdwl5FGPQiDnAa8EN9DP2lRU
         9gjPjr96g1psmiJ0h/lEZYnyJ151KU/QwRGKQ9sgSAcgIBk2iyFw1uGi1RT2nzWkBC9g
         9qA2qlGLoN68HcMGWft7V+fGHNPi30K7OP5/xwy2ydBH+3xPlmtFmDdkh6Xbcjs1/feh
         nirAbCFE5M3pP/iXkZHrrmA6wBscLa55UGr135Z4b9U4YWxw0ew8VbbtruWn1lz0x49K
         0qLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761905103; x=1762509903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FEUFh8n08DQQphEfu7D6Jjf0DyrDDA8NGdeNReXL22I=;
        b=pTsD2P2gSLtxWU1/YwXBb7XBB/ZcI+ylzRpOck+o0x1qpluIQx6Cuq22C7GM+YgvoR
         Ix7sWVJzJAMQYde7jGgb9coWgRvbNijLyii1C+YJ/R8mPRj9S37Z4zHZqo0Sqb3/zHjg
         INWHMBXxGDDbJvipmWptX3zpD2iQWNoUrRQ1QNbebuKpH95IPZ/pwH5B9Zvf8j55GDCG
         u/6hDTjZpAUvgmF6wA/XZEQCvUBSTi01ruBZGTT+5C0vadot0Gb06ciAfHZhpN8WJirX
         jFAGzy9fO9h6sBs2AV4q4+eAh+UyFS+IZhZIWITq1UBhXVNCTHgWBRWJKs6zB2+zdJ72
         Fw+g==
X-Forwarded-Encrypted: i=1; AJvYcCWV79fmJq8fvCnZFF3DdGgc1pTRXLLFokEFTOMisnbLuv4h7BzFDXd5e7C4ugB4SMlQ2oq75na48ihy@vger.kernel.org
X-Gm-Message-State: AOJu0YxNQ8TiSkE504AbIdresJTE9MKYx9disqJTMKR9a7M27A7CuUFw
	1LBQEmq2cCThZyal33hxGWCf8A4OTvYsodUdfAQha/xjpnve5j9pREwn8/z4woH2miw=
X-Gm-Gg: ASbGncut9o2Vk4rp20M/z6O4Q4/r3h98lwK46OXzlXcVm2k/iUJz5+SZYkpKUZkl9Im
	GujAxkTxuDISstzcj23Lfq1Bhu9fTzbDvLE8zI8UWBoG8Xouvgvpf7lZSzdpka0GPwpoV2hA2Om
	yt70sWVY6PSaPAWjcYjjh3uefD3zDv195VpH60fk/KHSAfwYGqIy5VD3OKlPeoti6vONxz1AKYF
	XGF5lTtuD+r3pLmbymAA/4F8rzWVz58UZaaHN6VP55M4dp1BN1ytTsAuhpV0UC+1y7XVTYaDjLs
	QGckhaJJi7pVBiw+/KCrUAsukT269kZI99ayPKJ5xAjGI9tBkhCrv5LXf5PmDP/AAtHHAfciJ9L
	j3FLS+wPoAicdJ/typsHPqbi4VvCRHjTGmNCODqgSR7hHF3H5PmhA3vX6wnWHog1dlJYr34nuqQ
	gw/W59Nl8H27ZGJLmwI13mr+1MaHFjCryUAdRdq+KDuIhsms4kr5tQod/UMg==
X-Google-Smtp-Source: AGHT+IH//IxQyYKyB5E1QEm5vaYIp9M6eCvuPoYVqMg/AVtwUeanmUa0KKSrJP5wn5URAlX+DhkZZQ==
X-Received: by 2002:a05:6a00:4fcf:b0:781:1a9f:aeeb with SMTP id d2e1a72fcca58-7a776e94027mr3603542b3a.1.1761905102532;
        Fri, 31 Oct 2025 03:05:02 -0700 (PDT)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7d8982117sm1644352b3a.15.2025.10.31.03.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 03:05:02 -0700 (PDT)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dianders@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v5 2/2] drm/panel: ilitek-ili9882t: Add support for Ilitek IL79900A-based panels
Date: Fri, 31 Oct 2025 18:04:47 +0800
Message-Id: <20251031100447.253164-3-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031100447.253164-1-yelangyan@huaqin.corp-partner.google.com>
References: <20251031100447.253164-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Ilitek IL79900A display controller is similar to the ILI9882T and can
be supported within the existing `panel-ilitek-ili9882t.c` driver.

This patch extends the ILI9882T driver to handle IL79900A-based panels,
such as the Tianma TL121BVMS07-00. The IL79900A uses a similar command
sequence and initialization flow, with minor differences in power supply
configuration and timing.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/panel-ilitek-ili9882t.c | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c b/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
index 85c7059be214..c52f20863fc7 100644
--- a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
+++ b/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
@@ -61,6 +61,13 @@ struct ili9882t {
 	mipi_dsi_dcs_write_seq_multi(ctx, ILI9882T_DCS_SWITCH_PAGE, \
 				     0x98, 0x82, (page))
 
+/* IL79900A-specific commands, add new commands as you decode them */
+#define IL79900A_DCS_SWITCH_PAGE	0xFF
+
+#define il79900a_switch_page(ctx, page) \
+	mipi_dsi_dcs_write_seq_multi(ctx, IL79900A_DCS_SWITCH_PAGE, \
+				     0x5a, 0xa5, (page))
+
 static int starry_ili9882t_init(struct ili9882t *ili)
 {
 	struct mipi_dsi_multi_context ctx = { .dsi = ili->dsi };
@@ -413,6 +420,38 @@ static int starry_ili9882t_init(struct ili9882t *ili)
 	return ctx.accum_err;
 };
 
+static int tianma_il79900a_init(struct ili9882t *ili)
+{
+	struct mipi_dsi_multi_context ctx = { .dsi = ili->dsi };
+
+	mipi_dsi_usleep_range(&ctx, 5000, 5100);
+
+	il79900a_switch_page(&ctx, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0x3e, 0x62);
+
+	il79900a_switch_page(&ctx, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1b, 0x20);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0x5d, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0x5e, 0x40);
+
+	il79900a_switch_page(&ctx, 0x07);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0X29, 0x00);
+
+	il79900a_switch_page(&ctx, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0x92, 0x22);
+
+	il79900a_switch_page(&ctx, 0x00);
+	mipi_dsi_dcs_exit_sleep_mode_multi(&ctx);
+
+	mipi_dsi_msleep(&ctx, 120);
+
+	mipi_dsi_dcs_set_display_on_multi(&ctx);
+
+	mipi_dsi_msleep(&ctx, 80);
+
+	return 0;
+};
+
 static inline struct ili9882t *to_ili9882t(struct drm_panel *panel)
 {
 	return container_of(panel, struct ili9882t, base);
@@ -529,6 +568,19 @@ static const struct drm_display_mode starry_ili9882t_default_mode = {
 	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
 };
 
+static const struct drm_display_mode tianma_il79900a_default_mode = {
+	.clock = 264355,
+	.hdisplay = 1600,
+	.hsync_start = 1600 + 20,
+	.hsync_end = 1600 + 20 + 4,
+	.htotal = 1600 + 20 + 4 + 20,
+	.vdisplay = 2560,
+	.vsync_start = 2560 + 82,
+	.vsync_end = 2560 + 82 + 2,
+	.vtotal = 2560 + 82 + 2 + 36,
+	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+};
+
 static const struct panel_desc starry_ili9882t_desc = {
 	.modes = &starry_ili9882t_default_mode,
 	.bpc = 8,
@@ -543,6 +595,20 @@ static const struct panel_desc starry_ili9882t_desc = {
 	.init = starry_ili9882t_init,
 };
 
+static const struct panel_desc tianma_tl121bvms07_desc = {
+	.modes = &tianma_il79900a_default_mode,
+	.bpc = 8,
+	.size = {
+		.width_mm = 163,
+		.height_mm = 260,
+	},
+	.lanes = 3,
+	.format = MIPI_DSI_FMT_RGB888,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
+		      MIPI_DSI_MODE_LPM,
+	.init = tianma_il79900a_init,
+};
+
 static int ili9882t_get_modes(struct drm_panel *panel,
 			      struct drm_connector *connector)
 {
@@ -680,6 +746,9 @@ static const struct of_device_id ili9882t_of_match[] = {
 	{ .compatible = "starry,ili9882t",
 	  .data = &starry_ili9882t_desc
 	},
+	{ .compatible = "tianma,tl121bvms07-00",
+	  .data = &tianma_tl121bvms07_desc
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, ili9882t_of_match);
-- 
2.34.1


