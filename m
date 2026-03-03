Return-Path: <devicetree+bounces-270333-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKEnJMKOpmnxRAAAu9opvQ
	(envelope-from <devicetree+bounces-270333-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:33:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E80741EA354
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:33:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D6A630F1E81
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 07:29:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04D483845C0;
	Tue,  3 Mar 2026 07:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pq+wJ078"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D698132E126
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 07:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772522995; cv=none; b=Jr2JZq4u97tVcjmPKqDRtFX0C0zIn11Qrr3UfBRkjgcJMRm00F5UiCOBhD0sqRrc72Icwed0O1ZX2KJc5vNZv2s58sCNizKA2RaABmS1HfroVGuVEZ+lCwecVcU+oRFsCSKI1Y/G5mRcKVrU+y0apDDBe5Ic92e+f60dBjg2gwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772522995; c=relaxed/simple;
	bh=kldkEUcsu7/3naZKUYV+6QtB1p++L0wVmQijmSfs19A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B6UwhaXi2XVF5Ekaw5zHVw2M/YHJjUNbgz0ReYjvVAPwRFUR8XyOsqGTX+MQYSnkK5n8icnOcrkc7oRkDZMBz3bHlwOblBIMakZ4CzUvy3bz1vlXKSafbyJOo6RXg7XGxVd5KX0IArLmONPpmSspHldy0Na/YmzXjhCMEREc41U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pq+wJ078; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B0E6C19425;
	Tue,  3 Mar 2026 07:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772522995;
	bh=kldkEUcsu7/3naZKUYV+6QtB1p++L0wVmQijmSfs19A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=pq+wJ078AZyFAtOCZvMkU5f2xi1vdEps0XMpkZlgLdx2tKFMbFXl4/yhOqbzjTSKS
	 XL2jZTPEwrQsYPzPg9e8X6zofKicPWI9ALYwxLigb4i0ncpAu2AnsJZle/Dt8ZBMHD
	 VvY4zUS0u0YBW8aIqx2TOFTzYPuafwmqDNIH2Uw0RA0PJAp5tq4Aa4ajNL/0dI+nZT
	 UKN4a2dAiVsVCC4gJvIivw5kiKkdpmfFBCB9ObiyK6tu6mE/M7X+6v8WJkUsu7vtw1
	 NiH+SkKkRRWqetl5ofWl3NDPpH1jXG1BDBm4N4Ka615ot2y1aPYWP1Bf+zuOvcAecf
	 kbyTq+bc3744A==
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 03 Mar 2026 08:29:40 +0100
Subject: [PATCH v2 8/8] ARM: dts: gemini: Correct the RUT1xx
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-gemini-dts-fixes-v2-8-5b92ced841ce@kernel.org>
References: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
In-Reply-To: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: E80741EA354
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270333-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[4.13.153.0:email,3.147.135.0:email,4.28.219.64:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.0:email,0.0.0.1:email,2.250.240.128:email]
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


