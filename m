Return-Path: <devicetree+bounces-138110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C7BA0BAEE
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 16:03:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44675161422
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:02:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACD53233537;
	Mon, 13 Jan 2025 14:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="YrmpKVkG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB0F22F827
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 14:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736780251; cv=none; b=T18F4wp0BEH7Ns7iOSUFrsGVhZVcARoFbKg7lzgGUYc2LP+4TK+Kz3a/seIUoaRQbTc1rojP+JWRRhU6Dr0i6Ld4LK9/DbFEVPXstno2e1Roaxjk1NGQ9KkkFHsODl5rLZJCHJwyBhpdzytmtqW0CO7BP/FCkXfRjkHyRem1IME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736780251; c=relaxed/simple;
	bh=oRyDu736N/0olmvZ66CsNc2gJrPpV4Pl6NUDIUMn6Gc=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=k3wKmRBUlVbhDJNEr8vkVxgglf5ODM8v2li4LJXiaRau8pf1LcTD309RJauNH6XXUgH4TNBT15lAGewOKNE/jwLxQbypDcQRtANDglKdSQx6T7Ph2gucSQD+r3Fd0ObGUtg8O2yz3aeKJJ+3tUuzIsQ3/eWI1DWVYgwmKYHhzb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=YrmpKVkG; arc=none smtp.client-ip=209.85.208.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-5d3dce16a3dso1143639a12.1
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 06:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1736780246; x=1737385046; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VK0RSe0ldjtHClEHoqi5wXPziNZcvh2YDnOa/fSuvqM=;
        b=YrmpKVkGOWy9AUkjfV6PAKSlgn5dD6+pjYn/Wc7zZSKYbIsayVKJD3yXG9DvF9hfXt
         vsCrnqsIeEdvTySwC5LypI4bqgRNr/5XELjwHRVk1yslq6wPbgzoHMFYOiw8lHj4cBvp
         oF9RY97texpxzs/Kpxp54fC9WkNUQyx4otxrK2DD2SgX9iHftUEfGnkb8QJIKZXaxVXe
         pt3rUhu/1mNYGBsqSVAjuu/SEK5NAcQtcgHVuUp+gBe0zTwP75M4nO+cF10HLHphV7LC
         /6eA41wn03DeqOjxMogU3IhbYmafcnvWpKwURN1SWI0eiAWrbR9PGJlWn77fX3K/iHX/
         xc+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736780246; x=1737385046;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VK0RSe0ldjtHClEHoqi5wXPziNZcvh2YDnOa/fSuvqM=;
        b=cAwqEXKqFyMWvhmtS6X/4V3+ocEsQbFswaeoE0ZSVbVCXfhkiGugUTDz0cVRyeuFip
         CVP0cTU9/BCspabYWAUjXcOefSL8CqJUxTaxXdDNMLW7H3YV/s/CXSoc1W0a0amMtVZn
         Z5VOmKIMWlNdQ1+lCgfyxq2CqMd7w7Art0Y4Q5n7CPPH9JFTFjsR37OB97x23QJ0KgEU
         vakED9WjWCCRe1oI5uhk8E5E3PAwuzSnHq3ysZY5gLn8TvgYUzUcDRPz0J9OCXLLwJxM
         LERBcwOEmfs75me7pcLr5jTbRJ0LnxcF1dNCawdUmDPZGjzHmRl/GO9O4oeTsdLasLgs
         gA9A==
X-Forwarded-Encrypted: i=1; AJvYcCXNY+CqJc3UZOjhwVnfLJMjTJsWZ6pmtETudS5pVN6sL5JVlbPERvuv31jhGEkPQ/TShwv2IfXuSLPH@vger.kernel.org
X-Gm-Message-State: AOJu0YzsOuMGgqkGOpHDhZME1heD7F8U0XLNisYfGCloK49FkB7b2eLx
	uHVMEQ5efB/XUOKD6lxMCP5NCpNW5LhOfIt+/PWv6pOiJi1MmjSndcUl31aTdms=
X-Gm-Gg: ASbGncu6OSVKvjwHekjcTqHkvgzN521WwboLwwcUAluPbdV8dvKfF+5kGyETEkUdgpM
	1UC9MxlOb4CPoOqez7i6LtvOghQNDHRZztMavRm3PIucxS4TUc66bpt1XzO4Olt+Zki8Lq6ZQb3
	Xx9CtJ0PJUVPRdtuDthQ8pxtSBcA5/myzYBQs7ZSBA5XkobVPUMCOfHTv7TTJ6LmuBYb55/Sz/3
	CKD43fANMHCy6bBXRehWQ7v+muvxTkUbEtK6f3vIq55MSAhBpfNmY2OSPh8Evw6Js6ycnaa7dx2
	OeJ5d4YFaV3Sv58Q1gmYcOHGPTQ=
X-Google-Smtp-Source: AGHT+IFe6wqfMpYd/sg7qDfaYNOJsN6JxiXCoEz9GuSlottMuQRBLVNKGO+AkEcqEE65UuRk+0LkNw==
X-Received: by 2002:a05:6402:3483:b0:5d0:d06b:cdc4 with SMTP id 4fb4d7f45d1cf-5d98a50fa60mr14110801a12.15.1736780246102;
        Mon, 13 Jan 2025 06:57:26 -0800 (PST)
Received: from localhost (host-87-14-236-197.retail.telecomitalia.it. [87.14.236.197])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d99008c3b5sm5056878a12.12.2025.01.13.06.57.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 06:57:25 -0800 (PST)
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
Subject: [PATCH v6 03/10] dt-bindings: pci: Add common schema for devices accessible through PCI BARs
Date: Mon, 13 Jan 2025 15:58:02 +0100
Message-ID: <c687b606c5ae6a4397dbf12c874c690da5e4b344.1736776658.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1736776658.git.andrea.porta@suse.com>
References: <cover.1736776658.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Common YAML schema for devices that exports internal peripherals through
PCI BARs. The BARs are exposed as simple-buses through which the
peripherals can be accessed.

This is not intended to be used as a standalone binding, but should be
included by device specific bindings.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/pci/pci-ep-bus.yaml   | 58 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/pci-ep-bus.yaml

diff --git a/Documentation/devicetree/bindings/pci/pci-ep-bus.yaml b/Documentation/devicetree/bindings/pci/pci-ep-bus.yaml
new file mode 100644
index 000000000000..33479a5b40c6
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/pci-ep-bus.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/pci-ep-bus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common Properties for PCI MFD EP with Peripherals Addressable from BARs
+
+maintainers:
+  - Andrea della Porta  <andrea.porta@suse.com>
+
+description:
+  Define a generic node representing a PCI endpoint which contains several sub-
+  peripherals. The peripherals can be accessed through one or more BARs.
+  This common schema is intended to be referenced from device tree bindings, and
+  does not represent a device tree binding by itself.
+
+properties:
+  '#address-cells':
+    const: 3
+
+  '#size-cells':
+    const: 2
+
+  ranges:
+    minItems: 1
+    maxItems: 6
+    items:
+      maxItems: 8
+      additionalItems: true
+      items:
+        - maximum: 5  # The BAR number
+        - const: 0
+        - const: 0
+
+patternProperties:
+  '^pci-ep-bus@[0-5]$':
+    type: object
+    description:
+      One node for each BAR used by peripherals contained in the PCI endpoint.
+      Each node represent a bus on which peripherals are connected.
+      This allows for some segmentation, e.g. one peripheral is accessible
+      through BAR0 and another through BAR1, and you don't want the two
+      peripherals to be able to act on the other BAR. Alternatively, when
+      different peripherals need to share BARs, you can define only one node
+      and use 'ranges' property to map all the used BARs.
+
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: simple-bus
+
+    required:
+      - compatible
+
+additionalProperties: true
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index a547e863807c..ceed86755da4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19578,6 +19578,7 @@ RASPBERRY PI RP1 PCI DRIVER
 M:	Andrea della Porta <andrea.porta@suse.com>
 S:	Maintained
 F:	Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
+F:	Documentation/devicetree/bindings/pci/pci-ep-bus.yaml
 F:	Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml
 F:	include/dt-bindings/clock/rp1.h
 F:	include/dt-bindings/misc/rp1.h
-- 
2.35.3


