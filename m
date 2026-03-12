Return-Path: <devicetree+bounces-274420-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJI9BGpDsmlFKgAAu9opvQ
	(envelope-from <devicetree+bounces-274420-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:39:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6E026D28E
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:39:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 039F630387FD
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 598CE3976BA;
	Thu, 12 Mar 2026 04:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="It57tpGn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10411373BE8
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773290340; cv=none; b=AILVs1ySbNnVIEY4snJwZipmIqJkgc3aJMToqyV4cAClG5ZDd+D477MpI2X/xbzRo2tJyNMuoZIKD0qAeGlL4ZKc+K2qfoY+BNI9HPXPndVtt+RwZ2GLQs8jumCx5/DE5Hr3RXG37AL9vEwznkjVR4uJ8nOkbzDFYFx8sYhmJbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773290340; c=relaxed/simple;
	bh=VxDRO5AJDmFc1BJYwDmYf30k2WBNqk0WnoVJS2LIewc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BM6gRCkENpw11w770CzZwYi42Kb4GgGjzeZA2v42hf6+TfBCz20KPFIJvbbBNMh/Gl/EbUiUGg3MKQqP2f8+diG30YFUqOoqPq6OrfYx/ilk/fKm212HVDqh/aCsYTAJ+Z8nou+tMlTvIxS6gNeNsDZgoX/L2ht04GrfodsEPvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=It57tpGn; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-35a08ce49dcso515385a91.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 21:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773290337; x=1773895137; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BA5hockTvoyEWmo1vDE20MMnx+5hM0Z4ohhNVG+T9i0=;
        b=It57tpGnx7Ub28oT4ikpbSijfQ7yzWcTyTt6dtjqneZeTxaHYqI4fvv/Cu2lhCJHI9
         GsaU4fcYzPJHRoMHBPrIJU6Lhzo6SCttfCrqCKupaDNvmLBx2yD+mi068nkDXsmGwDdT
         uckb1t2YTMygFK0UV2nlHgzmWAmmnpCpM4P8FuMYjp66H6A4PZsEGYfS4FWBTS/u2d/v
         D+KwMavWLbuMPKJd0ZP28vd20gcHm2YwpRUrHTTpxPkIZzvk4EqKPrIr2y8u7rIE5RC1
         PQKl2JY3KcSXC2UHfuTxvyZbExAQc2I9cWMw/3CINy4jCwf/cnM2q4nZp9XNRqsT4oUl
         KDKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773290337; x=1773895137;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BA5hockTvoyEWmo1vDE20MMnx+5hM0Z4ohhNVG+T9i0=;
        b=XLBWsmF3HwrXYD3WidDQIZtlf0mZ4+Jzc1wtyBjgrcSC9fcwIiCAnCXrUOllVPkFFs
         zRFepp4aaGR5D/LfwcfiBjqGel8Ff9olerwv1MzdEbxv3iTQmV/wQkEbAu5mqgDUDY5Y
         OwzVjT/IWAyl00s4aGu8rR53q7oFbsXszlzTdDTO50db0RR3g9TUX6QAihibCS9uweeE
         lwuDWLRv/Gsk1S8Dscco9bY7b5qiWqyYjRp/CBmdgq9o/t75q1qiNwhfapBjlHIDUKla
         7akYSm+ed/qJ9OF44LyW9qy7t59XcHsgL+IqJG1SLoLwFj4cyNsnZ4kuyZATVtG6wQkf
         +DJA==
X-Forwarded-Encrypted: i=1; AJvYcCVwsh0oVMLJppof5ivhCct/W/c/jQzpuDW7eOlnGxOVnx1aq52P7+1hSQs+howb9D/Wx8Fpa4R985Q5@vger.kernel.org
X-Gm-Message-State: AOJu0YxOBVF+Nx37XDhUqVn1nebRSzV33lso8AEi2mTnsUiUKhFXwYkc
	pra6lxe2WYlBoUiDriKonoIAuzYYniYld/Jm+Oakqr+6fFKOkDjC40f8
X-Gm-Gg: ATEYQzwg9J2YZ0kNUnZ6q4CSlrBDvgA3xG4fGta8l88c9IE+NwAUzEWbnIqOZ0icO+N
	M/iDQHVLnMTl1iNg6D/aXl0WUONuyrd4v6P7tA93++8FeUBMXekoEI2pRqHP8F9tbIvw3Pu/ErZ
	0/RhfjNMCQOteVRRrE55sxCCKKcW07ke54RNz2vKDbYzVIncVh7GiczAeFmPzj2LFN4Vfjfo3U1
	y2fRN9wWmGc6+nbEJ/tjSS7TrA3NGmchYkiFFSF01051+Vv99M0JacY1izsup+zxskl0AKm7kKe
	bmNwXpVLHlByzrT3OnKb55CK4pZznPAz8teaiSAnfHLs1QumqGOU7W144NkuOxFdw704rdyhBU8
	rSuge26LhZCxN5FY6L9W0jMXXlMJ8onqvQVDqgdMymKBWQlaJCmp3JRvGRwH/ZmK8Ab2M8R3W5T
	LG/SbV6w16LkMy0/Ygo7NM6XwgQF3gGt0hAfQ0kPLKBYuVqzHF
X-Received: by 2002:a17:90a:e7d2:b0:359:fa1e:2bc3 with SMTP id 98e67ed59e1d1-35a011a566fmr5084635a91.6.1773290337293;
        Wed, 11 Mar 2026 21:38:57 -0700 (PDT)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a030490b9sm3793460a91.17.2026.03.11.21.38.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 21:38:56 -0700 (PDT)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	marex@denx.de,
	valentin@compulab.co.il,
	philippe.schenker@toradex.com,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v2 2/2] drm: bridge: ti-sn65dsi83: Add support for dual-link LVDS video mode
Date: Thu, 12 Mar 2026 10:07:43 +0530
Message-Id: <20260312043743.261475-3-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260312043743.261475-1-tessolveupstream@gmail.com>
References: <20260312043743.261475-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,denx.de,compulab.co.il,toradex.com,lists.freedesktop.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-274420-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AD6E026D28E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Some LVDS panels operating in dual-link mode require adjusted
horizontal timing parameters when programmed into the SN65DSI84
bridge. According to TI documentation, horizontal timing values
must be divided by two when operating in dual-link mode. Without
this adjustment, the panel may fail to display or produce corrupted
output.

Add support for an optional DT property "ti,dual-link-video-mode"
to enable configuration required for dual-link LVDS operation.
These settings ensure correct LVDS output for panels that require
this mode of operation.

Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 drivers/gpu/drm/bridge/ti-sn65dsi83.c | 52 ++++++++++++++++++++++++---
 1 file changed, 48 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
index f6736b4457bb..9b7d35487bd8 100644
--- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
+++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
@@ -164,6 +164,7 @@ struct sn65dsi83 {
 	int				irq;
 	struct delayed_work		monitor_work;
 	struct work_struct		reset_work;
+	bool				dual_link_video_mode;
 };
 
 static const struct regmap_range sn65dsi83_readable_ranges[] = {
@@ -667,8 +668,43 @@ static void sn65dsi83_atomic_pre_enable(struct drm_bridge *bridge,
 		     mode->hsync_start - mode->hdisplay);
 	regmap_write(ctx->regmap, REG_VID_CHA_VERTICAL_FRONT_PORCH,
 		     mode->vsync_start - mode->vdisplay);
-	regmap_write(ctx->regmap, REG_VID_CHA_TEST_PATTERN, 0x00);
 
+	/*
+	 * In dual-link LVDS mode, the SN65DSI84 requires the horizontal
+	 * timing parameters to be adjusted before being programmed into
+	 * the device. According to TI documentation, the horizontal timing
+	 * values must be divided by two when operating in dual-link mode.
+	 * Without this adjustment, the connected panel may fail to light up
+	 * or display corrupted output.
+	 *
+	 * TI also provides recommended register settings for this mode,
+	 * which were derived using the TI DSI-Tuner tool. When the optional
+	 * DT property "ti,dual-link-video-mode" is present, apply these
+	 * configuration settings to ensure correct dual-link LVDS operation.
+	 */
+	if (ctx->dual_link_video_mode) {
+		regmap_write(ctx->regmap, REG_RC_LVDS_PLL, 0x05);
+		regmap_write(ctx->regmap, REG_RC_PLL_EN, 0x00);
+		regmap_write(ctx->regmap, REG_DSI_CLK, 0x53);
+		regmap_write(ctx->regmap, REG_LVDS_FMT, 0x6f);
+		regmap_write(ctx->regmap, REG_LVDS_VCOM, 0x00);
+		regmap_write(ctx->regmap,
+			     REG_VID_CHA_VERTICAL_DISPLAY_SIZE_LOW, 0x00);
+		regmap_write(ctx->regmap,
+			     REG_VID_CHA_VERTICAL_DISPLAY_SIZE_HIGH, 0x00);
+		regmap_write(ctx->regmap,
+			     REG_VID_CHA_HSYNC_PULSE_WIDTH_LOW, 0x10);
+		regmap_write(ctx->regmap,
+			     REG_VID_CHA_HORIZONTAL_BACK_PORCH, 0x28);
+		regmap_write(ctx->regmap,
+			     REG_VID_CHA_VERTICAL_BACK_PORCH, 0x00);
+		regmap_write(ctx->regmap,
+			     REG_VID_CHA_HORIZONTAL_FRONT_PORCH, 0x00);
+		regmap_write(ctx->regmap,
+			     REG_VID_CHA_VERTICAL_FRONT_PORCH, 0x00);
+	}
+
+	regmap_write(ctx->regmap, REG_VID_CHA_TEST_PATTERN, 0x00);
 	/* Enable PLL */
 	regmap_write(ctx->regmap, REG_RC_PLL_EN, REG_RC_PLL_EN_PLL_EN);
 	usleep_range(3000, 4000);
@@ -965,9 +1001,15 @@ static int sn65dsi83_host_attach(struct sn65dsi83 *ctx)
 
 	dsi->lanes = dsi_lanes;
 	dsi->format = MIPI_DSI_FMT_RGB888;
-	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
-			  MIPI_DSI_MODE_VIDEO_NO_HFP | MIPI_DSI_MODE_VIDEO_NO_HBP |
-			  MIPI_DSI_MODE_VIDEO_NO_HSA | MIPI_DSI_MODE_NO_EOT_PACKET;
+	if (ctx->dual_link_video_mode)
+		dsi->mode_flags = MIPI_DSI_MODE_VIDEO;
+	else
+		dsi->mode_flags = MIPI_DSI_MODE_VIDEO |
+				  MIPI_DSI_MODE_VIDEO_BURST |
+				  MIPI_DSI_MODE_VIDEO_NO_HFP |
+				  MIPI_DSI_MODE_VIDEO_NO_HBP |
+				  MIPI_DSI_MODE_VIDEO_NO_HSA |
+				  MIPI_DSI_MODE_NO_EOT_PACKET;
 
 	ret = devm_mipi_dsi_attach(dev, dsi);
 	if (ret < 0) {
@@ -1021,6 +1063,8 @@ static int sn65dsi83_probe(struct i2c_client *client)
 	if (ret)
 		return ret;
 
+	ctx->dual_link_video_mode =
+		of_property_read_bool(dev->of_node, "ti,dual-link-video-mode");
 	ctx->regmap = devm_regmap_init_i2c(client, &sn65dsi83_regmap_config);
 	if (IS_ERR(ctx->regmap))
 		return dev_err_probe(dev, PTR_ERR(ctx->regmap), "failed to get regmap\n");
-- 
2.34.1


