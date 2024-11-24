Return-Path: <devicetree+bounces-123979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 865919D6DE0
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 11:52:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1133F161A75
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 10:52:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6198190676;
	Sun, 24 Nov 2024 10:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="O1ArwEz7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B945718FC6B
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 10:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732445493; cv=none; b=ZjCFpkiowp1ab2zxOk2NW0DlwmyHs2jRaWOBEC1Wam4318TMSEzluPWsYKZI/RXw+L+1kZg9FqPlP6JHCvsdrGLQf0LMuYyRhvGZXFa+BSBvRliIf4XStl0ob51ZF6oGn+Hd/MlVOJT3PRZGozkgJQxRI0OYgcW4skJQQ3ZZJDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732445493; c=relaxed/simple;
	bh=9+zmNZmbhX+re32WoDieLsiAqFhlamEmWlZNPL9Sjvo=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Mz7Sf5Z9k3Gzhw6JstfQOEbR684glAgUe/4OMuD18c0VBsGU7g4kBZFtD/5JVV+cpMXBaqwezb58aCodtvU+BbuxpFt422A/f7og9x8gAFYzB8QpOYuQrYxwz4FssuYQTptiz8ByVUrU0tHn8Da6fzvA7YUbjLy3PbHWIY5q94w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=O1ArwEz7; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5cfa9979cd1so6059817a12.1
        for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 02:51:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1732445489; x=1733050289; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zsaRoA1lnMwJ/rap2hmEXWNKa+6PDipeQK8JYQOi1WY=;
        b=O1ArwEz7Nu+Tc2h/0awITGWPR62ipjWNlmHsQLmB2ZBngDbQZNa7og4aJMPO5rXdJc
         wgKwvy4EJ7/JxQGEWXEpyZhOWfOJbHCOUprXCphXhbWenE+BTkTTZp9TPQ8fwWgN4HsW
         oHc9PvQSlLJGg4sWxbMVCLWXn5tinEquxEexTgKAGzgKzyfcDu9JCvynwmhNx4nXGOJo
         bnsok7YNokiXk/CY0wZIQcHZBQWeOkN+/+WcaDt8/Wb1nP+P0z00ugIet5Oblsn0V+v3
         HXFMRItHFXI76gsvtyTtxlxX7WD3H0Fe31TFvo+s8fzlHg85cQOVSwQtVTafcEjSvA/G
         Ejcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732445489; x=1733050289;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zsaRoA1lnMwJ/rap2hmEXWNKa+6PDipeQK8JYQOi1WY=;
        b=twaINRFznwke0AtN/JZ4VI7O8cxOkFCo7mr6e9VZJFYvmOUq8AAwmz/xNHZuH9QhUV
         KbMwHeI+VmKGSirh4jcSKbSjKk7cseSt3PLzFSP82bJI6bx1aVornB2GGIYAA3Lr1fhv
         d1L/uSB/pfqsLVz6IoH51SPWg2bVbfXQ5/OTKrsQHHK9yYjfi+2eNhXhKKEOuett0muT
         n8pdaPdXG6tgH9+UWYkoXLFoA2P47fzru7lOh13uUlk6A9Z/+yrrLN1aboo+pvv7RGAE
         n7oZCIKeYP38xLnIt4HLi3odTyV2Bp+qNL0Lb4CpAdFhBRv1gUsVjw9GYgMmokYbiCPb
         4+OQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5JUv2np+2DPz3OaaBeyItZ1KsxX/aD97Uy3a6Cz7tpO3/BuAJENbyDfbcUUpR4aBS84XWxiDBbV3F@vger.kernel.org
X-Gm-Message-State: AOJu0YyBAwKhgdUPkY0WBaPleRyAy0MNhSvw3CpAzPJpZKsECVeIe6iK
	fIAHveIk4lqi7n8/GPZA9gaop6jrBNRCYTZ7vrf/gIjGMnc3NwQHxY76dByMsGw=
X-Gm-Gg: ASbGnctRpMdV+9NqQSMfr+ses7bZOP/F326Ad7bH7wHO+EIU6iSfSw2kLnRRGo9wQhg
	7CMErjtM2WfaInwitZu2tsQOJgpQET5KZI2bgIrLADkevAcAgbU0aiMMDzORENrmplCFzjYb/S3
	DPAlfhLtu9Q5Pc+azlg9kgPzLsmoou1Vnr5/Diu3cLWDB7tg2USeiCQbrAsNz0MmUWQe0MIKjKz
	/yXbu7OX0zc6EJDrWFHQoiZoFsAJNNcCbu71+NioLiQvohpDvs8bpBgksVuek3PxdxrR1R4X7Ef
	fFlGzcP2W6LtmAmX5r1Y
X-Google-Smtp-Source: AGHT+IEOYxg6rA0GL3wgI9aS+qtVFpqrOUZqHHOpUaiFmnyQfx8cerOV23q+NR4gIGgGPlpOfQbCKg==
X-Received: by 2002:a05:6402:4589:b0:5cf:e76a:f96 with SMTP id 4fb4d7f45d1cf-5d01d3fab44mr9140439a12.8.1732445488782;
        Sun, 24 Nov 2024 02:51:28 -0800 (PST)
Received: from localhost (host-79-49-220-127.retail.telecomitalia.it. [79.49.220.127])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d01d3a342asm2885244a12.15.2024.11.24.02.51.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Nov 2024 02:51:28 -0800 (PST)
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
Subject: [PATCH v4 07/10] arm64: dts: rp1: Add support for RaspberryPi's RP1 device
Date: Sun, 24 Nov 2024 11:51:44 +0100
Message-ID: <87fe9d5c88da7e2fd8315615578bd5b97f50e1b3.1732444746.git.andrea.porta@suse.com>
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
"[PATCH v4 08/10] misc: rp1: RaspberryPi RP1 misc driver", since they
are closely related in terms of compiling.

 MAINTAINERS                           |  1 +
 arch/arm64/boot/dts/broadcom/rp1.dtso | 58 +++++++++++++++++++++++++++
 2 files changed, 59 insertions(+)
 create mode 100644 arch/arm64/boot/dts/broadcom/rp1.dtso

diff --git a/MAINTAINERS b/MAINTAINERS
index 06277969a522..510a071ede78 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19383,6 +19383,7 @@ F:	include/uapi/linux/media/raspberrypi/
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


