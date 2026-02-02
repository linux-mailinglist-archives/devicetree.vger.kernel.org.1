Return-Path: <devicetree+bounces-261612-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EPMwHBUMgGkL2AIAu9opvQ
	(envelope-from <devicetree+bounces-261612-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 03:29:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 865DFC7DFF
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 03:29:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7740230011B4
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 02:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5322201113;
	Mon,  2 Feb 2026 02:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4MM8flN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A246A1D5CEA;
	Mon,  2 Feb 2026 02:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769999373; cv=none; b=tmCqUoRNHvpWe8NlGc9VWVd2TqjM6rM/u1FPfigjNGYuMb0tTV7wtfOmai8QorohwyDDZLuuMb6XFvRpCnmpjsohG+4nHFtYrm6x6xm2cT/vLnuDS385dERkvFDcjdkBHPIsYczCv/s1aoOvf0zsE2WiliRm3iuo4axU2EHwNmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769999373; c=relaxed/simple;
	bh=/3ftTjYL9LKJOXS5WEGQ0d26TpXZp1EuCYw55ljuW48=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=D+/xlAJF+n2rBiWCL0zatsfQYqaKjcN9Bwy58rS+Bg+O+OUfay3modUPrDPoeLaZfDnFj1nWBW1+QqQlHHT+lBqGyuPUAkmgio9Ppe2k2Hu3nBa8okV/o8CViAsO1qL6loFFuuTsEkEJ7LWnRIE7rCCj7U+S+MZat/nH/3/O96Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4MM8flN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 207E1C4CEF7;
	Mon,  2 Feb 2026 02:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769999373;
	bh=/3ftTjYL9LKJOXS5WEGQ0d26TpXZp1EuCYw55ljuW48=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=L4MM8flNYr9Lbq6j7XSlI9aj2uqqSx7+X2B5pf+kPBfQh+Zzt9rkgNWCBO07pf7k2
	 t8X+q08BqvJX0MI8NCWAY3LXv54sAKWybUNzBJirkTMyksU6VuBMlr9ZBrLZ3ISb9d
	 LYvQb5chkC8jv2hnH8xjuRSWRZU6WQhqz3g5TVHlMienjnKq5Hp43bvRyGZHkAUIBe
	 /qV5DHEyHj8FPL3JLLceZpdh6ruNwLRWxQUcpOjA8Ml0mjUrI6h5pTRaVQUqnp11bl
	 EvoQYtEkkxVp20fMZjcCBY2CJu68qhyKJfqwqh79ahfJgyc6Hi0hN7vDtBh6l0PZnd
	 EnE1VZwzWimIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03C9FE6528B;
	Mon,  2 Feb 2026 02:29:32 +0000 (UTC)
From: Dirk Chen via B4 Relay <devnull+dirkchen.amd.com@kernel.org>
Date: Mon, 02 Feb 2026 10:29:31 +0800
Subject: [PATCH] ARM: dts: aspeed: anacapa: Add retimer EEPROMs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-b4-anacapa-dts-fix-v1-1-20d4b0114854@amd.com>
X-B4-Tracking: v=1; b=H4sIAAoMgGkC/x2MQQqAMAwEvyI5G6hVFP2KeEhrqrnU0ooI4t8NX
 gZmYPeBwlm4wFQ9kPmSIkdUaeoK/E5xY5RVHayxvVGg65AieUqE61kwyI3WDCHwSK0zHnSYMmv
 +T+flfT8yIKM9ZAAAAA==
X-Change-ID: 20260202-b4-anacapa-dts-fix-207ffe9a3b0c
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Dirk Chen <dirkchen@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769999372; l=1234;
 i=dirkchen@amd.com; s=20260202; h=from:subject:message-id;
 bh=7UiIsc+JRhKInxcNGMi5RJgMeig8fwCF34V25zBzaew=;
 b=HGTsrHSELPFy//GaIT4xCbcD3IxgB5enkX4xOed+Zt76V75ZNZQ64nOSSHnJjSMBUOjfvCB/4
 hI4PMdUVGWHAtomTjdx/g4w4bDKOJ/GG9o7vnEZsj2t4I6+xPqEA2+p
X-Developer-Key: i=dirkchen@amd.com; a=ed25519;
 pk=NBIyLsVg/YYtGLruq9XLdLWx2PP/1MH4jDDQ1V+7wes=
X-Endpoint-Received: by B4 Relay for dirkchen@amd.com/20260202 with
 auth_id=622
X-Original-From: Dirk Chen <dirkchen@amd.com>
Reply-To: dirkchen@amd.com
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261612-lists,devicetree=lfdr.de,dirkchen.amd.com];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.3:email,0.0.0.50:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	HAS_REPLYTO(0.00)[dirkchen@amd.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 865DFC7DFF
X-Rspamd-Action: no action

From: Dirk Chen <dirkchen@amd.com>

Add Atmel 24C2048 EEPROMs on i2c0 and i2c1 to support retimer
configuration. Follow the same compatible string usage as the
Facebook Harma platform to maintain consistency across Meta boards.

Signed-off-by: Dirk Chen <dirkchen@amd.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
index 221af858cb6b..b8d248d99d7c 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
@@ -328,6 +328,12 @@ i2c0mux0ch3: i2c@3 {
 			#size-cells = <0>;
 		};
 	};
+
+	eeprom@50 {
+		compatible = "atmel,24c2048";
+		reg = <0x50>;
+		pagesize = <128>;
+	};
 };
 
 // R Bridge Board
@@ -362,6 +368,12 @@ i2c1mux0ch3: i2c@3 {
 			#size-cells = <0>;
 		};
 	};
+
+	eeprom@50 {
+		compatible = "atmel,24c2048";
+		reg = <0x50>;
+		pagesize = <128>;
+	};
 };
 
 // MB - E1.S

---
base-commit: 4c87cdd0328495759f6e9f9f4e1e53ef8032a76f
change-id: 20260202-b4-anacapa-dts-fix-207ffe9a3b0c

Best regards,
-- 
Dirk Chen <dirkchen@amd.com>



