Return-Path: <devicetree+bounces-272669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJL8Na0+rmndAwIAu9opvQ
	(envelope-from <devicetree+bounces-272669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 04:29:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 463AC23385E
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 04:29:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 99379300B9E1
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 03:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFCEE285050;
	Mon,  9 Mar 2026 03:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrGLNQbp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ADFF27BF7D;
	Mon,  9 Mar 2026 03:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773026982; cv=none; b=uqFrWy8j1qrWwmDzrG9g61IDqjJh90AQ07TOCHMTX8jGAWFYI8KPlh1pQJL7UDl2gW49XFR25wAXr7hTAQqmmm/W5RLc05uPg4519OuBG3JmoavlQOObi1SAJyzlkEgV1D1FCIr64F1D5Q4sLBKTN/5My41Op23oIO4ZfFrqWow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773026982; c=relaxed/simple;
	bh=COteykeXiz9nP7yZMcSFC+zN7ElCRxjdKlB0bSbry68=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=a5QpLj4/2coWh5hjqDZA6wrL/b2BJ8qbNbp8HqROLN/laGEGh4huGthXq3KAExql3kJARenDQ+m+jiNbp2DhaXWtKy+ljHY9cqxpjVePU3W8rgNzNru2GnFQo5RlbqJGVEKNhn5TOiXxSCWr85uJpAIIcD6p9fzjCyHmhOKBWqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrGLNQbp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 36793C2BC87;
	Mon,  9 Mar 2026 03:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773026982;
	bh=COteykeXiz9nP7yZMcSFC+zN7ElCRxjdKlB0bSbry68=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=WrGLNQbpzqKqSzxyhQmmZMXbHsR+aX+qSVzi2REcqzeT9AJdJk2w2ZO1GdSI62aPc
	 WeAp3PQ43j27gT4eqZG37e7w3KQz6n0Rg2gxZ/hFE4yJUop3SMlQkqlSpXFCbXXuEW
	 lC5qxnjXx6JaiEp6EUEcbe0YHSiMDDnUckiW63lG79S27Es3720q8cOe10AMRDCalW
	 iDoZw6BWN7jvbjp3Xq+ddpiJmz8UiqFUaPU2O7hUTVE1t4o/x+h7GMKFQkGVvZoxVW
	 MDMalBsRAkeqX2P2fR87IZv8YtzpIuUK86wlUxq2JM1ZYHylEXinV4IHJKj4D0TmHg
	 BIJ427iAD1HQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26F60EA854C;
	Mon,  9 Mar 2026 03:29:42 +0000 (UTC)
From: Carl Lee via B4 Relay <devnull+carl.lee.amd.com@kernel.org>
Date: Mon, 09 Mar 2026 11:29:27 +0800
Subject: [PATCH 1/2] ARM: dts: aspeed: anacapa: Add eeprom device node for
 PRoT module
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-arm-dts-aspeed-anacapa-add-eeprom-device-v1-1-45092310e0e6@amd.com>
References: <20260309-arm-dts-aspeed-anacapa-add-eeprom-device-v1-0-45092310e0e6@amd.com>
In-Reply-To: <20260309-arm-dts-aspeed-anacapa-add-eeprom-device-v1-0-45092310e0e6@amd.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 carl.lee@amd.com, peter.shen@amd.com, colin.huang2@amd.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773026981; l=712;
 i=carl.lee@amd.com; s=20260203; h=from:subject:message-id;
 bh=4aUo+I25yKcWkfZ/hlkVpDZQt+CsSEqAbr9PaSDqHsg=;
 b=3tAsCSbsPpsPhvfGTXlpzgPTJPk7d61OGjUrgblTid5E+Kh1SZMxz/XNk3I6A/r4SM/0xmf6s
 MgaiyyjUEsBAA5/RaDvyLlXQywZtYW5oU5EX5TosmnWHVXjSE5zf2tq
X-Developer-Key: i=carl.lee@amd.com; a=ed25519;
 pk=pyq7QaQvoxMg806KVkRwpCbiah+7ncWr4MBpK1AEyjA=
X-Endpoint-Received: by B4 Relay for carl.lee@amd.com/20260203 with
 auth_id=623
X-Original-From: Carl Lee <carl.lee@amd.com>
Reply-To: carl.lee@amd.com
X-Rspamd-Queue-Id: 463AC23385E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272669-lists,devicetree=lfdr.de,carl.lee.amd.com];
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
	DBL_PROHIBIT(0.00)[0.0.0.50:email,0.0.0.56:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.977];
	HAS_REPLYTO(0.00)[carl.lee@amd.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,amd.com:replyto,amd.com:email,amd.com:mid,0.0.0.51:email]
X-Rspamd-Action: no action

From: Carl Lee <carl.lee@amd.com>

Add eeprom device node for PRot module FRU.

Signed-off-by: Carl Lee <carl.lee@amd.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
index 2cb7bd128d24..680108b00664 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
@@ -586,6 +586,11 @@ eeprom@50 {
 		reg = <0x50>;
 	};
 
+	eeprom@51 {
+		compatible = "atmel,24c128";
+		reg = <0x51>;
+	};
+
 	// BSM FRU
 	eeprom@56 {
 		compatible = "atmel,24c64";

-- 
2.34.1



