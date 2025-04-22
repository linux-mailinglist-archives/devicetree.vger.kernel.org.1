Return-Path: <devicetree+bounces-169544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19566A974B3
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 20:52:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D36933BF996
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 18:51:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BADD7298982;
	Tue, 22 Apr 2025 18:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="OYb+/mD4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3CB2980A6
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 18:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745347927; cv=none; b=hi95gxNbvF5pPZj7y0e213pGgHX9Oi5yXuYTc90DLyMfKoLroRPXw0xC2gUIhA3noHHpSoVdnLnklmeAO1NwmMYp5HpyWG3+eqEvfgeNIuKQztluKyl3Fwn49ev4rdICiBFQJj1gMQ+SE+vIU6pFstc9/FB+kclaeDgs7TL4hrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745347927; c=relaxed/simple;
	bh=J4if3MPmbylWo1ZVh61aotFj5BEvXmzuoQeC/6MOGrw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sGjV+GuU7cHB/5A0kSrLeVjDMEWmtliq3Wsmq8C6xUGWVMkOl/i5p0rvjyUavbT+OYBv7XGJ3Lw2LURP22oneEVwCS5kxFeAz0NGeEcGyox45TOS8+1QQcZSD7ejm1uCExpAFM3KkOAVXh7EFh9k/oB3R9dKXJVj4Fl61+Di0B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=OYb+/mD4; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-43cf034d4abso50487145e9.3
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 11:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1745347923; x=1745952723; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qcu3jY9KMaHOfphKfi7ZmlunMsnQwTpMnv18LDk4Xi8=;
        b=OYb+/mD43KxvslHkE+be33XNCxmbg6PL4/7oF8zHVaf4RnI2Uiw1cVHX2QLrOw2l8/
         LuFkdTbOfibHaudhe6KJBj6cAEAUpTVM8HyOIOn+brGcLfWJDV2RKw58osfhQtae3es+
         +LiChjN/fyD80zD1XTbr7WhGOuSh5/yIpYKzHKZpsS/zwvzLCaLOovF/TWrNGO7g9hbp
         KYD2Jg3yfzihnqGpX5JwF1OtTLS19WgFI+bcZnQu2QefIhlrd5DH1zC3pr02uJ8on+H5
         SSw7DUTBmF/WYciiaKtGqUhNUK5R++sZNvQwCEhWC2jg94l70pGRXsbZKtjn+/XZk8gD
         1HkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745347923; x=1745952723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qcu3jY9KMaHOfphKfi7ZmlunMsnQwTpMnv18LDk4Xi8=;
        b=k/O4gOepN4fPGnRKOUiR0ElPI1jU0vZobBIHSXJelY7UF2Tn0uf4mJNeWmJxekp2xi
         fJyllj5xSTdR1slb+L4/KLp4HKCzNMuV8W2ojvypQq+CsTw96m2SvyMYu5/rjg5kz5J+
         gwp0B9LhOWxyGSpbyxQqQ7hLRuaBV+jiZRX+YSitf4oLJZ8wDdtUyDKbVKjQVRJWAbuK
         kvAp1y7M/m7QfJCmCfYlsm1cKQnynsZZ7LWRbkQ3lKpSY2QBsczO6kOQvplChhnqUX2/
         KIq+6jB6SSId9F6/2s1yfVtgwX/gGnir0Obs1/ZoW41kvV/t9XEBzuaq5aai6wTiGaRf
         kH6g==
X-Forwarded-Encrypted: i=1; AJvYcCU3kfsWB/DJ7qstpt7ZnIcbzRUv/H09WBQPOwtlAb93k9NGyHWNIIiGtxK8ZiRcvEUJ4lkaEMJE5k8g@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4LSgaNOnPTISmmP/E6txdhQftgXFlOSHs5mWs7ZtO2R5yE8ws
	9EZo66g8lbRMkkTiIbRjTAgOpK7hON3wC5YqEvea2D2hhbNscIP/JZFn2tbXV8Q=
X-Gm-Gg: ASbGncsxtXvZ+VJYFdFsfdR0S3VO1WmNHROvO3pybTyh23+kd8wkZDQ8xZ9d3ELsrZj
	ZJ5BAtQ7cYtIqzhJsxLdQqwBHiodkxhof/X2MVhuNAwflvLMzjGWkSRyGQ7GSkf1fpmUNLe2XdJ
	pYEalc2iEHiakwrqBTWWtJHIH0HzYruarGquvhBAsk5iGSkzX4v6mlmWMb3ayTsaUIy2pKqOviz
	k2NRenrZWZFE2kZma7/2GuJ4tu9spgEuD4/EndnwC3G7pzlAjNHk1OBqfEAJO1PUMJs5HV0qLX9
	hQdINYvw38r7XijqaJ5HXx4frTfJxC7PF3y/oaH6aSVDs4R6E0kKI9zQBsUVwv8gB82UcvbuFiC
	3rrOyyA==
X-Google-Smtp-Source: AGHT+IEZoxLoFKU0LNFEK9F73zcTzEI4zRl148882yqWcJii83moL7TB2SWLs+i6wWKOFDdv3o01wQ==
X-Received: by 2002:a05:6000:2408:b0:391:39bd:a381 with SMTP id ffacd0b85a97d-39efba5af0dmr12597344f8f.30.1745347923459;
        Tue, 22 Apr 2025 11:52:03 -0700 (PDT)
Received: from localhost (93-44-188-26.ip98.fastwebnet.it. [93.44.188.26])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39f069df9fcsm10861032f8f.16.2025.04.22.11.52.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 11:52:03 -0700 (PDT)
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
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 -next 01/12] dt-bindings: clock: Add RaspberryPi RP1 clock bindings
Date: Tue, 22 Apr 2025 20:53:10 +0200
Message-ID: <83ec97c16b7a26245b497ac81539437ecbfe5bf2.1745347417.git.andrea.porta@suse.com>
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


