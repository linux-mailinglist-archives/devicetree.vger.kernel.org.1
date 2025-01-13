Return-Path: <devicetree+bounces-138112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 093D5A0BB18
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 16:06:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38B4C3AB224
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CBE423A119;
	Mon, 13 Jan 2025 14:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ZhtgBq67"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8CB23354A
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 14:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736780255; cv=none; b=Nlvf1CxQGOELxduVh16PzLWP0nCANLZa7K6d5ms8+AoU6dxMYR5CNCGwCkYJOtNG1iUAXg1YHT4TasVSGTHUQ1ycuN4HAU6BTj7yTOxG2bYJlfQyOhK28EWNi3eB0Yy1hVdnuCZvTTvFLMz73K19FYIn7okShXmD7VfbTu/hCfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736780255; c=relaxed/simple;
	bh=gLU3Tg05PELIyps8asB3jRvjaR1541MSXEromq5PF7M=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nHhvadP7DpLbZKDbHyfVzeIuUlVmR6Yg0FvRja3jew1X8xBLjUMT9F1KlMTSZh3+2eKHgVOOuqrEWCncD0xLN5FazN9/WP+NtrMYQ9UWkuTE/v6OKqymGRaHvPY4BM2zdv0WptYJHcafOOZNFynNlAihVy0FSVKPRKD72TM+h28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ZhtgBq67; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aa6b4cc7270so647613766b.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 06:57:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1736780250; x=1737385050; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vNkcoMI8KVkLdMTp/Wnf7EJlHExvvawc0wHJ3X9W32s=;
        b=ZhtgBq679tgQ3NPch7RyQ5vpzrvQp41cQB+kmgIoGNCqUwPJ9z36jztpb0t1qIWiel
         TAb5rzYkig9p5r9Tgq9Eqgd0vTT1mmqE8MwVktrqO2U0UKTfxsWcfEpHV9ay6j0ZIXG/
         khKiJb24bovYpOw1aOl1+rCOrNE2tC9WapfifSHOQLJmCPgUeLJchwpWfHaFl2bb4J+K
         mU6qHyKYOti9/dJTTIOWIVEjHdxMkL2n0A0axygoXnQgatZ3V7icOwJkKBD2qQZZRQqe
         aaAe5KUunzpVH3UzEvcvj/QxJIWXghEP+IAhoD8MjKtLZpuk9eaR1q5frKK0nfe7586v
         ZZ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736780250; x=1737385050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vNkcoMI8KVkLdMTp/Wnf7EJlHExvvawc0wHJ3X9W32s=;
        b=irWpXfyz7AuzIDQHGXE2avZ9fglEitoRY67SXA0/LQo92IUS0ZhIi4tz0OyDqmR22/
         4EeeDJHNgzVsvbVJV7+QtliypZwtTW2swyH4AZx+/KuQEE0zFOWiVF2uv2sgpwlsYAPe
         h72bgzujgycd9DQk1igyxbfSxWGc17WMtufWCQ1NELMKShkniJbYFx9mmG1h8P6g4lnz
         yCELsg3Z3L+x55pavz1ilFE/+JmmvWuAJFPhrUlClx/QGLJB9zt/zywtF3d0TUiC+gtR
         DMv8MIidAiJ/OKnUPaH5sn4NKk36Eu9Zm/QOGdhwGXTA60idr17RWCA4ETYa3F8yY/zs
         m10w==
X-Forwarded-Encrypted: i=1; AJvYcCViT80FCYpZv1WCzG4qVuizFzpUJadTJf5bVMMVGt5RFfHH4BdwqAYWD8R+HuF1sh6QouVCvGy165QN@vger.kernel.org
X-Gm-Message-State: AOJu0YzNOhzQd2sWTPm1+HUfqK0jEfRq+CuwWFM7NrPyA+dF2n3atNU0
	nB/yhhv+dklwbNE66OloETLCVLSiW5BlKSw+WobNSmoSptyEJUMVl2l5/mN6M9s=
X-Gm-Gg: ASbGncuNf5rn0BhvoMQf3aljrf2Sp5/WhKWLGNFydyKW/0Hw++sKAvuWtmudZHlByfb
	erHKsFFMOSBMJjEiih2LTSzVCWsgwNTg98sG6wHGMiw2pauqa02Iz7tlObnAa4O8nmROF0ArsAh
	G8utsUC7VoSFOqwnq9C9v+vDQfWEC2u+G+mu9zyBgvGl61tOkLoHh70VQRkoAM46BjM9zWv5Gv6
	fZbArjB/B7oc8TdSf0BDmO9bmakRM7OPQHt9c83alS47MYoMksssytqwMZOTer+KP4SMHj+w4c6
	8CF0rUiiUVVu7bDnWOlsHFCWdJw=
X-Google-Smtp-Source: AGHT+IE0lB/Z/M0JENSutXiuKzUpKT6XRU04v2g7l/oehHu7+mE7WUzdLqmrfCaPku+KevtO9JvYLg==
X-Received: by 2002:a05:6402:34d2:b0:5d0:8f1c:d9d7 with SMTP id 4fb4d7f45d1cf-5d972dfff46mr45266300a12.4.1736780250364;
        Mon, 13 Jan 2025 06:57:30 -0800 (PST)
Received: from localhost (host-87-14-236-197.retail.telecomitalia.it. [87.14.236.197])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d99d05bec4sm4450960a12.14.2025.01.13.06.57.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 06:57:29 -0800 (PST)
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
Subject: [PATCH v6 07/10] arm64: dts: rp1: Add support for RaspberryPi's RP1 device
Date: Mon, 13 Jan 2025 15:58:06 +0100
Message-ID: <528c8c136b31483e345d07803b5e8ae5d2cb1b68.1736776658.git.andrea.porta@suse.com>
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

RaspberryPi RP1 is a multi function PCI endpoint device that
exposes several subperipherals via PCI BAR.
Add a dtb overlay that will be compiled into a binary blob
and linked in the RP1 driver.
This overlay offers just minimal support to represent the
RP1 device itself, the sub-peripherals will be added by
future patches.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
NOTE: this patch should be taken by the same maintainer that will take
"[PATCH v6 08/10] misc: rp1: RaspberryPi RP1 misc driver", since they
are closely related in terms of compiling.

 MAINTAINERS                           |  1 +
 arch/arm64/boot/dts/broadcom/rp1.dtso | 58 +++++++++++++++++++++++++++
 2 files changed, 59 insertions(+)
 create mode 100644 arch/arm64/boot/dts/broadcom/rp1.dtso

diff --git a/MAINTAINERS b/MAINTAINERS
index 9b8e87b8d6de..fbdd8594aa7e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19577,6 +19577,7 @@ F:	drivers/media/platform/raspberrypi/rp1-cfe/
 RASPBERRY PI RP1 PCI DRIVER
 M:	Andrea della Porta <andrea.porta@suse.com>
 S:	Maintained
+F:	arch/arm64/boot/dts/broadcom/rp1.dtso
 F:	Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
 F:	Documentation/devicetree/bindings/misc/pci1de4,1.yaml
 F:	Documentation/devicetree/bindings/pci/pci-ep-bus.yaml
diff --git a/arch/arm64/boot/dts/broadcom/rp1.dtso b/arch/arm64/boot/dts/broadcom/rp1.dtso
new file mode 100644
index 000000000000..cdff061e2750
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/rp1.dtso
@@ -0,0 +1,58 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/clock/raspberrypi,rp1-clocks.h>
+
+/dts-v1/;
+/plugin/;
+
+/ {
+	fragment@0 {
+		target-path="";
+		__overlay__ {
+			compatible = "pci1de4,1";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+
+			pci_ep_bus: pci-ep-bus@1 {
+				compatible = "simple-bus";
+				ranges = <0x00 0x40000000  0x01 0x00 0x00000000  0x00 0x00400000>;
+				dma-ranges = <0x10 0x00000000  0x43000000 0x10 0x00000000  0x10 0x00000000>;
+				#address-cells = <2>;
+				#size-cells = <2>;
+
+				rp1_clocks: clocks@40018000 {
+					compatible = "raspberrypi,rp1-clocks";
+					reg = <0x00 0x40018000 0x0 0x10038>;
+					#clock-cells = <1>;
+					clocks = <&clk_rp1_xosc>;
+					assigned-clocks = <&rp1_clocks RP1_PLL_SYS_CORE>,
+							  <&rp1_clocks RP1_PLL_SYS>,
+							  <&rp1_clocks RP1_PLL_SYS_SEC>,
+							  <&rp1_clocks RP1_CLK_SYS>;
+					assigned-clock-rates = <1000000000>, // RP1_PLL_SYS_CORE
+							       <200000000>,  // RP1_PLL_SYS
+							       <125000000>,  // RP1_PLL_SYS_SEC
+							       <200000000>;  // RP1_CLK_SYS
+				};
+
+				rp1_gpio: pinctrl@400d0000 {
+					compatible = "raspberrypi,rp1-gpio";
+					reg = <0x00 0x400d0000  0x0 0xc000>,
+					      <0x00 0x400e0000  0x0 0xc000>,
+					      <0x00 0x400f0000  0x0 0xc000>;
+					gpio-controller;
+					#gpio-cells = <2>;
+					interrupt-controller;
+					#interrupt-cells = <2>;
+					interrupts = <0 IRQ_TYPE_LEVEL_HIGH>,
+						     <1 IRQ_TYPE_LEVEL_HIGH>,
+						     <2 IRQ_TYPE_LEVEL_HIGH>;
+				};
+			};
+		};
+	};
+};
-- 
2.35.3


