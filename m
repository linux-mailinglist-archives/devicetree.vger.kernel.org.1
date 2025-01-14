Return-Path: <devicetree+bounces-138536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1965FA10FA7
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 19:16:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 68E947A070E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 18:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E0AE20B7FD;
	Tue, 14 Jan 2025 18:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtR9Aq//"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3300E20AF83;
	Tue, 14 Jan 2025 18:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736878505; cv=none; b=IVzk0+X7Fkr23FIr5RcNePk6Kx53/zv0LHINifNweXHVldUSzqfV7R96bveaZxwGwT/JzRFsXjDdCKNpYHfd2OTBk+5bHEgD5cHrM9ZuAcZzQXrd00epv5UogcLwDJqZU4S0qV2m+n9OOJWemSzSCh7N24Sh/JrljL/56GZGElU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736878505; c=relaxed/simple;
	bh=PwXk22kpdxXpCmu5fK+9K3ZS3UTDNsCYhJHGuzsoDBs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KV5b6LXjObAPLsTBeDV5rNKoNm+LWJzcebA/70A3mRrPcbaZvP5UcsYflppThb4J2o2g1rQ+Ih2J6WImEnkLMglDQiaezX0Te/s0VrCNaBI9uxYtLlYASGBKfs/bVVLXMPiI0WmYSuQXvk0aJj3sBvCsRYouo7lJ6jdzTkzU198=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtR9Aq//; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 814F6C4CEDD;
	Tue, 14 Jan 2025 18:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736878504;
	bh=PwXk22kpdxXpCmu5fK+9K3ZS3UTDNsCYhJHGuzsoDBs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AtR9Aq//3fGyrt/dYJc7ZN6aHJ17xui/wS2Hdm5yF35UJO8xQGYHhqSCgCi6YtXoj
	 AzVHhuhG72NY5pNc+gm8/paeTunT/FLpn1tlobHqZcsyIJnVvjf9+7TW6LzmzHdP2g
	 xJecjSKqP+3iD/3rJWcsWTAeElakXxwWoM5SlFObu6CCRc2yZ9zmuTEDs0vK7NHu6U
	 JHQYnshhovViAojQ1xYRpY4xslTkbsw0az2rpdsDl/mgssieXlsJKAKwtayxV322w4
	 0HWYIhL3dG1XgZmfLDgnfurs0vMCJsJUDCXD+SvyEYkDcO5c6xlqqSSFVNJFS0sR5C
	 HCKr6rf/uHZsg==
From: Masahiro Yamada <masahiroy@kernel.org>
To: Michal Simek <monstr@monstr.eu>
Cc: linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 4/4] microblaze: remove unnecessary system.dts
Date: Wed, 15 Jan 2025 03:13:54 +0900
Message-ID: <20250114181359.4192564-4-masahiroy@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250114181359.4192564-1-masahiroy@kernel.org>
References: <20250114181359.4192564-1-masahiroy@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The default image linux.bin does not contain any DTB, but a separate
system.dtb is compiled.

Michal Simek clearly explained "system.dtb is really old dtb more for
demonstration purpose and nothing else and likely it is not working on
any existing board." [1]

The system.dts is not necessary even for demonstration purposes. There
is no need to compile out-of-tree *.dts under arch/microblaze/boot/dts/
unless it is embedded into the kernel. Users can directly use dtc.

[1]: https://lore.kernel.org/all/d2bdfbfd-3721-407f-991e-566d48392add@amd.com/

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/microblaze/boot/dts/Makefile   |   3 +-
 arch/microblaze/boot/dts/system.dts | 353 ----------------------------
 2 files changed, 1 insertion(+), 355 deletions(-)
 delete mode 100644 arch/microblaze/boot/dts/system.dts

diff --git a/arch/microblaze/boot/dts/Makefile b/arch/microblaze/boot/dts/Makefile
index 932dc7550a1b..fa0a6c0854ca 100644
--- a/arch/microblaze/boot/dts/Makefile
+++ b/arch/microblaze/boot/dts/Makefile
@@ -1,8 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 #
 
-dtb-y := system.dtb
-
 ifneq ($(DTB),)
 obj-y += linked_dtb.o
 
@@ -11,6 +9,7 @@ $(obj)/linked_dtb.o: $(obj)/system.dtb
 
 # Generate system.dtb from $(DTB).dtb
 ifneq ($(DTB),system)
+targets += system.dtb
 $(obj)/system.dtb: $(obj)/$(DTB).dtb FORCE
 	$(call if_changed,copy)
 endif
diff --git a/arch/microblaze/boot/dts/system.dts b/arch/microblaze/boot/dts/system.dts
deleted file mode 100644
index 22252451ec09..000000000000
--- a/arch/microblaze/boot/dts/system.dts
+++ /dev/null
@@ -1,353 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * Device Tree Generator version: 1.1
- *
- * (C) Copyright 2007-2008 Xilinx, Inc.
- * (C) Copyright 2007-2009 Michal Simek
- *
- * Michal SIMEK <monstr@monstr.eu>
- *
- * CAUTION: This file is automatically generated by libgen.
- * Version: Xilinx EDK 10.1.03 EDK_K_SP3.6
- *
- * XPS project directory: Xilinx-ML505-ll_temac-sgdma-MMU-FDT-edk101
- */
-
-/dts-v1/;
-/ {
-	#address-cells = <1>;
-	#size-cells = <1>;
-	compatible = "xlnx,microblaze";
-	model = "testing";
-	DDR2_SDRAM: memory@90000000 {
-		device_type = "memory";
-		reg = < 0x90000000 0x10000000 >;
-	} ;
-	aliases {
-		ethernet0 = &Hard_Ethernet_MAC;
-		serial0 = &RS232_Uart_1;
-	} ;
-	chosen {
-		bootargs = "console=ttyUL0,115200 highres=on";
-		stdout-path = "/plb@0/serial@84000000";
-	} ;
-	cpus {
-		#address-cells = <1>;
-		#cpus = <0x1>;
-		#size-cells = <0>;
-		microblaze_0: cpu@0 {
-			clock-frequency = <125000000>;
-			compatible = "xlnx,microblaze-7.10.d";
-			d-cache-baseaddr = <0x90000000>;
-			d-cache-highaddr = <0x9fffffff>;
-			d-cache-line-size = <0x10>;
-			d-cache-size = <0x2000>;
-			device_type = "cpu";
-			i-cache-baseaddr = <0x90000000>;
-			i-cache-highaddr = <0x9fffffff>;
-			i-cache-line-size = <0x10>;
-			i-cache-size = <0x2000>;
-			model = "microblaze,7.10.d";
-			reg = <0>;
-			timebase-frequency = <125000000>;
-			xlnx,addr-tag-bits = <0xf>;
-			xlnx,allow-dcache-wr = <0x1>;
-			xlnx,allow-icache-wr = <0x1>;
-			xlnx,area-optimized = <0x0>;
-			xlnx,cache-byte-size = <0x2000>;
-			xlnx,d-lmb = <0x1>;
-			xlnx,d-opb = <0x0>;
-			xlnx,d-plb = <0x1>;
-			xlnx,data-size = <0x20>;
-			xlnx,dcache-addr-tag = <0xf>;
-			xlnx,dcache-always-used = <0x1>;
-			xlnx,dcache-byte-size = <0x2000>;
-			xlnx,dcache-line-len = <0x4>;
-			xlnx,dcache-use-fsl = <0x1>;
-			xlnx,debug-enabled = <0x1>;
-			xlnx,div-zero-exception = <0x1>;
-			xlnx,dopb-bus-exception = <0x0>;
-			xlnx,dynamic-bus-sizing = <0x1>;
-			xlnx,edge-is-positive = <0x1>;
-			xlnx,family = "virtex5";
-			xlnx,endianness = <0x1>;
-			xlnx,fpu-exception = <0x1>;
-			xlnx,fsl-data-size = <0x20>;
-			xlnx,fsl-exception = <0x0>;
-			xlnx,fsl-links = <0x0>;
-			xlnx,i-lmb = <0x1>;
-			xlnx,i-opb = <0x0>;
-			xlnx,i-plb = <0x1>;
-			xlnx,icache-always-used = <0x1>;
-			xlnx,icache-line-len = <0x4>;
-			xlnx,icache-use-fsl = <0x1>;
-			xlnx,ill-opcode-exception = <0x1>;
-			xlnx,instance = "microblaze_0";
-			xlnx,interconnect = <0x1>;
-			xlnx,interrupt-is-edge = <0x0>;
-			xlnx,iopb-bus-exception = <0x0>;
-			xlnx,mmu-dtlb-size = <0x4>;
-			xlnx,mmu-itlb-size = <0x2>;
-			xlnx,mmu-tlb-access = <0x3>;
-			xlnx,mmu-zones = <0x10>;
-			xlnx,number-of-pc-brk = <0x1>;
-			xlnx,number-of-rd-addr-brk = <0x0>;
-			xlnx,number-of-wr-addr-brk = <0x0>;
-			xlnx,opcode-0x0-illegal = <0x1>;
-			xlnx,pvr = <0x2>;
-			xlnx,pvr-user1 = <0x0>;
-			xlnx,pvr-user2 = <0x0>;
-			xlnx,reset-msr = <0x0>;
-			xlnx,sco = <0x0>;
-			xlnx,unaligned-exceptions = <0x1>;
-			xlnx,use-barrel = <0x1>;
-			xlnx,use-dcache = <0x1>;
-			xlnx,use-div = <0x1>;
-			xlnx,use-ext-brk = <0x1>;
-			xlnx,use-ext-nm-brk = <0x1>;
-			xlnx,use-extended-fsl-instr = <0x0>;
-			xlnx,use-fpu = <0x2>;
-			xlnx,use-hw-mul = <0x2>;
-			xlnx,use-icache = <0x1>;
-			xlnx,use-interrupt = <0x1>;
-			xlnx,use-mmu = <0x3>;
-			xlnx,use-msr-instr = <0x1>;
-			xlnx,use-pcmp-instr = <0x1>;
-		} ;
-	} ;
-	mb_plb: plb@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "xlnx,plb-v46-1.03.a", "xlnx,plb-v46-1.00.a", "simple-bus";
-		ranges ;
-		FLASH: flash@a0000000 {
-			bank-width = <2>;
-			compatible = "xlnx,xps-mch-emc-2.00.a", "cfi-flash";
-			reg = < 0xa0000000 0x2000000 >;
-			xlnx,family = "virtex5";
-			xlnx,include-datawidth-matching-0 = <0x1>;
-			xlnx,include-datawidth-matching-1 = <0x0>;
-			xlnx,include-datawidth-matching-2 = <0x0>;
-			xlnx,include-datawidth-matching-3 = <0x0>;
-			xlnx,include-negedge-ioregs = <0x0>;
-			xlnx,include-plb-ipif = <0x1>;
-			xlnx,include-wrbuf = <0x1>;
-			xlnx,max-mem-width = <0x10>;
-			xlnx,mch-native-dwidth = <0x20>;
-			xlnx,mch-plb-clk-period-ps = <0x1f40>;
-			xlnx,mch-splb-awidth = <0x20>;
-			xlnx,mch0-accessbuf-depth = <0x10>;
-			xlnx,mch0-protocol = <0x0>;
-			xlnx,mch0-rddatabuf-depth = <0x10>;
-			xlnx,mch1-accessbuf-depth = <0x10>;
-			xlnx,mch1-protocol = <0x0>;
-			xlnx,mch1-rddatabuf-depth = <0x10>;
-			xlnx,mch2-accessbuf-depth = <0x10>;
-			xlnx,mch2-protocol = <0x0>;
-			xlnx,mch2-rddatabuf-depth = <0x10>;
-			xlnx,mch3-accessbuf-depth = <0x10>;
-			xlnx,mch3-protocol = <0x0>;
-			xlnx,mch3-rddatabuf-depth = <0x10>;
-			xlnx,mem0-width = <0x10>;
-			xlnx,mem1-width = <0x20>;
-			xlnx,mem2-width = <0x20>;
-			xlnx,mem3-width = <0x20>;
-			xlnx,num-banks-mem = <0x1>;
-			xlnx,num-channels = <0x0>;
-			xlnx,priority-mode = <0x0>;
-			xlnx,synch-mem-0 = <0x0>;
-			xlnx,synch-mem-1 = <0x0>;
-			xlnx,synch-mem-2 = <0x0>;
-			xlnx,synch-mem-3 = <0x0>;
-			xlnx,synch-pipedelay-0 = <0x2>;
-			xlnx,synch-pipedelay-1 = <0x2>;
-			xlnx,synch-pipedelay-2 = <0x2>;
-			xlnx,synch-pipedelay-3 = <0x2>;
-			xlnx,tavdv-ps-mem-0 = <0x1adb0>;
-			xlnx,tavdv-ps-mem-1 = <0x3a98>;
-			xlnx,tavdv-ps-mem-2 = <0x3a98>;
-			xlnx,tavdv-ps-mem-3 = <0x3a98>;
-			xlnx,tcedv-ps-mem-0 = <0x1adb0>;
-			xlnx,tcedv-ps-mem-1 = <0x3a98>;
-			xlnx,tcedv-ps-mem-2 = <0x3a98>;
-			xlnx,tcedv-ps-mem-3 = <0x3a98>;
-			xlnx,thzce-ps-mem-0 = <0x88b8>;
-			xlnx,thzce-ps-mem-1 = <0x1b58>;
-			xlnx,thzce-ps-mem-2 = <0x1b58>;
-			xlnx,thzce-ps-mem-3 = <0x1b58>;
-			xlnx,thzoe-ps-mem-0 = <0x1b58>;
-			xlnx,thzoe-ps-mem-1 = <0x1b58>;
-			xlnx,thzoe-ps-mem-2 = <0x1b58>;
-			xlnx,thzoe-ps-mem-3 = <0x1b58>;
-			xlnx,tlzwe-ps-mem-0 = <0x88b8>;
-			xlnx,tlzwe-ps-mem-1 = <0x0>;
-			xlnx,tlzwe-ps-mem-2 = <0x0>;
-			xlnx,tlzwe-ps-mem-3 = <0x0>;
-			xlnx,twc-ps-mem-0 = <0x2af8>;
-			xlnx,twc-ps-mem-1 = <0x3a98>;
-			xlnx,twc-ps-mem-2 = <0x3a98>;
-			xlnx,twc-ps-mem-3 = <0x3a98>;
-			xlnx,twp-ps-mem-0 = <0x11170>;
-			xlnx,twp-ps-mem-1 = <0x2ee0>;
-			xlnx,twp-ps-mem-2 = <0x2ee0>;
-			xlnx,twp-ps-mem-3 = <0x2ee0>;
-			xlnx,xcl0-linesize = <0x4>;
-			xlnx,xcl0-writexfer = <0x1>;
-			xlnx,xcl1-linesize = <0x4>;
-			xlnx,xcl1-writexfer = <0x1>;
-			xlnx,xcl2-linesize = <0x4>;
-			xlnx,xcl2-writexfer = <0x1>;
-			xlnx,xcl3-linesize = <0x4>;
-			xlnx,xcl3-writexfer = <0x1>;
-		} ;
-		Hard_Ethernet_MAC: xps-ll-temac@81c00000 {
-			#address-cells = <1>;
-			#size-cells = <1>;
-			compatible = "xlnx,compound";
-			ranges ;
-			ethernet@81c00000 {
-				compatible = "xlnx,xps-ll-temac-1.01.b", "xlnx,xps-ll-temac-1.00.a";
-				interrupt-parent = <&xps_intc_0>;
-				interrupts = < 5 2 >;
-				llink-connected = <&PIM3>;
-				local-mac-address = [ 00 0a 35 00 00 00 ];
-				reg = < 0x81c00000 0x40 >;
-				xlnx,bus2core-clk-ratio = <0x1>;
-				xlnx,phy-type = <0x1>;
-				xlnx,phyaddr = <0x1>;
-				xlnx,rxcsum = <0x0>;
-				xlnx,rxfifo = <0x1000>;
-				xlnx,temac-type = <0x0>;
-				xlnx,txcsum = <0x0>;
-				xlnx,txfifo = <0x1000>;
-			} ;
-		} ;
-		IIC_EEPROM: i2c@81600000 {
-			compatible = "xlnx,xps-iic-2.00.a";
-			interrupt-parent = <&xps_intc_0>;
-			interrupts = < 6 2 >;
-			reg = < 0x81600000 0x10000 >;
-			xlnx,clk-freq = <0x7735940>;
-			xlnx,family = "virtex5";
-			xlnx,gpo-width = <0x1>;
-			xlnx,iic-freq = <0x186a0>;
-			xlnx,scl-inertial-delay = <0x0>;
-			xlnx,sda-inertial-delay = <0x0>;
-			xlnx,ten-bit-adr = <0x0>;
-		} ;
-		LEDs_8Bit: gpio@81400000 {
-			compatible = "xlnx,xps-gpio-1.00.a";
-			interrupt-parent = <&xps_intc_0>;
-			interrupts = < 7 2 >;
-			reg = < 0x81400000 0x10000 >;
-			xlnx,all-inputs = <0x0>;
-			xlnx,all-inputs-2 = <0x0>;
-			xlnx,dout-default = <0x0>;
-			xlnx,dout-default-2 = <0x0>;
-			xlnx,family = "virtex5";
-			xlnx,gpio-width = <0x8>;
-			xlnx,interrupt-present = <0x1>;
-			xlnx,is-bidir = <0x1>;
-			xlnx,is-bidir-2 = <0x1>;
-			xlnx,is-dual = <0x0>;
-			xlnx,tri-default = <0xffffffff>;
-			xlnx,tri-default-2 = <0xffffffff>;
-			#gpio-cells = <2>;
-			gpio-controller;
-		} ;
-
-		gpio-leds {
-			compatible = "gpio-leds";
-
-			heartbeat {
-				label = "Heartbeat";
-				gpios = <&LEDs_8Bit 4 1>;
-				linux,default-trigger = "heartbeat";
-			};
-
-			yellow {
-				label = "Yellow";
-				gpios = <&LEDs_8Bit 5 1>;
-			};
-
-			red {
-				label = "Red";
-				gpios = <&LEDs_8Bit 6 1>;
-			};
-
-			green {
-				label = "Green";
-				gpios = <&LEDs_8Bit 7 1>;
-			};
-		} ;
-
-		gpio-restart {
-			compatible = "gpio-restart";
-			/*
-			 * FIXME: is this active low or active high?
-			 * the current flag (1) indicates active low.
-			 * delay measures are templates, should be adjusted
-			 * to datasheet or trial-and-error with real hardware.
-			 */
-			gpios = <&LEDs_8Bit 2 1>;
-			active-delay = <100>;
-			inactive-delay = <10>;
-			wait-delay = <100>;
-		};
-
-		RS232_Uart_1: serial@84000000 {
-			clock-frequency = <125000000>;
-			compatible = "xlnx,xps-uartlite-1.00.a";
-			current-speed = <115200>;
-			device_type = "serial";
-			interrupt-parent = <&xps_intc_0>;
-			interrupts = < 8 0 >;
-			port-number = <0>;
-			reg = < 0x84000000 0x10000 >;
-			xlnx,baudrate = <0x1c200>;
-			xlnx,data-bits = <0x8>;
-			xlnx,family = "virtex5";
-			xlnx,odd-parity = <0x0>;
-			xlnx,use-parity = <0x0>;
-		} ;
-		debug_module: debug@84400000 {
-			compatible = "xlnx,mdm-1.00.d";
-			reg = < 0x84400000 0x10000 >;
-			xlnx,family = "virtex5";
-			xlnx,interconnect = <0x1>;
-			xlnx,jtag-chain = <0x2>;
-			xlnx,mb-dbg-ports = <0x1>;
-			xlnx,uart-width = <0x8>;
-			xlnx,use-uart = <0x1>;
-			xlnx,write-fsl-ports = <0x0>;
-		} ;
-		mpmc@90000000 {
-			#address-cells = <1>;
-			#size-cells = <1>;
-			compatible = "xlnx,mpmc-4.02.a";
-			ranges ;
-			PIM3: sdma@84600180 {
-				compatible = "xlnx,ll-dma-1.00.a";
-				interrupt-parent = <&xps_intc_0>;
-				interrupts = < 2 2 1 2 >;
-				reg = < 0x84600180 0x80 >;
-			} ;
-		} ;
-		xps_intc_0: interrupt-controller@81800000 {
-			#interrupt-cells = <0x2>;
-			compatible = "xlnx,xps-intc-1.00.a";
-			interrupt-controller ;
-			reg = < 0x81800000 0x10000 >;
-			xlnx,kind-of-intr = <0x100>;
-			xlnx,num-intr-inputs = <0x9>;
-		} ;
-		xps_timer_1: timer@83c00000 {
-			compatible = "xlnx,xps-timer-1.00.a";
-			interrupt-parent = <&xps_intc_0>;
-			interrupts = < 3 2 >;
-			reg = < 0x83c00000 0x10000 >;
-			xlnx,count-width = <0x20>;
-			xlnx,one-timer-only = <0x0>;
-		} ;
-	} ;
-}  ;
-- 
2.43.0


