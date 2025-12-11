Return-Path: <devicetree+bounces-245903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCC6CB694D
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 17:57:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47746301B2DE
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 16:57:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D9383101A5;
	Thu, 11 Dec 2025 16:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b="MuDQyfNn";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="xSGBU9Mp"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b6-smtp.messagingengine.com (fout-b6-smtp.messagingengine.com [202.12.124.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489952E5437;
	Thu, 11 Dec 2025 16:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765472235; cv=none; b=e5zy6iYiYtd3AKbiY1FObdz8T1RapHzUjjikPtoqcXAg7tUM/ilrPdJl5jMuC2/OR4nGByOJ9iIrQNAZM2KtP5rTP6BCZ+R2WMmlSOAlaBMfOGASqIdEKGwduUQKqJeQoztM1hgsg+KvYBv02FfUw7quFHZLLS1sm8sjVCBKAyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765472235; c=relaxed/simple;
	bh=2/2WkfsoGxLsB8LG64kKKZ/WJrEP4qcsCTpesjL/qeg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BRSdcgvsqrmMK9X+h8IPi1D0Aw+WGzqotrHnKWprQ6Xcp/1JY7iyCOGSNO3OqoAZ2SutNUxa6k32Wd5qbrcMKfdPPuQU3HgW9t1ZO7opBa8UbLGTvcOzwU4bdGlaMiJUz7zetvDffcPLaQmewwkqRKnJu9f+rozhF4h0AOQvX2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com; spf=fail smtp.mailfrom=bsdio.com; dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b=MuDQyfNn; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=xSGBU9Mp; arc=none smtp.client-ip=202.12.124.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bsdio.com
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfout.stl.internal (Postfix) with ESMTP id 3C1E61D00144;
	Thu, 11 Dec 2025 11:57:12 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-03.internal (MEProxy); Thu, 11 Dec 2025 11:57:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bsdio.com; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1765472232; x=
	1765558632; bh=zA5C5PNW0/uFa37xkLqcgZ6/TZ5xC7fDMBu4P7YKTz4=; b=M
	uDQyfNnIET5ctTfOdB+1KHBoLIQ8twYUrO5YWKt10ivZf4NK3EOZBaUltq8OREA1
	0MF5r73UgvKVeUMebyxSgJ80WCjM5ea5vkN/5Wvq0WNank2m52Fqp6fHmvgcvP+h
	txvzfKe/Ssjp2qWjjTn6uYmFreb807s76LLY5yzA9jZtMU2f7Q4Qz0R9xo6gG0gn
	iSiPod1aBU0Ib0LWJ4amOg1/otCJ6bv2h0/loI2L/ogk8mBhnF1miIqCoN85lCl8
	C8cHOG5OUrv2lukIlGQnYjgo+OjU5b4FdjImRsj4Nm6O1ObAzUbFtLH/7Fk95nxH
	FkHf9J+uA5A9NFG/ZL3KA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1765472232; x=1765558632; bh=z
	A5C5PNW0/uFa37xkLqcgZ6/TZ5xC7fDMBu4P7YKTz4=; b=xSGBU9MpKd625Lbpv
	g/mN9uz/MLwCEcPxaGN+C6iTYwVczOkPi6Gjc41plrHgLwI+n4qzRu6XuWCyaoAZ
	seomzQ/oQcnYl55zGWCYlCNEbBA2gx2/4cmyYR+L3d3P7IBcENjWKKr4QNK+gnyY
	sq9af8ktUqHt1YWCiQPU52R35Mw0sqaachSoLjVjBKyHGY4/C3r2bjNmoUlbXSKT
	r32slPNaStZWE/oeHN0+w1knwJG/tUPruhj+/53bGCwtoauAHWv4McydOuSis5jX
	OmRci5vuB5B2cmimwYH6OdcrnKIBeQAHP0ne3lX5pW+dThnSZHB1oIsK99zHUr3S
	3YElA==
X-ME-Sender: <xms:5_c6aS3x0ZQkT7JY2chdJSIer44VzItKz-KVnBsyt5JbQqjIZHk5LQ>
    <xme:5_c6aRxqOGXfR1qVXpT9Y1l1oLI77vQnN_Eqb1ei_a0oW19XGQOkYFYI8MMirfW1j
    c3icWUh2uHq_IyDV_QDwewbu0UmMpw3X5g7p3Dn1o6AYRqiyYGAzQ>
X-ME-Received: <xmr:5_c6aew4GFwuy2RWOiCNxvgEdjTVG9sbPXcgVkLSR6zjE5G4Sh3_roI7_jUmcgQ3p3Q1JzP_J3ExUr_5>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvheekgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeftvggsvggttggr
    ucevrhgrnhcuoehrvggsvggttggrsegsshguihhordgtohhmqeenucggtffrrghtthgvrh
    hnpeegffeuueelvdeggfdvvdfgtedvudfhfeekudekieektddukeefteetieefvdelfeen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehrvggsvg
    gttggrsegsshguihhordgtohhmpdhnsggprhgtphhtthhopeduvddpmhhouggvpehsmhht
    phhouhhtpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhope
    hkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodguthes
    khgvrhhnvghlrdhorhhgpdhrtghpthhtohepjhhovghlsehjmhhsrdhiugdrrghupdhrtg
    hpthhtoheprghnughrvgifsegtohguvggtohhnshhtrhhutghtrdgtohhmrdgruhdprhgt
    phhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtph
    htthhopehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhtshdrihhnfhhrrgguvggr
    ugdrohhrghdprhgtphhtthhopehlihhnuhigqdgrshhpvggvugeslhhishhtshdrohiilh
    grsghsrdhorhhgpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgv
    rhhnvghlrdhorhhg
X-ME-Proxy: <xmx:5_c6ad83yrgjIuhuJx0cltciGczOXzEfsUbkEGxbkhCb1MkWegc6iA>
    <xmx:5_c6aY9xVwc0t5TFmRus2kcM0TIlRx4Q_Isfz4XFScarZEzXcEvglw>
    <xmx:5_c6aV4blpI9lykzwhxXaIPQtEJF3S71mvdfDT4tf1QMoYVAlge42A>
    <xmx:5_c6aRajkiRHtLrTc3xS1UB6Ma-fgswgRL_DLWE5PnUzRi_6gI2Xqw>
    <xmx:6Pc6aZr5HSuTCFt9qcmpWp6ZTrC2H-ZhmFaBzcXiwiC3oHAxTT01NMkJ>
Feedback-ID: i5b994698:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 11 Dec 2025 11:57:10 -0500 (EST)
From: Rebecca Cran <rebecca@bsdio.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Rebecca Cran <rebecca@bsdio.com>,
	Billy Tsai <billy_tsai@aspeedtech.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 1/2] dt-bindings: arm: aspeed: add ASRock Rack ALTRAD8 board
Date: Thu, 11 Dec 2025 09:56:56 -0700
Message-ID: <20251211165700.29206-2-rebecca@bsdio.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211165700.29206-1-rebecca@bsdio.com>
References: <20251211165700.29206-1-rebecca@bsdio.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document ASRock Rack ALTRAD8 (ALTRAD8UD-1L2T and ALTRAD8UD2-1L2Q)
compatibles.

Signed-off-by: Rebecca Cran <rebecca@bsdio.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 9298c1a75dd1..aefad2d02993 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -34,6 +34,7 @@ properties:
               - amd,ethanolx-bmc
               - ampere,mtjade-bmc
               - aspeed,ast2500-evb
+              - asrock,altrad8-bmc
               - asrock,e3c246d4i-bmc
               - asrock,e3c256d4i-bmc
               - asrock,romed8hm3-bmc
-- 
2.47.3


