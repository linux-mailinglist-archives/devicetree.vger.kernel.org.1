Return-Path: <devicetree+bounces-94475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 491A6955A26
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 01:07:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 948ACB21425
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 23:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E94DC155A53;
	Sat, 17 Aug 2024 23:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="Irff9371";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="boxduwRW"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh1-smtp.messagingengine.com (fhigh1-smtp.messagingengine.com [103.168.172.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A43E143886;
	Sat, 17 Aug 2024 23:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723936022; cv=none; b=AErM4NutEYQQIckcvoEpdyiNxeYuQOzQtyCLaCrtc6XVPhDt+WBcT//CJOIpkl7Htged5QSkl5wFaeLWnIbcRpsj8jhxKR//ziRyUvQtkXiPkPd1rqYgwLVTVinD+4AmeEPMRMguam81mXtfYRzS8OFHkw6TNFuEo6xUuUzvK78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723936022; c=relaxed/simple;
	bh=LDWSBXvSqYAICIgzQnDTfg/RmBhWL6IyvQFH9t/vi24=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jHPHejDHJrZVPcb+1fFUD9Lf1WztUUiaS6ghNXCXzFDuDpBhZ7y7UOudPfRkne5kyl3/yZra2k9APP1WS1vNeDt670Nzly1KRKlspklrhnm5GR0WvBEm5dyscNwQ+NrYV4nlSOBwemHw0vdX1IMDMEZLtKQ3WSDDhRt1ZrSQcb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=Irff9371; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=boxduwRW; arc=none smtp.client-ip=103.168.172.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-07.internal (phl-compute-07.nyi.internal [10.202.2.47])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 906A0114EA0E;
	Sat, 17 Aug 2024 19:06:58 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-07.internal (MEProxy); Sat, 17 Aug 2024 19:06:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1723936018; x=
	1724022418; bh=qo/VEQoUCowjMbBmQ2mzn7sUgSRH6G2PSQMngpXvJd4=; b=I
	rff9371TKkffxMteYOxKELGEZZ8LHWns0dvVCrcLpv7WGLqSZjUG5Zj214bh2VGd
	WkktZEXO8P26uNwcF87Mn0CwmRfOis7QXiBNgwzZRoIywqs7fLsCBTJboxh4DXn1
	ZLbvAXfilUAvMx/VYHjFXypIWLto7veQwnFioXwUHNeH2li6AtvF8ZnqiuX/8X/G
	8BOB2r9ZW/KG4eJEN88Q+6NLWkwwn5Byj1KQ+s7kFzj7C5/SWl4EJLS+IiUZb0Q6
	Yo09E1w5gxjVRxIuMCCajcGCnBRa6X/tY2YR7zfEjS5qiSpD6ffsTNtW1BJ3zdJb
	DroSf+RQzttoV3ZtN+x+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1723936018; x=
	1724022418; bh=qo/VEQoUCowjMbBmQ2mzn7sUgSRH6G2PSQMngpXvJd4=; b=b
	oxduwRWFLx1IKJygQx/SFGv7Ep9QGCyH71wh1TKsf8C1orCaEYeF6JaSP4ixrc7B
	yh2keE3kNhreEX1ExmzaBp+PwbewxreOQz9nfMNye1TBwNzktbTCkMhJpIQMKq+x
	WqzubFn0uxRkMcCPhha//odXlQuLvmSedSs6xAPx0VXcsnX6O5KE6of96YDUiWsk
	crfcJId6pje3jrsPOe23+N4KNaH+eUf6kWrSs57M/vpY3lQUNDOzgHEtRFaHBLGw
	vYzPgLbsXZO9C5G3Cb+j8Ca69eNDhlkw958XaqawKKjwDhLBfpuaXVhBT+Zf5oEj
	RLS4IKERW0kc0yt1qTMXQ==
X-ME-Sender: <xms:Ei3BZj0jeqRCJVSQ4C0eiefL9u5QDrLG0y0dLWHBcDAbCfSnrNyFvg>
    <xme:Ei3BZiHr221FwJctEaSzuLoN5IPOo2bOS7ftMTZp5raauBCOD4OUIXNRGr0APnO7n
    G2D9cqnHsPS-Sd8aQ>
X-ME-Received: <xmr:Ei3BZj4br7Px5jqRb7ItA90bFIinOz9OERj6xv-29pd3RmksdpYB5B3QR8uGSo3DKijCQ_HxxGEmMUx5uCpwm0AGns3RUDXoxEcdFjX-kRRvAeCb>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudduuddgudekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhephffvvefufffkofgjfhgggfestdekredtredttden
    ucfhrhhomheptfihrghnucghrghlkhhlihhnuceorhihrghnsehtvghsthhtohgrshhtrd
    gtohhmqeenucggtffrrghtthgvrhhnpeffheeiffegtdfgffejteevgeefkeelieelkeev
    ueetffetteduffevgeeiieehteenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmh
    epmhgrihhlfhhrohhmpehrhigrnhesthgvshhtthhorghsthdrtghomhdpnhgspghrtghp
    thhtohepvddvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehmrhhiphgrrhguse
    hkvghrnhgvlhdrohhrghdprhgtphhtthhopeifvghnshestghsihgvrdhorhhgpdhrtghp
    thhtohepmhgrrghrthgvnhdrlhgrnhhkhhhorhhstheslhhinhhugidrihhnthgvlhdrtg
    homhdprhgtphhtthhopehtiihimhhmvghrmhgrnhhnsehsuhhsvgdruggvpdhrtghpthht
    oheprghirhhlihgvugesghhmrghilhdrtghomhdprhgtphhtthhopegurghnihgvlhesfh
    hffihllhdrtghhpdhrtghpthhtohepjhgvrhhnvghjrdhskhhrrggsvggtsehgmhgrihhl
    rdgtohhmpdhrtghpthhtohepshgrmhhuvghlsehshhholhhlrghnugdrohhrghdprhgtph
    htthhopehrohgshheskhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:Ei3BZo25E_rDi4FnPMWocr2y5TgFwgrehuERi1vwZujhkPt1HTVKwQ>
    <xmx:Ei3BZmFzWsP4iz3Dgu1X5MEbvtwvZOnNJtEpCbwYUHpnwhGm8MVYdQ>
    <xmx:Ei3BZp_ifm0g32gS-fqZTmXHqCd9dl1fwk_ami7li7xEnLloSaEG3A>
    <xmx:Ei3BZjnp0t3klmvooBoeFa23mP7JwVC0NNjKlT1Qn-SG7YcyrtqYtw>
    <xmx:Ei3BZv2furnPAF1paWgrgbrK2tXPvXT45FHRfrCuLZeUkvHIY96Nnsrx>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 17 Aug 2024 19:06:51 -0400 (EDT)
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
Subject: [PATCH v3 11/26] drm: sun4i: de3: add YUV support to the TCON
Date: Sun, 18 Aug 2024 10:45:58 +1200
Message-ID: <20240817230503.158889-12-ryan@testtoast.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240817230503.158889-1-ryan@testtoast.com>
References: <20240817230503.158889-1-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jernej Skrabec <jernej.skrabec@gmail.com>

Account for U/V channel subsampling by reducing the dot clock and
resolution with a divider in the DE3 timing controller if a YUV format
is selected.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
---
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 26 +++++++++++++++++++-------
 1 file changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index a1a2c845ade0c..e39926e9f0b5d 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -598,14 +598,26 @@ static void sun4i_tcon0_mode_set_rgb(struct sun4i_tcon *tcon,
 static void sun4i_tcon1_mode_set(struct sun4i_tcon *tcon,
 				 const struct drm_display_mode *mode)
 {
-	unsigned int bp, hsync, vsync, vtotal;
+	unsigned int bp, hsync, vsync, vtotal, div;
+	struct sun4i_crtc *scrtc = tcon->crtc;
+	struct sunxi_engine *engine = scrtc->engine;
 	u8 clk_delay;
 	u32 val;
 
 	WARN_ON(!tcon->quirks->has_channel_1);
 
+	switch (engine->format) {
+	case MEDIA_BUS_FMT_UYYVYY8_0_5X24:
+	case MEDIA_BUS_FMT_UYYVYY10_0_5X30:
+		div = 2;
+		break;
+	default:
+		div = 1;
+		break;
+	}
+
 	/* Configure the dot clock */
-	clk_set_rate(tcon->sclk1, mode->crtc_clock * 1000);
+	clk_set_rate(tcon->sclk1, mode->crtc_clock * 1000 / div);
 
 	/* Adjust clock delay */
 	clk_delay = sun4i_tcon_get_clk_delay(mode, 1);
@@ -624,17 +636,17 @@ static void sun4i_tcon1_mode_set(struct sun4i_tcon *tcon,
 
 	/* Set the input resolution */
 	regmap_write(tcon->regs, SUN4I_TCON1_BASIC0_REG,
-		     SUN4I_TCON1_BASIC0_X(mode->crtc_hdisplay) |
+		     SUN4I_TCON1_BASIC0_X(mode->crtc_hdisplay / div) |
 		     SUN4I_TCON1_BASIC0_Y(mode->crtc_vdisplay));
 
 	/* Set the upscaling resolution */
 	regmap_write(tcon->regs, SUN4I_TCON1_BASIC1_REG,
-		     SUN4I_TCON1_BASIC1_X(mode->crtc_hdisplay) |
+		     SUN4I_TCON1_BASIC1_X(mode->crtc_hdisplay / div) |
 		     SUN4I_TCON1_BASIC1_Y(mode->crtc_vdisplay));
 
 	/* Set the output resolution */
 	regmap_write(tcon->regs, SUN4I_TCON1_BASIC2_REG,
-		     SUN4I_TCON1_BASIC2_X(mode->crtc_hdisplay) |
+		     SUN4I_TCON1_BASIC2_X(mode->crtc_hdisplay / div) |
 		     SUN4I_TCON1_BASIC2_Y(mode->crtc_vdisplay));
 
 	/* Set horizontal display timings */
@@ -642,8 +654,8 @@ static void sun4i_tcon1_mode_set(struct sun4i_tcon *tcon,
 	DRM_DEBUG_DRIVER("Setting horizontal total %d, backporch %d\n",
 			 mode->htotal, bp);
 	regmap_write(tcon->regs, SUN4I_TCON1_BASIC3_REG,
-		     SUN4I_TCON1_BASIC3_H_TOTAL(mode->crtc_htotal) |
-		     SUN4I_TCON1_BASIC3_H_BACKPORCH(bp));
+		     SUN4I_TCON1_BASIC3_H_TOTAL(mode->crtc_htotal / div) |
+		     SUN4I_TCON1_BASIC3_H_BACKPORCH(bp / div));
 
 	bp = mode->crtc_vtotal - mode->crtc_vsync_start;
 	DRM_DEBUG_DRIVER("Setting vertical total %d, backporch %d\n",
-- 
2.46.0


