Return-Path: <devicetree+bounces-144137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B714FA2CF98
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 22:35:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE87C1889DB6
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D5D72253AC;
	Fri,  7 Feb 2025 21:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Si01iPjd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474F61C700E
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 21:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738963866; cv=none; b=Po+X2Q/BXbyBOxKBecLerQ+48H4uY53UONYfWPLaMuVR0FqUipEygD99zibPXcfdcW2ekFkJwh6zu7d5knzjOzLCN1fAEcO6thAEi/qbhaeZsNUN6CnMdBabI84XUXfXwy0n3ZRAkLnmPlkI36N9v5Pofbnd8lL5mJL2uoUFV7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738963866; c=relaxed/simple;
	bh=NsBSD7AiK0mJug7hd9GFTJTPU0hJ5zl9qW+4ZHGfjlY=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cu+R4U/htSyAPpWB8jzJMmm6ZHAbm922eilDiKpl8OYqqV4E9qbv8xkUWBZuSOBbK6pKGVa4mN0POv5hNzUs6gzon4F20VSmOvGAjV/qxjr8u2JfAc9yPSJhMLhetl1Qp1LZIYCjblPh7Fv5CIsNL1AstYw0aKs2ut3LgddBCk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Si01iPjd; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-aaf900cc7fbso440144866b.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 13:31:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1738963861; x=1739568661; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2u7m+BY3w3VxL/tHCl4aR/2M5poaBGOi+Wu+QErgS8U=;
        b=Si01iPjdSBd3cL9vwcjqf7VA/liZ1J/171UNNojNvKV2WyJHOU3VgDykucpLhBGEuT
         YHcWmRZG+MfP6P1JswZNxqMnwFAyJqkLq3YpVIxfhDHOvihsMY+6iXj2Raj4q2FlUDFb
         04fbEnqRz4HlgR6tZfj7lXEg8jHBSFPDO+YNN68CGKX+5SCrZnYELWZjjUD/t7pCKFwN
         wCKNJhXn97OPZPUowWSGcXJINhsEPSIRYdwMuBFl/mNHdUl2gMb2NIaOQWfQ3r7R3A9P
         JXmcVo8fdOmjC0HIFfXGLCd4zi5cVVxr+tb8BuJBkoxpyW1Zk6eBp8iMO8SNiQa3AlBq
         vI0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738963861; x=1739568661;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2u7m+BY3w3VxL/tHCl4aR/2M5poaBGOi+Wu+QErgS8U=;
        b=GqmGYVtZS+8lNnkKC7+nBtmUpDLTOg3NGk0Ht8CZnJsyRAUeLzKZGrQ/M77oGAaWCv
         L8cXQ5MxI/4nZj2FxBh+hZy7GiKr4mMpz0qGZljobJwGzg6TKr4SQfp5dIMxf3Y4DeCk
         cJx7/27bLmPRDm9POsQ+e5Cj6Xqm9lqwMnC0sh2Z8h808KFZLtYWxYRrrCUyGyOJwQBb
         l26vbHaHbRsCqbnX02NZwBJZCLB5dZMiXDzRbb/+hIahiSoHfiz0wZ1hPozombWTGpD4
         NY67jRuFQokam79JmJQW1HskbkgDuyyfiZvfhS6oAU/aAAa93mj8duby4hDVv/7oPsMS
         8HBw==
X-Forwarded-Encrypted: i=1; AJvYcCWhZnI7chLtb12qNuja5GhNInXixhQKcjDlo8breV+l87vrb8A+Hp/4HoxIjexmCvH2HVACcjEe/eDr@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo8+J6hGPqZuM2nah/7v7M6+fyv7KIogM+pC11L3ZbP36YQIZo
	yBiUJmmk3vmp/Ts/N2uWtp0t1ge1HGXVhX+NOik5aKjDIXGKjM9VrxwLFRmuANQ=
X-Gm-Gg: ASbGncsa0WnQ9rT2J+NHitO6G/wbO7LlqrKqQ2SHXAZhcSRx7qCNGU5Nt2hJorMpA9m
	KTZeBjMfHEoKA8tYdbc7W9tRHnPqpPwRp0aepYacM4ekmgsMb4haWHDhrDmWEcQjL3YwdKp7GgY
	+GJrb9rBSdLSJjq2kmtpLNc0CGoDRzVeWcHhcI6Wdj8HM0K1FV6W/yGSfi0KFMkD1jXzPBpl37D
	3reA591wzNUipUu+7kMmte3Hi5VIDnIT2XlYd5ttno32J/RAr2yUS7nkkL4R2knygFU1l5T3qYN
	1kzrjzRhKjn6y8QHWlvXyJH4Cfqu70oJQs7rY+w1jhj0fxeYZTTb4hJ1gTI=
X-Google-Smtp-Source: AGHT+IHhfyOT7I1VHRDWFLLVHs+ggPsVtKzwB58FcZ47OO8AR3wpnDv08wxSk1IkJTpLUDdPe9Uu7A==
X-Received: by 2002:a17:907:c285:b0:ab6:32d2:16d4 with SMTP id a640c23a62f3a-ab789c35448mr490178766b.56.1738963861415;
        Fri, 07 Feb 2025 13:31:01 -0800 (PST)
Received: from localhost (host-79-41-239-37.retail.telecomitalia.it. [79.41.239.37])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab77365c841sm328702766b.185.2025.02.07.13.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 13:31:01 -0800 (PST)
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
Subject: [PATCH v7 04/11] dt-bindings: misc: Add device specific bindings for RaspberryPi RP1
Date: Fri,  7 Feb 2025 22:31:44 +0100
Message-ID: <06e0bbf443efbf1b1317defebc5446ef06f8ba92.1738963156.git.andrea.porta@suse.com>
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

The RP1 is a MFD that exposes its peripherals through PCI BARs. This
schema is intended as minimal support for the clock generator and
gpio controller peripherals which are accessible through BAR1.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 .../devicetree/bindings/misc/pci1de4,1.yaml   | 135 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 2 files changed, 136 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/pci1de4,1.yaml

diff --git a/Documentation/devicetree/bindings/misc/pci1de4,1.yaml b/Documentation/devicetree/bindings/misc/pci1de4,1.yaml
new file mode 100644
index 000000000000..034c7077b27d
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/pci1de4,1.yaml
@@ -0,0 +1,135 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/pci1de4,1.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RaspberryPi RP1 MFD PCI device
+
+maintainers:
+  - Andrea della Porta <andrea.porta@suse.com>
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
diff --git a/MAINTAINERS b/MAINTAINERS
index af2e4652bf3b..21a818def180 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19752,6 +19752,7 @@ RASPBERRY PI RP1 PCI DRIVER
 M:	Andrea della Porta <andrea.porta@suse.com>
 S:	Maintained
 F:	Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
+F:	Documentation/devicetree/bindings/misc/pci1de4,1.yaml
 F:	Documentation/devicetree/bindings/pci/pci-ep-bus.yaml
 F:	Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml
 F:	include/dt-bindings/clock/rp1.h
-- 
2.35.3


