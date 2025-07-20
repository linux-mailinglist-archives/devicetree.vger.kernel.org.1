Return-Path: <devicetree+bounces-197924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B84ECB0B45D
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 10:51:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 560C71898880
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 08:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0714A1E51FA;
	Sun, 20 Jul 2025 08:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="aC+IlIDj";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="N7iOZeN+"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-b8-smtp.messagingengine.com (fhigh-b8-smtp.messagingengine.com [202.12.124.159])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F2A1E5207
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 08:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.159
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753001515; cv=none; b=gotGxCds4kWr99cor8rnXpFjovYF2optQA+kwXaIYNyPnss6QTgTiG9DMtHI0rneAvLb0YGfaJ6xT9TaXjKxnYyCAz2nfCfgVwmSXU+cKz4OMH1/Cd/N5S+5ClHOYmxQUBV29wmJWqHLXO4HiQqDmjHE4nppgtEMr3t/1ONTZUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753001515; c=relaxed/simple;
	bh=X7HdiFqZSbCTCA2cfFIqWtiB9x/i5sCCQ8BFtqvnybI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hSV/3FiN63P418ZqrQlzE0Ajakwts9jm4WdbfV9v+y+4cQyuvAaioTq1IZDtgj+J29jsegb/KI0TE5XqBeLihJ8C37TvlTmAYral/zSasX5vPse3H0UOFeNvNTER+wp+deYaFolukY8Ddurg8tMkYYXmmQ2Jbd7VvP/vRPcK32w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=aC+IlIDj; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=N7iOZeN+; arc=none smtp.client-ip=202.12.124.159
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-06.internal (phl-compute-06.phl.internal [10.202.2.46])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 075747A0186;
	Sun, 20 Jul 2025 04:51:53 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Sun, 20 Jul 2025 04:51:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1753001512; x=
	1753087912; bh=UNP7aLlH5boXxQzG+t+OENng1ZS04P2rudXCohGPD5s=; b=a
	C+IlIDjGS6uS/efVwEXWOliogCBtxwf9T34p+VQ7kS7P+ci3EySItpeQz8YqNCch
	Q7nZe4iR4nkDfUrcFY4mn26wJylULYLhkS03lqR1Tg0c1GtQE3wAPHlGvv79S+fu
	ORw5y2OfCi9Q1hEpJaLTxxDE1dFh7AKoHpjYx6xKLyN6eTij0qrDb+hSwzuuQGXd
	/kCD281Sekow71xwoRbFFOfE75D0BI1mUjO5VlrYS5/XAWjc4t/QrILVxhsxzVOI
	nYzjsEZqs+UY4kHQezoewGMeWcIyQCGONmExgA3frF+JTi0HDaw6xVlLwqTfzLn5
	VWR1gicziIy/c7//2wTxQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1753001512; x=1753087912; bh=U
	NP7aLlH5boXxQzG+t+OENng1ZS04P2rudXCohGPD5s=; b=N7iOZeN+lYhZZ1zHX
	+aazxinbHGhqBA6t6g6/4SXdqLlOXW1/mwSx0/LfdOwgn/sQlQII7ymuOkQNheI6
	Y9rc+0daHoyNlDe6BUfiB4QXDPEAUGSHlAd0tVP4r8bfsZBQ7ku258zfQyDX2Rp8
	G2muBssyQXhpPrbzA1G0pUC+37rJBgI/G8Szs0FtlAa11TY0trsTB5ToaDzrbUmW
	4OF4DYXxdrmnW6wCc4c5omrWS2cnFvE1loPJ+E0+J1nHQ3KDOf26CNlqtQDHrOmP
	o1g1/5hfGnlyDzI1kWtEGecPpVKnHd2OGt+MezEtGXfpxZMTiTWFfQZMCDD5SjoQ
	xKv5A==
X-ME-Sender: <xms:KK58aNcf52W5pAVgcUR6jqw5QQnB6VVHyNk_pfUxdMJPgvdVU9EVlQ>
    <xme:KK58aL0oGzcn7azYl9F76sIB_Zp2M_FUcWF8u03-QCIIwNt1oPxow0wqqOTmcKcfU
    h35SnGcAkw6aFdZow>
X-ME-Received: <xmr:KK58aBr296fq-revSCrof_18sdRzATyjBzLPrsbu47Z9kkwRuYCoSF6INVlZGN1pAlfTuqFNlS_JEhkVPEu8JU-y8vEm9Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdeikeejjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefthigrnhcuhggr
    lhhklhhinhcuoehrhigrnhesthgvshhtthhorghsthdrtghomheqnecuggftrfgrthhtvg
    hrnhepheegudffieevieduudefleffueetieeiudelhfetveeggfffheehueduffevjedv
    necuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehrhigrnhesthgvshhtthhorghsthdrtghomhdp
    nhgspghrtghpthhtohepudehpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehroh
    gshheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghl
    rdhorhhgpdhrtghpthhtoheptghonhhorhdoughtsehkvghrnhgvlhdrohhrghdprhgtph
    htthhopeifvghnshestghsihgvrdhorhhgpdhrtghpthhtohepjhgvrhhnvghjrdhskhhr
    rggsvggtsehgmhgrihhlrdgtohhmpdhrtghpthhtohepshgrmhhuvghlsehshhholhhlrg
    hnugdrohhrghdprhgtphhtthhopegrnhgurhgvrdhprhiihiifrghrrgesrghrmhdrtgho
    mhdprhgtphhtthhopehmrggtrhhorghlphhhrgekvdesghhmrghilhdrtghomhdprhgtph
    htthhopehkihhkuhgthhgrnhelkeesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:KK58aLgvUtKeBiuiqBms1R-4rW7JNs8DDhbjYXBy95BfFwfepEfqVw>
    <xmx:KK58aNkAMaUZhPeBeA6W3xFR8Sk4udvNumnvx75OAhUe9yeKAdVzLA>
    <xmx:KK58aEra_WYhc7bLYY73WUXZ6FnbrmDtDfl1kji6m2CXzAHh6KlXxg>
    <xmx:KK58aJKr8jPJRgHFsV-R3id0BqKzJiLsUJnK1ceCEHwdNJlz-cig_Q>
    <xmx:KK58aCWqXbWY4pv3vLygyEY1H6uFKlzJvoeTXBLlqjcUzJqoOmEnYYHH>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 20 Jul 2025 04:51:48 -0400 (EDT)
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
	Ryan Walklin <ryan@testtoast.com>
Subject: [PATCH v2 08/12] drm: sun4i: add compatible for h616 display engine
Date: Sun, 20 Jul 2025 20:48:46 +1200
Message-ID: <20250720085047.5340-9-ryan@testtoast.com>
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

As discussed on list in the previous version of this patch [1], H616 DE
compatible could be added using the H6 as a fallback, however all other
SoCs have individual compatibles, so add the H616 here for consistency.

Add a compatible for the H616 display engine.

Signed-off-by: Ryan Walklin <ryan@testtoast.com>

[1] https://lore.kernel.org/linux-sunxi/20250224180025.4eb33c3f@donnerap.manchester.arm.com
--
Changelog v1..v2:
- Add a compatible for the H616 display engine
---
 drivers/gpu/drm/sun4i/sun4i_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_drv.c b/drivers/gpu/drm/sun4i/sun4i_drv.c
index c11dfb2739fa..6986b329236c 100644
--- a/drivers/gpu/drm/sun4i/sun4i_drv.c
+++ b/drivers/gpu/drm/sun4i/sun4i_drv.c
@@ -436,6 +436,7 @@ static const struct of_device_id sun4i_drv_of_table[] = {
 	{ .compatible = "allwinner,sun20i-d1-display-engine" },
 	{ .compatible = "allwinner,sun50i-a64-display-engine" },
 	{ .compatible = "allwinner,sun50i-h6-display-engine" },
+	{ .compatible = "allwinner,sun50i-h616-display-engine" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, sun4i_drv_of_table);
-- 
2.50.1


