Return-Path: <devicetree+bounces-257580-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCQbL6jlb2lhUQAAu9opvQ
	(envelope-from <devicetree+bounces-257580-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 21:29:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6442D4B4DD
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 21:29:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8A45560D6F8
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 314A544DB92;
	Tue, 20 Jan 2026 19:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="mS2+QVlW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C066E366576;
	Tue, 20 Jan 2026 19:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768937160; cv=none; b=maKeYhrhkNDnp3VEZNoaLIlJjDmAHNjE0eNoS53CJx12QMMMfHWBNYd5+MPtEZlzOJxpZG8VvyYqFl4hFUPd6dCNlY/63MFV7peGYNyg6DhuBeEblSwEQtDT6m9+3jMXs0DNy2qc9ECIiOE/qD2Ez1+6lBqb6qttGzeXOzbfBs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768937160; c=relaxed/simple;
	bh=QNrX5gVN+BeQnMkqUBk5PeK1JsbPXBfGTB1W6eICtNk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=qe0KAJ4OBqUdpon+4FWIxpUGgm5I9VeD/wzQJy5HuX08/JG5yRg33pQFG2WG0v3MPkMRjNld2PzWF9DqsX/mFJmXlRGq41NdPxO3WUHAiLp/10ejXdgubO1dnPKRIu/H/9m3LOTicd0Q3r2NIbhBGBqAtWdNFodE7RmXvZuAQ+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=mS2+QVlW; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Cc:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=wAbhlUm+xzJhvTTsjbXarYlxVdF+S2uUjx1nz8y0uec=; b=mS2+QVlWVve0Vhs2BSNVZQDJa4
	6m7FOJ4Xf9Nch6wRtCYA5Pw5W/R7vy5FjE6k1Pb2uHa0/vpQeUGvRLEleUtlx3JAFiOsmIv6T5tIo
	3OKXIsbyg/EB2JXmfDWdubBTA7e6vz0QnS2e9tQrBHwDSK+ptyAEI3B69vmdSFin8DRfPKxBrm9kR
	mPEuNWlMv2ThT4yOa6/UaRVi9brgpgdDhMJFH1Azlvw90ez8vRstpBaMfa/wQg2R1ANeNUbPaUNek
	EHDyoMgL13MP/JKId95QMSDiW8uXA/M+A36+t4E57hKM//sOqhLwhiTytA2WWrDzub+nUH+YPvghN
	/vbbUEIA==;
From: Andreas Kemnade <andreas@kemnade.info>
Date: Tue, 20 Jan 2026 19:54:23 +0100
Subject: [PATCH v2] dt-bindings: omap: ti,prm-inst: Convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-prm-inst-v2-1-a025873cee27@kemnade.info>
X-B4-Tracking: v=1; b=H4sIAF7Pb2kC/23MQQrCMBCF4auUWTuSDG2IrryHdJHYqR2kSUlKU
 Urubuza5f94fDtkTsIZrs0OiTfJEkMNOjXwmFx4MspQG0iRUVoRLmlGCXlF1/oLsTXknYJ6XxK
 P8j6oe197krzG9DnkTf/WP8imUSPbrlXkrbG2u714Dm7gs4QxQl9K+QKftEWUowAAAA==
X-Change-ID: 20260102-prm-inst-a4b92e862ba0
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
 Tony Lindgren <tony@atomide.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Andreas Kemnade <andreas@kemnade.info>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3639; i=andreas@kemnade.info;
 h=from:subject:message-id; bh=QNrX5gVN+BeQnMkqUBk5PeK1JsbPXBfGTB1W6eICtNk=;
 b=owGbwMvMwCUm/rzkS6lq2x3G02pJDJn559O5rtsuPOy0rrT2xerVE6x4BY6dnzj7RcpHfkP2F
 c/e24uwdJSyMIhxMciKKbL8slZw+6TyLDd4aoQ9zBxWJpAhDFycAjAR3TpGhtvLAlPbgqQsFVsX
 V0jFfn06TdB1wa2Vz5x2Pd55JvL2rMMM/4N1pa8lKn1KPHe+t8zANVndiGlhmeiVlZyu1y6+zLi
 zggcA
X-Developer-Key: i=andreas@kemnade.info; a=openpgp;
 fpr=EEC0DB858E66C0DA70620AC07DBD6AC74DE29324
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kemnade.info:s=20220719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-257580-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kemnade.info,none];
	DKIM_TRACE(0.00)[kemnade.info:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,atomide.com:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,msgid.link:url]
X-Rspamd-Queue-Id: 6442D4B4DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert prm-inst binding to DT schema. Use the closest matching standard
node name in the example.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
Changes in v2:
- rename and move file to the place where also omap board compatibles
  reside
- Link to v1: https://patch.msgid.link/20260102-prm-inst-v1-1-e85402b86885@kemnade.info
---
 .../devicetree/bindings/arm/omap/prm-inst.txt      | 31 ------------
 .../bindings/arm/ti/ti,omap-prm-inst.yaml          | 55 ++++++++++++++++++++++
 2 files changed, 55 insertions(+), 31 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
deleted file mode 100644
index 42db138e091a..000000000000
--- a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
+++ /dev/null
@@ -1,31 +0,0 @@
-OMAP PRM instance bindings
-
-Power and Reset Manager is an IP block on OMAP family of devices which
-handle the power domains and their current state, and provide reset
-handling for the domains and/or separate IP blocks under the power domain
-hierarchy.
-
-Required properties:
-- compatible:	Must contain one of the following:
-		"ti,am3-prm-inst"
-		"ti,am4-prm-inst"
-		"ti,omap4-prm-inst"
-		"ti,omap5-prm-inst"
-		"ti,dra7-prm-inst"
-		and additionally must contain:
-		"ti,omap-prm-inst"
-- reg:		Contains PRM instance register address range
-		(base address and length)
-
-Optional properties:
-- #power-domain-cells:	Should be 0 if the instance is a power domain provider.
-- #reset-cells:	Should be 1 if the PRM instance in question supports resets.
-
-Example:
-
-prm_dsp2: prm@1b00 {
-	compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
-	reg = <0x1b00 0x40>;
-	#power-domain-cells = <0>;
-	#reset-cells = <1>;
-};
diff --git a/Documentation/devicetree/bindings/arm/ti/ti,omap-prm-inst.yaml b/Documentation/devicetree/bindings/arm/ti/ti,omap-prm-inst.yaml
new file mode 100644
index 000000000000..2cce083dcfb0
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/ti/ti,omap-prm-inst.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/ti/ti,omap-prm-inst.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: OMAP PRM instances
+
+maintainers:
+  - Aaro Koskinen <aaro.koskinen@iki.fi>
+  - Andreas Kemnade <andreas@kemnade.info>
+  - Kevin Hilman <khilman@baylibre.com>
+  - Roger Quadros <rogerq@kernel.org>
+  - Tony Lindgren <tony@atomide.com>
+
+description:
+  Power and Reset Manager is an IP block on OMAP family of devices which
+  handle the power domains and their current state, and provide reset
+  handling for the domains and/or separate IP blocks under the power domain
+  hierarchy.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - ti,am3-prm-inst
+          - ti,am4-prm-inst
+          - ti,omap4-prm-inst
+          - ti,omap5-prm-inst
+          - ti,dra7-prm-inst
+      - const: ti,omap-prm-inst
+
+  reg:
+    maxItems: 1
+
+  "#power-domain-cells":
+    const: 0
+
+  "#reset-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    reset-controller@1b00 {
+        compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
+        reg = <0x1b00 0x40>;
+        #power-domain-cells = <0>;
+        #reset-cells = <1>;
+    };

---
base-commit: f8f9c1f4d0c7a64600e2ca312dec824a0bc2f1da
change-id: 20260102-prm-inst-a4b92e862ba0

Best regards,
--  
Andreas Kemnade <andreas@kemnade.info>


