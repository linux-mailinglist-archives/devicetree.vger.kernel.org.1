Return-Path: <devicetree+bounces-271715-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELZOMSDhqWnDGwEAu9opvQ
	(envelope-from <devicetree+bounces-271715-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 21:01:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED18217EA3
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 21:01:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EC7433097DF0
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 19:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 497C03ECBEB;
	Thu,  5 Mar 2026 19:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GJBDXs2A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736BF3EBF14
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 19:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772740655; cv=none; b=c8LK28TBCrGUJ6p4gPoSwBv0zs+sJ70UeSRjV9RlypcgJOR2Wnl9V7WGLg2J7+lkP6/pefNh65ruOpc095nzwtdRmt2mlu4hVzKU0NlYV6vzpCWyFLPt9Bo9mTBu0wvKXnnZFlsWPTVFK+RQFiyZb9TRBLGlwFMTIxRnMDrqcV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772740655; c=relaxed/simple;
	bh=pePllyxby7JhdwUh5/jJkZZqOJyp92crYJpaKce4nt4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ol3FTWJUFleXfws2a7M1iMaEAF5DiUVf6rl2eG++btf2ZvH17qoWAAryJ9Jhn4f64AmDUoRIt+10KIkQ/YqEjjVPGL2AhiRDZ+deCRAJiU6bTtaR9qY2mBICFu+iTj8HRU7ODsiqCQjvvvx0wQi2Qy0R6dWDkpIo8hY2wEdoLnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GJBDXs2A; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-439cd6b09f8so1066911f8f.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 11:57:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772740647; x=1773345447; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8g4jD+lM4KD2+vvthvQvaKxkXysJFhQZ5m0wfrvK+Hg=;
        b=GJBDXs2A1JiSwPz0sqykvW4HBWcugEoqk1an3jO+nM+YjkFBFzl6MolWQug8ZpUAaS
         C4F8QZoIaw66re5qjb6g4uziPfp8pE0Y0+Q+4HU+Wmh7evK9U6atC0YLM0OdeBvf1I+Q
         YBNpNVoYBI7oaha11s81hM/w9rtrOPhP5XcFbk4b4amfUCQ6J4xkt6cJAL+WHQ14e/Tt
         K1Dryec85RqFwa1reobW+77M9bLyjXZD/fF6SB2YfyyyMP2k5N7CGmZhMOaxkv/D0mnP
         s9iXjuhkJEnsYRv4yckURBi8mXxfO3VyaPVMsNUe+U+CTUaeWU9iPb4jMdPEz3hYmtci
         d+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772740647; x=1773345447;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8g4jD+lM4KD2+vvthvQvaKxkXysJFhQZ5m0wfrvK+Hg=;
        b=mxlmDaBuXnbwrZltiJlqQnv3/8KuyVlwCx7aokHluRd7j+K2mPNAzMCGqNp4d3FgpW
         8Vd26yKB3CXLSDi3+3VImj3wQEDErEGj1W1dCU77zRiefb1wiRgvRzNIonka3CnR6oOQ
         sftoAV7P0XpS8wTB2loCtJAzRNxVktgZrZNF/Uyo2/nJIWHAvX2HFvFdY5zuWsTxEe1T
         RR8qHy/GihpdXyAcYUDgkwnliLII2DQDioZFIg/UEIDC/xhpVE0d7PkC7s7Nn1GxC11U
         GJBjXFVRkx1VBbFrNQl+Ov+XIb2DYeFjRqIb5cCSSigpFZZliXy/i09X9eABaJ369RM2
         msUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLmpj4m1y6zvzQ/OXhuUCR5aWBY4NK93DFKa9n1Yo2bXgzPwN4ubRLLmhFVQ1t/CEE/z43ukGkMZmB@vger.kernel.org
X-Gm-Message-State: AOJu0YzSqLxDV19ZJiZmKL7b2TWE6RRD+aervLH/bPT8PltImIzVX2aw
	6929pIprdK/IrtI8mffiwAZ7PBgkNB8xGuI3QaHVtdnA2Q+oCKtzCDLC
X-Gm-Gg: ATEYQzxvrWVtY96fTbha5/BqrveHiFylHPZkHS9eZoL/Gx5UbZmWrP0Z4AYjI1A3kTi
	JvxwS/vHGp2puQH/30ckEEQZj1TRdzQgvqT08pjziSyzzVokgKFO/MukqusHVdPXJpJSuZ7M6Qu
	DhAq+wvE9x7q1hAbzgdi/CmKmrhYKRYzYtHu8SrMC5mJHcsxg9TmBDARlsUOhensZswVPo9XY57
	wibiDGlqeGxtyL7nVs3SjYTfCTIyJVcY8MmD+cO4La+VPgeX3CGw+O8WHq0aC9OZdwigSaEEEqR
	q5NY/YM67FQJTeb2MdtPdZr0HJv3YyR4n+DWt0w37OxKIMJVLisoCVFD3ldJ9rdc0gazr2tqQrp
	LPN/JqyiGcyk+5mYh8C5bXoGU5BpRquAI/OXGj+N+V1AsTCtTpmoSYU8nj9vuSus/Gm+QNOubgz
	VMGd3e2wKvsIo2+2S4W/7C+60hRDGzuA==
X-Received: by 2002:a05:6000:3112:b0:439:d750:42f6 with SMTP id ffacd0b85a97d-439d7504334mr1415838f8f.24.1772740646285;
        Thu, 05 Mar 2026 11:57:26 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439bb686a32sm26974297f8f.13.2026.03.05.11.57.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 11:57:25 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
	Marek Vasut <marex@nabladev.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	"Kael D'Alcamo" <dev@kael-k.io>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] drm/panel: jd9365da: Support for Zhunyi Z40046 panels
Date: Thu,  5 Mar 2026 19:56:31 +0000
Message-ID: <20260305195650.119196-3-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260305195650.119196-1-l.scorcia@gmail.com>
References: <20260305195650.119196-1-l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 5ED18217EA3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[gmail.com,edgeble.ai,linaro.org,ffwll.ch,linux.intel.com,kernel.org,suse.de,oss.qualcomm.com,nabladev.com,bp.renesas.com,kael-k.io,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271715-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

The Zhunyi Z40046 is a 480x800 24-bit WVGA DSI panel based on the
Fitipower JD9161Z DSI controller found in the Xiaomi Mi Smart Clock
x04g, apparently in two different variants.

The Fitipower JD9161Z LCD driver IC is very similar to the Jadard
JD9365DA-H3, it just uses different initialization sequences.

The two initialization sequences for the panel have been extracted from
Android original firmware for the Xiaomi Smart Clock.

Variant v1 tested on device. Variant v2 not tested.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 308 ++++++++++++++++++
 1 file changed, 308 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
index 5386a06fcd08..9bcf846684e4 100644
--- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
+++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
@@ -46,11 +46,22 @@ struct jadard {
 	struct gpio_desc *reset;
 };
 
+#define JD9161Z_DCS_SWITCH_PAGE		0xde
+
+#define jd9161z_switch_page(dsi_ctx, page) \
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, JD9161Z_DCS_SWITCH_PAGE, (page))
+
 #define JD9365DA_DCS_SWITCH_PAGE	0xe0
 
 #define jd9365da_switch_page(dsi_ctx, page) \
 	mipi_dsi_dcs_write_seq_multi(dsi_ctx, JD9365DA_DCS_SWITCH_PAGE, (page))
 
+static void jd9161z_enable_standard_cmds(struct mipi_dsi_multi_context *dsi_ctx)
+{
+	// Enable access to DCS and internal commands
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xdf, 0x91, 0x62, 0xf3);
+}
+
 static void jadard_enable_standard_cmds(struct mipi_dsi_multi_context *dsi_ctx)
 {
 	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe1, 0x93);
@@ -1366,6 +1377,295 @@ static const struct jadard_panel_desc anbernic_rgds_display_desc = {
 		      MIPI_DSI_CLOCK_NON_CONTINUOUS | MIPI_DSI_MODE_LPM,
 };
 
+// Sequence retrieved from Xiaomi Mi Smart Clock x04g kernel in boot.bin
+static int zhunyi_z40046_init_cmds_v1(struct jadard *jadard_data)
+{
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard_data->dsi };
+
+	// Init configuration sequence
+	jd9161z_switch_page(&dsi_ctx, 0x00);
+	jd9161z_enable_standard_cmds(&dsi_ctx);
+
+	// GAMMA_SET (pos/neg voltage of gamma power)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb7,
+		0x10, 0x04, 0x86, 0x00, 0x1b, 0x35);
+
+	// DCDC_SEL (power mode and charge pump settings)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xbb,
+		0x69, 0x0b, 0x30, 0xb2, 0xb2, 0xc0, 0xe0, 0x20,
+		0xf0, 0x50, 0x60,
+	);
+
+	// VDDD_CTRL (control logic voltage setting)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xbc,
+		0x73, 0x14);
+
+	// SETRGBCYC (display waveform cycle of RGB mode)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc3,
+		0x74, 0x04, 0x08, 0x0e, 0x00, 0x0e, 0x0c, 0x08,
+		0x0e, 0x00, 0x0e, 0x82, 0x0a, 0x82,
+	);
+
+	// SET_TCON (timing control setting)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc4,
+		0x10, 0x90, 0x92, 0x0e, 0x0b, 0x04);
+
+	// SET_R_GAMMA (set red gamma output voltage)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc8,
+		0x7e, 0x76, 0x68, 0x57, 0x4c, 0x39, 0x3a, 0x23,
+		0x3d, 0x3d, 0x40, 0x61, 0x54, 0x64, 0x5d, 0x62,
+		0x5a, 0x50, 0x32, 0x7e, 0x76, 0x68, 0x57, 0x4c,
+		0x39, 0x3a, 0x23, 0x3d, 0x3d, 0x40, 0x61, 0x54,
+		0x64, 0x5d, 0x62, 0x5a, 0x50, 0x32,
+	);
+
+	// SET_GIP_L (CGOUTx_L signal mapping, gs_panel = 0)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd0,
+		0x1f, 0x0a, 0x08, 0x06, 0x04, 0x1f, 0x00, 0x1f,
+		0x17, 0x1f, 0x18, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f,
+	);
+
+	// SET_GIP_R (CGOUTx_R signal mapping, gs_panel = 0)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd1,
+		0x1f, 0x0b, 0x09, 0x07, 0x05, 0x1f, 0x01, 0x1f,
+		0x17, 0x1f, 0x18, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f,
+	);
+
+	// SETGIP1 (GIP signal timing 1)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd4,
+		0x10, 0x00, 0x00, 0x03, 0x60, 0x05, 0x10, 0x00,
+		0x02, 0x06, 0x68, 0x00, 0x6c, 0x00, 0x00, 0x00,
+		0x00, 0x06, 0x78, 0x71, 0x07, 0x06, 0x68, 0x0c,
+		0x25, 0x00, 0x63, 0x03, 0x00,
+	);
+
+	// SETGIP2 (GIP signal timing 1)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd5,
+		0x20, 0x10, 0x8c, 0x18, 0x00, 0x80, 0x00, 0x08,
+		0x00, 0x00, 0x06, 0x60, 0x00, 0x81, 0x70, 0x02,
+		0x30, 0x01, 0x00, 0x00, 0xc0, 0x00, 0x00, 0x00,
+		0x03, 0x60, 0x83, 0x90, 0x00, 0x00, 0x03, 0x4f,
+		0x03, 0x00, 0x1f, 0x3f, 0x00, 0x00, 0x00, 0x00,
+	);
+
+	jd9161z_switch_page(&dsi_ctx, 0x04);
+
+	// ?
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb0,
+		0x24, 0x01);
+
+	jd9161z_switch_page(&dsi_ctx, 0x02);
+
+	// SETRGBCYC2 (RGB IF source switch control timing)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc1,
+		0x71);
+
+	// ?
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc2,
+		0x00, 0x18, 0x08, 0x1e, 0x25, 0x7c, 0xc7,
+	);
+
+	jd9161z_switch_page(&dsi_ctx, 0x00);
+
+	mipi_dsi_dcs_set_tear_on_multi(&dsi_ctx, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
+
+	mipi_dsi_msleep(&dsi_ctx, 120);
+
+	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
+
+	mipi_dsi_msleep(&dsi_ctx, 120);
+
+	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
+
+	mipi_dsi_msleep(&dsi_ctx, 5);
+
+	return dsi_ctx.accum_err;
+};
+
+static const struct jadard_panel_desc zhunyi_z40046v1_desc = {
+	.mode = {
+		.clock		= 26700,
+
+		.hdisplay	= 480,
+		.hsync_start	= 480 + 20,
+		.hsync_end	= 480 + 20 + 20,
+		.htotal		= 480 + 20 + 20 + 20,
+
+		.vdisplay	= 800,
+		.vsync_start	= 800 + 12,
+		.vsync_end	= 800 + 12 + 4,
+		.vtotal		= 800 + 12 + 4 + 8,
+
+		.width_mm	= 52,
+		.height_mm	= 86,
+		.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+		.type		= DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+	},
+	.lanes = 2,
+	.format = MIPI_DSI_FMT_RGB888,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
+		MIPI_DSI_MODE_LPM,
+	.lp11_before_reset = true,
+	.reset_before_power_off_vcioo = true,
+	.vcioo_to_lp11_delay_ms = 5,
+	.lp11_to_reset_delay_ms = 10,
+	.backlight_off_to_display_off_delay_ms = 100,
+	.display_off_to_enter_sleep_delay_ms = 50,
+	.enter_sleep_to_reset_down_delay_ms = 100,
+	.init = zhunyi_z40046_init_cmds_v1,
+};
+
+// Sequence retrieved from Xiaomi Mi Smart Clock x04g kernel in boot.bin
+static int zhunyi_z40046_init_cmds_v2(struct jadard *jadard_data)
+{
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard_data->dsi };
+
+	// Init configuration sequence
+	jd9161z_switch_page(&dsi_ctx, 0x00);
+	jd9161z_enable_standard_cmds(&dsi_ctx);
+
+	// GAMMA_SET (pos/neg voltage of gamma power)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb7,
+		0x10, 0x08, 0x42, 0x00, 0x56, 0x42,
+	);
+
+	// DCDC_SEL (power mode and charge pump settings)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xbb,
+		0x52, 0x0f, 0xb2, 0xb2, 0xb2, 0xc0, 0xd0, 0x50,
+		0xf0, 0x40, 0x50,
+	);
+
+	// VDDD_CTRL (control logic voltage setting)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xbc,
+		0x73, 0x14);
+
+	// SETRGBCYC (display waveform cycle of RGB mode)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc3,
+		0x04, 0x07, 0x0b, 0x17, 0x00, 0x17, 0x04, 0x17,
+		0x17, 0x00, 0x17, 0x82, 0x0b, 0x82,
+	);
+
+	// SET_TCON (timing control setting)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc4,
+		0x10, 0x90, 0x92, 0x0e, 0x06,
+	);
+
+	// SET_R_GAMMA (set red gamma output voltage)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc8,
+		0x7f, 0x78, 0x69, 0x56, 0x47, 0x33, 0x34, 0x1e,
+		0x3b, 0x3e, 0x43, 0x67, 0x5d, 0x6f, 0x68, 0x70,
+		0x6a, 0x61, 0x3c, 0x7f, 0x78, 0x69, 0x56, 0x47,
+		0x33, 0x34, 0x1e, 0x3b, 0x3e, 0x43, 0x67, 0x5d,
+		0x6f, 0x68, 0x70, 0x6a, 0x61, 0x3c,
+	);
+
+	// SET_GIP_L (CGOUTx_L signal mapping, gs_panel = 0)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd0,
+		0x1f, 0x1e, 0x07, 0x05, 0x01, 0x1f, 0x1f, 0x1f,
+		0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f,
+	);
+
+	// SET_GIP_R (CGOUTx_R signal mapping, gs_panel = 0)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd1,
+		0x1f, 0x1e, 0x06, 0x04, 0x00, 0x1f, 0x1f, 0x1f,
+		0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f,
+	);
+
+	// SET_GIP_L_GS (CGOUTx_L signal mapping, gs_panel = 1)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd2,
+		0x1f, 0x1f, 0x04, 0x06, 0x00, 0x1e, 0x1f, 0x1f,
+		0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f,
+	);
+
+	// SET_GIP_R_GS (CGOUTx_R signal mapping, gs_panel = 1)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd3,
+		0x1f, 0x1f, 0x05, 0x07, 0x01, 0x1e, 0x1f, 0x1f,
+		0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f,
+	);
+
+	// SETGIP1 (GIP signal timing 1)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd4,
+		0x30, 0x00, 0x00, 0x00, 0x00, 0x01, 0x10, 0x00,
+		0x03, 0x03, 0x68, 0x03, 0x40, 0x05, 0x00, 0x00,
+		0x00, 0xcc, 0x2d, 0x31, 0x02, 0x03, 0x68, 0x0c,
+		0x25, 0x00, 0x63, 0x03, 0x00,
+	);
+
+	// SETGIP2 (GIP signal timing 1)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd5,
+		0x30, 0x08, 0x80, 0x18, 0x00, 0x00, 0x00, 0x18,
+		0x00, 0x00, 0x06, 0x60, 0x00, 0x07, 0x50, 0x00,
+		0x33, 0xc0, 0x00, 0x60, 0xc0, 0x00, 0x00, 0x00,
+		0x03, 0x60, 0x06, 0x10, 0x00, 0x00, 0x0f, 0x4f,
+		0x00, 0x10, 0x1f, 0x3f,
+	);
+
+	jd9161z_switch_page(&dsi_ctx, 0x02);
+
+	// SETRGBCYC2 (RGB IF source switch control timing)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc1,
+		0x60);
+
+	// ?
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc2,
+		0x00, 0x18, 0x08, 0x1e, 0x25, 0x7c, 0xc7,
+	);
+
+	jd9161z_switch_page(&dsi_ctx, 0x00);
+
+	// GAS_CTRL (GAS function control)
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xbe,
+		0x4e,
+	);
+
+	mipi_dsi_dcs_set_tear_on_multi(&dsi_ctx, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
+
+	mipi_dsi_msleep(&dsi_ctx, 120);
+
+	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
+
+	mipi_dsi_msleep(&dsi_ctx, 120);
+
+	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
+
+	mipi_dsi_msleep(&dsi_ctx, 5);
+
+	return dsi_ctx.accum_err;
+};
+
+static const struct jadard_panel_desc zhunyi_z40046v2_desc = {
+	.mode = {
+		.clock		= 26700,
+
+		.hdisplay	= 480,
+		.hsync_start	= 480 + 20,
+		.hsync_end	= 480 + 20 + 20,
+		.htotal		= 480 + 20 + 20 + 20,
+
+		.vdisplay	= 800,
+		.vsync_start	= 800 + 12,
+		.vsync_end	= 800 + 12 + 4,
+		.vtotal		= 800 + 12 + 4 + 8,
+
+		.width_mm	= 52,
+		.height_mm	= 86,
+		.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+		.type		= DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+	},
+	.lanes = 2,
+	.format = MIPI_DSI_FMT_RGB888,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
+		MIPI_DSI_MODE_LPM,
+	.lp11_before_reset = true,
+	.reset_before_power_off_vcioo = true,
+	.vcioo_to_lp11_delay_ms = 5,
+	.lp11_to_reset_delay_ms = 10,
+	.backlight_off_to_display_off_delay_ms = 100,
+	.display_off_to_enter_sleep_delay_ms = 50,
+	.enter_sleep_to_reset_down_delay_ms = 100,
+	.init = zhunyi_z40046_init_cmds_v2,
+};
+
 static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
 {
 	struct device *dev = &dsi->dev;
@@ -1463,6 +1763,14 @@ static const struct of_device_id jadard_of_match[] = {
 		.compatible = "radxa,display-8hd-ad002",
 		.data = &radxa_display_8hd_ad002_desc
 	},
+	{
+		.compatible = "zhunyi,z40046v1",
+		.data = &zhunyi_z40046v1_desc
+	},
+	{
+		.compatible = "zhunyi,z40046v2",
+		.data = &zhunyi_z40046v2_desc
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, jadard_of_match);
-- 
2.43.0


