Return-Path: <devicetree+bounces-269304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMwOOAa3oWm+vwQAu9opvQ
	(envelope-from <devicetree+bounces-269304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:23:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5591B9B43
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:23:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A29183116449
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:15:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E92FA43D4F7;
	Fri, 27 Feb 2026 15:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nPvwnJ/C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88AAB43D4F3
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 15:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772205302; cv=none; b=qggAQTEseOuXdlbvWeSIP7PqOV45YSurdXjilIIXYQCPOCK2lWL20bus9vqasXliCSoUM0D8TF6DcUJa++klg0kwE4GYGilBQG3pF3ccFIuxNZWDpKaYhATK+7cHLOhdXSSr72KCfAg74Shgpr2Zn7i7p4t870M1V2A0865MyIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772205302; c=relaxed/simple;
	bh=vm1+o6MK2KY2pTOwBMqE9+jhVE8i9ETufDcKynPk4PM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BC9GRIHLeIoZ3CL30uLHihM092CRe5+XUxCQMhiGNPzJ5anQ7nQ0ZOEFO5rD9qM+HuAKpVjWT6O4GZfCrxDgYKkEhoF4eqRYC0TozqfHYU2w70cqURZ4SFLy0F90u0LDw9P7jWye2UQ3CSl/hUIrbKGJHwpSVpiFSW1n+SOBjcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nPvwnJ/C; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c6dd5b01e14so759634a12.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:15:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772205301; x=1772810101; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ePgSZPRRbECh1C3ufz9sKMRvaR3CgzOK7F/YlViJ0LU=;
        b=nPvwnJ/CPqmqWgtzdhxrC/xte3p6CT6qaoGKmTtB39MM7BfBertrXxloKiUsMgjpU5
         fm1GdHUWYnY/01AkbUraEiPFxb3BPyupuwsJBRK/K9bMXSQclzVHPH92T8O7z+4E2BDn
         l40ZyHU+JWeSRbmTWRGuntIBGsTBZBbP2z75jXjkSLuwczuVOqg+M4BhYCpciM62bpE8
         9Jua/MkfBa+Le9c6ynHy6zYJe8Uh3UJfYa20eoAIW2GjGamtY9VaK2L3Wgn8O8yp69Ff
         GQwk2FmrvviEwxggEJUe/zNz83Smdw2gsWDnnfrCeI8LGUeefhL0rJWY5Hti8v+szCXH
         mA0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772205301; x=1772810101;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ePgSZPRRbECh1C3ufz9sKMRvaR3CgzOK7F/YlViJ0LU=;
        b=ZOCUlOTpN0MMGhK3+vC9aW69iwktbS56yrOp2hUC0Mn2tcuT9swn2jbfcAMbg0i2Zn
         Pa0t0TiwadRhdceLnZr4FaRRHw1z1oeWum9Vz+zpBdstE7oAmAINUDSjMyS7X19Vy22k
         NCFbU3VY95njrp3PLLsQLNqIPSkhOoDCf+x3/8yQJ7e7LxEwULFnjt39B55e8gQ7me0l
         Dp6kfE+AyXt/DCGdJusd34TyRFdutFu8vGXyvrxIv9XioTlTLD8AIEqKD24IlEvfTbmP
         +jl0xBwCZYgXTPH0qKBpP0KLPUqechvzdW806TDZVG+qpJzRJmXJ4K+CMJTwy2dRlkVq
         zkzg==
X-Gm-Message-State: AOJu0YxU/FO5NPVmzmqQHkryrMUMFqWopRnUe5u9QaNrW+h44jEgAm3R
	qB1X1gpz8HNZ7eNL+DkDPWO/4k3EyLCc2M6vU8Pop98rQqBvee+gq45X
X-Gm-Gg: ATEYQzzEAPN++d0alaXoSZ0ctPXSNyKsI6PVqHbWrByD7WM800KXM28NIwP7pb1rVxk
	cRzXYsdvyKoNoGABW6CSZ9/AZFJV/qG15z8hvoK+SHCQUjtkDO5HKtfZFyIDznnTKqmss5r8Glh
	9JvJqh4lPgqw5NPJHjgIwBfv/D1Ed3X1s0XYG6dxVRHvSPZthtP6STQun7z5aDwz4cP2rD7Vzp3
	/N4nl274hKQD+x+pngR3ZDZG/+FDEq7vgE5wnpZrp97Mp0yiByWp0uYEaNv5nZtsY4n4ppFEZgH
	zYZEgdJRFBScOSVBs2conHptKbXXmDhAV8WgAiqa685oeAgRV/jbSDrEM9i70JShtTROqcAixZy
	wOXWwxn4k84/BWFY19Sg6oHks+fqq2qlPWpHDiRwGAz7Y/sGXA/wiFlkP/zNHocs+uGJaR06kn/
	zqL8IuUVZoqD/ZY6L/aIK5tp8uGopSz7yOnzknlH6ZT9OtGlge
X-Received: by 2002:a17:90b:1809:b0:359:2099:da20 with SMTP id 98e67ed59e1d1-35965cd0b4cmr3771969a91.17.1772205300796;
        Fri, 27 Feb 2026 07:15:00 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.69.160])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3593dcc9c37sm5485848a91.8.2026.02.27.07.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:15:00 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Fri, 27 Feb 2026 15:14:34 +0000
Subject: [PATCH v4 4/5] dt-bindings: arm: atmel,at91rm9200-st: convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-arm-microchip-v4-4-7e2ae1c5b5d6@gmail.com>
References: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
In-Reply-To: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Akhila YS <akhilayalmati@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com,microchip.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269304-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,tuxon.dev:email,devicetree.org:url,microchip.com:email,fffffd00:email]
X-Rspamd-Queue-Id: 5C5591B9B43
X-Rspamd-Action: no action

Convert System Timer binding to YAML format.
Changes during conversion:
- Add "#address-cells" and "#size-cells" to the properties and required as
  watchdog is defined as a child node to the timer parent node.
- Define watchdog as a pattern property along with unit address in
  examples.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/arm/atmel,at91rm9200-st.yaml          | 69 ++++++++++++++++++++++
 .../devicetree/bindings/arm/atmel-sysregs.txt      |  9 ---
 2 files changed, 69 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/atmel,at91rm9200-st.yaml b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-st.yaml
new file mode 100644
index 000000000000..3f6a934a2a69
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-st.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/atmel,at91rm9200-st.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel System Timer
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Claudiu Beznea <claudiu.beznea@tuxon.dev>
+
+description:
+  The System Timer (ST) module in AT91RM9200 provides periodic tick and
+  alarm capabilities. It is exposed as a simple multi-function device
+  (simple-mfd + syscon) because it shares its register space and interrupt
+  with other System Controller blocks.
+
+properties:
+  compatible:
+    items:
+      - const: atmel,at91rm9200-st
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+patternProperties:
+  "^watchdog@[0-9a-f]+$":
+    $ref: /schemas/watchdog/atmel,at91rm9200-wdt.yaml#
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    timer@fffffd00 {
+        compatible = "atmel,at91rm9200-st", "syscon", "simple-mfd";
+        reg = <0xfffffd00 0x100>;
+        interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
+        clocks = <&slow_xtal>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        watchdog@fffffd40 {
+            compatible = "atmel,at91rm9200-wdt";
+            reg = <0xfffffd40 0x40>;
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
index d0561f7f465c..14642384bc87 100644
--- a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
+++ b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
@@ -1,14 +1,5 @@
 Atmel system registers
 
-System Timer (ST) required properties:
-- compatible: Should be "atmel,at91rm9200-st", "syscon", "simple-mfd"
-- reg: Should contain registers location and length
-- interrupts: Should contain interrupt for the ST which is the IRQ line
-  shared across all System Controller members.
-- clocks: phandle to input clock.
-Its subnodes can be:
-- watchdog: compatible should be "atmel,at91rm9200-wdt"
-
 RAMC SDRAM/DDR Controller required properties:
 - compatible: Should be "atmel,at91rm9200-sdramc", "syscon" or
 			"atmel,at91sam9260-sdramc" or

-- 
2.43.0


