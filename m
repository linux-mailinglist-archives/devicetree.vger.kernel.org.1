Return-Path: <devicetree+bounces-263226-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMP0CoJ7hWkBCQQAu9opvQ
	(envelope-from <devicetree+bounces-263226-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 06:26:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEF8FA54D
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 06:26:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EEC4E3004918
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 05:26:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B8A3337BAD;
	Fri,  6 Feb 2026 05:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="HxOUQILh";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="k8gANKES"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-a1-smtp.messagingengine.com (fhigh-a1-smtp.messagingengine.com [103.168.172.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2EB336EE7;
	Fri,  6 Feb 2026 05:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770355584; cv=none; b=Zry2vzUzTOZzIyUudS7ZiavWUCDqsYQZ0UQhWJ986rGjNGTrPQEga84cKIVuh5BSWCwVjwTBwxjL17RXaFAme/6Poij+54tJ7rotTdtcO0FeD+A3S+q6cx7RE97luDTegizVrB1tB9ApW+dvZ2mnDn/e+Y/Ls9ztC/sF+wC1qac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770355584; c=relaxed/simple;
	bh=EhEafYcR5G6YrM9Al28I4jrc6wnuvl/PvTiP7j00trE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U82l5Zail+WOe0CKaEuqxDVSYXKYvo9qj626YyQ+ZOPTZbVUJFAF3OMGU/MCHR8meBtA2ZOZeZ3OzyyBWH5Kt8oe0KjVE4eqDWOeZ8jDNi8d/qoUQRPsjJLTqBaHI/neGQOMV45lqgMpgDZbIdfpbrBq5+0PaXJJHJ0JhGdPjxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=HxOUQILh; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=k8gANKES; arc=none smtp.client-ip=103.168.172.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 06ECD14001DA;
	Fri,  6 Feb 2026 00:26:23 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-01.internal (MEProxy); Fri, 06 Feb 2026 00:26:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1770355583; x=1770441983; bh=AM421lbCvkRnD46VnL4qnZ95KStO1BJU
	RGzCJykN5dc=; b=HxOUQILhWtCSjS9HFu+lIWbmpI/F4GHKXiRsobSMPOKhuMlL
	08ogJ5vp6+s4jmyqP5zYc9PIGyIO1AEZWscwKy7c0g8oJtAat6uDe4N2vCbf5Sz0
	TtWM9w3ES/5uAiHd055rqsTnnhLUxYZe9V4RdL9krVqZfHFztqQD8hgK/6tHO/b4
	V4qSoh31w4UdItkPAPTIoGEWO8rTzZ+kARGHEYbhAe15Z1ia37XiWsAtnIoh6GmR
	w+SzMSdiAKApnkyClbdlx0O5PDzUOKK9OAp7LiMCZCb4j3n7MLazGsYRqk9c3XXC
	o7qd9rvPzvVd6Iy7vAqL+bKvuMZhk/9ddR8E1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1770355583; x=
	1770441983; bh=AM421lbCvkRnD46VnL4qnZ95KStO1BJURGzCJykN5dc=; b=k
	8gANKES+0g4u52VF3e3Q6vTVv0FCOvpvUKDcUMq+aBKQiXXMMdmA9aCSIIC8M8vP
	dWsZ0FIbQUeE6z+RV8DzzKdTXTZ7Hi+bb/ekp8gNlGklFj6t2znNnMXKdLxaHJtu
	AkLhyin/g7+d79nij901avXHgIRW968XqyV7FU17rmga5pZFX4Qhr6mi6M9jh+Z8
	L4614odq0cDByQN6J7GEUnNufcvVOAAKkC4t+lu9tt1mt/twuclEfgo44YWjnN94
	0lGAsVADVbqnLewkM3FmTFmFd8I326iZHKe5ikYkQZppYAGIcS+Q7hbyUZEbJOjF
	xJPd8hyz88ZxDmXqn3t5w==
X-ME-Sender: <xms:fnuFaQTFJa_3miOstwQoQAjZnHR9BLjKmX5Hr3Y92_5wxnGbm0jj5A>
    <xme:fnuFaQVbeswFpHcdInhcV0Qa0nYrne9YD2EdIiLTqRy3qoKo_-rvs5cFTdUSYaEXB
    jg2aKor8c6M2F5GtXWkMbqKHnXNrOHGrGbeuirH19Vtql89isDXjw9b>
X-ME-Received: <xmr:fnuFaRcUmcMxQtRg4k_WmQnuUThG4GfKM4bKx0eWz-olhBHssXSHmSi7HOuucg00ahQjm5pRnmeADA30sOkl7kcckViezNyM2Ju750mK1Od0vbgrpmTH90s>
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
X-ME-Proxy: <xmx:fnuFaULt-lTPRBeUPSfRtqru-Ye11J9tjPoWhVCgSpwo7HHae2M4Wg>
    <xmx:fnuFaeyAWBbMpls_LQa8JEjWLOFLigti60nMpPCgrO9CdDEtn5P4-g>
    <xmx:fnuFaauitJpuzaRKt6R3D3tockAncmEl7sfk9rFFB47aHI22ouBRwg>
    <xmx:fnuFaRDhuTEtig5Jes2vdasrLXU-4-Dx80cXrKFT6LMYSu20EChToQ>
    <xmx:f3uFaVQ1TNvZl0eu-MusRiVfONcUEsKTqLd1UHriZpKMBYtU1AkLqVQv>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 6 Feb 2026 00:26:20 -0500 (EST)
From: Mathew McBride <matt@traverse.com.au>
Date: Fri, 06 Feb 2026 16:26:12 +1100
Subject: [PATCH v2 1/3] arm64: dts: freescale: ten64: add emc2301 fan
 controller and thermal set points
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-ten64-dts-updates-2025-12-v2-1-2d77f47a89e7@traverse.com.au>
References: <20260206-ten64-dts-updates-2025-12-v2-0-2d77f47a89e7@traverse.com.au>
In-Reply-To: <20260206-ten64-dts-updates-2025-12-v2-0-2d77f47a89e7@traverse.com.au>
To: Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Mathew McBride <matt@traverse.com.au>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770355576; l=2279;
 i=matt@traverse.com.au; s=20260115; h=from:subject:message-id;
 bh=EhEafYcR5G6YrM9Al28I4jrc6wnuvl/PvTiP7j00trE=;
 b=IM3ssMusOPWcyhf1kFdV0mt3MToLxdINan6DObN/OD7GpXdIyi2BzWNzAOCBSn+vXRAUJNfOs
 ORQ1dmg96q5CXupgHUXbSAiUES9tglovRvifDoD7itGi4RZoZwjdF0F
X-Developer-Key: i=matt@traverse.com.au; a=ed25519;
 pk=SM+aGm9Y2fPJ2prfH/b5lab73fTBrKL5UsJwdzv7Pbg=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[traverse.com.au:s=fm2,messagingengine.com:s=fm3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[traverse.com.au:+,messagingengine.com:+];
	TAGGED_FROM(0.00)[bounces-263226-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[traverse.com.au];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@traverse.com.au,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,2d:email]
X-Rspamd-Queue-Id: BCEF8FA54D
X-Rspamd-Action: no action

Add support for using the on-board EMC2301 fan controller as
a cooling device for the main SoC.

This functionality only became available in the mainline
kernel recently, so the fan controller has been absent from the
mainline DTS copy until now.

The thermal set points are intended for the Ten64
Desktop appliance, it is anticipated that users of the board
in other installations will be able to override these through
their own FDT overlay or by a fixup function in the system firmware.

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
 .../arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts | 50 ++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
index 71765ec91745..35470c0a928f 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
@@ -68,6 +68,42 @@ led-2 {
 		};
 	};
 
+	thermal-zones {
+		soc-thermal {
+			trips {
+				fanlow0: fanlow0 {
+					temperature = <60000>;
+					hysteresis = <2000>;
+					type = "active";
+				};
+				fanmid0: fanmid0 {
+					temperature = <65000>;
+					hysteresis = <2000>;
+					type = "active";
+				};
+				fanmax0: fanmax0 {
+					temperature = <70000>;
+					hysteresis = <2000>;
+					type = "active";
+				};
+			};
+			cooling-maps {
+				map2 {
+					trip = <&fanlow0>;
+					cooling-device = <&casefan 0 3>;
+				};
+				map3 {
+					trip = <&fanmid0>;
+					cooling-device = <&casefan 4 7>;
+				};
+				map4 {
+					trip = <&fanmax0>;
+					cooling-device = <&casefan 8 THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
+
 	sfp_xg0: dpmac2-sfp {
 		compatible = "sff,sfp";
 		i2c-bus = <&sfplower_i2c>;
@@ -253,6 +289,20 @@ usbhub: usb-hub@2d {
 		reg = <0x2d>;
 	};
 
+	fan_controller: emc2301@2f {
+		compatible = "microchip,emc2305";
+		reg = <0x2f>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		#pwm-cells = <3>;
+
+		casefan: fan@0 {
+			reg = <0x0>;
+			pwms = <&fan_controller 26000 0 1>;
+			#cooling-cells = <2>;
+		};
+	};
+
 	uc: board-controller@7e {
 		compatible = "traverse,ten64-controller";
 		reg = <0x7e>;

-- 
2.51.2


