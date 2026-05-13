Return-Path: <devicetree+bounces-296613-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yG3ZMb0FBGoHCQIAu9opvQ
	(envelope-from <devicetree+bounces-296613-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 07:01:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA8452D663
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 07:01:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2363B3081CDE
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 05:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5F7339B95D;
	Wed, 13 May 2026 05:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b="VnALRn2F"
X-Original-To: devicetree@vger.kernel.org
Received: from s106b.cyber-folks.pl (s106b.cyber-folks.pl [195.78.66.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAFD3655F1;
	Wed, 13 May 2026 05:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.78.66.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778648452; cv=none; b=UxTRq12T9yTYyd2pnJoGLbuA3JJCiRhscDM3GwDOnAxBwZRVf3NzI9t7E+wmH+0werxuNpMbPx1WPo/XsMr4XwxMU8GjXBDiKZgfOkpuMJ5c0YALU58vAvdiHAQG7qGf5CIArWZGHobYb7jPsSPSQ33JQdMTJx/O0wj1gPCKlcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778648452; c=relaxed/simple;
	bh=/N5/DsYuZyXhP6df/g8ro7dcmFJQ8yyC3EItsyGlO0Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bIV4ppquSKUTTfnsZQM+TSwQ138GrW9lxVgauv2AqL6Y0uxUQ+h50Sq7V5Rns425R+ll9k7wOOCyqVw0eZTDp58RybJDST6ZtP52/t/D0LbqU5UeJeKY5FLkhE+HZkhzRWk6USraMnpiLk6jXE6f86AlaDO2GDIOdnlIFUgNaxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl; spf=pass smtp.mailfrom=mmpsystems.pl; dkim=pass (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b=VnALRn2F; arc=none smtp.client-ip=195.78.66.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mmpsystems.pl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mmpsystems.pl; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=2aQBbG5BBr12ydhLfhSkL/E4J0Fku1F2nvWGO6lgZKA=; b=VnALRn2FAIPrnPvRuXE/00SOEU
	ellbJLES0qQ78J/B7thoDIkE0j0MlLAuYWZJZKgWmhikw8W4/wAwLZDcd4xDjWtJG/xJ3tugTfZZ0
	N6p5MhhkvEr66ewBSn4a9oSUihsTYk0YoOS0VyNACKD5UYNgubC7DCJylhaKqcFqAM+iMZyJZ+UVJ
	tV5sYEs4TvekiRv6A1f4oTZ/iYUu8W0uB9aqMglwpkuVyZtVY7yNULXCUow6y76WAAWEX8uMeqyye
	mTi/FID9oI6phlazitvLWmueyNVthwq3lXu9TIrummLy6DHYhFJ7kP55cM4AfWrpkMezUzNu3pfUw
	3W/NmIOQ==;
Received: from [91.102.182.218] (helo=localhost)
	by s106.cyber-folks.pl with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <michal.piekos@mmpsystems.pl>)
	id 1wN1iB-0000000EbcL-1ih0;
	Wed, 13 May 2026 07:00:47 +0200
From: Michal Piekos <michal.piekos@mmpsystems.pl>
Date: Wed, 13 May 2026 06:59:44 +0200
Subject: [PATCH v2 3/3] arm64: dts: allwinner: a523: add gpadc node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-sunxi-a523-gpadc-v2-3-d5efde151dac@mmpsystems.pl>
References: <20260513-sunxi-a523-gpadc-v2-0-d5efde151dac@mmpsystems.pl>
In-Reply-To: <20260513-sunxi-a523-gpadc-v2-0-d5efde151dac@mmpsystems.pl>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Maksim Kiselev <bigunclemax@gmail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, Michal Piekos <michal.piekos@mmpsystems.pl>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778648397; l=1298;
 i=michal.piekos@mmpsystems.pl; s=20260301; h=from:subject:message-id;
 bh=/N5/DsYuZyXhP6df/g8ro7dcmFJQ8yyC3EItsyGlO0Y=;
 b=7IFLix/s5zhm6Z2vJ2rXvkQgwcq7m4r9e0QlY9IbP0q9Ao1SHxmHErk7DFQE4WXUIiCZzeoui
 XFAguZ705gpB2TreIeIY0QKwh5XXKhMh1gY77uJsYHBqyTPO6QiAESE
X-Developer-Key: i=michal.piekos@mmpsystems.pl; a=ed25519;
 pk=Aixyx03If7ZDamiKKN0lsa+0mtA+WjIuIf2ZQVYNBqg=
X-Authenticated-Id: michal.piekos@mmpsystems.pl
X-Rspamd-Queue-Id: 1AA8452D663
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mmpsystems.pl:s=x];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[mmpsystems.pl : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296613-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,sholland.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.30.163.192:email];
	FROM_NEQ_ENVFROM(0.00)[michal.piekos@mmpsystems.pl,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[mmpsystems.pl:-];
	NEURAL_HAM(-0.00)[-0.502];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mmpsystems.pl:email,mmpsystems.pl:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.31.71.208:email,0.30.167.168:email]
X-Rspamd-Action: no action

Describe GPADC block on Allwinner A523.

Tested on Radxa Cubie A5E:
- 2 connected channels are showing voltages in agreement with
  schematics.
        BOOT-SEL-ADC ~500mV
        BOM-ADC ~1800mV
- 3rd channel exposed on 40pin header is showing correct voltages when
  connected to known voltage source.

Signed-off-by: Michal Piekos <michal.piekos@mmpsystems.pl>
---
 arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi b/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
index 5afa8d92acbf..4e793aeccf89 100644
--- a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
@@ -340,6 +340,17 @@ ledc: led-controller@2008000 {
 			status = "disabled";
 		};
 
+		gpadc: adc@2009000 {
+			compatible = "allwinner,sun55i-a523-gpadc";
+			reg = <0x2009000 0x400>;
+			clocks = <&ccu CLK_BUS_GPADC0>, <&ccu CLK_GPADC0>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_GPADC0>;
+			interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
+			#io-channel-cells = <1>;
+			status = "disabled";
+		};
+
 		wdt: watchdog@2050000 {
 			compatible = "allwinner,sun55i-a523-wdt";
 			reg = <0x2050000 0x20>;

-- 
2.43.0


