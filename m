Return-Path: <devicetree+bounces-255368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 59748D228D7
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:28:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D72D3302B50D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:28:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 781C4246798;
	Thu, 15 Jan 2026 06:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="m2DO218I";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="qymqlchi"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-b3-smtp.messagingengine.com (fhigh-b3-smtp.messagingengine.com [202.12.124.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFEAA238C0D;
	Thu, 15 Jan 2026 06:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.154
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768458485; cv=none; b=QCTNad1OW2jSUOdb10I5HHnHL5GBb2dsxIEs3WB8JK15aJYzyeFhqJbhKCVCBiUNul/9akfyzdL6rJ2xcV0A5fwaZxBiqegPRjHAyvE7wwt+XyT0lg0a0pP/INv/Y2ha06vdgL9IECLBwJT+Hv3LfA2f4ZpUZTnFypmwMbVp0wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768458485; c=relaxed/simple;
	bh=uo7g936uAZ4vCtliz4JoQ9pKjqlkd8DK31ts+X/i5y4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rz5M6MDotAnAYVlNZg6Jf1CPo6/XIm8gfTybDYip7AkJw6ocKY+gJfqjyhgt5VDMFLGBXNxBtnVRbRdgoQXY0gPhDIbHMLsT64KGg6GhmCRnY4b/uqW4VpIgxP7sDoXU6z3f012mU3i/RSqYZSFSdwhgNxocREzF5ZBuiPCpjuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=m2DO218I; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=qymqlchi; arc=none smtp.client-ip=202.12.124.154
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 02B2D7A00F7;
	Thu, 15 Jan 2026 01:28:00 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Thu, 15 Jan 2026 01:28:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm1;
	 t=1768458480; x=1768544880; bh=iUe9xaCu/BxL8CnPbA+ZqFBfunp7fWJW
	if/Sui7jr1c=; b=m2DO218IewUiA7nW660qSl1AJa6G2gDclTfeCDoIZSDPOAh+
	5yk7SQ+QUlSwBDowDxr0tCw3rNgb8f0c3Bn1Ze7si/EJn2qs9wAdxECbNufFHwmu
	BAruzNP3xJhZT9dLismS3B+kyF2rXGv+bNvEFoPz2F+k0VE5gDnbQjQBSOK+Mle5
	1687bELiaz0DVZu2SihNhCJCG/nZZVFwSBWO8P7nnmKI7q2fyou60/iWXO/IdENa
	qE7pUQjCxmZZguhVnGKmW9G/xWu2EzYA8/bn5bh0TyMbUwtv0H+WxyevVkh+Feue
	lIXq2uqGqm71jMNekDhokPOUexKTEwjFb1LAKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1768458480; x=
	1768544880; bh=iUe9xaCu/BxL8CnPbA+ZqFBfunp7fWJWif/Sui7jr1c=; b=q
	ymqlchigQom2EQFZ78kW16lzteC/fBERO7SZL1pLHhJDkJfAZfmJoXkZ28ia7y6t
	r8sXm15dUDFPv0wuCfRHd+vEdDWl4A0eu590TLaq+spkM+kkwb/4q1MgwzvR4ksL
	0JE8LBX9I3C7lAED4+IMSrS2+9E41Artq/HWBBrJVgXyzJZA25Cd9n4f8sByoPwu
	dM2aJcPM9tZD5+4StTkmg+o1r0fq7146eSp6KEEU1ZFVrW++RnpApu4lKAxCmzlh
	FA9bLS208BrP/GgNNJShMvk5qU3xJ+JhUF1XA25IOoZ+QWd6+arq0Z7bQvwC46Jt
	W7+bjDZCObNXieZg4rDXA==
X-ME-Sender: <xms:8IhoaYCUzAdPiiTl-TY5l-Zo4UoBiqIbGm8U4MxYk0iAysxRIYRnIg>
    <xme:8IhoadEaOjiIuxHDCDBwTjyaAQNw1jSEIx1gOEfJnhRc6WTt5vHP_zpMO-tgSjvAF
    uFpvLrEIHeRPUX-I68JzwulgERNpf6e5-g5jDcTHpjMNCsqv51TVR8>
X-ME-Received: <xmr:8IhoafMFn6J3vvjNPWggBjPifcbEgEGp6uTdxi41l9-zigJFAlwPsRjXAFg-mom5ts1Q4K0XfwRGyR8G9163SYLNWv7fJd9oxgkTe03gyg9gFcIA69GMKE0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduvdehfeegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhephfffufggtgfgkfhfjgfvvefosehtjeertdertdejnecuhfhrohhmpeforghthhgv
    ficuofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecugg
    ftrfgrthhtvghrnhepiedtheeivdfhiedvffdttefhffeltdelfeejgeekvdeikedtffdu
    keeffffhteegnecuffhomhgrihhnpehtrhgrvhgvrhhsvgdrtghomhdrrghunecuvehluh
    hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrthhtsehtrhgr
    vhgvrhhsvgdrtghomhdrrghupdhnsggprhgtphhtthhopeekpdhmohguvgepshhmthhpoh
    huthdprhgtphhtthhopehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthho
    pegtohhnohhrodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepshhhrgifnhhguh
    hosehkvghrnhgvlhdrohhrghdprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghr
    rdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdgrrhhmqdhkvghrnhgvlh
    eslhhishhtshdrihhnfhhrrgguvggrugdrohhrghdprhgtphhtthhopehlihhnuhigqdhk
    vghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehmrghtthesth
    hrrghvvghrshgvrdgtohhmrdgruhdprhgtphhtthhopehrohgshheskhgvrhhnvghlrdho
    rhhg
X-ME-Proxy: <xmx:8Ihoae6PnmC7v2ug0o08l-DhDMtZTp0PNDe4kRkJlzV8WdJzgtx7pg>
    <xmx:8IhoaShMuy1U6Jl5LqpZl8kFXMyRyuJX4GrBWda6twOept6nFUFI2Q>
    <xmx:8IhoaTcTrbW_I9twZKyaUjl8yohz_1UzTdx-ARHJLZKQhy-wK-yJ7A>
    <xmx:8IhoaayUrwufuYLPptkPMef-uT7_-OsALu6jqv8GD51DTNI_v9i0hA>
    <xmx:8IhoaQcK572p6IBTE7-7OgH8n4qUlj9THOAug79ScUu5UskgtX5oAvg0>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 15 Jan 2026 01:27:58 -0500 (EST)
From: Mathew McBride <matt@traverse.com.au>
Date: Thu, 15 Jan 2026 17:26:45 +1100
Subject: [PATCH 3/3] arm64: dts: ten64: provide gpio-line-names for all
 system gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-ten64-dts-updates-2025-12-v1-3-a56380bbb2ac@traverse.com.au>
References: <20260115-ten64-dts-updates-2025-12-v1-0-a56380bbb2ac@traverse.com.au>
In-Reply-To: <20260115-ten64-dts-updates-2025-12-v1-0-a56380bbb2ac@traverse.com.au>
To: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Mathew McBride <matt@traverse.com.au>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768458468; l=2513;
 i=matt@traverse.com.au; s=20260115; h=from:subject:message-id;
 bh=uo7g936uAZ4vCtliz4JoQ9pKjqlkd8DK31ts+X/i5y4=;
 b=pWAFfjEMuAwB19pyqBQGuZkGx/meLMQG2sS82HiPQs2/OlsMvc+sEhhMbG8K3toMTzcRn2jls
 f/MJVoJKqhoAHo/CpmTklq0Pdk5unXVSoOFxh8YR14zay+P7/Sl8gPp
X-Developer-Key: i=matt@traverse.com.au; a=ed25519;
 pk=SM+aGm9Y2fPJ2prfH/b5lab73fTBrKL5UsJwdzv7Pbg=

There are GPIOs on the Ten64 board which are intended to be
user controlled, as well as some that are used for system functions
(such as SFP control lines and associated LEDs).

Providing the gpio-line-names will be useful to users of the board,
for example, in the /sys/kernel/debug/gpio listing.

The master GPIO list for the board can be viewed here:
https://ten64doc.traverse.com.au/hardware/gpio/

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
 .../arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts | 60 ++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
index 0a460eebd636..f35889b80fe2 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
@@ -264,6 +264,48 @@ &esdhc {
 	max-frequency = <25000000>;
 };
 
+&gpio1 {
+	/* Only GPIO 17 is utilised on this controller */
+	gpio-line-names =
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "", "",
+		"",
+		"EXT_PWR_DWN",
+		"", "", "", "", "", "",
+		"", "", "", "", "", "", "", "";
+};
+
+&gpio2 {
+	/* Only GPIO 27,28,29 are utilised on this controller */
+	gpio-line-names =
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "", "",
+		"", "", "",
+		"P6_GPIO_A",
+		"P6_GPIO_B",
+		"P6_GPIO_C",
+		"", "";
+};
+
+&gpio3 {
+	/* Only GPIO4-9, 11-13 are utilised on this controller */
+	gpio-line-names =
+		"", "", "", "",
+		"P6_GPIO_D",
+		"P6_GPIO_E",
+		"P6_GPIO_F",
+		"P6_GPIO_G",
+		"P6_GPIO_H_ADMIN_BTN",
+		"",
+		"TCA9539_INT",
+		"SFP_XG0_ACT_LED",
+		"SFP_XG1_ACT_LED",
+		"SIM_SD_TRAY_STATUS",
+		"", "", "", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "", "";
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -273,6 +315,24 @@ sfpgpio: gpio@76 {
 		#gpio-cells = <2>;
 		gpio-controller;
 
+		gpio-line-names =
+			"XG1_TX_FAULT", /* Upper SFP+ signals */
+			"XG1_TX_DISABLE",
+			"XG1_PRESENT",
+			"XG1_LOS",
+			"XG0_TX_FAULT", /* Lower SFP+ signals */
+			"XG0_TX_DISABLE",
+			"XG0_PRESENT",
+			"XG0_LOS",
+			"CELLULAR_RESET",
+			"CELLULAR_POWER_OFF",
+			"CELLULAR_DISABLE",
+			"CELLULAR_GNSS_DISABLE",
+			"ADMIN_LED_P",
+			"ADMIN_LED_N",
+			"USER_SWITCH",
+			"ATX_HD_ACT_LED";
+
 		admin-led-lower-hog {
 			gpio-hog;
 			gpios = <13 GPIO_ACTIVE_HIGH>;

-- 
2.51.2


