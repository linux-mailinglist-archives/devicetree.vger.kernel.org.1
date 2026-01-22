Return-Path: <devicetree+bounces-258625-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKNLF32HcmnAlwAAu9opvQ
	(envelope-from <devicetree+bounces-258625-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 21:24:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1386D66B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 21:24:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0637530028F7
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 20:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6B9237AA88;
	Thu, 22 Jan 2026 20:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7tD9921"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B259039F8BA;
	Thu, 22 Jan 2026 20:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769113462; cv=none; b=bJOjuZ6A2loj5r4rG3/jyyE+MFAiRlAyDT3WamzmJ3RjhyVLD4vwBZu2mcusNssSf2UGAne9Lv10fMyn4OzU6f7lS3qFon+fRVJyEzxQ8Xmora9x3AgDuuMchreawrDCGJftzkutgqR2C6BdnWi3tj/rqK0tdsSxl7wiFcqMOog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769113462; c=relaxed/simple;
	bh=jxDva29TmrpTbuXwfPS+LrQb+ngGyyCiK1VLf/CPIe4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Rowb37ZeRNThzZ8fzL0a+Y8Yy3dM2gspOTnJW5ymuIkZHuYzcjcr2cELmmKEBS60Fjng1DmbzA/Wavx14FppJ/loyNFLF6q0b63VqrMAXikdMlO+aMR+lrrWFNWZFNLgBwnUu1FOwagmkPDzt/xbzWTnGSXbAM3aHpwZtwXRIlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7tD9921; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2730C116C6;
	Thu, 22 Jan 2026 20:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769113461;
	bh=jxDva29TmrpTbuXwfPS+LrQb+ngGyyCiK1VLf/CPIe4=;
	h=From:To:Cc:Subject:Date:From;
	b=l7tD99218rwrX90xlcBuLjn0U4w25QlHBncCKJ8ZFCIAxbPt4PRxDLSsM3qmOroyG
	 tJ6mUUQ/hSTn0IMhi9HJSBtEWPK1Wrm+q1iHyVt4rKbxQ8y9gcnFjpQ//Wfq+6XyFw
	 M/zpugqNM3HUWBMVAiwTwniCtxZrDINd0RFptALUWolNYUTN/5VVnrVPRKKjQWSN10
	 1oOQX+eBE27lUNurHlsMqczVE1028H9Es2y6HA5uOoUoJt3CBYLs9w2Aq6SYcq6ZOA
	 bA07/DwFSxSWFyscGX9WbbFwv8ibECKI2JjcKKGg4dECSun6kQQyPcQTJVzNYKb2Zw
	 miA2JWy7l7CSA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RESEND PATCH] ARM: dts: microchip: Drop usb_a9g20-dab-mmx.dtsi
Date: Thu, 22 Jan 2026 14:23:45 -0600
Message-ID: <20260122202345.3387936-2-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258625-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,fffd0000:email,0.0.0.0:email]
X-Rspamd-Queue-Id: 5A1386D66B
X-Rspamd-Action: no action

This .dtsi file is not included anywhere in the tree and can't be
tested.

Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../boot/dts/microchip/usb_a9g20-dab-mmx.dtsi | 93 -------------------
 1 file changed, 93 deletions(-)
 delete mode 100644 arch/arm/boot/dts/microchip/usb_a9g20-dab-mmx.dtsi

diff --git a/arch/arm/boot/dts/microchip/usb_a9g20-dab-mmx.dtsi b/arch/arm/boot/dts/microchip/usb_a9g20-dab-mmx.dtsi
deleted file mode 100644
index 5b1d80c0ab26..000000000000
--- a/arch/arm/boot/dts/microchip/usb_a9g20-dab-mmx.dtsi
+++ /dev/null
@@ -1,93 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * calao-dab-mmx.dtsi - Device Tree Include file for Calao DAB-MMX Daughter Board
- *
- * Copyright (C) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- */
-
-/ {
-	ahb {
-		apb {
-			usart1: serial@fffb4000 {
-				status = "okay";
-			};
-
-			usart3: serial@fffd0000 {
-				status = "okay";
-			};
-		};
-	};
-
-	i2c-gpio@0 {
-		status = "okay";
-	};
-
-	leds {
-		compatible = "gpio-leds";
-
-		user_led1 {
-			label = "user_led1";
-			gpios = <&pioB 20 GPIO_ACTIVE_LOW>;
-		};
-
-/*
-* led already used by mother board but active as high
-*		user_led2 {
-*			label = "user_led2";
-*			gpios = <&pioB 21 GPIO_ACTIVE_LOW>;
-*		};
-*/
-		user_led3 {
-			label = "user_led3";
-			gpios = <&pioB 22 GPIO_ACTIVE_LOW>;
-		};
-
-		user_led4 {
-			label = "user_led4";
-			gpios = <&pioB 23 GPIO_ACTIVE_LOW>;
-		};
-
-		red {
-			label = "red";
-			gpios = <&pioB 24 GPIO_ACTIVE_LOW>;
-		};
-
-		orange {
-			label = "orange";
-			gpios = <&pioB 30 GPIO_ACTIVE_LOW>;
-		};
-
-		green {
-			label = "green";
-			gpios = <&pioB 31 GPIO_ACTIVE_LOW>;
-		};
-	};
-
-	gpio_keys {
-		compatible = "gpio-keys";
-
-		button-user-pb1 {
-			label = "user_pb1";
-			gpios = <&pioB 25 GPIO_ACTIVE_LOW>;
-			linux,code = <0x100>;
-		};
-
-		button-user-pb2 {
-			label = "user_pb2";
-			gpios = <&pioB 13 GPIO_ACTIVE_LOW>;
-			linux,code = <0x101>;
-		};
-
-		button-user-pb3 {
-			label = "user_pb3";
-			gpios = <&pioA 26 GPIO_ACTIVE_LOW>;
-			linux,code = <0x102>;
-		};
-
-		button-user-pb4 {
-			label = "user_pb4";
-			gpios = <&pioC 9 GPIO_ACTIVE_LOW>;
-			linux,code = <0x103>;
-		};
-	};
-};
-- 
2.51.0


