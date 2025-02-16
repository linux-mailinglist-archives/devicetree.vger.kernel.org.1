Return-Path: <devicetree+bounces-147079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED7EA37328
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 10:30:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6CF5E189206A
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 09:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC3461891A8;
	Sun, 16 Feb 2025 09:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="qg9zjZuo";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="0+yeca89"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-b6-smtp.messagingengine.com (fhigh-b6-smtp.messagingengine.com [202.12.124.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3057C188591
	for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 09:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739698155; cv=none; b=UAtIvxQm6lK5+Y97guWLjKnPpO3hGGMSi8vneBOBglAS9XA2Zdb2v4mFc2BFR8RWTkH0wangTBVgZQ5t47n3GNnNU43RDla0zZXOmrV163BtXp+XPIWlCj8FFpkgDRqyk19K1zA+nFvwtlcj3xx8redlRblzAWtZ75Eofgv/NDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739698155; c=relaxed/simple;
	bh=+ZhrQslHetzF8ZouXn67pHCp4i5ZD3l9Wx77n17lgR8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JYRdqhPzHUeYnqGP/WLQ88sfBLCc3qpj9XUqJyS7mjhvlcszLxr+b7Xi5KsPx6+fCTJva/MCxX2lXg7hKcnPbtr13twB5pkpzEUPRGJnYIhdgTNVpXDAZzOUwvLmbwvQqSCwIlXuxA0az3E7DyWTK0eD8Rny7i2EXPc++e9ZpAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=qg9zjZuo; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=0+yeca89; arc=none smtp.client-ip=202.12.124.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-04.internal (phl-compute-04.phl.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 44B2C2540112;
	Sun, 16 Feb 2025 04:29:13 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Sun, 16 Feb 2025 04:29:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1739698153; x=
	1739784553; bh=WyP6xZadxIiPxhHK5VEbhsiz7PBbk/d5bR4lsljXq8U=; b=q
	g9zjZuon0q2bsWE5XgnnblRp2D2IoDuD3pUASdCKkb8xFK+pOQBWAjcMappj1CFm
	5iL9jZcQ8rJJ82cXM4oVdx/LoRp0B8Gbjn05oH2hQP7jT9WeFlhUo2sDf+UN1VKX
	ml2LZfdCW1SpB+RRqV7ivNSRoQLYdyLv/1DjDulTUUYTmWVbIXN+B3TMqjq3Otfx
	pVBcVLr4lCCDz5GB0vYzPnDEYwfIYvA5xTGr9DRP4AtnSaT7H5TygD4EY5Sz5QH7
	pfnlEdBl3fVT5NlMjqOUkLzdR2x8VK2FvlvJezzWgBmhJRNncMBP2tWUCXr1SbYV
	0egf6j+bacUgr2snRddQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1739698153; x=1739784553; bh=W
	yP6xZadxIiPxhHK5VEbhsiz7PBbk/d5bR4lsljXq8U=; b=0+yeca89eOgpD0+HR
	KHyBW51IF9OOjFuyjbIFFVaAZ3ONhIY2QOJ2eWaELkvtEaQVnV8BliMEOJwlRm8R
	cbXI7V7O9EkwamouFysCyPFN7jx3ViLTB9667p7qXQDWuNPSUXd9Fp4epNzjl6kJ
	ZgbBOh8nswsRdQeCOgnssv3QflOUTnagTSSESDbrOiDBO9k+y0vHOraypzXMozNt
	kf1vDQkfp0oCw26kguziXUbJ4WyRDW2D7UqzUe/dm/L1rZU7HB7cpZvyoThqzkpO
	SpZyjUdUEl50k1xBxSL+GvknPVifqlnoWONQc2YD/8SBmtsYU43w2wKEHvaa0WoJ
	9cOZw==
X-ME-Sender: <xms:6K-xZwDfxQGAV0j4GNMAvmQASEP26_8CfrbzLe4FiD0DPZLDtVOl6Q>
    <xme:6K-xZygPkGMv5jBfdifjqCNNBMajwXOB2zJUQvcDR8yJlcA-6OrPfp9K8E4nKlMUj
    PI4NRvPjq1bHxWCHQ>
X-ME-Received: <xmr:6K-xZzm8NHItBgZYu6QLW0r5nkbjCY9065ESlyPDqUuq4SkUuW3I5D7yNM59bUYLiT13cV0nVWD6R4SPgSUUtfh80fH9zZvLV22lpWlWrlqo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdehheduudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddt
    necuhfhrohhmpefthigrnhcuhggrlhhklhhinhcuoehrhigrnhesthgvshhtthhorghsth
    drtghomheqnecuggftrfgrthhtvghrnhepffehieffgedtgfffjeetveegfeekleeileek
    veeuteffteetudffveegieeiheetnecuvehluhhsthgvrhfuihiivgepudenucfrrghrrg
    hmpehmrghilhhfrhhomheprhihrghnsehtvghsthhtohgrshhtrdgtohhmpdhnsggprhgt
    phhtthhopedugedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheprhhosghhsehkvg
    hrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdp
    rhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepfi
    gvnhhssegtshhivgdrohhrghdprhgtphhtthhopehjvghrnhgvjhdrshhkrhgrsggvtges
    ghhmrghilhdrtghomhdprhgtphhtthhopehsrghmuhgvlhesshhhohhllhgrnhgurdhorh
    hgpdhrtghpthhtoheprghnughrvgdrphhriiihfigrrhgrsegrrhhmrdgtohhmpdhrtghp
    thhtohepmhgrtghrohgrlhhphhgrkedvsehgmhgrihhlrdgtohhmpdhrtghpthhtohepkh
    hikhhutghhrghnleeksehgmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:6a-xZ2zG_jjfc1P5M2wwqTfZUyEeH6anp27XRqnBH7037fdAeRC7Kw>
    <xmx:6a-xZ1RIk_p9JwvNzc2nE7g0sABJCdCHd9VoQ9JopudnN_HlYkoADw>
    <xmx:6a-xZxbgBwo_0lRe5FNpR2yzCdPJh40U0JUBXY2z29-RcMDEaZe2nw>
    <xmx:6a-xZ-S-k3Mys1xCtV0RAQbG2amABo0RmZAmJdtd-siK5JLZyGdnEA>
    <xmx:6a-xZxrThefBKyMtkLV-8CM_ut926Us41zO_LJUWHGo5zfIdr8dHvsNS>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 16 Feb 2025 04:29:08 -0500 (EST)
From: Ryan Walklin <ryan@testtoast.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Andre Przywara <andre.przywara@arm.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Philippe Simons <simons.philippe@gmail.com>,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Ryan Walklin <ryan@testtoast.com>
Subject: [PATCH 6/8] arm64: dts: allwinner: h616: add LCD, LVDS and PWM pins
Date: Sun, 16 Feb 2025 22:27:13 +1300
Message-ID: <20250216092827.15444-7-ryan@testtoast.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250216092827.15444-1-ryan@testtoast.com>
References: <20250216092827.15444-1-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jernej Skrabec <jernej.skrabec@gmail.com>

The Allwinner H616 (and its H618, H700 and T507 package variants with
the same die) have 28 video output pins for RGB/SPI and LVDS display.
These are in GPIO Bank D and are multiplexed.

In RGB mode, pins PD0-PD23 are for 24-bit RGB pixel output, pins
PD24-PD27 are for clock, DE, HSYNC and VSYNC, and PD28 is a PWM
backlight control.

In LVDS mode, pins PD0-PD9 are for LVDS0 and LVDS1, and can be
configured by the H616 display engine for either one high-resolution
(dual link) or two low resolution displays.

Add device tree nodes for the LCD, LVDS0, LVDS1 and PWM pins.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
[ryan@testtoast.com: add RGB, LVDS1 and PWM pin assignments]
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
---
 .../arm64/boot/dts/allwinner/sun50i-h616.dtsi | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
index 242bac95840f8..806ad87705abc 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
@@ -322,6 +322,32 @@ ir_rx_pin: ir-rx-pin {
 				function = "ir_rx";
 			};
 
+			/omit-if-no-ref/
+			lcd0_rgb888_pins: lcd0-rgb888-pins {
+				pins = "PD0", "PD1", "PD2", "PD3",
+				       "PD4", "PD5", "PD6", "PD7",
+				       "PD8", "PD9", "PD10", "PD11",
+				       "PD12", "PD13", "PD14", "PD15",
+				       "PD16", "PD17", "PD18", "PD19",
+				       "PD20", "PD21", "PD22", "PD23",
+				       "PD24", "PD25", "PD26", "PD27";
+				function = "lcd0";
+			};
+
+			/omit-if-no-ref/
+			lvds0_pins: lvds0-pins {
+				pins = "PD0", "PD1", "PD2", "PD3", "PD4",
+				       "PD5", "PD6", "PD7", "PD8", "PD9";
+				function = "lvds0";
+			};
+
+			/omit-if-no-ref/
+			lvds1_pins: lvds1-pins {
+				pins = "PD10", "PD11", "PD12", "PD13", "PD14",
+				       "PD15", "PD16", "PD17", "PD18", "PD19";
+				function = "lvds1";
+			};
+
 			mmc0_pins: mmc0-pins {
 				pins = "PF0", "PF1", "PF2", "PF3",
 				       "PF4", "PF5";
@@ -348,6 +374,12 @@ mmc2_pins: mmc2-pins {
 				bias-pull-up;
 			};
 
+			/omit-if-no-ref/
+			pwm0_pin: pwm0-pin {
+				pins = "PD28";
+				function = "pwm0";
+			};
+
 			/omit-if-no-ref/
 			spi0_pins: spi0-pins {
 				pins = "PC0", "PC2", "PC4";
-- 
2.48.1


