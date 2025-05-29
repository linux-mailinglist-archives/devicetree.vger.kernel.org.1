Return-Path: <devicetree+bounces-181583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9994BAC7F1C
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 15:50:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A8424E35C3
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 13:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DAA422DF9A;
	Thu, 29 May 2025 13:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ejmTxe62"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2370522C356
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 13:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748526570; cv=none; b=jZVgRBurZJq417ZLK+zosM3I3nmHzIXe2eRvGtnZFlf9BKllhPRF5sQ9BgxRKJa3FlBSM8fxU1rL0CUZ3l4+j/P8nEdvnqHg62F97i04K2FKCpaCVcwigGqR8BCVL7aWKetZWwA8baeOA3EXgN+GgCf8tTpKOTO+MjquoomZ06A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748526570; c=relaxed/simple;
	bh=eMe4mQgSX9Szv7WKunt7QkqAZDsYcLcx7lYQqW43qQk=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YvXThhyOsHzNixP6kQxAa5sP37UxXiYFB6MAwa3GG8VE+AKVfFXtUM9nf5S1pf0wraopQaMjUfS3MCUHYyeptxygWxkF7w8dICn0l6jzRdJvWU1FoQ5Fgd2rDRozP16cz/ySO487/Buz+2reEPqLw9oUGwbqwPsP0iNznKoZNUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ejmTxe62; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-604bff84741so1663641a12.2
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 06:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1748526563; x=1749131363; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RZmKSMbzA96hgjOUpKAldzAt0+MepqVPTK1rf+kG3Dk=;
        b=ejmTxe62m0UA+bP62bcBhxwsDRh5eRXvXEksjZ6BLh3vASKxDnWFViuhcAvy4VGHeV
         JLAjXEjdOWnyX0ESEBs5gk9ntPiUjtFGvG8L7D1Y6F/eLCJnKlyZ4lONBtTYSXa78s8f
         JSRNYozI81uELQJJ+BSSO9wguSLL7s23sWizbM7j0i/azoUWnED1I+EWQZ7yECmXY4KW
         gdr72oc9Q1vdlD/0bq3ysqjWAIol8/blbyBxIkhOZO5+UxuZyCEjbz8SPsOhCGfd5zEk
         VT21taIMDdqiGO0l4UWeGzYdNuOUhmfRWQcIBRkzooAIz8u1vVDr7/DNkQJqrV27vvUR
         b8HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748526563; x=1749131363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RZmKSMbzA96hgjOUpKAldzAt0+MepqVPTK1rf+kG3Dk=;
        b=SK9hshN3k/O27a61pVntHLXZv7kRNofn2ZnMUDcb3kLRlxxHn8HzHA4pIm7HyEsmBs
         HvsLAihjfpb0UspMaliGXaqaBD/IAI8V3UNaxQjPDnzg3jIy7l3ClgVYmZO3U28v6XVC
         ssEViGtAJSAEL+sVALSUMNZNnk8jAgo7gVn5aiakRt+GQuqlR9Tc3GfOsaVIYtOF4nYZ
         oJBDgcyKBZZrpWBNJRB+SCkhnafFM9I1TzFsfCReCZlaYSIZYo+ptfLuFm5FU9lF46lu
         4eTFK2R0X+Dcv03t6I9qum65idodKA8+bicfrD/pe+PAVxKMO6s+BogQ8vlFyM0nUHA8
         t4pw==
X-Forwarded-Encrypted: i=1; AJvYcCU/+K3NJwrwKKBz4Mvg87Zucctur1v+ztO/Vb8kEu4jCdlAlkjT0vHayXE+/csyG8a7q81kaTxowlIC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1bqKubKsJ+NIl+MRqA53pbF11hvPk5xGNJiYqFpRKuoeDhcjz
	/xZLJKvWEasa7NJnXyzFXDmSi7pwNHh/VdpdJfySbW2Ek2QAv6exXgT8vD35E+Q0hM8=
X-Gm-Gg: ASbGncv4yXZsrGszEV6ybTAqTVaUIyOa4K+Vo5k6PwrtFwbprsN+lAfvNYN3A6IVyvw
	J//JePH1DqrFEWpK3qL+naw0lF10GKGam5knC37jxvit8mS4/WH8TpPsyBSdYDA2ZPUvkQwa1kM
	/CZM1XASqVJQQbbPlb9AlYeImFl9RBdP4SXd5t7u9TW6Qcd+dGBrHmTignponYWoSH+uvUQRc8S
	6UhbWYGmYK/I7+Rq8MaQ0ki2Uy8i6t18z3munjAwy81r3kRRZL+lcLRBSvWckMwCB8VOKggMvZB
	9dee3plgD9Al/bLoOt/NdGUIKBh3HoAHEwmXGFiPGSi8iMtdEYwOEJCIQr9G4jCPXYb2Z53zhRz
	WXgIHPZUDTxw6E3GXv2xPDJed6dgTNGj4
X-Google-Smtp-Source: AGHT+IHLDw/cbNRjtWAHUKqu34oYBH24EHQ5n5ttjPr6tuWv4XIn9OBdLMDkrA0vGPxlXkQow/C20w==
X-Received: by 2002:a05:6402:35c8:b0:5fb:ad3c:d0c0 with SMTP id 4fb4d7f45d1cf-602d8f5dd5emr16420841a12.1.1748526563235;
        Thu, 29 May 2025 06:49:23 -0700 (PDT)
Received: from localhost (host-87-21-228-106.retail.telecomitalia.it. [87.21.228.106])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60567143860sm2191a12.57.2025.05.29.06.49.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 06:49:22 -0700 (PDT)
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
Subject: [PATCH v12 06/13] arm64: dts: rp1: Add support for RaspberryPi's RP1 device
Date: Thu, 29 May 2025 15:50:43 +0200
Message-ID: <20250529135052.28398-6-andrea.porta@suse.com>
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
 arch/arm64/boot/dts/broadcom/rp1-common.dtsi | 42 ++++++++++++++++++++
 arch/arm64/boot/dts/broadcom/rp1-nexus.dtsi  | 14 +++++++
 2 files changed, 56 insertions(+)
 create mode 100644 arch/arm64/boot/dts/broadcom/rp1-common.dtsi
 create mode 100644 arch/arm64/boot/dts/broadcom/rp1-nexus.dtsi

diff --git a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
new file mode 100644
index 000000000000..5002a375eb0b
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/clock/raspberrypi,rp1-clocks.h>
+
+pci_ep_bus: pci-ep-bus@1 {
+	compatible = "simple-bus";
+	ranges = <0x00 0x40000000  0x01 0x00 0x00000000  0x00 0x00400000>;
+	dma-ranges = <0x10 0x00000000  0x43000000 0x10 0x00000000  0x10 0x00000000>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	rp1_clocks: clocks@40018000 {
+		compatible = "raspberrypi,rp1-clocks";
+		reg = <0x00 0x40018000 0x0 0x10038>;
+		#clock-cells = <1>;
+		clocks = <&clk_rp1_xosc>;
+		assigned-clocks = <&rp1_clocks RP1_PLL_SYS_CORE>,
+				  <&rp1_clocks RP1_PLL_SYS>,
+				  <&rp1_clocks RP1_PLL_SYS_SEC>,
+				  <&rp1_clocks RP1_CLK_SYS>;
+		assigned-clock-rates = <1000000000>, // RP1_PLL_SYS_CORE
+				       <200000000>,  // RP1_PLL_SYS
+				       <125000000>,  // RP1_PLL_SYS_SEC
+				       <200000000>;  // RP1_CLK_SYS
+	};
+
+	rp1_gpio: pinctrl@400d0000 {
+		compatible = "raspberrypi,rp1-gpio";
+		reg = <0x00 0x400d0000  0x0 0xc000>,
+		      <0x00 0x400e0000  0x0 0xc000>,
+		      <0x00 0x400f0000  0x0 0xc000>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupts = <0 IRQ_TYPE_LEVEL_HIGH>,
+			     <1 IRQ_TYPE_LEVEL_HIGH>,
+			     <2 IRQ_TYPE_LEVEL_HIGH>;
+	};
+};
diff --git a/arch/arm64/boot/dts/broadcom/rp1-nexus.dtsi b/arch/arm64/boot/dts/broadcom/rp1-nexus.dtsi
new file mode 100644
index 000000000000..0ef30d7f1c35
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/rp1-nexus.dtsi
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+rp1_nexus {
+	compatible = "pci1de4,1";
+	#address-cells = <3>;
+	#size-cells = <2>;
+	ranges = <0x01 0x00 0x00000000
+		  0x02000000 0x00 0x00000000
+		  0x0 0x400000>;
+	interrupt-controller;
+	#interrupt-cells = <2>;
+
+	#include "rp1-common.dtsi"
+};
-- 
2.35.3


