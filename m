Return-Path: <devicetree+bounces-62267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6164B8B082F
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 13:15:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 17BBF1F23CCD
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 11:15:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71AA415990F;
	Wed, 24 Apr 2024 11:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="UnxbLV0Y";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="fSi2yz1w"
X-Original-To: devicetree@vger.kernel.org
Received: from fout8-smtp.messagingengine.com (fout8-smtp.messagingengine.com [103.168.172.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359F111CA9
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 11:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713957342; cv=none; b=VVMwsF6DzdNpRazxq3Ic5fmi/3AFsLaBZ2pRjpNA+xrQ+myngWyJH6dCK9pCD3YDdz0mrMlyNR82lHvK3AfQjEpV62zg9yGQ7+rDyt+wYJPWZ/imOD1S9p5xCp0XH4M3hg7O9Cb9/h8Ev/udrDK690c5aGvWMNdUN325PeK4L7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713957342; c=relaxed/simple;
	bh=5QtpETQHfDqy4Njsq0/QoVngfLuPqIrRsUoNKQGGB6k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fi+VoXIcPgVrn37AxPbac2l7jULE9yg7sS5uLBGbcWwwPxzRsB/7Q+6ev3X+DmwHWWb2wrJNDeRLnprdaCsYkzez2Ih5bSXY4MaFsBQsPmcQngc48MM7GeDexgiyOO9F9/Ddftwzz1Jzy+VWekWAgKdaOC2ZACR+H1fzgqwvRI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=UnxbLV0Y; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=fSi2yz1w; arc=none smtp.client-ip=103.168.172.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id 5B4921380353;
	Wed, 24 Apr 2024 07:15:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Wed, 24 Apr 2024 07:15:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm3; t=1713957339; x=1714043739; bh=QazeUXh9vO
	h+aFkUkwhC9G2kKZ94QlmnP+cxUtfTD0U=; b=UnxbLV0Y8GsbEg/UxEhINW/no9
	SpMx0dg/zBkk89mQzF4u/Edr4+yYtDZq5OpGdQ1Sb4SNPyD/p+2QN33n9jUlv9gR
	NR03IkA4/Od3A9Bt28K3aIxhcA4pUEeihxRB5yeMCz6y4ZICx2Jljrxnr43F2vsY
	dG4bgirt4Uf0mgmjBpfSIoAdVENXxOzu+1cuCHswXxUB7SHAqXwJ1+/RmLf0GeZA
	4NB0dlJSz5ophqPOCVPdBjYFSW0+Om6b6dRZ98bgL0/BCdB4sXMz4ctIKuBp/RmX
	8Qg9fclVhCIitKHGZB8mYKIGzUW7N946GswMOIoy0shHZN4HHLgLq01fjlqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1713957339; x=1714043739; bh=QazeUXh9vOh+aFkUkwhC9G2kKZ94
	QlmnP+cxUtfTD0U=; b=fSi2yz1wonpuk9iOvW6+CHe2utJAZwnDm9iH7CHcjJu6
	TrXHHCcPJ1iOh2jbcLOZH7h4uFJOTPJSG0z8RFgyMx8ZEH2SoHWLU3O793kXC8aQ
	RrqaimADFdWlrVqf8PjWIr1+DGzXbOzc8uUHwKhLx5qFniVa2vJxLDj6eW8JiW8V
	Yfs2oG34qCkpRrXtpkCwcvFe1Gp3TJSuVa69R1V7w8GI/Fw4F+IUn0NQ7HkRVFC+
	RLbjTOhYIloX3Hflao5HbXrM7pZSCtVgkoH+YAyIAukHekpn/Mpba1EUG5F05mCb
	XQXjqMLMdfcaKmStnS9LG2HXkdM+MFxgMelomP7LSw==
X-ME-Sender: <xms:2-koZvc30oSw0B1thCLCzwVZvHW-aCDDWgIlAZtEIJR2__RGXy0zKw>
    <xme:2-koZlPac311pDqFM0Uf2b8ynLMVFagu22Rpx9qn_P-By2D03vi9GySoJK1j5CZEs
    ue0beliBvuqrmhGCQ>
X-ME-Received: <xmr:2-koZojfXrara-Jg9X6TKye_PS6vnkstGFd46MN7H26gf86Qv2cerTYFkNFmupfd0ZMrge7Zki7TZGb6QTl7AOkjQ7Fa0Dv2a5f_GBuJXiv_l2Pk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudelgedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomheptfihrghnucgh
    rghlkhhlihhnuceorhihrghnsehtvghsthhtohgrshhtrdgtohhmqeenucggtffrrghtth
    gvrhhnpeduvdeuudeugedtueffteevveegheehvdfhfeduudevkefggfeftdehgeethffh
    ffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehrhi
    grnhesthgvshhtthhorghsthdrtghomh
X-ME-Proxy: <xmx:2-koZg_JfCkrdL2YgN6fBKMZk_NzVjRCs8AVak44klLzzYmiQ3xVUw>
    <xmx:2-koZrvZ3F4EYLj8OxjZT9I8wshB53ngUntqdYC54qZZsZqCxdwBYw>
    <xmx:2-koZvFS8TImt9yBrwK-6zjslrGF7kQF0Ztwz6bcIM-zSUlHanmDOw>
    <xmx:2-koZiNoDmh3IcZDpn6BZcn2sBismdWollgPFs8yO1NBckKa3u33Og>
    <xmx:2-koZvEDtgW7Wkao5wOHa1blV1vZnvT6RZMra-sebJouFBK8kVhNAeTU>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 24 Apr 2024 07:15:35 -0400 (EDT)
From: Ryan Walklin <ryan@testtoast.com>
To: Andre Przywara <andre.przywara@arm.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Chris Morgan <macromorgan@hotmail.com>
Cc: devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	Ryan Walklin <ryan@testtoast.com>
Subject: [PATCH v3 0/4] *** SUBJECT HERE ***
Date: Wed, 24 Apr 2024 23:13:49 +1200
Message-ID: <20240424111353.9906-1-ryan@testtoast.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

*** BLURB HERE ***

Ryan Walklin (4):
  dt-bindings: arm: sunxi: document Anbernic RG35XX handheld gaming
    device variants
  arm64: dts: allwinner: h700: Add RG35XX 2024 DTS
  arm64: dts: allwinner: h700: Add RG35XX-Plus DTS
  arm64: dts: allwinner: h700: Add RG35XX-H DTS

 .../devicetree/bindings/arm/sunxi.yaml        |  15 +
 arch/arm64/boot/dts/allwinner/Makefile        |   3 +
 .../sun50i-h700-anbernic-rg35xx-2024.dts      | 347 ++++++++++++++++++
 .../sun50i-h700-anbernic-rg35xx-h.dts         |  46 +++
 .../sun50i-h700-anbernic-rg35xx-plus.dts      |  53 +++
 5 files changed, 464 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-plus.dts

-- 
2.44.0


