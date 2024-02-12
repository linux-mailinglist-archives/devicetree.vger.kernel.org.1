Return-Path: <devicetree+bounces-40984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9660C851D4A
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:50:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D41C28272A
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6EFF46525;
	Mon, 12 Feb 2024 18:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fZf43U3v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7934645B
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 18:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707763801; cv=none; b=b1sjsW0MjBcNy4pL8pNcEcsrjS3Y9VhIivd6A0Zk++fYE8smdaBRXPnR0kcSES/IKLcy/lkGP18mpE2YBQRNDFw6xUY0ztR0fg1b9F2PMXFKty0XEO6hK3q3fbXIyMlMlAcH2QydqnAQ8BGtCG5xCMsyBgKVeuYaOYO90YuJo2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707763801; c=relaxed/simple;
	bh=srP1Ql0SfbsBE/W4QG8nQRKYG+c0jgAts9MI9++9JvQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mNnOdoM1USkopX6eo19H0nwScB6J/rkV2ZbkxRxOjF16YsBZxMSHbbJzzl7h4P9clWLyxT8T/qDir8OdisV0Wq/4ihuME3g/j4KXMyC7NY4zpPpQR3eI0+8bSuwheM+PYanU8cjurOvDw/gym69CP4Lit8sfVtEIYlQz1cylZSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fZf43U3v; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-59505514213so2147344eaf.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 10:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763799; x=1708368599; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jZFPsjehsGahfaDDXv6wayCfEx1VbKmklsIBWo0yYyU=;
        b=fZf43U3vz5OcosSDBwK2sWwKTf57q94Pemb0A3dty0cGP5YGnb/z8ZhEHy6uIRlMLZ
         HOfPFPi31OLAJcrhMW8kEVI0+zYFUDTpz3TFMImNG37flU113p+sIhbRrFcDWspvetkW
         e3r0syirtrFyYd8a9R++avPL30NxgM3wWFY3r4/ps760wAXTgH1hKKhux7l4sIeZcIAd
         DdqO/lfiK4rluSIMOTMrUEu+qW6zG4ZFCwCfa0FMXNxYYLXGCxzIeg6uovrNxC1kHD5Y
         3h+2vmAchgSqS9dtyFG0b6iMoo61wq6x05rvMfcB6RnrpL65r4j9kUSYPcqNon8AheK5
         kwDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763799; x=1708368599;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jZFPsjehsGahfaDDXv6wayCfEx1VbKmklsIBWo0yYyU=;
        b=OPiWU7yLWBTsIK/TEySo1X+gHrtTxzW0LP8kv72q6j0kh5bpVNMEgw2aQCo+Wd8Dyk
         HIQMwHr7W2lvZxM5doLoCvxQ9bdgDM/ISkdgD2PHXZgBy3HBwtIMFgqajKkupmz1+At5
         ldqqE9Jz7zINBESwBXLB5u/oa2uLRzhDNl7iZCJUdmWXptofe7cJOU9XR07AAV7+WhE4
         HZN8hQAkYw36we/vrs7SaYgYgLHMWYXUI5pt40rKu+vht+n8NAJwOfR8z0cfdqHC4XRD
         ePLuXRHM58OOFPuVJp1bxSRJJlzQUffDBUosLmcC+y5S7lDwfnne4wBQofAYeUbBRXpQ
         RG5g==
X-Gm-Message-State: AOJu0YxOp+ZSNg370E1eT+DCA8hGuvtDFcfQ9WvoFjVQeh5455Cw7aCV
	JC0TuDuwZLop5EaoxQZnbmsrYdqVMCkZAX6AWP8t33/E7KRvwaa+
X-Google-Smtp-Source: AGHT+IEjZ9O0me5zTfECpVnc2oS1pkECPbe/I+XKgyEsT9zWfV++kcEm/14iIibhX6edaB/F044vpQ==
X-Received: by 2002:a4a:d091:0:b0:59a:50fc:153 with SMTP id i17-20020a4ad091000000b0059a50fc0153mr162021oor.0.1707763799213;
        Mon, 12 Feb 2024 10:49:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU5YSNg5lkpy6/qPSoe2SPJUCYgqmNiULOaruPQ16MIpRzRwP1Y9KLgomxtYLLG3kb6J6iDWS7cswL7GI8ncPjgUKcnN/I84NxxX8mMuUvkmiyhj0TFwZlN/6PULc2rnZez5xkVNPmAzf6ottmp7yEIFzR/VZB+1fDL2Z/QydhNnqb6symmTvSQX2J+QcjXTrC3x7CqrOxLymqdUZnaln9Beb+PWYNjGcXAX+9l8m47UJnLsefTZntGRKNgdyrkBikxM+X4Fqo/YvE3NRsKjTiOCrgTVSasZ6obdSLcbwgmqysbvB5eGQiB8HjQBD43ieG0HExvf9B2t9PkYWvk2wZWcgK70EMlgWWZ18qOWQbVfhMb3R7AYpKGFk5A9uCJEVpjbwVSZQs4EHTRVqBPcBVIwfN4CG5I58qPaRZP65kU1WVGhUQZ8jj3GD++QzCJ3q9SuEtKZOYoeSDw6Pekw/bta2KDVv2Z0rDCQgYsokWz++H8bSRmWxRVkfSYmX8dS4W97/ast+Kxs/xtka9qtetuYrxA16TTgtm8qg5pBa/ZhxKyqiOsV2osrzuy
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:49:59 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/7] drm/panel: st7703: Add Powkiddy RGB10MAX3 Panel Support
Date: Mon, 12 Feb 2024 12:49:45 -0600
Message-Id: <20240212184950.52210-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Powkiddy RGB10MAX3 is a handheld device with a 5 inch 720x1280
display panel with a Sitronix ST7703 display controller. The panel
is installed rotated 270 degrees.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 91 +++++++++++++++++++
 1 file changed, 91 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
index b55bafd1a8be..939ba05c9b58 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
@@ -521,6 +521,96 @@ static const struct st7703_panel_desc rgb30panel_desc = {
 	.init_sequence = rgb30panel_init_sequence,
 };
 
+static int rgb10max3_panel_init_sequence(struct st7703 *ctx)
+{
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+
+	/* Init sequence extracted from Powkiddy RGB10MAX3 BSP kernel. */
+
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEXTC, 0xf1, 0x12, 0x83);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETAPID, 0x00, 0x00, 0x00, 0xda,
+			       0x80);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETDISP, 0xc8, 0x02, 0x30);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETRGBIF, 0x10, 0x10, 0x28,
+			       0x28, 0x03, 0xff, 0x00, 0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCYC, 0x80);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETBGP, 0x04, 0x04);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVCOM, 0x78, 0x78);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER_EXT, 0x25, 0x22, 0xf0,
+			       0x63);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETMIPI, 0x33, 0x81, 0x05, 0xf9,
+			       0x0e, 0x0e, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x44, 0x25, 0x00, 0x90, 0x0a, 0x00,
+			       0x00, 0x01, 0x4f, 0x01, 0x00, 0x00, 0x37);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVDC, 0x47);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_BF, 0x02, 0x11, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETSCR, 0x73, 0x73, 0x50, 0x50,
+			       0x00, 0x00, 0x12, 0x70, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER, 0x25, 0x00, 0x32,
+			       0x32, 0x77, 0xe1, 0xff, 0xff, 0xcc, 0xcc, 0x77,
+			       0x77);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETECO, 0x82, 0x00, 0xbf, 0xff,
+			       0x00, 0xff);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETIO, 0xb8, 0x00, 0x0a, 0x00,
+			       0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCABC, 0x10, 0x40, 0x1e,
+			       0x02);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPANEL, 0x0b);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGAMMA, 0x00, 0x04, 0x07,
+			       0x2a, 0x39, 0x3f, 0x36, 0x31, 0x06, 0x0b, 0x0e,
+			       0x12, 0x14, 0x12, 0x13, 0x0f, 0x17, 0x00, 0x04,
+			       0x07, 0x2a, 0x39, 0x3f, 0x36, 0x31, 0x06, 0x0b,
+			       0x0e, 0x12, 0x14, 0x12, 0x13, 0x0f, 0x17);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEQ, 0x03, 0x03, 0x03, 0x03,
+			       0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0xff, 0x80,
+			       0xc0, 0x10);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP1, 0xc8, 0x10, 0x08, 0x00,
+			       0x00, 0x41, 0xf8, 0x12, 0x31, 0x23, 0x37, 0x86,
+			       0x11, 0xc8, 0x37, 0x2a, 0x00, 0x00, 0x0c, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x0c, 0x00, 0x00, 0x00,
+			       0x88, 0x20, 0x46, 0x02, 0x88, 0x88, 0x88, 0x88,
+			       0x88, 0x88, 0xff, 0x88, 0x31, 0x57, 0x13, 0x88,
+			       0x88, 0x88, 0x88, 0x88, 0x88, 0xff, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP2, 0x00, 0x1a, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x8f, 0x13, 0x31, 0x75, 0x88, 0x88, 0x88, 0x88,
+			       0x88, 0x88, 0xf8, 0x8f, 0x02, 0x20, 0x64, 0x88,
+			       0x88, 0x88, 0x88, 0x88, 0x88, 0xf8, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_EF, 0xff, 0xff, 0x01);
+
+	return 0;
+}
+
+static const struct drm_display_mode rgb10max3_panel_mode = {
+	.hdisplay	= 720,
+	.hsync_start	= 720 + 40,
+	.hsync_end	= 720 + 40 + 10,
+	.htotal		= 720 + 40 + 10 + 40,
+	.vdisplay	= 1280,
+	.vsync_start	= 1280 + 16,
+	.vsync_end	= 1280 + 16 + 4,
+	.vtotal		= 1280 + 16 + 4 + 14,
+	.clock		= 63800,
+	.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+	.width_mm	= 62,
+	.height_mm	= 109,
+};
+
+static const struct st7703_panel_desc rgb10max3_panel_desc = {
+	.mode = &rgb10max3_panel_mode,
+	.lanes = 4,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_NO_EOT_PACKET | MIPI_DSI_MODE_LPM,
+	.format = MIPI_DSI_FMT_RGB888,
+	.init_sequence = rgb10max3_panel_init_sequence,
+};
+
 static int st7703_enable(struct drm_panel *panel)
 {
 	struct st7703 *ctx = panel_to_st7703(panel);
@@ -784,6 +874,7 @@ static void st7703_remove(struct mipi_dsi_device *dsi)
 
 static const struct of_device_id st7703_of_match[] = {
 	{ .compatible = "anbernic,rg353v-panel-v2", .data = &rg353v2_desc },
+	{ .compatible = "powkiddy,rgb10max3-panel", .data = &rgb10max3_panel_desc },
 	{ .compatible = "powkiddy,rgb30-panel", .data = &rgb30panel_desc },
 	{ .compatible = "rocktech,jh057n00900", .data = &jh057n00900_panel_desc },
 	{ .compatible = "xingbangda,xbd599", .data = &xbd599_desc },
-- 
2.34.1


