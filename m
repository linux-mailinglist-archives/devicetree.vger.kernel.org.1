Return-Path: <devicetree+bounces-197919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 918DFB0B458
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 10:51:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2036D18987A3
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 08:51:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9926A1E1A33;
	Sun, 20 Jul 2025 08:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="SV5nWdMg";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="brCWYQyL"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4161DED5B
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 08:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753001488; cv=none; b=oagyIPd+lUsv/A5AfmHPRfoRpAVmmk+d2SHzRDxN9IaEfn02yIBUNjBfF/p3sfkBz2gPZGHxDELh+0DQRXr+FFH7sv4PFwpDh9VC9ABdCry63sDOjS8sK9KX49Fnr0XIdkQhVbOlXM5Wrt2Any6ZgM1+HqshO2d2k677Qxdo0Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753001488; c=relaxed/simple;
	bh=QffWJeJpWpEKgP0F3ambHpU4NdSbrZ9K84p92Ru3DvY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GsFhLHOZUaGjH+EtmQ2DNRFaBUBRupT5pRl40zYCGOLw9PIvn6rJLiiFxg3iyGsQmnLksaa24JV194HgpjE4kl46acnknx911Pgn4EPXjI4IzDi8kF5ns051x3kjdu67yllAgxgTESOBUtDInDfMc22qTkvkQkVU0pF0qaLFYAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=SV5nWdMg; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=brCWYQyL; arc=none smtp.client-ip=202.12.124.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-04.internal (phl-compute-04.phl.internal [10.202.2.44])
	by mailfout.stl.internal (Postfix) with ESMTP id E79461D0013D;
	Sun, 20 Jul 2025 04:51:25 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Sun, 20 Jul 2025 04:51:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1753001485; x=
	1753087885; bh=bhw2ewrAOF+6/14Z8vcFUEVAZhS4P7T9BPyZIX21AVU=; b=S
	V5nWdMg8nJ86MWTl3UfObR8Q/l2vdPIx6sN4CMQcaIeQ1WUbIS3f7Hzd0F14fqkw
	QQdAp146U5ntypv/YmX7pXfTfB4/0uX0YUUoOeo58PFXuZ/O0B2KslMeO/pKEdQ/
	MDAz6Ig8Knrm0V9HPHZ3vBFTq9Zf/DRjcMV8ncNt/r7gklZ9/PNjALIoIJW8zYoX
	g6B/s8HGoN0GJc4MRyQvjZxQ7w1NNjsEKye6tXC2c5hfEgywIWuNJeN9OzXMdhDp
	LPYeoguvLhXriLOxqoQvO1s277PGZpzKbylSEH1+Hd23oBtIZGS4pYvwacusJ9Dk
	N+GyEOfrobMhmcAhp9wlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1753001485; x=1753087885; bh=b
	hw2ewrAOF+6/14Z8vcFUEVAZhS4P7T9BPyZIX21AVU=; b=brCWYQyLLvQSqWD4C
	BMVn2wPMiB2zWF4L5dFZ6ras5PrhXp5uF9P3GfBEQzsD/E9XIECsgHvf7fHmvC4V
	GnhGDvB2dvWPv9kmVGL2aj3z0oBzq2PVcYsKNVa4SJVgLgz0VMlIVzWxkfhXDPE1
	C4s7JkKd9leBIfcplGGwzvu8LOx//tM/61VGtgjgoVYpUMyh4fH17GJKWgc5L8Ij
	/lk7XfTcnAwRYr5oosjsIXQXcz4qpP9YqLz8YLA4WwpfaeL1GJx7aYM7Cz8SUOK5
	osCHr5wXncZ/YfkQSLrw/88wHWxSAlPS1gvVUkRFBUZF5pgzSZwmyQN39pSYTlzN
	P3rIw==
X-ME-Sender: <xms:Da58aJBogR5BXCBXsTVxIK6MoIQn7u9LDP90-pZa5uIx466qNW-kIg>
    <xme:Da58aCYBx_vPx-eI4wPkgRYtdN-7kCDtNZGI_0BBfHT7CiBsxSugSRfb_qYk5T2SF
    1gCxSe-nibbhLWH4w>
X-ME-Received: <xmr:Da58aOzsMdPbjCldiTuvBF87yGRnmady1RTDHgqrazQ1wEr-ptOJP5jYGRmPAInksXuc6wFAhQN_wfxt_xWQka4lOPar6A>
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
X-ME-Proxy: <xmx:Da58aFcmrahDsfz-Bu24NfImZ28gP85f88VFqDYlcV-k0mFZjht_Lw>
    <xmx:Da58aEL7l2gLbInWtHp2XcA5qZomSPyT4dJu7wwoDiZytKAX7qfu-w>
    <xmx:Da58aO1M-M-_0lOmbo89FqjtQ4HNCWRBX9Rzi0B-B2nX6_4o61vnUg>
    <xmx:Da58aNZ4078qNEneu7z4i8qehIvYuCqmxFFP-5Mb2ZOHCiA9WU1sFw>
    <xmx:Da58aK8CGVoy-A8FjXiW3vWb2y2Ov9I7Uf7Vmc0e4cFg5CGJS14J3EAT>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 20 Jul 2025 04:51:21 -0400 (EDT)
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
Subject: [PATCH v2 03/12] dt-bindings: display: sun4i: Add compatible strings for H616 DE
Date: Sun, 20 Jul 2025 20:48:41 +1200
Message-ID: <20250720085047.5340-4-ryan@testtoast.com>
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

Add compatible strings for allwinner,sun50i-h616-display-engine. The
device is functionally identical to the
allwinner,sun50i-h6-display-engine. This is added as a new device rather
than a fallback as all other DEs are modelled this way, and the device
is essentially "virtual", with the relevant functional differences
represented in the mixer and TCON components.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>

--
Changelog v1..v2:
- DE compatible added for H616
---
 .../bindings/display/allwinner,sun4i-a10-display-engine.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml
index e6088f379f70..117426862430 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml
@@ -65,6 +65,7 @@ properties:
       - allwinner,sun20i-d1-display-engine
       - allwinner,sun50i-a64-display-engine
       - allwinner,sun50i-h6-display-engine
+      - allwinner,sun50i-h616-display-engine
 
   allwinner,pipelines:
     $ref: /schemas/types.yaml#/definitions/phandle-array
-- 
2.50.1


