Return-Path: <devicetree+bounces-286571-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPcOAWQr2WnhmwgAu9opvQ
	(envelope-from <devicetree+bounces-286571-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 18:55:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 719A73DAC29
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 18:54:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 52903308F82F
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 16:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 936D63E0C73;
	Fri, 10 Apr 2026 16:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="SCs982he"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (courrier.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9143E024C;
	Fri, 10 Apr 2026 16:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775839747; cv=none; b=Ud8f1qiVhl1c7AlrjPlbYhqqcqaKtbdAhUYxTRaNOmYITgJQVQK+P4DKnd42uXohuYPKhMHA9aakPqWrSqIJz80iMl9WuyNt66Q1/goX8SDXTMgS/NUbbtED1Xc2z3Vo9xd1QxeplMCgQDLJ27q54JylyFfspmQdMV0FgOKJ8ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775839747; c=relaxed/simple;
	bh=JnH9zOxJRNagemiQv9oYzRiv1ojhPKXvc6QjWfgg8M8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qHnTKGE3WJJdf0GLd6mzA5O4+OkNEeyXTxemPEWH+A/d2NweFMTFC6ZA7I+QAgH9VyDVICaPAPxYtWIz4SZCRbO/8uwnMhNQw9cHogtgTzXyLLgfRkIjS5vPrTf62tSvCNRpaA9aYfEwnf0tgg4tS/mdYwT0HfVJI8DN737HX4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=SCs982he; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1775839733;
	bh=JnH9zOxJRNagemiQv9oYzRiv1ojhPKXvc6QjWfgg8M8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=SCs982hejK1UFmNVnWr8K/Cbi6sBubCOwkRe+97Q0ApaylbdBtBf8rC7Gkn9X3Jjo
	 /lxvY38e3TlgjNq3HyjS7cBYBV171K9g36SJ8xzxIKlBrevwQgkiNfX0qwE868SZBI
	 OC3TD5CHkDkrlf1yQTgOn/mdwxpULIW/ObwTHcEE=
Date: Fri, 10 Apr 2026 18:48:02 +0200
Subject: [PATCH 1/8] dt-bindings: thermal: amlogic: Add support for T7
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260410-add-thermal-t7-vim4-v1-1-19f2b8da74d7@aliel.fr>
References: <20260410-add-thermal-t7-vim4-v1-0-19f2b8da74d7@aliel.fr>
In-Reply-To: <20260410-add-thermal-t7-vim4-v1-0-19f2b8da74d7@aliel.fr>
To: Guillaume La Roque <glaroque@baylibre.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-pm@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Ronald Claveau <linux-kernel-dev@aliel.fr>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openssh-sha256; t=1775839730; l=2587;
 i=linux-kernel-dev@aliel.fr; s=id_ed25519; h=from:subject:message-id;
 bh=JnH9zOxJRNagemiQv9oYzRiv1ojhPKXvc6QjWfgg8M8=;
 b=U1NIU0lHAAAAAQAAADMAAAALc3NoLWVkMjU1MTkAAAAgMGec55oxeeisqykQiUedekMYyOnR9
 BG9E/7rDWyqdNoAAAAGcGF0YXR0AAAAAAAAAAZzaGE1MTIAAABTAAAAC3NzaC1lZDI1NTE5AAAA
 QIown5ndRspw9U+KORP1wl++iWagf/WHOEUwIGEnUXSIOxnigvlQa9Dxfaq2ppb6l2j+JeBWAwO
 W7lGJSZi92Qk=
X-Developer-Key: i=linux-kernel-dev@aliel.fr; a=openssh;
 fpr=SHA256:kch4osYZ6A1BrPps5AUs6KnfdE2wm4ocMtyTc8TmZMs
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,intel.com,arm.com,linaro.org,googlemail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[aliel.fr];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-286571-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[aliel.fr:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.78.32:email,aliel.fr:dkim,aliel.fr:email,aliel.fr:mid]
X-Rspamd-Queue-Id: 719A73DAC29
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the amlogic,t7-thermal compatible for the Amlogic T7 thermal sensor.

Unlike existing variants which use a phandle to the ao-secure syscon,
the T7 relies on a secure monitor interface described by a phandle and
a sensor index argument.

Introduce the amlogic,secure-monitor property as a phandle-array and
make amlogic,ao-secure or amlogic,secure-monitor conditionally required
depending on the compatible.

Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
 .../bindings/thermal/amlogic,thermal.yaml          | 40 +++++++++++++++++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
index 70b273271754b..85ee73c6e1161 100644
--- a/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
@@ -22,6 +22,7 @@ properties:
               - amlogic,g12a-ddr-thermal
           - const: amlogic,g12a-thermal
       - const: amlogic,a1-cpu-thermal
+      - const: amlogic,t7-thermal
 
   reg:
     maxItems: 1
@@ -42,12 +43,40 @@ properties:
   '#thermal-sensor-cells':
     const: 0
 
+  amlogic,secure-monitor:
+    description: phandle to the secure monitor
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to the secure monitor
+          - description: sensor index
+
 required:
   - compatible
   - reg
   - interrupts
   - clocks
-  - amlogic,ao-secure
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,g12a-cpu-thermal
+              - amlogic,g12a-ddr-thermal
+              - amlogic,a1-cpu-thermal
+    then:
+      required:
+        - amlogic,ao-secure
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: amlogic,t7-thermal
+    then:
+      required:
+        - amlogic,secure-monitor
 
 unevaluatedProperties: false
 
@@ -62,4 +91,13 @@ examples:
         #thermal-sensor-cells = <0>;
         amlogic,ao-secure = <&sec_AO>;
     };
+  - |
+    a73_tsensor: temperature-sensor@20000 {
+        compatible = "amlogic,t7-thermal";
+        reg = <0x0 0x20000 0x0 0x50>;
+        interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clkc_periphs CLKID_TS>;
+        #thermal-sensor-cells = <0>;
+        amlogic,secure-monitor = <&sm 1>;
+    };
 ...

-- 
2.49.0


