Return-Path: <devicetree+bounces-82805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DB8925F9C
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 14:05:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7621BB35C6B
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 11:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A77391922DF;
	Wed,  3 Jul 2024 10:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="1zx1daAL";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="nCMomT0x"
X-Original-To: devicetree@vger.kernel.org
Received: from fout6-smtp.messagingengine.com (fout6-smtp.messagingengine.com [103.168.172.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C685188CDA;
	Wed,  3 Jul 2024 10:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720004248; cv=none; b=q2ZiGCEs+n9+j3sA2W5mWn0KZhlagLgFdVbxczpI293DjzzvLL83XRxmiNcwRyf7FYOwsWvM0BrPv7urjWrOxCIo+ckjG+mto7zPSyJlxOGBxOqGE8F+NjKZPQHqp5XWw2HGpYcSQS/pttT4Xl2SzYTPpKAFvm6eUXJchE3y4iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720004248; c=relaxed/simple;
	bh=eEd7MAOppw+QYk1fJEgHtcHuNqeZIFWAlYYqvZXDjLQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=leTgecuQfp6PkdsEei7TS06r6AZd3FmNgwdFMK0UmIb66Y5xc0qdcTKsfMg2INnxOZ1e+/QqgEhZr5SN6ecJ7RbXnglZxHW2hXGdDzD2fMVjl4Kl1nSqXjaCEIK9hiBWvwfU55J2ceXFmHXPZcmnHBVWoyJQmcSs5Mir2xts/MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=1zx1daAL; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=nCMomT0x; arc=none smtp.client-ip=103.168.172.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailfout.nyi.internal (Postfix) with ESMTP id 721B51380548;
	Wed,  3 Jul 2024 06:57:26 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Wed, 03 Jul 2024 06:57:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1720004246; x=
	1720090646; bh=W54qNAIgfswH0qufxPq1pk+nBXXlOeRKiKQkbLO+VCU=; b=1
	zx1daALMJ4oC1V+5ajwwZinFXITtV2kt4IdjiRCq6YmdnK+mj4MYgchItdzPy/Mj
	ehjtmAsKp8EoWhOKeOQ+VhIc5KJASXDzqU5GSNhetHoHNTs/453c55MPRMp9nQbd
	lxOZ0N66q2aK1TMvQx1zTMv5H6yOVFHu9M+R6DKeuj63iE31sl+MKoJIJli/QjA+
	cB9ZHg1PMT9AqETw+fFGNtv4Wg7eTV2Uk4l/PSjXU1XaI/Vg09sTLAn/tFZO/z/O
	i+QLo33EYex9302GLVU2pZcwISSZ1QpgkNPKFdveurCyshuQHgPApYinpNq4r6G2
	wszNbEEqdWXU0tT+ss43w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1720004246; x=
	1720090646; bh=W54qNAIgfswH0qufxPq1pk+nBXXlOeRKiKQkbLO+VCU=; b=n
	CMomT0xXuXorQ5UT3FdNjRpGTn0YyPZ2RQ7RqSbrBhfykJBDRW++iX88vI6w4tKu
	4b0R9rKdJFGWJx5Ey4ZUgWbzVH5vV1SHp8E0CALxCuHJ7/orW1DN17Jls3v5qXCf
	MHcRmq5A2V3MynEOYqIfs+pO886feTe6kG+Wlz8GZTGRmuQ7EFkcRqwB4Io1r/ly
	AQGs4oKoPmicvEg0WnDjWN0sPSqSXTJQcxCCMOl+loJUpYTXoQIvGD7re2+K9UYE
	ghKM4dPjWsqgmCqJNgAqmLu8BUJUud2mzbD0tU9OTeCJQGJ1KARifDH6PRaZ//95
	p4C6UWf0HPNt8wDALup0Q==
X-ME-Sender: <xms:li6FZkpJrXx8rEyaaK70SKnbaAR7uXFxJE0EJAc3wgAIcSoTHOmPmA>
    <xme:li6FZqrMzskIt79YzRwOiqRsYnRpU-W5bv972-mkwjwHidmsl2xFm3jRbqO3CokNI
    E4TjsJafi2CrrpM3A>
X-ME-Received: <xmr:li6FZpM4BskufkirP93iIWZq1dN0ezJy4DRghUfTE-nmajIpVgnJjQbyBu56wR7nZ9qy7LtI9WWf08sT2XoSY0bFM0RXSaQgGSwP7gb8r6IuSFZh>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudejgdefgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefthigrnhcu
    hggrlhhklhhinhcuoehrhigrnhesthgvshhtthhorghsthdrtghomheqnecuggftrfgrth
    htvghrnhepffehieffgedtgfffjeetveegfeekleeileekveeuteffteetudffveegieei
    heetnecuvehluhhsthgvrhfuihiivgepvdenucfrrghrrghmpehmrghilhhfrhhomheprh
    ihrghnsehtvghsthhtohgrshhtrdgtohhm
X-ME-Proxy: <xmx:li6FZr6U4RSB1kpGQzDl28yz8hI_Bn33JR5mHlp7qH1MOkUSk45I1g>
    <xmx:li6FZj7NGq-lWoLErIFfEE9PZ9E042ZG7fpxbqHuGymgkxrg0PWe-w>
    <xmx:li6FZriz3RxfD8YJCCGHu_GeldAwYxg9eappWNOAqmparXsc077ZhQ>
    <xmx:li6FZt5mGiqyTOnnoVu0GGIZOS50kWfx5K1IRaXHm2ndkBL-usSjqg>
    <xmx:li6FZorQgiaNh_0X8woBdG7V9AU5gTwSQw9nZqUXPiLBDq22INNrPmhU>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 3 Jul 2024 06:57:20 -0400 (EDT)
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
Subject: [PATCH v2 21/23] drm: sun4i: de33: vi_scaler: add Display Engine 3.3 (DE33) support
Date: Wed,  3 Jul 2024 22:51:11 +1200
Message-ID: <20240703105454.41254-22-ryan@testtoast.com>
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

The vi_scaler appears to be used in preference to the ui_scaler module
for hardware video scaling in the DE33.

Enable support for this scaler.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
---
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c  | 19 +++++++++++++++----
 drivers/gpu/drm/sun4i/sun8i_vi_scaler.c |  7 ++++++-
 2 files changed, 21 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index 7f4d4dcfdc03d..1649816fe435e 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -146,12 +146,23 @@ static int sun8i_ui_layer_update_coord(struct sun8i_mixer *mixer, int channel,
 		hscale = state->src_w / state->crtc_w;
 		vscale = state->src_h / state->crtc_h;
 
-		sun8i_ui_scaler_setup(mixer, channel, src_w, src_h, dst_w,
-				      dst_h, hscale, vscale, hphase, vphase);
-		sun8i_ui_scaler_enable(mixer, channel, true);
+		if (mixer->cfg->de_type == sun8i_mixer_de33) {
+			sun8i_vi_scaler_setup(mixer, channel, src_w, src_h,
+					      dst_w, dst_h, hscale, vscale,
+					      hphase, vphase,
+					      state->fb->format);
+		} else {
+			sun8i_ui_scaler_setup(mixer, channel, src_w, src_h,
+					      dst_w, dst_h, hscale, vscale,
+					      hphase, vphase);
+			sun8i_ui_scaler_enable(mixer, channel, true);
+		}
 	} else {
 		DRM_DEBUG_DRIVER("HW scaling is not needed\n");
-		sun8i_ui_scaler_enable(mixer, channel, false);
+		if (mixer->cfg->de_type == sun8i_mixer_de33)
+			sun8i_vi_scaler_disable(mixer, channel);
+		else
+			sun8i_ui_scaler_enable(mixer, channel, false);
 	}
 
 	/* Set base coordinates */
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c b/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
index e7242301b312c..9c7f6e7d71d50 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
@@ -835,7 +835,9 @@ static const u32 bicubic4coefftab32[480] = {
 
 static u32 sun8i_vi_scaler_base(struct sun8i_mixer *mixer, int channel)
 {
-	if (mixer->cfg->de_type == sun8i_mixer_de3)
+	if (mixer->cfg->de_type == sun8i_mixer_de33)
+		return sun8i_channel_base(mixer, channel) + 0x3000;
+	else if (mixer->cfg->de_type == sun8i_mixer_de3)
 		return DE3_VI_SCALER_UNIT_BASE +
 		       DE3_VI_SCALER_UNIT_SIZE * channel;
 	else
@@ -845,6 +847,9 @@ static u32 sun8i_vi_scaler_base(struct sun8i_mixer *mixer, int channel)
 
 static bool sun8i_vi_scaler_is_vi_plane(struct sun8i_mixer *mixer, int channel)
 {
+	if (mixer->cfg->de_type == sun8i_mixer_de33)
+		return mixer->cfg->map[channel] < mixer->cfg->vi_num;
+
 	return true;
 }
 
-- 
2.45.2


