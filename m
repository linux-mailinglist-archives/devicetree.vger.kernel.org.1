Return-Path: <devicetree+bounces-269460-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKtJKnAxomke0wQAu9opvQ
	(envelope-from <devicetree+bounces-269460-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:06:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBAC1BF53F
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:06:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 855B03056E7C
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:06:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D66D538DF9;
	Sat, 28 Feb 2026 00:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIkf/Om+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B488D29CE1
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 00:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772237161; cv=none; b=iME4qdprjQ5WBi9JA295FX5ujmk+c+n7i1NOaN9waQB7+SK6YTbLYJy+WzqQed2PUzN6L9tK66+5yIDsWd9oB47dh+APH+vZ4rhvxj14mqJOZyXruSniBaUaNyDrbISE3BtDjEaEqR9r8OTSqqhUWVvuqto9VAexfHPGZm1K2Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772237161; c=relaxed/simple;
	bh=kldkEUcsu7/3naZKUYV+6QtB1p++L0wVmQijmSfs19A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IeoX6+g8pj9Djeg9SCTdLrymBodZRaK7fzhNel4vFeqMeWj95rDuOlgY0YhjZx9wsJZYJdCYxyMVzX6slKPjGEhogivkCbcqowrxFvqpWfXMWpCD5jq3tra0Fbih1DPADU1LHliBt7n8onXcP/v0dZjDzdmB4oy1+AtVqXHpVoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIkf/Om+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4BABC2BC86;
	Sat, 28 Feb 2026 00:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772237161;
	bh=kldkEUcsu7/3naZKUYV+6QtB1p++L0wVmQijmSfs19A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AIkf/Om+zd4R1CQfc+hHUdAQjEfKTnOptadEVGaNAFsCzN2aFfniKT8Ty2GcU4AVC
	 81XwNwok9XSHcD3m3ZyYxnvan3sHWyf1btmSuJP/esDUbtyOnpG1jE/9Aa21y9KGlR
	 bmdDM93VnbbBkbERRyfP0s1/iKDGrsxRJLEF672oZ3q3Fqb83FZw0phX0EjdOTYigM
	 mq1ljQeEG1lJFhmmJL1ZZygXua5znX4hEDgEbxHQhwq+Hx1hLqKhWsH0oOdWfaboz6
	 tXl6uM4ciMbtKXee5Ptvcw9CSpOq5a9WZHvij40Nsz5JE3ivOjEt5SCv57Led966Nf
	 nEgiy3mJ9PWXg==
From: Linus Walleij <linusw@kernel.org>
Date: Sat, 28 Feb 2026 01:05:48 +0100
Subject: [PATCH 8/8] ARM: dts: gemini: Correct the RUT1xx
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-gemini-dts-fixes-v1-8-0c6f6d0fb4bd@kernel.org>
References: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
In-Reply-To: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269460-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[4.13.153.0:email,2.250.240.128:email,0.0.0.1:email,3.147.135.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,4.28.219.64:email]
X-Rspamd-Queue-Id: 1EBAC1BF53F
X-Rspamd-Action: no action

Fix two problems with the RUT1xx device tree:
- The memory is 32MB not 128MB
- The console is 19200 BPS
- Activate the PCI
- Disable the unused USB ports

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
 arch/arm/boot/dts/gemini/gemini-rut1xx.dts | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/gemini/gemini-rut1xx.dts b/arch/arm/boot/dts/gemini/gemini-rut1xx.dts
index 0ebda4efd9d0..4bdf86bd7c23 100644
--- a/arch/arm/boot/dts/gemini/gemini-rut1xx.dts
+++ b/arch/arm/boot/dts/gemini/gemini-rut1xx.dts
@@ -14,13 +14,13 @@ / {
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	memory@0 { /* 128 MB */
+	memory@0 { /* 32 MB */
 		device_type = "memory";
-		reg = <0x00000000 0x8000000>;
+		reg = <0x00000000 0x2000000>;
 	};
 
 	chosen {
-		bootargs = "console=ttyS0,115200n8";
+		bootargs = "console=ttyS0,19200n8";
 		stdout-path = &uart0;
 	};
 
@@ -113,6 +113,10 @@ gpio1: gpio@4e000000 {
 			pinctrl-0 = <&gpio1_default_pins>;
 		};
 
+		pci@50000000 {
+			status = "okay";
+		};
+
 		ethernet@60000000 {
 			status = "okay";
 
@@ -124,13 +128,5 @@ ethernet-port@1 {
 				/* Not used in this platform */
 			};
 		};
-
-		usb@68000000 {
-			status = "okay";
-		};
-
-		usb@69000000 {
-			status = "okay";
-		};
 	};
 };

-- 
2.53.0


