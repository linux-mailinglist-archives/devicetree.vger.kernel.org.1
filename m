Return-Path: <devicetree+bounces-123974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E699D6DC7
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 11:51:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BA4B28135F
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 10:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AFE118A6AF;
	Sun, 24 Nov 2024 10:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="c3oQExcG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1A218801A
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 10:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732445485; cv=none; b=d4Bepd9e3iAuIaZCVRatSiThBGM0Fz+EpkQmvyRfGDhhprhjIp5U/KvZHTdhIZvtOmFO7+AezozGPdleCCYZN+++yOoCO5fBha3lmBS7gnGuAQar7jaFA12kMQeIxkWrGday82d/ffy8ihGBJIobGfoK8LyfBiY9HOmM9KUHkl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732445485; c=relaxed/simple;
	bh=kG9GOaqSqeWOEkK9/bW5CXeRB1OcoX5M8DfLjNmqcI0=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O3jvKKcd9pC5DW61k8hcImEUTF+B/YjUInZnhX3YeTq7ZzlSvpzTqj0V0i9ZwoqU9jyb5cY3amCPOfUXwP/MNVfwhBODJgyqP1FjMxnfkDn61uu0uG31KLem15lZP8UPkwibIgstME235efK1Cv6iWARomlzeGoZ4m9ILJylYxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=c3oQExcG; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-aa531a70416so75054266b.0
        for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 02:51:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1732445480; x=1733050280; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UiQBOSUat6/MpEQMZ5WV5NXHN8wVFmRDt81qJzKgjzo=;
        b=c3oQExcGSiZ52FPBh/+ZBDFzLIcIHWJakTHfYDiqW0aRdIUoEMINxHujAh4zi4vsuk
         mfVGB4ozBwoT5uX/uHeeUEKep3xKHT+h90HZr+ehIyinHPcyNTUFLwUHbDqJJNfTHsmh
         MCDSh4L9KCBwqhu8h3HLxNJdEvE3uWGeINFh2VkPjMP6pcB0ASsp3xnBTbrekrZuw287
         u+A4Mmxy7mhZCX3ERR34uc5509UEV+d+eXlU4IgK0boHlygE27NV+K+092NJ0R9P3QPP
         PoqHnS/JvRjX47+BsSKhUJVrRpxnX064nUE8/N29zIHDcBcisbZYZMgrV0lNtAb/tpFS
         y63g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732445480; x=1733050280;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UiQBOSUat6/MpEQMZ5WV5NXHN8wVFmRDt81qJzKgjzo=;
        b=cU9MXW09TJWzKKDSFhAi+VlDWGJnbR8IvB2azyNRvBe4fETrDSD4/0223dQDAfqzdf
         ptK4gHg0Ub2NxhTaf7CLtoGl/eKFEywrN8sstLAG6+8+wDSPh8QcAOaBpgvUGUSZiteR
         Hm1SMmlEMTCtjUYfr3T97zh1s8pTgUrkxrQJuLoXZiAaQF3C5IzQBUW/TT53R+NJAo3v
         tEKRPeqBcFxzrahyJaOh6CDARbNxS8RIV+oJEb0+AXaAnmYuUUdyekb9P40aKa5+OJff
         fv9XjKqvrJY83qedk6VgxlGxPMNn8yDn2o+VtPHJtZeBh3qcPLs3fvNME900H62WRYQg
         jevQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEwddIPwVMbZmj/MsU3zTOk89hD4TpTdKuVBIgOILBqPgthSHrsoeO+eOZyMpbcC+FnHV6fMzz6IDs@vger.kernel.org
X-Gm-Message-State: AOJu0YwuTLcHfRJBkQzsbwv8SJHNSE2On+j/7evFqqKNYaoOi3UyOfKO
	8AIYU2xr5UXhDDNgX1bPgzIhLdxaiytS/QJOW4ie761md+55Hs+oisVHkqBn3/A=
X-Gm-Gg: ASbGncu0PQP/xvkh519/ogGGWc54LwEUNB1SjfqCF0yxcxRiQohHEDjpbjVYthyW5ti
	2LwJoS72PN+TyGDexWpmd+6F1waZo+3BNrHTv9BFD9B5ZEItm8gOZjiEKaC9As83ichJU0R1M6j
	mOun1ZttQPdGAwyLv0kMJl+Mz0g4JbPD0bVWZXYrTmSe1MUTMXpoAcQAtmKhGZPZdTRhN/jwCyd
	y03jPXfs0Tktbbc3G7oEROL6WQaCfpbZ/fvhYsrCmbf4lQAzRc9XXF9o6yRqfAWuVAddfYIQIN/
	JBDeJupAZPyUMi6TvhP4
X-Google-Smtp-Source: AGHT+IEcECfGErqOSiWGkH1B+1YRUlZYbqaKGgzHEHX7/TvPd1s9m12D5z2Knlx9Qs/dc2Xn6uFf1g==
X-Received: by 2002:a05:6402:27c9:b0:5ce:de19:472a with SMTP id 4fb4d7f45d1cf-5d02065f517mr7869583a12.16.1732445480000;
        Sun, 24 Nov 2024 02:51:20 -0800 (PST)
Received: from localhost (host-79-49-220-127.retail.telecomitalia.it. [79.49.220.127])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d01d3fc6besm2899729a12.55.2024.11.24.02.51.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Nov 2024 02:51:19 -0800 (PST)
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
Subject: [PATCH v4 01/10] dt-bindings: clock: Add RaspberryPi RP1 clock bindings
Date: Sun, 24 Nov 2024 11:51:38 +0100
Message-ID: <5281e7b5aeb1cfc2f80c3234d9c3178c13b3b5b4.1732444746.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1732444746.git.andrea.porta@suse.com>
References: <cover.1732444746.git.andrea.porta@suse.com>
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
---
 .../clock/raspberrypi,rp1-clocks.yaml         | 58 ++++++++++++++++++
 MAINTAINERS                                   |  6 ++
 .../clock/raspberrypi,rp1-clocks.h            | 61 +++++++++++++++++++
 3 files changed, 125 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
 create mode 100644 include/dt-bindings/clock/raspberrypi,rp1-clocks.h

diff --git a/Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml b/Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
new file mode 100644
index 000000000000..b2670cf7403a
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
+  - Andrea della Porta <andrea.porta@suse.com>
+
+description: |
+  The RP1 contains a clock generator designed as three PLLs (CORE, AUDIO,
+  VIDEO), and each PLL output can be programmed though dividers to generate
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
diff --git a/MAINTAINERS b/MAINTAINERS
index c27f3190737f..75a66e3e34c9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19380,6 +19380,12 @@ F:	Documentation/devicetree/bindings/media/raspberrypi,pispbe.yaml
 F:	drivers/media/platform/raspberrypi/pisp_be/
 F:	include/uapi/linux/media/raspberrypi/
 
+RASPBERRY PI RP1 PCI DRIVER
+M:	Andrea della Porta <andrea.porta@suse.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
+F:	include/dt-bindings/clock/rp1.h
+
 RC-CORE / LIRC FRAMEWORK
 M:	Sean Young <sean@mess.org>
 L:	linux-media@vger.kernel.org
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


