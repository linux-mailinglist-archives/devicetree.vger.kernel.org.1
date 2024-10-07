Return-Path: <devicetree+bounces-108464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA68C992C16
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 14:42:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 61BC11F2317A
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 12:42:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36FEC1D6DA3;
	Mon,  7 Oct 2024 12:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="JD4qR1in"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD561D5ABE
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 12:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728304803; cv=none; b=VBEn0b81D1C8FJTLiaERMFiepqxhgXCpQ2KjF+tli0WQlbRf2XDHAo/uo6RZBsh85m5beTnCCDDX1jzomhluj3G7EhAL4f7R19Bd+nIAJ3BAu/lKsLK/pCcqbt/zvIndl+K2f8YoYUEOMSjGuPNB1OXAEikMOkYlXTP+0U6AfV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728304803; c=relaxed/simple;
	bh=MG2zG1bQpYhX9tF6Jz6wNxWrPu+3Z4sbMxD50E4qKOs=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JNuhwiBirKNEtPk3SLIjuFsY7uYrfE7hK4qB2OQuaKmQ53WIRhuIFzBtvmhl91apGCTaaSURbVggyteX/DALyEyCWAtEnbzEZymmIbawi3GNZdfVIdEPCNagxEQV7Ad9v7A07clxGVvRYmGneSvzJ3kCyjPWMfJwwEbQWuot1ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=JD4qR1in; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539983beb19so5322630e87.3
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 05:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1728304797; x=1728909597; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BDBbUzAbVmbfauTgZMPEls+orUZqC1xI/z6QelfsXFI=;
        b=JD4qR1inRSdtNB0+ZrzVy1BGbR8QneP09WeESPh0ZVVwOQF/jlWJO8bilWi2yMpEuT
         RPhMJ4CJbFsn3Wz8brZ2Q1e/RC40iIJ1/JaiOI9zwbqGiCsaRPJA+TxW2uJup0K0BQa3
         e7x9VqWBhCDUV2uneUNZ035VSyMtYLQ02ICduwCzny4zaAZvJoqwykPXFus47rkHeEv1
         GtzZcP4Cind0ZhOp1NQh/OMDHT67Qw/b9yZuufiMhCR3vu0BagE3gErEWw59cnTmbhgs
         n1rThDrsa2uziJsSi6K3r0MwKojJGxXhZyeZjY70lJwZ+0oCXHo56cuU3OC6CTX70BKz
         rGIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728304797; x=1728909597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BDBbUzAbVmbfauTgZMPEls+orUZqC1xI/z6QelfsXFI=;
        b=LAwJP197NTKmpULurTMEkITp8twNyX4c5HJ6zYYPT/iF0DGIgT7CC058yB6RXo+c4e
         ebhao8mkGE7w8rMG1hHweAHrx9Cc14XcyA7Ww2g/iBY1IhfAjMcGGu4KQzX9fva5AEUH
         VuBWPlgy/v9n8zkyhx+mGTFnB9u5dpKN/es9ZGvPGB3hwulQpIxfKmluQHgM7B02V+5I
         +vzOF1j7HUgINlDEvhkmUosAU5ZOllmKaAW2EpwLDt8yV/ckikMsCo7r3BGqHOnEhgxa
         Z8zTfk1aNZw7mRIbd1c07JQW9tXmXJp3kWgGp0SaVQARbw6cNFGID+zdFWAmwdfYb2FW
         KIrA==
X-Forwarded-Encrypted: i=1; AJvYcCWPgqnKr+jP/CFkp/KicNi5KvPpdz0AlhuJcRJCWyUxaal+kIyn+R6lOigdgrF1bumAYPYuk7CtejPP@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo3LuDKi+xKK9/wXxEGykZfc9qnVpJGuZTpPGgtpL+NS7Gq24h
	mIuTuv6Y2Ywoj2yOLrK9q5UP00qmSre+FdvUuz8uktvrmd40lR8gbKydvp5IRkM=
X-Google-Smtp-Source: AGHT+IHsa3cuseb+TMLjf68nJZfaXpa4Y/U/qsSRZ8J4Yx8YStwpVyo0ZpW4Nb8/l9tXLVtsADvnlA==
X-Received: by 2002:a05:6512:159d:b0:536:53a9:96d5 with SMTP id 2adb3069b0e04-539ab866484mr5107703e87.17.1728304797453;
        Mon, 07 Oct 2024 05:39:57 -0700 (PDT)
Received: from localhost (host-87-21-212-62.retail.telecomitalia.it. [87.21.212.62])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a995350d522sm145624166b.32.2024.10.07.05.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 05:39:57 -0700 (PDT)
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
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
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
Subject: [PATCH v2 10/14] arm64: dts: rp1: Add support for RaspberryPi's RP1 device
Date: Mon,  7 Oct 2024 14:39:53 +0200
Message-ID: <3f6f38c06b065f5f6034ad4ed3a24902ee59f378.1728300190.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1728300189.git.andrea.porta@suse.com>
References: <cover.1728300189.git.andrea.porta@suse.com>
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
"[PATCH v2 11/14] misc: rp1: RaspberryPi RP1 misc driver", since they
are closely related in terms of compiling.

 MAINTAINERS                           |  1 +
 arch/arm64/boot/dts/broadcom/rp1.dtso | 62 +++++++++++++++++++++++++++
 2 files changed, 63 insertions(+)
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
index 000000000000..846a0c99a098
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/rp1.dtso
@@ -0,0 +1,62 @@
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
+
+			pci_ep_bus: pci-ep-bus@1 {
+				compatible = "simple-bus";
+				ranges = <0xc0 0x40000000
+					  0x01 0x00 0x00000000
+					  0x00 0x00400000>;
+				dma-ranges = <0x10 0x00000000
+					      0x43000000 0x10 0x00000000
+					      0x10 0x00000000>;
+				#address-cells = <2>;
+				#size-cells = <2>;
+				interrupt-controller;
+				interrupt-parent = <&pci_ep_bus>;
+				#interrupt-cells = <2>;
+
+				rp1_clocks: clocks@c040018000 {
+					compatible = "raspberrypi,rp1-clocks";
+					reg = <0xc0 0x40018000 0x0 0x10038>;
+					#clock-cells = <1>;
+					clocks = <&clk_rp1_xosc>;
+					clock-names = "rp1-xosc";
+					assigned-clocks = <&rp1_clocks RP1_PLL_SYS_CORE>,
+							  <&rp1_clocks RP1_PLL_SYS>,
+							  <&rp1_clocks RP1_CLK_SYS>;
+					assigned-clock-rates = <1000000000>, // RP1_PLL_SYS_CORE
+							       <200000000>,  // RP1_PLL_SYS
+							       <200000000>;  // RP1_CLK_SYS
+				};
+
+				rp1_gpio: pinctrl@c0400d0000 {
+					compatible = "raspberrypi,rp1-gpio";
+					reg = <0xc0 0x400d0000  0x0 0xc000>,
+					      <0xc0 0x400e0000  0x0 0xc000>,
+					      <0xc0 0x400f0000  0x0 0xc000>;
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


