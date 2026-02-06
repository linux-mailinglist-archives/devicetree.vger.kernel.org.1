Return-Path: <devicetree+bounces-263228-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMWdIsh7hWkBCQQAu9opvQ
	(envelope-from <devicetree+bounces-263228-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 06:27:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E06D1FA57A
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 06:27:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25302303C4F6
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 05:26:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7853337690;
	Fri,  6 Feb 2026 05:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="uJlZ3Hhw";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="sa2Fg1Or"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a6-smtp.messagingengine.com (fout-a6-smtp.messagingengine.com [103.168.172.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0A8D33859A;
	Fri,  6 Feb 2026 05:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770355589; cv=none; b=c6lwK/UcRzVd00K+tMhlE9wur6K6rV7hclpcav1t2e8bW3psNhxOSN5YJla9b8aovut+6gck3ns3sJMaOP9e7qUFRdPgIt/s12X2hHuwtSd64q8r1f22/q8yk+7IOp0dSQAzBasaOAet4vd/Tuf2scPsuoGgKv87+Z2/ng7uz2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770355589; c=relaxed/simple;
	bh=X69ThDAaM039EdkcSvJ72b+OxBCNOIx2jmb5SqNRGJY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dlV8/iFxkPIYRaPhtXpW6Yx1fJETyGA62vFAYYeQBjTaZ0iZGvcK9W3l/kjkHqyxKgmIGWleZhUCxeVdERDEonx2V7IYxwUj6GyccRx2u6pHOSycVk+TeWKM62V+0xAmI71Dt3v3QVelKHZ9hgbAheu7L/wNHG8hCP9heWUtKEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=uJlZ3Hhw; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=sa2Fg1Or; arc=none smtp.client-ip=103.168.172.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.phl.internal (Postfix) with ESMTP id D823FEC05A7;
	Fri,  6 Feb 2026 00:26:28 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Fri, 06 Feb 2026 00:26:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1770355588; x=1770441988; bh=5T9h53TRd+k/J4OMGYAk6XqyMyR1awSN
	uQc4fSdBTOU=; b=uJlZ3Hhwlyy0qfrNMzFyHbzjt2vxvGFUBYjIaQSnUYN6lYss
	fND7xdq2tvaE7f1kG9dj2cnD4UUE5baX2P/fwDpxivL43Mec2yI3fIIClONGAedf
	7O0TgkxaOPZHdCzOvXX0Bl63bXHBkVmsn5kxng2yIJunMbykEH39uyJl2qnCw8qp
	2T31OLW5kFTzqHM0ctLFSXE1CA8fOT66axTEsXkgBOrmizz6OMnLlznMyx6j8nEg
	CwVFIhL8fs5w9251onWXPFd81eXvf56+JBvD7FgZ0fPZh420GtJO2yGZUBlq4+rZ
	DGIS6ND7gFqYCN55VabZE+6R9CfeertTvi2cfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1770355588; x=
	1770441988; bh=5T9h53TRd+k/J4OMGYAk6XqyMyR1awSNuQc4fSdBTOU=; b=s
	a2Fg1Or0przrsGSNcRCw0v3NyRFLVzLXKjhXaB/c501YLEfrct6ftlGdejzzza+8
	IAI0I1eLr+WjxZ42yLqY2DKQE7lu0f83Ac4HMzq7ao6KoOgBKC95mQhH4Dp1+nAi
	fu0ESWHaptHJ8nl5fDzjRTDZRSY+oWtsfEQ428CaOgSEmo2eKHyc51Nnj7RiEF1W
	Y2013+7XHS8EezoyDFFdAJSL4YgX53S/kgw7zZYiWt2uW+QxNoUHjCxpCKth50qV
	4uaFQoQFdas/uqC5ejnJs5jBOmE1Cn2RKdgRdqaYELIxSM7nYD7MqcEvpjlQWpw3
	COSyck6XYCTMftJho2jTA==
X-ME-Sender: <xms:hHuFacpYZVGYVQgXgIfe4MWqbmyIevURE-gtvd_Yaco7z2I7NzOing>
    <xme:hHuFaVMq2O5Kg5sQWFTRJUDTEEONrlMUQoMioCwrZVdQc8i81547ZsAGW1H_knZJV
    eefDp-Vcf89eHVNs2kfSgvrb8R3XRC_OAJGZIYu4N-kFHvo8Cz3P_I>
X-ME-Received: <xmr:hHuFaU1ssm0Zk4Syajb8v8mjsUQS0Jhr8735DrjeuhP2nhQAXIJ_zQjXNqaaTLQydialAiDHcGzKmkFR6anGggukNwfIaI_7vXAm0W0nCF5YNKOIAC_qQ_w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddukeejfedvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhephfffufggtgfgkfhfjgfvvefosehtjeertdertdejnecuhfhrohhmpeforghthhgv
    ficuofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecugg
    ftrfgrthhtvghrnhepiedtheeivdfhiedvffdttefhffeltdelfeejgeekvdeikedtffdu
    keeffffhteegnecuffhomhgrihhnpehtrhgrvhgvrhhsvgdrtghomhdrrghunecuvehluh
    hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrthhtsehtrhgr
    vhgvrhhsvgdrtghomhdrrghupdhnsggprhgtphhtthhopeekpdhmohguvgepshhmthhpoh
    huthdprhgtphhtthhopehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruhdprhgtphht
    thhopehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehrohgshheskh
    gvrhhnvghlrdhorhhgpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgv
    rhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlih
    hsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtoheplhhinhhugidqkhgvrhhn
    vghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepfhhrrghnkhdrlhhise
    hngihprdgtohhmpdhrtghpthhtoheptghonhhorhdoughtsehkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:hHuFaUAAzqyeSX4nCLA6uLD4sK_MectmYsNvD_KzuZ_NPP-rT0lenw>
    <xmx:hHuFaRLLb-RboRLoogjKSCMgi2dQTEIZgMnuM1zGV2P-Z5uUlb3odA>
    <xmx:hHuFadlYRZbWlxyAitpj-MrWdtNDPUKfTGdGE-sUWVLB0unNlz2xCA>
    <xmx:hHuFaabGbCiuqOGB6V8MT0l6jEA1W8t_-MgIZSZ52aF1zdCfNIZEfA>
    <xmx:hHuFafpqsUUpxdNKelnQRGWogoQn8yckZJxbbmafKv-pxztDbEX4VLRS>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 6 Feb 2026 00:26:26 -0500 (EST)
From: Mathew McBride <matt@traverse.com.au>
Date: Fri, 06 Feb 2026 16:26:14 +1100
Subject: [PATCH v2 3/3] arm64: dts: freescale: ten64: provide
 gpio-line-names for all system gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-ten64-dts-updates-2025-12-v2-3-2d77f47a89e7@traverse.com.au>
References: <20260206-ten64-dts-updates-2025-12-v2-0-2d77f47a89e7@traverse.com.au>
In-Reply-To: <20260206-ten64-dts-updates-2025-12-v2-0-2d77f47a89e7@traverse.com.au>
To: Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Mathew McBride <matt@traverse.com.au>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770355576; l=2513;
 i=matt@traverse.com.au; s=20260115; h=from:subject:message-id;
 bh=X69ThDAaM039EdkcSvJ72b+OxBCNOIx2jmb5SqNRGJY=;
 b=zxt/KTGM2tSAixuJXM0tyWGfHGPyruaD4dv6eXGqMTIFf1xemAyIcIL940NaFn7Y1tkeAZ1eX
 AuDLKMFamqCAXsyphR3pBC26HFBoB1Urkz82XWrThda3lGXbImcmr7V
X-Developer-Key: i=matt@traverse.com.au; a=ed25519;
 pk=SM+aGm9Y2fPJ2prfH/b5lab73fTBrKL5UsJwdzv7Pbg=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[traverse.com.au:s=fm2,messagingengine.com:s=fm3];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[traverse.com.au:+,messagingengine.com:+];
	TAGGED_FROM(0.00)[bounces-263228-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[traverse.com.au];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@traverse.com.au,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.76:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[traverse.com.au:dkim,traverse.com.au:email,traverse.com.au:url,traverse.com.au:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,messagingengine.com:dkim]
X-Rspamd-Queue-Id: E06D1FA57A
X-Rspamd-Action: no action

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
index 0a460eebd636..bb59a3e17fde 100644
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
+			"XG0_TX_FAULT", /* Lower SFP+ signals */
+			"XG0_TX_DISABLE",
+			"XG0_PRESENT",
+			"XG0_LOS",
+			"XG1_TX_FAULT", /* Upper SFP+ signals */
+			"XG1_TX_DISABLE",
+			"XG1_PRESENT",
+			"XG1_LOS",
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


