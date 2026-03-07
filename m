Return-Path: <devicetree+bounces-272392-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iObeJWLtq2lziAEAu9opvQ
	(envelope-from <devicetree+bounces-272392-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 10:18:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3E122ADE5
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 10:18:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9D9EF30698D3
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 09:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D4A8384226;
	Sat,  7 Mar 2026 09:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BXuTpC/8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A5538A73B
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 09:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772875011; cv=none; b=EeobephPhGGQ0VZ5K6yvwAnA0XB3DUITdtduQ7JhH9NAqNSHxMxuX6IBRWheFvlG8uQlrcPjOJlgpQeETZt2QX/jxd4t47MiWTgp1kNRUL/5IoZkyibsBK0X7KxEAcXUj/HIGh8JLPTu26QBtOHCbaR5kxA89pKRVDrWRhMiLL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772875011; c=relaxed/simple;
	bh=Ou/iWbGxGfkOAQnnYdsiwLR4UjSRY4YpC1Wp6DcAXIU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XyQ3CTobh8ff7wIdzVXnd/rJPMCKCJoA5EBdlLum9SCu8QeNVjdVEptOO3g9XKqnkayagnnHKdar2mgEEQuLIuNZkr6kkgpkZTV/fpfS3uOksAWPj/uIzy5VYQPx6YvnEbuHxn/6wT4XhH3RnrsP5u4u/ZlacCBCi7NpViV/nvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BXuTpC/8; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2aaed195901so46351865ad.0
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 01:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772875009; x=1773479809; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x7aE/ahuMqPx7JTjIMjRyrjOLyXEOk45Uib8bjVom3c=;
        b=BXuTpC/8WMaKt09i6SZ2B0YgiDxUb4K/wuKRkcAUZH/uWxvgZpTNJYbwDylcgimYoq
         mfLb47CgtM4jzqFN+odLFKEXVdaF/AOXwqpZsjt70wAvOxWkvk8PUUApgUGLrIw/xTcw
         82QAhAyPH3o1Bu4UMXsU5/+NdGHN6BRLCi+8HNPLmgI/GifjV6Q08vczEC8Zd+0losVL
         QlcsbNcF2TRAU5n2i/FOnM99a3i8ZUWvcPnHhJ57EENUR6uIuSUMsyiHZ49HsggjqOJr
         3yJTyzfok8U0TltQEhfK6TcjjiraHZy6pXy+8WHBY/KcAmRNtCGrO08iy6xtykU3tiCW
         mNXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772875009; x=1773479809;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=x7aE/ahuMqPx7JTjIMjRyrjOLyXEOk45Uib8bjVom3c=;
        b=LeSbnt1QEgda1AMTQa68Z5h6zXmKJ6AtOOboWFVTkawu3kxrSc5J5RmMDdAMQGScAV
         alOBBE4BQZ4ZnXsq6fjyJ2t/yJ5wjXvGoiB+fVpXxd2AHpXNOm9o72llz8HBkbSGcAwZ
         tDHsCi3yDumCNgd/NbACJTWrG+5UJV5o78i79JZ/RMw/VOk3r2M7LkTzX1jxXU9ahfRC
         QznFOee9xLAjmshDer9PhcmOhttW2A9Q59j7JmRNyH/7LH6hrGnS44g72aUBCyCievph
         tCeP3O/0JDNCJKPipdtLVADxqtvLFuN2QATJNqU2h5/bhwtUUUrxlQQDdXNBa/TqdLzx
         cbVA==
X-Forwarded-Encrypted: i=1; AJvYcCV2IgRxdudjqLr02Vq6i3v4ZzVPiS+sQTHo7H0236yaqFHptUBLVgAmIqK0BSdv4XamZQmLyWS1FSED@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj9wRws7mbQjTpKpBSo+4Srr8PmBeNzuvOpsisw4A7N73K+y4+
	mZEQqUhvWoqOS+mTX1Jli3ZycAdhlYCD/E4tOpKytxcx18jpXtF1AeHfPK9z4Q==
X-Gm-Gg: ATEYQzyogtXFmJdtUqUgVP9wLBwTMw3n8s6seSh06vGbJZtdWylyyqMQysp9lrrIJgJ
	9Lgqw2F/R/VBdvAg87IhLJSNfuW1NAf3+Ms4dmK4HRkkpKoF6SjI6VIosoI97O2zooFFIsvr5Mx
	Y1cDOgQPuw1VoVmuZHeiglZ3Mvqk+OSiBYd9KywvzlzN81iKu9EKphECjaGdtfLFVKAOrybDt8y
	026fz8XKb5O47/mXvahlzWIGiezLwRaEC+xInccLS2WtLhdBKjfv0XaKciKPsuC9ubz1Jx6uI7f
	+1XATXqnKvGnY51Cq6wxEZ5Vi9X7zHZklOhdwbH0KNfJVcwF98oN75zEREAu3FrdsSAGi+DBymz
	YXVm03RV4rayE7nMpeOkwn81nwDLcqHqwUZR4MDuPGrVJtXrcbJqGXkUZ3jp//gF3I3WxS8EQ+p
	9n1bBqXEJu0Te0JgE1+iGaaTkA9/I0Lz4tDWw66wv2a5I=
X-Received: by 2002:a17:903:234a:b0:2ae:5eab:1338 with SMTP id d9443c01a7336-2ae82366c81mr45397995ad.8.1772875009109;
        Sat, 07 Mar 2026 01:16:49 -0800 (PST)
Received: from Black-Pearl.localdomain ([27.7.215.222])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2ae83f74e4fsm45569385ad.58.2026.03.07.01.16.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 01:16:48 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Sat, 07 Mar 2026 09:16:22 +0000
Subject: [PATCH v3 5/5] dt-bindings: usb: atmel,at91sam9rl-udc: convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260307-atmel-usb-v3-5-3dc48fe772be@gmail.com>
References: <20260307-atmel-usb-v3-0-3dc48fe772be@gmail.com>
In-Reply-To: <20260307-atmel-usb-v3-0-3dc48fe772be@gmail.com>
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
X-Rspamd-Queue-Id: 0F3E122ADE5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272392-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.975];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,0.12.53.0:email,microchip.com:email,0.7.161.32:email,fffa4000:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,bootlin.com:email]
X-Rspamd-Action: no action

Convert Atmel High-Speed USB Device Controller (USBA) binding to DT schema.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../bindings/usb/atmel,at91sam9rl-udc.yaml         |  75 +++++++++++++
 .../devicetree/bindings/usb/atmel-usb.txt          | 125 ---------------------
 2 files changed, 75 insertions(+), 125 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/atmel,at91sam9rl-udc.yaml b/Documentation/devicetree/bindings/usb/atmel,at91sam9rl-udc.yaml
new file mode 100644
index 000000000000..55a0e062b04d
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/atmel,at91sam9rl-udc.yaml
@@ -0,0 +1,75 @@
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


