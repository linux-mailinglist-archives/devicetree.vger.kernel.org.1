Return-Path: <devicetree+bounces-106127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D83989422
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2024 11:12:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F8ED28653F
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2024 09:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA37613959D;
	Sun, 29 Sep 2024 09:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="B3SY8x0q";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="KG8ymsi+"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a3-smtp.messagingengine.com (fout-a3-smtp.messagingengine.com [103.168.172.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB5413C827;
	Sun, 29 Sep 2024 09:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727601127; cv=none; b=e0D6Uat7t2A+DP7DhCC0Lb9sOhC+g9tx6Tu5aIgQlK18DymTXkI3nOsD5ond1x1nHFshMgPdWIv402Cj47+l9zLFTO7qNL0RcwG/yiWHnUOGnzXOtcIbuXVt5Ik+yj+z5AJc8lBTqJ5GvL1hyYktNC2QdYBjB68zqjDADBnVueU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727601127; c=relaxed/simple;
	bh=NdzxED1Ino9WA7QdHuWGkl9fEhK3Mqt/QXJ6ImTAZYU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oHmjr1uUmfFlVwGETX0jAYoEX4Y+4Jde8jB8cWYPQZi7sp92gtBHHb+n5rbvEgGbCFqwD7ha/DkeiXPMX9ZBsBSwPrbmrlqgXMn82qZECX/UBMovkVVEhVx7+kdPtaKzt7+ViBYbTE98NVm4M/S1brIKh6qqT5b+RqsB8YVOkrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=B3SY8x0q; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=KG8ymsi+; arc=none smtp.client-ip=103.168.172.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-12.internal (phl-compute-12.phl.internal [10.202.2.52])
	by mailfout.phl.internal (Postfix) with ESMTP id 5750C13802B6;
	Sun, 29 Sep 2024 05:12:05 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-12.internal (MEProxy); Sun, 29 Sep 2024 05:12:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1727601125; x=
	1727687525; bh=3QPNGe1zZiKhzuTyCeTHAjPsIfSM0kDD9Pg1n81Bevg=; b=B
	3SY8x0qqVYpj2JSvaYl6PDtXAoaB/9iuiG5ycnsjdqjtJ+DF3E9VukgHV0yHvqSH
	uabjHdjiQSWBOMzOrGXSGkRgocYbkB2oLc2DOCDC8bGNRNrFmkHFrDRzmFPvhm37
	L4E0wFRvSNl0BYGURdG6GJV8UxYVVBexvGYeAj3Is9+hxEqEr5nbs+VfLckgd0+C
	z6aE5J6GGQ9zrKQ9cItqBRv6EhRFuvLb4EbSLqRlmzQOHnGIA3aqY64TqKqbNUMs
	iJ16kls4+3L6xMriYHj7WfQ8N93hQXR/rfRxLfCyHUR+8yKlAq5Rf3HPjGdS8424
	wSj44nDYzb/w57V7e1Ypg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1727601125; x=
	1727687525; bh=3QPNGe1zZiKhzuTyCeTHAjPsIfSM0kDD9Pg1n81Bevg=; b=K
	G8ymsi+jFxk2Vbpi574WsA8C5tsNGql7H2qY52eYtdBsfTF16bGHnoPNTzTQ9DB4
	2QA92ih/azy6I/BTe20097v/iYgtYUsfTv+e6gFxzRI+4wGSHkqlstI5IbffpIjf
	x3WIplVxHrQDLIT98qO+K+TZWbMiopqT6HtKbYIOR12vJ+QxsVptR1BdwAq4W8MZ
	rfYNv4o1X/32f6D7RTxNL27VgrKShFBeUzgrmvgPDH12Et+c12jHqqL1t3LVS402
	RQUhS+3vkq5rTR6Z0TzuhZM+KJWx1+6/fRKyrIuWhfwU/aT+GRb5QIXNkxo73Je7
	gMdiyzjQ6TjmCYtVyBGyA==
X-ME-Sender: <xms:5Bn5ZguWsbWMCCwyFVMjfiUppX15dUPjJY3_9-XupvzN63nOMEvSPg>
    <xme:5Bn5ZtfghA1dRB18q2n7rdwIXjEHZ31V16cmm7F8IAI72AzDrHT7tBVRqLnVB-Ozh
    KFMgBdGEyKuDtTRBw>
X-ME-Received: <xmr:5Bn5Zrw9KdPB-UP34qz2R2bgtFzkwCxBl73xqKOvAdyFeF7hfSY9R6P0h8a6Vcn6UXLJb6BbbRYBJ-N7HSF3ekV2oEOTBNM39rGVpfm8LObOOJ4m>
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
X-ME-Proxy: <xmx:5Rn5ZjOdOSzXhc3ZxlwIbC6--mWCXRcqp38t7WXAYSCqFB5UKpuqWg>
    <xmx:5Rn5Zg-FC_lL0hyBqVgrS2AzHMLVheQxKrfepPMNuPcVJhmFA3ZCFA>
    <xmx:5Rn5ZrW9LZDBbv6QqJzu1fSwXYiv30vH2DcpYHI2f8D8fe4SNB2ikw>
    <xmx:5Rn5Zpf1Y8eXpUP4IuVU9E4fZ-ebj460yOjFdKRfDbDkR02eCBXNGw>
    <xmx:5Rn5Zul6WyV0MK1XI2iofkoHn_o58B9FpWwnv4voRY4OAhJ9Fh08epyk>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 29 Sep 2024 05:11:59 -0400 (EDT)
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
Subject: [PATCH v5 06/26] drm: sun4i: de3: add format enumeration function to engine
Date: Sun, 29 Sep 2024 22:04:38 +1300
Message-ID: <20240929091107.838023-7-ryan@testtoast.com>
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

The DE3 display engine supports YUV formats in addition to RGB.

Add an optional format enumeration function to the engine.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
---
 drivers/gpu/drm/sun4i/sunxi_engine.h | 29 ++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sunxi_engine.h b/drivers/gpu/drm/sun4i/sunxi_engine.h
index ec0c4932f15cf..c48cbc1aceb80 100644
--- a/drivers/gpu/drm/sun4i/sunxi_engine.h
+++ b/drivers/gpu/drm/sun4i/sunxi_engine.h
@@ -123,6 +123,17 @@ struct sunxi_engine_ops {
 	 */
 	void (*mode_set)(struct sunxi_engine *engine,
 			 const struct drm_display_mode *mode);
+
+	/**
+	 * @get_supported_fmts
+	 *
+	 * This callback is used to enumerate all supported output
+	 * formats by the engine. They are used for bridge format
+	 * negotiation.
+	 *
+	 * This function is optional.
+	 */
+	u32 *(*get_supported_fmts)(struct sunxi_engine *engine, u32 *num);
 };
 
 /**
@@ -215,4 +226,22 @@ sunxi_engine_mode_set(struct sunxi_engine *engine,
 	if (engine->ops && engine->ops->mode_set)
 		engine->ops->mode_set(engine, mode);
 }
+
+/**
+ * sunxi_engine_get_supported_formats - Provide array of supported formats
+ * @engine:	pointer to the engine
+ * @num:	pointer to variable, which will hold number of formats
+ *
+ * This list can be used for format negotiation by bridge.
+ */
+static inline u32 *
+sunxi_engine_get_supported_formats(struct sunxi_engine *engine, u32 *num)
+{
+	if (engine->ops && engine->ops->get_supported_fmts)
+		return engine->ops->get_supported_fmts(engine, num);
+
+	*num = 0;
+
+	return NULL;
+}
 #endif /* _SUNXI_ENGINE_H_ */
-- 
2.46.1


