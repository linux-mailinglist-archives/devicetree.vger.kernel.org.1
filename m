Return-Path: <devicetree+bounces-245852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 59053CB60CB
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 14:38:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD89C30142E9
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 13:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1B7E3090EA;
	Thu, 11 Dec 2025 13:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b="rrJ0G2rS";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="Cl5ftS57"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-b5-smtp.messagingengine.com (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEFBF2DA765;
	Thu, 11 Dec 2025 13:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.156
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765460263; cv=none; b=qq8sipEbDDoClNw8w2JaywmKvyFu5H5VYW3Oa74+R1tBlYrrkOHAXfETQpzvjWCiOOK0dmGHmb2DyQEDQYHBfoInrUpTswuoyo6WnmPCtaqkYYpgW4HdXZKzslphoXWsmRk1vXrI9l4z3WAYA74HE/Sc8hju38DHc/hI3H2nJQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765460263; c=relaxed/simple;
	bh=00FTBO6TfFlk8iJavWK4XmvRJmxhQQEkjd4HT1Gxz2M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XixdbBje28xbNUgvfgRhOKbOtdnnVWVNJA/r0NUjzwOT2jxWKF/1FjqOB2qBosHkGOT7ElzULUwAWg0uAGzJiS8ZXd4FM1V+A7HbuLSc55UmB5NbBtWZqQ+rfqsCtOV7Hok8amYOfgNNQyBR3k2ENlpIoI2SFq2hC6I+PRghiaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com; spf=fail smtp.mailfrom=bsdio.com; dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b=rrJ0G2rS; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=Cl5ftS57; arc=none smtp.client-ip=202.12.124.156
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bsdio.com
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 2F37D7A012A;
	Thu, 11 Dec 2025 08:37:40 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-03.internal (MEProxy); Thu, 11 Dec 2025 08:37:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bsdio.com; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm2; t=1765460260; x=1765546660; bh=n1dFL102IvyRuI2M5K3t2
	JBa4JSeYgA6HETfVWFDo10=; b=rrJ0G2rS1KQBOSfjqstumfJ+ZM8ja8OJQjntI
	FK+AxEua5wOk02TohphvL1XRi4aJ16xPnf2MfsMjb6vvXHG/HupDdH0vFaUBDxV4
	kS7qj8gspnoQkQq2IPbRIZeIvoogkABEDjZsXWMlvyKgBBAioBOAP1Ooxgh2fbAQ
	TbTPNl71P5qdhSmZMserLeJNsNj1X/iqgiWBw3bOrhB8ezSbTYUV5+ZePTuNY7ub
	ecsflxjbmLMd0m+cBxzuxYWDfgSjItQw/l6wQSfexkH1ryrgMhuEN8CaaNV3gqf1
	PZsL+YZCB6ofKi4bzIcHXXnBLCGvf2sW2iZ1THMHUShkxrbYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1765460260; x=1765546660; bh=n1dFL102IvyRuI2M5K3t2JBa4JSeYgA6HET
	fVWFDo10=; b=Cl5ftS57JbFLpAKWOskXemnucZI2X/0Mx44Xh+H4Z76nq8Jv889
	0BpBHGNhAiivHKhuVF7oBfiYqkLaK211EGnn70oLqHEwxP6EgN/IBH4cRgkrBE9x
	ZBpjaAekP6/Otuc4bFzxRJ29xbs85zkvtvzEtlZwl9Frb6Z57N//iG8hcuIHerIN
	Pz0fI31XOP17ZokAxqnNc0TvBiGpqLDoAYjgSs5ceooktkx6+3/y4jwhY7sSILaL
	8K5rGoLTW8Bbje7RI7iPyzIXgb3Y8t+ORpeZAiE6NFw/Fh+Z3PR0lb9a5qPmkmCJ
	7mhU3xuOE7+V7MjI6mAk+O4KRWdb0+CyNZQ==
X-ME-Sender: <xms:Isk6aTvxBFoJGOW7WCHFt3Uutkf_i7Qa3OeaoqgeDhy-_KFUSBcx4Q>
    <xme:Isk6acmJOHxII5sBwL4yvCKHrPYQNRNbWdAw1LipcqSSA4LWIIDRu5HO2RvcU1N3Q
    680w_HN5EGGQZGIx6tsvycPKi1AheMumYo3n9aLMvlQ0D5q3zAJ3Q>
X-ME-Received: <xmr:Isk6aWROwsxR11-LT_YMghAyK26oM_VR3KsW1sN1I3JkUXYwHcmQANTlG1ltEzAwtneVT3qi6yVgiR1N>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvheeghecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeftvggsvggttggrucev
    rhgrnhcuoehrvggsvggttggrsegsshguihhordgtohhmqeenucggtffrrghtthgvrhhnpe
    euvdektdelkeeukefgjeejteetffdtudeiffefheevfefgveeulefghfellefgvdenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehrvggsvggttg
    grsegsshguihhordgtohhmpdhnsggprhgtphhtthhopeduuddpmhhouggvpehsmhhtphho
    uhhtpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrh
    iikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgv
    rhhnvghlrdhorhhgpdhrtghpthhtohepjhhovghlsehjmhhsrdhiugdrrghupdhrtghpth
    htoheprghnughrvgifsegtohguvggtohhnshhtrhhutghtrdgtohhmrdgruhdprhgtphht
    thhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtth
    hopehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhtshdrihhnfhhrrgguvggrugdr
    ohhrghdprhgtphhtthhopehlihhnuhigqdgrshhpvggvugeslhhishhtshdrohiilhgrsg
    hsrdhorhhgpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhn
    vghlrdhorhhg
X-ME-Proxy: <xmx:Isk6aSK3ww_qWNePEaEYZ2dWGaNjvuqPU5BVxy33_7oofLEBPmj2fw>
    <xmx:Isk6aQGnJVlsE478CXeT8V7b85APUovhu7lkF8r7v7mVoUkeS2pIUg>
    <xmx:Isk6af2gbAFc4i3pyDmnqlRG4Ta8cMYnw7A5QPitzuK952iHhvx2iw>
    <xmx:Isk6aYLkCZxjtr4hQnzHFijWy9aj89azZV0b4V9vIi4OmdJVAeorvA>
    <xmx:JMk6ad8Nm_TvHlDsujl3b0NbjgaaudIKNKmSp3sySbmeoA555NxM43sy>
Feedback-ID: i5b994698:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 11 Dec 2025 08:37:38 -0500 (EST)
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
	Billy Tsai <billy_tsai@aspeedtech.com>
Subject: [PATCH v4 0/2] Add device tree for ASRock Rack ALTRAD8 BMC
Date: Thu, 11 Dec 2025 06:37:17 -0700
Message-ID: <20251211133721.18269-1-rebecca@bsdio.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The ASRock Rack ALTRAD8 BMC is an Aspeed AST2500-based BMC for the
ALTRAD8UD-1L2T and ALTRAD8UD2-1L2Q boards with an Ampere Altra
processor. The BMC runs OpenBMC.

These patches add a device tree and binding for the BMC.

**Changes between v3 and v4**

- Re-added system fault LED after verifying it works with an
  LED connected to the AUX header.
- Fixed GPIOs based on Tan's feedback.
- Dropped DT schema commit in favour of Rob's changes.

**Testing**

Ran `make ARCH=arm CHECK_DTBS=y aspeed/aspeed-bmc-asrock-altrad8.dtb`.

Rebecca Cran (2):
  dt-bindings: arm: aspeed: add ASRock Rack ALTRAD8 board
  ARM: dts: aspeed: add device tree for ASRock Rack ALTRAD8 BMC

 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml |   1 +
 arch/arm/boot/dts/aspeed/Makefile                        |   1 +
 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-altrad8.dts   | 625 ++++++++++++++++++++
 3 files changed, 627 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-altrad8.dts

-- 
2.47.3


