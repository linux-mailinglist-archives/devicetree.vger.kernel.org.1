Return-Path: <devicetree+bounces-244486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCA3CA5721
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 22:22:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD45E3141EA8
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 21:21:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3F7F3559F1;
	Thu,  4 Dec 2025 21:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b="sSt7vwb9";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="PJuTbZbN"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-b2-smtp.messagingengine.com (fhigh-b2-smtp.messagingengine.com [202.12.124.153])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2769D3559E0;
	Thu,  4 Dec 2025 21:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.153
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764882184; cv=none; b=GCbY/fyjLDeLQtc3kCmXCIckcx98/pKs6I19MTPlQM7pdTi39ZetJOAgNlxqSQx+EyCWU+xkM3PKQF6q4jQg2dIN5nlIbltaaJiy9QnDV1gRUFQ/orp83z0EV1OZeIyrd9ukKP5ihGNhtUgTJCXZsuvNLLOn1Cb12NvsS2WdKr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764882184; c=relaxed/simple;
	bh=rlsY2oIMuf/rcF4uaRkr5dWOufpP73kaP6qL8lh72s0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GVlrVKjIYc+U1ia8XtHijq0lAPjaM7tiOKEQRz1q1yK2Mzrl6IhEhHddzmb3xgdHpKr5Yz22SRGNpYgocv4PjQFGD97O6jOlU77oEBw/mkTfc4YMuJI0H90tFta+3p/DdhoyUi3ZAv3xzQw8+MkKq47eoGl/8mXfq04HmltE/6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com; spf=fail smtp.mailfrom=bsdio.com; dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b=sSt7vwb9; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=PJuTbZbN; arc=none smtp.client-ip=202.12.124.153
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bsdio.com
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 243407A001F;
	Thu,  4 Dec 2025 16:03:02 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Thu, 04 Dec 2025 16:03:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bsdio.com; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1764882182; x=
	1764968582; bh=HHTHfsItrpNksp7sM3LM7hcMpvoJLCi8sr+Lllv2wBU=; b=s
	St7vwb9LF+3aNcEGVg0EOHJZ73MaDi+clYBmAuc6rJ2wZ8D7TRFIBJk0CYzhW0nI
	1/yZkIYbFPHOTZXxG3aGaTlFq1tQ97tPiLlJZ+yNJblMSKNPoL3R7Rn/FLW+De27
	AZT1w7Uztgio99hO3990Mnlca9TSsGKMKde1f5gHrlTbB+2d3t/xT/+kJdGFkVv8
	LETWPekGYW4Esmk0NVu2P0y0CTWipqWqD3ETXrBZnwGTt/KfgG85/lPK62knnKEP
	Ix57LoUxcP4B5+5Z3Ql56jr1jCHWwJflgRa88jeXzokYszVv/EHBY1LPRXjT4bmv
	UrUCFjBujhGvXlw+Wn0yA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1764882182; x=1764968582; bh=H
	HTHfsItrpNksp7sM3LM7hcMpvoJLCi8sr+Lllv2wBU=; b=PJuTbZbNazvEmeYEf
	UGPlKTK5WsFdNysMJeGOO7QlTGrEb+FDy1aQKYbsY/rZK6rIml2TO1oGqCmlJV22
	omhkJlNWlwt+GY8oO4YTpvEQM426VSpzaiwQ4ofAeVvA7xtiJfReDH/PQZRLOvoK
	NTm7Bvt34j6LFLB/UsJ5hWNsF8PhKA34WY3BMsbHtwG5ZROLcHd86mW6xzLSROzc
	KGCrGeari36JM+N8BSsPeOzzUjxtaW/s5G2uhlOCZ1oWGLMo8A8mXCmaGe4Ud6lL
	pM/WWfmugncvvPlL+Z5FThjh/k/l3qZDcNHcwGSS6nqti5BywwOdQTHvKpV7z3NO
	KRXIg==
X-ME-Sender: <xms:BfcxaQ7gsO7gde4l4MIaHB7QuKNVSkHFLYf5cjR1HMbWreUEeKPqGw>
    <xme:BfcxaelFLkliPo8d5pXhT8TSM4irncgOUo5LPVC8JObGqpn28dG8Us3AGrxa06eHc
    XJFt9_jbPm9i1yV5gU4zA-dZgL8rD_5d7GmRkh1uEPrcMh8IcLSXwbH>
X-ME-Received: <xmr:BfcxaTX9PLaOOsRZKmtvCptngj8NJnDw03uFKrty1nBxPbL3Kf8_HvfKMIKiddvty84evRVle_jaPxwj>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdeiiedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
    lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
    ephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomheptfgvsggvtggtrgcu
    vehrrghnuceorhgvsggvtggtrgessghsughiohdrtghomheqnecuggftrfgrthhtvghrnh
    epgeffueeuledvgefgvddvgfetvdduhfefkedukeeikedtudekfeetteeifedvleefnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprhgvsggvtg
    gtrgessghsughiohdrtghomhdpnhgspghrtghpthhtohepuddvpdhmohguvgepshhmthhp
    ohhuthdprhgtphhtthhopehrohgshheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkh
    hriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheptghonhhorhdoughtsehk
    vghrnhgvlhdrohhrghdprhgtphhtthhopehjohgvlhesjhhmshdrihgurdgruhdprhgtph
    htthhopegrnhgurhgvfiestghouggvtghonhhsthhruhgtthdrtghomhdrrghupdhrtghp
    thhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpth
    htoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggu
    rdhorhhgpdhrtghpthhtoheplhhinhhugidqrghsphgvvggusehlihhsthhsrdhoiihlrg
    gsshdrohhrghdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghr
    nhgvlhdrohhrgh
X-ME-Proxy: <xmx:BfcxafRgF2TZHU41D4KdWNt030T7DIFfZX66Cn66WlUyDbTKFPhCBQ>
    <xmx:BfcxaYDNdl-GOtwHUoY5PtXxlCqrFb-2HoN98HzWDog5jw3ZE2wnGg>
    <xmx:BfcxafvGtgQw1o0J5K013V8cAaQvZyz0Ma2HuBL6mXZSLnhjraZnnA>
    <xmx:Bfcxae_CZnFtAfafIM6lZIiQGvvyN5iGck0UzPFveHyqtWbDHeymMA>
    <xmx:BfcxaW_j0aazlwQIEDezxxLxo6C2razwGEW1vvrwxbnK56og5pUCGCIk>
Feedback-ID: i5b994698:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 4 Dec 2025 16:03:00 -0500 (EST)
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
Subject: [PATCH v3 1/3] dt-bindings: arm: aspeed: add ASRock Rack ALTRAD8 board
Date: Thu,  4 Dec 2025 14:02:34 -0700
Message-ID: <20251204210238.40742-2-rebecca@bsdio.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251204210238.40742-1-rebecca@bsdio.com>
References: <20251204210238.40742-1-rebecca@bsdio.com>
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
index aedefca7cf4a..049e86107c50 100644
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


