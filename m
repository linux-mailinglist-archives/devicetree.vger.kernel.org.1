Return-Path: <devicetree+bounces-224368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E56BC3698
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 08:00:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1C26E4EA326
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 06:00:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88E0E2EAB7E;
	Wed,  8 Oct 2025 06:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="qK4OoFsU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com [209.85.214.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB8882EA752
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 06:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759903216; cv=none; b=UpXq4fnXSPrrvqhPLuYuIFmMS4/oY0ZA/lUG9A5IZ0hCq6mQLuPYwp0Td1ijj4iiK7pCAclVvMlCvUdzqwmT7JJltUbwx5zoyijC3FI2LHJfmXhrHA3rWSI7LIY4kD0boOYN79gpQpIDq6Vqqlag2KrHsdn0xkSnB72E8/tMP80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759903216; c=relaxed/simple;
	bh=qCgkJKps55l8RjxhpMVT2LM/JcRJvX3KzhzAmNcDzpA=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=eAZsSIRo6pjxA5qxvcm5OPEEw9a1yoyM0xpK2OhyL9v4R1E7xgsaBCv7JneDbQ1TEMHkoIzCOqhXB8Lb+tb+z1ctRCxrd+vQR50IxrOmdNCxq9niGO0JnoTpQsQjN3OuX+mKe3QMLSi+WVrbYqB6FNW0bkeLh40uXFXf6Ef4TFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=qK4OoFsU; arc=none smtp.client-ip=209.85.214.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com
Received: by mail-pl1-f202.google.com with SMTP id d9443c01a7336-272ed8c106eso45577465ad.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 23:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759903213; x=1760508013; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=fKVxg4WoPrUf/1g2EJBbMsdrqJ7J4uyOel2ApqCtl4o=;
        b=qK4OoFsU+VXEzIiFN7i0ybquBBt5H6YTJkYBNuFfY49HjvrS2nY6J5xQzTGApe0zoU
         Z6R6xO7krPM1aat2CDM+pKH/rnBr5Ga4B/ditnijm+SGfxnP/6XCQtoeuG39AOKRwTFa
         2XipWoDdz15kTaYi+884s0CipnMGVKBCSSKv9wQRmV6UOyLRuiLGILTe7G47fAKzofhn
         d9KlEGHQzrLZIV3HYoNvqLXfj3G9JyanA+NnvPOdHPohLbLpL8hZSx0yPVsZoSlMh502
         Pfc3ExlpcgYFgJ4ZY6+R85lxVXmRM6Kcv/buXI93S7MbkpHOWvpd38G84OqqCfmCS0Kv
         53sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759903213; x=1760508013;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fKVxg4WoPrUf/1g2EJBbMsdrqJ7J4uyOel2ApqCtl4o=;
        b=IbfY4F6weNIMEX0ExfhE+GTf37FA9RJYnA20rCQidw2721Q/F3UvEyWJDPyUArrSJ5
         dqsR7mvvuaH2YON+PC+Vg3MWCX6cXi5crDURKBJCmGMSMJZF+c5C6cD358rPrJwxUckz
         GDfCZsgseVN5rgLt3lovcAAffqbscTbgY0bIqWIN8U/ZXv3OnXONLqkTkhQPQBb0gwls
         wzrb4s9rFA0hLJHXlACeE7oaOuAD8q9WsN8I4/22mM19mkzkb2wY2rpTDe0pa2p9ZhpY
         BEcl2zz5uGKdc5nF6vaP7N2wAiw4aSs2BkBfoMCnOcs60aRTeCQBEH70eqYoHfkfsNZ5
         sLRw==
X-Forwarded-Encrypted: i=1; AJvYcCU9EIbnklTPmEwF0uFs+2haD44hN8zExf9W+YpjLEKYVUkAviExQofP8gGoVG37vnKHcWaORhQ4MwCF@vger.kernel.org
X-Gm-Message-State: AOJu0YytK0OUJ5jIg1PBMey9KbpBamsPtmn4ShBgEv4a4aNyuD5CJWcW
	Rwl0C545UbxLyG4UuI8dQIeZ6lOdpSSKaEe0L4HeVgRpXnku70dHcKRBH9bopKf3Woxl4dJfAA5
	HgW+rOw==
X-Google-Smtp-Source: AGHT+IEyo0B3o+ZPfKvOdrwXh59jKmgJAQXZpnESAfqmBlS0+CaamSvGek6ShAj0Lt8oc4gS4HOqEV0MfV4=
X-Received: from plhu17.prod.google.com ([2002:a17:903:1251:b0:28e:7f4e:dd17])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a17:903:3807:b0:269:8d16:42d1
 with SMTP id d9443c01a7336-290272e1e24mr28143825ad.50.1759903213112; Tue, 07
 Oct 2025 23:00:13 -0700 (PDT)
Date: Wed,  8 Oct 2025 05:59:57 +0000
In-Reply-To: <20251008060000.3136021-1-royluo@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20251008060000.3136021-1-royluo@google.com>
X-Mailer: git-send-email 2.51.0.710.ga91ca5db03-goog
Message-ID: <20251008060000.3136021-2-royluo@google.com>
Subject: [PATCH v2 1/4] dt-bindings: usb: dwc3: Add Google Tensor G5 DWC3
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>, 
	Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Document the device tree bindings for the DWC3 USB controller found in
Google Tensor SoCs, starting with the G5 generation.

The Tensor G5 silicon represents a complete architectural departure from
previous generations (like gs101), including entirely new clock/reset
schemes, top-level wrapper and register interface. Consequently,
existing Samsung/Exynos DWC3 USB bindings and drivers are incompatible,
necessitating this new device tree binding.

The USB controller on Tensor G5 is based on Synopsys DWC3 IP and features
Dual-Role Device single port with hibernation support.

Signed-off-by: Roy Luo <royluo@google.com>
---
 .../bindings/usb/google,gs-dwc3.yaml          | 145 ++++++++++++++++++
 1 file changed, 145 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/google,gs-dwc3.yaml

diff --git a/Documentation/devicetree/bindings/usb/google,gs-dwc3.yaml b/Documentation/devicetree/bindings/usb/google,gs-dwc3.yaml
new file mode 100644
index 000000000000..9eb0bf726e8d
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/google,gs-dwc3.yaml
@@ -0,0 +1,145 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2025, Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/google,gs-dwc3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Tensor Series (G5+) DWC3 USB SoC Controller
+
+maintainers:
+  - Roy Luo <royluo@google.com>
+
+description: |
+  Describes the DWC3 USB controller block implemented on Google Tensor SoCs,
+  starting with the G5 generation. Based on Synopsys DWC3 IP, the controller
+  features Dual-Role Device single port with hibernation add-on.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - google,gs5-dwc3
+
+  reg:
+    minItems: 3
+    maxItems: 3
+
+  reg-names:
+    description: |
+      The following memory regions must present:
+        - dwc3_core: Core DWC3 IP registers.
+        - host_cfg_csr: Hibernation control registers.
+        - usbint_csr: Hibernation interrupt registers.
+    items:
+      - const: dwc3_core
+      - const: host_cfg_csr
+      - const: usbint_csr
+
+  interrupts:
+    minItems: 3
+    maxItems: 3
+
+  interrupt-names:
+    description: |
+      The following interrupts must present:
+        - dwc_usb3: Core DWC3 interrupt.
+        - hs_pme_irq: High speed remote wakeup interrupt for hibernation.
+        - ss_pme_irq: Super speed remote wakeup interrupt for hibernation.
+    items:
+      - const: dwc_usb3
+      - const: hs_pme_irq
+      - const: ss_pme_irq
+
+  clocks:
+    minItems: 3
+    maxItems: 3
+
+  clock-names:
+    minItems: 3
+    maxItems: 3
+
+  resets:
+    minItems: 5
+    maxItems: 5
+
+  reset-names:
+    items:
+      - const: usbc_non_sticky
+      - const: usbc_sticky
+      - const: usb_drd_bus
+      - const: u2phy_apb
+      - const: usb_top_csr
+
+  power-domains:
+    minItems: 2
+    maxItems: 2
+
+  power-domain-names:
+    description: |
+      The following power domain must present:
+          - usb_psw_pd: The child power domain of usb_top_pd. Turning it on puts the controller
+                         into full power state, turning it off puts the controller into power
+                         gated state.
+          - usb_top_pd: The parent power domain of usb_psw_pd. Turning it on puts the controller
+                         into power gated state, turning it off completely shuts off the
+                         controller.
+    items:
+      - const: usb_psw_pd
+      - const: usb_top_pd
+
+  iommus:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - interrupt-names
+  - clocks
+  - resets
+  - reset-names
+  - power-domains
+  - power-domain-names
+
+allOf:
+  - $ref: snps,dwc3-common.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        usb@c400000 {
+            compatible = "google,gs5-dwc3";
+            reg = <0 0x0c400000  0 0xd060>, <0 0x0c450000 0 0x14>, <0 0x0c450020 0 0x8>;
+            reg-names = "dwc3_core", "host_cfg_csr", "usbint_csr";
+            interrupts = <GIC_SPI 580 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH 0>;
+            interrupt-names = "dwc_usb3", "hs_pme_irq", "ss_pme_irq";
+            clocks = <&hsion_usbc_non_sticky_clk>,  <&hsion_usbc_sticky_clk>,
+                     <&hsion_u2phy_apb_clk>;
+            clock-names = "usbc_non_sticky", "usbc_sticky", "u2phy_apb";
+            resets = <&hsion_resets_usbc_non_sticky>, <&hsion_resets_usbc_sticky>,
+                     <&hsion_resets_usb_drd_bus>, <&hsion_resets_u2phy_apb>,
+                     <&hsion_resets_usb_top_csr>;
+            reset-names = "usbc_non_sticky", "usbc_sticky",
+                     "usb_drd_bus", "u2phy_apb",
+                     "usb_top_csr";
+            power-domains = <&hsio_n_usb_psw_pd>, <&hsio_n_usb_pd>;
+            power-domain-names = "usb_psw_pd", "usb_top_pd";
+            phys = <&usb_phy 0>;
+            phy-names = "usb2-phy";
+            snps,quirk-frame-length-adjustment = <0x20>;
+            snps,gfladj-refclk-lpm-sel-quirk;
+            snps,incr-burst-type-adjustment = <4>;
+        };
+    };
+...
-- 
2.51.0.710.ga91ca5db03-goog


