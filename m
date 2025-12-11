Return-Path: <devicetree+bounces-245854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EB6CB60BF
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 14:37:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 351EA3003140
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 13:37:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97B1331328D;
	Thu, 11 Dec 2025 13:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b="o82a1GFu";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="ikPmmeRB"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-b5-smtp.messagingengine.com (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CBC31327C;
	Thu, 11 Dec 2025 13:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.156
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765460267; cv=none; b=nuhJBq+5me+o1tRWQNFUtR2fNVM2fUU+9yhGpdxUSvbiFW/RMPMHUqrFGBeuo3hmRmBTQO1ghA5S1NZRpj4vFLRV4+jAbwyRf/IgQllsCXFJb+fxxuWhxZCHtEqckN7GQPj8xtU+uuLyPXzqytwksxeb9qJNJ5WN1W9dh+CSfeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765460267; c=relaxed/simple;
	bh=2/2WkfsoGxLsB8LG64kKKZ/WJrEP4qcsCTpesjL/qeg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=adAwg8OkziaKcXVv+DYMF3Yd35RoDkU3RuUy52uT/PimSwqwM9h+nowBSHFqEKvInbQ/KAoSrOsEqqKmJIITWByViF1VriJ+K9By57c9ldjRTli2x9wGWEj3Es0lDcMyxzS3TDTYBBuRzjfDHkZMmDQUDrF2x+FN+CBIDvm8vZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com; spf=fail smtp.mailfrom=bsdio.com; dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b=o82a1GFu; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=ikPmmeRB; arc=none smtp.client-ip=202.12.124.156
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bsdio.com
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 40E477A0140;
	Thu, 11 Dec 2025 08:37:42 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Thu, 11 Dec 2025 08:37:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bsdio.com; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1765460262; x=
	1765546662; bh=zA5C5PNW0/uFa37xkLqcgZ6/TZ5xC7fDMBu4P7YKTz4=; b=o
	82a1GFuLupdi2f3DTNtDSHpDK/z4t0s0WgGt/7mZI7mld2Jsm5n+VPZS15R6/CpI
	habdwW7aZtZHS4z8uWuHoqpMEsbA3lgXKFiV/soZ8FE9Caq8vcX77TPvTh2w+5Wm
	1Qdx5OIJtrKXtVOQC7XDtFfErtcI97N4sqccZwSE4WWCQJ2uRstNvO1t3FcubTXC
	NLEjEjyuZkQE2IgP28TEmVLFwrEesg7y5xUTb2F5Nb54oRi5GBcQfGUcP8oDi8zH
	/ZcGDiQuoVNub+W1aQQITBQ0FPqOlp8pntCIUOZsOPM6sbfUHtOlxxL9PZS+rM5y
	Ql2A/2p+fAu2jK+mIZsMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1765460262; x=1765546662; bh=z
	A5C5PNW0/uFa37xkLqcgZ6/TZ5xC7fDMBu4P7YKTz4=; b=ikPmmeRBuksPJ7t73
	0XKq3myvQGmH9nND3o5Lwsq5d7q2jkBulKx/MA+aOLxWKdBudG1iHYnFqibJ9PA5
	AD7bs5G5oQrZmRccokvhfEXPYaCd2NMnKGtPc+awUA5Q99qCd/mRcrRL24kaG41H
	7ZcWjZHe3GtwXA+U5LuTXvsKo/PLUQXZGMhkSSB0ugColy78sahnydFJTMfBYIZR
	OyRbNmVNwnjIiJuXcqkI9Tq3KuPu/yFzGPDFllBn9VhD/S7+OWnyYdLZrxhV5DiH
	wJOFRsqdgUn7KoBlpVZjDwvFYRPNuslSim4FE0HTDuLwNBgNzjHDSfg9riRjgzXc
	r1fyQ==
X-ME-Sender: <xms:Jck6aaOV1zUdDk9toNH5FSHOE6yMYucLcOXh58jv2A-Zw4mjc5WKLQ>
    <xme:Jck6aVp0KfdAWZQJg9DHxc_c-BQqiwkSCmnG0sKHy_UQXe7Q-C_9kYZ3xOfj0-Z4M
    qPx10pij1eGLOKKQGuK59SsGAKJhifFshup3U0nhynrFpF7TCUeMug>
X-ME-Received: <xmr:Jck6aVJJFUSBf91RyGj5n8dviIr911ioqYLwa2MIZxw86CFzVOrk3egR43wZlZXwnh3NgOKvjZw0kcST>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvheeghecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:Jck6aU3XTW4kd0xBwyxkgQxf2XLJ2Wzancykkprx9A1iVmAflHxKRw>
    <xmx:Jck6aWUnB-94On1jEB9N69xDrSruwolT75zLXxzPuu7MHceJdd8o4w>
    <xmx:Jck6aXzLDEvG24AZR6vdTmWnRyZnlbkLMtlFvm8NiOEXG93LDfdYyQ>
    <xmx:Jck6adyT_rD1hemS8dLt_9j3vLGNEss8qWF39WYCP6_LLxZcc2pY4w>
    <xmx:Jsk6aYz5kqByYQ3y2L47BPq8lloE7ZLdj1tY10pamoqm2JDMXF7nrxIH>
Feedback-ID: i5b994698:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 11 Dec 2025 08:37:40 -0500 (EST)
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
Subject: [PATCH v4 1/2] dt-bindings: arm: aspeed: add ASRock Rack ALTRAD8 board
Date: Thu, 11 Dec 2025 06:37:18 -0700
Message-ID: <20251211133721.18269-2-rebecca@bsdio.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211133721.18269-1-rebecca@bsdio.com>
References: <20251211133721.18269-1-rebecca@bsdio.com>
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


