Return-Path: <devicetree+bounces-159105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FABCA69B50
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 22:52:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE90419C11C9
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 21:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3319621C9F9;
	Wed, 19 Mar 2025 21:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="A7Q0LBA/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com [209.85.208.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE3221B9D5
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 21:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742421094; cv=none; b=hKRPigjvBJLWROwwek3MpVIpHhQ6X9y5xHJXCx/038i+jP8rSTqFZJQJls3hysUYSaTqiXbltSv51Sh2toZ/6KjsvftOyyHjUw5a8Eu+PgUay3NlBZ3nyhloSXyDo3J+o9FccklUp4Ug76FAg0scE2qYLwaRd6aMU4PBX49hr1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742421094; c=relaxed/simple;
	bh=1k00ZPSbe+u73O93XUJQSZ9BJLlOaPaki/m1ZdOztYg=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bkSdJJhAL2Qz7ArdvRlxqsrkuxZvbFj1uYwmDsLOp4nzUIqowu+ZviERshgoN4DNoUAVTZpiSaTb8JW6jcGZtjhUVHTPjoCSYaf0nQDDokRVmi2KV487V6ptrejAZKOyx/7FnjVWBxfAJ9ZHMUsCtIpWxDxyGbBh86fRNXR7csE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=A7Q0LBA/; arc=none smtp.client-ip=209.85.208.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f66.google.com with SMTP id 4fb4d7f45d1cf-5e5cded3e2eso235047a12.0
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 14:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1742421089; x=1743025889; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VGboxmMcozIYFpgNSd3yUXiFLJRnkvYuern9jhJu7Ss=;
        b=A7Q0LBA/RA4iTPsi1VKfKFHIe36DIr+VfxeADrCa6tM3kHyJcRvQL670T/AGm4Wh3l
         7vuHOZNYf8Z+aWJnjSwhapccbGBstcbtPBfJAleVezzGKxrpXz43CWh9nvtn9MqKIN0S
         RDWopb/ANrQcHtFKxzCQ/G9d0k8RL/l7/33gSBOBVef0/ey1UpZYTnSm5T2PC19mRX9a
         phS62WXyr1jKluLNS/UpWhCaMHud37ALZeBAvtTNC6xdehg3CmcJhmhjfRJARzfkIAun
         DMFGlTl2sHj7ZlqdwVJd87r9ePSJRrjICRiplBxQZDFQSEyqxNGpbvPQN0bwdXszj9LJ
         rz1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742421089; x=1743025889;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VGboxmMcozIYFpgNSd3yUXiFLJRnkvYuern9jhJu7Ss=;
        b=gLNCZnIRziYOhOVcKll6b5Bu617yangcNvNpsKRvlpvX//7qI5HanFoP1EEsAb3hxW
         qyaLAQsIB0XI/H6ip6gI0fhRQx0SHsVvbnr2sO1jKLYqtTivPLQfDyXIjq8yNuvHtsFD
         IyyCxsfWUp535HAjaa6d7heiWZs2tqF5gnm++/QBAc0xmO1oF/oviZL0wVP+Il7UTajW
         22LWTck5Jt0vHwH+cUo4vnqKYy+SCrOaKxYIwlWdoNpcwIJOnCTpc1xp5Fg5vpRf6f63
         4qhAzbtVo9hEalAMCfXEuw6cD7iAkmJ2tFkqdyjqnAC8tGG/lQXDV/AlSscSbswvl7al
         gn6A==
X-Forwarded-Encrypted: i=1; AJvYcCXfkjb86umgN5eicn87QC1PzEFzWA++xOd3LopkQ1bQTaAPwCLExWOO5OMt7EUFjXlgOKiDvCjbv7OO@vger.kernel.org
X-Gm-Message-State: AOJu0YxfiWKENipnv49VlPofFK4j24srEXxKyokJaEwwCa9lBPZSxPct
	9rd4Lm4m3QOYIh5Y0vL+JOTxACVzOFgW3co0fZ54nnkz65+zVKayiuLYo36XFJk=
X-Gm-Gg: ASbGncveuijk/eYRVRLMj4hDQBTTwExCCu08ipN4e+vpo4paUpQcwTSzCZMde/S3woi
	zROv+YynSaw+0x3O+Z7xhUNxEq4/J0gRKIln3eLtwZlTFeqhvse3LcgvnCZDgYFafI45BNLlqgF
	9UThtsR894ov21KoAJz2lLE5vWn97T/TMEJsqvRgNMw7wzdzV7vMFWxiiWyQyMokKOorzZAghRa
	TOZE4UykynVSfW+632/sEuSGU22NoQugSvoj0vJ3rE1AoAKab3xut8IneSq75ap8Kj38jlALms4
	73CDzDilhl8goRII0XddGBvkeMtkBr1UbSWXyphZkY296fW+S3DMdrse/+MbRmRohzdshZvKUbC
	LXbUNMFZVtQ==
X-Google-Smtp-Source: AGHT+IE/lWyTKOcI7KzrkoM/2SJgdwEz/B/+pf6EC4EezgGKDC83VB+i8A4JON4ZDoLTQ4SKumy14Q==
X-Received: by 2002:a05:6402:27c6:b0:5e8:bf2a:7e8c with SMTP id 4fb4d7f45d1cf-5eb80d1940bmr4871093a12.11.1742421089231;
        Wed, 19 Mar 2025 14:51:29 -0700 (PDT)
Received: from localhost (host-87-4-238-14.retail.telecomitalia.it. [87.4.238.14])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e816973fb5sm9602631a12.27.2025.03.19.14.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 14:51:28 -0700 (PDT)
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
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Phil Elwell <phil@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	kernel-list@raspberrypi.com
Subject: [PATCH v8 04/13] dt-bindings: misc: Add device specific bindings for RaspberryPi RP1
Date: Wed, 19 Mar 2025 22:52:25 +0100
Message-ID: <e220e2ee4f64d99b44b739f1d10a5a4cb28132e8.1742418429.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1742418429.git.andrea.porta@suse.com>
References: <cover.1742418429.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RP1 is a MFD that exposes its peripherals through PCI BARs. This
schema is intended as minimal support for the clock generator and
gpio controller peripherals which are accessible through BAR1.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 .../devicetree/bindings/misc/pci1de4,1.yaml   | 137 ++++++++++++++++++
 1 file changed, 137 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/pci1de4,1.yaml

diff --git a/Documentation/devicetree/bindings/misc/pci1de4,1.yaml b/Documentation/devicetree/bindings/misc/pci1de4,1.yaml
new file mode 100644
index 000000000000..2f9a7a554ed8
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/pci1de4,1.yaml
@@ -0,0 +1,137 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/pci1de4,1.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RaspberryPi RP1 MFD PCI device
+
+maintainers:
+  - A. della Porta <andrea.porta@suse.com>
+
+description:
+  The RaspberryPi RP1 is a PCI multi function device containing
+  peripherals ranging from Ethernet to USB controller, I2C, SPI
+  and others.
+  The peripherals are accessed by addressing the PCI BAR1 region.
+
+allOf:
+  - $ref: /schemas/pci/pci-ep-bus.yaml
+
+properties:
+  compatible:
+    additionalItems: true
+    maxItems: 3
+    items:
+      - const: pci1de4,1
+
+  '#interrupt-cells':
+    const: 2
+    description: |
+      Specifies respectively the interrupt number and flags as defined
+      in include/dt-bindings/interrupt-controller/irq.h.
+      Since all interrupts are active high, only IRQ_TYPE_LEVEL_HIGH
+      and IRQ_TYPE_EDGE_RISING can be specified as type flags.
+      The supported values for the interrupt number are:
+        - IO BANK0: 0
+        - IO BANK1: 1
+        - IO BANK2: 2
+        - AUDIO IN: 3
+        - AUDIO OUT: 4
+        - PWM0: 5
+        - ETH: 6
+        - I2C0: 7
+        - I2C1: 8
+        - I2C2: 9
+        - I2C3: 10
+        - I2C4: 11
+        - I2C5: 12
+        - I2C6: 13
+        - I2S0: 14
+        - I2S1: 15
+        - I2S2: 16
+        - SDIO0: 17
+        - SDIO1: 18
+        - SPI0: 19
+        - SPI1: 20
+        - SPI2: 21
+        - SPI3: 22
+        - SPI4: 23
+        - SPI5: 24
+        - UART0: 25
+        - TIMER0: 26
+        - TIMER1: 27
+        - TIMER2: 28
+        - TIMER3: 29
+        - USB HOST0: 30
+        - USB HOST0-0: 31
+        - USB HOST0-1: 32
+        - USB HOST0-2: 33
+        - USB HOST0-3: 34
+        - USB HOST1: 35
+        - USB HOST1-0: 36
+        - USB HOST1-1: 37
+        - USB HOST1-2: 38
+        - USB HOST1-3: 39
+        - DMA: 40
+        - PWM1: 41
+        - UART1: 42
+        - UART2: 43
+        - UART3: 44
+        - UART4: 45
+        - UART5: 46
+        - MIPI0: 47
+        - MIPI1: 48
+        - VIDEO OUT: 49
+        - PIO0: 50
+        - PIO1: 51
+        - ADC FIFO: 52
+        - PCIE OUT: 53
+        - SPI6: 54
+        - SPI7: 55
+        - SPI8: 56
+        - PROC MISC: 57
+        - SYSCFG: 58
+        - CLOCKS DEFAULT: 59
+        - VBUSCTRL: 60
+
+  interrupt-controller: true
+
+unevaluatedProperties: false
+
+required:
+  - compatible
+  - '#interrupt-cells'
+  - interrupt-controller
+  - pci-ep-bus@1
+
+examples:
+  - |
+    pci {
+        #address-cells = <3>;
+        #size-cells = <2>;
+
+        rp1@0,0 {
+            compatible = "pci1de4,1";
+            ranges = <0x01 0x00 0x00000000  0x82010000 0x00 0x00  0x00 0x400000>;
+            #address-cells = <3>;
+            #size-cells = <2>;
+            interrupt-controller;
+            #interrupt-cells = <2>;
+
+            pci_ep_bus: pci-ep-bus@1 {
+                compatible = "simple-bus";
+                ranges = <0x00 0x40000000  0x01 0x00 0x00000000  0x00 0x00400000>;
+                dma-ranges = <0x10 0x00000000  0x43000000 0x10 0x00000000  0x10 0x00000000>;
+                #address-cells = <2>;
+                #size-cells = <2>;
+
+                rp1_clocks: clocks@40018000 {
+                    compatible = "raspberrypi,rp1-clocks";
+                    reg = <0x00 0x40018000 0x0 0x10038>;
+                    #clock-cells = <1>;
+                    clocks = <&clk_rp1_xosc>;
+                };
+            };
+        };
+    };
-- 
2.35.3


