Return-Path: <devicetree+bounces-62261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0018B0825
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 13:13:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6561A2822FE
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 11:13:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 848F815A48B;
	Wed, 24 Apr 2024 11:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="kGbm765Q";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="YJ+9zZnu"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh4-smtp.messagingengine.com (fhigh4-smtp.messagingengine.com [103.168.172.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506AE15991C
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 11:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713957195; cv=none; b=SqtF8vGZruW0u+W2HStuOE1GDzbRndFfEJ86FL7IavkXqYxY0kYRtE8wDqWDY4HgNjTuAWl/e8MNJrVJRzJfkZo9xVd/DXjTAURcLqY6io5zLsK4UL+kVxD75X5W9l4B7ek0zhXpbogp36fB6cKQJx+/9RGgCk/7kcBWUzybQ/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713957195; c=relaxed/simple;
	bh=5QtpETQHfDqy4Njsq0/QoVngfLuPqIrRsUoNKQGGB6k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Tg47r+S2NB6VQ4NtUBZ7BYvmz1CF2PkFbIxax9pMX7gMn4YOqHgFofuvev3UHM96QxTQYndGG9k0lNmBAjCm/pzbqZ1WG0mFdFMvsYnbeZnzSnY+8xIlUEct1kIb1S9bkkK4dOFKaQekM1/bvDoZOiGZlViFYTeD6Yxfi1oEszU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=kGbm765Q; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=YJ+9zZnu; arc=none smtp.client-ip=103.168.172.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 5E60211400C2;
	Wed, 24 Apr 2024 07:13:11 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Wed, 24 Apr 2024 07:13:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm3; t=1713957191; x=1714043591; bh=QazeUXh9vO
	h+aFkUkwhC9G2kKZ94QlmnP+cxUtfTD0U=; b=kGbm765QzczKfKP3Zaq3ZudZuK
	1d6WPKXSCoTybKcvRcqA+/SR9j1pXxFzrefY9qESDe/YJDUzDvooLREttRIFN0U8
	SU4SX1vVeE74jWPk6ETPhE5dzpJDhuD0Hn5QityLOJDtei2/Slly1yobxaqbPEu0
	sMLyMIp5i47yJaHyU8sk3Sq0w9lgThVN7Z6DRerz6hufS6snXDLY2jjZ9GIVHv3x
	pyIZwasvAcDLtJ5WfkBQufOB1cbhYhd/8G+wsI4meMuabme+qqiJuR5Rx3wP76qm
	6+6iM2pW8VntyC9+UBtqML5RxUqt9yKKDM45M6vSD5DXw66uLwn9zWa3ZKFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1713957191; x=1714043591; bh=QazeUXh9vOh+aFkUkwhC9G2kKZ94
	QlmnP+cxUtfTD0U=; b=YJ+9zZnuNLt0qvf/3snfDl+CPQJylZjUZDMIRhT+YAwC
	s1bADO649rsrSJoLOlRf2tjdwOoJk4kTY5ZS7Etj0vtALFGVQGu0aQqnqWelxJrS
	vFSy178ea0Qkvo2wdowo/H4jDRF6vYITd/7/YK26jQP4rZVvy0jgdietiVrrS2rF
	3UHDjNMGWjj9mw+HrEjh6TbrO9Li3mUTNF0WN8XLZfCAuW7j6IPYqi0bM1rj7yb5
	NjSDcdRgLDn5jWExDkqjF33yJiB1OXRbc21Ty3mwO6nQpZVO43FegsWmAqJ9R7x4
	WsTa8gDQqEyFqB2y834LhDmWRmtDG/6dA7B6/XJPQA==
X-ME-Sender: <xms:RukoZkPbvDWBb-aWXFdHeZEPCNGOvZYN-a54zgg9jxjuC5W2qR5iQQ>
    <xme:RukoZq-pIRJdX7HHeHtwBGP0GCaRgheRdwUhaIfPW8Fj31KIFm8hQtiqe5G5zZr7M
    7NChhdB8eps5PqfZw>
X-ME-Received: <xmr:RukoZrTRfB1bLqOkvfv5dvRxZD7H6Yz_Y-ICKB0G__WLkVCQzDbiwHHMO89FNeLcCv5Irh4NvRDaFz7lxWm06VSIA-nwKuQrWiOB3_RRcR-0oTVQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudelgedgudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomheptfihrghnucgh
    rghlkhhlihhnuceorhihrghnsehtvghsthhtohgrshhtrdgtohhmqeenucggtffrrghtth
    gvrhhnpeduvdeuudeugedtueffteevveegheehvdfhfeduudevkefggfeftdehgeethffh
    ffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehrhi
    grnhesthgvshhtthhorghsthdrtghomh
X-ME-Proxy: <xmx:RukoZsttYGEYlvwCO7S0Knkp5HppV-0PXmHyx5nqzzhjQu96YCFk3w>
    <xmx:RukoZsflGpb9Bt3m5qcxIhSQMRGd0ntRoorYNkivr4xI2lI65OFEyQ>
    <xmx:RukoZg08P_r3nokyLagjSyl5S6m-Cf-Gx-sRir3QSjorpgbAFWKvNw>
    <xmx:RukoZg_ReXGvOnBzzssdqirWnp18yVmU6t1g4qFnMFcfypyY-aLZlQ>
    <xmx:R-koZg1sAF3ys4vZB4a9oITzLeeN8j4zmwfkIxft2IHoIC22Kl3x1olP>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 24 Apr 2024 07:13:07 -0400 (EDT)
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
Date: Wed, 24 Apr 2024 23:09:43 +1200
Message-ID: <20240424110947.9057-1-ryan@testtoast.com>
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


