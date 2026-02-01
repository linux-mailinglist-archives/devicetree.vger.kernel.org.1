Return-Path: <devicetree+bounces-261569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDP+H9s6f2kfmAIAu9opvQ
	(envelope-from <devicetree+bounces-261569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 12:36:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E33C5C80
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 12:36:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C73B3055125
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 11:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75CE0329C78;
	Sun,  1 Feb 2026 11:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DTSy9CLQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCC5322C99
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 11:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769945711; cv=none; b=kgS98XsxzGwq45YkZfgENRswn+DTp/Y9HJBQRz0mML8K++EqVVEafTh3BN66BlxI0keDmzIcWouM5GptLh8n8ik6WZOP+ioR5zJ8EDeQgeytbRiqTCtA14vx86na3ZWNMbQRK/DPmfz0mS8WRNnzpJxqmzYhyj/kAQU3Cwbq4WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769945711; c=relaxed/simple;
	bh=jRae6im2r158sMjMElzfH9wCVDLeo+Lu6vQSBwtPV1c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qD1rgCnfPRKUT1RhnFB1SXieN+ViVery2zip9YsrWIIa1Op4xNnEKHJWHGmj++vpcNWnQFve+JmYzRFt10QTSnwMJNz7s+W44jezFtEgjZodtGVMkSuDvFJfJOzSk3epFoz+Cn+tqFPuHMSm9Sv/mJ3LJJwRQHMwPIsvxZBCce4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DTSy9CLQ; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-81f39438187so1926351b3a.2
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 03:35:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769945709; x=1770550509; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5XV4nvlQJllxGJymMNGffVCbvnmIzM3P7KoEHXDM6RU=;
        b=DTSy9CLQtkTW2ka5Q5Rg9MUMToFhBnrY0+lJmOsYZGfkomjCAwWAxSNIrtN9SPPEIu
         WU2+Q8qlM3DHAG/MQUTPcLbvdGRs+PD5ZinslfW2kASwxXDm894PE6QQwGDsymabVj4q
         e6I93d9y9EuKsI0Oh5NGzOZdDR7TLZsZEKRadpoAGVRh6JuPiSp0ftCfN5vQZSQ3c5ZB
         Sd6cUUOm6LqPdiNBI145VoetjxBmBjsymWxHwxSKXe1Sgf8QexsLHCD/pHPd8c02m+L5
         RNqb576Zdne+tAUu2Dojzd/ePgVtI45jXJv1hWthYKpsXANwwLkQA7x9IJ0JPTt5qQFL
         zcNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769945709; x=1770550509;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5XV4nvlQJllxGJymMNGffVCbvnmIzM3P7KoEHXDM6RU=;
        b=LX4yAsO7TcTLFQFSPv6fJqjIkKpaU03H6iGoNF+deeezuV04WwvDqPdpJ/q7d9nohl
         xjy5OZNIrQWszLlFP/zOxBcLE6sYIHIv0qlybZ5hFX8Aat7X0n5N8Eh/ec63TnZo1qN0
         qWrEVPm07Brna1sw2pWHx8Hm68GG5qiYmHiOapeSjXuBxwRigYp689kL4wa/5we93bKt
         jZO8TY2odszeDWFVi/U2eX29vcdFtB3aFsmizMu0LP+9MURGh+JKvTyNefkDC0MStBaC
         Wfq/gLSb34PlwUjvm9m6cdiFNT7TeW/jgWOfEZHtCcMIEiYXVJIfgTjqYRPOFTU/xZzG
         2XXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnwueUGqCShR9mhgi0Asybc5r3+9p3q1pTSEHMk8JEUBwn7Wh8kIm3K29P1D1ZqN8cXxs2Xo0+fjWN@vger.kernel.org
X-Gm-Message-State: AOJu0YyjkHGUc4UNbnudgIsZDSvuuXmqh4SFfErYJeqQRLAU88/Y6gj/
	AJwhmIHblSvTXDh0HCUQa8CTGoLokzKI5G52Qa8YJft0+E9aHRz45DOn
X-Gm-Gg: AZuq6aJqRo6zQ3KLku3D5kMhYqLSs8wiVVYq+x9mITN4P3yyTomoSFsb+eYlMUg/mP5
	o94hPCalEyxUHYWKr7TaX6V+6hiDCa4P8V4WDC7ah/O9K150PtYiwHsXSHtWJ0QX8WFkUWPCooj
	bW5lrAbWYBkV6TbaWRa0YI1OJdWtwD8k3m24N1EGdv/LyZEdHN8rflvcqrDbVttx58q4AyBwJvL
	XjCWTI4oOsMPC5WdwAAPkZYmQ4jPrelZCgIkvavjc/qPWFHMBtkVI7iUHjzKjcueLblqHgeJLhQ
	9Zz3UgjWgzlhwlwog8Dn7zO6pkJ2I7joSnntzxJukd0jLeaFuPg5uPB0T+HXfejobnua5ccWnfm
	VhxusE8ubabNnuKYNxCJpHOGRpmxS0KjKHcyDbo1yQUfeLRZXySM94C8bASilxMAcjq//FX3j+W
	hbgQ9xBvXsvSC9PRsTi8z5oAtgqM/TqsW+cA==
X-Received: by 2002:a05:6a00:4286:b0:821:81ef:5de8 with SMTP id d2e1a72fcca58-823ab65359amr8617021b3a.12.1769945709102;
        Sun, 01 Feb 2026 03:35:09 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.252.105])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-82379c24083sm12994728b3a.55.2026.02.01.03.35.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 03:35:08 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Sun, 01 Feb 2026 11:34:22 +0000
Subject: [PATCH 3/4] dt-bindings: usb: atmel,at91rm9200-udc: convert to DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260201-atmel-usb-v1-3-d1a3e93003f1@gmail.com>
References: <20260201-atmel-usb-v1-0-d1a3e93003f1@gmail.com>
In-Reply-To: <20260201-atmel-usb-v1-0-d1a3e93003f1@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261569-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,bootlin.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,fffa4000:email]
X-Rspamd-Queue-Id: D3E33C5C80
X-Rspamd-Action: no action

Convert Atmel AT91 USB Device Controller (UDC) binding to DT schema.
Changes during conversion:
- Include "atmel,pullup-gpio" and "atmel,matrix" in the properties since
  they are required by existing in-tree DTS definitions.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../bindings/usb/atmel,at91rm9200-udc.yaml         | 77 ++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/atmel,at91rm9200-udc.yaml b/Documentation/devicetree/bindings/usb/atmel,at91rm9200-udc.yaml
new file mode 100644
index 000000000000..3af267c863e0
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/atmel,at91rm9200-udc.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/atmel,at91rm9200-udc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel AT91 USB Device Controller (UDC)
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Alexandre Belloni <alexandre.belloni@bootlin.com>
+
+description:
+  The Atmel AT91 USB Device Controller provides USB gadget (device-mode)
+  functionality on AT91 SoCs. It requires a peripheral clock and an AHB
+  clock for operation and may optionally control VBUS power through a GPIO.
+
+properties:
+  compatible:
+    enum:
+      - atmel,at91rm9200-udc
+      - atmel,at91sam9260-udc
+      - atmel,at91sam9261-udc
+      - atmel,at91sam9263-udc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: pclk
+      - const: hclk
+
+  atmel,vbus-gpio:
+    description: GPIO used to enable or control VBUS power for the USB bus.
+    maxItems: 1
+
+  atmel,matrix:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the Atmel bus matrix controller.
+
+  atmel,pullup-gpio:
+    description:
+      GPIO controlling the USB D+ pull-up resistor used to signal device
+      connection to the host.
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
+    gadget@fffa4000 {
+        compatible = "atmel,at91rm9200-udc";
+        reg = <0xfffa4000 0x4000>;
+        interrupts = <10 4>;
+        clocks = <&udc_clk>, <&udpck>;
+        clock-names = "pclk", "hclk";
+        atmel,vbus-gpio = <&pioC 5 GPIO_ACTIVE_HIGH>;
+    };
+...

-- 
2.52.0


