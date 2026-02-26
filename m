Return-Path: <devicetree+bounces-268941-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CtcNVGFoGknkgQAu9opvQ
	(envelope-from <devicetree+bounces-268941-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:39:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D831AC9C7
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:39:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AD0253045A05
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:44:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2246244BC85;
	Thu, 26 Feb 2026 16:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aBMbxXO5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E8644A72C
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772122442; cv=none; b=dGDaWxdlVT/VBDJUvDUlYe+1D1tlwCGyPJxD28yMfSG7WkVGtVDuDn4vud9Zzmg4b3W+jWHI6drYM3hVGNaXLMSKlsRkh0w6kW4nUO+/4YlE6o2Sk3Yv4gwGyhfqPRdEFvmWt1eXPEvUXjB15h/lrnLQfzd0HgWg0DAKvl8C9CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772122442; c=relaxed/simple;
	bh=A3Vdj4/Wasior3ptVc0ONdH2LyugLoaGmrUrYqVgG4k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aGwGbj0mPHkt9OmLLJlFLcQ+qrwGiRe3LEa7PZVvrFo0OM0/E3gmhHpIP4Qx8dSKXR3KX8+Bmg2tFvsDeasN4qfXBEwIs4e0TFTsta1DT4gbRYdwlldhk6DXO1UD4LR0i9li8eSl+CeOi/eIvZBu8AC82JafevctYIL39pQDIno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aBMbxXO5; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-c7103601c8cso361806a12.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:14:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772122440; x=1772727240; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=98cDGFKI0ittGN9WTwtDxfJA6FpPSB/XcdXQA2mPpIs=;
        b=aBMbxXO5pnXXpfpueh1BaoUB/aU6d4nzQOjwb8AoTcXl5PC3SKs+tbwNvJw+tKrdlu
         IKPwdqkFr6sIGCMQYpbXkERa6aPfDgL/oQ/T1Y5AbUP7k7B4lu+DvNa1mqP7gEIgRF5D
         j3IDpeq4Vcs3cDzrxlMXp19TT2zIh8I1sB8l18zBicS0EeobJwUt+yzZM/XeMkbKkoUN
         SEma6UhXEo/8abN54v2vrT6NkBpxGeKMg4IrH8veMnmKpm8DL17mGiZLJQ9C7twnHMV/
         yF5ybJU6awFLY01lp1IHVcrFOK5B4pYR9RxkhacUn7NM9QxbuBf1z9trKp3rfUxVR85b
         6jMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772122440; x=1772727240;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=98cDGFKI0ittGN9WTwtDxfJA6FpPSB/XcdXQA2mPpIs=;
        b=rsPiEAd2mgFuTn0ZRNiynOI0/dD+MrWYTl36nOtwVb08+rctFVOU4+aDbCqmk+7j7B
         zohjK5aOZBaIdubmNMrE5oQ3fGnWbnMqtAuYKO8M4ZNwqREwFwXK7m/PU3IkyUUnMZp8
         I15uSdMOEl2JuGOiy35WjgEh3n1Z+Qzeu4cmVorSZy8CuKfskVesK4JPhdnvvE3q3g+k
         n/Zb46huE6Ir9EQRGrCjgLdaFjn/bic/M50xW6rG5Sl+JQXq024ll5WUcWMorYyIRJEO
         YI7kcXDnboCtqDk5GerbVXg0t+wUMjP/iBodzkpNb0eQ3lT9RaYIR4zKe+NzBv5TqLQm
         cSUw==
X-Gm-Message-State: AOJu0YzfwWg3dpBc9517Wx9jGviKf8qO1E65mfNFELKQL6O/8qAFN8WB
	OYMomCXty2V88KIDjoalg5+Uehbs97mU8fxr+qt98LpZ86N4tf8A5/Lq
X-Gm-Gg: ATEYQzzgU266cdo7fQZ5aknU/nNP9aWlwmg0/qXSJjhvoZ/pEsv6TfhLASd/bzODwIe
	wc3OCa6Vi8AsS0vJy9cVHtBVb+EZwUieezm2LXQ2Gac645EuWD1LM6g64h7npO+5nZ6DfMYo5bK
	91jAUAcxDB9ijMoqP/PiOAb35vPaPjOy2qBODKtrxjjGUUrJyRRkMaxzn0Lros4JhwkcIohlk9n
	bt5g/wtmYibIh2YOm1YV5mSNsyFyZ5wvmdC730LJMjRC2pjjuzIcj5tNgG1jq+9ck+ME51G8Gsv
	qor1sBc6X2SIWWDvcLpO+WzieV/NrpGmRa8qKa0MlDEb0VzCUYv+GjBxtH2tHWgglVdfD2ozevx
	xD31dbaE9o2fXkY3w5ZvTYqPFdCkHv7qnScAXc5/VtrttMFb28Pctzaz8gjxK5cLqoOolFqeOU1
	wn2u1hocEusOCTS6u1NWCrDEtHzuRLXw7QB+Pf9AIagsRawg==
X-Received: by 2002:a17:902:e74e:b0:2a9:602c:159 with SMTP id d9443c01a7336-2ae0327267fmr27260525ad.19.1772122439955;
        Thu, 26 Feb 2026 08:13:59 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.183.54.8])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2adfb6a0432sm44384595ad.52.2026.02.26.08.13.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 08:13:59 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Thu, 26 Feb 2026 16:13:36 +0000
Subject: [PATCH v3 4/5] dt-bindings: arm: atmel,at91rm9200-st: convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-arm-microchip-v3-4-0bda15abd922@gmail.com>
References: <20260226-arm-microchip-v3-0-0bda15abd922@gmail.com>
In-Reply-To: <20260226-arm-microchip-v3-0-0bda15abd922@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268941-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,tuxon.dev:email,microchip.com:email]
X-Rspamd-Queue-Id: E3D831AC9C7
X-Rspamd-Action: no action

Convert System Timer binding to YAML format.
Changes during conversion:
- Add "#address-cells" and "#size-cells" to the properties and required as
  watchdog is defined as a child node to the timer parent node.
- Define watchdog as a pattern property along with unit address in
  examples.

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


