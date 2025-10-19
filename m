Return-Path: <devicetree+bounces-228502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EBCBEE5F0
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 15:06:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 935AB4E2907
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 13:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1C102EAB72;
	Sun, 19 Oct 2025 13:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l7p+IfzR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269972E9ED5
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 13:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760879142; cv=none; b=D6S4YD6gZ4E9eTL/V09qr+y7rP6D/hzCUtfLDG0oAfzlCAVXGrQ5dJ6Q3Pp0s0i675iKTfy+aGfCK3Wx439Z4KpkGrCh4Cy4a6kpuPXyGZfqz2KsUee0IgJmxs+kgBjkZx0OGkfkXVJZGj/crIwIa/iI7WfCVEzk/omtvMMjV8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760879142; c=relaxed/simple;
	bh=JsT5NK1zTj7KQJrzjcqu+0crhyuCqp95RzeoZhN6uLM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RxC3yNQD55JmZ2RgsKgNQZV595ZmGhqVkuVMvjGdAy31O0wc89SZw+R16qFB+4V8tPmvzjySej2hJlYy2UsggNXpwYpee7twQHcTOVpoNpOYVCYbZCzQLng1Avo5bXGv1xUY2Ouj5hM5zne+6GVouxOkbgwsZG9os9ofqdU6vFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l7p+IfzR; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b6a7ed1ff9eso935360a12.0
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 06:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760879140; x=1761483940; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MrinQrYzgVX7kMJLttKm9bhZ/fDDC3iOD/xiZ0pgvMY=;
        b=l7p+IfzRc9aGWbcAnNFCbpK31OKNieWfvqzi4Z026Rw0hBPPLxpNXMUgcW8dLfSWhF
         sHm30feSJiSeOCFs+fe6mCxjwjnN9WLNfPPwt3q92LVyWsRo8Dv2EAKM+AcVRLPnOVXz
         dUmCRpDx/gvYJwibIfWQXOb4cGXcsmlS6m5J+B+fIeSx0Fxqod9w1bRIs/BkLKTdbqHT
         70gWUA7ojHDI75oOtmysYMOcxkuP1WR7FrOuLSJmBjoSudytsUgSvLftydEdHH7u4gvl
         BcthEd9E5ArSUhbqBtGpLicrZ8ub41MuKZ+9News/fdAWa7KCYtZf3ECMKVMU9cs0hBD
         8J0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760879140; x=1761483940;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MrinQrYzgVX7kMJLttKm9bhZ/fDDC3iOD/xiZ0pgvMY=;
        b=Wrs43jgtudya+AMRA+z4cu7lKaiLInteTdDc6HeB0RjjRs33jTR7TFmyANNCQ+rNka
         XdNEL3fSSvAUKE0mIaNGIr71YGGepCHoKm1wxhGlLG7qfx1fWBNQjHVD21odKNa3+c8C
         ZCsL2zmiJqvlVwfS4YLn2ONmtRFtZIGxb5IRNIJ5+ImSzLMasPHt/Qm56+4cw0ud7KXU
         hadRDqN48WnTA3psuotmirxGgOUEYHqS47Bl//UgjkEsiutEVulIVl+I/S6caGiQHRwG
         KGIfKn5Fg7x4I6iYxxNi/TOZhHeuJ6sxWrpdhEj7pLEyCgp7VjSNdHQcrdsAaCqyYzeb
         eBAg==
X-Forwarded-Encrypted: i=1; AJvYcCX6YLUNUiKkqO+OLKtnJrLgrPfUNUfz2dZI494LSFdDzsevLMa6WoIPH90JLIIhjeiWd+xGhQ1JaxnD@vger.kernel.org
X-Gm-Message-State: AOJu0YyfavuDpPJAw2aORLtnJzQ4e7rCh8T9zkecBJ0g9ZL9/OskdaWJ
	t7q0/Zxxm6i0d7aIurKsLtesMlmGcveCkVaDubT/ZP7CIENEKlZ7Vu/g
X-Gm-Gg: ASbGncux+X2fSn6iMiXv//B3EqRnyAFUY2d3ndzBefDGcoI8P0Adf6USXlt/imMpekJ
	DlmFx07p9/m/gnqvF2YKA47wJcct9Bbxg1VDzzl2VqK//XoCZ0yuPVfIa2h7rGhkHRqP9ROAG6I
	sRj5j0AgZDR6zNqdNHRMmTwG9QlAjXJiX961ezs0mXEl85x5VkKjhyhX+KeZkt8+YPIl0gv1F/3
	EUTCT0roD3SXS0Q0KTxSooJD3M8TN2OupqaEebxLkdobYM9E1kG15EQnLX7wUNeDAiaF2tqVjyF
	ceEwmHFDOKU48UapKP6XscQF+8o7oUANR4EZsUQHP0qlojdPsr8XKB8Xp21ukjAt4qbf5DS6MAY
	QELCv2OdNxA//GuQFEDmGhcu+7Y7bVsEBCR64Y0TOnogsD1Lm6GE5qG0URoJZHvo802/U8FKpAf
	xo9mdvmy+/4mn/J6yeGpVfEAcJK9HY/vuJwU0=
X-Google-Smtp-Source: AGHT+IFdyLAfgkVyCjuW2s5z+81maE2n8r2PrW7vp2cU4qpfHopg+k47EsaU7YZu/GfD1XcZIEpNYA==
X-Received: by 2002:a17:903:19f0:b0:286:d3c5:4d15 with SMTP id d9443c01a7336-290cb947798mr144586895ad.36.1760879140095;
        Sun, 19 Oct 2025 06:05:40 -0700 (PDT)
Received: from Black-Pearl.localdomain ([223.181.116.113])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-292471d5c33sm52842425ad.73.2025.10.19.06.05.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 06:05:39 -0700 (PDT)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Sun, 19 Oct 2025 13:04:38 +0000
Subject: [PATCH v4 2/2] dt-bindings: mmc: ti,omap2430-sdhci: convert to DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251019-ti-sdhci-omap-v4-2-fdc63aaeb083@gmail.com>
References: <20251019-ti-sdhci-omap-v4-0-fdc63aaeb083@gmail.com>
In-Reply-To: <20251019-ti-sdhci-omap-v4-0-fdc63aaeb083@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Barker <paul.barker@sancloud.com>, 
 Marc Murphy <marc.murphy@sancloud.com>, Tony Lindgren <tony@atomide.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.2

Convert TI OMAP SDHCI Controller binding to YAML format.
Changes during Conversion:
- Define new properties like "clocks", "clock-names",
  "ti,needs-special-reset", "ti,needs-special-hs-handling",
  "pbias-supply", "cap-mmc-dual-data-rate" and "power-domains" to
  resolve dtb_check errors.
- Remove "pinctrl-names" and "pinctrl-<n>"
  from required as they are not necessary for all DTS files.
- Remove "ti,hwmods" property entirely from the YAML as the
  DTS doesn't contain this property for the given compatibles and the
  text binding is misleading.
- Add "clocks", "clock-names", "max-frequency" and "ti,needs-special-reset"
  to the required properties based on the compatible and the text binding
  doesn't mention these properties as required.
- Add missing strings like "default-rev11", "sdr12-rev11", "sdr25-rev11",
  "hs-rev11", "sdr25-rev11" and "sleep" to pinctrl-names string array
  to resolve errors detected by dtb_check.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../devicetree/bindings/mmc/sdhci-omap.txt         |  43 -----
 .../devicetree/bindings/mmc/ti,omap2430-sdhci.yaml | 201 +++++++++++++++++++++
 2 files changed, 201 insertions(+), 43 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-omap.txt b/Documentation/devicetree/bindings/mmc/sdhci-omap.txt
deleted file mode 100644
index f91e341e6b36c410275e6f993dd08400be3fc1f8..0000000000000000000000000000000000000000
--- a/Documentation/devicetree/bindings/mmc/sdhci-omap.txt
+++ /dev/null
@@ -1,43 +0,0 @@
-* TI OMAP SDHCI Controller
-
-Refer to mmc.txt for standard MMC bindings.
-
-For UHS devices which require tuning, the device tree should have a "cpu_thermal" node which maps to the appropriate thermal zone. This is used to get the temperature of the zone during tuning.
-
-Required properties:
-- compatible: Should be "ti,omap2430-sdhci" for omap2430 controllers
-	      Should be "ti,omap3-sdhci" for omap3 controllers
-	      Should be "ti,omap4-sdhci" for omap4 and ti81 controllers
-	      Should be "ti,omap5-sdhci" for omap5 controllers
-	      Should be "ti,dra7-sdhci" for DRA7 and DRA72 controllers
-	      Should be "ti,k2g-sdhci" for K2G
-	      Should be "ti,am335-sdhci" for am335x controllers
-	      Should be "ti,am437-sdhci" for am437x controllers
-- ti,hwmods: Must be "mmc<n>", <n> is controller instance starting 1
-	     (Not required for K2G).
-- pinctrl-names: Should be subset of "default", "hs", "sdr12", "sdr25", "sdr50",
-		 "ddr50-rev11", "sdr104-rev11", "ddr50", "sdr104",
-		 "ddr_1_8v-rev11", "ddr_1_8v" or "ddr_3_3v", "hs200_1_8v-rev11",
-		 "hs200_1_8v",
-- pinctrl-<n> : Pinctrl states as described in bindings/pinctrl/pinctrl-bindings.txt
-
-Optional properties:
-- dmas:		List of DMA specifiers with the controller specific format as described
-		in the generic DMA client binding. A tx and rx specifier is required.
-- dma-names:	List of DMA request names. These strings correspond 1:1 with the
-		DMA specifiers listed in dmas. The string naming is to be "tx"
-		and "rx" for TX and RX DMA requests, respectively.
-
-Deprecated properties:
-- ti,non-removable: Compatible with the generic non-removable property
-
-Example:
-	mmc1: mmc@4809c000 {
-		compatible = "ti,dra7-sdhci";
-		reg = <0x4809c000 0x400>;
-		ti,hwmods = "mmc1";
-		bus-width = <4>;
-		vmmc-supply = <&vmmc>; /* phandle to regulator node */
-		dmas = <&sdma 61 &sdma 62>;
-		dma-names = "tx", "rx";
-	};
diff --git a/Documentation/devicetree/bindings/mmc/ti,omap2430-sdhci.yaml b/Documentation/devicetree/bindings/mmc/ti,omap2430-sdhci.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..25a8eecfcd37fba7048e0ffae21168f24d6c99d7
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/ti,omap2430-sdhci.yaml
@@ -0,0 +1,201 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/ti,omap2430-sdhci.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI OMAP SDHCI Controller
+
+maintainers:
+  - Kishon Vijay Abraham I <kishon@ti.com>
+
+description:
+  For UHS devices which require tuning, the device tree should have a
+  cpu_thermal node which maps to the appropriate thermal zone. This
+  is used to get the temperature of the zone during tuning.
+
+properties:
+  compatible:
+    enum:
+      - ti,omap2430-sdhci
+      - ti,omap3-sdhci
+      - ti,omap4-sdhci
+      - ti,omap5-sdhci
+      - ti,dra7-sdhci
+      - ti,k2g-sdhci
+      - ti,am335-sdhci
+      - ti,am437-sdhci
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: fck
+      - const: mmchsdb_fck
+
+  dmas:
+    maxItems: 2
+
+  dma-names:
+    items:
+      - const: tx
+      - const: rx
+
+  pinctrl-names:
+    minItems: 1
+    maxItems: 14
+    items:
+      enum:
+        - default
+        - default-rev11
+        - hs
+        - sdr12
+        - sdr12-rev11
+        - sdr25
+        - sdr25-rev11
+        - sdr50
+        - ddr50-rev11
+        - sdr104-rev11
+        - ddr50
+        - sdr104
+        - ddr_1_8v-rev11
+        - ddr_1_8v
+        - ddr_3_3v
+        - hs-rev11
+        - hs200_1_8v-rev11
+        - hs200_1_8v
+        - sleep
+
+  pinctrl-0:
+    maxItems: 1
+
+  pinctrl-1:
+    maxItems: 1
+
+  pinctrl-2:
+    maxItems: 1
+
+  pinctrl-3:
+    maxItems: 1
+
+  pinctrl-4:
+    maxItems: 1
+
+  pinctrl-5:
+    maxItems: 1
+
+  pinctrl-6:
+    maxItems: 1
+
+  pinctrl-7:
+    maxItems: 1
+
+  pinctrl-8:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  pbias-supply:
+    description:
+      It is used to specify the voltage regulator that provides the bias
+      voltage for certain analog or I/O pads.
+
+  cap-mmc-dual-data-rate:
+    description:
+      A characteristic or capability associated with MultiMediaCard (MMC)
+      interfaces, specifically indicating that the MMC controller
+      supports Dual Data Rate (DDR) mode.
+    type: boolean
+
+  ti,needs-special-reset:
+    description:
+      It indicates that a specific soft reset sequence is required for
+      certain Texas Instruments devices, particularly those with
+      HSMMC (High-Speed MultiMediaCard) controllers.
+    type: boolean
+
+  ti,needs-special-hs-handling:
+    description:
+      It's presence in an MMC controller's DT node signals to the Linux kernel's
+      omap_hsmmc driver that this particular IP block requires special software
+      handling or workarounds to correctly manage High-Speed (HS) modes like
+      SDR25, SDR50, SDR104, DDR50.
+    type: boolean
+
+  ti,non-removable:
+    description:
+      It indicates that a component is not meant to be easily removed or
+      replaced by the user, such as an embedded battery or a non-removable
+      storage slot like eMMC.
+    type: boolean
+    deprecated: true
+
+  clock-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      It represents the speed at which a clock signal associated with a device
+      or bus operates, measured in Hertz (Hz). This value is crucial for configuring
+      hardware components that require a specific clock speed.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+allOf:
+  - $ref: sdhci-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,dra7-sdhci
+              - ti,k2g-sdhci
+    then:
+      required:
+        - max-frequency
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ti,k2g-sdhci
+    then:
+      required:
+        - clocks
+        - clock-names
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,am335-sdhci
+              - ti,am437-sdhci
+    then:
+      required:
+        - ti,needs-special-reset
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    mmc@4809c000 {
+        compatible = "ti,dra7-sdhci";
+        reg = <0x4809c000 0x400>;
+        interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+        max-frequency = <192000000>;
+        sdhci-caps-mask = <0x0 0x400000>;
+        bus-width = <4>;
+        vmmc-supply = <&vmmc>; /* phandle to regulator node */
+        dmas = <&sdma 61>, <&sdma 62>;
+        dma-names = "tx", "rx";
+    };
+...

-- 
2.51.0


