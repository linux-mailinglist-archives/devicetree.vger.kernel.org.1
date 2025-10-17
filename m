Return-Path: <devicetree+bounces-228326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D484EBEC045
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 01:35:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CB8724E98D8
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 23:35:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A81130CD9F;
	Fri, 17 Oct 2025 23:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="T0Dug21R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f201.google.com (mail-pg1-f201.google.com [209.85.215.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EBD2EB870
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 23:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760744122; cv=none; b=kuXer8QTqqYHY6gNRJ6N/8VZ6avhR9kMhKvG1fiI9nDyW+aarFK/wZyQf2NUEt+F/xzWYIo98QWcYXNW3TTCJHN25QngUaRdiXrkprpw1n0LJQ+fACNF7Ufo+JwV2HMdsOwGbL91gghEKy0r1D++BdMt53NjyPcnFTAORl0Nsyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760744122; c=relaxed/simple;
	bh=S4DZWBuogJeYEeIqrhKi2NwzW+diVLjfguDpEobWolc=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=jD+aNdnpOi5kj3XpFfuEwBm+rUlcD3+greOb9QgSs0gonsM04lvDyvSx95YYz8mOqRqbA5MkcCyZHQ9hun705GC1G+C9ZU+Q8mJdvMP8l7D+DuzboTQheRHCp4RdyaEyE9yndqPmY4N4GnroycQ1IkkzLYPsu00J54/2xNgCKxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=T0Dug21R; arc=none smtp.client-ip=209.85.215.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com
Received: by mail-pg1-f201.google.com with SMTP id 41be03b00d2f7-b56ae0c8226so1624646a12.2
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 16:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760744118; x=1761348918; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=uBtgf5vnEXmLQ0VM1QPw2ajUDmPAziTO20ovX0Hz/e4=;
        b=T0Dug21RBPacxuq9zoJRSUX0mjl+I0dwFbMLfFlo3Tu6F+8y9ItQuPXUksc1tuQwkG
         zxLCcwLkvbIA6Coh5hu4KF2bcD3ZSCHWWKLNG5C2jlXunxnS49AqV+4vOFM9nRD3tuwN
         zjYTvQUkDgtbK0rBkwXzbsm0E4xUA+3HJ/cXPb0k0TdXxcRGqDx4fRtAl6Iihy0cIy+R
         BZaWLS2OziWXrP6CkoFwArOvA44EmQrU1lgeQ8/E7b1YsMtDK8E4KaYRgZqw0UYh3OQ6
         paDUJ+eOtZhYE2TNPPXsuUxKG351Wmj9hd381uLIkcMUddRNJsfbNb/rW8MC7oJvyQ3h
         ZLiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760744118; x=1761348918;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uBtgf5vnEXmLQ0VM1QPw2ajUDmPAziTO20ovX0Hz/e4=;
        b=vKfFDPgQxerGup8Nj1YYcnXfOSBTJls6s/F3iGUTz2PtLPGSDhQrA34gX+xNKBScg9
         x6cDispk2BORgdFTHzqrmpALMsqi3Wfb4W3jCMyXthtTh0n/dTEtrWwxYfHYNIiySpOn
         sZsnFkYZDTpIl0LIjizrsZwI0UcyWACtFd04fnnBWmDlbxVndPK4XPPUuhO0qrNJNfYD
         /g3ycH2qjPFb8EqZy1RS03foEBWrzN4WapGySPjNE2yxLyoVXIZ/PuXhmRzCrgLjqFGP
         S88+4+3T6JUMGz9SrLwtQ9sguf97CRNsKnGgbg5OwBDZ8bgAun1N9pkGnLXBe8xbHwe0
         4Qkw==
X-Forwarded-Encrypted: i=1; AJvYcCX64qPv/O6gbGh/qNWOk+qJ/bTX2ZUDv9SSvcWW3L5um62GGh9Tr7PEb9IaU34kxQSF9tBk+BBHVGxm@vger.kernel.org
X-Gm-Message-State: AOJu0YwPXee+aO9QH7aBCMdVBl/2IcyE3GS95wjwdeSB7dh74QoW0ayi
	4+7k70hTPbJtbJxqDFCbvlKfwoniBu+dCA1VUNUs8YBbwtbqoWpIsxeeD7f8qdDTi5OYmGVy33a
	Pc839AQ==
X-Google-Smtp-Source: AGHT+IFhiZ7zlyGtCjXNqejcRcaQZDSmUdfiNBTRmnq1ief791h4f8sHMX2o8msPyY/DXfgtDuAuhD1mh/U=
X-Received: from pjbsj14.prod.google.com ([2002:a17:90b:2d8e:b0:33b:cfa0:dd8a])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a17:90b:3144:b0:335:2b86:f319
 with SMTP id 98e67ed59e1d1-33bcf919094mr7035036a91.35.1760744118117; Fri, 17
 Oct 2025 16:35:18 -0700 (PDT)
Date: Fri, 17 Oct 2025 23:34:58 +0000
In-Reply-To: <20251017233459.2409975-1-royluo@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20251017233459.2409975-1-royluo@google.com>
X-Mailer: git-send-email 2.51.0.858.gf9c4a03a3a-goog
Message-ID: <20251017233459.2409975-2-royluo@google.com>
Subject: [PATCH v4 1/2] dt-bindings: usb: dwc3: Add Google Tensor G5 DWC3
From: Roy Luo <royluo@google.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>, 
	Badhri Jagan Sridharan <badhri@google.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Document the device tree bindings for the DWC3 USB controller found in
Google Tensor SoCs, starting with the G5 generation.

The Tensor G5 silicon represents a complete architectural departure from
previous generations (like gs101), including entirely new clock/reset
schemes, top-level wrapper and register interface. Consequently,
existing Samsung/Exynos DWC3 USB bindings are incompatible, necessitating
this new device tree binding.

The USB controller on Tensor G5 is based on Synopsys DWC3 IP and features
Dual-Role Device single port with hibernation support.

Signed-off-by: Roy Luo <royluo@google.com>
---
 .../bindings/usb/google,gs5-dwc3.yaml         | 135 ++++++++++++++++++
 1 file changed, 135 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/google,gs5-dwc3.yaml

diff --git a/Documentation/devicetree/bindings/usb/google,gs5-dwc3.yaml b/Documentation/devicetree/bindings/usb/google,gs5-dwc3.yaml
new file mode 100644
index 000000000000..09756bf6fd3c
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/google,gs5-dwc3.yaml
@@ -0,0 +1,135 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2025, Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/google,gs5-dwc3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Tensor Series (G5+) DWC3 USB SoC Controller
+
+maintainers:
+  - Roy Luo <royluo@google.com>
+
+description:
+  Describes the DWC3 USB controller block implemented on Google Tensor SoCs,
+  starting with the G5 generation. Based on Synopsys DWC3 IP, the controller
+  features Dual-Role Device single port with hibernation add-on.
+
+properties:
+  compatible:
+    const: google,gs5-dwc3
+
+  reg:
+    items:
+      - description: Core DWC3 IP registers.
+      - description: USB host controller configuration registers.
+      - description: USB custom interrrupts control registers.
+
+  reg-names:
+    items:
+      - const: dwc3_core
+      - const: host_cfg
+      - const: usbint_cfg
+
+  interrupts:
+    items:
+      - description: Core DWC3 interrupt.
+      - description: High speed power management event for remote wakeup.
+      - description: Super speed power management event for remote wakeup.
+
+  interrupt-names:
+    items:
+      - const: core
+      - const: hs_pme
+      - const: ss_pme
+
+  clocks:
+    items:
+      - description: Non-sticky module clock.
+      - description: Sticky module clock.
+
+  clock-names:
+    items:
+      - const: non_sticky
+      - const: sticky
+
+  resets:
+    items:
+      - description: Non-sticky module reset.
+      - description: Sticky module reset.
+      - description: DRD bus reset.
+      - description: Top-level reset.
+
+  reset-names:
+    items:
+      - const: non_sticky
+      - const: sticky
+      - const: drd_bus
+      - const: top
+
+  power-domains:
+    items:
+      - description: Power switchable domain, the child of top domain.
+          Turning it on puts the controller into full power state,
+          turning it off puts the controller into power gated state.
+      - description: Top domain, the parent of power switchable domain.
+          Turning it on puts the controller into power gated state,
+          turning it off completely shuts off the controller.
+
+  power-domain-names:
+    items:
+      - const: psw
+      - const: top
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
+  - clock-names
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
+            reg = <0 0x0c400000  0 0xd060>, <0 0x0c450000 0 0x14>, <0 0x0c450020 0 0x43>;
+            reg-names = "dwc3_core", "host_cfg", "usbint_cfg";
+            interrupts = <GIC_SPI 580 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH 0>;
+            interrupt-names = "core", "hs_pme", "ss_pme";
+            clocks = <&hsion_usbc_non_sticky_clk>,  <&hsion_usbc_sticky_clk>;
+            clock-names = "non_sticky", "sticky";
+            resets = <&hsion_resets_usbc_non_sticky>, <&hsion_resets_usbc_sticky>,
+                     <&hsion_resets_usb_drd_bus>, <&hsion_resets_usb_top>;
+            reset-names = "non_sticky", "sticky", "drd_bus", "top";
+            power-domains = <&hsio_n_usb_psw>, <&hsio_n_usb>;
+            power-domain-names = "psw", "top";
+            phys = <&usb_phy 0>;
+            phy-names = "usb2-phy";
+            snps,quirk-frame-length-adjustment = <0x20>;
+            snps,gfladj-refclk-lpm-sel-quirk;
+            snps,incr-burst-type-adjustment = <4>;
+        };
+    };
+...
-- 
2.51.0.858.gf9c4a03a3a-goog


