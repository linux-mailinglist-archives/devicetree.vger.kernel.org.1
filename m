Return-Path: <devicetree+bounces-147199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3ADA376EC
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 19:41:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF2BB167E28
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 18:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0E451A08A6;
	Sun, 16 Feb 2025 18:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="rTVis3JI";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="CDHvsdkx"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-b4-smtp.messagingengine.com (fhigh-b4-smtp.messagingengine.com [202.12.124.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139A71A08A3;
	Sun, 16 Feb 2025 18:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739731267; cv=none; b=QDTTE9267SZg1sBXqP3iQGwddfSTbcaZXYs/Mckmir16PPurw78prP2AorNveMT7n6FNd2FWGZGZH8OI/k8Juw5w95iDabduHCO3pX9hCEfvJ1Xyf+Y59LNICx4Pw9kYFswn07Z6OpenCP6++rjK7YEcI7P/9QNUkMMJ6GB8qcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739731267; c=relaxed/simple;
	bh=ls1Ariv/blMzm0cXOEj9UvfC+7GGVrknKJ0knjqKKDM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Pow54kBVxDpC7LNGF93eysdCqINXuRZoyN2FNu1nK5Mo/ATsC0tfLaHhE0qt/PHD0dGbL6W9MuWaousNa3jceNzbnjhehW0ri+ioOcUEDVQx7fpT6rrvOtjIylwYHcmdng+QSdnPlJ4rFKv3MUAxvTcxp1xA0xlmORnPZoCGLxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=rTVis3JI; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=CDHvsdkx; arc=none smtp.client-ip=202.12.124.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-04.internal (phl-compute-04.phl.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 9E18D25400C3;
	Sun, 16 Feb 2025 13:41:04 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Sun, 16 Feb 2025 13:41:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1739731264; x=
	1739817664; bh=owmp13+PRVCZr2KaoeYEeTrebxFfw3J5vKLj7UHan04=; b=r
	TVis3JI6IbhMfm1QieteT8pxK+JNnJJqHZOj8G11xtF02VvlRS+n0zXzbRU00z73
	qqOEZa6orLbm9Bz9szRF69ziZazInZmaymroEwpwPAZLKqDlFfgCIArhDBjEc2dl
	sqpsjxLVIDCGuib/9KmXze/Vr7ZZMEcfokB1dwRwk0+GHvKrv3XFer9CWpMAkc9w
	GTx++CxHmsLFW75hCscKppQNn1XF93CUDBZMyk5TPQXNkxL+x0q08TdCmeiRasVV
	OvDlgPxHFg1qUCuaCXG+Rb+2zblyiCl4rHTy/rmsMJatj8qvceCZkmOHu9Uz4wU2
	mVQxccVLctVVcThw19XEg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1739731264; x=1739817664; bh=o
	wmp13+PRVCZr2KaoeYEeTrebxFfw3J5vKLj7UHan04=; b=CDHvsdkxRpy0jVxAq
	XBTVGKInAvrMW7XPYAy6fMpF6ye1isZtnQTxdqw7YMV4SHAKEo6B71qB0i1jy2JO
	7I+yLUMLu1A9288pQCGPSqid5nXzoUUZTRR/S/ySHxFdBZCcvZtZI8T2Y9Hm65a/
	NfcyHlUFIkFLXQKlWwWHrLRN9NvKxrf49kdZB+usu9E627OxR8CQyF7dJmF98cQf
	4EonyXMpcdkT+ATAkSCbsI2Arl8AgvDQ2lhXk4kcP2NvR4+Q9cWFWQU/ga4sRu/Q
	XpVOZwTxcpqdnW6j0CKxeRf90iRtEh8JpTtcQkOowSWeb2gdOPRr6cF3nygG4dPN
	h0T0A==
X-ME-Sender: <xms:QDGyZ6cxJagFtAykH6tESz9gRllSFGxHBkmeWmvk0dzAWmlr8AyvUg>
    <xme:QDGyZ0NKXOJWyA0PjVXkhDjM-1_SU9_eutUKXhW9PdmhQtnwqI9rjwJTOLqD3KGxg
    ACOm3ezfm_K2zhcSA>
X-ME-Received: <xmr:QDGyZ7goKNPYreRU7Al9hsahYhzV0FwtKC_iun2ZZ9h6v8F_8cpaH2bgkC9aa2DjGtklDOlLB9VR02Qymsl2AJ0283w7UWql8u9yzgEbn3WJ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdehiedvudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddt
    necuhfhrohhmpefthigrnhcuhggrlhhklhhinhcuoehrhigrnhesthgvshhtthhorghsth
    drtghomheqnecuggftrfgrthhtvghrnhepffehieffgedtgfffjeetveegfeekleeileek
    veeuteffteetudffveegieeiheetnecuvehluhhsthgvrhfuihiivgepieenucfrrghrrg
    hmpehmrghilhhfrhhomheprhihrghnsehtvghsthhtohgrshhtrdgtohhmpdhnsggprhgt
    phhtthhopedvgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepmhhrihhprghrug
    eskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepfigvnhhssegtshhivgdrohhrghdprhgt
    phhtthhopehmrggrrhhtvghnrdhlrghnkhhhohhrshhtsehlihhnuhigrdhinhhtvghlrd
    gtohhmpdhrtghpthhtohepthiiihhmmhgvrhhmrghnnhesshhushgvrdguvgdprhgtphht
    thhopegrihhrlhhivggusehgmhgrihhlrdgtohhmpdhrtghpthhtohepuggrnhhivghlse
    hffhiflhhlrdgthhdprhgtphhtthhopehjvghrnhgvjhdrshhkrhgrsggvtgesghhmrghi
    lhdrtghomhdprhgtphhtthhopehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgpdhrtg
    hpthhtoheprhhosghhsehkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:QDGyZ38SMlvf-tHTl3yeHir8qyUvT8mjlvw8v25IAMSO8vj00WTqug>
    <xmx:QDGyZ2u-Rzy7PB9o237_XGi3VN_YJzjxiki6RNlVfyMDQl6nIlHWVg>
    <xmx:QDGyZ-HRKvV62XWn_Fn9VBuN7roKoaDh0u52-ZuSWChx1KnapU8PZg>
    <xmx:QDGyZ1MU1ecz9r4Lfvbu2h6bNg0znOtaX1zMQx6aJ39pBCUFFaGyjA>
    <xmx:QDGyZ9_GqbTgZxX-PeHUpgf0dM2bSQERS2_p_j6JHPlxQJjE6xwdjn3Y>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 16 Feb 2025 13:40:57 -0500 (EST)
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
Subject: [PATCH v7 26/27] drm: sun4i: de33: fmt: add Display Engine 3.3 (DE33) support
Date: Mon, 17 Feb 2025 07:36:26 +1300
Message-ID: <20250216183710.8443-27-ryan@testtoast.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250216183710.8443-3-ryan@testtoast.com>
References: <20250216183710.8443-3-ryan@testtoast.com>
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
index 376a3c9b993f4..03d5d7132d1aa 100644
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
 void sun50i_fmt_setup(struct sun8i_mixer *mixer, u16 width, u16 height)
 {
 	u32 colorspace, limit[3], base;
@@ -61,10 +74,14 @@ void sun50i_fmt_setup(struct sun8i_mixer *mixer, u16 width, u16 height)
 	format = mixer->color_model.format;
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
index dd6816c90dfcd..e15f9803b3574 100644
--- a/drivers/gpu/drm/sun4i/sun50i_fmt.h
+++ b/drivers/gpu/drm/sun4i/sun50i_fmt.h
@@ -9,6 +9,7 @@
 #include "sun8i_mixer.h"
 
 #define SUN50I_FMT_DE3 0xa8000
+#define SUN50I_FMT_DE33 0x5000
 
 #define SUN50I_FMT_CTRL(base)   ((base) + 0x00)
 #define SUN50I_FMT_SIZE(base)   ((base) + 0x04)
-- 
2.48.1


