Return-Path: <devicetree+bounces-269387-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qENwA9HZoWlcwgQAu9opvQ
	(envelope-from <devicetree+bounces-269387-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:52:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE841BBA45
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:52:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 800F330225BF
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:52:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48EB43624D5;
	Fri, 27 Feb 2026 17:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHMUBrwN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C4421D3F4;
	Fri, 27 Feb 2026 17:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772214725; cv=none; b=TP0DodEzoVWWLmQ+1DRj7Fe1lOmiNmYmlFeUSoVMW6zSyiwrzo9IaHiFCJvVDx4RwWZP49tKj+4okzmEjTQYVRvh8NS37HdHwbvQTUwkbnbS07Y05bjpuX8fEH7xuoWC+bQNjLaSQXmiLcH11tu1/QPH84sAfg7os7QfGHzoynQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772214725; c=relaxed/simple;
	bh=rbxhkxoFkbgVJcHFFqOrA4/4vQ1RgZNPDVV7X5oTc9I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Zeq0EwSTkdx1OaAt6vQ3qifo4VcZYkvzWP+ra8CpKGK2DuLfdpAfo7pNTUlkJmUNpHwmUOHvyeSz1IDBr9z/USBC/Dkgwe9TNlEulPiHMSd5KX8lEkKJVtSHxz2CtOYujkGnmvFIzRKtzDCD8OOSeSCO6AFPrhjtVAGp2oxoGNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHMUBrwN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93165C2BC87;
	Fri, 27 Feb 2026 17:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772214724;
	bh=rbxhkxoFkbgVJcHFFqOrA4/4vQ1RgZNPDVV7X5oTc9I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kHMUBrwNR1dSDEPxiwjji5YgXG1sVOeJaLHndrWPf0urS20mOLrpKvNY7obAdT/YA
	 +4Boi4EcubM28rxBW7O7AvHFWILbgVKEKQoscqgRcTUHvyYd17epCl2Xo/a0e69dBt
	 TH87WGO7FIZ4R+WHxnBpPBTUyoyKm0XAllkbeE308cdr6UVO6ULtlHLZ7CVcaTdLP+
	 mahUq5LDvdf12eUSt4+yixkVbOD4L1V7CdjpTUxQQ5uX2vWiuSC3ZhXfuzSrtOvszI
	 JXypgCvzDIbzDeYKU/KKkuwTpgWnn0VX4gAd/W4+l15X3mHZtGsI6rbB4zR4/D6ELV
	 AQoykA5oVzAWw==
Received: by wens.tw (Postfix, from userid 1000)
	id 23DD65FEB2; Sat, 28 Feb 2026 01:52:02 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej@kernel.org>,
	Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mark Brown <broonie@kernel.org>
Cc: linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: allwinner: sun55i-a523: Add pinmux for spi0 on PJ pins
Date: Sat, 28 Feb 2026 01:51:54 +0800
Message-ID: <20260227175157.2339758-3-wens@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260227175157.2339758-1-wens@kernel.org>
References: <20260227175157.2339758-1-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269387-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1EE841BBA45
X-Rspamd-Action: no action

The Avaota A1 board uses spi0 on the PJ pins to connect a SPI NAND
chip.

Add the full set of pins. Even though this board doesn't use CS1, other
boards may do so in the future.

Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
---
 .../arm64/boot/dts/allwinner/sun55i-a523.dtsi | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi b/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
index b8263e2872af..fbdf23e90cf7 100644
--- a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
@@ -245,6 +245,13 @@ spi0_pc_pins: spi0-pc-pins {
 				allwinner,pinmux = <4>;
 			};
 
+			/omit-if-no-ref/
+			spi0_pj_pins: spi0-pj-pins {
+				pins = "PJ21", "PJ22", "PJ23";
+				function = "spi0";
+				allwinner,pinmux = <5>;
+			};
+
 			/omit-if-no-ref/
 			spi0_cs0_pc_pin: spi0-cs0-pc-pin {
 				pins = "PC3";
@@ -252,6 +259,13 @@ spi0_cs0_pc_pin: spi0-cs0-pc-pin {
 				allwinner,pinmux = <4>;
 			};
 
+			/omit-if-no-ref/
+			spi0_cs0_pj_pin: spi0-cs0-pj-pin {
+				pins = "PJ20";
+				function = "spi0";
+				allwinner,pinmux = <5>;
+			};
+
 			/omit-if-no-ref/
 			spi0_cs1_pc_pin: spi0-cs1-pc-pin {
 				pins = "PC7";
@@ -259,6 +273,13 @@ spi0_cs1_pc_pin: spi0-cs1-pc-pin {
 				allwinner,pinmux = <4>;
 			};
 
+			/omit-if-no-ref/
+			spi0_cs1_pj_pin: spi0-cs1-pj-pin {
+				pins = "PJ24";
+				function = "spi0";
+				allwinner,pinmux = <5>;
+			};
+
 			/omit-if-no-ref/
 			spi0_hold_pc_pin: spi0-hold-pc-pin {
 				/* conflicts with eMMC D7 */
@@ -267,6 +288,13 @@ spi0_hold_pc_pin: spi0-hold-pc-pin {
 				allwinner,pinmux = <4>;
 			};
 
+			/omit-if-no-ref/
+			spi0_hold_pj_pin: spi0-hold-pj-pin {
+				pins = "PJ26";
+				function = "spi0";
+				allwinner,pinmux = <5>;
+			};
+
 			/omit-if-no-ref/
 			spi0_wp_pc_pin: spi0-wp-pc-pin {
 				/* conflicts with eMMC D2 */
@@ -275,6 +303,13 @@ spi0_wp_pc_pin: spi0-wp-pc-pin {
 				allwinner,pinmux = <4>;
 			};
 
+			/omit-if-no-ref/
+			spi0_wp_pj_pin: spi0-wp-pj-pin {
+				pins = "PJ25";
+				function = "spi0";
+				allwinner,pinmux = <5>;
+			};
+
 			uart0_pb_pins: uart0-pb-pins {
 				pins = "PB9", "PB10";
 				allwinner,pinmux = <2>;
-- 
2.47.3


