Return-Path: <devicetree+bounces-245902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5605ECB6938
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 17:57:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0873E300A879
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 16:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05B7D299931;
	Thu, 11 Dec 2025 16:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b="zre2iYV2";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="jmQqp7yH"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b6-smtp.messagingengine.com (fout-b6-smtp.messagingengine.com [202.12.124.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BD522A813;
	Thu, 11 Dec 2025 16:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765472233; cv=none; b=iorkEOR+fWkIxKuH9A0vcVtf/x2S+JECeZPwb+pj5nkda4mIH9HGb6qNMnMftCZEWpKblffedkIHleCLQPHrXv239Nnf5hoMTGAKTc/TxYiaEEoIlyg0iZ2zqzgJLemuwEd9rYv4VWbh8pbL57e6ItvFbUMJsA92kn5X65+paUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765472233; c=relaxed/simple;
	bh=Bhy/lWLLE79jP0bColO0i0s999cEZzWkw9w2Uy0YxBI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WFflfWbt1vgvOWCCTmfsSMrLfFOQP4bAEUFPov+dKlx1hATuIN75uCa712oe2QSFhHTSoksNEVj7F4f8s1zm1FR9XMo4o4qdsTF14G4XL4ROMgtM8OV3yOwVV4gKnEdLwa6Xfey5yRxnedHb8XJV88y0MVNVbFTFAqcgIjYIqLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com; spf=fail smtp.mailfrom=bsdio.com; dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b=zre2iYV2; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=jmQqp7yH; arc=none smtp.client-ip=202.12.124.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bsdio.com
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.stl.internal (Postfix) with ESMTP id EB7961D0005C;
	Thu, 11 Dec 2025 11:57:09 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Thu, 11 Dec 2025 11:57:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bsdio.com; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm2; t=1765472229; x=1765558629; bh=FV+/mf1TDpvf9vv9dubhp
	TnpGcmZYUCXQBu8f7/hO8I=; b=zre2iYV2KpNCrrkml4JE+j4P2mn/oYCcIpn4K
	wqtDAv1VIS27KbWp7kxCzXOmnIBSMg8o3Yzj8/Shur9WnIoydJzU1WfMT27o8JXe
	0zDfvxb6UN4DhwVgY8AqSHy79kfPDSriP+fIbLnj2zyG1lre5viwrvGAZRIQOkd4
	EuAq0SWXxd9Lr+nknEVUNAyAUPmYGkzESbep9WELnCkeCYSMyKBy/v7nL9YP8iuj
	16/XaKw8Zaz3o1Qr84zg2x42D1iprs76Ioab02l6IgmnxSi8j8L2Ebp/jVOh0N76
	MC3JlKHpJ7EXHEpgKkHnGYGpjetQRNg/LwNk340kjbJRAly9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1765472229; x=1765558629; bh=FV+/mf1TDpvf9vv9dubhpTnpGcmZYUCXQBu
	8f7/hO8I=; b=jmQqp7yHuKNzHHSQeDsE31pfLBJmQxTyXpTJQeFTMFQ3yCVK2AD
	dz9BeOWk0UFNo5fp6Glw2dPn8/RiWuGfI9SKvf0otJ9Tz1LtqU4W8KuSLp1yda+D
	LN+Gp1oeeARRCYrmEXRfGnwRVzx644cUqlp5ZJLc2YaSQVUyeAxH+2WD+p1ExQD9
	/8Jjcddy/BjOqCxVgCXiaM18gJJ+36Y1x5wtu8hC55TF7lqAsfMcxmEbRX2xaQko
	+WNZcjqR+HhBluuMGi4rMu5YdU1vayBKcrXwt3dBpBEL60rPgIu0Fv5e2GX7eZLC
	kE/Y/F4LgcJMwZDKvDxhm0ga1SRaYwoqxog==
X-ME-Sender: <xms:5Pc6aZWbJUUASrSVq0QUvyj3BppjvJIDJrHV2FScZ4sjfWhQApawag>
    <xme:5Pc6aRvuJQkQn9E5fxC_GolkwJH7Pio6H_Whl_oLiVzBRSJ18eu50Gcl1CTYWysWC
    AvutmEbi4r8jp_srw25qko8jN1C_2vE1YvXU7pt8Jn1vHaP9UNjsA4>
X-ME-Received: <xmr:5Pc6aU6xj63M3XnlaXtFWxMh702mfrLtWTvanLxt1mMF9kB_f0U5klZE8CuTLfQJ1fWd9o4TPezKoe0q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvheekhecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:5Pc6acQQzWlHepqpVAiP5l-uNUdKFuz8OzeDGolhAicNDQM1IooTFQ>
    <xmx:5Pc6aftcADNT-RSR_rHD4O0VR4MsrbGs0ThHiB7g1ZnaBBHwNB_v8w>
    <xmx:5Pc6aW-4gtH1FrFLWvEvZz-5b_lf8T4Rhj9HIenJ7y--NPWqPRtP2g>
    <xmx:5Pc6aQxMmodAiQR2NNZIxJ_oYcCCT46CqGnAw8wdufWkMat07gIJ2g>
    <xmx:5fc6abEd8mY0s5x0s9HUxmRzxUPhnpR4H2UNLtvfdCdqyMqT4RzqmxEi>
Feedback-ID: i5b994698:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 11 Dec 2025 11:57:07 -0500 (EST)
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
Subject: [PATCH v5 0/2] Add device tree for ASRock Rack ALTRAD8 BMC
Date: Thu, 11 Dec 2025 09:56:55 -0700
Message-ID: <20251211165700.29206-1-rebecca@bsdio.com>
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

**Changes between v4 and v5**

- Removed the uartx-mode1 GPIOs, which were wrong.
- Fixed button-power-n GPIO name.
- Removed backslash from end of line, which isn't needed.
- Removed duplicate/wrong bmc heartbeat GPIO.

**Testing**

Ran `make ARCH=arm CHECK_DTBS=y aspeed/aspeed-bmc-asrock-altrad8.dtb`.


Rebecca Cran (2):
  dt-bindings: arm: aspeed: add ASRock Rack ALTRAD8 board
  ARM: dts: aspeed: add device tree for ASRock Rack ALTRAD8 BMC

 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml |   1 +
 arch/arm/boot/dts/aspeed/Makefile                        |   1 +
 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-altrad8.dts   | 624 ++++++++++++++++++++
 3 files changed, 626 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-altrad8.dts

-- 
2.47.3


