Return-Path: <devicetree+bounces-315917-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZDymJ1b/PWrp+AgAu9opvQ
	(envelope-from <devicetree+bounces-315917-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 06:25:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E85CD6CA1A2
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 06:25:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hZAoCm0n;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315917-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315917-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BAA9D302BE2A
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:25:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CC9A313E31;
	Fri, 26 Jun 2026 04:25:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D4725B094
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 04:25:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782447956; cv=none; b=kUkYArq8weGte5SCl//XovC1CvFNOT1I6QQ//YIuare7tbHS7emnxHky8svcNZ1k6yh0NX/8b/bQYdE+U/GQ/v/92Zn8DSv9bzAm1u50sTupkU9LbrSAidd8SNoqr5XzeJE0vihRIEDiFsp3wVA4D8/emxihzhoupbc11a7HTdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782447956; c=relaxed/simple;
	bh=NluZfjnUMNDT8hFt9T+4GOV04TI0lFJMOepDdtmmA/U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Hi71bX0G+Nys+bHXwpJNeZZhpNC0eUNRniffNkLHEixnmp8gU7HKl9KiPciKtkQ/TKyKUiQCMGn/5Jwuq1EbPbb7NNu+LPfkfraEaxouePYqqbJ1cY5394n8bK9ksAN5aRR0JZF3F5oVjRhdpkZ+Xs0JNqZRnP68Uidk5hSbGi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZAoCm0n; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AEB31F000E9;
	Fri, 26 Jun 2026 04:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782447954;
	bh=cXWJYMos9uyuh3E8/MUl/yZRa7p117JfU1Ek7s0iRKM=;
	h=From:To:Cc:Subject:Date;
	b=hZAoCm0nt01cgCMf77NsilBu9BSYUTut3IiICYe1lvOMa7FGMqLNVJSCtmZoydxwF
	 dlJZPPj5OHnBMTBa2t5lZtdkBv/aZBWVWtmjrZ/tGnTVrGzfaRX/u+sChgOmdH7JB7
	 ZC/kt6WWbQqlYG+ztFsPNltCC4k1N8HUplAq9QgnsuG6DJSIDsU4bXtcABhKtWMAPf
	 2kbB9Pd+40YwDycwjUlmqdpLYNm+VpO22Ty5PoFse031iNym25dvkwiG0FjLHqd+fy
	 SG9ee/V3tZnRpS+DBW/+Cz71xgsznzKXPKq43mRmPGNvahGnVF9SqhhRG6UWaVSM6T
	 qkGCrl2pDoJCw==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org,
	muhammad.nazim.amirul.nazle.asmade@altera.com
Subject: [PATCH 1/2] dt-bindings: net: altr,socfpga-stmmac: add more interrupts for Agilex5
Date: Thu, 25 Jun 2026 23:25:40 -0500
Message-ID: <20260626042541.1091774-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315917-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dinguyen@kernel.org,m:devicetree@vger.kernel.org,m:muhammad.nazim.amirul.nazle.asmade@altera.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E85CD6CA1A2

The stmmac hardware on Agilex5 supports 8 TX/RX queue pairs and is
dma-coherent. Update the schema to handle the hardware differences
between SoC variants.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 .../bindings/net/altr,socfpga-stmmac.yaml     | 51 +++++++++++++++++--
 1 file changed, 46 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml b/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml
index fc445ad5a1f1..9bae17688992 100644
--- a/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml
+++ b/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml
@@ -62,12 +62,28 @@ properties:
       - const: stmmaceth
       - const: ptp_ref
 
-  interrupts:
-    maxItems: 1
-
   interrupt-names:
-    items:
-      - const: macirq
+    oneOf:
+      - items:
+          - const: macirq
+      - items:
+          - const: macirq
+          - const: tx-queue-0
+          - const: tx-queue-1
+          - const: tx-queue-2
+          - const: tx-queue-3
+          - const: tx-queue-4
+          - const: tx-queue-5
+          - const: tx-queue-6
+          - const: tx-queue-7
+          - const: rx-queue-0
+          - const: rx-queue-1
+          - const: rx-queue-2
+          - const: rx-queue-3
+          - const: rx-queue-4
+          - const: rx-queue-5
+          - const: rx-queue-6
+          - const: rx-queue-7
 
   iommus:
     minItems: 1
@@ -149,10 +165,35 @@ required:
   - clocks
   - clock-names
   - altr,sysmgr-syscon
+  - interrupts
+  - interrupt-names
 
 allOf:
   - $ref: snps,dwmac.yaml#
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: altr,socfpga-stmmac-agilex5
+    then:
+      properties:
+        interrupts:
+          minItems: 17
+          maxItems: 17
+
+        interrupt-names:
+          minItems: 17
+          maxItems: 17
+
+        dma-coherent: true
+    else:
+      properties:
+        interrupts:
+          minItems: 1
+
+        dma-coherent: false
+
 unevaluatedProperties: false
 
 examples:
-- 
2.42.0.411.g813d9a9188


