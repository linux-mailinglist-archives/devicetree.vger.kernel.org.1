Return-Path: <devicetree+bounces-82785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8B3925B74
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 13:09:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68ACD286016
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 11:08:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D79CE1849F4;
	Wed,  3 Jul 2024 10:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="W1YVIKEo";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="aCUFCV/n"
X-Original-To: devicetree@vger.kernel.org
Received: from fout6-smtp.messagingengine.com (fout6-smtp.messagingengine.com [103.168.172.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5F41849D9;
	Wed,  3 Jul 2024 10:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720004123; cv=none; b=YRsm1dZgiNiZo9W7m1qLRT42lPcOUO31fasYsUU1lPq+PkoOnBTjZZbYoJ9yKjpK1MgqElTkSwuwIrsFOsGPCR+2LP/3cDULTn2Byg8S+lqJixQ7JnSqUoiLWDsLxnbMfAg18iR/MuCipL0AHfwKkhLLkG57wJrmB6XnqoA3cuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720004123; c=relaxed/simple;
	bh=FNQkMB9Vy8gchDGrztGbLASF5a2DlElfuXaQgCiAvzk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KhHeOPJoU8mVppB7eCe1I8p+5kXEk2CggCTSFPbIuAlkzPPlqgk/VQhHi+FUOzx/ehfBWEzsq/RtZUnpfkCa8tIzzA93yfBerskZ7Td+Da964j0b8bd50JyJFBZaDoxP7X6wlaJbc135mpIDlWDbO+JMVnQle2mQ2GVdzpzyky8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=W1YVIKEo; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=aCUFCV/n; arc=none smtp.client-ip=103.168.172.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id 4D9EE138062D;
	Wed,  3 Jul 2024 06:55:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Wed, 03 Jul 2024 06:55:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1720004121; x=
	1720090521; bh=OUveO/ovvJwQ/MR8P+HDgqgZQMrOUUDSx8/rEWuViNI=; b=W
	1YVIKEohtrfJgc4r/ClstUOg6/hmDmOMf/beVL4v3sjclsKCOgZD5khRBwCyZC+l
	qN83V8Rfl4fQLmkjbDdthw3URo18Ap5eF49tRg0u916uJhniQiFITW89QK8/kXUn
	OqUSaU74ashYgFKX/A7oPugqo3oiKGYy7n1DoJ0rShAvOGo7QtHDo4wIZAMqy8oj
	sPXskrDZAUQ2xg42uphkSiXcA/mT6mYvG4HIKCW4yAwH+ULizJTU1RJ1a4gxxm45
	khrC+Pw2upYn5wqzOFt9BEha3gcZ7CVXyvNRa0nxdBYkh4vtp2A/m27mPI5U+aMa
	orZJkfXULOJn32aNm/juQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1720004121; x=
	1720090521; bh=OUveO/ovvJwQ/MR8P+HDgqgZQMrOUUDSx8/rEWuViNI=; b=a
	CUFCV/n/IGLTdGXx1K8A4G9Ei1RB/+LQBglWrN/QuxvW059pyAfdSiYxnR3BFi96
	m7EJspCJzi8pff6x9WMpRMGLJeoyuW6ZTm9+D9m2zL20YNZG6JrFkYBrZuzOJjPg
	Ew/o4x6OtineFw6snIe8eH8xcmxmnyZKHu+eXXO+rjgkk4meM5M0yRW5Zlwo0nSf
	agCZoPeUXsDGY2xzLXWh+CdujreShHsbYmvBaRgP9Ipyjvw/ZPRBI4XbM6fNnZLB
	2Ux3Fylxpe1/PGPjsovNwMjaMpYltDoNyixRYt1U5BAIujAle6VRSvBa118B3pNO
	wBD99lDwh9h9vLqlMY43g==
X-ME-Sender: <xms:GS6FZqrWLLmAFoZW7Tjxk-CwAyglTiKq8L7v42C2gub3Cp48vgCWkQ>
    <xme:GS6FZoo-orl69fV27sOGrmCcErkJE3H6BfZJ6Od85tsPtdDJNrgS9azPK_BOTC-gm
    0mI81DgpjhB-JhDpQ>
X-ME-Received: <xmr:GS6FZvP03BhhmiE9HyqAHMuWZgtaF7wWhL3J3W95BR6mZx6AXxbryWGHzeNUObMNktAziPBOgWBD6Rgb4ylkSrrl4o5MwAHFKEeIBlIhbWDGo9_Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudejgdefgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefthigrnhcu
    hggrlhhklhhinhcuoehrhigrnhesthgvshhtthhorghsthdrtghomheqnecuggftrfgrth
    htvghrnhepffehieffgedtgfffjeetveegfeekleeileekveeuteffteetudffveegieei
    heetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprh
    ihrghnsehtvghsthhtohgrshhtrdgtohhm
X-ME-Proxy: <xmx:GS6FZp4JDulD-yPXEdVvq3YLTCpln0U_qu9MRciytyEZEvi5G6_71g>
    <xmx:GS6FZp7QifUANv28CwUKwtGOxBzV2ydlwqlTkFHexdRjw9aljv8Eqw>
    <xmx:GS6FZphjqjNUSoSS6bZnPHelz-m8YSyU-IAFu6HDvezUQYzQep-yHQ>
    <xmx:GS6FZj6JxCdBuXobJRnRDefiZ0IEK1-E920XX7SKPpsMGANVDRrQYA>
    <xmx:GS6FZuqNtDtxJPSyefG_GP2PZX9vz1QGDTR7pFoQ_swhMdQk2v16A1yE>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 3 Jul 2024 06:55:15 -0400 (EDT)
From: Ryan Walklin <ryan@testtoast.com>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: Andre Przywara <andre.przywara@arm.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	John Watts <contact@jookia.org>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Ryan Walklin <ryan@testtoast.com>
Subject: [PATCH v2 01/23] drm: sun4i: de2/de3: Change CSC argument
Date: Wed,  3 Jul 2024 22:50:51 +1200
Message-ID: <20240703105454.41254-2-ryan@testtoast.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240703105454.41254-1-ryan@testtoast.com>
References: <20240703105454.41254-1-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jernej Skrabec <jernej.skrabec@gmail.com>

Currently, CSC module takes care only for converting YUV to RGB.
However, DE3 is more suited to work in YUV color space. Change CSC mode
argument to format type to be more neutral. New argument only tells
layer format type and doesn't imply output type.

This commit doesn't make any functional change.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
---
 drivers/gpu/drm/sun4i/sun8i_csc.c      | 22 +++++++++++-----------
 drivers/gpu/drm/sun4i/sun8i_csc.h      | 10 +++++-----
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 16 ++++++++--------
 3 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_csc.c b/drivers/gpu/drm/sun4i/sun8i_csc.c
index 58480d8e4f704..6ebd1c3aa3ab5 100644
--- a/drivers/gpu/drm/sun4i/sun8i_csc.c
+++ b/drivers/gpu/drm/sun4i/sun8i_csc.c
@@ -108,7 +108,7 @@ static const u32 yuv2rgb_de3[2][3][12] = {
 };
 
 static void sun8i_csc_set_coefficients(struct regmap *map, u32 base,
-				       enum sun8i_csc_mode mode,
+				       enum format_type fmt_type,
 				       enum drm_color_encoding encoding,
 				       enum drm_color_range range)
 {
@@ -118,12 +118,12 @@ static void sun8i_csc_set_coefficients(struct regmap *map, u32 base,
 
 	table = yuv2rgb[range][encoding];
 
-	switch (mode) {
-	case SUN8I_CSC_MODE_YUV2RGB:
+	switch (fmt_type) {
+	case FORMAT_TYPE_YUV:
 		base_reg = SUN8I_CSC_COEFF(base, 0);
 		regmap_bulk_write(map, base_reg, table, 12);
 		break;
-	case SUN8I_CSC_MODE_YVU2RGB:
+	case FORMAT_TYPE_YVU:
 		for (i = 0; i < 12; i++) {
 			if ((i & 3) == 1)
 				base_reg = SUN8I_CSC_COEFF(base, i + 1);
@@ -141,7 +141,7 @@ static void sun8i_csc_set_coefficients(struct regmap *map, u32 base,
 }
 
 static void sun8i_de3_ccsc_set_coefficients(struct regmap *map, int layer,
-					    enum sun8i_csc_mode mode,
+					    enum format_type fmt_type,
 					    enum drm_color_encoding encoding,
 					    enum drm_color_range range)
 {
@@ -151,12 +151,12 @@ static void sun8i_de3_ccsc_set_coefficients(struct regmap *map, int layer,
 
 	table = yuv2rgb_de3[range][encoding];
 
-	switch (mode) {
-	case SUN8I_CSC_MODE_YUV2RGB:
+	switch (fmt_type) {
+	case FORMAT_TYPE_YUV:
 		addr = SUN50I_MIXER_BLEND_CSC_COEFF(DE3_BLD_BASE, layer, 0);
 		regmap_bulk_write(map, addr, table, 12);
 		break;
-	case SUN8I_CSC_MODE_YVU2RGB:
+	case FORMAT_TYPE_YVU:
 		for (i = 0; i < 12; i++) {
 			if ((i & 3) == 1)
 				addr = SUN50I_MIXER_BLEND_CSC_COEFF(DE3_BLD_BASE,
@@ -206,7 +206,7 @@ static void sun8i_de3_ccsc_enable(struct regmap *map, int layer, bool enable)
 }
 
 void sun8i_csc_set_ccsc_coefficients(struct sun8i_mixer *mixer, int layer,
-				     enum sun8i_csc_mode mode,
+				     enum format_type fmt_type,
 				     enum drm_color_encoding encoding,
 				     enum drm_color_range range)
 {
@@ -214,14 +214,14 @@ void sun8i_csc_set_ccsc_coefficients(struct sun8i_mixer *mixer, int layer,
 
 	if (mixer->cfg->is_de3) {
 		sun8i_de3_ccsc_set_coefficients(mixer->engine.regs, layer,
-						mode, encoding, range);
+						fmt_type, encoding, range);
 		return;
 	}
 
 	base = ccsc_base[mixer->cfg->ccsc][layer];
 
 	sun8i_csc_set_coefficients(mixer->engine.regs, base,
-				   mode, encoding, range);
+				   fmt_type, encoding, range);
 }
 
 void sun8i_csc_enable_ccsc(struct sun8i_mixer *mixer, int layer, bool enable)
diff --git a/drivers/gpu/drm/sun4i/sun8i_csc.h b/drivers/gpu/drm/sun4i/sun8i_csc.h
index 828b86fd0cabb..7322770f39f03 100644
--- a/drivers/gpu/drm/sun4i/sun8i_csc.h
+++ b/drivers/gpu/drm/sun4i/sun8i_csc.h
@@ -22,14 +22,14 @@ struct sun8i_mixer;
 
 #define SUN8I_CSC_CTRL_EN		BIT(0)
 
-enum sun8i_csc_mode {
-	SUN8I_CSC_MODE_OFF,
-	SUN8I_CSC_MODE_YUV2RGB,
-	SUN8I_CSC_MODE_YVU2RGB,
+enum format_type {
+	FORMAT_TYPE_RGB,
+	FORMAT_TYPE_YUV,
+	FORMAT_TYPE_YVU,
 };
 
 void sun8i_csc_set_ccsc_coefficients(struct sun8i_mixer *mixer, int layer,
-				     enum sun8i_csc_mode mode,
+				     enum format_type fmt_type,
 				     enum drm_color_encoding encoding,
 				     enum drm_color_range range);
 void sun8i_csc_enable_ccsc(struct sun8i_mixer *mixer, int layer, bool enable);
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index f9c0a56d3a148..76e2d3ec0a78c 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -242,19 +242,19 @@ static int sun8i_vi_layer_update_coord(struct sun8i_mixer *mixer, int channel,
 	return 0;
 }
 
-static u32 sun8i_vi_layer_get_csc_mode(const struct drm_format_info *format)
+static u32 sun8i_vi_layer_get_format_type(const struct drm_format_info *format)
 {
 	if (!format->is_yuv)
-		return SUN8I_CSC_MODE_OFF;
+		return FORMAT_TYPE_RGB;
 
 	switch (format->format) {
 	case DRM_FORMAT_YVU411:
 	case DRM_FORMAT_YVU420:
 	case DRM_FORMAT_YVU422:
 	case DRM_FORMAT_YVU444:
-		return SUN8I_CSC_MODE_YVU2RGB;
+		return FORMAT_TYPE_YVU;
 	default:
-		return SUN8I_CSC_MODE_YUV2RGB;
+		return FORMAT_TYPE_YUV;
 	}
 }
 
@@ -262,7 +262,7 @@ static int sun8i_vi_layer_update_formats(struct sun8i_mixer *mixer, int channel,
 					 int overlay, struct drm_plane *plane)
 {
 	struct drm_plane_state *state = plane->state;
-	u32 val, ch_base, csc_mode, hw_fmt;
+	u32 val, ch_base, fmt_type, hw_fmt;
 	const struct drm_format_info *fmt;
 	int ret;
 
@@ -280,9 +280,9 @@ static int sun8i_vi_layer_update_formats(struct sun8i_mixer *mixer, int channel,
 			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base, overlay),
 			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_MASK, val);
 
-	csc_mode = sun8i_vi_layer_get_csc_mode(fmt);
-	if (csc_mode != SUN8I_CSC_MODE_OFF) {
-		sun8i_csc_set_ccsc_coefficients(mixer, channel, csc_mode,
+	fmt_type = sun8i_vi_layer_get_format_type(fmt);
+	if (fmt_type != FORMAT_TYPE_RGB) {
+		sun8i_csc_set_ccsc_coefficients(mixer, channel, fmt_type,
 						state->color_encoding,
 						state->color_range);
 		sun8i_csc_enable_ccsc(mixer, channel, true);
-- 
2.45.2


