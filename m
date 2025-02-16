Return-Path: <devicetree+bounces-147055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D851FA372C6
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 09:57:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 808011891C65
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 08:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CB2D16C687;
	Sun, 16 Feb 2025 08:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="gkN0CONh";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="rd3M4+x0"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-b6-smtp.messagingengine.com (fhigh-b6-smtp.messagingengine.com [202.12.124.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840CC1632DA;
	Sun, 16 Feb 2025 08:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739696249; cv=none; b=o9kgX5BNjPYQf0sQRJiYUtsxiF6K7u7P3a+VIOweiBVL17nHXpj4H5c1zR6wesxwWfUJIZ3cNXNG5lLlR9zNSWTQoi/vB3eBa6sqvpArvuXS7qK44PMmaz5OAZKJtqyi8e6nfYJGKiifLnnvrXfC0e10hlzZuUH2HONPaksmgxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739696249; c=relaxed/simple;
	bh=Bi86P9chYxL+vHw7dMaVTaaZeWKL5A6MvWZ2y4L7LsI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Mq4zwx8DqxyP6YqNXUZOznr7ihJzlE1MbyvsEdweiMwcItAQLBugFyHBrgSQDn5DkWG9KGIDV0cUZoMjpQ8vOBVgBwn78JEr+P1MCq67xaYeX473y65BnAYV5mb6CgZht2l3YN9HKVSohS3v1RdrMzQvUOnzXIJlm4TSSjHYixs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=gkN0CONh; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=rd3M4+x0; arc=none smtp.client-ip=202.12.124.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-01.internal (phl-compute-01.phl.internal [10.202.2.41])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 5883725400DB;
	Sun, 16 Feb 2025 03:57:26 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-01.internal (MEProxy); Sun, 16 Feb 2025 03:57:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1739696246; x=
	1739782646; bh=Lapfsb3FiLnPza68mRDAFmlXUk8udU/G5SDAzOzL5eM=; b=g
	kN0CONhN6DNVIEP4KordPvZ3YmNW5RFT6lXSjW4pi4IREuxdadfEj2z1edmwXIzp
	VJyTMpkRfgw12sgnPtLAKfWLoKAO3WECsbwf50dn/CI7wBDGqiaTj2FfIqMKaWQN
	h7zAlDLOeDSbs+pbI+baSZTgPiWED9zMEVGx0fAaXPfk2smEV+NOye22/+TptBVc
	VJJtilEPAZNh/cr+9FKbI2Lu4DOAdice71eW90bSB7+JY1vI7MOzFQiUVmeUOMLX
	wpBC0pRtfD5YtWl7OcJSECzD6W+m+xyJcJmidApFkE/2q6T8VaSibhyt1Q8wjQrl
	jwXzQFOwRJGH25CRp9PZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1739696246; x=1739782646; bh=L
	apfsb3FiLnPza68mRDAFmlXUk8udU/G5SDAzOzL5eM=; b=rd3M4+x0O9P2e8MXM
	ONPcb/fPOM02qM0FmhbIvw0wM5yfqxQOvzB+gT/pYPoh9NKGgv/+nctND+G3KU26
	UnnHo9osa0UB30WPPPBAvBbARo+KDj1vY+cnI2jsofRRADWrBuu93l1cX2OjE6JL
	D175bepCjSwFEHF8aXVAT8F/GHoZJa6PoLZbb93Ae1j6EjixVboW79SBD6dVMjCg
	W/m/MKsSu3OA+Y12HN1/Q87CsXqqkd1WKfmgscvF5WUOM3zRAYAbQ9Can/zdxE6v
	xnRx/+Pbowrf2TJN9k/u2yKyV0BIrZ+j3gKURvEYSQ/2jR/1AKKhJxk10dP9KuPX
	DlThQ==
X-ME-Sender: <xms:dqixZ758V7pT8SNAd0vq3R05e8tgGAszqDsXE8lLz2RBGHeolLFuOA>
    <xme:dqixZw7tcPyFIJP2lE_oAZllzT0BTna3BJ7thZajqhErI47P-UQgNOHfmptrO24YP
    9SV1iYPE9XJ7oFOIg>
X-ME-Received: <xmr:dqixZyfbV5UgispE_54uYBSwfppXVXRpMTsctjyGJo71XpCOSXlKcRJ-WkVJw9NlkDSTbwLHSO4VSEEV9Afrj74ss70-5hX-XoxzuIy2nRzn>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdehhedtgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddt
    necuhfhrohhmpefthigrnhcuhggrlhhklhhinhcuoehrhigrnhesthgvshhtthhorghsth
    drtghomheqnecuggftrfgrthhtvghrnhepffehieffgedtgfffjeetveegfeekleeileek
    veeuteffteetudffveegieeiheetnecuvehluhhsthgvrhfuihiivgepudenucfrrghrrg
    hmpehmrghilhhfrhhomheprhihrghnsehtvghsthhtohgrshhtrdgtohhmpdhnsggprhgt
    phhtthhopedvgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepmhhrihhprghrug
    eskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepfigvnhhssegtshhivgdrohhrghdprhgt
    phhtthhopehmrggrrhhtvghnrdhlrghnkhhhohhrshhtsehlihhnuhigrdhinhhtvghlrd
    gtohhmpdhrtghpthhtohepthiiihhmmhgvrhhmrghnnhesshhushgvrdguvgdprhgtphht
    thhopegrihhrlhhivggusehgmhgrihhlrdgtohhmpdhrtghpthhtohepuggrnhhivghlse
    hffhiflhhlrdgthhdprhgtphhtthhopehjvghrnhgvjhdrshhkrhgrsggvtgesghhmrghi
    lhdrtghomhdprhgtphhtthhopehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgpdhrtg
    hpthhtoheprhhosghhsehkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:dqixZ8LFJKRAt5sDU3G8jqH4B2WlP61AgTdiUSjNqsnAGsGc2l-qrw>
    <xmx:dqixZ_JDcLTQcmkzZQh2InBDIGa30FYR8_jYCvglocVsuHmdOZJhcg>
    <xmx:dqixZ1z21rBrEA2O7j4V92vpBOWiqGnHw_P-YrC6QdUSa9BKLFAXlw>
    <xmx:dqixZ7IeS8TSisAR17QnHW1Rm5wPbcxXmHo1Bxm8oqt9dpf2bRzGzw>
    <xmx:dqixZ85cZg-Cfaqg8E4gwflP-wXPqos7G_JH78TbXa28dVlKBKDdCfvv>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 16 Feb 2025 03:57:19 -0500 (EST)
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
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Philippe Simons <simons.philippe@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Ryan Walklin <ryan@testtoast.com>
Subject: [PATCH v6 14/27] drm: sun4i: de2/de3: add mixer version enum
Date: Sun, 16 Feb 2025 21:50:45 +1300
Message-ID: <20250216085432.6373-16-ryan@testtoast.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250216085432.6373-2-ryan@testtoast.com>
References: <20250216085432.6373-2-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jernej Skrabec <jernej.skrabec@gmail.com>

The Allwinner DE2 and DE3 display engine mixers are currently identified
by a simple boolean flag. This will not scale to support additional DE
variants.

Convert the boolean flag to an enum.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>

--
Changelog v5..v6:
- Update struct comment regarding change from is_de3 flag to de_type
---
 drivers/gpu/drm/sun4i/sun8i_csc.c       |  2 +-
 drivers/gpu/drm/sun4i/sun8i_mixer.c     | 14 +++++++++++--
 drivers/gpu/drm/sun4i/sun8i_mixer.h     | 27 +++++++++++++++----------
 drivers/gpu/drm/sun4i/sun8i_ui_scaler.c |  2 +-
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c  |  8 ++++----
 drivers/gpu/drm/sun4i/sun8i_vi_scaler.c |  4 ++--
 6 files changed, 36 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_csc.c b/drivers/gpu/drm/sun4i/sun8i_csc.c
index 0db946ef30b1b..53b00fbf6f332 100644
--- a/drivers/gpu/drm/sun4i/sun8i_csc.c
+++ b/drivers/gpu/drm/sun4i/sun8i_csc.c
@@ -352,7 +352,7 @@ void sun8i_csc_set_ccsc(struct sun8i_mixer *mixer, int layer,
 {
 	u32 base;
 
-	if (mixer->cfg->is_de3) {
+	if (mixer->cfg->de_type == sun8i_mixer_de3) {
 		sun8i_de3_ccsc_setup(mixer, layer,
 				     fmt_type, encoding, range);
 		return;
diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 3069329210085..ea1f477700d4a 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -584,7 +584,7 @@ static int sun8i_mixer_bind(struct device *dev, struct device *master,
 	base = sun8i_blender_base(mixer);
 
 	/* Reset registers and disable unused sub-engines */
-	if (mixer->cfg->is_de3) {
+	if (mixer->cfg->de_type == sun8i_mixer_de3) {
 		for (i = 0; i < DE3_MIXER_UNIT_SIZE; i += 4)
 			regmap_write(mixer->engine.regs, i, 0);
 
@@ -675,6 +675,7 @@ static void sun8i_mixer_remove(struct platform_device *pdev)
 
 static const struct sun8i_mixer_cfg sun8i_a83t_mixer0_cfg = {
 	.ccsc		= CCSC_MIXER0_LAYOUT,
+	.de_type	= sun8i_mixer_de2,
 	.scaler_mask	= 0xf,
 	.scanline_yuv	= 2048,
 	.ui_num		= 3,
@@ -683,6 +684,7 @@ static const struct sun8i_mixer_cfg sun8i_a83t_mixer0_cfg = {
 
 static const struct sun8i_mixer_cfg sun8i_a83t_mixer1_cfg = {
 	.ccsc		= CCSC_MIXER1_LAYOUT,
+	.de_type	= sun8i_mixer_de2,
 	.scaler_mask	= 0x3,
 	.scanline_yuv	= 2048,
 	.ui_num		= 1,
@@ -691,6 +693,7 @@ static const struct sun8i_mixer_cfg sun8i_a83t_mixer1_cfg = {
 
 static const struct sun8i_mixer_cfg sun8i_h3_mixer0_cfg = {
 	.ccsc		= CCSC_MIXER0_LAYOUT,
+	.de_type	= sun8i_mixer_de2,
 	.mod_rate	= 432000000,
 	.scaler_mask	= 0xf,
 	.scanline_yuv	= 2048,
@@ -700,6 +703,7 @@ static const struct sun8i_mixer_cfg sun8i_h3_mixer0_cfg = {
 
 static const struct sun8i_mixer_cfg sun8i_r40_mixer0_cfg = {
 	.ccsc		= CCSC_MIXER0_LAYOUT,
+	.de_type	= sun8i_mixer_de2,
 	.mod_rate	= 297000000,
 	.scaler_mask	= 0xf,
 	.scanline_yuv	= 2048,
@@ -709,6 +713,7 @@ static const struct sun8i_mixer_cfg sun8i_r40_mixer0_cfg = {
 
 static const struct sun8i_mixer_cfg sun8i_r40_mixer1_cfg = {
 	.ccsc		= CCSC_MIXER1_LAYOUT,
+	.de_type	= sun8i_mixer_de2,
 	.mod_rate	= 297000000,
 	.scaler_mask	= 0x3,
 	.scanline_yuv	= 2048,
@@ -717,6 +722,7 @@ static const struct sun8i_mixer_cfg sun8i_r40_mixer1_cfg = {
 };
 
 static const struct sun8i_mixer_cfg sun8i_v3s_mixer_cfg = {
+	.de_type = sun8i_mixer_de2,
 	.vi_num = 2,
 	.ui_num = 1,
 	.scaler_mask = 0x3,
@@ -727,6 +733,7 @@ static const struct sun8i_mixer_cfg sun8i_v3s_mixer_cfg = {
 
 static const struct sun8i_mixer_cfg sun20i_d1_mixer0_cfg = {
 	.ccsc		= CCSC_D1_MIXER0_LAYOUT,
+	.de_type	= sun8i_mixer_de2,
 	.mod_rate	= 297000000,
 	.scaler_mask	= 0x3,
 	.scanline_yuv	= 2048,
@@ -736,6 +743,7 @@ static const struct sun8i_mixer_cfg sun20i_d1_mixer0_cfg = {
 
 static const struct sun8i_mixer_cfg sun20i_d1_mixer1_cfg = {
 	.ccsc		= CCSC_MIXER1_LAYOUT,
+	.de_type	= sun8i_mixer_de2,
 	.mod_rate	= 297000000,
 	.scaler_mask	= 0x1,
 	.scanline_yuv	= 1024,
@@ -745,6 +753,7 @@ static const struct sun8i_mixer_cfg sun20i_d1_mixer1_cfg = {
 
 static const struct sun8i_mixer_cfg sun50i_a64_mixer0_cfg = {
 	.ccsc		= CCSC_MIXER0_LAYOUT,
+	.de_type	= sun8i_mixer_de2,
 	.mod_rate	= 297000000,
 	.scaler_mask	= 0xf,
 	.scanline_yuv	= 4096,
@@ -754,6 +763,7 @@ static const struct sun8i_mixer_cfg sun50i_a64_mixer0_cfg = {
 
 static const struct sun8i_mixer_cfg sun50i_a64_mixer1_cfg = {
 	.ccsc		= CCSC_MIXER1_LAYOUT,
+	.de_type	= sun8i_mixer_de2,
 	.mod_rate	= 297000000,
 	.scaler_mask	= 0x3,
 	.scanline_yuv	= 2048,
@@ -763,7 +773,7 @@ static const struct sun8i_mixer_cfg sun50i_a64_mixer1_cfg = {
 
 static const struct sun8i_mixer_cfg sun50i_h6_mixer0_cfg = {
 	.ccsc		= CCSC_MIXER0_LAYOUT,
-	.is_de3		= true,
+	.de_type	= sun8i_mixer_de3,
 	.has_formatter	= 1,
 	.mod_rate	= 600000000,
 	.scaler_mask	= 0xf,
diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.h b/drivers/gpu/drm/sun4i/sun8i_mixer.h
index 5f465a974fbdf..baf2d024898a9 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.h
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.h
@@ -152,6 +152,11 @@ enum {
 	CCSC_D1_MIXER0_LAYOUT,
 };
 
+enum sun8i_mixer_type {
+	sun8i_mixer_de2,
+	sun8i_mixer_de3,
+};
+
 /**
  * struct sun8i_mixer_cfg - mixer HW configuration
  * @vi_num: number of VI channels
@@ -163,19 +168,19 @@ enum {
  * @ccsc: select set of CCSC base addresses from the enumeration above.
  * @mod_rate: module clock rate that needs to be set in order to have
  *	a functional block.
- * @is_de3: true, if this is next gen display engine 3.0, false otherwise.
+ * @de_type: sun8i_mixer_type enum representing the display engine generation.
  * @has_formatter: true, if mixer has formatter core, for 10-bit and YUV handling
  * @scaline_yuv: size of a scanline for VI scaler for YUV formats.
  */
 struct sun8i_mixer_cfg {
-	int		vi_num;
-	int		ui_num;
-	int		scaler_mask;
-	int		ccsc;
-	unsigned long	mod_rate;
-	unsigned int	is_de3 : 1;
-	unsigned int    has_formatter : 1;
-	unsigned int	scanline_yuv;
+	int			vi_num;
+	int			ui_num;
+	int			scaler_mask;
+	int			ccsc;
+	unsigned long		mod_rate;
+	unsigned int		de_type;
+	unsigned int		has_formatter : 1;
+	unsigned int		scanline_yuv;
 };
 
 struct sun8i_color_model {
@@ -227,13 +232,13 @@ engine_to_sun8i_mixer(struct sunxi_engine *engine)
 static inline u32
 sun8i_blender_base(struct sun8i_mixer *mixer)
 {
-	return mixer->cfg->is_de3 ? DE3_BLD_BASE : DE2_BLD_BASE;
+	return mixer->cfg->de_type == sun8i_mixer_de3 ? DE3_BLD_BASE : DE2_BLD_BASE;
 }
 
 static inline u32
 sun8i_channel_base(struct sun8i_mixer *mixer, int channel)
 {
-	if (mixer->cfg->is_de3)
+	if (mixer->cfg->de_type == sun8i_mixer_de3)
 		return DE3_CH_BASE + channel * DE3_CH_SIZE;
 	else
 		return DE2_CH_BASE + channel * DE2_CH_SIZE;
diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_scaler.c b/drivers/gpu/drm/sun4i/sun8i_ui_scaler.c
index ae0806bccac7f..504ffa0971a4f 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_scaler.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_scaler.c
@@ -93,7 +93,7 @@ static u32 sun8i_ui_scaler_base(struct sun8i_mixer *mixer, int channel)
 {
 	int vi_num = mixer->cfg->vi_num;
 
-	if (mixer->cfg->is_de3)
+	if (mixer->cfg->de_type == sun8i_mixer_de3)
 		return DE3_VI_SCALER_UNIT_BASE +
 		       DE3_VI_SCALER_UNIT_SIZE * vi_num +
 		       DE3_UI_SCALER_UNIT_SIZE * (channel - vi_num);
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index 3c657b069d1f4..4647e9bcccaa7 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -25,7 +25,7 @@ static void sun8i_vi_layer_update_alpha(struct sun8i_mixer *mixer, int channel,
 
 	ch_base = sun8i_channel_base(mixer, channel);
 
-	if (mixer->cfg->is_de3) {
+	if (mixer->cfg->de_type >= sun8i_mixer_de3) {
 		mask = SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MASK |
 		       SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_MASK;
 		val = SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA
@@ -483,7 +483,7 @@ struct sun8i_layer *sun8i_vi_layer_init_one(struct drm_device *drm,
 	layer->channel = index;
 	layer->overlay = 0;
 
-	if (mixer->cfg->is_de3) {
+	if (mixer->cfg->de_type >= sun8i_mixer_de3) {
 		formats = sun8i_vi_layer_de3_formats;
 		format_count = ARRAY_SIZE(sun8i_vi_layer_de3_formats);
 	} else {
@@ -507,7 +507,7 @@ struct sun8i_layer *sun8i_vi_layer_init_one(struct drm_device *drm,
 
 	plane_cnt = mixer->cfg->ui_num + mixer->cfg->vi_num;
 
-	if (mixer->cfg->vi_num == 1 || mixer->cfg->is_de3) {
+	if (mixer->cfg->vi_num == 1 || mixer->cfg->de_type >= sun8i_mixer_de3) {
 		ret = drm_plane_create_alpha_property(&layer->plane);
 		if (ret) {
 			dev_err(drm->dev, "Couldn't add alpha property\n");
@@ -524,7 +524,7 @@ struct sun8i_layer *sun8i_vi_layer_init_one(struct drm_device *drm,
 
 	supported_encodings = BIT(DRM_COLOR_YCBCR_BT601) |
 			      BIT(DRM_COLOR_YCBCR_BT709);
-	if (mixer->cfg->is_de3)
+	if (mixer->cfg->de_type >= sun8i_mixer_de3)
 		supported_encodings |= BIT(DRM_COLOR_YCBCR_BT2020);
 
 	supported_ranges = BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c b/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
index 2e49a6e5f1f1c..aa346c3beb303 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
@@ -835,7 +835,7 @@ static const u32 bicubic4coefftab32[480] = {
 
 static u32 sun8i_vi_scaler_base(struct sun8i_mixer *mixer, int channel)
 {
-	if (mixer->cfg->is_de3)
+	if (mixer->cfg->de_type == sun8i_mixer_de3)
 		return DE3_VI_SCALER_UNIT_BASE +
 		       DE3_VI_SCALER_UNIT_SIZE * channel;
 	else
@@ -982,7 +982,7 @@ void sun8i_vi_scaler_setup(struct sun8i_mixer *mixer, int layer,
 		cvphase = vphase;
 	}
 
-	if (mixer->cfg->is_de3) {
+	if (mixer->cfg->de_type >= sun8i_mixer_de3) {
 		u32 val;
 
 		if (format->hsub == 1 && format->vsub == 1)
-- 
2.48.1


