Return-Path: <devicetree+bounces-218131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6723B7F850
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:47:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11DAB3A57F4
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 01:19:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7373214228;
	Wed, 17 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="cSxkQ6vD";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="VEmzU1W2"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a1-smtp.messagingengine.com (fout-a1-smtp.messagingengine.com [103.168.172.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2032B1FBCA1
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 01:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758071993; cv=none; b=ptuM99KfOXdmpCCI9awTPidzm3z7bFgorzSfHBxGXfvjhRp6K63qkqebigUgsY2/OYQjcQUTFuudJjhX8plcu3nh0k6BKD0/Crjm5x8/LHjN/VhRgcCOQ1qmgERnkptDv4Bp2UD0r/a6CJcLHwFVDZtzBRYOPTMzQXBL7f3+hD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758071993; c=relaxed/simple;
	bh=PlUJ1IgafMLvNeSH8QXnd6lOBrk4qYjelCMH+wl1Yhw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tVPQvB4vINyTqgETKYfVynZTHx01dELppJXtfNoVQyNH4lqbi9qBx/tvajLQjb511GyWdL/CgMlqMTZdJTMNeyqvjylIGAzZG0auyY6EJtkGHP21NiWU1KE1hH0aD9dHkt+X6U15hL4GabB+AdSluUrDcDx1JgMDX5vks7TqCX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=cSxkQ6vD; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=VEmzU1W2; arc=none smtp.client-ip=103.168.172.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.phl.internal (Postfix) with ESMTP id 32C25EC021D;
	Tue, 16 Sep 2025 21:19:50 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Tue, 16 Sep 2025 21:19:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm3; t=1758071990; x=1758158390; bh=tq12pRtdmB
	+gysuIH+PKSklm1eoRKn+fCbhmqtPHAS4=; b=cSxkQ6vDx15lCbXzTIm0Itpmgt
	yVaXRaIldjPmanmt4MsdnmPdCRlyEpv4tw5FUpShxCHfCZDoEP7kKJt5sTOIgfGS
	xETJvdyoMiQxPdt4boPryw3ULU1LTCg+gmfL3iVishPKYNmPrgfy7OjYRpCjfowt
	w10Fap6mRI44EXJn0VXTNqLYRftpgmADm8a52SLOk9H2b1OYxBpSKbzKyhjqUOPO
	jOmJ14NfD0/JvK42koHbX4sqn1ooXY66E164p4u7cYkyOCCxciviYBIxvCv62wRl
	XBioLQjK3PMsS/AJUgxN6a+RoAJZvKSrIWRVwv+wbbY2VB9rpLPZ4mkSkktw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1758071990; x=1758158390; bh=tq12pRtdmB+gysuIH+PKSklm1eoRKn+fCbh
	mqtPHAS4=; b=VEmzU1W2TzmOPv2GeDCK8r03AAu1VA3IVqjxclv2hhFf111whit
	RfYLj+svIAcgXPb1bxwjQOzIsOzZ4QMh5KvshXhdKgraE/RBG57l65fMAUl9olLj
	PHwbu6ckjYbpSysiEgOKLXH0HeMiCS4/aVBfbkhTTbohvNtC78DjKX77GdGkyKzA
	+o3TcCn/TZF/9yzdZtUipUt+oynlLWUO4XQG1isfi0qrX+QeGfH2iDDcP8TalYXa
	fc8SfCFKGWVcsNcyQgX7iAQbVCTG0Jh61v0gK195uTehN5hkHUdDWIeWhK3d00Gg
	yw4G5SfKEGykyIg/YTdvls+zvENgSlnKavg==
X-ME-Sender: <xms:tQzKaPK5oYnRblu_VxCZNh0wT7bX6sRTHJoZVgMaxGBmwPaTmmeK1A>
    <xme:tQzKaJ7oxrCr9d6EIfsNkb0MQXbS0R1UyhTu_4g5E2NG7ZsToIJ_TPqFKyu87qWUI
    WNij2Xn8kv8s4_eCio>
X-ME-Received: <xmr:tQzKaJffCqJ47n7xb0ZF43WdARhp6nzIOWSuug7RjHV-KvJqbi96HwiXpApUPFJkya0mHZ4GJNKbLtObA93fNaul9ImWk-LXo6DBSTsNGauwxTOq2CyvTzKrFrJAiSnfLh4_z8UYEDZlbo3L77sG6wLD_a8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegvdduudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeforghthhgvficuofgt
    uehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecuggftrfgrth
    htvghrnhepgfeuvdetvdelgfdtvdektdevvedvfefhgeffudevvedtjeehtdfhgeetleeg
    ieelnecuffhomhgrihhnpehoiihlrggsshdrohhrghdpthhrrghvvghrshgvrdgtohhmrd
    gruhdpkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
    pehmrghilhhfrhhomhepmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghupdhnsggprh
    gtphhtthhopeekpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopeguvghvihgtvght
    rhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdgrrh
    hmqdhkvghrnhgvlheslhhishhtshdrihhnfhhrrgguvggrugdrohhrghdprhgtphhtthho
    pehshhgrfihnghhuoheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheprhhosghhsehkvg
    hrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdp
    rhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplh
    gvvgeskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepmhgrthhtsehtrhgrvhgvrhhsvgdr
    tghomhdrrghu
X-ME-Proxy: <xmx:tQzKaEGy1Fv0oisVFKfjCKA9DnPEykoEn554_i-Fzx8aA8OJ7EZf7g>
    <xmx:tQzKaCQBL_E0u30SXNM-S9lDxub3TT0SZUZZMs5sVYHy6C4MbMpe-Q>
    <xmx:tQzKaCYEurLaMylrHUvFj7QR9LACPNuP7ad9cXp4cJ7asDIPFnXtvg>
    <xmx:tQzKaF2elxF53q4EEeNpBretzi1Sqc6r5mbG7wYWqT-ScQNY3b2yfg>
    <xmx:tgzKaGgHvKDqCouhv2KH5ebbAiF6gzzEnQSvGYkoLcI73uzQFqhSoquI>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Sep 2025 21:19:46 -0400 (EDT)
From: Mathew McBride <matt@traverse.com.au>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v4 0/2] dt-bindings: embedded-controller: add binding for Ten64 board controller
Date: Wed, 17 Sep 2025 11:19:38 +1000
Message-ID: <20250917011940.9880-1-matt@traverse.com.au>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series requires the "dt-bindings: mfd: Move embedded controllers to own
directory"[1] change which is in mfd-next for the 6.18 cycle.

Changes since v3:
- Move to the embedded-controller directory (which was created following
  the last submission)
- Remove the extra paragraph in the dt-binding description field
- Const'ify the I2C endpoint address (only one I2C address is implemented in
  hardware, 0x7e)
- Fix the description line of the fsl-ls1088a-ten64 patch (s/arm/arm64)

v3 series:
https://patchwork.ozlabs.org/project/devicetree-bindings/cover/20250821061115.18254-1-matt@traverse.com.au/

More information on the board controller can be found here:
https://ten64doc.traverse.com.au/hardware/microcontroller/

There is no (presently) Linux kernel driver for this device, but
it is used by U-Boot for functions such as reading out the MAC 
and controlling some devices on the board.

[1] https://lore.kernel.org/all/20250825081201.9775-2-krzysztof.kozlowski@linaro.org/

Mathew McBride (2):
  dt-bindings: embedded-controller: add Traverse Ten64 board controller
  arm64: dts: ten64: add board controller binding

 .../traverse,ten64-controller.yaml            | 40 +++++++++++++++++++
 .../boot/dts/freescale/fsl-ls1088a-ten64.dts  |  4 ++
 2 files changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/embedded-controller/traverse,ten64-controller.yaml

-- 
2.45.1


