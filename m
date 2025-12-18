Return-Path: <devicetree+bounces-247991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EACCCD5F6
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 20:24:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8ABE2302BC6F
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 19:24:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DFDE3358D2;
	Thu, 18 Dec 2025 19:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="fqX5XZFR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f202.google.com (mail-pg1-f202.google.com [209.85.215.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC913334696
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 19:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766085861; cv=none; b=aSG9mNWqxI1+FlgxSt2fKbB2AGUZNXR0Jh1ybhHCb5m5L1iJKkeQJ4wQicsdx/8q/8jBdcwhm+AQmPZZbsc/4XKmG7wZ68lgctDXsDmCkcvPs8m3ZACtijJPxvlYOrPuVvOOJQrdaR0eEH3iCX+Om7PYA2Q1+8Xx0J/NwPNDKck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766085861; c=relaxed/simple;
	bh=ZJ0IssI4zNzaruHS9OTE6D+AnYa3QijDEC/j1EyBmMc=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=AzEDaGQY5awDzgSiqc9hRtP4G2WrY0NfziEgGqNQpQ5X3css5O4njnB/suN8zmTB98s4c9DOcHglZW5KWe9LJgXtbsaasga4CiiAUb6SETYWVrAhTp5PVf/5OIPjk4GTh1UdHezOHmRDcq/GWkpuPtf7F3oz7CyOq00F2XEf178=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=fqX5XZFR; arc=none smtp.client-ip=209.85.215.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com
Received: by mail-pg1-f202.google.com with SMTP id 41be03b00d2f7-bce224720d8so1607440a12.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 11:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1766085859; x=1766690659; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=+1jAO5OkFctgjgvLFeR5GZWAlUuaUk1lRHaPxMi+Zmg=;
        b=fqX5XZFR2Exv4h7zjp84UbjHg8WqM7habiWbNBnMynglHWHDhGevqmGZBJ6jAMUSLI
         uEk2TLAKm0o6ArfF9ZLP0oWtMwarPnjFjhfhIGbD1YXtaLEDo0JQl/ETJk53TyPOOGeF
         14/VrwwbKqCQFsRQLCPKy8vzKvK3GOcLgQhDPDNcDsifsFl/qbItWtp0r+0RsJ9DYDMA
         RmFeK09F6eXTCxQpkcnvZV5Mc13+OgdanOjCbMh6Pa75M9jNkxlMWoryx2YBVIPzjbQr
         qF4H8BAcp0F2tBzMm07v9H9tGdYNpqpgjHCgqHrFZHCHQdWUZahTrtcizOHXVhGrRDWx
         ideA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766085859; x=1766690659;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+1jAO5OkFctgjgvLFeR5GZWAlUuaUk1lRHaPxMi+Zmg=;
        b=qJTxKy01LTvSx339T5gaYjb8T0mr7zkk0ghCydnPjEDMWS2VLwyjerzJBkKm0aGznv
         Eid2O112HmFC8JK0waC6iXymZuKHWmK4aqNelCUSt3sINufGyTZaVHi6/vJlUss8u+aX
         UPYy5QlQpta37cb3QbWPDkvrsFkeD8FYi8Hq/uAVzWcPKhow17w7robvnxu9d6fCnINl
         Y334cEMFt86l6j4s9dE31DcOlr91wU9yPRWObmU1QtSJqRRtShE93UJ65Pxxd5hedbIr
         nYqmNQ35BInZ/H9lblH6PzFa8z22b0za/AXDbyEfPIeNiFTO81g96+QJBvGJFhJLeNMA
         Iqhg==
X-Forwarded-Encrypted: i=1; AJvYcCX0eXYvJ6yYRDINdv5u8CFGDLGlTTbU+d3oN3mYYruuW5m/mdrMVo/LF+0JeWRIh5Qu8oR9jtif85SG@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9Yk42yX1LmsuUAanx1CJPUnzkDUslKR1v+5Bz8QJPmpxKgDmr
	O5GFxKbGK0ZOi6JxUCHUwqQaA5nu22gR/J9Pxh2RFKtQalBbB/g6KPtTwcFLyKPUu4TgqTILQfS
	BNEFuSw==
X-Google-Smtp-Source: AGHT+IGKOqN4k5awIv9aD0au2NSr+t5mWfUOKpwiwuv/7H24jzBLzxLGFSCpv0hVhDHUb1AeXCYKsxKfli0=
X-Received: from dybcq12.prod.google.com ([2002:a05:7300:a10c:b0:2ac:20c:bf8c])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a05:7300:80c2:b0:2ae:4be1:db4a
 with SMTP id 5a478bee46e88-2b05ec02ff2mr657714eec.12.1766085858827; Thu, 18
 Dec 2025 11:24:18 -0800 (PST)
Date: Thu, 18 Dec 2025 19:23:10 +0000
In-Reply-To: <20251218-controller-v10-0-4047c9077274@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20251218-controller-v10-0-4047c9077274@google.com>
X-Developer-Key: i=royluo@google.com; a=ed25519; pk=nTq1n8WcJActRWe1s8jdcy+TzpTK4a+IYRCIWvQfq5k=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766085855; l=6350;
 i=royluo@google.com; s=20251120; h=from:subject:message-id;
 bh=ZJ0IssI4zNzaruHS9OTE6D+AnYa3QijDEC/j1EyBmMc=; b=PUcZ6OJ1RjmFb8tXgV1sVQsHGGvEo3Vv97eXtlWAeK+4DWJG4ONarYEEtU583jdkdfYW4ozIu
 KmN/hpnsEVoD6SYnoemAwX00Y0hxKWMqP/Qa8iQTxc+vbq9/mm4lhFj
X-Mailer: b4 0.14.2
Message-ID: <20251218-controller-v10-1-4047c9077274@google.com>
Subject: [PATCH v10 1/2] dt-bindings: usb: dwc3: Add Google Tensor G5 DWC3
From: Roy Luo <royluo@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?utf-8?q?Andr=C3=A9_Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="utf-8"

Document the device tree bindings for the DWC3 USB controller found in
Google Tensor SoCs, starting with the G5 generation (codename: laguna).

The Tensor G5 silicon represents a complete architectural departure from
previous generations (like gs101), including entirely new clock/reset
schemes, top-level wrapper and register interface. Consequently,
existing Samsung/Exynos DWC3 USB bindings are incompatible, necessitating
this new device tree binding.

The USB controller on Tensor G5 is based on Synopsys DWC3 IP and features
Dual-Role Device single port with hibernation support.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Roy Luo <royluo@google.com>
---
 .../devicetree/bindings/usb/google,lga-dwc3.yaml   | 140 +++++++++++++++++++++
 MAINTAINERS                                        |   1 +
 2 files changed, 141 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/google,lga-dwc3.yaml b/Documentation/devicetree/bindings/usb/google,lga-dwc3.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..95be84c843f5da0e80ef5ef1ac9193019b5eb2a0
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/google,lga-dwc3.yaml
@@ -0,0 +1,140 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2025, Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/google,lga-dwc3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Tensor Series G5 (Laguna) DWC3 USB SoC Controller
+
+maintainers:
+  - Roy Luo <royluo@google.com>
+
+description:
+  Describes the DWC3 USB controller block implemented on Google Tensor SoCs,
+  starting with the G5 generation (laguna). Based on Synopsys DWC3 IP, the
+  controller features Dual-Role Device single port with hibernation add-on.
+
+properties:
+  compatible:
+    const: google,lga-dwc3
+
+  reg:
+    items:
+      - description: Core DWC3 IP registers.
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
+  google,usb-cfg-csr:
+    description:
+      A phandle to a syscon node used to access the USB configuration
+      registers. These registers are the top-level wrapper of the USB
+      subsystem and provide control and status for the integrated USB
+      controller and USB PHY.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to the syscon node.
+          - description: USB host controller configuration register offset.
+          - description: USB custom interrrupts control register offset.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - power-domains
+  - power-domain-names
+  - google,usb-cfg-csr
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
+            compatible = "google,lga-dwc3";
+            reg = <0 0x0c400000  0 0xd060>;
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
+            google,usb-cfg-csr = <&usb_cfg_csr 0x0 0x20>;
+        };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 5b11839cba9de1e9e43f63787578edd8c429ca39..5c8fbbb63c610d4d01ed4d78b1632774603eeaa4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10722,6 +10722,7 @@ P:	Documentation/process/maintainer-soc-clean-dts.rst
 C:	irc://irc.oftc.net/pixel6-kernel-dev
 F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
 F:	Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
+F:	Documentation/devicetree/bindings/usb/google,lga-dwc3.yaml
 F:	arch/arm64/boot/dts/exynos/google/
 F:	drivers/clk/samsung/clk-gs101.c
 F:	drivers/soc/samsung/gs101-pmu.c

-- 
2.52.0.322.g1dd061c0dc-goog


