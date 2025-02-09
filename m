Return-Path: <devicetree+bounces-144436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 70134A2E113
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 23:07:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E8C73A58F9
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 22:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00A29225384;
	Sun,  9 Feb 2025 22:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fvYuM7jz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861E31EF09B
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 22:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739138830; cv=none; b=D35esXvWchbrTRbqYVdqNowLEL5FF5NqE8vWeLhw0z6B82dAZ+J1tuwR2uCQzbeFb9F7buzkF+Us+Hp5HLUflbj9Uo2Enfho7tTaZ4Kp5fHEsYcZ8vSLeri/VZTKXCK2aIWIqEo/iGKuFhysvBPdW6cfLAQnIFGh2JasyTa3bvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739138830; c=relaxed/simple;
	bh=Ef0EZwU1cUNDad9CKFLPDAxxX2z794AZA0ph/eyeCp0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nNkvpOgkZzVhFH7LxBIZd+1asH4WlbXpiQPmcWHw7xOWmlUEWi9QxACccB/Eo097fo94HTBBsHWxw1r5RQrGSle+IJcEKq2NfKB9e4pOk8pnMflhDsM9T4jrcWnZITzt3rygvo4WRyEZmh1so3DTB4AIxKahWSvNpjNFB936Umc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fvYuM7jz; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-38dd14c99c3so851613f8f.3
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2025 14:07:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739138827; x=1739743627; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BeQJSAdDhXmUj7Mhcp/EXCis2MZWrjN6L07LIferSPw=;
        b=fvYuM7jz6RH2Aiu27G7U320qJzQ5Ob6qH6fwjVNU8rU0/R0vB6mr/8xUT+RetnNNeL
         l/Z8dabzDSrAexqKUV5eXhGTcEpFUCCEZ6a1vYa1TDMiaB8U5VBsjx4wnB7bIcuko0FC
         8Zf5cU/E5T3pk8cuMG+hy6tnUpHP9u5hlM6iXHeC27IwqwTwvYseHassHYa5A8e+C+mJ
         aBGttC3o+Cj6F4e548RW1HdmKQeWOImpAObb0ZkJtgGmybtEXIh23TrbyqRHyF5zlt+h
         WU0KvEpvn/NXpnXVfrg5yceSoCBGg7r4+qykBE4K6g8mJWuXCsSo0NF3SsQahOToZR1Y
         oWYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739138827; x=1739743627;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BeQJSAdDhXmUj7Mhcp/EXCis2MZWrjN6L07LIferSPw=;
        b=U8X1UbPCXvC955Iuu0BL7yG6AmixAQMs/gh9GN8YgY+6AOAQYYggyuddARniLFeCa9
         k5mB3YHuPAgSlNqaaEK+nhRiNcK8top+9BWiBDTOHv5u/8fsGjy0VLnqiZeXi00BDS2b
         x7Ji4NnLHSIDwJoRlzN+1fXU8yEOdxihUJtC03QmWLo+4DwdTCN+8Mmxo8ac5hOLOkAw
         II0VBbALNSBfwyARIU5tAfAGax439UVRaTmU2BqYMfXe1dB0np+qjmWDA1c/gAzSq/DK
         M6L7GWLWhlZAYs+nSjvUdaiZKblslFCqa7hjW3YvGkhFJb6KxEUL530fsTS95NT+XsmF
         pJiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvOeh46rmeP9ZEx93GZUKu6cmvOJHTU9gT0Qkx9ccu8qw+u63crVBwLmR0+Z72Xbv8RYiOAOBR9JvZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw6NHnF4n2OBD4JFDeqNNMgszw0mUENzxPnHdOFl3+UHho0p8v
	NSXO5ZmXDnbGmPdftj4el7u7au71Ek4Erwkd96BXPejfMXkMKM5k
X-Gm-Gg: ASbGncsKoiKjrIAy+9ZG37xnWIkGVlLMQxtxyK6q2eKKqYs8jvmAKsGBXRSFMOiCX/Z
	6n8UTwYAOgr2nOuWyfYtBjHZUaGqok+/jjvcS+ctkHtitNtoNBrYnFJ8cCUIhqhbub013EEU1VR
	wv1ERIvJox8O9a5UnW8Ct33rABN+lOrybOESRpeQamTwDE/LXTe9EGBb6GFME0Paqb/Es9hLIRF
	herLnwPO9S9MmhJqPFgKfbBFTzPU155H/rvRGbvAdvOJpl9mfxkbeWObWHSCHS96sMnAlESYSG5
	jIJ3mNxacZcCOnO/vkFJ3vG3s8vv
X-Google-Smtp-Source: AGHT+IGIPPTW7s6FMIHinxaydcbU4c1SdYr2UsWlxPFTGc738bi2zQ0yuQr39n6hlVqn6DA50ArXng==
X-Received: by 2002:a5d:64cc:0:b0:38d:d701:419c with SMTP id ffacd0b85a97d-38dd701445emr3294852f8f.41.1739138826504;
        Sun, 09 Feb 2025 14:07:06 -0800 (PST)
Received: from giga-mm.. ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dbf2ed900sm10386544f8f.53.2025.02.09.14.07.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2025 14:07:05 -0800 (PST)
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: soc@lists.linux.dev
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@outlook.com>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Haylen Chu <heylenay@outlook.com>,
	linux-arm-kernel@lists.infradead.org,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Arnd Bergmann <arnd@arndb.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 02/10] riscv: dts: sophgo: cv18xx: Split into CPU core and peripheral parts
Date: Sun,  9 Feb 2025 23:06:27 +0100
Message-ID: <20250209220646.1090868-3-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250209220646.1090868-1-alexander.sverdlin@gmail.com>
References: <20250209220646.1090868-1-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Make the peripheral device tree re-usable on ARM64 platform by splitting it
into CPU-core specific and peripheral parts.

Add SOC_PERIPHERAL_IRQ() macro which explicitly maps peripheral nubering
into "plic" interrupt-controller numbering.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
 arch/riscv/boot/dts/sophgo/cv181x.dtsi        |   2 +-
 arch/riscv/boot/dts/sophgo/cv18xx-periph.dtsi | 313 ++++++++++++++++++
 arch/riscv/boot/dts/sophgo/cv18xx.dtsi        | 305 +----------------
 3 files changed, 317 insertions(+), 303 deletions(-)
 create mode 100644 arch/riscv/boot/dts/sophgo/cv18xx-periph.dtsi

diff --git a/arch/riscv/boot/dts/sophgo/cv181x.dtsi b/arch/riscv/boot/dts/sophgo/cv181x.dtsi
index 5fd14dd1b14f..bbdb30653e9a 100644
--- a/arch/riscv/boot/dts/sophgo/cv181x.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv181x.dtsi
@@ -11,7 +11,7 @@ soc {
 		emmc: mmc@4300000 {
 			compatible = "sophgo,cv1800b-dwcmshc";
 			reg = <0x4300000 0x1000>;
-			interrupts = <34 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <SOC_PERIPHERAL_IRQ(18) IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk CLK_AXI4_EMMC>,
 				 <&clk CLK_EMMC>;
 			clock-names = "core", "bus";
diff --git a/arch/riscv/boot/dts/sophgo/cv18xx-periph.dtsi b/arch/riscv/boot/dts/sophgo/cv18xx-periph.dtsi
new file mode 100644
index 000000000000..53834b0658b2
--- /dev/null
+++ b/arch/riscv/boot/dts/sophgo/cv18xx-periph.dtsi
@@ -0,0 +1,313 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
+ * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
+ */
+
+#include <dt-bindings/clock/sophgo,cv1800.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+
+/ {
+	osc: oscillator {
+		compatible = "fixed-clock";
+		clock-output-names = "osc_25m";
+		#clock-cells = <0>;
+	};
+
+	soc {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		clk: clock-controller@3002000 {
+			reg = <0x03002000 0x1000>;
+			clocks = <&osc>;
+			#clock-cells = <1>;
+		};
+
+		gpio0: gpio@3020000 {
+			compatible = "snps,dw-apb-gpio";
+			reg = <0x3020000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			porta: gpio-controller@0 {
+				compatible = "snps,dw-apb-gpio-port";
+				gpio-controller;
+				#gpio-cells = <2>;
+				ngpios = <32>;
+				reg = <0>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				interrupts = <SOC_PERIPHERAL_IRQ(44) IRQ_TYPE_LEVEL_HIGH>;
+			};
+		};
+
+		gpio1: gpio@3021000 {
+			compatible = "snps,dw-apb-gpio";
+			reg = <0x3021000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			portb: gpio-controller@0 {
+				compatible = "snps,dw-apb-gpio-port";
+				gpio-controller;
+				#gpio-cells = <2>;
+				ngpios = <32>;
+				reg = <0>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				interrupts = <SOC_PERIPHERAL_IRQ(45) IRQ_TYPE_LEVEL_HIGH>;
+			};
+		};
+
+		gpio2: gpio@3022000 {
+			compatible = "snps,dw-apb-gpio";
+			reg = <0x3022000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			portc: gpio-controller@0 {
+				compatible = "snps,dw-apb-gpio-port";
+				gpio-controller;
+				#gpio-cells = <2>;
+				ngpios = <32>;
+				reg = <0>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				interrupts = <SOC_PERIPHERAL_IRQ(46) IRQ_TYPE_LEVEL_HIGH>;
+			};
+		};
+
+		gpio3: gpio@3023000 {
+			compatible = "snps,dw-apb-gpio";
+			reg = <0x3023000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			portd: gpio-controller@0 {
+				compatible = "snps,dw-apb-gpio-port";
+				gpio-controller;
+				#gpio-cells = <2>;
+				ngpios = <32>;
+				reg = <0>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				interrupts = <SOC_PERIPHERAL_IRQ(47) IRQ_TYPE_LEVEL_HIGH>;
+			};
+		};
+
+		saradc: adc@30f0000 {
+			compatible = "sophgo,cv1800b-saradc";
+			reg = <0x030f0000 0x1000>;
+			clocks = <&clk CLK_SARADC>;
+			interrupts = <SOC_PERIPHERAL_IRQ(84) IRQ_TYPE_LEVEL_HIGH>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+
+			channel@0 {
+				reg = <0>;
+			};
+
+			channel@1 {
+				reg = <1>;
+			};
+
+			channel@2 {
+				reg = <2>;
+			};
+		};
+
+		i2c0: i2c@4000000 {
+			compatible = "snps,designware-i2c";
+			reg = <0x04000000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&clk CLK_I2C>, <&clk CLK_APB_I2C0>;
+			clock-names = "ref", "pclk";
+			interrupts = <SOC_PERIPHERAL_IRQ(33) IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		i2c1: i2c@4010000 {
+			compatible = "snps,designware-i2c";
+			reg = <0x04010000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&clk CLK_I2C>, <&clk CLK_APB_I2C1>;
+			clock-names = "ref", "pclk";
+			interrupts = <SOC_PERIPHERAL_IRQ(34) IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		i2c2: i2c@4020000 {
+			compatible = "snps,designware-i2c";
+			reg = <0x04020000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&clk CLK_I2C>, <&clk CLK_APB_I2C2>;
+			clock-names = "ref", "pclk";
+			interrupts = <SOC_PERIPHERAL_IRQ(35) IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		i2c3: i2c@4030000 {
+			compatible = "snps,designware-i2c";
+			reg = <0x04030000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&clk CLK_I2C>, <&clk CLK_APB_I2C3>;
+			clock-names = "ref", "pclk";
+			interrupts = <SOC_PERIPHERAL_IRQ(36) IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		i2c4: i2c@4040000 {
+			compatible = "snps,designware-i2c";
+			reg = <0x04040000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&clk CLK_I2C>, <&clk CLK_APB_I2C4>;
+			clock-names = "ref", "pclk";
+			interrupts = <SOC_PERIPHERAL_IRQ(37) IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		uart0: serial@4140000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x04140000 0x100>;
+			interrupts = <SOC_PERIPHERAL_IRQ(28) IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk CLK_UART0>, <&clk CLK_APB_UART0>;
+			clock-names = "baudclk", "apb_pclk";
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			status = "disabled";
+		};
+
+		uart1: serial@4150000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x04150000 0x100>;
+			interrupts = <SOC_PERIPHERAL_IRQ(29) IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk CLK_UART1>, <&clk CLK_APB_UART1>;
+			clock-names = "baudclk", "apb_pclk";
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			status = "disabled";
+		};
+
+		uart2: serial@4160000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x04160000 0x100>;
+			interrupts = <SOC_PERIPHERAL_IRQ(30) IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk CLK_UART2>, <&clk CLK_APB_UART2>;
+			clock-names = "baudclk", "apb_pclk";
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			status = "disabled";
+		};
+
+		uart3: serial@4170000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x04170000 0x100>;
+			interrupts = <SOC_PERIPHERAL_IRQ(31) IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk CLK_UART3>, <&clk CLK_APB_UART3>;
+			clock-names = "baudclk", "apb_pclk";
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			status = "disabled";
+		};
+
+		spi0: spi@4180000 {
+			compatible = "snps,dw-apb-ssi";
+			reg = <0x04180000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&clk CLK_SPI>, <&clk CLK_APB_SPI0>;
+			clock-names = "ssi_clk", "pclk";
+			interrupts = <SOC_PERIPHERAL_IRQ(38) IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		spi1: spi@4190000 {
+			compatible = "snps,dw-apb-ssi";
+			reg = <0x04190000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&clk CLK_SPI>, <&clk CLK_APB_SPI1>;
+			clock-names = "ssi_clk", "pclk";
+			interrupts = <SOC_PERIPHERAL_IRQ(39) IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		spi2: spi@41a0000 {
+			compatible = "snps,dw-apb-ssi";
+			reg = <0x041a0000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&clk CLK_SPI>, <&clk CLK_APB_SPI2>;
+			clock-names = "ssi_clk", "pclk";
+			interrupts = <SOC_PERIPHERAL_IRQ(40) IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		spi3: spi@41b0000 {
+			compatible = "snps,dw-apb-ssi";
+			reg = <0x041b0000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&clk CLK_SPI>, <&clk CLK_APB_SPI3>;
+			clock-names = "ssi_clk", "pclk";
+			interrupts = <SOC_PERIPHERAL_IRQ(41) IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		uart4: serial@41c0000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x041c0000 0x100>;
+			interrupts = <SOC_PERIPHERAL_IRQ(32) IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk CLK_UART4>, <&clk CLK_APB_UART4>;
+			clock-names = "baudclk", "apb_pclk";
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			status = "disabled";
+		};
+
+		sdhci0: mmc@4310000 {
+			compatible = "sophgo,cv1800b-dwcmshc";
+			reg = <0x4310000 0x1000>;
+			interrupts = <SOC_PERIPHERAL_IRQ(20) IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk CLK_AXI4_SD0>,
+				 <&clk CLK_SD0>;
+			clock-names = "core", "bus";
+			status = "disabled";
+		};
+
+		sdhci1: mmc@4320000 {
+			compatible = "sophgo,cv1800b-dwcmshc";
+			reg = <0x4320000 0x1000>;
+			interrupts = <SOC_PERIPHERAL_IRQ(22) IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk CLK_AXI4_SD1>,
+				 <&clk CLK_SD1>;
+			clock-names = "core", "bus";
+			status = "disabled";
+		};
+
+		dmac: dma-controller@4330000 {
+			compatible = "snps,axi-dma-1.01a";
+			reg = <0x04330000 0x1000>;
+			interrupts = <SOC_PERIPHERAL_IRQ(13) IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk CLK_SDMA_AXI>, <&clk CLK_SDMA_AXI>;
+			clock-names = "core-clk", "cfgr-clk";
+			#dma-cells = <1>;
+			dma-channels = <8>;
+			snps,block-size = <1024 1024 1024 1024
+					   1024 1024 1024 1024>;
+			snps,priority = <0 1 2 3 4 5 6 7>;
+			snps,dma-masters = <2>;
+			snps,data-width = <4>;
+			status = "disabled";
+		};
+	};
+};
diff --git a/arch/riscv/boot/dts/sophgo/cv18xx.dtsi b/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
index c18822ec849f..57a01b71aa67 100644
--- a/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
@@ -4,9 +4,9 @@
  * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
  */
 
-#include <dt-bindings/clock/sophgo,cv1800.h>
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
+#define SOC_PERIPHERAL_IRQ(nr)		((nr) + 16)
+
+#include "cv18xx-periph.dtsi"
 
 / {
 	#address-cells = <1>;
@@ -41,310 +41,11 @@ cpu0_intc: interrupt-controller {
 		};
 	};
 
-	osc: oscillator {
-		compatible = "fixed-clock";
-		clock-output-names = "osc_25m";
-		#clock-cells = <0>;
-	};
-
 	soc {
-		compatible = "simple-bus";
 		interrupt-parent = <&plic>;
-		#address-cells = <1>;
-		#size-cells = <1>;
 		dma-noncoherent;
 		ranges;
 
-		clk: clock-controller@3002000 {
-			reg = <0x03002000 0x1000>;
-			clocks = <&osc>;
-			#clock-cells = <1>;
-		};
-
-		gpio0: gpio@3020000 {
-			compatible = "snps,dw-apb-gpio";
-			reg = <0x3020000 0x1000>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			porta: gpio-controller@0 {
-				compatible = "snps,dw-apb-gpio-port";
-				gpio-controller;
-				#gpio-cells = <2>;
-				ngpios = <32>;
-				reg = <0>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				interrupts = <60 IRQ_TYPE_LEVEL_HIGH>;
-			};
-		};
-
-		gpio1: gpio@3021000 {
-			compatible = "snps,dw-apb-gpio";
-			reg = <0x3021000 0x1000>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			portb: gpio-controller@0 {
-				compatible = "snps,dw-apb-gpio-port";
-				gpio-controller;
-				#gpio-cells = <2>;
-				ngpios = <32>;
-				reg = <0>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				interrupts = <61 IRQ_TYPE_LEVEL_HIGH>;
-			};
-		};
-
-		gpio2: gpio@3022000 {
-			compatible = "snps,dw-apb-gpio";
-			reg = <0x3022000 0x1000>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			portc: gpio-controller@0 {
-				compatible = "snps,dw-apb-gpio-port";
-				gpio-controller;
-				#gpio-cells = <2>;
-				ngpios = <32>;
-				reg = <0>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				interrupts = <62 IRQ_TYPE_LEVEL_HIGH>;
-			};
-		};
-
-		gpio3: gpio@3023000 {
-			compatible = "snps,dw-apb-gpio";
-			reg = <0x3023000 0x1000>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			portd: gpio-controller@0 {
-				compatible = "snps,dw-apb-gpio-port";
-				gpio-controller;
-				#gpio-cells = <2>;
-				ngpios = <32>;
-				reg = <0>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-				interrupts = <63 IRQ_TYPE_LEVEL_HIGH>;
-			};
-		};
-
-		saradc: adc@30f0000 {
-			compatible = "sophgo,cv1800b-saradc";
-			reg = <0x030f0000 0x1000>;
-			clocks = <&clk CLK_SARADC>;
-			interrupts = <100 IRQ_TYPE_LEVEL_HIGH>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			status = "disabled";
-
-			channel@0 {
-				reg = <0>;
-			};
-
-			channel@1 {
-				reg = <1>;
-			};
-
-			channel@2 {
-				reg = <2>;
-			};
-		};
-
-		i2c0: i2c@4000000 {
-			compatible = "snps,designware-i2c";
-			reg = <0x04000000 0x10000>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			clocks = <&clk CLK_I2C>, <&clk CLK_APB_I2C0>;
-			clock-names = "ref", "pclk";
-			interrupts = <49 IRQ_TYPE_LEVEL_HIGH>;
-			status = "disabled";
-		};
-
-		i2c1: i2c@4010000 {
-			compatible = "snps,designware-i2c";
-			reg = <0x04010000 0x10000>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			clocks = <&clk CLK_I2C>, <&clk CLK_APB_I2C1>;
-			clock-names = "ref", "pclk";
-			interrupts = <50 IRQ_TYPE_LEVEL_HIGH>;
-			status = "disabled";
-		};
-
-		i2c2: i2c@4020000 {
-			compatible = "snps,designware-i2c";
-			reg = <0x04020000 0x10000>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			clocks = <&clk CLK_I2C>, <&clk CLK_APB_I2C2>;
-			clock-names = "ref", "pclk";
-			interrupts = <51 IRQ_TYPE_LEVEL_HIGH>;
-			status = "disabled";
-		};
-
-		i2c3: i2c@4030000 {
-			compatible = "snps,designware-i2c";
-			reg = <0x04030000 0x10000>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			clocks = <&clk CLK_I2C>, <&clk CLK_APB_I2C3>;
-			clock-names = "ref", "pclk";
-			interrupts = <52 IRQ_TYPE_LEVEL_HIGH>;
-			status = "disabled";
-		};
-
-		i2c4: i2c@4040000 {
-			compatible = "snps,designware-i2c";
-			reg = <0x04040000 0x10000>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			clocks = <&clk CLK_I2C>, <&clk CLK_APB_I2C4>;
-			clock-names = "ref", "pclk";
-			interrupts = <53 IRQ_TYPE_LEVEL_HIGH>;
-			status = "disabled";
-		};
-
-		uart0: serial@4140000 {
-			compatible = "snps,dw-apb-uart";
-			reg = <0x04140000 0x100>;
-			interrupts = <44 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clk CLK_UART0>, <&clk CLK_APB_UART0>;
-			clock-names = "baudclk", "apb_pclk";
-			reg-shift = <2>;
-			reg-io-width = <4>;
-			status = "disabled";
-		};
-
-		uart1: serial@4150000 {
-			compatible = "snps,dw-apb-uart";
-			reg = <0x04150000 0x100>;
-			interrupts = <45 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clk CLK_UART1>, <&clk CLK_APB_UART1>;
-			clock-names = "baudclk", "apb_pclk";
-			reg-shift = <2>;
-			reg-io-width = <4>;
-			status = "disabled";
-		};
-
-		uart2: serial@4160000 {
-			compatible = "snps,dw-apb-uart";
-			reg = <0x04160000 0x100>;
-			interrupts = <46 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clk CLK_UART2>, <&clk CLK_APB_UART2>;
-			clock-names = "baudclk", "apb_pclk";
-			reg-shift = <2>;
-			reg-io-width = <4>;
-			status = "disabled";
-		};
-
-		uart3: serial@4170000 {
-			compatible = "snps,dw-apb-uart";
-			reg = <0x04170000 0x100>;
-			interrupts = <47 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clk CLK_UART3>, <&clk CLK_APB_UART3>;
-			clock-names = "baudclk", "apb_pclk";
-			reg-shift = <2>;
-			reg-io-width = <4>;
-			status = "disabled";
-		};
-
-		spi0: spi@4180000 {
-			compatible = "snps,dw-apb-ssi";
-			reg = <0x04180000 0x10000>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			clocks = <&clk CLK_SPI>, <&clk CLK_APB_SPI0>;
-			clock-names = "ssi_clk", "pclk";
-			interrupts = <54 IRQ_TYPE_LEVEL_HIGH>;
-			status = "disabled";
-		};
-
-		spi1: spi@4190000 {
-			compatible = "snps,dw-apb-ssi";
-			reg = <0x04190000 0x10000>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			clocks = <&clk CLK_SPI>, <&clk CLK_APB_SPI1>;
-			clock-names = "ssi_clk", "pclk";
-			interrupts = <55 IRQ_TYPE_LEVEL_HIGH>;
-			status = "disabled";
-		};
-
-		spi2: spi@41a0000 {
-			compatible = "snps,dw-apb-ssi";
-			reg = <0x041a0000 0x10000>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			clocks = <&clk CLK_SPI>, <&clk CLK_APB_SPI2>;
-			clock-names = "ssi_clk", "pclk";
-			interrupts = <56 IRQ_TYPE_LEVEL_HIGH>;
-			status = "disabled";
-		};
-
-		spi3: spi@41b0000 {
-			compatible = "snps,dw-apb-ssi";
-			reg = <0x041b0000 0x10000>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			clocks = <&clk CLK_SPI>, <&clk CLK_APB_SPI3>;
-			clock-names = "ssi_clk", "pclk";
-			interrupts = <57 IRQ_TYPE_LEVEL_HIGH>;
-			status = "disabled";
-		};
-
-		uart4: serial@41c0000 {
-			compatible = "snps,dw-apb-uart";
-			reg = <0x041c0000 0x100>;
-			interrupts = <48 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clk CLK_UART4>, <&clk CLK_APB_UART4>;
-			clock-names = "baudclk", "apb_pclk";
-			reg-shift = <2>;
-			reg-io-width = <4>;
-			status = "disabled";
-		};
-
-		sdhci0: mmc@4310000 {
-			compatible = "sophgo,cv1800b-dwcmshc";
-			reg = <0x4310000 0x1000>;
-			interrupts = <36 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clk CLK_AXI4_SD0>,
-				 <&clk CLK_SD0>;
-			clock-names = "core", "bus";
-			status = "disabled";
-		};
-
-		sdhci1: mmc@4320000 {
-			compatible = "sophgo,cv1800b-dwcmshc";
-			reg = <0x4320000 0x1000>;
-			interrupts = <38 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clk CLK_AXI4_SD1>,
-				 <&clk CLK_SD1>;
-			clock-names = "core", "bus";
-			status = "disabled";
-		};
-
-		dmac: dma-controller@4330000 {
-			compatible = "snps,axi-dma-1.01a";
-			reg = <0x04330000 0x1000>;
-			interrupts = <29 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clk CLK_SDMA_AXI>, <&clk CLK_SDMA_AXI>;
-			clock-names = "core-clk", "cfgr-clk";
-			#dma-cells = <1>;
-			dma-channels = <8>;
-			snps,block-size = <1024 1024 1024 1024
-					   1024 1024 1024 1024>;
-			snps,priority = <0 1 2 3 4 5 6 7>;
-			snps,dma-masters = <2>;
-			snps,data-width = <4>;
-			status = "disabled";
-		};
-
 		plic: interrupt-controller@70000000 {
 			reg = <0x70000000 0x4000000>;
 			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>;
-- 
2.48.1


