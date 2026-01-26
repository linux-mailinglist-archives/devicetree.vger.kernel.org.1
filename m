Return-Path: <devicetree+bounces-259497-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLLbKaFqd2nCfQEAu9opvQ
	(envelope-from <devicetree+bounces-259497-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:22:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2485488C5C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:22:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6B9B130215B6
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:22:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C93B3385A1;
	Mon, 26 Jan 2026 13:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GQprH5D5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2C93382C1
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769433736; cv=none; b=tTz250OEI9MMwvRBHv5KzZPmYrzPPOZ+LZ92GGBsixKmhzQt6tXnCFRwl0S48ClfPbJtqbuwR+sg9ZZT1z2qXYGmnCDI5+Y6E08FhOs15AWByoXUvVqgfYPJqE5Yfb+ZmA/DfdkD1Yyb2qBvYMyI5CXHuE5h2INAho51Aob7914=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769433736; c=relaxed/simple;
	bh=v/68YfOqR3nCsog4AY2Cv4Cjz5tuf1p2YlNTeM+hcjM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pTAE89BOW5ARAEWVEqy2VzIy7AS3QgJhQACDUK47dicO2/k2LS0B2GziBN4jrM9pgTS/EOqP0vhvrNogqb1jFte6CySev04e9AgkkEbn/XC94Xj/sOVaO/SCsKVQMl+iAL59/ly/rZwAEPyLpRrf7XMRm/cRKuguFZg08OB5MzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GQprH5D5; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-29efd139227so30722125ad.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 05:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769433734; x=1770038534; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kKxt2D73VEhZ1nj6kIB8NzaoInJGS0guSeHndJc0mKE=;
        b=GQprH5D5qDLoQSnnkgDzXpM0zEoiU2m/350ektIgV6xd+CeXqPVAc7u2Zz84t440c0
         NzTT4j5zhDNTh2wYOBscIyMAqFs9ksbK47CjFqs+sbRfLOd7OX4gMfFzzNDdUqUrTnHL
         7Nn9a99yyINa8EDuewGr//WGaWGObA05MvOXjAADDtY3YS8+iQGF3EPhRN3D/7+6SOS5
         oKYpYIu7t3jrhU9agJpWogAz5eC8YXP0kanZL5ZGi8HgWSaxa27crVvj19v8SF89WEYF
         cmlDubQ4XgSsoY2X8p7E8G8IhUaPmYNNwX81h5ClzFQFyyMj65GGwVnciguU9GYFxyj1
         fTyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769433734; x=1770038534;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kKxt2D73VEhZ1nj6kIB8NzaoInJGS0guSeHndJc0mKE=;
        b=Jidbq6ChyFJLHIEYbrKW+WE2NL48YKqy8pJ39PMVnx5YRrqDJ8N0LozFJOjCxzU+kP
         WQqbZdDgEAG7NluvpXAOfjJ70ecOjEcKqcvWjd/ineS3EdHudI4AoTDXYdTnrordYwxl
         tJXfBghZujQb25XwKMcFqVueLeZH282bYPDe57Ro3YFtbF+hGEfFzeR/MEbrJxTocGny
         UgYS2urHazRJHsw1C2RMTyrgeWg8EduItuRsPiDoQApuM92qDKxZo8yzf/RRnwrpUivW
         umdQAzuIRmfx1YxeW2AmCxXUQYaqEqCKat0ipSVaeRdYxeGlUXJeL7LPObqieLdLwnfz
         /WWg==
X-Forwarded-Encrypted: i=1; AJvYcCWwUgtEi7J8hiUZCl1C5ItbSXpcUPoXk5GgViyPQPOshO6jes0q0JkZQZZXX7R44ETyjPDBJBILFIEc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5dDRCU192umxOzHCUGm9kTHk+nhBSHUGqFapPRSUjHqnSeNk2
	gniLe5jVn7ekWIaTHz0l9gikMwI+qz8Mk2ir4yrKpY6I6VnkAn7juOBT
X-Gm-Gg: AZuq6aKfcZuLLBKWxh7xsSjpbEtGA+6WiAEGXA0WFeSmA0nQbfM2mCfzwlr7+613Np8
	qutPS4HJ7NJgdex4G2LCOnijdgvXPB4ln5J9Uv7+ExcErrM5BgU59oQrPhdA2epezJ7gpCcCJS9
	qjDp9bo5BXprr2h9+ddsZl7C7F2kVxxnZcyatvbQMAQRRA7Mla3ULGtUcXnSM2HhNlyScqSMl8C
	uGt7E9UNHJUsyTHcqbLMeo/q8cfVhAgWy/QBeSMKlWfAkCSiQtT5W2fhNlvWM2hhRDaAHGlrxkW
	NPOVRjehCDY6JCRLhUemtnDl2lumUSz+sVNLhpIPDb+pJw8LMJkc2aoCv3R8iy0blcVVbnblvo8
	jFP/cVLgeDu+zJNFNoQqvbcmKCCFoIVIqZVJAUJyiI3oMUnu4utWaTLp00y7yEtkljdSRNDMJak
	YsN9jZeD57M6HkkBULn4qFKbaJZD/Um6bSLw==
X-Received: by 2002:a17:903:2343:b0:2a2:f465:1271 with SMTP id d9443c01a7336-2a8452ed066mr39802045ad.44.1769433733413;
        Mon, 26 Jan 2026 05:22:13 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a802daa65fsm90602575ad.12.2026.01.26.05.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 05:22:13 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Mon, 26 Jan 2026 13:22:04 +0000
Subject: [PATCH 1/2] dt-bindings: usb: ti,omap4-musb: convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-ti-usb-v1-1-2855c129eb6d@gmail.com>
References: <20260126-ti-usb-v1-0-2855c129eb6d@gmail.com>
In-Reply-To: <20260126-ti-usb-v1-0-2855c129eb6d@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@ti.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Charan Pedumuru <charan.pedumuru@gmail.com>
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
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259497-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 2485488C5C
X-Rspamd-Action: no action

Convert OMAP MUSB USB OTG Controller binding to DT schema.
Changes during conversion:
- Introduce new compatible string patterns "am35x_otg_hs" and "usb_otg_hs"
  to properly match existing nodes already defined in the DT sources.
- Include "interrupts" and "interrupt-names" properties in the YAML, as
  they are used by many in-tree DTS files.
- Extend the "power" property to allow the value 150 (in addition to
  existing values), since this is present in several in-tree DTS examples.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../devicetree/bindings/usb/ti,omap4-musb.yaml     | 133 +++++++++++++++++++++
 1 file changed, 133 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/ti,omap4-musb.yaml b/Documentation/devicetree/bindings/usb/ti,omap4-musb.yaml
new file mode 100644
index 000000000000..16e95fe4c38d
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/ti,omap4-musb.yaml
@@ -0,0 +1,133 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/ti,omap4-musb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments OMAP MUSB USB OTG Controller
+
+maintainers:
+  - Felipe Balbi <balbi@ti.com
+
+description:
+  Texas Instruments glue layer for the Mentor Graphics MUSB OTG controller.
+  Handles SoC-specific integration including PHY interface bridging(ULPI/
+  UTMI), interrupt aggregation, DMA engine coordination (internal/
+  external), VBUS/session control via control module mailbox, and
+  clock/reset management. Provides fixed hardware configuration parameters
+  to the generic MUSB core driver.
+
+properties:
+  $nodename:
+    pattern: "^(am35x_otg_hs|usb_otg_hs|usb)@[0-9a-f]+$"
+
+  compatible:
+    enum:
+      - ti,omap3-musb
+      - ti,omap4-musb
+
+  reg:
+    maxItems: 1
+
+  ti,hwmods:
+    $ref: /schemas/types.yaml#/definitions/string
+    description:
+      Specifies the name of the TI PRCM (Power, Reset and Clock Management)
+      hardware module that must be enabled (powered and clocked) for this
+      device node to operate. The value "usb_otg_hs" refers to the USB
+      On-The-Go High-Speed controller IP block.
+    const: usb_otg_hs
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+
+  interrupt-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      enum: [mc, dma]
+
+  multipoint:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Indicates the MUSB controller supports multipoint. This is a MUSB
+      configuration-specific setting.
+    const: 1
+
+  num-eps:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Specifies the number of endpoints. This is a MUSB configuration
+      specific setting.
+    const: 16
+
+  ram-bits:
+    description:
+      Specifies the RAM address size.
+    const: 12
+
+  interface-type:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Describes the type of interface between the controller and the PHY.
+      0 for ULPI, 1 for UTMI.
+    enum: [0, 1]
+
+  mode:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: 1 for HOST, 2 for PERIPHERAL, 3 for OTG.
+    enum: [1, 2, 3]
+
+  power:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Signifies the controller can supply up to 100mA when operating
+      in host mode.
+    enum: [50, 150]
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: usb2-phy
+
+  usb-phy:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: Phandle for the PHY device.
+    deprecated: true
+
+  ctrl-module:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle of the control module this glue uses to write to mailbox.
+
+required:
+  - reg
+  - compatible
+  - interrupts
+  - interrupt-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    usb_otg_hs@4a0ab000 {
+        compatible = "ti,omap4-musb";
+        reg = <0x4a0ab000 0x1000>;
+        interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "mc", "dma";
+        ti,hwmods = "usb_otg_hs";
+        multipoint = <1>;
+        num-eps = <16>;
+        ram-bits = <12>;
+        ctrl-module = <&omap_control_usb>;
+        phys = <&usb2_phy>;
+        phy-names = "usb2-phy";
+        interface-type = <1>;
+        mode = <3>;
+        power = <50>;
+    };
+...

-- 
2.52.0


