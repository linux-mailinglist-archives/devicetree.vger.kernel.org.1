Return-Path: <devicetree+bounces-106133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 783BD989434
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2024 11:12:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B0011C2356E
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2024 09:12:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32F0713F431;
	Sun, 29 Sep 2024 09:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="Z6wFCLiz";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="EbX+FxW/"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a3-smtp.messagingengine.com (fout-a3-smtp.messagingengine.com [103.168.172.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A53A13C827;
	Sun, 29 Sep 2024 09:12:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727601165; cv=none; b=AlPobISGAWnok0eSTy3hothX+R97NnpqG/wB1ywyKCtmM39LKrz38pP2Pfzo/+TQY3k3mFb6WoNdvE4MYJ4ScKnRciNdG1JZ/bCQIytZddC9N8OY5m8JOgGKyRL3xgSqQjoxdogV/6d4kAhfl1JVSJ+i2NJCGtMVnY6uZFNW32o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727601165; c=relaxed/simple;
	bh=7KC52puC7+3IJcvFqmGyoWSLyhF/uJ2a9Lx9+s+2bD4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Byw38HhOEtGQsRzQx4pZeY7nGyLXyPOupcKsR2dA3N2yWbfQ8e2Jh7tYSFN125HP036UU3czrp3lrh1syc2yakCKVU//9eyoHuIvkcU6JoOe+zctJ1jr8sgSa7noUGGbx6w/a/8R3O0PUjyeEFxHjqDTyo8JgO65PRN9b/CgV7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=Z6wFCLiz; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=EbX+FxW/; arc=none smtp.client-ip=103.168.172.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-04.internal (phl-compute-04.phl.internal [10.202.2.44])
	by mailfout.phl.internal (Postfix) with ESMTP id E0E9913802B6;
	Sun, 29 Sep 2024 05:12:42 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Sun, 29 Sep 2024 05:12:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1727601162; x=
	1727687562; bh=UTbgAlZPg7kKDXmpb3ox4DzabVzCpQwm62KnqwRU5w0=; b=Z
	6wFCLizFTJQjFKlVKsySyQAhr8KsoogIZas7g+Y5l87p9+14PfqgZjKaNIaAxTwu
	0U4VxZxdWKEYWsGJLiGttDbjcgwlrj7eh9qovzcIWkUsz6+V9wzDScYlgSBlIX2p
	3rFt3Nfh6Mfg1smkeDVWOpDpTKSsOukYfD/hh9h1aWPnGgJAvxnt3wJfm0cOZ6Wc
	lNL9D3cicl7aRQcI6Khj4u57O5EKITglEou0WijIZdk7n4sY2x/t8DyeJhuYgpV1
	EK39wa7ElAzxSZ1KHeZ3g2TgcvtFGPzRH62Q/Ob0QAyotFrli+KwuvCFiHfon4xh
	rZC8CTVyWi2Ou3l/ipkoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1727601162; x=
	1727687562; bh=UTbgAlZPg7kKDXmpb3ox4DzabVzCpQwm62KnqwRU5w0=; b=E
	bX+FxW/h1D10L/Sd/j0pZfgM46ltGCyEysVSZfNGR6VL2wpv8qzP+4ryoJgQVcaA
	mKoKnh5+EMIAR8NaR6D8eT1isDspd7fFNJopzOLPpvwDayyx4cqFemiOsLDxuUh3
	KwLh6OAuMXUcudXsAxJtqchyFvm4TBKxFzgJxi9gGjma0wQ8zFHqhpT0IMSXobbF
	3c1jCKpeg/2bev7BeGLaeuDzvRb5NfxoIeJNkF5aKuE1MWgWhqIv9NNYI1qvz4uJ
	CAT3MPbxk3auUgZliEVuL660E+ZG+tUMSaeW4UZ8mRNPa5DSKZJN4mkWBW9slcKV
	JxEPfCA49GrOiDXtfPWnw==
X-ME-Sender: <xms:Chr5Zv8bvuPg-adU2uLYuk0inxgJ7gLilg14Y0YknQn1K66bF0ZoIA>
    <xme:Chr5ZrshI_6JpYn8VyxTdZ8E5lc6xYz8RYGXGmhaOU1OwCTiRJOTwIhsq8p5M18qw
    NhoBHPtemfqlJvgfw>
X-ME-Received: <xmr:Chr5ZtC2B__3rEhVew7SmfDU_BVaRZRHukhFvZY6KeSaS90bCIOc5OIF6OKuuL6h08qrwV1POAZr7RsbKJ3IJi1V9wSqpEndQfevvobop4g6SenU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvddufedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhephffvvefufffkofgjfhgggfestdekredtredttden
    ucfhrhhomheptfihrghnucghrghlkhhlihhnuceorhihrghnsehtvghsthhtohgrshhtrd
    gtohhmqeenucggtffrrghtthgvrhhnpeffheeiffegtdfgffejteevgeefkeelieelkeev
    ueetffetteduffevgeeiieehteenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpehrhigrnhesthgvshhtthhorghsthdrtghomhdpnhgspghrtghp
    thhtohepvddupdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehmrhhiphgrrhguse
    hkvghrnhgvlhdrohhrghdprhgtphhtthhopeifvghnshestghsihgvrdhorhhgpdhrtghp
    thhtohepmhgrrghrthgvnhdrlhgrnhhkhhhorhhstheslhhinhhugidrihhnthgvlhdrtg
    homhdprhgtphhtthhopehtiihimhhmvghrmhgrnhhnsehsuhhsvgdruggvpdhrtghpthht
    oheprghirhhlihgvugesghhmrghilhdrtghomhdprhgtphhtthhopegurghnihgvlhesfh
    hffihllhdrtghhpdhrtghpthhtohepjhgvrhhnvghjrdhskhhrrggsvggtsehgmhgrihhl
    rdgtohhmpdhrtghpthhtohepshgrmhhuvghlsehshhholhhlrghnugdrohhrghdprhgtph
    htthhopehrohgshheskhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:Chr5ZrciK7Ghb76ngzhBsBvRM27pm5tR0iH0ZsbVqrojto5dbU37uA>
    <xmx:Chr5ZkP2hR87aljYHAfVmuIVs1B9CpkjRtP0373EYHpEg4zmjG2XtQ>
    <xmx:Chr5Ztmo9GcZOVBlUkXdjSDc7VXAa_KuJbmYZxHlLl8X8BnpVDvbbA>
    <xmx:Chr5ZutriFvtDE_xDTJKel6XMzFqFYZMEIB1_jmSUoQuLqhaOiZMkg>
    <xmx:Chr5Zi1i0fDIHaaNXHd9yS5xr6d24hqhGx5VoNEwTb2QpHFpxWbRveCS>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 29 Sep 2024 05:12:36 -0400 (EDT)
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
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Ryan Walklin <ryan@testtoast.com>
Subject: [PATCH v5 12/26] drm: sun4i: support YUV formats in VI scaler
Date: Sun, 29 Sep 2024 22:04:44 +1300
Message-ID: <20240929091107.838023-13-ryan@testtoast.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20240929091107.838023-1-ryan@testtoast.com>
References: <20240929091107.838023-1-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jernej Skrabec <jernej.skrabec@gmail.com>

Now that YUV formats are available, enable support in the VI scaler.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>

Changelog v4..v5:
- Add commit description
---
 drivers/gpu/drm/sun4i/sun8i_vi_scaler.c | 85 +++++++++++++++++--------
 1 file changed, 58 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c b/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
index 7ba75011adf9f..2e49a6e5f1f1c 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
@@ -843,6 +843,11 @@ static u32 sun8i_vi_scaler_base(struct sun8i_mixer *mixer, int channel)
 		       DE2_VI_SCALER_UNIT_SIZE * channel;
 }
 
+static bool sun8i_vi_scaler_is_vi_plane(struct sun8i_mixer *mixer, int channel)
+{
+	return true;
+}
+
 static int sun8i_vi_scaler_coef_index(unsigned int step)
 {
 	unsigned int scale, int_part, float_part;
@@ -867,44 +872,65 @@ static int sun8i_vi_scaler_coef_index(unsigned int step)
 	}
 }
 
-static void sun8i_vi_scaler_set_coeff(struct regmap *map, u32 base,
-				      u32 hstep, u32 vstep,
-				      const struct drm_format_info *format)
+static void sun8i_vi_scaler_set_coeff_vi(struct regmap *map, u32 base,
+					 u32 hstep, u32 vstep,
+					 const struct drm_format_info *format)
 {
 	const u32 *ch_left, *ch_right, *cy;
-	int offset, i;
+	int offset;
 
-	if (format->hsub == 1 && format->vsub == 1) {
-		ch_left = lan3coefftab32_left;
-		ch_right = lan3coefftab32_right;
-		cy = lan2coefftab32;
-	} else {
+	if (format->is_yuv) {
 		ch_left = bicubic8coefftab32_left;
 		ch_right = bicubic8coefftab32_right;
 		cy = bicubic4coefftab32;
+	} else {
+		ch_left = lan3coefftab32_left;
+		ch_right = lan3coefftab32_right;
+		cy = lan2coefftab32;
 	}
 
 	offset = sun8i_vi_scaler_coef_index(hstep) *
 			SUN8I_VI_SCALER_COEFF_COUNT;
-	for (i = 0; i < SUN8I_VI_SCALER_COEFF_COUNT; i++) {
-		regmap_write(map, SUN8I_SCALER_VSU_YHCOEFF0(base, i),
-			     lan3coefftab32_left[offset + i]);
-		regmap_write(map, SUN8I_SCALER_VSU_YHCOEFF1(base, i),
-			     lan3coefftab32_right[offset + i]);
-		regmap_write(map, SUN8I_SCALER_VSU_CHCOEFF0(base, i),
-			     ch_left[offset + i]);
-		regmap_write(map, SUN8I_SCALER_VSU_CHCOEFF1(base, i),
-			     ch_right[offset + i]);
-	}
+	regmap_bulk_write(map, SUN8I_SCALER_VSU_YHCOEFF0(base, 0),
+			  &lan3coefftab32_left[offset],
+			  SUN8I_VI_SCALER_COEFF_COUNT);
+	regmap_bulk_write(map, SUN8I_SCALER_VSU_YHCOEFF1(base, 0),
+			  &lan3coefftab32_right[offset],
+			  SUN8I_VI_SCALER_COEFF_COUNT);
+	regmap_bulk_write(map, SUN8I_SCALER_VSU_CHCOEFF0(base, 0),
+			  &ch_left[offset], SUN8I_VI_SCALER_COEFF_COUNT);
+	regmap_bulk_write(map, SUN8I_SCALER_VSU_CHCOEFF1(base, 0),
+			  &ch_right[offset], SUN8I_VI_SCALER_COEFF_COUNT);
 
 	offset = sun8i_vi_scaler_coef_index(hstep) *
 			SUN8I_VI_SCALER_COEFF_COUNT;
-	for (i = 0; i < SUN8I_VI_SCALER_COEFF_COUNT; i++) {
-		regmap_write(map, SUN8I_SCALER_VSU_YVCOEFF(base, i),
-			     lan2coefftab32[offset + i]);
-		regmap_write(map, SUN8I_SCALER_VSU_CVCOEFF(base, i),
-			     cy[offset + i]);
-	}
+	regmap_bulk_write(map, SUN8I_SCALER_VSU_YVCOEFF(base, 0),
+			  &lan2coefftab32[offset], SUN8I_VI_SCALER_COEFF_COUNT);
+	regmap_bulk_write(map, SUN8I_SCALER_VSU_CVCOEFF(base, 0),
+			  &cy[offset], SUN8I_VI_SCALER_COEFF_COUNT);
+}
+
+static void sun8i_vi_scaler_set_coeff_ui(struct regmap *map, u32 base,
+					 u32 hstep, u32 vstep,
+					 const struct drm_format_info *format)
+{
+	const u32 *table;
+	int offset;
+
+	offset = sun8i_vi_scaler_coef_index(hstep) *
+			SUN8I_VI_SCALER_COEFF_COUNT;
+	regmap_bulk_write(map, SUN8I_SCALER_VSU_YHCOEFF0(base, 0),
+			  &lan2coefftab32[offset], SUN8I_VI_SCALER_COEFF_COUNT);
+	offset = sun8i_vi_scaler_coef_index(vstep) *
+			SUN8I_VI_SCALER_COEFF_COUNT;
+	regmap_bulk_write(map, SUN8I_SCALER_VSU_YVCOEFF(base, 0),
+			  &lan2coefftab32[offset], SUN8I_VI_SCALER_COEFF_COUNT);
+
+	table = format->is_yuv ? bicubic4coefftab32 : lan2coefftab32;
+	offset = sun8i_vi_scaler_coef_index(hstep) *
+			SUN8I_VI_SCALER_COEFF_COUNT;
+	regmap_bulk_write(map, SUN8I_SCALER_VSU_CHCOEFF0(base, 0),
+			  &table[offset], SUN8I_VI_SCALER_COEFF_COUNT);
 }
 
 void sun8i_vi_scaler_enable(struct sun8i_mixer *mixer, int layer, bool enable)
@@ -994,6 +1020,11 @@ void sun8i_vi_scaler_setup(struct sun8i_mixer *mixer, int layer,
 		     SUN8I_SCALER_VSU_CHPHASE(base), chphase);
 	regmap_write(mixer->engine.regs,
 		     SUN8I_SCALER_VSU_CVPHASE(base), cvphase);
-	sun8i_vi_scaler_set_coeff(mixer->engine.regs, base,
-				  hscale, vscale, format);
+
+	if (sun8i_vi_scaler_is_vi_plane(mixer, layer))
+		sun8i_vi_scaler_set_coeff_vi(mixer->engine.regs, base,
+					     hscale, vscale, format);
+	else
+		sun8i_vi_scaler_set_coeff_ui(mixer->engine.regs, base,
+					     hscale, vscale, format);
 }
-- 
2.46.1


