Return-Path: <devicetree+bounces-272668-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GN9xFKw+rmndAwIAu9opvQ
	(envelope-from <devicetree+bounces-272668-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 04:29:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A7215233857
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 04:29:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6FC25300AB1D
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 03:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADA79282F11;
	Mon,  9 Mar 2026 03:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJZZ3fJ1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD9027B347;
	Mon,  9 Mar 2026 03:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773026982; cv=none; b=W/KRmKSB+E+EhhAbUwGv9t5UtctGN+HGngSYXstsaeSH+SaN/rF1OrmyT2NLiclsbx53OunBEM+ilsZAboHXOxIc/+zTXpNcFNEDD9MWTZMy0q3OEDOShmquLNBZ/qRggnP9Bj9APrK3/ecJWOlPQOH55adVshzeDh1TbhKh0Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773026982; c=relaxed/simple;
	bh=VXVNmCClSvOwGpmi61YhHWESdYYhdf74iA37qmcxNDY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h1U8mC50iAT4GZt/a8hwyWRCC+wxXG0UXOkVDJ/L71H58ayUTA5tI0w7VbtsuTkT5H1EfIaoyxEa9wdLJDFlBULSZ7gY/qKtkPGHIuarR6ndxqAIkTut6EguqXebIUdrRqkOUtmm397wKYiivC3ajyYTrsSl/118WSnCauHjDZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJZZ3fJ1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 49392C2BC9E;
	Mon,  9 Mar 2026 03:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773026982;
	bh=VXVNmCClSvOwGpmi61YhHWESdYYhdf74iA37qmcxNDY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=LJZZ3fJ1fzhlMwc3mByIv+IenATWisW3tyGnJFlqSfme6o5dc3Y8UE2iU0bCQtXOV
	 RLf+feLAwBn4KDL39NotG8FR/8ZEWpU23cdMWTFnW0mDLwou8i9DRpLah4EaaqsZXs
	 2P/keSAq5JJdvyrLP07qkJHtJhpcwPPDg3fPK7jtqC+36JymuuVgCVBBBKb/NegUBT
	 TcKylZSoFc9HVlOWIJjqigTQFKv+3/zaXkE6OEcc+5wy2Pm9mSIfN1vseAMw0U0agQ
	 dsGcEw92S8Oh1mC11lhk3s897fc5MPZBdu8aYquNlTpHnDpk+YbVG6+IZfibLvUlWg
	 HBffZqXMM5OaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3572BEA854D;
	Mon,  9 Mar 2026 03:29:42 +0000 (UTC)
From: Carl Lee via B4 Relay <devnull+carl.lee.amd.com@kernel.org>
Date: Mon, 09 Mar 2026 11:29:28 +0800
Subject: [PATCH 2/2] ARM: dts: aspeed: anacapa: Add eeprom device node for
 NFC adaptor board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-arm-dts-aspeed-anacapa-add-eeprom-device-v1-2-45092310e0e6@amd.com>
References: <20260309-arm-dts-aspeed-anacapa-add-eeprom-device-v1-0-45092310e0e6@amd.com>
In-Reply-To: <20260309-arm-dts-aspeed-anacapa-add-eeprom-device-v1-0-45092310e0e6@amd.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 carl.lee@amd.com, peter.shen@amd.com, colin.huang2@amd.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773026981; l=774;
 i=carl.lee@amd.com; s=20260203; h=from:subject:message-id;
 bh=D46maPLCWSRhTgMfwUROFSf7IKYisSBqz2ghfKsQhBw=;
 b=hpjKx7Eau2uIwosBxKKNezj3WUOTJpS7Yy3dVZ3PCMzUp9UwtT5YxbTEWxVTj/+IJQpYSVmns
 Ht0/v19zq/hDXnBtIDGAtDjYW2OPLHcqCt58fD3cUJvvbI+JsIjXeTU
X-Developer-Key: i=carl.lee@amd.com; a=ed25519;
 pk=pyq7QaQvoxMg806KVkRwpCbiah+7ncWr4MBpK1AEyjA=
X-Endpoint-Received: by B4 Relay for carl.lee@amd.com/20260203 with
 auth_id=623
X-Original-From: Carl Lee <carl.lee@amd.com>
Reply-To: carl.lee@amd.com
X-Rspamd-Queue-Id: A7215233857
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272668-lists,devicetree=lfdr.de,carl.lee.amd.com];
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
	NEURAL_HAM(-0.00)[-0.977];
	HAS_REPLYTO(0.00)[carl.lee@amd.com];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,amd.com:replyto,amd.com:email,amd.com:mid,0.0.0.7:email,0.0.0.28:email]
X-Rspamd-Action: no action

From: Carl Lee <carl.lee@amd.com>

Add eeprom device node for NFC adaptor board FRU.

Signed-off-by: Carl Lee <carl.lee@amd.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
index 680108b00664..e1dc13cd3cd2 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
@@ -820,6 +820,11 @@ i2c13mux0ch7: i2c@7 {
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

-- 
2.34.1



