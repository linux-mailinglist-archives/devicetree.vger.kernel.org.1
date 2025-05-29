Return-Path: <devicetree+bounces-181580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC61AC7F11
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 15:50:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5A914E3495
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 13:50:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1B8B22B8D7;
	Thu, 29 May 2025 13:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="eRUhU3n1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE35522687B
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 13:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748526564; cv=none; b=F9D3k3dIOkMpANjlDXjnrw9fc6NemG3xveLqYheXP9WI6wgF2Ng/Mbq+9pgpv19QU8CK6P9hloG6u8R+uhybF33mVWj5L0/ilIG831vy5pnUIE8CKI2N/KHB2ytdunl0cg4aG325olRfcoGjGxheXGgdSTE9V/ExtF3yMdXEsDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748526564; c=relaxed/simple;
	bh=1k00ZPSbe+u73O93XUJQSZ9BJLlOaPaki/m1ZdOztYg=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T2djrGpl9W4wuPY8nF+6veKhAq61WyQQL4GbWM5iVcmKZ3NH16ga2AOQrmEd2CLo8iYBJ1QcmyXNAghBkVHtLIChmH5BL7x31it56xf180xtlYbj6rg/L26Sw1BvYUp+Rwl6TbphNU1mgJ0O1MRAXAQ+OfAEDsDnLhJTTWl2VeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=eRUhU3n1; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-ac3eb3fdd2eso169835266b.0
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 06:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1748526560; x=1749131360; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VGboxmMcozIYFpgNSd3yUXiFLJRnkvYuern9jhJu7Ss=;
        b=eRUhU3n1obw2wLldNl8V8LjL6b7shuYSWgtr2ZoHBuF8M2myD2ahbufKSJzDJyZpLx
         0Bh9AnX133tq2cZo/+SNITnc1XbGqrNaksRNYscHces1yPXQOP24zSQaq+p8HFnj1T0b
         8FmXG36pCqVg+CRWwO+aFBdZLF+01S70lqVbYOBeW3MzO7nANjBeUa5QZkNXLcE1T0O4
         Qlo1ml5ZYah1Bc2KYFNLr49WZM+RCi1EyoOngUE2N5GXGaccD71rEnADSS7qIBSChGsZ
         EiDwn4wfddbAlY7NmgwgPJXBtld/briZYh2cc+EEiGVWFEwatdS4NfvOLtp7XEZsYqyX
         tI9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748526560; x=1749131360;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VGboxmMcozIYFpgNSd3yUXiFLJRnkvYuern9jhJu7Ss=;
        b=Rr2VhDsT8WCXW99APcO8crE2B7/hM9/tM6ps+hCu6E11IG5CkHaE1iJUbRjnQ9dV2u
         xHYp7zEOKVxxEbJUakT1F1V7T4l/xiQAo8DQh2bpkCos7XWpZqFetevPdPTFqAooNb3y
         gr9cULERVZ/vgYdVmyp2s1a4meiVE7R243j+fr/qKUcvucLOfWqOomFaitxj0wSzPQdF
         Gl5L+n2PsIjfw2zvUgn/H9gIZMOwQ8AZZ/bm/3qL178uH6x828CKpE2uzrGuAhWct+oE
         o5bgI5JLQEtUpZ4NLCPdaHIwgkpugz/U4quDTTcPdVQ4Moo1T5P3XLqhNeqf1qdktp43
         B7zw==
X-Forwarded-Encrypted: i=1; AJvYcCUHOmn3W6/z9CtC7gtMy450wU2QPmUMCyaPMvpGpY8y4v0UGAhw4OzTycWpswynlyGda3kungzlJvGn@vger.kernel.org
X-Gm-Message-State: AOJu0YxT5EY7y0M2Dqz7GWS3ck8Z1XNnbMQZy2Qv4POEGOQR5IPEpfBV
	pz18aK41rDqy7NEIJ9OSnmbByYiwUYaeHrSsvNqtICGO/JCZC/PNlBPZxp/cqxg9LPg=
X-Gm-Gg: ASbGncuKdgRmMMVAw4zPwqg/MWjHv8NgkHdMtjTB7ycDen6J6UgO6HJuLPjhSOlBSn2
	c1zp20HSZaJU4XmqICH/u5rpOShIINpckzgLTgJfrlsvU1aoMx8rFvYlA+di4Ec9Qu8j23RRqpO
	BiLBP0r/ULNb+pcVYW+itRwH5+klgEqdrjzZ9bLw89RdLgLaKhZISk3vAQxNyjIwxsGXxtA5PCf
	Yds1k07r0zYMXys3EpBJNlG848c8Gn2qbelmKyd85JhYcL5B+VaiaW50yCSrt2h1NAEn3E/hiA1
	Vjnjg1juBJp7vLWnHcjalY3nzYo5aJ9ZMnHCsl3TJGjL25Eqq3c4L60UR1NauvUTd7NReNueypv
	DWXklvOkcWPguRNiqJw4/2w==
X-Google-Smtp-Source: AGHT+IGKuD+Tth0pJp0gfXI32E+DNNRd4baj31Ji1jfSwplm5ayN10H7Ij1j9C7dYd4j0K2Z/6B/hg==
X-Received: by 2002:a17:907:94d1:b0:ad8:8eb7:1c79 with SMTP id a640c23a62f3a-ad8a1fcd810mr569011466b.39.1748526559822;
        Thu, 29 May 2025 06:49:19 -0700 (PDT)
Received: from localhost (host-87-21-228-106.retail.telecomitalia.it. [87.21.228.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d82d74csm146445466b.45.2025.05.29.06.49.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 06:49:19 -0700 (PDT)
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
Subject: [PATCH v12 03/13] dt-bindings: misc: Add device specific bindings for RaspberryPi RP1
Date: Thu, 29 May 2025 15:50:40 +0200
Message-ID: <20250529135052.28398-3-andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1748526284.git.andrea.porta@suse.com>
References: <cover.1748526284.git.andrea.porta@suse.com>
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


