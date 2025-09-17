Return-Path: <devicetree+bounces-218133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 72078B7F457
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:29:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F1FFA7A427E
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 01:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50983214228;
	Wed, 17 Sep 2025 01:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="GZ7o7oBr";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="OiE5pUJB"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-a7-smtp.messagingengine.com (fhigh-a7-smtp.messagingengine.com [103.168.172.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94B5B1E32B9
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 01:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758071999; cv=none; b=Wi9EkEFp9jlBhr0o91BfuhonI4fzOMf8DNs2Dk1h/mUvERFBI4Uc0HqRTGqzaJahH4tnJw5w2GYdHuUUa/7rMS/z/vL3+L7QOMkEHbB3+O7cgJv64cr22yytw4r2F0t6OwUaobuoY49Qr2f1M+W+fZFgytifLlCBIkg2iy5Rn/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758071999; c=relaxed/simple;
	bh=QUbV60R+XzkH9BF85ETCdGVv2X6YP/fNHFVcWYRk5XI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cZ2ZIiVbL4AvQAL777z833UW0L1OyzVml/P8UIHKHnxfZbQHtZWoORci7cBOi8urzOs317VMfAgLgM+jxcwdwarV1qcLdsKTqlhMBhVTlLwOulccqzV0O5zPSOYFkygOLXFAGGeKH9vJwPpe5hHIoNK/FyVwm7DxL5mBMwfjsPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=GZ7o7oBr; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=OiE5pUJB; arc=none smtp.client-ip=103.168.172.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
	by mailfhigh.phl.internal (Postfix) with ESMTP id BDD5414001C6;
	Tue, 16 Sep 2025 21:19:56 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-11.internal (MEProxy); Tue, 16 Sep 2025 21:19:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1758071996; x=
	1758158396; bh=GAZjNYlYoUxbND97FHyJPKGZ9OtZP5oe5PR+eT/X57o=; b=G
	Z7o7oBrPxp1aTccnBvCB30h/cLSe642B4TGFfIGld0pC8JOnqhbgkS6Gd59TAfgl
	2l5Efeo3D7mb813VoxCA6y7Ott+RPWT+7Zdmy673k7/pC88LMmN9VTB0j9Pr+rRi
	tImHSiVHgGAwWQ5su3vQrXxBMW3sAzWpiTddlsFohaIuNF5Faore1zVs+BIktd6E
	RdaOEK8SDaCxpfA22RpQ7n12N+Tn2PT/4/TRZOuEmjr4murWucKei4z1OHhWWylI
	x25Fozlsa6h5kJqfxz1vKFpXxuCngy9lGFHrITxRdY7Gk9BMNCerJO3m9+BcEo8l
	PHHaodYyC1M6sPvanUNww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1758071996; x=1758158396; bh=G
	AZjNYlYoUxbND97FHyJPKGZ9OtZP5oe5PR+eT/X57o=; b=OiE5pUJBEVctG4j7p
	yJch+eh6egGNWtyoOvmBPbpqBfyVnKLPLCFlEWiJ5PzUn5AZw5Um7oUNs2wGpr8j
	a+sQOxkfA9ZwKikaFcFfouhzB/IxA23IXqz1Wacs2kMkhxy7e4OlhWrccL/YMSU7
	49nBWk6PuOG7+tlizHso/7zkIPwD/ENuvmHnTsZl92lx+AI+lQjz1WRdLvljDz2i
	n6vfiCEJbp/j5aYHLqBnoqd4Tf9T5wpqM8UPbKMlzbwSEgzaB5dfbmXAWBz3A3ZK
	VYt66m631C5y9TSCLgAmFgwxDzUZHoDMGlietDYN+mSTUoNkCB08LM04JrJFMGPI
	rxf6w==
X-ME-Sender: <xms:vAzKaBkijQJGGIFjz1EF6YrMhK3T9os-qsg21GDRibmr3g81SW3Ekw>
    <xme:vAzKaDlLiYJ_DliXWM5wnaKqL5J9ip7xlLHDwCOE3jT8pW8tTx9hUPw_HW72getlR
    -A6Xlvlh6xeAGKALpo>
X-ME-Received: <xmr:vAzKaJYdSufajFYwd9Kh21J-MOPER4UFlXB2YL92SHfP7PcF3oTnOKNqd0QmQVcp8hW1s645UgVmamkwyixRMnIPctIZVvEFmohhBNeOmuVb0BiGql3uSaoCLAB_5Kwstql-wIBTq316mfNuCJUTo6DOGzA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegvdduudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghthhgvficu
    ofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecuggftrf
    grthhtvghrnhephfffueehtedukeevjedvieevffehjeeiteehhfefkeehgeffleefleej
    udekgfevnecuffhomhgrihhnpehtrhgrvhgvrhhsvgdrtghomhdrrghunecuvehluhhsth
    gvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrthhtsehtrhgrvhgv
    rhhsvgdrtghomhdrrghupdhnsggprhgtphhtthhopeekpdhmohguvgepshhmthhpohhuth
    dprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdp
    rhgtphhtthhopehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhtshdrihhnfhhrrg
    guvggrugdrohhrghdprhgtphhtthhopehshhgrfihnghhuoheskhgvrhhnvghlrdhorhhg
    pdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikh
    doughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhn
    vghlrdhorhhgpdhrtghpthhtoheplhgvvgeskhgvrhhnvghlrdhorhhgpdhrtghpthhtoh
    epmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghu
X-ME-Proxy: <xmx:vAzKaNQxifJ1xF7Qosw2lcFC5OCckOV4z94ramicOiEwLpaVhcjFlw>
    <xmx:vAzKaLtkK1woThXD6pCA2oXkEkHVB7ISoCb4fdXvfg9R7wKjBe_UbA>
    <xmx:vAzKaHEV3sJSqifKpSImPBtO3ATn5DxVmUZ6nbYKVu4-aDPvdz0wLA>
    <xmx:vAzKaExdoFPtpejWyF7tU1piQKk76uz-TQ_zKpac1q_cu_r-_J_O6Q>
    <xmx:vAzKaEfd6rPptWDN3TuJwSO4cTg16pOPxnX1NwufnzuxYDZs0m_Gr9hG>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Sep 2025 21:19:53 -0400 (EDT)
From: Mathew McBride <matt@traverse.com.au>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v4 2/2] arm64: dts: ten64: add board controller binding
Date: Wed, 17 Sep 2025 11:19:40 +1000
Message-ID: <20250917011940.9880-3-matt@traverse.com.au>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250917011940.9880-1-matt@traverse.com.au>
References: <20250917011940.9880-1-matt@traverse.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The board (micro)controller[1] is responsible for functions such as
power supply sequencing, SoC reset as well as serial/MAC address storage,
bootcount and scratch registers.

There is currently no Linux kernel driver for this controller, however,
there is a driver in U-Boot which utilises this binding.

[1] https://ten64doc.traverse.com.au/hardware/microcontroller/

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
 arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
index 3a11068f2212f..71765ec91745e 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
@@ -253,6 +253,10 @@ usbhub: usb-hub@2d {
 		reg = <0x2d>;
 	};
 
+	uc: board-controller@7e {
+		compatible = "traverse,ten64-controller";
+		reg = <0x7e>;
+	};
 };
 
 &i2c2 {
-- 
2.45.1


