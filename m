Return-Path: <devicetree+bounces-50986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A90F187DE30
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 16:58:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 06A15B211ED
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 15:58:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0093D1CAAD;
	Sun, 17 Mar 2024 15:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="Z9CuqPpu"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9F31CAAC
	for <devicetree@vger.kernel.org>; Sun, 17 Mar 2024 15:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710691075; cv=none; b=ndFsIS2kqM6JP21zDt6wTa2yUOkAKad4wLzz7yI3EIS9aYjp/iEWO3tdMwUkqYWx/1tiQDSPq7umV5c0kSTtsHnTUR/TiWk9b5/ldbeKnN+W/w6Olhs0dzCOar2VwhEddRrfSjkfiF0xNH74y9cIe824PGc2lCH4H0cx5mc6Rz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710691075; c=relaxed/simple;
	bh=HTy1msE032RVtYRYpLhsmxcDMN38C+1O/FmvyD+hUjk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mbjo0MGUuKOlOMMzru27iBjqUR+LR8B40MVCwSR69pfPQy+OTkm9CHbv3VSQJgUmRNqKLa3yp/Ft0CEIqNsXeHJ+q4r4sGeO7l4Y/wkm/yLB7rF5pY2LHTxboNbGdpJgtSTHiehSlwO8AC3pDD8IuIjwibLLkvO5u3gyw3c0zJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=Z9CuqPpu; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9BB5814B1;
	Sun, 17 Mar 2024 16:57:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1710691045;
	bh=HTy1msE032RVtYRYpLhsmxcDMN38C+1O/FmvyD+hUjk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Z9CuqPpux8ToIvf0FnKRrh3Ize2t5asffeTN5KKaOWJRGemioA8zV2H73ZER1Z1AJ
	 aed+FT6ks8iDskOqqWoP17J7p19sKus/FJwpM8d5covaR/Ldo9NAgPOYdABx4SKZHg
	 cvAC+9mVpqI2xC/okj3DqGKAch492TjZTzn657eI=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 2/2] drm/panel: ilitek-ili9881c: Add Startek KD050HDFIA020-C020A support
Date: Sun, 17 Mar 2024 17:57:46 +0200
Message-ID: <20240317155746.23034-3-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240317155746.23034-1-laurent.pinchart@ideasonboard.com>
References: <20240317155746.23034-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the Startek KD050HDFIA020-C020A panel.

The init table comes from the Compulab BSP ([1]).

[1] https://github.com/compulab-yokneam/meta-bsp-imx8mp/blob/ucm-imx8m-plus-r1.1/recipes-kernel/linux/compulab/imx8mp/0000-compulab-imx8m-plus-Add-boards-support.patch

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 222 ++++++++++++++++++
 1 file changed, 222 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
index 2ffe5f68a890..80b386f91320 100644
--- a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
+++ b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
@@ -455,6 +455,202 @@ static const struct ili9881c_instr k101_im2byl02_init[] = {
 	ILI9881C_COMMAND_INSTR(0xD3, 0x3F), /* VN0 */
 };
 
+static const struct ili9881c_instr kd050hdfia020_init[] = {
+	ILI9881C_SWITCH_PAGE_INSTR(3),
+	ILI9881C_COMMAND_INSTR(0x01, 0x00),
+	ILI9881C_COMMAND_INSTR(0x02, 0x00),
+	ILI9881C_COMMAND_INSTR(0x03, 0x72),
+	ILI9881C_COMMAND_INSTR(0x04, 0x00),
+	ILI9881C_COMMAND_INSTR(0x05, 0x00),
+	ILI9881C_COMMAND_INSTR(0x06, 0x09),
+	ILI9881C_COMMAND_INSTR(0x07, 0x00),
+	ILI9881C_COMMAND_INSTR(0x08, 0x00),
+	ILI9881C_COMMAND_INSTR(0x09, 0x01),
+	ILI9881C_COMMAND_INSTR(0x0a, 0x00),
+	ILI9881C_COMMAND_INSTR(0x0b, 0x00),
+	ILI9881C_COMMAND_INSTR(0x0c, 0x01),
+	ILI9881C_COMMAND_INSTR(0x0d, 0x00),
+	ILI9881C_COMMAND_INSTR(0x0e, 0x00),
+	ILI9881C_COMMAND_INSTR(0x0f, 0x00),
+	ILI9881C_COMMAND_INSTR(0x10, 0x00),
+	ILI9881C_COMMAND_INSTR(0x11, 0x00),
+	ILI9881C_COMMAND_INSTR(0x12, 0x00),
+	ILI9881C_COMMAND_INSTR(0x13, 0x00),
+	ILI9881C_COMMAND_INSTR(0x14, 0x00),
+	ILI9881C_COMMAND_INSTR(0x15, 0x00),
+	ILI9881C_COMMAND_INSTR(0x16, 0x00),
+	ILI9881C_COMMAND_INSTR(0x17, 0x00),
+	ILI9881C_COMMAND_INSTR(0x18, 0x00),
+	ILI9881C_COMMAND_INSTR(0x19, 0x00),
+	ILI9881C_COMMAND_INSTR(0x1a, 0x00),
+	ILI9881C_COMMAND_INSTR(0x1b, 0x00),
+	ILI9881C_COMMAND_INSTR(0x1c, 0x00),
+	ILI9881C_COMMAND_INSTR(0x1d, 0x00),
+	ILI9881C_COMMAND_INSTR(0x1e, 0x40),
+	ILI9881C_COMMAND_INSTR(0x1f, 0x80),
+	ILI9881C_COMMAND_INSTR(0x20, 0x05),
+	ILI9881C_COMMAND_INSTR(0x20, 0x05),
+	ILI9881C_COMMAND_INSTR(0x21, 0x02),
+	ILI9881C_COMMAND_INSTR(0x22, 0x00),
+	ILI9881C_COMMAND_INSTR(0x23, 0x00),
+	ILI9881C_COMMAND_INSTR(0x24, 0x00),
+	ILI9881C_COMMAND_INSTR(0x25, 0x00),
+	ILI9881C_COMMAND_INSTR(0x26, 0x00),
+	ILI9881C_COMMAND_INSTR(0x27, 0x00),
+	ILI9881C_COMMAND_INSTR(0x28, 0x33),
+	ILI9881C_COMMAND_INSTR(0x29, 0x02),
+	ILI9881C_COMMAND_INSTR(0x2a, 0x00),
+	ILI9881C_COMMAND_INSTR(0x2b, 0x00),
+	ILI9881C_COMMAND_INSTR(0x2c, 0x00),
+	ILI9881C_COMMAND_INSTR(0x2d, 0x00),
+	ILI9881C_COMMAND_INSTR(0x2e, 0x00),
+	ILI9881C_COMMAND_INSTR(0x2f, 0x00),
+	ILI9881C_COMMAND_INSTR(0x30, 0x00),
+	ILI9881C_COMMAND_INSTR(0x31, 0x00),
+	ILI9881C_COMMAND_INSTR(0x32, 0x00),
+	ILI9881C_COMMAND_INSTR(0x32, 0x00),
+	ILI9881C_COMMAND_INSTR(0x33, 0x00),
+	ILI9881C_COMMAND_INSTR(0x34, 0x04),
+	ILI9881C_COMMAND_INSTR(0x35, 0x00),
+	ILI9881C_COMMAND_INSTR(0x36, 0x00),
+	ILI9881C_COMMAND_INSTR(0x37, 0x00),
+	ILI9881C_COMMAND_INSTR(0x38, 0x3C),
+	ILI9881C_COMMAND_INSTR(0x39, 0x00),
+	ILI9881C_COMMAND_INSTR(0x3a, 0x40),
+	ILI9881C_COMMAND_INSTR(0x3b, 0x40),
+	ILI9881C_COMMAND_INSTR(0x3c, 0x00),
+	ILI9881C_COMMAND_INSTR(0x3d, 0x00),
+	ILI9881C_COMMAND_INSTR(0x3e, 0x00),
+	ILI9881C_COMMAND_INSTR(0x3f, 0x00),
+	ILI9881C_COMMAND_INSTR(0x40, 0x00),
+	ILI9881C_COMMAND_INSTR(0x41, 0x00),
+	ILI9881C_COMMAND_INSTR(0x42, 0x00),
+	ILI9881C_COMMAND_INSTR(0x43, 0x00),
+	ILI9881C_COMMAND_INSTR(0x44, 0x00),
+	ILI9881C_COMMAND_INSTR(0x50, 0x01),
+	ILI9881C_COMMAND_INSTR(0x51, 0x23),
+	ILI9881C_COMMAND_INSTR(0x52, 0x45),
+	ILI9881C_COMMAND_INSTR(0x53, 0x67),
+	ILI9881C_COMMAND_INSTR(0x54, 0x89),
+	ILI9881C_COMMAND_INSTR(0x55, 0xab),
+	ILI9881C_COMMAND_INSTR(0x56, 0x01),
+	ILI9881C_COMMAND_INSTR(0x57, 0x23),
+	ILI9881C_COMMAND_INSTR(0x58, 0x45),
+	ILI9881C_COMMAND_INSTR(0x59, 0x67),
+	ILI9881C_COMMAND_INSTR(0x5a, 0x89),
+	ILI9881C_COMMAND_INSTR(0x5b, 0xab),
+	ILI9881C_COMMAND_INSTR(0x5c, 0xcd),
+	ILI9881C_COMMAND_INSTR(0x5d, 0xef),
+	ILI9881C_COMMAND_INSTR(0x5e, 0x11),
+	ILI9881C_COMMAND_INSTR(0x5f, 0x01),
+	ILI9881C_COMMAND_INSTR(0x60, 0x00),
+	ILI9881C_COMMAND_INSTR(0x61, 0x15),
+	ILI9881C_COMMAND_INSTR(0x62, 0x14),
+	ILI9881C_COMMAND_INSTR(0x63, 0x0E),
+	ILI9881C_COMMAND_INSTR(0x64, 0x0F),
+	ILI9881C_COMMAND_INSTR(0x65, 0x0C),
+	ILI9881C_COMMAND_INSTR(0x66, 0x0D),
+	ILI9881C_COMMAND_INSTR(0x67, 0x06),
+	ILI9881C_COMMAND_INSTR(0x68, 0x02),
+	ILI9881C_COMMAND_INSTR(0x69, 0x07),
+	ILI9881C_COMMAND_INSTR(0x6a, 0x02),
+	ILI9881C_COMMAND_INSTR(0x6b, 0x02),
+	ILI9881C_COMMAND_INSTR(0x6c, 0x02),
+	ILI9881C_COMMAND_INSTR(0x6d, 0x02),
+	ILI9881C_COMMAND_INSTR(0x6e, 0x02),
+	ILI9881C_COMMAND_INSTR(0x6f, 0x02),
+	ILI9881C_COMMAND_INSTR(0x70, 0x02),
+	ILI9881C_COMMAND_INSTR(0x71, 0x02),
+	ILI9881C_COMMAND_INSTR(0x72, 0x02),
+	ILI9881C_COMMAND_INSTR(0x73, 0x02),
+	ILI9881C_COMMAND_INSTR(0x74, 0x02),
+	ILI9881C_COMMAND_INSTR(0x75, 0x01),
+	ILI9881C_COMMAND_INSTR(0x76, 0x00),
+	ILI9881C_COMMAND_INSTR(0x77, 0x14),
+	ILI9881C_COMMAND_INSTR(0x78, 0x15),
+	ILI9881C_COMMAND_INSTR(0x79, 0x0E),
+	ILI9881C_COMMAND_INSTR(0x7a, 0x0F),
+	ILI9881C_COMMAND_INSTR(0x7b, 0x0C),
+	ILI9881C_COMMAND_INSTR(0x7c, 0x0D),
+	ILI9881C_COMMAND_INSTR(0x7d, 0x06),
+	ILI9881C_COMMAND_INSTR(0x7e, 0x02),
+	ILI9881C_COMMAND_INSTR(0x7f, 0x07),
+	ILI9881C_COMMAND_INSTR(0x80, 0x02),
+	ILI9881C_COMMAND_INSTR(0x81, 0x02),
+	ILI9881C_COMMAND_INSTR(0x83, 0x02),
+	ILI9881C_COMMAND_INSTR(0x84, 0x02),
+	ILI9881C_COMMAND_INSTR(0x85, 0x02),
+	ILI9881C_COMMAND_INSTR(0x86, 0x02),
+	ILI9881C_COMMAND_INSTR(0x87, 0x02),
+	ILI9881C_COMMAND_INSTR(0x88, 0x02),
+	ILI9881C_COMMAND_INSTR(0x89, 0x02),
+	ILI9881C_COMMAND_INSTR(0x8A, 0x02),
+	ILI9881C_SWITCH_PAGE_INSTR(0x4),
+	ILI9881C_COMMAND_INSTR(0x6C, 0x15),
+	ILI9881C_COMMAND_INSTR(0x6E, 0x2A),
+	ILI9881C_COMMAND_INSTR(0x6F, 0x33),
+	ILI9881C_COMMAND_INSTR(0x3A, 0x94),
+	ILI9881C_COMMAND_INSTR(0x8D, 0x15),
+	ILI9881C_COMMAND_INSTR(0x87, 0xBA),
+	ILI9881C_COMMAND_INSTR(0x26, 0x76),
+	ILI9881C_COMMAND_INSTR(0xB2, 0xD1),
+	ILI9881C_COMMAND_INSTR(0xB5, 0x06),
+	ILI9881C_SWITCH_PAGE_INSTR(0x1),
+	ILI9881C_COMMAND_INSTR(0x22, 0x0A),
+	ILI9881C_COMMAND_INSTR(0x31, 0x00),
+	ILI9881C_COMMAND_INSTR(0x53, 0x90),
+	ILI9881C_COMMAND_INSTR(0x55, 0xA2),
+	ILI9881C_COMMAND_INSTR(0x50, 0xB7),
+	ILI9881C_COMMAND_INSTR(0x51, 0xB7),
+	ILI9881C_COMMAND_INSTR(0x60, 0x22),
+	ILI9881C_COMMAND_INSTR(0x61, 0x00),
+	ILI9881C_COMMAND_INSTR(0x62, 0x19),
+	ILI9881C_COMMAND_INSTR(0x63, 0x10),
+	ILI9881C_COMMAND_INSTR(0xA0, 0x08),
+	ILI9881C_COMMAND_INSTR(0xA1, 0x1A),
+	ILI9881C_COMMAND_INSTR(0xA2, 0x27),
+	ILI9881C_COMMAND_INSTR(0xA3, 0x15),
+	ILI9881C_COMMAND_INSTR(0xA4, 0x17),
+	ILI9881C_COMMAND_INSTR(0xA5, 0x2A),
+	ILI9881C_COMMAND_INSTR(0xA6, 0x1E),
+	ILI9881C_COMMAND_INSTR(0xA7, 0x1F),
+	ILI9881C_COMMAND_INSTR(0xA8, 0x8B),
+	ILI9881C_COMMAND_INSTR(0xA9, 0x1B),
+	ILI9881C_COMMAND_INSTR(0xAA, 0x27),
+	ILI9881C_COMMAND_INSTR(0xAB, 0x78),
+	ILI9881C_COMMAND_INSTR(0xAC, 0x18),
+	ILI9881C_COMMAND_INSTR(0xAD, 0x18),
+	ILI9881C_COMMAND_INSTR(0xAE, 0x4C),
+	ILI9881C_COMMAND_INSTR(0xAF, 0x21),
+	ILI9881C_COMMAND_INSTR(0xB0, 0x27),
+	ILI9881C_COMMAND_INSTR(0xB1, 0x54),
+	ILI9881C_COMMAND_INSTR(0xB2, 0x67),
+	ILI9881C_COMMAND_INSTR(0xB3, 0x39),
+	ILI9881C_COMMAND_INSTR(0xC0, 0x08),
+	ILI9881C_COMMAND_INSTR(0xC1, 0x1A),
+	ILI9881C_COMMAND_INSTR(0xC2, 0x27),
+	ILI9881C_COMMAND_INSTR(0xC3, 0x15),
+	ILI9881C_COMMAND_INSTR(0xC4, 0x17),
+	ILI9881C_COMMAND_INSTR(0xC5, 0x2A),
+	ILI9881C_COMMAND_INSTR(0xC6, 0x1E),
+	ILI9881C_COMMAND_INSTR(0xC7, 0x1F),
+	ILI9881C_COMMAND_INSTR(0xC8, 0x8B),
+	ILI9881C_COMMAND_INSTR(0xC9, 0x1B),
+	ILI9881C_COMMAND_INSTR(0xCA, 0x27),
+	ILI9881C_COMMAND_INSTR(0xCB, 0x78),
+	ILI9881C_COMMAND_INSTR(0xCC, 0x18),
+	ILI9881C_COMMAND_INSTR(0xCD, 0x18),
+	ILI9881C_COMMAND_INSTR(0xCE, 0x4C),
+	ILI9881C_COMMAND_INSTR(0xCF, 0x21),
+	ILI9881C_COMMAND_INSTR(0xD0, 0x27),
+	ILI9881C_COMMAND_INSTR(0xD1, 0x54),
+	ILI9881C_COMMAND_INSTR(0xD2, 0x67),
+	ILI9881C_COMMAND_INSTR(0xD3, 0x39),
+	ILI9881C_SWITCH_PAGE_INSTR(0),
+	ILI9881C_COMMAND_INSTR(0x35, 0x00),
+	ILI9881C_COMMAND_INSTR(0x3A, 0x7),
+};
+
 static const struct ili9881c_instr tl050hdv35_init[] = {
 	ILI9881C_SWITCH_PAGE_INSTR(3),
 	ILI9881C_COMMAND_INSTR(0x01, 0x00),
@@ -1177,6 +1373,23 @@ static const struct drm_display_mode k101_im2byl02_default_mode = {
 	.height_mm	= 217,
 };
 
+static const struct drm_display_mode kd050hdfia020_default_mode = {
+	.clock		= 62000,
+
+	.hdisplay	= 720,
+	.hsync_start	= 720 + 10,
+	.hsync_end	= 720 + 10 + 20,
+	.htotal		= 720 + 10 + 20 + 30,
+
+	.vdisplay	= 1280,
+	.vsync_start	= 1280 + 10,
+	.vsync_end	= 1280 + 10 + 10,
+	.vtotal		= 1280 + 10 + 10 + 20,
+
+	.width_mm	= 62,
+	.height_mm	= 110,
+};
+
 static const struct drm_display_mode tl050hdv35_default_mode = {
 	.clock		= 59400,
 
@@ -1345,6 +1558,14 @@ static const struct ili9881c_desc k101_im2byl02_desc = {
 	.mode_flags = MIPI_DSI_MODE_VIDEO_SYNC_PULSE,
 };
 
+static const struct ili9881c_desc kd050hdfia020_desc = {
+	.init = kd050hdfia020_init,
+	.init_length = ARRAY_SIZE(kd050hdfia020_init),
+	.mode = &kd050hdfia020_default_mode,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
+		      MIPI_DSI_MODE_LPM,
+};
+
 static const struct ili9881c_desc tl050hdv35_desc = {
 	.init = tl050hdv35_init,
 	.init_length = ARRAY_SIZE(tl050hdv35_init),
@@ -1372,6 +1593,7 @@ static const struct ili9881c_desc am8001280g_desc = {
 static const struct of_device_id ili9881c_of_match[] = {
 	{ .compatible = "bananapi,lhr050h41", .data = &lhr050h41_desc },
 	{ .compatible = "feixin,k101-im2byl02", .data = &k101_im2byl02_desc },
+	{ .compatible = "startek,kd050hdfia020", .data = &kd050hdfia020_desc },
 	{ .compatible = "tdo,tl050hdv35", .data = &tl050hdv35_desc },
 	{ .compatible = "wanchanglong,w552946aba", .data = &w552946aba_desc },
 	{ .compatible = "ampire,am8001280g", .data = &am8001280g_desc },
-- 
Regards,

Laurent Pinchart


