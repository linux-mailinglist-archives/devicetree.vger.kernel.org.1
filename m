Return-Path: <devicetree+bounces-263855-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yP/IFMqTiWlj/AQAu9opvQ
	(envelope-from <devicetree+bounces-263855-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 08:59:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B344010CAE3
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 08:59:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3FA4A30086EB
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 07:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 397E933A005;
	Mon,  9 Feb 2026 07:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZfUOlTn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154A033986F;
	Mon,  9 Feb 2026 07:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770623942; cv=none; b=R5rOwmaMdIYcMCfDGo7ApBZb19eb8Aw4BaQQdSySIAyvNTtKzr0jFtj/RIocbMdbIqntiXHfB5FlTgf2u/2LXEFm6hSDW+WCZHfxQ3hbqHOKW06UV0y3DMJEWvvB1LfTKLs/pumn9yGyBY++88Qzyss1zl7UrC9cx1BDCt6xajI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770623942; c=relaxed/simple;
	bh=EvZLo8yBPuNQ2ZWhWlIOFY5LAjRlRTBuCqsicIyWtNs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=XiCwwegjRP8+NFtuy/f24vnNjrUB6R+Jtaay4M99Up1Lv+AhH6CRmshCt3XbrD1LtICnVkLKXlnlnjmtp1DOXeAApCDDuy6WflZb26k+a1NZKRZ0zxPufN5Z7mD5e1jYXLgMXkENBiyizV2SIvN8XU+8tSkzc8ZwrgoRHVSmJoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZfUOlTn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C45C116C6;
	Mon,  9 Feb 2026 07:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770623941;
	bh=EvZLo8yBPuNQ2ZWhWlIOFY5LAjRlRTBuCqsicIyWtNs=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=qZfUOlTnBdSEk5iVMZaxtqVbSDShf99WcsVyOJB1R3Spo6wkhqwHL1Bp7qYhmRe60
	 nn6V5EVP6IeO0DirysjrtX6BcoxPO6HwUkGm2bVwY1CGiWXjJbI3gJ3ZdoqQkC9oN+
	 StMtBgVJNamevWZ2eDjIjTc46vmKsg45faAF5zyytTndnfZSMvJyJcjwqZXIPLOUN4
	 3b5EpSsEj2AoERT3A6RCyoQbtkTINk7z9PK/jK7JwpcuE3zRoXzxlNQ8NIleOiYO0b
	 g9itA46W4LbnMaSFCtxsojx4dCRLdPALdZbB/ZNi3eira4KQ+4Wnap9WD/RA0V+uLn
	 uaWNy1gjmq5UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5436AEF0711;
	Mon,  9 Feb 2026 07:59:01 +0000 (UTC)
From: Dirk Chen via B4 Relay <devnull+dirkchen.amd.com@kernel.org>
Date: Mon, 09 Feb 2026 15:58:53 +0800
Subject: [PATCH v2] ARM: dts: aspeed: anacapa: Add retimer EEPROMs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260209-b4-anacapa-dts-fix-v2-1-fe446a7038bf@amd.com>
X-B4-Tracking: v=1; b=H4sIALyTiWkC/32NOw7CMBBErxJtzSLbmF8q7oFSrH/ERZzIjixQ5
 Luz5AA0I72R5s0GxefoC/TdBtnXWOKcGNShAztSenmMjhmUUBfBgUYjJbK0ELq1YIhvVOIagr/
 TyQgLPFyy53qXPgfmMZZ1zp/9o8pf+1dXJUp2Om2ElPp21g+a3NHOEwyttS/r+y4osgAAAA==
X-Change-ID: 20260202-b4-anacapa-dts-fix-207ffe9a3b0c
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Dirk Chen <dirkchen@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770623940; l=1517;
 i=dirkchen@amd.com; s=20260202; h=from:subject:message-id;
 bh=q1pvDHup26t2gWq6fHUSx5KhOyJaw4CQELJ2qKSf88g=;
 b=+d5clqSgm87rC1q9Ol08GoDm3+lw2SvRxI9fXdTjZLhpFf6cW2vjFrUdJO1WfZNI5XmE+g+Y/
 MM6fJ1mG6qvBV6X7Na2+2Ueg2+YOlKAL0bUl9n0YQWIk4i4HvpKoSGY
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263855-lists,devicetree=lfdr.de,dirkchen.amd.com];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.996];
	HAS_REPLYTO(0.00)[dirkchen@amd.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amd.com:replyto,amd.com:email,amd.com:mid,0.0.0.50:email]
X-Rspamd-Queue-Id: B344010CAE3
X-Rspamd-Action: no action

From: Dirk Chen <dirkchen@amd.com>

The Anacapa board features Atmel 24C2048 EEPROMs on i2c0 and i2c1, which
are used to store retimer configurations. Add the corresponding device
tree nodes to support these components.

Signed-off-by: Dirk Chen <dirkchen@amd.com>
---
Changes in v2:
- Improved commit description to clarify that the change reflects
  actual hardware as requested by the reviewer.
- Removed mentions of other platforms to avoid confusion.
- Link to v1: https://lore.kernel.org/r/20260202-b4-anacapa-dts-fix-v1-1-20d4b0114854@amd.com
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



