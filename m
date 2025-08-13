Return-Path: <devicetree+bounces-204036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA2AB23E48
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 04:35:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3D6F561729
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 02:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B12B51917CD;
	Wed, 13 Aug 2025 02:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="A2yULsun";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="YqCWnBDz"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1BE6FC3
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 02:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755052498; cv=none; b=BrYTzVf3Fz4XVvOkBR8ocjTwktYOokau1CuiJsMZojj5M9n1AcA67wbCETlvQlMvJeEYocbAH7l/4+IRAa0DGlChP0Gbvwgxz402XyXKIE6EohjBSS31lXDy7c1jtEG3iJ7GxjY+8sRGj/4alOeKe7rOhR9xYxPpaP5Zgw7/dnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755052498; c=relaxed/simple;
	bh=ltq+HGCsw4piQZ5m9vhWUNSCRJXCWmoSBa9kI02N0/8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hM0FkKCp+p9TS7i4W+3PlUEy0MtyRoolt/KBtTrNiDipNM2tar1mxRvMTH1YzbNqylsdhnYM/iDtMsUlAQKcsxFVgwjLPHu6ELfLp17tmhpalcGWSNBaLUYpqwZP6EiCxr7X+5VYvsHIskO4SZvEHlTpRfK7zneWm8JNS3sROXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=A2yULsun; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=YqCWnBDz; arc=none smtp.client-ip=202.12.124.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.stl.internal (Postfix) with ESMTP id 2632B1D000C0;
	Tue, 12 Aug 2025 22:34:53 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Tue, 12 Aug 2025 22:34:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1755052493; x=
	1755138893; bh=femDdU3dFkH7raXEEbWZr4vlRHUvSpacG7TxMcsMD0s=; b=A
	2yULsunFUAB3b6nVq/Ees6h35xmAyJnc+LLS1FB+iKSLrDUor39eGGUW19h71ugN
	ITDO0zNuIAzGIbH43/bMqwDfYOok8AuIsQ3cfuEEp4oDA4JlL5J4dFsfnYoT4kuU
	AWtMZYtU19uiVaDPwl4GhsfRQql6AVCiGJJZrDLBHaVw3wjkqJ4gH+9FM5Yny5mY
	mXLZ7Fu52+q+K9E08XerR4yEdqjioniPmuazG9s7Sm54lEmTnqihvhwvkvxAm5iD
	6KXGgiJsHkd42uB4IVXPtmK4IcMcBXKyBTSacxHUeN5XSTnqpQKfttXcC3a1XzqE
	k+qGWUHKzSEAsm2mDDvJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1755052493; x=1755138893; bh=f
	emDdU3dFkH7raXEEbWZr4vlRHUvSpacG7TxMcsMD0s=; b=YqCWnBDz0GiSMx8Gg
	+NhLEyo61nXCNk3AAG6SMGI9MVPB9WzeMktIvI9pm8Sa/pNJvIP5tuS374w3RdTB
	9JvaNozRw4HSWw75Z+lEFIKvcZ8R08rd7Skw4ONvR4H9FWkIm7eO56Gf71+mYFgI
	aj8PVNnNa8GC3hKEStAeTNr5MuR+V8o2jtcT/fOrOnAM0+RihG4+lO0w92SRTPLP
	SLJ7IGEXJ7igTn1IqB7aqjXULoyYsStMrrFCOCNrjFrnmuJNzfr1RWuLx4nsbu5J
	ihARnOcZs0aq9tXuOPw7CVqF/5atflFUH9N5vYdU+/BPpVd643hF4uEAg2XO0PSQ
	vWWzA==
X-ME-Sender: <xms:zPmbaCH9pTmsJ9xaH96ciuMUvmh5BL1oB554T8bMOqGJwQXCXG8jBw>
    <xme:zPmbaKG9RygxKiqgcIEGE4bfmRM_Rj_xT_UXaBmrmMfxXiENzXPecWtT7nRkjKoa4
    Yh2Q1l0EJFs757Tyf0>
X-ME-Received: <xmr:zPmbaN5DCjxUSinhtlhgn0sBC2luZRDhwyU44si64RMHGsQlZYGFK1mpr7rfntPYE01mV_LQSCDCf6XRXD4Gp7FyNXbVlgjOEvt8ZN_yqusQlMExc8im2NfQdUCISTiCvwleO_MeIBP0vCQlb8D3xpvibJw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddufeejtdefucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrthhhvgif
    ucfotgeurhhiuggvuceomhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghuqeenucggtf
    frrghtthgvrhhnpefhteehkeektddvveejffetleevkeekfeehieffleeikeduveehtdfh
    keehhfffffenucffohhmrghinhepohiilhgrsghsrdhorhhgnecuvehluhhsthgvrhfuih
    iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrthhtsehtrhgrvhgvrhhsvgdr
    tghomhdrrghupdhnsggprhgtphhtthhopeekpdhmohguvgepshhmthhpohhuthdprhgtph
    htthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphht
    thhopehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhtshdrihhnfhhrrgguvggrug
    drohhrghdprhgtphhtthhopehshhgrfihnghhuoheskhgvrhhnvghlrdhorhhgpdhrtghp
    thhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikhdoughtse
    hkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdho
    rhhgpdhrtghpthhtoheplhgvvgeskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepmhgrth
    htsehtrhgrvhgvrhhsvgdrtghomhdrrghu
X-ME-Proxy: <xmx:zPmbaHwuHmUSHXJB4RDa6tSj7ObawUWisH5Ee_F341VmIB99y7Jtrw>
    <xmx:zPmbaEPoeZuD8stlj2eGF4tkYdmUfjsqiXDBWrKGnkGiaKUVT5Cvwg>
    <xmx:zPmbaFlG2HKrNmWXbQXrPyfkWYy83Is7FbJWbp4y000BAIquorjHQg>
    <xmx:zPmbaBSg906xG1EN7JGkZtdOj354xYg5hBjEScKNCztYQhcUUJ0ysQ>
    <xmx:zPmbaI8M693S2Kvt_Rc4Elq3EoRZMb_GGXuzleRxLY5Wa06EFcGY9Dn1>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 12 Aug 2025 22:34:49 -0400 (EDT)
From: Mathew McBride <matt@traverse.com.au>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v2 0/2] dt-bindings: mfd: add Ten64 board controller
Date: Wed, 13 Aug 2025 12:34:33 +1000
Message-ID: <20250813023435.27776-1-matt@traverse.com.au>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20230501064727.8921-1-matt@traverse.com.au>
References: <20230501064727.8921-1-matt@traverse.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is a rework of a binding I submitted a while ago (2023)[1].

Because the nature of the device-tree binding was very
simple (basically a device on the I2C bus with only an address/reg),
I had submitted it as a "trivial" device. 
I now understand that is not the right approach.

I have followed a similar approach to two comparable devices,
"gw,gsc" and "kontron,sl28cpld". Unlike these two devices,
there are currently no child "MFD" features available,
but it is possible there could be bindings for nvmem or other
functions in the future.

[1] https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230501064727.8921-2-matt@traverse.com.au/

Mathew McBride (2):
  dt-bindings: mfd: add Traverse Ten64 board controller
  arm: dts: freescale: ten64: add board controller binding

 .../mfd/traverse,ten64-controller.yaml        | 44 +++++++++++++++++++
 .../boot/dts/freescale/fsl-ls1088a-ten64.dts  |  4 ++
 2 files changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/traverse,ten64-controller.yaml

-- 
2.43.0


