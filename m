Return-Path: <devicetree+bounces-104258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 884C797DCAB
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2024 11:54:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC2931C20F38
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2024 09:54:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1375166F00;
	Sat, 21 Sep 2024 09:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="yvJNtIVq";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="NXfwCXga"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh3-smtp.messagingengine.com (fhigh3-smtp.messagingengine.com [103.168.172.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156EA15C13A;
	Sat, 21 Sep 2024 09:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.154
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726912452; cv=none; b=Jg1PgmAjfQxwWY2m1RIcf+CYdJ9ahJ2nLIAz0DisI54WPvfF+9LrbKumdmgC+Wox9c9IfwpgGbL03v0AIb3SEI0QLhVokJBLI2cdW7+WTPdUJXJroudXvmGYr75kIgKk5o4QiYU2lSz7dHduqV6gQHDMgGc0floiybAuQSHt2uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726912452; c=relaxed/simple;
	bh=6YestKvpzqGJdRWwub38KBkA4h1AMOnrkNf/N9zaSCQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=u6JLPnU00Vwe9LGECgs5KJhyBWsazrhhsTurdHCRUmt87+CRyqBclpuNjiiLFwzWZIcZb7qCRg/vGEm8D2IMsooz0KpGIBRvp1Q4OsSDXD7CMBNsvaOk/R87bsex3BfTApGw63cYZ+1woLJNiqu5gKWdUxdh6+TJXfiQpqhkzO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=yvJNtIVq; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=NXfwCXga; arc=none smtp.client-ip=103.168.172.154
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-01.internal (phl-compute-01.phl.internal [10.202.2.41])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 5C4301140253;
	Sat, 21 Sep 2024 05:54:10 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Sat, 21 Sep 2024 05:54:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1726912450; x=
	1726998850; bh=Q5IcvA23rC2M1wPEB66QENR02b77rEAwfKHMuQrcYcU=; b=y
	vJNtIVq6XrWbHg+rJcAW1I4VxchiZZsfNqeCq8Nex13GZYLDDpkQ4a8bjyqLIZwq
	HPaqVSV/vKZdD9b7XfKaD+aGSgPyiA99Afo24RQ1J01OTPOS5SeKMI/PbyrBHcvK
	jlrivD1ul7lFdJ+bIIlyoIWKR7dib0noiNAGAliudtoJ6hEagM7rbnZ8KlIgH5Sf
	nqP5f747+e410dGm7UpwSumC8PvtNwW3pA2tkwNjMQjPZky6r35rnLiG/bGX0ktu
	k0qrxNkBfWKdBcL/tE+ZavM3wLz5UG0GM6N4ujlKP4yrFFzWP1l0xNujTFEIy3yM
	vq1uqwpNv93V4yrDQY9CA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1726912450; x=
	1726998850; bh=Q5IcvA23rC2M1wPEB66QENR02b77rEAwfKHMuQrcYcU=; b=N
	XfwCXgaa5EsBJQufvdpI5t/VPO27Sy0vDzS+jaB8gnakxloX24Il/ILcfSBvqYQ8
	OrEeYnQI8tgGoThFkvovdswz+lPqXWxOuOfy7HkKFm65WGCnBIBCppXR5+6YpEGw
	HLNwn9CGGB6gTA8uR+nNVj0kuH8+iVA+9Do1kLihRBsdcfmnnzLqUstQJuu0MZH8
	C+bKDqfWJxWVLLv2RB6in9ds9ABPGe5hFaCo2OCYwTiakD+492bjMvwJfwRjSBlr
	5sEs/VoHL6bxuWaj2cc3wcXpCPzD96jGCSzOEUvXRU0ZdkvrdDRko289fqrGHZlu
	kel7yy5TYTuFdazBknm3A==
X-ME-Sender: <xms:wpfuZqwM5H1Nv3zX9NnNHqmd7JevErg4Sk5uG0r0IcnMeDRrydULiw>
    <xme:wpfuZmQJApyKVDuHDogGRv0kIuWkPWB072GjWqXvlBHsHN-YJz4lPr35VAZX5AzFL
    MQa4y8C0aPdanv5iQ>
X-ME-Received: <xmr:wpfuZsUv3pgzP6zZUKFqEHWVmPzmL6_P50GBPNkX6TNHDZCKldOm_oOHrbueYiybrZchFXMXo5wS6JnZbZ4DulhrcaZgjYBI4uKHtGVpRjT6Wwez>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudelhedgvdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhephffvvefufffkofgjfhgggfestdekredtredttden
    ucfhrhhomheptfihrghnucghrghlkhhlihhnuceorhihrghnsehtvghsthhtohgrshhtrd
    gtohhmqeenucggtffrrghtthgvrhhnpeffheeiffegtdfgffejteevgeefkeelieelkeev
    ueetffetteduffevgeeiieehteenucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpehrhigrnhesthgvshhtthhorghsthdrtghomhdpnhgspghrtghp
    thhtohepvddvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehmrhhiphgrrhguse
    hkvghrnhgvlhdrohhrghdprhgtphhtthhopeifvghnshestghsihgvrdhorhhgpdhrtghp
    thhtohepmhgrrghrthgvnhdrlhgrnhhkhhhorhhstheslhhinhhugidrihhnthgvlhdrtg
    homhdprhgtphhtthhopehtiihimhhmvghrmhgrnhhnsehsuhhsvgdruggvpdhrtghpthht
    oheprghirhhlihgvugesghhmrghilhdrtghomhdprhgtphhtthhopegurghnihgvlhesfh
    hffihllhdrtghhpdhrtghpthhtohepjhgvrhhnvghjrdhskhhrrggsvggtsehgmhgrihhl
    rdgtohhmpdhrtghpthhtohepshgrmhhuvghlsehshhholhhlrghnugdrohhrghdprhgtph
    htthhopehrohgshheskhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:wpfuZgjBBNrQQjUb5a-2-w5NAqEc0JhtO5Fu-9A46BGqPY-GjcSryg>
    <xmx:wpfuZsAkFzlpmv8eAvP6OFn8NsWPWgHafXuiYs03TY81kAR3YW4DkQ>
    <xmx:wpfuZhLCxfssi4DwdPZYSsoyKJ5pBRC-7aChQ-DIZG8W1qOM7Z207g>
    <xmx:wpfuZjBfxdYlSBrVw54UWm-LRWGpGApyMtOQL3QXTkZOczJ7DxtgIQ>
    <xmx:wpfuZuzsGEC1gphl0Z3kjRvntK5HFqS-oJmRALLCrieY2q0hf_HHLPR7>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 21 Sep 2024 05:54:04 -0400 (EDT)
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
Subject: [PATCH v4 17/26] drm: sun4i: de2/de3: use generic register reference function for layer configuration
Date: Sat, 21 Sep 2024 21:46:06 +1200
Message-ID: <20240921095153.213568-18-ryan@testtoast.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20240921095153.213568-1-ryan@testtoast.com>
References: <20240921095153.213568-1-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jernej Skrabec <jernej.skrabec@gmail.com>

Use the new blender register lookup function where required in the layer
commit and update code.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>

--

Changelog v2..v3:
- Refactor for 6.11 layer init/modesetting changes
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c    | 5 +++--
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 7 +++++--
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 6 ++++--
 3 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 8871ca2858c80..23561f122a2b6 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -277,6 +277,7 @@ static void sun8i_mixer_commit(struct sunxi_engine *engine,
 {
 	struct sun8i_mixer *mixer = engine_to_sun8i_mixer(engine);
 	u32 bld_base = sun8i_blender_base(mixer);
+	struct regmap *bld_regs = sun8i_blender_regmap(mixer);
 	struct drm_plane_state *plane_state;
 	struct drm_plane *plane;
 	u32 route = 0, pipe_en = 0;
@@ -316,8 +317,8 @@ static void sun8i_mixer_commit(struct sunxi_engine *engine,
 		pipe_en |= SUN8I_MIXER_BLEND_PIPE_CTL_EN(zpos);
 	}
 
-	regmap_write(mixer->engine.regs, SUN8I_MIXER_BLEND_ROUTE(bld_base), route);
-	regmap_write(mixer->engine.regs, SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
+	regmap_write(bld_regs, SUN8I_MIXER_BLEND_ROUTE(bld_base), route);
+	regmap_write(bld_regs, SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
 		     pipe_en | SUN8I_MIXER_BLEND_PIPE_CTL_FC_EN(0));
 
 	regmap_write(engine->regs, SUN8I_MIXER_GLOBAL_DBUFF,
diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index cb9b694fef101..7f1231cf0f012 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -24,6 +24,7 @@
 #include "sun8i_mixer.h"
 #include "sun8i_ui_layer.h"
 #include "sun8i_ui_scaler.h"
+#include "sun8i_vi_scaler.h"
 
 static void sun8i_ui_layer_update_alpha(struct sun8i_mixer *mixer, int channel,
 					int overlay, struct drm_plane *plane)
@@ -52,6 +53,7 @@ static int sun8i_ui_layer_update_coord(struct sun8i_mixer *mixer, int channel,
 {
 	struct drm_plane_state *state = plane->state;
 	u32 src_w, src_h, dst_w, dst_h;
+	struct regmap *bld_regs;
 	u32 bld_base, ch_base;
 	u32 outsize, insize;
 	u32 hphase, vphase;
@@ -60,6 +62,7 @@ static int sun8i_ui_layer_update_coord(struct sun8i_mixer *mixer, int channel,
 			 channel, overlay);
 
 	bld_base = sun8i_blender_base(mixer);
+	bld_regs = sun8i_blender_regmap(mixer);
 	ch_base = sun8i_channel_base(mixer, channel);
 
 	src_w = drm_rect_width(&state->src) >> 16;
@@ -104,10 +107,10 @@ static int sun8i_ui_layer_update_coord(struct sun8i_mixer *mixer, int channel,
 	DRM_DEBUG_DRIVER("Layer destination coordinates X: %d Y: %d\n",
 			 state->dst.x1, state->dst.y1);
 	DRM_DEBUG_DRIVER("Layer destination size W: %d H: %d\n", dst_w, dst_h);
-	regmap_write(mixer->engine.regs,
+	regmap_write(bld_regs,
 		     SUN8I_MIXER_BLEND_ATTR_COORD(bld_base, zpos),
 		     SUN8I_MIXER_COORD(state->dst.x1, state->dst.y1));
-	regmap_write(mixer->engine.regs,
+	regmap_write(bld_regs,
 		     SUN8I_MIXER_BLEND_ATTR_INSIZE(bld_base, zpos),
 		     outsize);
 
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index e348fd0a3d81c..d19349eecc9de 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -55,6 +55,7 @@ static int sun8i_vi_layer_update_coord(struct sun8i_mixer *mixer, int channel,
 	struct drm_plane_state *state = plane->state;
 	const struct drm_format_info *format = state->fb->format;
 	u32 src_w, src_h, dst_w, dst_h;
+	struct regmap *bld_regs;
 	u32 bld_base, ch_base;
 	u32 outsize, insize;
 	u32 hphase, vphase;
@@ -66,6 +67,7 @@ static int sun8i_vi_layer_update_coord(struct sun8i_mixer *mixer, int channel,
 			 channel, overlay);
 
 	bld_base = sun8i_blender_base(mixer);
+	bld_regs = sun8i_blender_regmap(mixer);
 	ch_base = sun8i_channel_base(mixer, channel);
 
 	src_w = drm_rect_width(&state->src) >> 16;
@@ -182,10 +184,10 @@ static int sun8i_vi_layer_update_coord(struct sun8i_mixer *mixer, int channel,
 	DRM_DEBUG_DRIVER("Layer destination coordinates X: %d Y: %d\n",
 			 state->dst.x1, state->dst.y1);
 	DRM_DEBUG_DRIVER("Layer destination size W: %d H: %d\n", dst_w, dst_h);
-	regmap_write(mixer->engine.regs,
+	regmap_write(bld_regs,
 		     SUN8I_MIXER_BLEND_ATTR_COORD(bld_base, zpos),
 		     SUN8I_MIXER_COORD(state->dst.x1, state->dst.y1));
-	regmap_write(mixer->engine.regs,
+	regmap_write(bld_regs,
 		     SUN8I_MIXER_BLEND_ATTR_INSIZE(bld_base, zpos),
 		     outsize);
 
-- 
2.46.1


