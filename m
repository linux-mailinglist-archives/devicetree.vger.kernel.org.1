Return-Path: <devicetree+bounces-197920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4437CB0B459
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 10:51:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC0093B94AB
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 08:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CCF81E32A2;
	Sun, 20 Jul 2025 08:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="bSUMvM7e";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="jYr+wwFI"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899D71E008B
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 08:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753001494; cv=none; b=pakJtD2YXfL0Z4FHRWqnrNa8pg4fMAcWcFHRFnIK3DbNoeOCyy6/Tekph6tRfBg4Zu2M3o9gdZQeAasWMshmt/zTpZNEhVvE1zkayc5n9d4swh1gGglJKf3Xn75GoRS1ld6PIoyBa8i7h5gPdocv7pcuf2S5Qz2Wj7bIMpd4AWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753001494; c=relaxed/simple;
	bh=YRwxXk/APU6Lc92K/t2h4p4Nj/ALQ9OOSq9nF+cx1hE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EXfAp2qX/vnF4TBo+mhcUoUWN3flpPZ2H2cRzjgVCtYhoJ3TtO4IFdgCys0tdhTi2brU0mdPTDoZ17TrY8V4SZmAILSOXNLmvV0Q6mPTm1TKPiRw0CqKgqM2nWv6zRDgnfZB7F/0E2dzIsym+hXpOhrf+nIZISI/r7nPKs8gsuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=bSUMvM7e; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=jYr+wwFI; arc=none smtp.client-ip=202.12.124.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-09.internal (phl-compute-09.phl.internal [10.202.2.49])
	by mailfout.stl.internal (Postfix) with ESMTP id 52AC41D00162;
	Sun, 20 Jul 2025 04:51:31 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-09.internal (MEProxy); Sun, 20 Jul 2025 04:51:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1753001491; x=
	1753087891; bh=hlPZgFzf2NXFW3QntPWHKb62LQJwz9K5qw8/HEhsnjE=; b=b
	SUMvM7ezJwkUNXho4kCKO6iVkQUUzLVW+YmKEDOGi3QCWAKkP0S13/BBifSjBH5e
	ELvI1ED5LmVVJgVLu/OiVDHR5WQdn02ZrHsYdE6rmJrj6s+9Hqkl6dxnR5TBGzXJ
	qgGx1De2mMJeAzs8AzPgZSdZxhHNpikaF+u9XKOvgnTm53UcTN3vfzMPZtgV/Yph
	IC7pqPGuEXgFP7q3rr8WpRBJ82ffItsLyudIswgsc+YGymduh4ho49WtQwUSX2ro
	EZub8WBQfCa1WrN2eHPce+HWOgWk1CMGQY5hDk+4x8Ou1keeGkp9HDXSC4HCP0YT
	UDFPo9bm8wEzwwTCbVPvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1753001491; x=1753087891; bh=h
	lPZgFzf2NXFW3QntPWHKb62LQJwz9K5qw8/HEhsnjE=; b=jYr+wwFIsMwHfbwD9
	LZeNcnX9CrRmX5F22n95m+qzVCHH0VpLp7gfQyjIkSKuvO6/q1qwe8XfSf9CGP1C
	CAjHbL3slffMwaDW19FHulZr0Eo0XToiAL4Pd+zGIZYT5XFKYybVUg6pxHNquDqm
	AZUv+qrgsc3fxkbWjYwq+kqsO2i7eU+yDcUKOUkeKUmGsrW0x8cJzIPdjt6XyTZy
	O7BD5h7aW1quCpug/W3ZaRxaU1t6fnHtFLgGF85hhyTMBPq2qe+9YJK+cV4WqM20
	gVPDqJ8WwYpedgd/H78oNS0yBWvlY6SMaC3dnnWdEaxhgd6mQtW/6vBSEQ3KA0sW
	bAyig==
X-ME-Sender: <xms:Eq58aHnCzB5jxWOThXqaN5kfZ7_UlGpu9VB9ZI0MxExDgU9BO8esyw>
    <xme:Eq58aFufb79zOql2uH6GbezcAP4iP1Wa57SGHFrXZFLq_KrpMEC-oxgnVIBCusCGJ
    DqMA8P_uV2ZfWvtrw>
X-ME-Received: <xmr:Eq58aH3n_G4Dm7K_fGE3JSibuhx-3O4Z28FetH6FvAJmsb749Zt3EOdlSUzbB55DlW0X2OupBGclpwWye34vL5lb7sDD6w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdeikeejjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefthigrnhcuhggr
    lhhklhhinhcuoehrhigrnhesthgvshhtthhorghsthdrtghomheqnecuggftrfgrthhtvg
    hrnhepffehieffgedtgfffjeetveegfeekleeileekveeuteffteetudffveegieeiheet
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprhihrg
    hnsehtvghsthhtohgrshhtrdgtohhmpdhnsggprhgtphhtthhopeduiedpmhhouggvpehs
    mhhtphhouhhtpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtth
    hopehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgu
    theskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepfigvnhhssegtshhivgdrohhrghdprh
    gtphhtthhopehjvghrnhgvjhdrshhkrhgrsggvtgesghhmrghilhdrtghomhdprhgtphht
    thhopehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgpdhrtghpthhtoheprghnughrvg
    drphhriiihfigrrhgrsegrrhhmrdgtohhmpdhrtghpthhtohepmhgrtghrohgrlhhphhgr
    kedvsehgmhgrihhlrdgtohhmpdhrtghpthhtohepkhhikhhutghhrghnleeksehgmhgrih
    hlrdgtohhm
X-ME-Proxy: <xmx:E658aBQc5BbZtn-gqEHQa_5QQJS3a4DVIjYDHOY9RQ8yn7kXMRfkwA>
    <xmx:E658aLtqAicRCet-boC8elvYh66N_HUX25mgrPMIAKwMNdfx-CM5nQ>
    <xmx:E658aHJ5_DS86O-YVOOgEiKvNIoq1TcueVAQWXL-Z6-4wUC8ZV05gw>
    <xmx:E658aHfrNeMh-mFTTZvKuWvNq5cHIv5oooPW1PFa4DJWD4JuNO3c9A>
    <xmx:E658aMCL-pC3twdCfk9DSAS1E2pN6J26J7ldSNaTXcqtuHnqv9BeH3UJ>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 20 Jul 2025 04:51:26 -0400 (EDT)
From: Ryan Walklin <ryan@testtoast.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Andre Przywara <andre.przywara@arm.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Philippe Simons <simons.philippe@gmail.com>,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Ryan Walklin <ryan@testtoast.com>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 04/12] dt-bindings: display: sun4i: Add compatible strings for H616 TCON TOP
Date: Sun, 20 Jul 2025 20:48:42 +1200
Message-ID: <20250720085047.5340-5-ryan@testtoast.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250720085047.5340-1-ryan@testtoast.com>
References: <20250720085047.5340-1-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible string for allwinner,sun50i-h616-tcon-top with a
fallback string of allwinner,sun50i-h6-tcon-top.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>

--
Changelog v1..v2:
- Add H616 TCON TOP compatible.
---
 .../display/allwinner,sun8i-r40-tcon-top.yaml       | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml b/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml
index 7d849c4095a3..80f1e49f5b7a 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml
@@ -39,10 +39,15 @@ properties:
     const: 1
 
   compatible:
-    enum:
-      - allwinner,sun8i-r40-tcon-top
-      - allwinner,sun20i-d1-tcon-top
-      - allwinner,sun50i-h6-tcon-top
+    oneOf:
+      - enum:
+          - allwinner,sun8i-r40-tcon-top
+          - allwinner,sun20i-d1-tcon-top
+          - allwinner,sun50i-h6-tcon-top
+      - items:
+          - enum:
+              - allwinner,sun50i-h616-tcon-top
+          - const: allwinner,sun50i-h6-tcon-top
 
   reg:
     maxItems: 1
-- 
2.50.1


