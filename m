Return-Path: <devicetree+bounces-41911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 848CB855D69
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 10:07:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CDAC2827ED
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 09:07:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3BC61BF31;
	Thu, 15 Feb 2024 09:05:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB231BDCD;
	Thu, 15 Feb 2024 09:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707987927; cv=none; b=i2oK0QbiXxFqVi5co2Vd2RGqT5hyPbx8i8tDywf2LmdaAoI9IjT9VKI8fx+5D//pip2n0WsNwklwo9M8atUPMZdGOeDpOlYR624ULwq2mk5zEr9U9KM4WVLIhSMKb2vFAWYLR5S81LsVA7yMVX23+iGhTedsPJe/5dcuAIcPoAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707987927; c=relaxed/simple;
	bh=bYtuL0zq4IRle17HeXXccmuSAgR32YzpZuy/32aWRDE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UL2tgDfntS9nyHieFLSWb9X2Tyo/ousE1Yem12YyC0gBmkFY7E1CA0m047BLGalIA08Vmizb8TZHDcZduMjwr22YSgotcO8gbaspQcfmD/cb310ABwtgKtRFqd0s4P8rXYLGW5oA+D2uQfk/f4ewESdWBWlIRyGJebMyKggE2nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1raXgE-0002M4-Ua; Thu, 15 Feb 2024 10:05:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: neil.armstrong@linaro.org
Cc: quic_jesszhan@quicinc.com,
	sam@ravnborg.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	quentin.schulz@theobroma-systems.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 3/3] drm/panel: ltk500hd1829: add panel type for ltk101b4029w
Date: Thu, 15 Feb 2024 10:05:15 +0100
Message-Id: <20240215090515.3513817-4-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215090515.3513817-1-heiko@sntech.de>
References: <20240215090515.3513817-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The ltk101b4029w ist a 10.1 inch DSI panel and shares the same supplies
and startup timings with the existing ltk500hd1829.

So simply add it as a variant with its own init sequence and display-mode.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 .../drm/panel/panel-leadtek-ltk500hd1829.c    | 196 ++++++++++++++++++
 1 file changed, 196 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c b/drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c
index 42f4e2584af18..7bc538b7c6b7c 100644
--- a/drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c
+++ b/drivers/gpu/drm/panel/panel-leadtek-ltk500hd1829.c
@@ -43,6 +43,198 @@ struct ltk500hd1829 {
 	bool prepared;
 };
 
+static const struct ltk500hd1829_cmd ltk101b4029w_init[] = {
+	/* Page0 */
+	{ 0xE0, 0x00 },
+	/* PASSWORD */
+	{ 0xE1, 0x93 },
+	{ 0xE2, 0x65 },
+	{ 0xE3, 0xF8 },
+	{ 0x80, 0x03 }, /* 0X03:4-LANE; 0X02:3-LANE; 0X01:2-LANE */
+	/* Page1 */
+	{ 0xE0, 0x01 },
+	/* Set VCOM */
+	{ 0x00, 0x00 },
+	{ 0x01, 0x6F },
+	/* Set Gamma Power, VGMP,VGMN,VGSP,VGSN */
+	{ 0x17, 0x00 },
+	{ 0x18, 0xAF }, /* 4.3V */
+	{ 0x19, 0x01 }, /* 0.3V */
+	{ 0x1A, 0x00 },
+	{ 0x1B, 0xAF }, /* 4.3V */
+	{ 0x1C, 0x01 }, /* 0.3V */
+	/* Set Gate Power */
+	{ 0x1F, 0x3E }, /* VGH_R  = 15V */
+	{ 0x20, 0x28 }, /* VGL_R  = -12V */
+	{ 0x21, 0x28 }, /* VGL_R2 = -12V */
+	{ 0x22, 0x7E },
+	/* SETPANEL */
+	{ 0x35, 0x26 },
+	{ 0x37, 0x09 },
+	/* SET RGBCYC */
+	{ 0x38, 0x04 },
+	{ 0x39, 0x00 },
+	{ 0x3A, 0x01 },
+	{ 0x3C, 0x7C },
+	{ 0x3D, 0xFF },
+	{ 0x3E, 0xFF },
+	{ 0x3F, 0x7F },
+	/* Set TCON */
+	{ 0x40, 0x06 }, /* RSO = 800 RGB */
+	{ 0x41, 0xA0 }, /* LN = 640->1280 line */
+	{ 0x42, 0x81 },
+	{ 0x43, 0x08 }, /* VFP = 8 */
+	{ 0x44, 0x0B }, /* VBP = 12 */
+	{ 0x45, 0x28 }, /* HBP = 40 */
+	/* power voltage */
+	{ 0x55, 0x0F }, /* DCDCM = 0001, JD PWR_IC */
+	{ 0x57, 0x69 },
+	{ 0x59, 0x0A }, /* VCL = -2.9V */
+	{ 0x5A, 0x28 }, /* VGH = 15V */
+	{ 0x5B, 0x14 }, /* VGL = -11V */
+	/* Gamma */
+	{ 0x5D, 0x7C },
+	{ 0x5E, 0x65 },
+	{ 0x5F, 0x55 },
+	{ 0x60, 0x47 },
+	{ 0x61, 0x43 },
+	{ 0x62, 0x32 },
+	{ 0x63, 0x34 },
+	{ 0x64, 0x1C },
+	{ 0x65, 0x33 },
+	{ 0x66, 0x31 },
+	{ 0x67, 0x30 },
+	{ 0x68, 0x4E },
+	{ 0x69, 0x3C },
+	{ 0x6A, 0x44 },
+	{ 0x6B, 0x35 },
+	{ 0x6C, 0x31 },
+	{ 0x6D, 0x23 },
+	{ 0x6E, 0x11 },
+	{ 0x6F, 0x00 },
+	{ 0x70, 0x7C },
+	{ 0x71, 0x65 },
+	{ 0x72, 0x55 },
+	{ 0x73, 0x47 },
+	{ 0x74, 0x43 },
+	{ 0x75, 0x32 },
+	{ 0x76, 0x34 },
+	{ 0x77, 0x1C },
+	{ 0x78, 0x33 },
+	{ 0x79, 0x31 },
+	{ 0x7A, 0x30 },
+	{ 0x7B, 0x4E },
+	{ 0x7C, 0x3C },
+	{ 0x7D, 0x44 },
+	{ 0x7E, 0x35 },
+	{ 0x7F, 0x31 },
+	{ 0x80, 0x23 },
+	{ 0x81, 0x11 },
+	{ 0x82, 0x00 },
+	 /* Page2, for GIP */
+	{ 0xE0, 0x02 },
+	/* GIP_L Pin mapping */
+	{ 0x00, 0x1E },
+	{ 0x01, 0x1E },
+	{ 0x02, 0x41 },
+	{ 0x03, 0x41 },
+	{ 0x04, 0x43 },
+	{ 0x05, 0x43 },
+	{ 0x06, 0x1F },
+	{ 0x07, 0x1F },
+	{ 0x08, 0x35 },
+	{ 0x09, 0x1F },
+	{ 0x0A, 0x15 },
+	{ 0x0B, 0x15 },
+	{ 0x0C, 0x1F },
+	{ 0x0D, 0x47 },
+	{ 0x0E, 0x47 },
+	{ 0x0F, 0x45 },
+	{ 0x10, 0x45 },
+	{ 0x11, 0x4B },
+	{ 0x12, 0x4B },
+	{ 0x13, 0x49 },
+	{ 0x14, 0x49 },
+	{ 0x15, 0x1F },
+	/* GIP_R Pin mapping */
+	{ 0x16, 0x1E },
+	{ 0x17, 0x1E },
+	{ 0x18, 0x40 },
+	{ 0x19, 0x40 },
+	{ 0x1A, 0x42 },
+	{ 0x1B, 0x42 },
+	{ 0x1C, 0x1F },
+	{ 0x1D, 0x1F },
+	{ 0x1E, 0x35 },
+	{ 0x1F, 0x1F },
+	{ 0x20, 0x15 },
+	{ 0x21, 0x15 },
+	{ 0x22, 0x1f },
+	{ 0x23, 0x46 },
+	{ 0x24, 0x46 },
+	{ 0x25, 0x44 },
+	{ 0x26, 0x44 },
+	{ 0x27, 0x4A },
+	{ 0x28, 0x4A },
+	{ 0x29, 0x48 },
+	{ 0x2A, 0x48 },
+	{ 0x2B, 0x1F },
+	/* GIP Timing */
+	{ 0x58, 0x40 },
+	{ 0x5B, 0x30 },
+	{ 0x5C, 0x03 },
+	{ 0x5D, 0x30 },
+	{ 0x5E, 0x01 },
+	{ 0x5F, 0x02 },
+	{ 0x63, 0x14 },
+	{ 0x64, 0x6A },
+	{ 0x67, 0x73 },
+	{ 0x68, 0x05 },
+	{ 0x69, 0x14 },
+	{ 0x6A, 0x6A },
+	{ 0x6B, 0x08 },
+	{ 0x6C, 0x00 },
+	{ 0x6D, 0x00 },
+	{ 0x6E, 0x00 },
+	{ 0x6F, 0x88 },
+	{ 0x77, 0xDD },
+	{ 0x79, 0x0E },
+	{ 0x7A, 0x03 },
+	{ 0x7D, 0x14 },
+	{ 0x7E, 0x6A },
+	/* Page4 */
+	{ 0xE0, 0x04 },
+	{ 0x09, 0x11 },
+	{ 0x0E, 0x48 },
+	{ 0x2B, 0x2B },
+	{ 0x2D, 0x03 },
+	{ 0x2E, 0x44 },
+	/* Page0 */
+	{ 0xE0, 0x00 },
+	{ 0xE6, 0x02 },
+	{ 0xE7, 0x0C },
+};
+
+static const struct drm_display_mode ltk101b4029w_mode = {
+	.hdisplay	= 800,
+	.hsync_start	= 800 + 18,
+	.hsync_end	= 800 + 18 + 18,
+	.htotal		= 800 + 18 + 18 + 18,
+	.vdisplay	= 1280,
+	.vsync_start	= 1280 + 24,
+	.vsync_end	= 1280 + 24 + 4,
+	.vtotal		= 1280 + 24 + 4 + 8,
+	.clock		= 67330,
+	.width_mm	= 136,
+	.height_mm	= 218,
+};
+
+static const struct ltk500hd1829_desc ltk101b4029w_data = {
+	.mode = &ltk101b4029w_mode,
+	.init = ltk101b4029w_init,
+	.num_init = ARRAY_SIZE(ltk101b4029w_init),
+};
+
 /*
  * There is no description in the Reference Manual about these commands.
  * We received them from the vendor, so just use them as is.
@@ -510,6 +702,10 @@ static void ltk500hd1829_remove(struct mipi_dsi_device *dsi)
 }
 
 static const struct of_device_id ltk500hd1829_of_match[] = {
+	{
+		.compatible = "leadtek,ltk101b4029w",
+		.data = &ltk101b4029w_data,
+	},
 	{
 		.compatible = "leadtek,ltk500hd1829",
 		.data = &ltk500hd1829_data,
-- 
2.39.2


