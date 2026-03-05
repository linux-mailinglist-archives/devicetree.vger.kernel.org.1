Return-Path: <devicetree+bounces-271716-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gEJ7HNXhqWnDGwEAu9opvQ
	(envelope-from <devicetree+bounces-271716-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 21:04:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C11217F24
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 21:04:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 703E63052AEA
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 20:00:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AFEF1A9B46;
	Thu,  5 Mar 2026 19:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="X4JpREue"
X-Original-To: devicetree@vger.kernel.org
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE3B3ED5BC
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 19:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772740759; cv=none; b=odm6sa2FsPMign9ERKYwvWA/9Ovt8Nby0D25NJ3FmTVSHEJeAzUTgC94L6kfBtABQOBCazUp4w5RwgGY/kvyK858mDX0xGSPwrdl6zdvJqTaDWh3cj5C/Y6S10XfrKxz7kF3kT8eq2u5grwv7ZEQStxXtx2ZCPZ+SdXJiYYMdr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772740759; c=relaxed/simple;
	bh=f3lIe1nCQhs09YETGeCCveWRlwXAKBFRYCG+lXb1roM=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=ceUwkan9tfVELFSL++NSTqa/wxtA7GkBVeU6QLydjv5iICRxhsLXZGoDnDEJ8q0A6utlqdBS26gUm6m99CPW8YPqQOY8ZclDjtzsGp+gZRQhXOjjpOgnI0OQ+OXILF4OsiB4vgT/AucFeTyEDS07DVL2hku7irBvx72xYx79DzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=X4JpREue; arc=none smtp.client-ip=212.77.101.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 16902 invoked from network); 5 Mar 2026 20:59:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1772740746; bh=7DN+KI20/nr4bGXo2TiFQ3uVPvfOMz0EViovKfREFA0=;
          h=From:To:Subject;
          b=X4JpREueQcxtL18zjrpZit6Yb5HoDpNhtqo0A7g9iGBBzW1V4lVSaPDh5+LxWd9mP
           9jUbXdePb99PQQlnWODuKhXQSFB1souwh42ov0GVy87Tdbr9Jlhl9AzRRuU5Ew5AIn
           enJRHoaSQly06lCAQ/FHuN6lYYHKSsT0cr7pBLCJJmrVcAZhhFnIlik1umBakRCDPd
           yvnbsrXtK7HEqQjr7Vu6i/STrxXjy0DK+qIxFIVo8SsY+xH8qBLSURafqsbXH4haQd
           hhmLFZUavgLYkTVvpzmnO1X0aTPAg8X4EG3orK/uhv3BAZwGgB1PnPLqH/0JhsZzwh
           mEJHI3IKcombA==
Received: from 83.24.116.171.ipv4.supernova.orange.pl (HELO laptop-olek.lan) (olek2@wp.pl@[83.24.116.171])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with TLS_AES_256_GCM_SHA384 encrypted SMTP
          for <ansuelsmth@gmail.com>; 5 Mar 2026 20:59:06 +0100
From: Aleksander Jan Bajkowski <olek2@wp.pl>
To: ansuelsmth@gmail.com,
	herbert@gondor.apana.org.au,
	davem@davemloft.net,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	lorenzo@kernel.org,
	olek2@wp.pl,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: crypto: eip93: add clock gate and reset line
Date: Thu,  5 Mar 2026 20:53:10 +0100
Message-ID: <20260305195903.59776-1-olek2@wp.pl>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-WP-MailID: c7c3f264b6f210d9aa7875ffc4db7536
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000009 [oWox]                               
X-Rspamd-Queue-Id: 81C11217F24
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[wp.pl,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[wp.pl:s=20241105];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271716-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,gondor.apana.org.au,davemloft.net,collabora.com,kernel.org,wp.pl,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[wp.pl:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olek2@wp.pl,devicetree@vger.kernel.org];
	FREEMAIL_FROM(0.00)[wp.pl];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Add the clock gate and reset line, both of which are available
on the Airoha AN7581. Both properties are mandatory.

Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
---
v2:
- mandate clock and reset properties
- drop extra new lines in example
---
 .../crypto/inside-secure,safexcel-eip93.yaml        | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
index 997bf9717f9e..10caa989f660 100644
--- a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
+++ b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
@@ -48,20 +48,31 @@ properties:
   interrupts:
     maxItems: 1
 
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
 required:
   - compatible
   - reg
   - interrupts
+  - clocks
+  - resets
 
 additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/en7523-clk.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/reset/airoha,en7581-reset.h>
 
     crypto@1e004000 {
       compatible = "airoha,en7581-eip93", "inside-secure,safexcel-eip93ies";
       reg = <0x1fb70000 0x1000>;
-
+      clocks = <&scuclk EN7523_CLK_CRYPTO>;
       interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+      resets = <&scuclk EN7581_CRYPTO_RST>;
     };
-- 
2.47.3


