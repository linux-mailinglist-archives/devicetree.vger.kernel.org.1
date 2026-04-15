Return-Path: <devicetree+bounces-287456-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLR2Gtwe32kjPAAAu9opvQ
	(envelope-from <devicetree+bounces-287456-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 07:15:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA712400658
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 07:15:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 235AD30AB079
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 05:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AADEE37E2FD;
	Wed, 15 Apr 2026 05:14:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58C0372665;
	Wed, 15 Apr 2026 05:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776230051; cv=none; b=n4k0+akLaZzWxVaCBexEJxeYHJqFMV5gs+JFnIyT5bf2vOB4N8p/5kYPgvF75PnpTsnb1QtDfLg8FOdfxv0PGv8UvKSAPfRC1WBqqi7ISZvqZBENq93DrFKZHfVoJa7QpMDBsT1NPdrDnRGcTGsRZuBvTilQ1DsTezR1YPTgF1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776230051; c=relaxed/simple;
	bh=NmCmiK6YACW7DFUncYOCMnn2CaKWPMjJD5hpa+pnJI0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=FnLKRXjnA14bTCJLuDRhsOxUwnzkMRpBi7npuyqJwqpgRVztscWMtTRJuFT+HixTYrQgK9WxExaZ/TtpxFwKTl8YcKosDEx5hySr4sGrVL1Ijo5Wre20Oer1LnPBV/L9CKGryGkI1o+NF7SWbDKrr2IVI0HuYJigOqxU40poGiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Wed, 15 Apr
 2026 13:14:02 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Wed, 15 Apr 2026 13:14:02 +0800
From: Ryan Chen <ryan_chen@aspeedtech.com>
Date: Wed, 15 Apr 2026 13:14:03 +0800
Subject: [PATCH v29 2/4] dt-bindings: i2c: ast2600-i2c.yaml: Add
 global-regs properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260415-upstream_i2c-v29-2-317c1a905ae1@aspeedtech.com>
References: <20260415-upstream_i2c-v29-0-317c1a905ae1@aspeedtech.com>
In-Reply-To: <20260415-upstream_i2c-v29-0-317c1a905ae1@aspeedtech.com>
To: <jk@codeconstruct.com.au>, <andriy.shevchenko@linux.intel.com>, Andi Shyti
	<andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	<joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, "Benjamin
 Herrenschmidt" <benh@kernel.crashing.org>, Rayn Chen
	<rayn_chen@aspeedtech.com>, Philipp Zabel <p.zabel@pengutronix.de>
CC: <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-aspeed@lists.ozlabs.org>,
	<linux-kernel@vger.kernel.org>, <openbmc@lists.ozlabs.org>, Ryan Chen
	<ryan_chen@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776230042; l=1666;
 i=ryan_chen@aspeedtech.com; s=20251126; h=from:subject:message-id;
 bh=NmCmiK6YACW7DFUncYOCMnn2CaKWPMjJD5hpa+pnJI0=;
 b=bGI32w39zOlRy9jRcS6+dr7tihXqYjV1b65Nm2t4a3D352zvDWCeKZLHgMau2Vl6ykGMNi3+Z
 wsuJSXIxDD5ABVIPCzx28RcBaBDZmjEF5eF/od4OGlvyXA78NmwBq+z
X-Developer-Key: i=ryan_chen@aspeedtech.com; a=ed25519;
 pk=Xe73xY6tcnkuRjjbVAB/oU30KdB3FvG4nuJuILj7ZVc=
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[aspeedtech.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287456-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ryan_chen@aspeedtech.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aspeedtech.com:mid,aspeedtech.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CA712400658
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the aspeed,global-regs phandle to reference the AST2600 global
registers syscon node, containing the SoC-common I2C register set.

These properties apply only to the AST2600 binding. Legacy DTs remain
unchanged.

Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
---
Changes in v29:
- remove aspeed,enable-dma properties.

Changes in v28:
- update commit message correspond with aspeed,enable-dma.
- remove aspeed,transfer-mode and add aspeed,enable-dma property and
  description.
- Fix aspeed,enable-dma description to reflect hardware capability rather
  than software behavior

Changes in v27:
- change aspeed,transfer-mode to aspeed,enable-dma.
---
 Documentation/devicetree/bindings/i2c/aspeed,ast2600-i2c.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/aspeed,ast2600-i2c.yaml b/Documentation/devicetree/bindings/i2c/aspeed,ast2600-i2c.yaml
index de2c359037da..0c769efb76a5 100644
--- a/Documentation/devicetree/bindings/i2c/aspeed,ast2600-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/aspeed,ast2600-i2c.yaml
@@ -37,6 +37,12 @@ properties:
   resets:
     maxItems: 1
 
+  aspeed,global-regs:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle reference to the i2c global syscon node, containing the
+      SoC-common i2c register set.
+
 required:
   - reg
   - compatible
@@ -59,4 +65,5 @@ examples:
         resets = <&syscon ASPEED_RESET_I2C>;
         clock-frequency = <100000>;
         interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
+        aspeed,global-regs = <&i2c_global>;
     };

-- 
2.34.1


