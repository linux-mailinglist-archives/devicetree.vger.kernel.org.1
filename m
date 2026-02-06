Return-Path: <devicetree+bounces-263227-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNG/BaZ7hWkBCQQAu9opvQ
	(envelope-from <devicetree+bounces-263227-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 06:27:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F9EFA56B
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 06:27:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 824A93030E80
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 05:26:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AF97337690;
	Fri,  6 Feb 2026 05:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="PpPCMc3R";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="A0S4CdnD"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a6-smtp.messagingengine.com (fout-a6-smtp.messagingengine.com [103.168.172.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C669E3002D8;
	Fri,  6 Feb 2026 05:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770355587; cv=none; b=dRmrhy6QMu05TY8Q9aBtfeJ+pAo2QX2F3R4Iuy2BNypCcMuiPODDZe047HzLypARPqsZWkra6jUkwwp8m//9e9kpDtwpaCJDqTh23G8dEfGfHb5ByIDFvdvptr4doflQAGRI3Ee9d8I9bn8dgQrqedQZ4CxMUmaCKCjmzAq64Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770355587; c=relaxed/simple;
	bh=zLFSas7YCXsYAOAsiXQ6e1u69vx7mNvPzVZzPdr1qiQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dw1leJ8NQA0g3JSGJeYnrIh3Pdiv2jz5/XwKs1dQUxiSKFDFMHm/IluUSzwguCuzAKMBDxlJpwFqJTuYTQvyA6kM0uqNQ4z/DfxF3qEgSI5jDlHht7IW1kY3HcmAtyPlaZulayp/XpZlYa1jDnohwWly8aprg2ilVI3d3HNLvyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=PpPCMc3R; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=A0S4CdnD; arc=none smtp.client-ip=103.168.172.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfout.phl.internal (Postfix) with ESMTP id E7181EC05A5;
	Fri,  6 Feb 2026 00:26:25 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-03.internal (MEProxy); Fri, 06 Feb 2026 00:26:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1770355585; x=1770441985; bh=qTkN12TqYLIe0uJ9WtID9X0LSsmoorY5
	zMAhIMXzQJ8=; b=PpPCMc3RGGmhHjR5tB+bCfiDbkDNyLiuUADAZ/EfmUay+Qdp
	u6wJErQnynqosG6UqkPAiUrVgou6t4jxACATnEnFpM+LemdVuBeqbMk0vi8UGJSH
	KBjXfrEvdejWtKViG5i2ZW0KT/yTLsilCfZctwNERdVImTPaZVFgAf+JfE9Bfj6H
	0ZSxSfZ2WllkAMIoZfitu1xwVatOL75Kbp4E4Y9eWTduzHR1azI9F5xFN3g1BlOt
	TE2lIInp/GIUWUuETL0n+Bq8cnRpYFNuoo3Jt919ELqvUtRMTpGVmBYO1fE5wNmP
	ZNSP5F7p4IEnt4Y0SoLDeQt6f4FqT0E0b/b2JQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1770355585; x=
	1770441985; bh=qTkN12TqYLIe0uJ9WtID9X0LSsmoorY5zMAhIMXzQJ8=; b=A
	0S4CdnDmGFPVw+OjKb4FLXJewY0i59OTDvXNpgZCvaGUwGNgN4hpn0UcY1fQ1EC4
	kfHjkYz6xX02456RBGeYqM67Ys3K50JDt/QRcSK+AWSHdfGR7QOL1p7kXSx5EEFN
	yZS8HbYG1pFvw2gjJ1mY/qaxWi3vWcIZDvADzdrHi3nq6Q6Oytl2rQevmGzQvPKb
	jqjsk1jgf3yZuQvRsXaGd0RC1Oy4t5PqmlMBeumyDqcolu4zdLXIkoCM5wthVDTR
	UIxMsl43HQcKjlKxoGw5Y/3safAOygIZMMDmUy3kZMdERp5n5gv2bZl4VccLqIib
	Cl0jwse30T4UVEA31zT1Q==
X-ME-Sender: <xms:gXuFacnX4vZBd7EoMs7kRIhAQjz62NoNdfS6-tMr_O7EC4yDeSycMw>
    <xme:gXuFaeZWdFrMPqVHVC7SW6yAS68eKAiFXLWpffmKdRB7X7p5FSyMc1qpE5R8NId_f
    XGWY7m1Y0QsBqh1FPGPgpkOEF1wuK_QtYwAPayMsHt94sRherjUMaY>
X-ME-Received: <xmr:gXuFaeR4wSArSgY40SDxlAJzVYQhdeTizbuCre8JNgPSZbm_7CzQ4DMS3-u8XL_pLQaVnwQIg-4sRO350afEqUa4GsoSF_h_2xZ31DstsQG5GrR1hLbWPVQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddukeejfedvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhephfffufggtgfgkfhfjgfvvefosehtjeertdertdejnecuhfhrohhmpeforghthhgv
    ficuofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecugg
    ftrfgrthhtvghrnhepffdvtdfhkeelffffgfejkeefteeuhefhiefgfffgkeduueejheff
    teffleetgfehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghupdhnsggprhgtphhtthhopeek
    pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehmrghtthesthhrrghvvghrshgvrd
    gtohhmrdgruhdprhgtphhtthhopehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgt
    phhtthhopehrohgshheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepuggvvhhitggvth
    hrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqrghr
    mhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtoh
    eplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthht
    ohepfhhrrghnkhdrlhhisehngihprdgtohhmpdhrtghpthhtoheptghonhhorhdoughtse
    hkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:gXuFaYsGuvzepFGjKF4gGhqrGfkGFH5maIfnzq3olYrZ-Er2Xh-qmA>
    <xmx:gXuFaQHbudDWngDGjjPptw8PGqI8GUZQKpGUbMdsdKRg27bu6-ft9g>
    <xmx:gXuFaZzbcq7N4M-HiS60L4iFdk7UtIFVt3FUFcWz3uHD3xn0Utrabg>
    <xmx:gXuFaa2lDP0m2PGaEjDsYaE0Zly17n4KWyHu7qqBMYm_u645y40jng>
    <xmx:gXuFaakb5ik90hyeopQnkcUpFPE7ww2WBauDEx_ZpCQ9BLIck5mlfN3U>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 6 Feb 2026 00:26:23 -0500 (EST)
From: Mathew McBride <matt@traverse.com.au>
Date: Fri, 06 Feb 2026 16:26:13 +1100
Subject: [PATCH v2 2/3] arm64: dts: freescale: ten64: reduce maximum SD
 card speed
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-ten64-dts-updates-2025-12-v2-2-2d77f47a89e7@traverse.com.au>
References: <20260206-ten64-dts-updates-2025-12-v2-0-2d77f47a89e7@traverse.com.au>
In-Reply-To: <20260206-ten64-dts-updates-2025-12-v2-0-2d77f47a89e7@traverse.com.au>
To: Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Mathew McBride <matt@traverse.com.au>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770355576; l=957;
 i=matt@traverse.com.au; s=20260115; h=from:subject:message-id;
 bh=zLFSas7YCXsYAOAsiXQ6e1u69vx7mNvPzVZzPdr1qiQ=;
 b=g5OszKesyImhC0mgmOQgHoww4sPV1OyqVu4tMfGY2GUzUVW/8PoSJtaqORKskmr0DepmlFn6i
 KDEEXfD6lVRBpUFMoqcqtun7IXCRynGPOoIUuaV6UHpyL1QVi5tNk3L
X-Developer-Key: i=matt@traverse.com.au; a=ed25519;
 pk=SM+aGm9Y2fPJ2prfH/b5lab73fTBrKL5UsJwdzv7Pbg=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[traverse.com.au:s=fm2,messagingengine.com:s=fm3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[traverse.com.au:+,messagingengine.com:+];
	TAGGED_FROM(0.00)[bounces-263227-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[traverse.com.au];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@traverse.com.au,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[traverse.com.au:email,traverse.com.au:dkim,traverse.com.au:mid,messagingengine.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 76F9EFA56B
X-Rspamd-Action: no action

There have been user reports of timeouts when using certain SD cards.

To improve stability, reduce the maximum SD card frequency to 25MHz.
Reducing the maximum frequency will disable most high speed modes like
UHS-1.

If this issue is resolved in the future (by PCB change or software tuning),
we will apply fixups in the bootloader to set the correct parameters.

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
 arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
index 35470c0a928f..0a460eebd636 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
@@ -261,6 +261,7 @@ mdio1_phy4: ethernet-phy@1f {
 
 &esdhc {
 	status = "okay";
+	max-frequency = <25000000>;
 };
 
 &i2c0 {

-- 
2.51.2


