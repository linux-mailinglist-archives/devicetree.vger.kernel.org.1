Return-Path: <devicetree+bounces-272671-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGcXGJZCrmkjBQIAu9opvQ
	(envelope-from <devicetree+bounces-272671-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 04:46:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEE3233920
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 04:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 54EAD30098BA
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 03:46:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C89615A86D;
	Mon,  9 Mar 2026 03:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdeQteGm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297876FC3;
	Mon,  9 Mar 2026 03:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773027986; cv=none; b=Mxq/8/u+o/um40bQRpSXOOa/bB9zv2sgDFVXzX+Hll/s0rs/LA0xCQ2BJLUWEOWMMdOlxfWjVL56+XNyiJyK/QHrDxmVoW502y9g3xD8Er4ZFFB9mPrfj/Sl+mX4XnI9igsd72TqkOS9k3Qb6aGFVEX4Uca7ndqB1W6F9EBB0mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773027986; c=relaxed/simple;
	bh=1IhSqdUsmlpzA1CB+FcAASjNKWK/YwHGfbAD/QtT1K8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=YSkyvCImQzYYaCZ4weX8O0KC1QwrTzHytMaeUc54tId87Zq746AwZIwvWDFchi15Ax6/XjCclzh9HRPppMbNAzedfJjgpQ4rrQgw0HUMphK7dCCKi3Mrf4flBDWH2QgW1yJe+v6kHWMR8/oVpWNw2sBzl/Oea5MbLh29WdPwlu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdeQteGm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFDDC4CEF7;
	Mon,  9 Mar 2026 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773027985;
	bh=1IhSqdUsmlpzA1CB+FcAASjNKWK/YwHGfbAD/QtT1K8=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=CdeQteGmrqEvJnO9ae2KWJ3HftTY50UNrkCWXTK/dmjZZsweW3ou9cMEMFQsyrKIQ
	 dwe6TDSpa6G5ZENg/veo4M2IE3L6RYJ98u2Om3b8XICONw1H98iGboYB0fGOm7J0LV
	 8coVYdKoVKj8Lhktu5h7CarMERWIs7AUx4gTnUU/TogX+DHzgQfxdXxasu4Bte8pTL
	 OhzTBg2DaEGAHfUS5Ya1eHZXbhB4MBaI8Jkg3Jrk8AMgE1DlyX0DxyqqtztFo6DU/R
	 P8m95YJOQ8XPke1ENCEprT2G9PhUrpP33otbTrerEV2eQjFMXQXPAR20jOM6DO0M/3
	 yPMkpX+clJ8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5DF1EA854C;
	Mon,  9 Mar 2026 03:46:25 +0000 (UTC)
From: Carl Lee via B4 Relay <devnull+carl.lee.amd.com@kernel.org>
Date: Mon, 09 Mar 2026 11:46:17 +0800
Subject: [PATCH v2] ARM: dts: aspeed: anacapa: Add eeprom device node for
 NFC adaptor board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-arm-dts-aspeed-anacapa-add-eeprom-device-v2-1-91c7dde4b79d@amd.com>
X-B4-Tracking: v=1; b=H4sIAIhCrmkC/52NQQ6CMBBFr0Jm7ZhpkSa48h6ExdCO0gW0aQnRk
 N7dyhFcvv+T9w7IkrxkuDcHJNl99mGtoC8N2JnXl6B3lUGTNtRSj5wWdFtGzlHEIa9sOTKycyg
 SU6hv1VhBVsyTkOG2m6DqYpKnf5+pYaw8+7yF9DnLu/qtf0R2hYS3jnrdKhIS8+DFXW1YYCylf
 AFca4/l3gAAAA==
X-Change-ID: 20260309-arm-dts-aspeed-anacapa-add-eeprom-device-a1aabe06a35b
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 carl.lee@amd.com, peter.shen@amd.com, colin.huang2@amd.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773027984; l=1346;
 i=carl.lee@amd.com; s=20260203; h=from:subject:message-id;
 bh=4s2WZE7z3QJxXI/iwi/VjWJKQZJpdVWFD4P2EAdFysk=;
 b=NpUojOD+pYSQF7vSOrQb0hN1vZm56HiHxHGz+afcDYeGmB1rM7LVBDX2hAgXGEKrQpaX8Lhot
 4rC5mTqDpcECGWKDsWLyuIEAngdgoTW/wK9VHefT7DqR8dA2EJBgn3y
X-Developer-Key: i=carl.lee@amd.com; a=ed25519;
 pk=pyq7QaQvoxMg806KVkRwpCbiah+7ncWr4MBpK1AEyjA=
X-Endpoint-Received: by B4 Relay for carl.lee@amd.com/20260203 with
 auth_id=623
X-Original-From: Carl Lee <carl.lee@amd.com>
Reply-To: carl.lee@amd.com
X-Rspamd-Queue-Id: EAEE3233920
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272671-lists,devicetree=lfdr.de,carl.lee.amd.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	DBL_PROHIBIT(0.00)[0.0.0.50:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.975];
	HAS_REPLYTO(0.00)[carl.lee@amd.com];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.28:email,0.0.0.7:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,amd.com:replyto,amd.com:email,amd.com:mid]
X-Rspamd-Action: no action

From: Carl Lee <carl.lee@amd.com>

Add eeprom device node for NFC adaptor board FRU.

Signed-off-by: Carl Lee <carl.lee@amd.com>
---
Add eeprom device nodes used to store FRU data for the PRoT
module and NFC adapter board on Anacapa platform.
---
Changes in v2:
- Remove PRoT module eeprom commit since it is already included in another series under review.
- Only include NFC adapter board eeprom node.
- Link to v1: https://lore.kernel.org/r/20260309-arm-dts-aspeed-anacapa-add-eeprom-device-v1-0-45092310e0e6@amd.com
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
index 2cb7bd128d24..69c41532fdfb 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
@@ -815,6 +815,11 @@ i2c13mux0ch7: i2c@7 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
+			eeprom@50 {
+				compatible = "atmel,24c128";
+				reg = <0x50>;
+			};
+
 			nfc@28 {
 				compatible = "nxp,nxp-nci-i2c";
 				reg = <0x28>;

---
base-commit: a0ae2a256046c0c5d3778d1a194ff2e171f16e5f
change-id: 20260309-arm-dts-aspeed-anacapa-add-eeprom-device-a1aabe06a35b

Best regards,
-- 
Carl Lee <carl.lee@amd.com>



