Return-Path: <devicetree+bounces-156037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BC3A58F7F
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 10:25:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37AA2188FC5E
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 09:25:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 339E8224AF8;
	Mon, 10 Mar 2025 09:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="HgwUrg5m";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="O1f6YZNd"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-a4-smtp.messagingengine.com (fhigh-a4-smtp.messagingengine.com [103.168.172.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284E4224AEB;
	Mon, 10 Mar 2025 09:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741598703; cv=none; b=Dy9XYPBPtEZf39I+7f+AzkhPYOAYKuh1dFl4oaGn/voLSBo4Aep/odnZIE2NRI6lnc7vH2rN299sM6VWry6eaNuBYHMSKC8OncNEEhYMguOTYIC3OyrZNkFwyOWliX+I0Vze10qPnFJ0o1StAbqP4USVLl21IFpgSfrASgK1npw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741598703; c=relaxed/simple;
	bh=ykh3akM9uFLUqUla1kes1xgcWAy9bkqWyA9nHI9GzNY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HSqZg8X7LdsGszrxULIQ9ZBblXMaPd5sey5xA4zrlUAqQiBndcLIfbbH56g5M7oZaNosAIaV/0n4RD+topi/u728oJNuyPcO99BCfkmoTgt9EqDGMeHwkBXGNHOzwkItVYa4jPDiqLgoUF/IgRjfLn8ooLaSwXTw+oIhr1a+eL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=HgwUrg5m; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=O1f6YZNd; arc=none smtp.client-ip=103.168.172.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-11.internal (phl-compute-11.phl.internal [10.202.2.51])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 38F0B1140122;
	Mon, 10 Mar 2025 05:25:00 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-11.internal (MEProxy); Mon, 10 Mar 2025 05:25:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1741598700; x=
	1741685100; bh=LoiPw4x9/yEnLQUi5WhZAfDONB5Hr8eHgbP2VwzzCG4=; b=H
	gwUrg5mVEKVpF0Pwkd5kpMoPVrvrRgGwrNUQchQ3QTZHGkDY6W+lpQNf45sjwcGu
	zYHP+Rkk2fClxEiUAjGPH8dxt6QwlmmBl4y3F5h056BjX53psroPOLyHl7e0avvr
	LI/C58/yEn9699Ta6wojI/akGlGMOiif24tAKad/16owhBQfvVSc/kNmGECoZniB
	HCeGamgY21EyJcDXyh2yIZHJdzXv+ElaRtevtuyEYLxCDQ5wkmgiQB6QK6QY4L0+
	XtXAv9eri9QTqkT7cGqL/vgldcd3nt/p+hU/I0W4BqAIZRYzOavBDXdt1dB1ICnx
	RpQsk+ypA6EdT4hmUhS4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1741598700; x=1741685100; bh=L
	oiPw4x9/yEnLQUi5WhZAfDONB5Hr8eHgbP2VwzzCG4=; b=O1f6YZNdC1+D9GxZD
	X3HDSDcJGyIwQIJAs5NLgUqAK1AlfruRdNrsGanOyHIOILq4E9uBdtIni3/qix/6
	ShjYSMqgyZ5tqDQK6N01n36Dt2jLLVLajS0aEKKjTNpiTJRCegtZgBxC+kegY/Xp
	SKu9LgFSqoavS/7Wp4UkC8ufcMPBc0cGVvezlumFkJDLkN3nc/EFmUvYJWqeoeb3
	AkkXCmrfm/FeMiiFJebqok+/8tIcFC6otW3pnwfCHY0NMfqnvfbe9URmXKi6KjC9
	p9CaPtygoKe3DOmMcj8zPvTi0jlfuEsPgbTe4fMujGiLPUGRN0/2y/6tXeOaOzTC
	U1cmg==
X-ME-Sender: <xms:7K_OZ1oOl6x-eVCuaJEAZ1XNZbVqpBYZW5eA_flZLULzJRTQaP5fHA>
    <xme:7K_OZ3oUJMLiWrKutgy_XgGdGlASO39oWi7TDyKl0AeZjXUdqmTTBuJ6toGY7Jjxz
    ECKYEt-A7wQtwIM0Q>
X-ME-Received: <xmr:7K_OZyOsmrfCc-idFwKLcFgxqFk9bOBxqNR49PdktqjUCap8UIfaEMkB-hHzgJT4pHfiB1wDWEKM94nA9dQcejTtaj9tF8_6gPhmnrXEo4ag>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdduudekleekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
    pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
    gvnhhtshculddquddttddmnecujfgurhephffvvefufffkofgjfhgggfestdekredtredt
    tdenucfhrhhomheptfihrghnucghrghlkhhlihhnuceorhihrghnsehtvghsthhtohgrsh
    htrdgtohhmqeenucggtffrrghtthgvrhhnpeffheeiffegtdfgffejteevgeefkeelieel
    keevueetffetteduffevgeeiieehteenucevlhhushhtvghrufhiiigvpedvnecurfgrrh
    grmhepmhgrihhlfhhrohhmpehrhigrnhesthgvshhtthhorghsthdrtghomhdpnhgspghr
    tghpthhtohepvdehpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehmrhhiphgrrh
    gusehkvghrnhgvlhdrohhrghdprhgtphhtthhopeifvghnshestghsihgvrdhorhhgpdhr
    tghpthhtohepmhgrrghrthgvnhdrlhgrnhhkhhhorhhstheslhhinhhugidrihhnthgvlh
    drtghomhdprhgtphhtthhopehtiihimhhmvghrmhgrnhhnsehsuhhsvgdruggvpdhrtghp
    thhtoheprghirhhlihgvugesghhmrghilhdrtghomhdprhgtphhtthhopegurghnihgvlh
    esfhhffihllhdrtghhpdhrtghpthhtohepjhgvrhhnvghjrdhskhhrrggsvggtsehgmhgr
    ihhlrdgtohhmpdhrtghpthhtohepshgrmhhuvghlsehshhholhhlrghnugdrohhrghdprh
    gtphhtthhopehrohgshheskhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:7K_OZw4pqnJLPsuJgkIIQpXF4Boy4LX7PVK6gn562-t2VTajlbYeCQ>
    <xmx:7K_OZ07TgewCYTXmXRhr7KpYR45rX40L06eMCHOineeiB5vf76i3ZA>
    <xmx:7K_OZ4io7UdlVE-ODuA76Rh-TmqcgOZ4pC_rq_dKv8KTZ8rmLZjlsQ>
    <xmx:7K_OZ26DmOXhC89a0NVzPaHh-ALwdtJDbahA43rVcqF-AbJZ2k8Fiw>
    <xmx:7K_OZ_xNSU_kXaFODEwTuXGfdWWSVrJGFAqfVoCz6NvmKEg9MBnwKwEm>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 10 Mar 2025 05:24:52 -0400 (EDT)
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
	Ryan Walklin <ryan@testtoast.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v8 07/11] dt-bindings: allwinner: add H616 DE33 mixer binding
Date: Mon, 10 Mar 2025 22:09:53 +1300
Message-ID: <20250310092345.31708-8-ryan@testtoast.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250310092345.31708-1-ryan@testtoast.com>
References: <20250310092345.31708-1-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Allwinner H616 and variants have a new display engine revision
(DE33).

The mixer configuration registers are significantly different to the DE3
and DE2 revisions, being split into separate top and display blocks,
therefore a fallback for the mixer compatible is not provided.

Add a display engine mixer binding for the DE33.

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Chen-Yu Tsai <wens@csie.org>

---
Changelog v2..v3:
- Separate content into three patches for three separate subsystems

Changelog v5..v6:
- increase reg maxItems to 3 and add conditional for h616-de33
---
 .../allwinner,sun8i-a83t-de2-mixer.yaml       | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
index b75c1ec686ad..274f5e632733 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
@@ -24,9 +24,11 @@ properties:
       - allwinner,sun50i-a64-de2-mixer-0
       - allwinner,sun50i-a64-de2-mixer-1
       - allwinner,sun50i-h6-de3-mixer-0
+      - allwinner,sun50i-h616-de33-mixer-0
 
   reg:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   clocks:
     items:
@@ -61,6 +63,23 @@ properties:
     required:
       - port@1
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - allwinner,sun50i-h616-de33-mixer-0
+
+    then:
+      properties:
+        reg:
+          maxItems: 3
+
+    else:
+      properties:
+        reg:
+          maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.48.1


