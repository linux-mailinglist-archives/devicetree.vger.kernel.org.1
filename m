Return-Path: <devicetree+bounces-274413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFQVE6k/smk6KQAAu9opvQ
	(envelope-from <devicetree+bounces-274413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:23:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 531A126D119
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:23:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6B70E3001CD4
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:22:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7DC73947AF;
	Thu, 12 Mar 2026 04:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="hJpSuExt"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7182F390216;
	Thu, 12 Mar 2026 04:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773289322; cv=none; b=ACUKY7IwX6kahnOPgRsSfIDiwxHp4PR7XxTWq5DDzX4DokO89yPL9ZEe40gQzP3a2FHLGlSNC897LAKeCtfG++M0MhNZHOR0VnvIIeXNYs2shCGkl+D2gs2UdYcrBB5Qgt1wpx/eGL++slx3LAdFnRi4k1TVjJ/+O/qaao4OOXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773289322; c=relaxed/simple;
	bh=3wHXxRZW+3pyAHHF5bwYh0JQE5H6TZmyeNQhJB8UKIQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WEcU5IVe5nHrxgxixC90CMZvK7rjWLlhtxeqPwuhCmMGAObZ6HX17q3KN/vdteDh3rjOqI56Z7E6kNOZfRFV/90NGe++VKIJJs9tBDU97wAZI/c89goRK3+fNkfOI4xVPO6opzep0qYZZyst4zXmSbU1zcuSNY2hfv46DTFpiuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=hJpSuExt; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1773289319; x=1804825319;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=3wHXxRZW+3pyAHHF5bwYh0JQE5H6TZmyeNQhJB8UKIQ=;
  b=hJpSuExt6+83pL1ed52Ui3fqXkszKLDadM6A3FeJO2fxNFw6/LXSL+ex
   fl8yrMFyp3Bzo7qOk8hpxWDPBWYdv3vLCZd6S1emOyxJVN18plfNXvwe5
   D8awTyFjOs8FbR57s+Xl3CHgBMfaWFjBfsn7TpfZkoavRros6GjyULqra
   fXLP8NvdYNZ4oxHVJvq6U+57RyBzwj1IbQo2D5CnXSpXmZOxC0PnGm0FA
   /h6siFZP2SfVZtMEpD3JRCduoKrfdW+ZTyiEbOzDGMbfD0RN+mGO749g6
   InL0Fu0xTu+wEJORYFuNmFZ5v7Rz9bO+IQu5sBf1FF1FAJp1BEZ97LpC2
   g==;
X-CSE-ConnectionGUID: NZXECXbnSTC3akxw2a7kVQ==
X-CSE-MsgGUID: n2UhO/M+TAONHhHV7VTwtw==
X-IronPort-AV: E=Sophos;i="6.23,115,1770620400"; 
   d="scan'208";a="62128084"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2026 21:21:58 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex4.mchp-main.com (10.10.87.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.35; Wed, 11 Mar 2026 21:21:20 -0700
Received: from che-lt-i67131.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Wed, 11 Mar 2026 21:21:11 -0700
From: Manikandan Muralidharan <manikandan.m@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Frank.Li@nxp.com>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<claudiu.beznea@tuxon.dev>, <linux@armlinux.org.uk>,
	<mturquette@baylibre.com>, <sboyd@kernel.org>, <ardb@kernel.org>,
	<ebiggers@google.com>, <martin.petersen@oracle.com>, <tytso@mit.edu>,
	<cristian.birsan@microchip.com>, <adrian.hunter@intel.com>,
	<jarkko.nikula@linux.intel.com>, <kees@kernel.org>, <npitre@baylibre.com>,
	<linux-i3c@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-clk@vger.kernel.org>
CC: <manikandan.m@microchip.com>
Subject: [PATCH v3 1/5] dt-bindings: i3c: mipi-i3c-hci: add Microchip SAMA7D65 compatible
Date: Thu, 12 Mar 2026 09:50:52 +0530
Message-ID: <20260312042056.309237-2-manikandan.m@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260312042056.309237-1-manikandan.m@microchip.com>
References: <20260312042056.309237-1-manikandan.m@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274413-lists,devicetree=lfdr.de];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manikandan.m@microchip.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[microchip.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:dkim,microchip.com:email,microchip.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 531A126D119
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the microchip,sama7d65-i3c-hci compatible string to the MIPI I3C
HCI binding. The Microchip SAMA7D65 I3C controller is based on the
MIPI HCI specification but requires two clocks, so add a conditional
constraint when this compatible is present.

Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
---
 .../devicetree/bindings/i3c/mipi-i3c-hci.yaml | 22 +++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
index 39bb1a1784c9..db659388a27d 100644
--- a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
+++ b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
@@ -9,9 +9,6 @@ title: MIPI I3C HCI
 maintainers:
   - Nicolas Pitre <npitre@baylibre.com>
 
-allOf:
-  - $ref: /schemas/i3c/i3c.yaml#
-
 description: |
   MIPI I3C Host Controller Interface
 
@@ -28,7 +25,9 @@ description: |
 
 properties:
   compatible:
-    const: mipi-i3c-hci
+    enum:
+      - mipi-i3c-hci
+      - microchip,sama7d65-i3c-hci
   reg:
     maxItems: 1
   interrupts:
@@ -39,6 +38,21 @@ required:
   - reg
   - interrupts
 
+allOf:
+  - $ref: /schemas/i3c/i3c.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: microchip,sama7d65-i3c-hci
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+      required:
+        - clocks
+
 unevaluatedProperties: false
 
 examples:
-- 
2.25.1


