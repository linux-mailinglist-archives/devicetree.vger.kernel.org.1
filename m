Return-Path: <devicetree+bounces-106125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95125989418
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2024 11:11:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A42562864F3
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2024 09:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1410413DDC7;
	Sun, 29 Sep 2024 09:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="f1yJBu/L";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="auIuczCd"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-a2-smtp.messagingengine.com (fhigh-a2-smtp.messagingengine.com [103.168.172.153])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E04B13D24D;
	Sun, 29 Sep 2024 09:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.153
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727601115; cv=none; b=k6XOumsYXduieVSq0SLctNJQZlqUXUVzNYxJvnKLnvUpCXUtJqZ/q+nEu5W2TrYe48yalodFI07vQkAnQNyNM/OgXoTeF72ZuF2KEaMZar8sE3x0EyS3HcQvogNVhREVJupQEL4IKLSimo+oQemU5hmJ6Juk5cRqiiyV0F3RTJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727601115; c=relaxed/simple;
	bh=5N7dKt3+JRM4U7IvBaBa1K71v9qWqjKB54iGk7SerSo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D3k1PG1UtGHURpj47IhVuLy/sVNNuVQBXKTHVoT3gERF7BIUn4hf85BwlTun0HYm93B+6E9FT3kstk8x82DWKJhcURiBpj6zOrHfY2ENI/7oUVY2e5nw9gCX3DEMjqvs6fVtSSBuJ8Obvpm6CpY8rd1LWqouTQy+Htt9EFEnYzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=f1yJBu/L; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=auIuczCd; arc=none smtp.client-ip=103.168.172.153
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-10.internal (phl-compute-10.phl.internal [10.202.2.50])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 964C6114012F;
	Sun, 29 Sep 2024 05:11:52 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-10.internal (MEProxy); Sun, 29 Sep 2024 05:11:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1727601112; x=
	1727687512; bh=nay3ZyN0cN/80lVEv9bgr4vS0wpneM/GiqVSWG6S8J8=; b=f
	1yJBu/L9KjlZQrAK9vJ3KmOClx1tCVF774B6/cGX4LfQ9nzvw6C1OYFcMDPtz3PU
	SibJfvSiCdm8S39EJRY0XoIEXIoIbr29QQ+Rge1bHdr7t70468pYl9tPQYXHZ9fO
	jHIg2uO+bswNbx0yBXFuAggsfLj96IGXoEJMPZOFM61NK7glNBWFycvi6jj84qxh
	jz8nhu2iSHwzLf0Bs2uulZZLPmJxFGl2IIQs2Go94WRXmf3SbRVvuiCKkrbJJ190
	vGCJv0gCe+7rb3KhOrrvcFiuqiQvFErW4+IpSydIMIXTGF7yRv6HIhTUhKEmkWNc
	GfjCXJ+AGADFD4jP287uA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1727601112; x=
	1727687512; bh=nay3ZyN0cN/80lVEv9bgr4vS0wpneM/GiqVSWG6S8J8=; b=a
	uIuczCdZYptXykXONBumfKC6AMlQZ+K1JrbmSgDp3xQu4BUgDTWm3+xOoRhsVSIT
	P6Mu1JdE6s5/+D/amxqqg0x5AnhlL5dIYIsNMxrKD//PX155c8DH+Y5jazZUjfKO
	cY1Ey2+umvhqBbJbNZZX5zqGE5LkYbnU//6J25nQj3i7B4Dj14svM2GfMXtZxRQe
	5n8OKh0dSAeSuS9Boevjoe/FjzMxiEOwK7jaJ4jQBJ1HgLs4ul+PqK3EK5uUnNLz
	gUJpJw2SuTuO4s8vwPjB0z/N2Wf46i5b9BcLPY+GL/nXB26DdhvdM8X6XO5FutX5
	ep50I7nKvQuSqYOPbMbvA==
X-ME-Sender: <xms:2Bn5ZriwLU05UPqEXRPMdGWltxruIcmq8wanWK4ZeekmdXzhhkMPjQ>
    <xme:2Bn5ZoCqz6rXGb33y7MXE_zkmONKtBYQvBX4xCI8Uw_M4Mg6Zsfqdz_iKvC5xq5wr
    KEPq7AsONG_kz4FVw>
X-ME-Received: <xmr:2Bn5ZrHw-nKX879DmHWkyNB4EM5rrtogNy7QcqZ2T0yr4CmaqFco6KdPj8th5t9WlEpdNxOxMwVn9oMxJDFaAtVFcIQwiDLxWBdH5OlfGcWXLwfg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvddufedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhephffvvefufffkofgjfhgggfestdekredtredttden
    ucfhrhhomheptfihrghnucghrghlkhhlihhnuceorhihrghnsehtvghsthhtohgrshhtrd
    gtohhmqeenucggtffrrghtthgvrhhnpeffheeiffegtdfgffejteevgeefkeelieelkeev
    ueetffetteduffevgeeiieehteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpehrhigrnhesthgvshhtthhorghsthdrtghomhdpnhgspghrtghp
    thhtohepvddupdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehmrhhiphgrrhguse
    hkvghrnhgvlhdrohhrghdprhgtphhtthhopeifvghnshestghsihgvrdhorhhgpdhrtghp
    thhtohepmhgrrghrthgvnhdrlhgrnhhkhhhorhhstheslhhinhhugidrihhnthgvlhdrtg
    homhdprhgtphhtthhopehtiihimhhmvghrmhgrnhhnsehsuhhsvgdruggvpdhrtghpthht
    oheprghirhhlihgvugesghhmrghilhdrtghomhdprhgtphhtthhopegurghnihgvlhesfh
    hffihllhdrtghhpdhrtghpthhtohepjhgvrhhnvghjrdhskhhrrggsvggtsehgmhgrihhl
    rdgtohhmpdhrtghpthhtohepshgrmhhuvghlsehshhholhhlrghnugdrohhrghdprhgtph
    htthhopehrohgshheskhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:2Bn5ZoTtJg8lM9uaV3p5IXI_VvWojUOkbwV1hRmLazumVrtdYZc2vw>
    <xmx:2Bn5Zox96xbb3zJm_7Ha10gkomC4_--yyA81-wAMfpNdfmgbZKvfNw>
    <xmx:2Bn5Zu7YBvsj0pbQ21bBHsfgIJsI-JcG1SUKLpIlrLzekKfNydlWqA>
    <xmx:2Bn5ZtzC1dq05psagxShsr1oLkY-oBWNmVbAJF6b6YKNqRqFAd1quA>
    <xmx:2Bn5ZqqMIPxjlq2XQKB6LkCOMRqd56FOm241err6KV_XQmfOxrcYnOHW>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 29 Sep 2024 05:11:46 -0400 (EDT)
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
Subject: [PATCH v5 04/26] drm: sun4i: de2: Initialize layer fields earlier
Date: Sun, 29 Sep 2024 22:04:36 +1300
Message-ID: <20240929091107.838023-5-ryan@testtoast.com>
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

drm_universal_plane_init() can already call some callbacks, like
format_mod_supported, during initialization. Because of that, fields
should be initialized beforehand.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Co-developed-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Reviewed-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 9 +++++----
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 9 +++++----
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index aa987bca1dbb9..cb9b694fef101 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -295,6 +295,11 @@ struct sun8i_layer *sun8i_ui_layer_init_one(struct drm_device *drm,
 	if (!layer)
 		return ERR_PTR(-ENOMEM);
 
+	layer->mixer = mixer;
+	layer->type = SUN8I_LAYER_TYPE_UI;
+	layer->channel = channel;
+	layer->overlay = 0;
+
 	if (index == 0)
 		type = DRM_PLANE_TYPE_PRIMARY;
 
@@ -325,10 +330,6 @@ struct sun8i_layer *sun8i_ui_layer_init_one(struct drm_device *drm,
 	}
 
 	drm_plane_helper_add(&layer->plane, &sun8i_ui_layer_helper_funcs);
-	layer->mixer = mixer;
-	layer->type = SUN8I_LAYER_TYPE_UI;
-	layer->channel = channel;
-	layer->overlay = 0;
 
 	return layer;
 }
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index f3a5329351caa..3c657b069d1f4 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -478,6 +478,11 @@ struct sun8i_layer *sun8i_vi_layer_init_one(struct drm_device *drm,
 	if (!layer)
 		return ERR_PTR(-ENOMEM);
 
+	layer->mixer = mixer;
+	layer->type = SUN8I_LAYER_TYPE_VI;
+	layer->channel = index;
+	layer->overlay = 0;
+
 	if (mixer->cfg->is_de3) {
 		formats = sun8i_vi_layer_de3_formats;
 		format_count = ARRAY_SIZE(sun8i_vi_layer_de3_formats);
@@ -536,10 +541,6 @@ struct sun8i_layer *sun8i_vi_layer_init_one(struct drm_device *drm,
 	}
 
 	drm_plane_helper_add(&layer->plane, &sun8i_vi_layer_helper_funcs);
-	layer->mixer = mixer;
-	layer->type = SUN8I_LAYER_TYPE_VI;
-	layer->channel = index;
-	layer->overlay = 0;
 
 	return layer;
 }
-- 
2.46.1


