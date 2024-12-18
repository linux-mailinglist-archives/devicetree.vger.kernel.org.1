Return-Path: <devicetree+bounces-132410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF539F6F6B
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 22:25:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C24D518911B2
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 21:25:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42C271991AA;
	Wed, 18 Dec 2024 21:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=stwcx.xyz header.i=@stwcx.xyz header.b="Dtbd3xaH";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="g9khhf41"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-a6-smtp.messagingengine.com (fhigh-a6-smtp.messagingengine.com [103.168.172.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DF735949;
	Wed, 18 Dec 2024 21:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734557108; cv=none; b=jCNiz/3qmCC3yaGxxZ/zpqRBWN8VXQ9K5/v4oO/WIJTHyJar97za7do890T+X6UZx9j5NMcBZgXiTR3hda5hPteKB+JS5CeQP8EKElAukzF/vpR1UAvjWiWya/E1SUi55ZNoAkyyfzrtJSRb2Ikt6xfcB+KMsNsA92Zvp8eL4yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734557108; c=relaxed/simple;
	bh=lbhva9hGpALPM/fivLVeTL8+ghTAs5TNIwrnAktjSkE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=i1WWQPBP2N94kfVjmWgeh/wC/xwQdywoCiEhWUZ+YtztV5Mz3rt5Q793VPiazGn0gYDuLHXEoE5O7wrcxbbxJ6mynE9Z4HtxcJgcp4Tn46fWpRE4rwcuw4HHcN9BKfraRqhOgkPGZzEKTjhhDboLBVhVPNP8R3yVFvlkF3OEflM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=stwcx.xyz; spf=pass smtp.mailfrom=stwcx.xyz; dkim=pass (2048-bit key) header.d=stwcx.xyz header.i=@stwcx.xyz header.b=Dtbd3xaH; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=g9khhf41; arc=none smtp.client-ip=103.168.172.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=stwcx.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=stwcx.xyz
Received: from phl-compute-06.internal (phl-compute-06.phl.internal [10.202.2.46])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 4F8D0114019F;
	Wed, 18 Dec 2024 16:25:04 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Wed, 18 Dec 2024 16:25:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stwcx.xyz; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm3; t=1734557104; x=1734643504; bh=ajF0q6OCJuLsYioDhwVmp
	l7KNWSqiP+JgnntFRjDDG4=; b=Dtbd3xaH0xMu9DZFCIUFlLd+vTa/Lw8JpCQPy
	LDaOgII/NnRcEJuhJ0iya+tUp2A4usbLr8lXm4+pqO9JDR5I/TR+dTiCdCksnJPu
	RK+0RfdFMp2uLjJ3q2NCsWRg//g9/5WquZw4jaXzjph/jpghoGkqOgY/8E/qSpAY
	LEzzrgZ2KJM6LSnN9Zhz1Z1baIVqa0/XwgMkWTfu3wLuluD9dKdjzyrFjvey8JrK
	6sbPGusnhwn1KVYHpDom5ePTXjZOCj98eYAD03RN5lhS1TxxNtxQDPVNg1hlGctb
	xcgtf5yWHH7zos9rcxdlZuNDT4pxD/AR0Mw/BhgLwOiSHXhKA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1734557104; x=1734643504; bh=ajF0q6OCJuLsYioDhwVmpl7KNWSqiP+Jgnn
	tFRjDDG4=; b=g9khhf41+0tF12rxgfuLL5H3w/h4ATcUyNw6H7Ur+62IaIjQcz1
	TPWIYljCbZB5U4Nxs3vfOK2yg+jkUFf+NjRagJkrQu4VoMhk1daXGu28Mz2C3U38
	KJd/JC08wgnp6/jlUppWRC3/lXri00qdsn5bv6TZF/XfxNzRGUjGKFa7h5rbKmhw
	M52OJmWvNN8LLn/LXisZHmrZlVga2v+id1X/aDY8+fRwV8riYU1Vs3BKz+yZHxkE
	FIA3HZwYrm/CymaW3zSRhVBKerit0EABxerv/VzlPecxoXXRSDSiyUeAd4QR7wMZ
	PsjnCMINmii620Vd7MAsgt30mVzd6W4WT6w==
X-ME-Sender: <xms:rj1jZwgqEhEYT0ualcrzwbOq_gesttZYpkVSbCijZWA9YF-Mf17m3A>
    <xme:rj1jZ5Ax1Y0p1VdSd6ZJj_z5_c7Ds6WFZgvJdw5nxJuZb7KNqbWRsNVbDyIyHZP4M
    9nMA0d7tZa6tGhbTFg>
X-ME-Received: <xmr:rj1jZ4HSbXa7olTni3gDMsvMYFYDcg0OnMXSYklJQGUbtRD4hr1j22GIb7Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrleekgddugeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnegfrhhlucfvnfffucdljedtmdenucfjughrpefhvfevufffkffo
    ggfgsedtkeertdertddtnecuhfhrohhmpefrrghtrhhitghkucghihhllhhirghmshcuoe
    hprghtrhhitghksehsthiftgigrdighiiiqeenucggtffrrghtthgvrhhnpeevtdevgfdt
    hfefveejudelheeghefhhfdtteetheehudeiueefhfetkeejleefteenucevlhhushhtvg
    hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehprghtrhhitghksehsthif
    tgigrdighiiipdhnsggprhgtphhtthhopedutddpmhhouggvpehsmhhtphhouhhtpdhrtg
    hpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikhdought
    sehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrd
    horhhgpdhrtghpthhtohepjhhovghlsehjmhhsrdhiugdrrghupdhrtghpthhtoheprghn
    ughrvgifsegtohguvggtohhnshhtrhhutghtrdgtohhmrdgruhdprhgtphhtthhopehprg
    htrhhitghksehsthiftgigrdighiiipdhrtghpthhtohepuggvvhhitggvthhrvggvsehv
    ghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrh
    hnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtoheplhhinhhu
    gidqrghsphgvvggusehlihhsthhsrdhoiihlrggsshdrohhrgh
X-ME-Proxy: <xmx:rj1jZxTzsUkmJn4DSDqtvqRuCy041IwKMmvZl9gc042EIG-UC0VRNQ>
    <xmx:rj1jZ9w73Ou4inMQs4mpBe4G6QHix3j4nriQDqmigDnVAo3h5DLTAw>
    <xmx:rj1jZ_7AQ8LQIsia8H4AL0qOW1A34WoyWVVXrbaTcmq69sWOUc6oDA>
    <xmx:rj1jZ6zxAjciFvNk9hRNSP8ZmseV3_xyFdZglL9lrEP6BL79UxUTjw>
    <xmx:sD1jZyp9ectKCObsjwWr1aRtv55CMJU8WeTNvP--ACpX0ngj1mhnS4Sw>
Feedback-ID: i68a1478a:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 18 Dec 2024 16:25:02 -0500 (EST)
From: Patrick Williams <patrick@stwcx.xyz>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Patrick Williams <patrick@stwcx.xyz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: aspeed: yosemite4: adjust secondary flash name
Date: Wed, 18 Dec 2024 16:24:57 -0500
Message-ID: <20241218212458.3050775-1-patrick@stwcx.xyz>
X-Mailer: git-send-email 2.44.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Meta (Facebook) has a preference for all of our secondary flash
chips to be labelled "alt-bmc" for consistency of userspace tools
deal with updates.  Bletchley, Harma, Minerva, and Catalina all
follow this convention but for some reason Yosemite4 is different.

Adjust the label in the dts to match the other platforms.

Signed-off-by: Patrick Williams <patrick@stwcx.xyz>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
index 98477792aa00..e20816d9e077 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
@@ -112,7 +112,7 @@ flash@0 {
 	flash@1 {
 		status = "okay";
 		m25p,fast-read;
-		label = "bmc2";
+		label = "alt-bmc";
 		spi-rx-bus-width = <4>;
 		spi-max-frequency = <50000000>;
 	};
-- 
2.44.2


