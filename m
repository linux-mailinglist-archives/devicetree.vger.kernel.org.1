Return-Path: <devicetree+bounces-159102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5070A69B42
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 22:51:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D5C68A87A0
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 21:51:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88C8E21ADB9;
	Wed, 19 Mar 2025 21:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="GhinLeQ9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301CA2165E9
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 21:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742421090; cv=none; b=pcKkgfbsl4ijQVdQxBsqHg0C+YVaIY5MVzSTogXbkjElaHO/g6j3itT+OIpDc/5nWcwRyaF6kA22Iv1UQupv9z4ugupbuYW6zN9GXh9TZVlUo+BiFTsGYw29Gpc7H7i1Z78qVnODT0elTUNurG2IY5I1TcELRs7IF2DPDsKtbBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742421090; c=relaxed/simple;
	bh=J4if3MPmbylWo1ZVh61aotFj5BEvXmzuoQeC/6MOGrw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=APlk7PN+iKABZ4OfKCx+jf48H0dkNkzHF51xzCVZ4JOYRrx6W1umh/WLtI4uoscN20zKdmNtekkLXnxN2HI+qGjXrpNc3+aWVOzfW9QRJRvLLv6TratCdW+DyEnDHPRIihBd3kxpYDeRWf1/Vxx2ArDgQTQ4vp9PYKJ1OC07Fis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=GhinLeQ9; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-ac298c8fa50so31839366b.1
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 14:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1742421085; x=1743025885; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qcu3jY9KMaHOfphKfi7ZmlunMsnQwTpMnv18LDk4Xi8=;
        b=GhinLeQ9tggLPaR4LucAdqkg0CBrehLmiETaRrzmCQbpznjQOc92SonkdtMyD/KvY/
         g4qYl0OeaixF3jPsbWAhRik5Igtx8XY9QWQRB8VTP5DvkQmFHQ6XEBI6wW6V64X5ol0h
         53lXntNdfYXtRYPGl3TgWoQnL1nSY6gauLfwUvFLs/MvrSZQfLSCmnKTuELLyt5PRft5
         pnv7BLZFJgkQ14xHkjJuuJBhTd9bLSHJcKgALCBnPg7mRVGKPFVJNWFY4HI6riCsq2A2
         oGNTZMKv9+WkW9Gnw0bNQso2lQ7kkwmJ1YZR/650+Q+2jedBg1adWeOqd+tR0w3ZDMG9
         64yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742421085; x=1743025885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qcu3jY9KMaHOfphKfi7ZmlunMsnQwTpMnv18LDk4Xi8=;
        b=s+4mgwGZwhbHRAYRf0rxcFoW9rEGE+oVVQW6OZgOt1IyPtJfo+Pg3M2ZAqNFCyj3hY
         /NWy8OYgLL6oNBZtd9/E17O11vfAajM9bvbKmIR6Sndm96Dy08raShXKeLEIBfoMRcsI
         wchEJZtDwj+8twho6EgL7CGdaCfwlf42zW9T38N1b+jpYdNLvpnasVgR8Ufl5M1FZHZF
         kTlTGuyME9dDVIT+brlkVTv6KrAq9XjiHPGQgHPu5aIqx64szxs9skQIfJWjqyumNBLJ
         PMhuP1llQeup8Jiagib1Q20M7TyWgMUMoXN0EKWJWPCMJfOq3gKL3xh66dTPeK2DW6OD
         7iwg==
X-Forwarded-Encrypted: i=1; AJvYcCWTHClYPZhpCc7PcdvMsbcmK52w28XvvItuk4ESBnlv1mZC0MA+rO29nNZvubbwl5W6Sgdc5/frj6h+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3ihKjd2s+6bSZ6GFNXWAh2m/PfTEtnKeWDDZUFLgUsYD4ggbn
	Xs/fWG4TVCjk8tKk1hRpDh46y1QgRFN0WVpFRLXS8zaXWWdm181Suzh61nUEV3c=
X-Gm-Gg: ASbGncvjyEPL7P66yc/5Rm1uc16SgXUdit5EeudVpemaF8cmsSU37hY+34WweVPrpzu
	jHRwUhs27tK72lodQKM1BZtXyAAnBj+ELo54ork71W4fcpxm4sbnO8brggWlnXmxNWsDttOjtSR
	rWffDjCb0NQppVx3k0iN4qc3TkYGLR2t/XuoD04VKJw8C1uslfu/tVDi502AlMbXSKJVlrJhKJc
	rcQkNQuJ2b7x9rWQpTI18RHyxe+e4aIqA5UaLAY1DXsLyYoyL59tbTh2Hl8W/hdBHuh63Cy6p3N
	9y7BxnA1JfU19UpFgZZWdhq9euZvLpcD+y2Yg7DNH8pwMOVgILRkqDdFyoBNe0SbGAL+uiiM18K
	or5nKTIZM147glKLzWPd5
X-Google-Smtp-Source: AGHT+IHFXfT9lXYiw0VBkO6IJXON72H9MpCPzvj4UZ6S/fUWMDlO/HCZZlj2Y3SL16VUaUUCvGAphA==
X-Received: by 2002:a17:907:6ea9:b0:ac3:49ee:c5aa with SMTP id a640c23a62f3a-ac3b7dcf606mr456627066b.31.1742421085164;
        Wed, 19 Mar 2025 14:51:25 -0700 (PDT)
Received: from localhost (host-87-4-238-14.retail.telecomitalia.it. [87.4.238.14])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac314a9d12fsm1059807866b.163.2025.03.19.14.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 14:51:24 -0700 (PDT)
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
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 01/13] dt-bindings: clock: Add RaspberryPi RP1 clock bindings
Date: Wed, 19 Mar 2025 22:52:22 +0100
Message-ID: <342a5ba676f7af34827cdd9ba8f10ba295c93022.1742418429.git.andrea.porta@suse.com>
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

Add device tree bindings for the clock generator found in RP1 multi
function device, and relative entries in MAINTAINERS file.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 .../clock/raspberrypi,rp1-clocks.yaml         | 58 ++++++++++++++++++
 .../clock/raspberrypi,rp1-clocks.h            | 61 +++++++++++++++++++
 2 files changed, 119 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
 create mode 100644 include/dt-bindings/clock/raspberrypi,rp1-clocks.h

diff --git a/Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml b/Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
new file mode 100644
index 000000000000..cc4491f7ee5f
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/raspberrypi,rp1-clocks.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RaspberryPi RP1 clock generator
+
+maintainers:
+  - A. della Porta <andrea.porta@suse.com>
+
+description: |
+  The RP1 contains a clock generator designed as three PLLs (CORE, AUDIO,
+  VIDEO), and each PLL output can be programmed through dividers to generate
+  the clocks to drive the sub-peripherals embedded inside the chipset.
+
+  Link to datasheet:
+  https://datasheets.raspberrypi.com/rp1/rp1-peripherals.pdf
+
+properties:
+  compatible:
+    const: raspberrypi,rp1-clocks
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+    description:
+      The available clocks are defined in
+      include/dt-bindings/clock/raspberrypi,rp1-clocks.h.
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/raspberrypi,rp1-clocks.h>
+
+    rp1 {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        clocks@c040018000 {
+            compatible = "raspberrypi,rp1-clocks";
+            reg = <0xc0 0x40018000 0x0 0x10038>;
+            #clock-cells = <1>;
+            clocks = <&clk_rp1_xosc>;
+        };
+    };
diff --git a/include/dt-bindings/clock/raspberrypi,rp1-clocks.h b/include/dt-bindings/clock/raspberrypi,rp1-clocks.h
new file mode 100644
index 000000000000..248efb895f35
--- /dev/null
+++ b/include/dt-bindings/clock/raspberrypi,rp1-clocks.h
@@ -0,0 +1,61 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (C) 2021 Raspberry Pi Ltd.
+ */
+
+#ifndef __DT_BINDINGS_CLOCK_RASPBERRYPI_RP1
+#define __DT_BINDINGS_CLOCK_RASPBERRYPI_RP1
+
+#define RP1_PLL_SYS_CORE		0
+#define RP1_PLL_AUDIO_CORE		1
+#define RP1_PLL_VIDEO_CORE		2
+
+#define RP1_PLL_SYS			3
+#define RP1_PLL_AUDIO			4
+#define RP1_PLL_VIDEO			5
+
+#define RP1_PLL_SYS_PRI_PH		6
+#define RP1_PLL_SYS_SEC_PH		7
+#define RP1_PLL_AUDIO_PRI_PH		8
+
+#define RP1_PLL_SYS_SEC			9
+#define RP1_PLL_AUDIO_SEC		10
+#define RP1_PLL_VIDEO_SEC		11
+
+#define RP1_CLK_SYS			12
+#define RP1_CLK_SLOW_SYS		13
+#define RP1_CLK_DMA			14
+#define RP1_CLK_UART			15
+#define RP1_CLK_ETH			16
+#define RP1_CLK_PWM0			17
+#define RP1_CLK_PWM1			18
+#define RP1_CLK_AUDIO_IN		19
+#define RP1_CLK_AUDIO_OUT		20
+#define RP1_CLK_I2S			21
+#define RP1_CLK_MIPI0_CFG		22
+#define RP1_CLK_MIPI1_CFG		23
+#define RP1_CLK_PCIE_AUX		24
+#define RP1_CLK_USBH0_MICROFRAME	25
+#define RP1_CLK_USBH1_MICROFRAME	26
+#define RP1_CLK_USBH0_SUSPEND		27
+#define RP1_CLK_USBH1_SUSPEND		28
+#define RP1_CLK_ETH_TSU			29
+#define RP1_CLK_ADC			30
+#define RP1_CLK_SDIO_TIMER		31
+#define RP1_CLK_SDIO_ALT_SRC		32
+#define RP1_CLK_GP0			33
+#define RP1_CLK_GP1			34
+#define RP1_CLK_GP2			35
+#define RP1_CLK_GP3			36
+#define RP1_CLK_GP4			37
+#define RP1_CLK_GP5			38
+#define RP1_CLK_VEC			39
+#define RP1_CLK_DPI			40
+#define RP1_CLK_MIPI0_DPI		41
+#define RP1_CLK_MIPI1_DPI		42
+
+/* Extra PLL output channels - RP1B0 only */
+#define RP1_PLL_VIDEO_PRI_PH		43
+#define RP1_PLL_AUDIO_TERN		44
+
+#endif
-- 
2.35.3


