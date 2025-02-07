Return-Path: <devicetree+bounces-144140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB7DA2CFA4
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 22:36:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 97EAB1883246
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:36:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96CB022F172;
	Fri,  7 Feb 2025 21:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="IsguQlAY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 760A1226882
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 21:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738963872; cv=none; b=G55g7HK0JeGaKHFOZFrJ/egZzSxilO6L1dJS5J7SmNYukeybxHNiLmzHIhiich3kOzXiKyUl5v1m4knfz64/C5bPEx5Zjc/om3bncX0Qhbhx+a+vZx04TH2K+AXIYx1IbPmaOady8ZYvdiGgV8V5lqQm9k9qQ1xDDAVkbAlWbfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738963872; c=relaxed/simple;
	bh=TZUicfeAMILEnwIxb9xEAO04I+RmJCZPazH+xJUDDoY=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=k6AMw4w3822WQ7Go6rV4uG0EAT8YsZsEDzyx8yhs1kg1ysBe6K6+3V465lxXcl5+7UK+o2ZXSAavQOij1f1gb1RRoLLKyUJvgN+oDB+kTCCuxFh/1WqgWJ03I/jTWjjgkZR6vtV1Y7cUMKxJo0NqLsTmAVf1QbcbNVGi53wN23g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=IsguQlAY; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aaf0f1adef8so460206766b.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 13:31:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1738963866; x=1739568666; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aMUvbtsA5DsEuCVaRQsEVedbOqoTRGmICjeOt7R2GgQ=;
        b=IsguQlAYC283eGQbuQwmsxax2Idetel8fX/5JEN8vGsiUDw3BTSjHHoi0KtpwBXXLN
         Evz0nkGXpTrGPGt5WybKU1dHbUcq9HeQxP1rVTS8hXbN8XV0UfJ6HeumbcAjV0lcdSVz
         NYwIaEXaai0KXrsyb7QhB7+bTJEBdSdOgL6j8Aa5+FAfIm+XdsMc7j5LNiMt4e+CwnHO
         GitauW7yzX1uR4KU2gUgNgCyrmoka38SfZsXx7YAwsuYxO/YZuxxJYTu4YCxdhAl3zFB
         Ku+R1bLCnfk9iz/ceWamJiav1c0NmpDezy+7gLWYwbUHvf6/8Uk9s1hbQZo9H2Dw+K03
         zQ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738963866; x=1739568666;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aMUvbtsA5DsEuCVaRQsEVedbOqoTRGmICjeOt7R2GgQ=;
        b=BsGjtfxgrkT3aUEkSx49g8QoMJyR/n+35Qycb4UzSn0x5F8JYCzb5HDj09z7RvYpP2
         +19rNZPCdQocPkSiZJO4IjYFR5GlmcyW4VkweHWaCG/RaZIz0/sOB31Vpuu6vcJLzkoz
         saehNii7dujpGNxeZ4Uon/Y0TmJKWNl1zw87Oi61w1fW6RKWNlaWxA/l6VsvI11kPGLc
         t8ZYi5YkNnJilWd0tPrgc/40O76OusIjf2VKORYI5yNe3ti+LaMbsoITNIf81H4KEO/l
         gnXunIPHWDkqaRL7ESIs/X9yi+TlQ39e8Sha08V/saBhH3oVFiHiU+EwIivY8l+xF270
         5SnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBylbrw38eca7jDr2F0rsVM8aN7bETlZ9yB9JbPCRnYBG3U7Rq+wMHqjUmEYWY4AqlLtsVYLTP+WZd@vger.kernel.org
X-Gm-Message-State: AOJu0YzSeTQquPCrEHyTgYOuE52bbVQEZNI6ZmxTr5kEtFoag4w+YZC3
	Sx5YTGH+pvSaGRYIOqQjQRlCKW3nIJPflV8oC1uU1DLAmdDIwprY2/PsX6Z8rM0=
X-Gm-Gg: ASbGnct2rSnoax5Q6kb3L9nmhSH/0qKpfrnQuykKGYDRJDj/ygki56oTNO85w8vbGWH
	nbG4QayEgvTgJCxBiJNSHonXgjNgSNHgYxAGNi1fIT4WZV5Zf0jABPgQiuv7jCiDqZnB2pzGV24
	0lcePTC8xseX/qrdt2zhlWkPVoAJ6Wxybfd2xTAEhoYEDoUwmew1YeMQhfE5RJNp+z/MzyLoPdj
	+hZ5wwmnEWhBlw83tuF0oBqfN5zRYHZTS8FTTtylmWyfhYNpMbvZ0tx92QhXfgWt2igL5rWm6T6
	TiaM2ARx0k7L6uw/UIl39+sSISe8+UvIcZ/VCsZIF2KVS0LYgfqpJ4VFusU=
X-Google-Smtp-Source: AGHT+IGxw8RmkdWRiBOE+V4K6YhzQQBZN/f/qODYZupDZrZmgY7l+ROzD9QDKgrRus5KdQsC+ufcWg==
X-Received: by 2002:a17:907:2d13:b0:ab7:6d4a:a746 with SMTP id a640c23a62f3a-ab789c87f67mr561681666b.51.1738963865621;
        Fri, 07 Feb 2025 13:31:05 -0800 (PST)
Received: from localhost (host-79-41-239-37.retail.telecomitalia.it. [79.41.239.37])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab78cd15ac3sm173925766b.126.2025.02.07.13.31.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 13:31:05 -0800 (PST)
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
Subject: [PATCH v7 07/11] arm64: dts: rp1: Add support for RaspberryPi's RP1 device
Date: Fri,  7 Feb 2025 22:31:47 +0100
Message-ID: <a3e6dc47b87a5e5ef64b03a54bc518eecd90ac4d.1738963156.git.andrea.porta@suse.com>
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

RaspberryPi RP1 is a multi function PCI endpoint device that
exposes several subperipherals via PCI BAR.
Add a dtb overlay that will be compiled into a binary blob
and linked in the RP1 driver.
This overlay offers just minimal support to represent the
RP1 device itself, the sub-peripherals will be added by
future patches.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 MAINTAINERS                           |  1 +
 arch/arm64/boot/dts/broadcom/rp1.dtso | 58 +++++++++++++++++++++++++++
 2 files changed, 59 insertions(+)
 create mode 100644 arch/arm64/boot/dts/broadcom/rp1.dtso

diff --git a/MAINTAINERS b/MAINTAINERS
index f2ba6f565d30..4cb38064694e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19751,6 +19751,7 @@ F:	drivers/media/platform/raspberrypi/rp1-cfe/
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


