Return-Path: <devicetree+bounces-144135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A6AA2CF8E
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 22:34:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F5703A9A51
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E61531C6FE3;
	Fri,  7 Feb 2025 21:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="hFm3vNUL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E581B4F0C
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 21:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738963863; cv=none; b=IOay+nhgv08VkVGYumsoc7Kc2HNAoJLbCM6gydDzj91T39RAQXUz8NwZJdDZslnHoBEVr765lFNovW2+i9tQnTXUC46KV2V190oo2N74FEguaB5wNTU45vTRDHSci5kSFEOm98zbTgEzMgqMiNgmZ8MmmYIn+Zn3+PdTmIs5WT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738963863; c=relaxed/simple;
	bh=YL9ZVIxpg6AYSdIiubHRuDYPrR9HDL1tXUC5aXGrN4U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DwvkjYGFplCVeVrg3GI1pMhBXu/dMdqum8PQV4r+AhSPxluEj0YJbCXNNAo3gBUW4t0UO2REIHFPRt3Ed3eyrha3+KZy6gSUk00DlzkDa+mTU11IcI4hX/AyFU25JBSHisKo8xoLuCXtdh3ZAFiU+nUpYmaE4xcQlsVZ8TdCwSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=hFm3vNUL; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-aa67ac42819so399763766b.0
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 13:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1738963859; x=1739568659; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k22uinNUU4as2fnJGUyNNeIjTSK3ekTjuJEBEX2rQT8=;
        b=hFm3vNULQ3rIdo356dRY1qTON56bCSF+GVk/onFcUJb8RhFDgV5Iyu/yvz5cUq+U+l
         ZVZWYHHJ3M7wPKC1+lxd2VkBF6jdadNLXj2En+Tp7MFZ9Jm/7dBvbdaD8al0lhf3XPIT
         l1SleI5E0yb8XpDiBwQilDbXE9zH5/Ra6g0E+IrSOI09Ga7Ev3DCc/j6rNICFPiKBfgS
         b0Ayxfc+GE68QFGaDRTCZesWzEORlf9pWfxq7rXiiliimNYFZ2D9KnzfmR3Ew8evqkNR
         5tML7i01xrRW8gy46HDngTWzuWs/H/qtOPdOm09s0EKwIM2sclboJRmmKyHEBYCm7b6l
         j+OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738963859; x=1739568659;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k22uinNUU4as2fnJGUyNNeIjTSK3ekTjuJEBEX2rQT8=;
        b=rcr8Z3zmsbgM5HejMkWfJuHpDic19LbCcJWguY3Dj1Sgu1FPUAIL1WrcnSjzOCcfwL
         txDyGHJjr1zTxz1eORgLocL2MHua8Ah8jzunOjhY/AqKExRuSXSTNyRF+NSaoNGfWUeT
         VLHDAxgKkkCUH5u2N9PUaxbJ/jsfr3AtewIb2GKqvv270McqTYhDR2lhvyB+Fqof/1Ng
         d1UYt+Wqw/3bJr8htK7AhOAoHawXjk7LDnDBZ3lDe+JcWotgTmreq1Ad46iOk6XcoWMX
         rWhsZiL9tSyCOxerpwmwhTuLBcPLOptBpl/tVrYDh3HPTDTtbYCTgoSIltXVq3wZDBYm
         RB1w==
X-Forwarded-Encrypted: i=1; AJvYcCV5LmYE4rtCCddw2h/BeWsyImUfCdC6nbUwxD/cZHdjhxKNqJoTECqmswcJH0KPdNF915IEXYt/i/oh@vger.kernel.org
X-Gm-Message-State: AOJu0YyZj3zP52qyJpAvyUEbFXCO6uvGa1+xcdkhOhrf2Udqe4E0kFke
	zCwSmkr7eZRQCNeYftBubPjvAcMimVDYNDJBFhV9/wVYZXS/nX2IgyFJG5YHjLM=
X-Gm-Gg: ASbGnctcJWjYzXpPmDtIuW/0xnuKo90w5yPcY2cEJMBnQ8MxL4K9shlpzY+tbliM0K5
	CQCJfLxNxfKfrHwX4vHxb3PFszL2cAOAoN7bUMFywIqKtreb7l7IDwf4pRUTLFf+haljXDQAY6e
	FPz053Zz2Q2xMd9Wr3HCJp+70CXGkd4eB+aUlsvfIutPAN4qi5kMobdMLZ3kRCSr2qXwLvscV4/
	9nBHzSzAtKVa1KXfTlH0tYC6cOYORo3qI+CAJTq7M4lu6jQZxsCgMr0qEiY/4TOyv8RM3l7Vx1u
	i/QBRVGSxms6h/QfMemigyTb5oU0gAdlndY85Yyt2E3EJwgvxbDEa1iw2X4=
X-Google-Smtp-Source: AGHT+IFmIgxS2BjllnErVVIQmllXFR/nxOwT9x1JNMwyIjrjzh0XM6xmRYLX66f012gDpWZkedoAvw==
X-Received: by 2002:a17:907:d15:b0:aa6:7662:c56d with SMTP id a640c23a62f3a-ab789aefdd9mr586764466b.30.1738963859050;
        Fri, 07 Feb 2025 13:30:59 -0800 (PST)
Received: from localhost (host-79-41-239-37.retail.telecomitalia.it. [79.41.239.37])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7845d8810sm235974866b.72.2025.02.07.13.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 13:30:58 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
To: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 02/11] dt-bindings: pinctrl: Add RaspberryPi RP1 gpio/pinctrl/pinmux bindings
Date: Fri,  7 Feb 2025 22:31:42 +0100
Message-ID: <4e0e1525a3468c7eaaff100f16381cb5dca086b8.1738963156.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1738963156.git.andrea.porta@suse.com>
References: <cover.1738963156.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the gpio/pin/mux controller that is part of
the RP1 multi function device, and relative entries in MAINTAINERS file.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 .../pinctrl/raspberrypi,rp1-gpio.yaml         | 198 ++++++++++++++++++
 MAINTAINERS                                   |   2 +
 2 files changed, 200 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml b/Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml
new file mode 100644
index 000000000000..9528f8675b3b
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml
@@ -0,0 +1,198 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/raspberrypi,rp1-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RaspberryPi RP1 GPIO/Pinconf/Pinmux Controller submodule
+
+maintainers:
+  - Andrea della Porta <andrea.porta@suse.com>
+
+description:
+  The RP1 chipset is a Multi Function Device containing, among other
+  sub-peripherals, a gpio/pinconf/mux controller whose 54 pins are grouped
+  into 3 banks.
+  It works also as an interrupt controller for those gpios.
+
+properties:
+  compatible:
+    const: raspberrypi,rp1-gpio
+
+  reg:
+    maxItems: 3
+    description: One reg specifier for each one of the 3 pin banks.
+
+  '#gpio-cells':
+    description: The first cell is the pin number and the second cell is used
+      to specify the flags (see include/dt-bindings/gpio/gpio.h).
+    const: 2
+
+  gpio-controller: true
+
+  gpio-ranges:
+    maxItems: 1
+
+  gpio-line-names:
+    maxItems: 54
+
+  interrupts:
+    maxItems: 3
+    description: One interrupt specifier for each one of the 3 pin banks.
+
+  '#interrupt-cells':
+    description:
+      Specifies the Bank number [0, 1, 2] and Flags as defined in
+      include/dt-bindings/interrupt-controller/irq.h.
+    const: 2
+
+  interrupt-controller: true
+
+patternProperties:
+  '-state$':
+    oneOf:
+      - $ref: '#/$defs/raspberrypi-rp1-state'
+      - patternProperties:
+          '-pins$':
+            $ref: '#/$defs/raspberrypi-rp1-state'
+        additionalProperties: false
+
+$defs:
+  raspberrypi-rp1-state:
+    allOf:
+      - $ref: pincfg-node.yaml#
+      - $ref: pinmux-node.yaml#
+
+    description:
+      Pin controller client devices use pin configuration subnodes (children
+      and grandchildren) for desired pin configuration.
+      Client device subnodes use below standard properties.
+
+    properties:
+      pins:
+        description:
+          List of gpio pins affected by the properties specified in this
+          subnode.
+        items:
+          pattern: '^gpio([0-9]|[1-4][0-9]|5[0-3])$'
+
+      function:
+        enum: [ alt0, alt1, alt2, alt3, alt4, gpio, alt6, alt7, alt8, none,
+                aaud, dcd0, dpi, dsi0_te_ext, dsi1_te_ext, dsr0, dtr0, gpclk0,
+                gpclk1, gpclk2, gpclk3, gpclk4, gpclk5, i2c0, i2c1, i2c2, i2c3,
+                i2c4, i2c5, i2c6, i2s0, i2s1, i2s2, ir, mic, pcie_clkreq_n,
+                pio, proc_rio, pwm0, pwm1, ri0, sd0, sd1, spi0, spi1, spi2,
+                spi3, spi4, spi5, spi6, spi7, spi8, uart0, uart1, uart2, uart3,
+                uart4, uart5, vbus0, vbus1, vbus2, vbus3 ]
+
+        description:
+          Specify the alternative function to be configured for the specified
+          pins.
+
+      bias-disable: true
+      bias-pull-down: true
+      bias-pull-up: true
+      input-enable: true
+      input-schmitt-enable: true
+      output-enable: true
+      output-high: true
+      output-low: true
+      slew-rate:
+        description: 0 is slow slew rate, 1 is fast slew rate
+        enum: [ 0, 1 ]
+      drive-strength:
+        enum: [ 2, 4, 8, 12 ]
+
+    additionalProperties: false
+
+allOf:
+  - $ref: pinctrl.yaml#
+
+required:
+  - reg
+  - compatible
+  - '#gpio-cells'
+  - gpio-controller
+  - interrupts
+  - '#interrupt-cells'
+  - interrupt-controller
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    rp1 {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        rp1_gpio: pinctrl@c0400d0000 {
+            reg = <0xc0 0x400d0000  0x0 0xc000>,
+                  <0xc0 0x400e0000  0x0 0xc000>,
+                  <0xc0 0x400f0000  0x0 0xc000>;
+            compatible = "raspberrypi,rp1-gpio";
+            gpio-controller;
+            #gpio-cells = <2>;
+            interrupt-controller;
+            #interrupt-cells = <2>;
+            interrupts = <0 IRQ_TYPE_LEVEL_HIGH>,
+                         <1 IRQ_TYPE_LEVEL_HIGH>,
+                         <2 IRQ_TYPE_LEVEL_HIGH>;
+            gpio-line-names =
+                   "ID_SDA", // GPIO0
+                   "ID_SCL", // GPIO1
+                   "GPIO2", "GPIO3", "GPIO4", "GPIO5", "GPIO6",
+                   "GPIO7", "GPIO8", "GPIO9", "GPIO10", "GPIO11",
+                   "GPIO12", "GPIO13", "GPIO14", "GPIO15", "GPIO16",
+                   "GPIO17", "GPIO18", "GPIO19", "GPIO20", "GPIO21",
+                   "GPIO22", "GPIO23", "GPIO24", "GPIO25", "GPIO26",
+                   "GPIO27",
+                   "PCIE_RP1_WAKE", // GPIO28
+                   "FAN_TACH", // GPIO29
+                   "HOST_SDA", // GPIO30
+                   "HOST_SCL", // GPIO31
+                   "ETH_RST_N", // GPIO32
+                   "", // GPIO33
+                   "CD0_IO0_MICCLK", // GPIO34
+                   "CD0_IO0_MICDAT0", // GPIO35
+                   "RP1_PCIE_CLKREQ_N", // GPIO36
+                   "", // GPIO37
+                   "CD0_SDA", // GPIO38
+                   "CD0_SCL", // GPIO39
+                   "CD1_SDA", // GPIO40
+                   "CD1_SCL", // GPIO41
+                   "USB_VBUS_EN", // GPIO42
+                   "USB_OC_N", // GPIO43
+                   "RP1_STAT_LED", // GPIO44
+                   "FAN_PWM", // GPIO45
+                   "CD1_IO0_MICCLK", // GPIO46
+                   "2712_WAKE", // GPIO47
+                   "CD1_IO1_MICDAT1", // GPIO48
+                   "EN_MAX_USB_CUR", // GPIO49
+                   "", // GPIO50
+                   "", // GPIO51
+                   "", // GPIO52
+                   ""; // GPIO53
+
+            rp1-i2s0-default-state {
+                function = "i2s0";
+                pins = "gpio18", "gpio19", "gpio20", "gpio21";
+                bias-disable;
+            };
+
+            rp1-uart0-default-state {
+                txd-pins {
+                    function = "uart0";
+                    pins = "gpio14";
+                    bias-disable;
+                };
+
+                rxd-pins {
+                    function = "uart0";
+                    pins = "gpio15";
+                    bias-pull-up;
+                };
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 266569c1edd9..d45c88955072 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19752,7 +19752,9 @@ RASPBERRY PI RP1 PCI DRIVER
 M:	Andrea della Porta <andrea.porta@suse.com>
 S:	Maintained
 F:	Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
+F:	Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml
 F:	include/dt-bindings/clock/rp1.h
+F:	include/dt-bindings/misc/rp1.h
 
 RC-CORE / LIRC FRAMEWORK
 M:	Sean Young <sean@mess.org>
-- 
2.35.3


