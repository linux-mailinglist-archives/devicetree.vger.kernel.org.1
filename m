Return-Path: <devicetree+bounces-94489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABF0955A42
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 01:08:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF0701C20B4E
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 23:08:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5246615623B;
	Sat, 17 Aug 2024 23:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="bLUqfq+w";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="gsN6SRWF"
X-Original-To: devicetree@vger.kernel.org
Received: from fout6-smtp.messagingengine.com (fout6-smtp.messagingengine.com [103.168.172.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD9E15624C;
	Sat, 17 Aug 2024 23:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723936124; cv=none; b=FDneSp850uFNqEuzD+gLhJsghFPpwbDNFFVhI3ofV8MFjp3+tCMUM4kqkg5mUnZnJDpTsYXayIqfZ3PExoKwgEMM3RP6hflX46G4hTUiHyGLgx6D8ATwyzLniPe95GpH84jRHZELS+VlGZHbky+Wq8E2cD2YtWI/Yn1SEGgY8bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723936124; c=relaxed/simple;
	bh=i6/GqgOFx3qhSQca6Jdevm5sISiG2P7R1pVHoycItgs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HduNbU9pAwUWUOCDgAnGw13teh61MaejcutSDHIvDt2ONbGOnpJ578ggblhpeURyGNg2FnuG2jAO8JTQ+eNTecDsdVclLVYJIe6lIJo14Zqn0QZ18mVWNrS7vo9RGtII5P53IwEi96DZT0Dr5ZiO0oGq91zdGLw+oVsEPLn6CGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=bLUqfq+w; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=gsN6SRWF; arc=none smtp.client-ip=103.168.172.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-05.internal (phl-compute-05.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id 17C82138E14A;
	Sat, 17 Aug 2024 19:08:42 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Sat, 17 Aug 2024 19:08:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1723936122; x=
	1724022522; bh=YBpPNAKphXO049YWIXSeZ6qtTkpF7NVXa/Ter4IbJxk=; b=b
	LUqfq+wNO8aJHBTdYPV2nbER3KL6T5IpwLT6Ml+xYGKT8SI2ye2WrlKAN58dfUJM
	3rlgB2RY9OMu0kjU3Q+0PDpHsItizzLPTqw+jsCZ0AMc5lKCyxIEWzVx+DdwPgpF
	yYULZNG7tVUT1+L81ZDS7RTWRmFMnOb1eDZxZNT+N0Qe3QAHQjwcQDPtSqNDOU4J
	eGe+DJUff9pYebCfWfq39lM99K/Y7aibM4duCC/il7SAs0Gp5oN/oWUAnN3uXy9a
	XBK8GQuJeLGHAZVYg+jvKIw4gnydoDZV+ckjTp7IQ0JKKbHuULcpYh//yhGOKFs4
	NLKOnFwwButTW8mfsBrmQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1723936122; x=
	1724022522; bh=YBpPNAKphXO049YWIXSeZ6qtTkpF7NVXa/Ter4IbJxk=; b=g
	sN6SRWFHVD2J/AvX7sgPeSK6+08nd2vvJQg8SmgsW6iucoY/5vqjtAxLyUag2zYV
	IOSNwiGvP9L/bfUwz+ZbCer1Sjzinf7sMI2SKmgOONhGTCQeVEtcX3kJjYzQi3+M
	7FO82w7Dx/NyOQNT5YMWT5KX9vvLhMaVt/LUl2x3W04eW0FhFMZHqX3NSJX49j3N
	YS1pS5LcH2FOnC2Cx4NAmSgOF9dQ/+C3xzM3B+Gr3ttfrLBHy0AwPAq/1o0D+1HM
	sPBP60Wqm9kkWRJo01YVZzNx3TCcJljX3FLNN4FT4zG1xj6bhz6r87pfmu/W3+OV
	/AWcA8pfav39lRHxTSucw==
X-ME-Sender: <xms:eS3BZgGUUWmjPew09uQnHm8cHLLVrKb1aat6FZw82D7FZ7aFwdt6qg>
    <xme:eS3BZpUGl7mmW0xzEEYbgxE6by0lautLPj3Hq3qjapvx3DPFgAqzhAZzaCM8JjFvL
    W7DSaPmEJjDlXmVYQ>
X-ME-Received: <xmr:eS3BZqID9PNvdcRkQub4r1zEi7pFp8Minw4FgNuHbd31QqHpxdrIQLwgx-S1Nl6pBeMmRqiSPrmbm3IhU7v_pSlClEKBxjJpMI63o6xHTj7K6ZQ_>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudduuddgudelucetufdoteggodetrfdotf
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
X-ME-Proxy: <xmx:ei3BZiGEZDRhntLjT2-AIgC1Lc3_QF51gdrcPjXs6dHgXfeziQJRGA>
    <xmx:ei3BZmWsMUbiNmM2tY8IP-z-jOnKN2A7mr2fmX8O8v6IqaocmiV3rA>
    <xmx:ei3BZlPBC4hgXvKsPDRQjUdrnBeqtwqhDTgcBrthQh8Or_4elzvm9g>
    <xmx:ei3BZt1z0yFMK9BpiOAZFNFRewl5ZMIF8g7ipbKQXWNl_CS9lsupng>
    <xmx:ei3BZsHCjcz3ftpxUTWS81gMDCaZudgJ3vXQe4cvfqJMxsc8Ft6899gM>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 17 Aug 2024 19:08:35 -0400 (EDT)
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
Subject: [PATCH v3 25/26] drm: sun4i: de33: fmt: add Display Engine 3.3 (DE33) support
Date: Sun, 18 Aug 2024 10:46:12 +1200
Message-ID: <20240817230503.158889-26-ryan@testtoast.com>
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

Like the DE3, the DE33 has a FMT (formatter) module, which
provides YUV444 to YUV422/YUV420 conversion, format re-mapping and color
depth conversion, although the DE33 module appears significantly more
capable, including up to 4K video support.

Add support for the DE33.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
---
 drivers/gpu/drm/sun4i/sun50i_fmt.c | 21 +++++++++++++++++++--
 drivers/gpu/drm/sun4i/sun50i_fmt.h |  1 +
 2 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun50i_fmt.c b/drivers/gpu/drm/sun4i/sun50i_fmt.c
index 050a8716ae862..39682d4e6d208 100644
--- a/drivers/gpu/drm/sun4i/sun50i_fmt.c
+++ b/drivers/gpu/drm/sun4i/sun50i_fmt.c
@@ -51,6 +51,19 @@ static void sun50i_fmt_de3_limits(u32 *limits, u32 colorspace, bool bit10)
 	}
 }
 
+static void sun50i_fmt_de33_limits(u32 *limits, u32 colorspace)
+{
+	if (colorspace == SUN50I_FMT_CS_YUV444RGB) {
+		limits[0] = SUN50I_FMT_LIMIT(0, 4095);
+		limits[1] = SUN50I_FMT_LIMIT(0, 4095);
+		limits[2] = SUN50I_FMT_LIMIT(0, 4095);
+	} else {
+		limits[0] = SUN50I_FMT_LIMIT(256, 3840);
+		limits[1] = SUN50I_FMT_LIMIT(256, 3840);
+		limits[2] = SUN50I_FMT_LIMIT(256, 3840);
+	}
+}
+
 void sun50i_fmt_setup(struct sun8i_mixer *mixer, u16 width,
 		      u16 height, u32 format)
 {
@@ -60,10 +73,14 @@ void sun50i_fmt_setup(struct sun8i_mixer *mixer, u16 width,
 
 	colorspace = sun50i_fmt_get_colorspace(format);
 	bit10 = sun50i_fmt_is_10bit(format);
-	base = SUN50I_FMT_DE3;
+	base = mixer->cfg->de_type == sun8i_mixer_de3 ?
+		SUN50I_FMT_DE3 : SUN50I_FMT_DE33;
 	regs = sun8i_blender_regmap(mixer);
 
-	sun50i_fmt_de3_limits(limit, colorspace, bit10);
+	if (mixer->cfg->de_type == sun8i_mixer_de3)
+		sun50i_fmt_de3_limits(limit, colorspace, bit10);
+	else
+		sun50i_fmt_de33_limits(limit, colorspace);
 
 	regmap_write(regs, SUN50I_FMT_CTRL(base), 0);
 
diff --git a/drivers/gpu/drm/sun4i/sun50i_fmt.h b/drivers/gpu/drm/sun4i/sun50i_fmt.h
index 4127f7206aade..3e60d5c788b39 100644
--- a/drivers/gpu/drm/sun4i/sun50i_fmt.h
+++ b/drivers/gpu/drm/sun4i/sun50i_fmt.h
@@ -9,6 +9,7 @@
 #include "sun8i_mixer.h"
 
 #define SUN50I_FMT_DE3 0xa8000
+#define SUN50I_FMT_DE33 0x5000
 
 #define SUN50I_FMT_CTRL(base)   ((base) + 0x00)
 #define SUN50I_FMT_SIZE(base)   ((base) + 0x04)
-- 
2.46.0


