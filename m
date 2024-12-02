Return-Path: <devicetree+bounces-126042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 999139E0058
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 12:27:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 582B9281E6D
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 11:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B08C72036E5;
	Mon,  2 Dec 2024 11:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="CbKCHH6t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8D12010F2
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 11:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733138352; cv=none; b=dQCcB8FTR9RnDrZ1/C7Z4GbAjAoVU35vVTamxI0uCSpxIPJH+eMfdHKQVS5dB1xb0u/Pr3PEzSOHaUDonEKnEPjQU3hUa77B/HZyt5aPcwtnIYjbskZctp9axh9gC0he/p4peJ4L/gJS5dRcbXGFbWL33V2TjbgKhAnwtBsDzr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733138352; c=relaxed/simple;
	bh=6Rdi6vtMmdQpclQGGOGTd/k9+1jkc+Nh6HkWNbsa9gA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZDogPUuWId1TXfkOXmUuQkCYEXy1lRMU1/FkbycaEVWY9SEnVjvSFofJyMHW/VPtOqJtr73ojkI+i8NRCvZNbVePOXxoeYpzb11hj9milaLPZW8rkzbABN+Hnq4XbCFUQ0Oy7WjCgrXMAIAXyhqlW7LNdpsCLU4E15nEggHdpJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=CbKCHH6t; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-aa53a971480so636652666b.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 03:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1733138348; x=1733743148; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=loQrYUxNweXqAyZ1T5b/kRAgnD6/0M++W+eoOapwQak=;
        b=CbKCHH6tCfWvvZpwCibjdmEr/wuhf6IDut5RqGZTHvSmF5Pk4thxXDyopLYw3nytxR
         ErVVXxbD0W1lMSFLPE7IlPJKa93HAL6kDg7vFd2JXK1s5gpaXxB/nGPug8Xs6Y6pkout
         xSKUcZxOdhWd7U3DTKfy3T3QUT4wDNzp2tpArpQg04i47aLaduCEmbeDXRgOjyPxG8Ze
         S5V7SGPcFumf7y7gri5YQCVVdAY22hMgaUVN3/Xum7flkQMK8rnTzFOCFc66MkU7J8Rw
         Mzk/RdVNoM7T5zkKI3FB9TUqEPhmB+4IKGngWLjZH2jZLWXXxLWntSIDt69LpDEv2PaE
         tcCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733138348; x=1733743148;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=loQrYUxNweXqAyZ1T5b/kRAgnD6/0M++W+eoOapwQak=;
        b=WHKwRzEXMFnn5yEXyl6a8/f7f2MO82ChR6AHhb4JJks4I3gGESttHLuUwvxtDy04i1
         XraVr6oSiCBnBzyr0jnSNTYBMLHZmAJGvVP6SZiF4t24Py9m3pP2ZaxALnFDJ4CGCYlz
         tVn7iq+/cEtKQoJGRBMUidq8NYoPwK257SsiPaJYLKdn6owOdz9YAw8RIm68gKQqkDwC
         XlF+Fk0MVMN+lqslREM7kWUvRycfGmbfiaW88r41TjjDuMLBhK9LwHioq7+oS7bFWB+P
         rncOI7VXna3WQ9G3iY5HF7NJG/wIhL7644pRNheR0IQuNSWEaTGTz7NKr2EQRq6xxuB9
         ZU1w==
X-Forwarded-Encrypted: i=1; AJvYcCXHu5H+BG5OwtOdjE7a35LLnLdViwtK9g3JBcWQxm+/Pq6Ia0RgeblQ5BxCpTepJ67vVlVoRj8y50bj@vger.kernel.org
X-Gm-Message-State: AOJu0Ywof+GdhI9FFlImEn75fmmN4AKl1N55KVmbMnZmtuEEqW2bAV0g
	lXXj/1Pn9ilPu/XWPPu9jnQp2EbpWhCmmNVAC6mRgRmRk5Pj5xGNtS6jrtf46zY=
X-Gm-Gg: ASbGncuMy3zPwo3xDFWaFx09MhFUKsFzmc4Z+w5RQOo+EoDFtAu/MKI1zPf75HDZ+hr
	h0A6QelXsxA31SJTS6+vlUJnM3u5UgLr6DpNnuz7CVrtx8gy+jIoutoPTW/qKhdsKQZIeu99C6L
	VvDDwo89l7qPnQvI/JzYx0sJChHt44aMcywQ4Bvf/z590z94dgyAEpq7aqj3jCeU9HHlmR/hLTC
	CUSa+nAHQLmdk6G3TInq05OCZi2uMH7xyau7Bfblbwg8gVvSXsXtARSTyXPkWQVu1thNCZv9Z+x
	iHsfbF0q9z/qKgvHbhPT
X-Google-Smtp-Source: AGHT+IHaMO/Y8CrT5Mz8+G51hTZ3C+GNozU6Gp6b679Vc5uJseM64hrcEXJ4+2CIlMnmRdcAGAynUQ==
X-Received: by 2002:a17:906:2192:b0:aa5:2855:7817 with SMTP id a640c23a62f3a-aa580f72e6fmr1623926366b.35.1733138347771;
        Mon, 02 Dec 2024 03:19:07 -0800 (PST)
Received: from localhost (host-87-20-211-251.retail.telecomitalia.it. [87.20.211.251])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996ddbfbsm498998666b.51.2024.12.02.03.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 03:19:07 -0800 (PST)
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
Subject: [PATCH v5 04/10] dt-bindings: misc: Add device specific bindings for RaspberryPi RP1
Date: Mon,  2 Dec 2024 12:19:28 +0100
Message-ID: <99c23bd584d7b1b998d2cafb7807e0650db73f20.1733136811.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1733136811.git.andrea.porta@suse.com>
References: <cover.1733136811.git.andrea.porta@suse.com>
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
---
 .../devicetree/bindings/misc/pci1de4,1.yaml   | 73 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/pci1de4,1.yaml

diff --git a/Documentation/devicetree/bindings/misc/pci1de4,1.yaml b/Documentation/devicetree/bindings/misc/pci1de4,1.yaml
new file mode 100644
index 000000000000..5171a949eda5
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/pci1de4,1.yaml
@@ -0,0 +1,73 @@
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
+    description:
+      Specifies respectively the interrupt number and flags as defined
+      in include/dt-bindings/interrupt-controller/irq.h.
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
index ceed86755da4..4bc77e3fa80d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19578,6 +19578,7 @@ RASPBERRY PI RP1 PCI DRIVER
 M:	Andrea della Porta <andrea.porta@suse.com>
 S:	Maintained
 F:	Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
+F:	Documentation/devicetree/bindings/misc/pci1de4,1.yaml
 F:	Documentation/devicetree/bindings/pci/pci-ep-bus.yaml
 F:	Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml
 F:	include/dt-bindings/clock/rp1.h
-- 
2.35.3


