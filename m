Return-Path: <devicetree+bounces-287915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yN6VE9fm4GnhnAAAu9opvQ
	(envelope-from <devicetree+bounces-287915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 15:40:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC8240EF6F
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 15:40:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83AA030FA5EC
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 13:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEFE23BE631;
	Thu, 16 Apr 2026 13:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="CCGCVxKi"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A862E2852;
	Thu, 16 Apr 2026 13:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776346441; cv=none; b=FL/Iy4JBfrmdFYOq7/2EBrEwVRn6jmM440YbhGgrr7TfgYA6nnqnyRgi7z5a7Zn0zQW4Mbt1BtJ7WNeUif4PoSjAc7CcTJIS/JYWwfpFJgkm6kOThbcnRRwirq7dm49GdwA3tcogHGG5Kb2ItxtL6I6qiQ/P3OUE+JbIPhwyJpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776346441; c=relaxed/simple;
	bh=VwCj12qajpP58w3o2KfI2iw3I1BImhw+DlXZ5RE9C2I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:To:CC; b=rTqauFK5AXpjxNNd+PB4BoKxBJi3ze0ZLJMQKLSQZLD14uN050NTfHxKYAbZbBzVtfP8tMipzz3FYp8eVqH8mX+jQDrj4l9yspWJu2OA41ciYPoG/di53j7XC0uTZAatOnHhNNla+QwTIjBVBW73EudkIbwAVpp3B6x37Nf/bjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=CCGCVxKi; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1776346438; x=1807882438;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:to:cc;
  bh=VwCj12qajpP58w3o2KfI2iw3I1BImhw+DlXZ5RE9C2I=;
  b=CCGCVxKi+0D6EZYYaPdAXKOSovVopJMC3LeRuM+y2uPFgll8+XXC0imv
   rg83QFeK2fQM1m2jXSlPZjWhvB69enLxx53Ya5LmdSNU1+u7z99heH+ae
   OA/nTOc8pgU3wgch9zue1tLz/QOpTZ7TwhscTrwPEbOYL9APsunI5+R+E
   /UakXTr9DohJmF+XouzUxHazizZU6HexkdPUHaqJKrNbltxnFo9QFjLMw
   b3Rs2lnJ9YYYcCfU2Rhuf9IsmMdXJ6MWGRGnOtSF0C9nt38m9/qyXwqVS
   Tg5D6wdco3a4OB8ImPfG5+/c1TRd+EYVKKJZ2upOrSrGDOrjTMgJXzplG
   w==;
X-CSE-ConnectionGUID: AJfmCFcHRyyxJJh/K6vBsA==
X-CSE-MsgGUID: R1gS9D9PT+WytH/6DECHrA==
X-IronPort-AV: E=Sophos;i="6.23,181,1770620400"; 
   d="scan'208";a="223466990"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2026 06:33:52 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex3.mchp-main.com (10.10.87.32) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.35; Thu, 16 Apr 2026 06:33:43 -0700
Received: from [127.0.1.1] (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Thu, 16 Apr 2026 06:33:40 -0700
From: Ariana Lazar <ariana.lazar@microchip.com>
Date: Thu, 16 Apr 2026 16:33:36 +0300
Subject: [PATCH] dt-bindings: iio: dac: mcp47feb02: Fix binding issues
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-ID: <20260416-mcp47feb02-fix5-v1-1-9656c2fed6d2@microchip.com>
X-B4-Tracking: v=1; b=H4sIAC/l4GkC/x2MywqAIBAAf0X2nKCL2uNXokPZVnvIRCEC6d+Tj
 jMwUyBTYsowiAKJbs58hQq6EeCPOewkea0MqNApo508fTTtRotCufFjJbq+N94uBjsPtYqJqv+
 P4/S+H+OLtIFhAAAA
X-Change-ID: 20260416-mcp47feb02-fix5-26994c5b428c
To: Jonathan Cameron <jic23@kernel.org>, David Lechner
	<dlechner@baylibre.com>, =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Andy
 Shevchenko" <andy@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: Jonathan Cameron <Jonathan.Cameron@huawei.com>, Conor Dooley
	<conor.dooley@microchip.com>, <linux-iio@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Conor Dooley
	<conor@kernel.org>, Ariana Lazar <ariana.lazar@microchip.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776346420; l=5962;
 i=ariana.lazar@microchip.com; s=20250825; h=from:subject:message-id;
 bh=VwCj12qajpP58w3o2KfI2iw3I1BImhw+DlXZ5RE9C2I=;
 b=xHNJtGgi7DI9PvZBqeWT3I1sitOLbZH7NSV5isyDcGhi3oZDXzuMlGbGtxhsEA4a6FyIYqOR9
 /NMSfkze0n7A3TMT/vHCG9pvNmK3isEckG6PcvuGwcIk9aoY9jWqdHN
X-Developer-Key: i=ariana.lazar@microchip.com; a=ed25519;
 pk=jmvf1fSxcnzZmXfITM3L94IwutM+wqA1POQHiYyD6Dk=
X-Spamd-Result: default: False [4.84 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-287915-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,body];
	DMARC_POLICY_ALLOW(0.00)[microchip.com,reject];
	RCPT_COUNT_TWELVE(0.00)[14];
	R_DKIM_ALLOW(0.00)[microchip.com:s=mchp];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[microchip.com:+];
	NEURAL_SPAM(0.00)[0.252];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ariana.lazar@microchip.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:172.234.253.10:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,microchip.com:email,microchip.com:dkim,microchip.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.60:email,baylibre.com:email]
X-Rspamd-Queue-Id: 9AC8240EF6F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Change maxItems value from 8 to 1 for the channel number reg property.
Change example reg value from 0 to 0x60.
Fix a few typos in property descriptions.
Sort the part numbers in the enum list lexicographically.

Fixes: 4ba12d304175 ("dt-bindings: iio: dac: adding support for Microchip MCP47FEB02")
Reported-by: Conor Dooley <conor@kernel.org>
Closes: https://lore.kernel.org/all/20260403-speed-childless-1360de358229@spud/
Reported-by: David Lechner <dlechner@baylibre.com>
Closes: https://lore.kernel.org/all/dd0dbadb-604b-4f12-8674-268b7db096fd@baylibre.com/
Signed-off-by: Ariana Lazar <ariana.lazar@microchip.com>
---
 .../bindings/iio/dac/microchip,mcp47feb02.yaml     | 57 +++++++++++-----------
 1 file changed, 28 insertions(+), 29 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb02.yaml b/Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb02.yaml
index d2466aa6bda2106a8b695347a0edf38462294d03..88a1495f2967a3d821ada7e7e9a7fbb466401040 100644
--- a/Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb02.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb02.yaml
@@ -61,29 +61,29 @@ properties:
   compatible:
     enum:
       - microchip,mcp47feb01
-      - microchip,mcp47feb11
-      - microchip,mcp47feb21
       - microchip,mcp47feb02
+      - microchip,mcp47feb04
+      - microchip,mcp47feb08
+      - microchip,mcp47feb11
       - microchip,mcp47feb12
+      - microchip,mcp47feb14
+      - microchip,mcp47feb18
+      - microchip,mcp47feb21
       - microchip,mcp47feb22
+      - microchip,mcp47feb24
+      - microchip,mcp47feb28
       - microchip,mcp47fvb01
-      - microchip,mcp47fvb11
-      - microchip,mcp47fvb21
       - microchip,mcp47fvb02
-      - microchip,mcp47fvb12
-      - microchip,mcp47fvb22
       - microchip,mcp47fvb04
-      - microchip,mcp47fvb14
-      - microchip,mcp47fvb24
       - microchip,mcp47fvb08
+      - microchip,mcp47fvb11
+      - microchip,mcp47fvb12
+      - microchip,mcp47fvb14
       - microchip,mcp47fvb18
+      - microchip,mcp47fvb21
+      - microchip,mcp47fvb22
+      - microchip,mcp47fvb24
       - microchip,mcp47fvb28
-      - microchip,mcp47feb04
-      - microchip,mcp47feb14
-      - microchip,mcp47feb24
-      - microchip,mcp47feb08
-      - microchip,mcp47feb18
-      - microchip,mcp47feb28
 
   reg:
     maxItems: 1
@@ -111,13 +111,13 @@ properties:
         - for single-channel device: Vout0;
         - for dual-channel device: Vout0, Vout1;
         - for quad-channel device: Vout0, Vout2;
-        - for octal-channel device: Vout0, Vout2, Vout6, Vout8;
+        - for octal-channel device: Vout0, Vout2, Vout4, Vout6;
 
   vref1-supply:
     description: |
       Vref1 pin may be used as a voltage reference when this supply is specified.
       The internal reference will be taken into account for voltage reference
-      beside VDD if this supply does not exist.
+      besides VDD if this supply does not exist.
 
       This supply will be voltage reference for the following outputs:
         - for quad-channel device: Vout1, Vout3;
@@ -141,7 +141,7 @@ properties:
     description:
       Enable buffering of the external Vref/Vref0 pin in cases where the
       external reference voltage does not have sufficient current capability in
-      order not to drop it’s voltage when connected to the internal resistor
+      order not to drop its voltage when connected to the internal resistor
       ladder circuit.
 
   microchip,vref1-buffered:
@@ -149,7 +149,7 @@ properties:
     description:
       Enable buffering of the external Vref1 pin in cases where the external
       reference voltage does not have sufficient current capability in order not
-      to drop it’s voltage when connected to the internal resistor ladder
+      to drop its voltage when connected to the internal resistor ladder
       circuit.
 
 patternProperties:
@@ -161,8 +161,7 @@ patternProperties:
     properties:
       reg:
         description: The channel number.
-        minItems: 1
-        maxItems: 8
+        maxItems: 1
 
       label:
         description: Unique name to identify which channel this is.
@@ -227,12 +226,12 @@ allOf:
         compatible:
           contains:
             enum:
-              - microchip,mcp47fvb04
-              - microchip,mcp47fvb14
-              - microchip,mcp47fvb24
               - microchip,mcp47feb04
               - microchip,mcp47feb14
               - microchip,mcp47feb24
+              - microchip,mcp47fvb04
+              - microchip,mcp47fvb14
+              - microchip,mcp47fvb24
     then:
       patternProperties:
         "^channel@[0-3]$":
@@ -245,12 +244,12 @@ allOf:
         compatible:
           contains:
             enum:
-              - microchip,mcp47fvb08
-              - microchip,mcp47fvb18
-              - microchip,mcp47fvb28
               - microchip,mcp47feb08
               - microchip,mcp47feb18
               - microchip,mcp47feb28
+              - microchip,mcp47fvb08
+              - microchip,mcp47fvb18
+              - microchip,mcp47fvb28
     then:
       patternProperties:
         "^channel@[0-7]$":
@@ -280,9 +279,9 @@ examples:
 
         #address-cells = <1>;
         #size-cells = <0>;
-        dac@0 {
+        dac@60 {
           compatible = "microchip,mcp47feb02";
-          reg = <0>;
+          reg = <0x60>;
           vdd-supply = <&vdac_vdd>;
           vref-supply = <&vref_reg>;
 
@@ -297,6 +296,6 @@ examples:
             reg = <0x1>;
             label = "Adjustable_voltage_ch1";
           };
-      };
+        };
     };
 ...

---
base-commit: d2a4ec19d2a2e54c23b5180e939994d3da4a6b91
change-id: 20260416-mcp47feb02-fix5-26994c5b428c

Best regards,
-- 
Ariana Lazar <ariana.lazar@microchip.com>


