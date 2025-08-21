Return-Path: <devicetree+bounces-207193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC46B2EDEE
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:11:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 420DA1C24759
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 06:11:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A95325A325;
	Thu, 21 Aug 2025 06:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="hAADwq7c";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="OzDBlRPB"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a3-smtp.messagingengine.com (fout-a3-smtp.messagingengine.com [103.168.172.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8380B19597F
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755756690; cv=none; b=VQ7TRqdMoh2rWz6RgneaSSG5K1cFPluU1p1NyVzuHggR42lWihoi6m9ExUpuN1J3W6hRiRRvQ1C7UB0UZU7OqpBRKS4gtsU+lcM2KCwuYCG9xpC2cuuutq92jI//KJ4icYoS8oqqJ7LtF1gWFtGknHTUx1qVTGJPCe6dOONXfCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755756690; c=relaxed/simple;
	bh=5hkOPdpQLeDl4uihiit+mrq4CHvzfT/tAwsQ/o13f8U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SO/JcSdyt38iIFiUNCAbBcXQzODKDf5ILCQRvCBFfMbCqpaA54HUL0qDagE3pbTdJJt0QljqqpuxRUgQus+lQYvhMjCExJi2qbdY5JM9PbajxL2ajfPuPa1NOtts6cbwMrOeZDn39LM986fGWh1pLqAUSAokp/4MSs+89pTD7wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=hAADwq7c; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=OzDBlRPB; arc=none smtp.client-ip=103.168.172.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfout.phl.internal (Postfix) with ESMTP id 79554EC0064;
	Thu, 21 Aug 2025 02:11:26 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-01.internal (MEProxy); Thu, 21 Aug 2025 02:11:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1755756686; x=
	1755843086; bh=KSMK+0z+lciYSqTdZxGlttwhMX/+UOX3vxLx+gHanqI=; b=h
	AADwq7cznn8DbO8oiVt8MP9LUyLE9L2IbTxrVnaO0KJJcXqyQMT5EGM8MD960wxf
	4FKcKuIhMm6xIfO3wF/VwUKf0GQVD1fmgx8Os9mKXSKzTmkZ+h5kF86hpyhpiWwx
	O4U8JmdZPRS91WpQ/kb6/2ynM6Kh6L0hObi8A7A/cGe3LT78h4awgGwDHlKZNTQa
	uv8fQZAcSppAUgOblrrWymRNUAKIrz3L3lcCHtRfheKGGBiF1yTFqEObKuTtHCcB
	yTawsB00uZ5rNS7lC24R/m528w8RSyglqZ1TMhLfLug67j76oVFRUUf9NEAQQ+fp
	7w7ECTuptmJSpbcKSa9Yg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1755756686; x=1755843086; bh=K
	SMK+0z+lciYSqTdZxGlttwhMX/+UOX3vxLx+gHanqI=; b=OzDBlRPBX+aXDKDMz
	o0cNRkI8ZgMIFTz1BL8fgoM+pKOQcWJ/+wL6QGO+2KHPIgVajakZWYYykqqikeNI
	DLmL2RuvwWnH/5fbcjwCIdSILUHvvfRyehg6WGgiH5RvaQ1XH6RnQGYKJJcCd01B
	zsiltqUqr6GbAaP3rSdnR1c3qnNUs1PMj8lGzRetYrC+lanpZaCazdEczajsiCeF
	GVtIcKjozCH8tBbvixEW+i5OLDalq5gGsXB+KfDZesN2vvRJ28NjR64YSTJtTGUr
	cSV3QFOBhS+FFx4UrSC2L5EmuB+jAMml7zsJXdQPBCIJqfsSO8gq4N/+C0YLnQFG
	ky2zg==
X-ME-Sender: <xms:jrimaCsIj0aakceg_Vsdv7cuhsgEMZaoBBJ77wlYXlbx0Q9CAZnlGw>
    <xme:jrimaONspODL0heJ7zmQDtS_y1CgUrQgRbbdJzR0adtimM2SQrY4QjKmaJwZhO9hM
    zenxs8TvddVzAibqxE>
X-ME-Received: <xmr:jrimaPguzs3PETGmbVWWtbNb1mubUbQByDw7sK69d-QfJGDaqLd7oSr_OKiFI0N7gxYV5GCcq-ncDAMX1r11H_NGiKJ1wqIn5U7UKe-FqJUheEIhjwQZhEw1kiZ8PqgG3LkEGVSzX5i5lNKzn0ow45NXyXY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduiedtgeelucetufdoteggodetrf
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
X-ME-Proxy: <xmx:jrimaI6kusII9f0QZaesjlzRteveMzMJNpzqlN4Lw-pxiRgW1Yv6Aw>
    <xmx:jrimaO1ZxH0z84bYihH5ZWPZ0Bd64oMvl5H6l7jf1IoOTMUfNiI3cw>
    <xmx:jrimaLtnYeNWvz6s1DWcSjUdU2_wsO4OeyuU9eabwAH77Ik6YAwtVw>
    <xmx:jrimaM7isC_FooADj9JKQ8Ql8-yBGmQONuIf4YBWlY8XJltW6_Y6kw>
    <xmx:jrimaOlq-GttWL9x67ls388GfHg9AEfa_kbH2tfYS4oNY4qhDaob5xZp>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 Aug 2025 02:11:23 -0400 (EDT)
From: Mathew McBride <matt@traverse.com.au>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v3 0/2] dt-bindings: mfd: add Ten64 board controller
Date: Thu, 21 Aug 2025 16:11:13 +1000
Message-ID: <20250821061115.18254-1-matt@traverse.com.au>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250813023435.27776-2-matt@traverse.com.au>
References: <20250813023435.27776-2-matt@traverse.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is a rework of a binding I submitted a while ago (2023)[1].

Because the nature of the device-tree binding was very simple (it is an I2C
device with no configuration parameters apart from the I2C endpoint address),
I had submitted it as a "trivial" device.  I now understand that is not the
right approach.

I have categorised the controller as a MFD device, following devices of
a similar nature, such as "gw,gsc", "google,chros-ec" and "kontron,sl28cpld".

Unlike these devices, there are currently no child "MFD" features available,
but it is possible there could be bindings for nvmem or other functions in the future.

[1] https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230501064727.8921-2-matt@traverse.com.au/

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
Changes in v2 (2025):
  - Create dt-binding yaml file and categorise as an 'mfd' device
  - Removed the unrelated MMC controller fix, which will be submitted separately
  at another time

Changes in v3:
  - Fix typos and style issues in yaml and commit message
---
Mathew McBride (2):
  dt-bindings: mfd: add Traverse Ten64 board controller
  arm: dts: freescale: ten64: add board controller binding

 .../mfd/traverse,ten64-controller.yaml        | 45 +++++++++++++++++++
 .../boot/dts/freescale/fsl-ls1088a-ten64.dts  |  4 ++
 2 files changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/traverse,ten64-controller.yaml

-- 
2.45.1


