Return-Path: <devicetree+bounces-169547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D4AA974C2
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 20:52:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7904E189A1A4
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 18:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C043298CB2;
	Tue, 22 Apr 2025 18:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Q1c+qkje"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926B82980D5
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 18:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745347930; cv=none; b=F30c8YO3SsVsdMCcQ3eNp6ZDnU0Cv7ejWYhOtpE9J0kZoBXTSQIbZSANMavqosmyJhOVITcjjtg7vab3YuaQOE+90kGomwD/FhrheqsOgamdq7/jsbMyeuWzoEB+SZLxCfF09wnOJ2d252/HnZyCot84fx0CS01c2HTSJ8Rg8o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745347930; c=relaxed/simple;
	bh=1k00ZPSbe+u73O93XUJQSZ9BJLlOaPaki/m1ZdOztYg=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OBrUnKpSYBQY205toTelVEBnQJrgsOV8q9dLk9GgmSzsgiBOCIF1piTWV0XhFPCcoSItmrLIS8vxkNJnxl1tsNbHKSuCSK5Ks426xGVw3A5g7BO90HJmmc5EvPrLcFSZWqrkg4Bz4ydP5PXzchJqrsmgH1Brglnlt0eEcq9Tssc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Q1c+qkje; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-43cfe574976so41433915e9.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 11:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1745347926; x=1745952726; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VGboxmMcozIYFpgNSd3yUXiFLJRnkvYuern9jhJu7Ss=;
        b=Q1c+qkjeM82D6ETWGYkKsBP+TnV3NyXhkKkxSParlwAZiSRirYfa2L7kqrtoU8UBkd
         ankl8Wy7r7DFhU+TU7aG8m1JKga6yH5+g6Pev1Nt4MeHVvEGd5uBjtsa0pTtpR2euXr+
         lr+VdoqKc5sa9iZxBL6Cd76wHRDwN4pfMAJJk24VRZUPJWDS+xmiKQ3tTZ9xGJA9EJrt
         0OLptwnjqiVPa5NS2YWWhq6UYUVVk1l6GTTo8cW62Lo09JfD3MikuLDiWpeJeg5FEyun
         VpC20Jicg2OXdPRpw/kbrbF+RO4D1eMTujb+PRN4hinlva/9NmNO7D6xE1AB+ylBFdFZ
         Rc1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745347926; x=1745952726;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VGboxmMcozIYFpgNSd3yUXiFLJRnkvYuern9jhJu7Ss=;
        b=iplYkFV16IdVTu+GUP/nvHD+Q0IghgLiqTuyapIWUPROJQgTntlD/SIKFUoGO+MOWz
         QR6mNfH/5I7ixvbvNP9kqluRu0stPLLOkEayiNerXvjLPF3mJEsKgLQE7uOSWNI9pMSj
         D/gvTRBxHRHs+zyPABNEyLMR+zrpjlP7DKMjpBE4tKZwaAZs8kjMF23TqQGn0IevD0Mk
         9t3v9C2uBYReon20sDe/o5EYfTNRHhuqAHPkPOBF+O4p4yWyzE0aUcjvEO2i7SfSof1T
         gCyb807XzlOYjpMs9cR2AOUwfei0jRGE0M8xsIyT+4wV4nEbKtEaIMi84BFmXLoNfLJX
         X3NQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxyAB+7Z9RmwUhYAVdiD/ENqsmMwwuzVH/eVxKTdPlHQx32Ne8jys3eIIIVelcCckLyq1k6BLpU/6f@vger.kernel.org
X-Gm-Message-State: AOJu0YwflUMWiwK0mMfYx35THLnVmVc3eA2crI4SIioo7kw6Mc2w8p4i
	uNKRbUjjuepEGFsT1ReC9VBVuW0l5ZYeWoikQCd8ctwbWwvnsPjI1H+y9Tvo8e0=
X-Gm-Gg: ASbGncu++8ALfQqCMj4nthQT7+2xrryfRb9dx3DBvFvjTfehjUxVHpobDj5nPrjzh4w
	OIjJa0gotQgPD3VCi/vY5vEq0kbgpnKdlPIB2YgQ9Uo37OXH5bUy0Oz+uLfQssdrEoYnJ+q2+eo
	1AFaGGOMHwv7lZUuze2Oy6m4VYcCKDXhVYYial0T/JzbO4c/9aeShghoq2AmfDf4180hfJKnMBd
	GLQ8FrUhm0icSOjf8hbWgEwbb9pYb3geXQWSlwC+H402ujgTfHzEeepl5RkoOaF5ZSSls5hAItx
	e8fN73UacPlR08sMzY6yMMmLnpZ7JsjNagNVzpRawJgJlsZzjokkvbD6cjdM6wOI5aL8pFc=
X-Google-Smtp-Source: AGHT+IGL56KtHAwUUJmP1HuSJs07aPFJbC79YLpPa3i5f42XfBP+p5MKhnZ81z6DUwxPJLz1jUiLzg==
X-Received: by 2002:a05:600c:3c85:b0:43c:f81d:34 with SMTP id 5b1f17b1804b1-4406ab976cdmr134537415e9.9.1745347925672;
        Tue, 22 Apr 2025 11:52:05 -0700 (PDT)
Received: from localhost (93-44-188-26.ip98.fastwebnet.it. [93.44.188.26])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa4a49b5sm16062972f8f.86.2025.04.22.11.52.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 11:52:05 -0700 (PDT)
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
	kernel-list@raspberrypi.com,
	Matthias Brugger <mbrugger@suse.com>
Subject: [PATCH v9 -next 03/12] dt-bindings: misc: Add device specific bindings for RaspberryPi RP1
Date: Tue, 22 Apr 2025 20:53:12 +0200
Message-ID: <adf30a5be7c103970ef2caf5b184d71281cedeb0.1745347417.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1745347417.git.andrea.porta@suse.com>
References: <cover.1745347417.git.andrea.porta@suse.com>
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


