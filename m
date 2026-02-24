Return-Path: <devicetree+bounces-267906-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAjFJoqlnWmgQwQAu9opvQ
	(envelope-from <devicetree+bounces-267906-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:20:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BA818787C
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:20:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9812A315E9EC
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:15:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75B3839C63D;
	Tue, 24 Feb 2026 13:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W3+/RAqU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1955139C639
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771938946; cv=none; b=j7QBW9c4Hzpskec0AhdVsA//shCStbuXlxH4i/YjBTG+lSGg60f6RFJsXWmoZe2ZuqTPMwmTmKoW3LgGX7Teea0zcBWf2HsFeQBF2O/EIsAluldXZVRGcaHegdzAFCplzH870OOuM19gQC7YjHzlPm1FntWRXAMkhyDCFCCpW4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771938946; c=relaxed/simple;
	bh=O70Wf2hov4FuY/4KRTWalSn0MOyqTm0hmLa6x2VLUQU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n3kRPBNXM7fJbnGDQlYeilxvO2ry+Qq3PzZpwnFudzUn235pe/d7LpD0Ra3qp/6aegGXoN9oryv8XpIGp/pm3gIhrIbpNGwqxBrWoRHkbGFVS6oqHSQNowSyHKZ6ta+DYuDX/dXGq0HqWf6usb5/bwLjZ8d8W/9EzH1RxHLAytU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W3+/RAqU; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-c6de0527ce1so3149421a12.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 05:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771938944; x=1772543744; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o/4bQ4PzNfjZtRfxhU1Dhe4G6PTYYpxaIPq8BE8Sc+E=;
        b=W3+/RAqUm5drS8W52V+mG53VwMQgrqJtyjFIRPpqc/skBcOw2tp1pny+mz2z7z70Gv
         GAUtzZM5Vvo37R0OWmYju5QRY8OJgItfkrsao5m5rt15AqEKKrSdh5lVyi11YFDDEdiJ
         EoBD5OT2UTgEFEppm5zzp0muv0MdGWXIDPgPxpqCdWRaWHvK3f50lYEuD2kl6p4PTkZE
         lgrSYSDW5IzLPvxpM1x4Trol64fH9G+sM+RBU3RY55QGOyC3c1VMl0cXFfU5rC4eWGEj
         HbqPXhqjTFPSobLkfDwRhuUgzbeki+TiEcgPLAOLziJf5aJ8PQ6/CkA2QON6XyX/qX2I
         urFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771938944; x=1772543744;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o/4bQ4PzNfjZtRfxhU1Dhe4G6PTYYpxaIPq8BE8Sc+E=;
        b=sKqJSjkFjortMj6G553CgEPoNn5F35tWF+O9pTY43TOfXkREYsixkk0PK2R4eB6m5S
         TcL3JhqP6QLNKhOVefvxdfcT48IEYvk1WD838jGm3jZoXgZK0tAb+dCRBwjn91QpdIDd
         ZT6myhM3LhCa13Gwx6pllm8xiP7R7PcC4e9LITFlvImp8wsgDETtZ79DRB5CplzskruN
         LCJG3mIllVCobL3L8eVdOQ7JDdfRrBran5GcL5GQxLUUg4oHnFD2I0Pb2JDLJm74XRhT
         kJALKtuo4PxdwdO3Q50a6NPguScyCJP8eWvj1CR40uTWtNPsfTBIymfKKSkrEKFB4WZT
         lroQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPa0+hhd7mOSmC+MfgIompTResVxlnwv9koeLq5Jwfcce6ZQDckg73BhXoh7sJy3Souun8YDV9Tuef@vger.kernel.org
X-Gm-Message-State: AOJu0YyqzcuEkhXOtk9EnQkkH8cgSEFttC8U/4yR/tfQmXdViUhb1MIR
	nIH4LXXQLd9grd4Q4vdmBtyVLNKg0d+3DhXE/wW0FLLfMFKRPa9QNx1+
X-Gm-Gg: AZuq6aLNV2nd4FU5EQ+qRlRbBFErjlFSsb4cgbIs9QSwRYn1yyEMB49qWVsltNVd/Tt
	Ifv9npXpEG+nt2rsQiQUWfXQWd1GvLdyFxzTdfYFZylt0zhvvUM0yrXr7bZKlxZvbkqBqPmy5V+
	iTfCqU8xzMnPfXgOoDCxSJKbAdO/l7h+vZ/X3C86gQujRemHJxtiXuS9zEjY53OqDcTHGHfuakt
	AQLpcyfKlT+zFDBrZ90M4hJnp1Bhw6KAGF5ASNDJtHNXxyeTbYEAUxmtLENU8CAtJECaM3Jt5bj
	cjD2bC8ZR81L74Zq3+UMfWN1UFqgFNjEkRG6l/1Ri6ZBpMEhZwmLO560oRAIE7g8BkEd1G3j5Gk
	bsQqnHBap/Sf8vcT7gKR6qXt3cwpTQ6pFtSlyGsDgJdpJwtWkmfhTfLHJ25RfUJ8t1DZgYsIDpL
	W4ZqyShfehrnA6QDnrOC3BwD6SQ+VVKPVH73DM6lncZw==
X-Received: by 2002:a05:6a20:c989:b0:366:2360:8f7 with SMTP id adf61e73a8af0-39545dbf191mr14435962637.14.1771938944327;
        Tue, 24 Feb 2026 05:15:44 -0800 (PST)
Received: from Black-Pearl.localdomain ([27.7.171.51])
        by smtp.googlemail.com with ESMTPSA id 41be03b00d2f7-c70b7253a70sm10794013a12.24.2026.02.24.05.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 05:15:43 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Tue, 24 Feb 2026 13:13:01 +0000
Subject: [PATCH v2 4/4] dt-bindings: usb: atmel,at91sam9rl-udc: convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-atmel-usb-v2-4-6d6a615c9c47@gmail.com>
References: <20260224-atmel-usb-v2-0-6d6a615c9c47@gmail.com>
In-Reply-To: <20260224-atmel-usb-v2-0-6d6a615c9c47@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Herve Codina <herve.codina@bootlin.com>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-267906-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.12.53.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,microchip.com:email,bootlin.com:email,fffa4000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.7.161.32:email]
X-Rspamd-Queue-Id: D1BA818787C
X-Rspamd-Action: no action

Convert Atmel High-Speed USB Device Controller (USBA) binding to DT schema.
Changes during conversion:
- Include "#address-cells" and "#size-cells" in the properties since they
  are required by existing in-tree DTS definitions.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../bindings/usb/atmel,at91sam9rl-udc.yaml         |  81 +++++++++++++
 .../devicetree/bindings/usb/atmel-usb.txt          | 125 ---------------------
 2 files changed, 81 insertions(+), 125 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/atmel,at91sam9rl-udc.yaml b/Documentation/devicetree/bindings/usb/atmel,at91sam9rl-udc.yaml
new file mode 100644
index 000000000000..6f5710cecaee
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/atmel,at91sam9rl-udc.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/atmel,at91sam9rl-udc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel High-Speed USB Device Controller (USBA)
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Alexandre Belloni <alexandre.belloni@bootlin.com>
+
+description:
+  The Atmel High-Speed USB Device Controller (USBA) provides USB 2.0
+  high-speed gadget functionality on several Atmel and Microchip SoCs.
+  The controller requires a peripheral clock and a host clock for operation
+  and may optionally use a GPIO to detect VBUS presence.
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - atmel,at91sam9rl-udc
+          - atmel,at91sam9g45-udc
+          - atmel,sama5d3-udc
+      - items:
+          - const: microchip,lan9662-udc
+          - const: atmel,sama5d3-udc
+      - const: microchip,sam9x60-udc
+
+  reg:
+    maxItems: 2
+
+  interrupts:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    minItems: 2
+    maxItems: 2
+    items:
+      enum: [pclk, hclk]
+
+  atmel,vbus-gpio:
+    description: GPIO used to detect the presence of VBUS, indicating that
+      the USB cable is connected.
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/at91.h>
+    #include <dt-bindings/gpio/gpio.h>
+    gadget@fff78000 {
+        compatible = "atmel,at91sam9g45-udc";
+        reg = <0x00600000 0x80000
+               0xfff78000 0x400>;
+        interrupts = <27 IRQ_TYPE_LEVEL_HIGH 0>;
+        clocks = <&pmc PMC_TYPE_PERIPHERAL 27>, <&pmc PMC_TYPE_CORE PMC_UTMI>;
+        clock-names = "pclk", "hclk";
+        atmel,vbus-gpio = <&pioC 15 GPIO_ACTIVE_HIGH>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/usb/atmel-usb.txt b/Documentation/devicetree/bindings/usb/atmel-usb.txt
deleted file mode 100644
index 12183ef47ee4..000000000000
--- a/Documentation/devicetree/bindings/usb/atmel-usb.txt
+++ /dev/null
@@ -1,125 +0,0 @@
-Atmel SOC USB controllers
-
-OHCI
-
-Required properties:
- - compatible: Should be "atmel,at91rm9200-ohci" for USB controllers
-   used in host mode.
- - reg: Address and length of the register set for the device
- - interrupts: Should contain ohci interrupt
- - clocks: Should reference the peripheral, host and system clocks
- - clock-names: Should contain three strings
-		"ohci_clk" for the peripheral clock
-		"hclk" for the host clock
-		"uhpck" for the system clock
- - num-ports: Number of ports.
- - atmel,vbus-gpio: If present, specifies a gpio that needs to be
-   activated for the bus to be powered.
- - atmel,oc-gpio: If present, specifies a gpio that needs to be
-   activated for the overcurrent detection.
-
-usb0: ohci@500000 {
-	compatible = "atmel,at91rm9200-ohci", "usb-ohci";
-	reg = <0x00500000 0x100000>;
-	clocks = <&uhphs_clk>, <&uhphs_clk>, <&uhpck>;
-	clock-names = "ohci_clk", "hclk", "uhpck";
-	interrupts = <20 4>;
-	num-ports = <2>;
-};
-
-EHCI
-
-Required properties:
- - compatible: Should be "atmel,at91sam9g45-ehci" for USB controllers
-   used in host mode.
- - reg: Address and length of the register set for the device
- - interrupts: Should contain ehci interrupt
- - clocks: Should reference the peripheral and the UTMI clocks
- - clock-names: Should contain two strings
-		"ehci_clk" for the peripheral clock
-		"usb_clk" for the UTMI clock
-
-Optional properties:
- - phy_type : For multi port host USB controllers, should be one of
-   "utmi", or "hsic".
-
-usb1: ehci@800000 {
-	compatible = "atmel,at91sam9g45-ehci", "usb-ehci";
-	reg = <0x00800000 0x100000>;
-	interrupts = <22 4>;
-	clocks = <&utmi>, <&uhphs_clk>;
-	clock-names = "usb_clk", "ehci_clk";
-};
-
-AT91 USB device controller
-
-Required properties:
- - compatible: Should be one of the following
-	       "atmel,at91rm9200-udc"
-	       "atmel,at91sam9260-udc"
-	       "atmel,at91sam9261-udc"
-	       "atmel,at91sam9263-udc"
- - reg: Address and length of the register set for the device
- - interrupts: Should contain macb interrupt
- - clocks: Should reference the peripheral and the AHB clocks
- - clock-names: Should contain two strings
-		"pclk" for the peripheral clock
-		"hclk" for the AHB clock
-
-Optional properties:
- - atmel,vbus-gpio: If present, specifies a gpio that needs to be
-   activated for the bus to be powered.
-
-usb1: gadget@fffa4000 {
-	compatible = "atmel,at91rm9200-udc";
-	reg = <0xfffa4000 0x4000>;
-	interrupts = <10 4>;
-	clocks = <&udc_clk>, <&udpck>;
-	clock-names = "pclk", "hclk";
-	atmel,vbus-gpio = <&pioC 5 0>;
-};
-
-Atmel High-Speed USB device controller
-
-Required properties:
- - compatible: Should be one of the following
-	       "atmel,at91sam9rl-udc"
-	       "atmel,at91sam9g45-udc"
-	       "atmel,sama5d3-udc"
-	       "microchip,sam9x60-udc"
-	       "microchip,lan9662-udc"
-	       For "microchip,lan9662-udc" the fallback "atmel,sama5d3-udc"
-	       is required.
- - reg: Address and length of the register set for the device
- - interrupts: Should contain usba interrupt
- - clocks: Should reference the peripheral and host clocks
- - clock-names: Should contain two strings
-		"pclk" for the peripheral clock
-		"hclk" for the host clock
-
-Deprecated property:
- - ep childnode: To specify the number of endpoints and their properties.
-
-Optional properties:
- - atmel,vbus-gpio: If present, specifies a gpio that allows to detect whether
-   vbus is present (USB is connected).
-
-Deprecated child node properties:
- - name: Name of the endpoint.
- - reg: Num of the endpoint.
- - atmel,fifo-size: Size of the fifo.
- - atmel,nb-banks: Number of banks.
- - atmel,can-dma: Boolean to specify if the endpoint support DMA.
- - atmel,can-isoc: Boolean to specify if the endpoint support ISOC.
-
-usb2: gadget@fff78000 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-	compatible = "atmel,at91sam9rl-udc";
-	reg = <0x00600000 0x80000
-	       0xfff78000 0x400>;
-	interrupts = <27 4 0>;
-	clocks = <&utmi>, <&udphs_clk>;
-	clock-names = "hclk", "pclk";
-	atmel,vbus-gpio = <&pioB 19 0>;
-};

-- 
2.53.0


