Return-Path: <devicetree+bounces-260065-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMZ2NwX5eGlFuQEAu9opvQ
	(envelope-from <devicetree+bounces-260065-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:42:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5931698973
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:42:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A4197301DC21
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E2E9302742;
	Tue, 27 Jan 2026 17:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dz/gQLEv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254C1324716
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 17:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769535743; cv=none; b=Pv0/ykyRyKy6l0Xwr063CQCbXOOEtXQIQsI1dhE85WTk8HuLxTb47nKI/hjipRXy6EbHFKuw9Om9zMSCs+9eBhcSItMnw/qzr553HxidEP7sgmga8ImdDMBcGdeFKUnZGUdfoAQ32EQrXF4GtdI0h76SQNNnWjaWEKokc0CKAYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769535743; c=relaxed/simple;
	bh=LJCCDlzp+RhX4lns0UFIi5HQ5N9LDgfGIWkisTNN7NI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=O/pb6b/vumL4GATTGEcF7Z5fUNF4AjkVJGTUT0JafyvBbtDxo87KJHOFS3yC1LHUgVAJ7/6tTtqsTF2SIpGrKWNsxV8b2oXnJCBQuqI4wMaU0iufhXOpW2//WzAi46UC3LBPLxAMkfyIdtoTqRlbg35CFzua4CrwOps4UWgD1y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dz/gQLEv; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c5f0edc20f2so1591006a12.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769535741; x=1770140541; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ngr4uFefuh790NMX/+gksrGJBwOXzCTHhyHnUhcYxys=;
        b=Dz/gQLEvDkqUX9dcH8sg4+8T8XAYXs4eqLQOglgxF0gMYVVTSG+VuzpWqs6q1bVcHz
         4AUjhR0CG8chLkBKh55FhkjUCs+VRG825kdAuMifUyQfqs6WtWP7PXFFQIykJaMXVG9C
         YYXI8p4LhFB9X4CJ/tA833RD61R6zE0KPRWiQEMS34XYYH+XZnb88ybqR0D4BITkzM3Z
         P/vNVyL6mr0zR8dt8P+dH46vCTIKvdMntq8nojlyuIS+uPNKZcecQUqBCwALEo1QU8Cg
         9roPCwpOO2ShwoJHyKxJonLBybNPJvF3MRXMtc9yONUcwb/BWGgQ+23lRpCiNtJudsKx
         j/OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769535741; x=1770140541;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ngr4uFefuh790NMX/+gksrGJBwOXzCTHhyHnUhcYxys=;
        b=GX+dlE3SVR+eI4c+62meLKId6Y+gW08LIkNc1USi1F552eb4jmdkYWsFzy2SNN0JEI
         WWufuwlNLLt9HogVoTsUM4fowM/Wea0/2qbBX735U4qEgiA3EhAW23gWa+zZDobrW+lL
         4XWMFoIxcNYq4VKXoT18jNMNdYL5hEtGDp9cFU6IDnmfH99hPUE4gAZqjPtTawOCh9Em
         e+tmFleww9qCcEtKzd032iQLj5QpEdJRfW1cKZDZG2mQKh+yzMb4+JlfKA6wCHYwQI0R
         6AY0GgWf89zDwlds9K7yRFrGWH3QbcKDC35W7Ke6IQYZpKq+hgO1Oe2/UuFH9pyN01i5
         lLIQ==
X-Forwarded-Encrypted: i=1; AJvYcCV7LylcUCpVUs+ieWbL90Qs2MdkxCh3pazRfOhPJ3fmyIRDkj9I06DYbtV4UtFz/LQ50E5GNeCkTP7H@vger.kernel.org
X-Gm-Message-State: AOJu0YxdCRMMzyfVt9QAACIiViYKbqHqfhz3+wqBoPt5yZhBqu7Vx+T0
	Pw7DPOYJdkWyyO9GMSML2bCi8Y42GB4Rxjy+gmhxEMwh8TLMD+FfOWBeC9aIiA==
X-Gm-Gg: AZuq6aJebwPvK8JBW8sRHRycOd+NR6Xj2z9l6qLOTGNg0pdr+QVCtz4Q9D0xLUPRI3V
	XS15iYeLCfYbZjnxTdZ3YE7uvylDH8yWEGnX/oJFa516x9LSUyrD8xyX6Lehaf95oZdTLnznrQz
	f18qNt/m4tE+KEtyNr6wtepuG3c/jFdnW/kvP+lLFFwynXEwbSb4PwFFjHpSSa3cjkMAji/g7/F
	nk4cmDX3EmnBy72S1jAc0YLTgZtv+33U0uvnL8u0jXb+4LEj87RpOe7Nxo3Q4Igl5yUwtpCOzsC
	WsL9Vxk7S02R+ny5WCdJ4yiSwY/8M9G2GhqXbap2wtd6kvgrtTQBw76xI3nzozV+kl/Aj+S1lr7
	b38afVogat7QDC5Ufhu4kp2uHF3BRzjcG8T+LznDfa0E4PUfI1xS9XpxqE1sG2ly3R6vSjz5nst
	d08lrhP/z/peyyuV2Mae3In1As0GI1QfCW3A==
X-Received: by 2002:a17:90b:4fcf:b0:33f:eca0:47c6 with SMTP id 98e67ed59e1d1-353fed87926mr2074597a91.30.1769535741189;
        Tue, 27 Jan 2026 09:42:21 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3540f2cae91sm89251a91.4.2026.01.27.09.42.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 09:42:20 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Tue, 27 Jan 2026 17:42:13 +0000
Subject: [PATCH v2 1/2] dt-bindings: usb: ti,omap4-musb: convert to DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-ti-usb-v2-1-9dd6a65b43df@gmail.com>
References: <20260127-ti-usb-v2-0-9dd6a65b43df@gmail.com>
In-Reply-To: <20260127-ti-usb-v2-0-9dd6a65b43df@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-260065-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,4a0ab000:email]
X-Rspamd-Queue-Id: 5931698973
X-Rspamd-Action: no action

Convert OMAP MUSB USB OTG Controller binding to DT schema.
Changes during conversion:
- Include "interrupts" and "interrupt-names" properties in the YAML, as
  they are used by many in-tree DTS files.
- Extend the "power" property to allow the value 150 (in addition to
  existing values), since this is present in several in-tree DTS examples.
- Drop the ti,hwmods property, as it is not used by any in-tree DTS files.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../devicetree/bindings/usb/ti,omap4-musb.yaml     | 120 +++++++++++++++++++++
 1 file changed, 120 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/ti,omap4-musb.yaml b/Documentation/devicetree/bindings/usb/ti,omap4-musb.yaml
new file mode 100644
index 000000000000..a3d15f217658
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/ti,omap4-musb.yaml
@@ -0,0 +1,120 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/ti,omap4-musb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments OMAP MUSB USB OTG Controller
+
+maintainers:
+  - Felipe Balbi <balbi@ti.com>
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
+  compatible:
+    enum:
+      - ti,omap3-musb
+      - ti,omap4-musb
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+
+  interrupt-names:
+    minItems: 1
+    items:
+      - const: mc
+      - const: dma
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
+    description: Specifies the RAM address size.
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
+      Indicates the maximum current the controller can supply when
+      operating in host mode. A value of 50 corresponds to 100 mA, and a
+      value of 150 corresponds to 300 mA.
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
+    usb@4a0ab000 {
+        compatible = "ti,omap4-musb";
+        reg = <0x4a0ab000 0x1000>;
+        interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "mc", "dma";
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


