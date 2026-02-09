Return-Path: <devicetree+bounces-263780-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGUaCsBFiWkT5gQAu9opvQ
	(envelope-from <devicetree+bounces-263780-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 03:26:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB1C10B136
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 03:26:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8B1893001A5F
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 02:26:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2076323D291;
	Mon,  9 Feb 2026 02:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOjgjMJL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D311F7541;
	Mon,  9 Feb 2026 02:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770603963; cv=none; b=F8iWbYI2UY/UNLeo4W9KTbcnecchdgHQfvL/zwsvwGOLBZEZT0K8sNjHY3k4ccpgVe9geUgxvnBVg02Jwg47KwT16WdOEx8nn5KqjnVJ4r3mh5vQhJCtMqYuXJqRPiJaQV96UQRJ0spCeT7qv0tzZgD8UDqq5FR8rNLhUt4awxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770603963; c=relaxed/simple;
	bh=8FNcFMom+IQpEysPGE9C9NRqh6IjFoqhAG6EdKXGcmU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=R3xfk5yvslkVo5bCZlmTJLqriM4YQlNneYPZS4i58mzBB5xSyj+kyB0SQPvRya4IyVLXasqzcVPBxggJGq8Wxz4wjEujVdPAB3ZxVoZ6cY199pOIwy4Y9vI10n7Ff8LfKZlEtT6uzRmrs8NY06obRPqR3oCKvyGVEKArsrpeXWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOjgjMJL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B29C4CEF7;
	Mon,  9 Feb 2026 02:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770603962;
	bh=8FNcFMom+IQpEysPGE9C9NRqh6IjFoqhAG6EdKXGcmU=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=iOjgjMJLTXGgtRIyHRiPlhacB0NWJjGddSIVKVYhIz++j1oeLQBwdspz5Z+tQY7i1
	 ArwBPPrdmtiaUurrysIgelccH+hpp7eoV3IpC4zm6f1vLngwwwL61deJ2G+E5wvdj0
	 ty8gfCvp2ZMiezH1wHFKqK4DOhDhm7/kedcRKnNERzWqAaPZk/p4GnajkfyBj7bgmR
	 55+tZiCAHhEvshKGOZ5Hg1B/Hg1ZV8vCk9u2jtWvPZLXRjRTMv84qdqwWnL0VA2HRA
	 oAw8SCe7nnziRlE/kpgtwleYzThuEJSlHbZoHDC318ngI9pxebx66c/k9mSjol1g9T
	 48SCSIH97UAcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA26EF06EF;
	Mon,  9 Feb 2026 02:26:02 +0000 (UTC)
From: Carl Lee via B4 Relay <devnull+carl.lee.amd.com@kernel.org>
Date: Mon, 09 Feb 2026 10:25:59 +0800
Subject: [PATCH] ARM: dts: aspeed: anacapa: add NFC device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260209-add-nfc-device-v1-1-748d1a98b2b5@amd.com>
X-B4-Tracking: v=1; b=H4sIALZFiWkC/x2MQQqAIBAAvxJ7bkElg/pKdFB3t/ZioRBB9Pek4
 8DMPFC5KFeYuwcKX1r1yA1s30HaQ94YlRqDM240zkwYiDBLQmpyYuQgYofoyUeBFp2FRe9/uKz
 v+wHAUqHJYAAAAA==
X-Change-ID: 20260209-add-nfc-device-eaff14b5d5bf
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 carl.lee@amd.com, peter.shen@amd.com, colin.huang2@amd.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770603961; l=1030;
 i=carl.lee@amd.com; s=20260203; h=from:subject:message-id;
 bh=fAioY0/uBa8OFcIA56wyA/W2gJNy1rdRQAUCDykPe7E=;
 b=he7DbyjQeooaxxeK62Gnonp0ve5OOlWEu63CG4Dw+dnDtFlATMjIVxFTXipgfGB1C+smjB4Bh
 ojMR4pX3PcvBYSKqdYCsaux087oN5zOjEO1cODH5RIkYk7ZYMO2Kn4B
X-Developer-Key: i=carl.lee@amd.com; a=ed25519;
 pk=pyq7QaQvoxMg806KVkRwpCbiah+7ncWr4MBpK1AEyjA=
X-Endpoint-Received: by B4 Relay for carl.lee@amd.com/20260203 with
 auth_id=623
X-Original-From: Carl Lee <carl.lee@amd.com>
Reply-To: carl.lee@amd.com
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263780-lists,devicetree=lfdr.de,carl.lee.amd.com];
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
	DBL_PROHIBIT(0.00)[0.0.0.28:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.989];
	HAS_REPLYTO(0.00)[carl.lee@amd.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.7:email]
X-Rspamd-Queue-Id: 3EB1C10B136
X-Rspamd-Action: no action

From: Carl Lee <carl.lee@amd.com>

add NFC NXP NCI device support to NFC tag reading

Signed-off-by: Carl Lee <carl.lee@amd.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
index 221af858cb6b..7349d25434e6 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
@@ -802,6 +802,16 @@ i2c13mux0ch7: i2c@7 {
 			reg = <7>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+
+			nfc@28 {
+				compatible = "nxp,nxp-nci-i2c";
+				reg = <0x28>;
+
+				interrupt-parent = <&sgpiom0>;
+				interrupts = <156 IRQ_TYPE_LEVEL_HIGH>;
+
+				enable-gpios = <&sgpiom0 241 GPIO_ACTIVE_HIGH>;
+			};
 		};
 	};
 };

---
base-commit: 4c87cdd0328495759f6e9f9f4e1e53ef8032a76f
change-id: 20260209-add-nfc-device-eaff14b5d5bf

Best regards,
-- 
Carl Lee <carl.lee@amd.com>



