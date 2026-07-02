Return-Path: <devicetree+bounces-319420-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T9iRGGNtRmoLUgsAu9opvQ
	(envelope-from <devicetree+bounces-319420-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 15:53:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C03EC6F8924
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 15:53:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kemnade.info header.s=20220719 header.b=IBoJLuN5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319420-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319420-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=kemnade.info;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C3D733047E48
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 13:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 846074ADDB4;
	Thu,  2 Jul 2026 13:53:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92E164A2E01;
	Thu,  2 Jul 2026 13:53:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783000403; cv=none; b=trUCsJZIs+ELRRb+MTfnrdhQhIO994no/SKki1AmlGH48CuG887IQCl9fWs7Spvog6Z1sLp61JaLMhNEfKI58QrJiVRxwGtJ97jH0QRCMlsixgcR7CO3Xe6+3uIa+32/BlKNt4hUkaXhmMNMM4fbRLEt8YNoNTN0urkyahxMdk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783000403; c=relaxed/simple;
	bh=+Rv2z64JUVe7fDMTssxAANzbg9IuAfskna7RJrGAWG0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B15LKDL48pfK3b8SmtRbRaKkEr9jIqxYx4o32pNWK9T1VbkAEg9+j1t9A0A6kkhj9IymnaEj9zUFQ7bIh3EYZjIhKeBx6T4KNsxtjn5O3tLQyPqDWynRaegZPxGtIef+MwNlC60HlFHKuDDtamqsulm32LbsHPc6ZMwocsR4S74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=IBoJLuN5; arc=none smtp.client-ip=178.238.236.174
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Cc:To:In-Reply-To:References:Subject:From:
	Reply-To:Content-ID:Content-Description;
	bh=9CuqPtpgChMhk0+0B9V1dMSVdf3LmZwpa+6ReyOVK1k=; t=1783000397; x=1784209997; 
	b=IBoJLuN5YHfN7ubXogNGy+hJQntMbG460jkhcss/JKI9FnLIOIDFr2a4ItLxanSzY8aelZIqlR5
	P/ue0dwFFi1l9p5ohVGRZIy/ZL3noHcbS7C6t85zjB8j22uwIepnPKbAhos3+jVf2NWbV24CwMbsL
	kfulF3lrg9YpHonAnpCk5avnFpOx3kqF2wmjd6JSuuCJj1yC2Ht53MMQUae4MMvytgVmNTUcuFjY6
	+OGb2y4zKoGfWWL/zHITRnZSbwuZ4N1rHcGShligueGcbUPGhz1KQmvaJ9BkHAinSDkWjbDmUAS3Z
	RUqx4hlg9rOukwuQerJeleIBsJ8VAdGpbkjg==;
From: Andreas Kemnade <andreas@kemnade.info>
Date: Thu, 02 Jul 2026 15:52:43 +0200
Subject: [PATCH 1/2] ARM: dts: ti/omap: embt2ws: use mulit-led for RGB LED
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260702-b200multiled-v1-1-c1799ad45c96@kemnade.info>
References: <20260702-b200multiled-v1-0-c1799ad45c96@kemnade.info>
In-Reply-To: <20260702-b200multiled-v1-0-c1799ad45c96@kemnade.info>
To: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Andreas Kemnade <andreas@kemnade.info>, Pavel Machek <pavel@ucw.cz>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1396; i=andreas@kemnade.info;
 h=from:subject:message-id; bh=+Rv2z64JUVe7fDMTssxAANzbg9IuAfskna7RJrGAWG0=;
 b=owGbwMvMwCUm/rzkS6lq2x3G02pJDFluubae/jkzKpct3Fkwz2CNABO/g6Drzpd1USfenRD+f
 /XVYVfhjlIWBjEuBlkxRZZf1gpun1Se5QZPjbCHmcPKBDKEgYtTACZybCnDP4Mtmy5Mzn6tu9NO
 tt3VJehgG8evB6FftZOsowMur5wbdZrhf8baS2b3Fi/byB5mavrsgt6H3vbcLQybJdg0dAoeBel
 YsQIA
X-Developer-Key: i=andreas@kemnade.info; a=openpgp;
 fpr=EEC0DB858E66C0DA70620AC07DBD6AC74DE29324
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kemnade.info,none];
	R_DKIM_ALLOW(-0.20)[kemnade.info:s=20220719];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319420-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:aaro.koskinen@iki.fi,m:khilman@baylibre.com,m:rogerq@kernel.org,m:tony@atomide.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux@armlinux.org.uk,m:linux-omap@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:andreas@kemnade.info,m:pavel@ucw.cz,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kemnade.info:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,ucw.cz:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C03EC6F8924

The device has one single RGB LED. Explicitly declare it as such
by combing the LEDs into one.

Suggested-by: Pavel Machek <pavel@ucw.cz>
Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts b/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
index e253e0775ea9..e11d1931c42a 100644
--- a/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
+++ b/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
@@ -64,6 +64,13 @@ key-lock {
 		};
 	};
 
+	multi-led {
+		compatible = "leds-group-multicolor";
+		color = <LED_COLOR_ID_RGB>;
+		function = LED_FUNCTION_STATUS;
+		leds = <&led_r>, <&led_g>, <&led_b>;
+	};
+
 	cb_v18: regulator-cb-v18 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&cb_v18_pins>;
@@ -368,19 +375,19 @@ led-controller@66 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		led@0 {
+		led_g: led@0 {
 			reg = <0>;
 			color = <LED_COLOR_ID_GREEN>;
 			function = LED_FUNCTION_STATUS;
 		};
 
-		led@2 {
+		led_b: led@2 {
 			reg = <2>;
 			color = <LED_COLOR_ID_BLUE>;
 			function = LED_FUNCTION_STATUS;
 		};
 
-		led@4 {
+		led_r: led@4 {
 			reg = <4>;
 			color = <LED_COLOR_ID_RED>;
 			function = LED_FUNCTION_STATUS;

-- 
2.47.3


