Return-Path: <devicetree+bounces-135291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E8FA0063E
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 09:49:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21A8318811D4
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 08:49:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 018841C549F;
	Fri,  3 Jan 2025 08:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hPz95lna"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248E34C62;
	Fri,  3 Jan 2025 08:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735894149; cv=none; b=hiC28HTzqwtAZ0HfsRK6x0kFly7J9B1t4MJD43XIcnBNH0m+sdN5QhqwYoptgWbPmvMlTUN+SfscVvyLWZVPRcvugpqXJnmBHhps6fOuwSzhZDqx/OKZXaD1DrhhBqzbB995ilCIwJQS4NxuoXbBIYJim3oc5uxnIJLXeuWai8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735894149; c=relaxed/simple;
	bh=urxiKoKoza0Kl8wH9tmmKieOJ8djvOcj46qlWBs8+Nw=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=Jvf57q2EEn9HSKHzq2Y1msQNul3YmbwQcfeWMCWmZaG+l3+ymJ7bIYCqW876C1PHmFpwdS2Kd4qWfAOWde1LwixvxGz8frxGN36B2XzLRR77aSboctVPQEmCxUuhowtqofiCkhZ+8zpA8I5ZS2X04K5d2VeikFhb5T4djFFpCdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hPz95lna; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-46785fbb949so112956301cf.3;
        Fri, 03 Jan 2025 00:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735894147; x=1736498947; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HLmGBIb1voGZYuClLJhDAY8hy6rIsGyArNIHQwMDhy8=;
        b=hPz95lnarxFPexUkKSm7yz5+zpqNuUpJJUX4B0lVrIXZwbZXO7XJpa+Ab/tz2BUjUO
         i1ueSlKkWytFrhA3GKud08K3XGORHroFBhHuQ5pEZJkWdfASRMmSaDKcIDxoJKgX49mJ
         jgKcU/K+aGf6EW0DcMh8MJydnLK19qB6mt7kbMkAQMHhQ/APPoyJskmaKjQoLPlGJZYT
         Dys+3Y9qh4yhwqyaSl/858aiZ3hURN+z/JlBDQQ169PYjZGOUAU7mLcD8nWBUj3HmYnt
         ZvYGNu5Yh/yR52yY2VDLgK1zmH7WN1U/sJFyEIhO087Rl1UVKCVps09I6KPLEnaS0ogX
         JFoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735894147; x=1736498947;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HLmGBIb1voGZYuClLJhDAY8hy6rIsGyArNIHQwMDhy8=;
        b=Hh2vbrIXDm5t3ZcWOhu/fJrIpNVajlRo812LjJNerIU3j1dvmyXVAAGVBa/B2rvMAU
         b2zdsbBlVUi2I28ddMgSHnB4My9IxQXjp1gN4Vxu0zQSCoDx9uNZ3aW4areg2nw0SOac
         lwyawV3XK/PeR6Z364HqhPxlZlxvv8fKOMd2CBfXDijsFuQV9ZWCVUAwioMKyFzDf2Qy
         mdsQ2sX4KrSV2SUM/ZumJveSGPyoXkWkaoVkdqAiYD/VhRfWvc8Fhz7BLiBQe/6GcDfN
         RdUjQ39KhKS9D0s1Ig+gb1XZ9SmdsWQrRfiRKHeVImBhxLvMNS7PRaJRmt/mJSLHXK8p
         kTMg==
X-Forwarded-Encrypted: i=1; AJvYcCXccTCsFkZrsLbWLa/dZiL1ccs0v6NK86JEsi4dTBOlobywjBO6UmwU/C5GIIbWy0p2c6hkDZ8KupHk@vger.kernel.org
X-Gm-Message-State: AOJu0YzvIDcu0DuPmfTRHqRtn2YFa2T7ho4ekmB5e18gZYaWkKkHdTri
	omHda8QFoV3FY4NW0SwAw43EUGlrKI8uT84Dg6zINwil5gVIY7QdxI859OGOiWoqIkUDV6PaU+7
	Ra3maujxHQLwzgeQHGro0/7H8dObxFUwvwls=
X-Gm-Gg: ASbGncv9wsAM6rgqX3Q3EGAm1S8UOPdZpcHy993qeRq5Ej4lK3zkopnqm5O6ozVyYVE
	0tY9AikLss85vEMqOpgCODO8LiYx+DBYDI4Y=
X-Google-Smtp-Source: AGHT+IG88OdSKvbixseMuYzQnEQtie3KG9hJek0Og0M9Mj+eCOQz1yZZ3tdOkem00u57R2ejywVt1INOuD/lRQAylig=
X-Received: by 2002:a05:622a:1a8d:b0:461:3834:b632 with SMTP id
 d75a77b69052e-46a4a8b2ae3mr799992991cf.1.1735894146968; Fri, 03 Jan 2025
 00:49:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: qin shaoqing <qinshaoqing076@gmail.com>
Date: Fri, 3 Jan 2025 16:48:56 +0800
Message-ID: <CAMq-bRkwJzn-_rvwreWU646Q64ZP-X61sczA5EG2Nubo9GN0Lw@mail.gmail.com>
Subject: [PATCH] riscv: dts: Add the device tree of the XiangShan platform's
 nanhu soc
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	wangran@bosc.ac.cn
Content-Type: text/plain; charset="UTF-8"

This patch adds the device tree support for the XiangShan platform's nanhu soc

Signed-off-by: qinshaoqing <qinshaoqing@bosc.ac.cn>
---
arch/riscv/Kconfig.socs                     |   5 +
arch/riscv/boot/dts/Makefile                |   1 +
arch/riscv/boot/dts/xiangshan/Makefile      |   2 +
arch/riscv/boot/dts/xiangshan/nanhu-v3a.dts | 226 ++++++++++++++++++++
4 files changed, 234 insertions(+)
create mode 100644 arch/riscv/boot/dts/xiangshan/Makefile
create mode 100644 arch/riscv/boot/dts/xiangshan/nanhu-v3a.dts

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index f51bb24bc84c..89c80fd493fb 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -80,4 +80,9 @@ config SOC_CANAAN_K210
  help
    This enables support for Canaan Kendryte K210 SoC platform hardware.

+config SOC_XIANGSHAN
+        bool "XiangShan SoCs"
+        help
+          This enables support for XiangShan SoC platform hardware
+
endmenu # "SoC selection"
diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
index fdae05bbf556..43a79cc9dd7c 100644
--- a/arch/riscv/boot/dts/Makefile
+++ b/arch/riscv/boot/dts/Makefile
@@ -7,5 +7,6 @@ subdir-y += sifive
subdir-y += sophgo
subdir-y += starfive
subdir-y += thead
+subdir-y += xiangshan

obj-$(CONFIG_BUILTIN_DTB) := $(addsuffix .dtb.o, $(CONFIG_BUILTIN_DTB_SOURCE))
diff --git a/arch/riscv/boot/dts/xiangshan/Makefile
b/arch/riscv/boot/dts/xiangshan/Makefile
new file mode 100644
index 000000000000..41e585490a97
--- /dev/null
+++ b/arch/riscv/boot/dts/xiangshan/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+dtb-$(CONFIG_SOC_XIANGSHAN) += nanhu-v3a.dtb
diff --git a/arch/riscv/boot/dts/xiangshan/nanhu-v3a.dts
b/arch/riscv/boot/dts/xiangshan/nanhu-v3a.dts
new file mode 100644
index 000000000000..560de7c7f22e
--- /dev/null
+++ b/arch/riscv/boot/dts/xiangshan/nanhu-v3a.dts
@@ -0,0 +1,226 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/* Copyright (c) 2023-2024 BOSC */
+
+/dts-v1/;
+
+/ {
+ #address-cells = <2>;
+ #size-cells = <2>;
+ compatible = "bosc,nanhu-v3a";
+
+ cpus {
+  #address-cells = <1>;
+  #size-cells = <0>;
+  timebase-frequency = <24000000>;
+
+  cpu0: cpu@0 {
+   compatible = "bosc,nanhu-v3a", "riscv";
+   device_type = "cpu";
+   riscv,isa = "rv64imafdcv";
+   d-cache-block-size = <64>;
+   d-cache-sets = <64>;
+   d-cache-size = <16384>;
+   d-tlb-sets = <1>;
+   d-tlb-size = <32>;
+   i-cache-block-size = <64>;
+   i-cache-sets = <64>;
+   i-cache-size = <16384>;
+   i-tlb-sets = <1>;
+   i-tlb-size = <32>;
+   mmu-type = "riscv,sv39";
+   reg = <0x0>;
+
+   cpu0_intc: interrupt-controller {
+    #interrupt-cells = <1>;
+    compatible = "riscv,cpu-intc";
+    interrupt-controller;
+   };
+  };
+
+  cpu1: cpu@1 {
+   compatible = "bosc,nanhu-v3a", "riscv";
+   device_type = "cpu";
+   riscv,isa = "rv64imafdcv";
+   d-cache-block-size = <64>;
+   d-cache-sets = <64>;
+   d-cache-size = <16384>;
+   d-tlb-sets = <1>;
+   d-tlb-size = <32>;
+   i-cache-block-size = <64>;
+   i-cache-sets = <64>;
+   i-cache-size = <16384>;
+   i-tlb-sets = <1>;
+   i-tlb-size = <32>;
+   mmu-type = "riscv,sv39";
+   reg = <0x1>;
+
+   cpu1_intc: interrupt-controller {
+    #interrupt-cells = <1>;
+    compatible = "riscv,cpu-intc";
+    interrupt-controller;
+   };
+  };
+ };
+
+ clkc: misc_clk {
+  compatible = "fixed-clock";
+  #clock-cells = <0>;
+  clock-output-names = "clkc";
+  clock-frequency = <100000000>;
+ };
+
+ sdhci_clock: sdhci_clck {
+  compatible = "fixed-clock";
+  #clock-cells = <0>;
+  clock-output-names = "sdhci_clock";
+  clock-frequency = <25000000>;
+ };
+
+ i2c0_clock: i2c0_clck {
+  compatible = "fixed-clock";
+  #clock-cells = <0>;
+  clock-output-names = "i2c0_clock";
+  clock-frequency = <100000000>;
+ };
+
+ soc {
+  #address-cells = <2>;
+  #size-cells = <2>;
+  compatible = "bosc,nanhu-v3a-soc", "simple-bus";
+  ranges;
+
+  clint0: clint@38000000 {
+   compatible = "riscv,clint0";
+   interrupts-extended = <&cpu0_intc 3 &cpu0_intc 7 &cpu1_intc 3 &cpu1_intc 7>;
+   reg = <0x0 0x38000000 0x0 0x10000>;
+   reg-names = "control";
+   clock-frequency-mhz = <10>;
+  };
+
+  plic: interrupt-controller@3c000000 {
+   #interrupt-cells = <1>;
+   compatible = "riscv,plic0";
+   interrupt-controller;
+   interrupts-extended = <&cpu0_intc 0xb &cpu0_intc 0x9 &cpu1_intc
0xb &cpu1_intc 0x9>;
+   reg = <0 0x3c000000 0 0x4000000>;
+   reg-names = "control";
+   riscv,max-priority = <7>;
+   riscv,ndev = <128>;
+  };
+
+  ethernet0: ethernet@190000 {
+   compatible = "st,stm32-dwmac", "snps,dwmac-3.50a";
+   reg = <0 0x190000 0 0x10000>;
+   reg-names = "stmmaceth";
+   interrupt-parent = <&plic>;
+   interrupts = <76 75 74>;
+   interrupt-names = "eth_lpi", "macirq", "eth_wake_irq";
+   clock-names = "stmmaceth";
+   clocks = <&clkc>;
+   snps,pbl = <2>;
+   snps,mixed-burst;
+   phy-mode = "rgmii";
+   phy-handle = <&phy0>;
+   mdio0: mdio {
+    #address-cells = <0x1>;
+    #size-cells = <0x0>;
+    compatible = "snps,dwmac-mdio";
+    phy0: phy@0 {
+     phyaddr = <0x0>;
+     compatible = "marvell,88E1510";
+     device_type = "ethernet-phy";
+     reg = <0x0>;
+    };
+    phy1: phy@1 {
+     phyaddr = <0x1>;
+     compatible = "marvell,88E1510";
+     device_type = "ethernet-phy";
+     reg = <0x1>;
+    };
+   };
+  };
+
+  ethernet1: ethernet@1a0000 {
+   compatible = "st,stm32-dwmac", "snps,dwmac-3.50a";
+   reg = <0 0x1a0000 0 0x10000>;
+   reg-names = "stmmaceth1";
+   interrupt-parent = <&plic>;
+   interrupts = <73 72 71>;
+   interrupt-names = "eth_lpi", "macirq", "eth_wake_irq";
+   clock-names = "stmmaceth";
+   clocks = <&clkc>;
+   snps,pbl = <2>;
+   snps,mixed-burst;
+   phy-mode = "rgmii";
+   fixed-link{
+    speed =  <1000>;
+    full-duplex;
+    pause;
+    asym-pause;
+   };
+  };
+
+  sdhci2: sdhci@1200000 {
+   compatible = "snps,dwcmshc-sdhci";
+   reg = <0 0x1200000 0 0x20000>;
+   interrupt-parent = <&plic>;
+   interrupts = <77 78>;
+   clocks = <&sdhci_clock>;
+   clock-names = "core";
+   no-1-8-v;
+   disable-wp;
+   bus-width = <4>;
+   max_req_size = <4096>;
+   status = "okay";
+  };
+
+  i2c@70000 {
+   compatible = "snps,designware-i2c";
+   #address-cells = <1>;
+   #size-cells = <0>;
+   reg = <0x0 0x70000 0x0 0x10000>;
+   interrupts = <66>;
+   interrupt-parent = <&plic>;
+   clock-frequency = <100000>;
+   clocks = <&i2c0_clock>;
+   status = "okay";
+  };
+
+  i2c@80000 {
+   compatible = "snps,designware-i2c";
+   #address-cells = <1>;
+   #size-cells = <0>;
+   reg = <0x0 0x80000 0x0 0x10000>;
+   interrupts = <65>;
+   interrupt-parent = <&plic>;
+   clock-frequency = <100000>;
+   clocks = <&i2c0_clock>;
+   status = "okay";
+  };
+
+  uart0: serial@50000 {
+   compatible = "ns16550a";
+   reg = <0x0 0x50000 0x0 0x10000>;
+   reg-shift = <0x02>;
+   reg-io-width = <0x04>;
+   interrupt-parent = <&plic>;
+   interrupts = <68>;
+   clock-frequency = <100000000>;
+   status = "okay";
+  };
+ };
+
+ memory: memory@100000000 {
+  device_type = "memory";
+  reg = <0x0 0x80000000 0x2 0x00000000>;
+ };
+
+ aliases {
+  serial0 = &uart0;
+ };
+
+ chosen {
+  bootargs = "console=ttyS0,115200 earlycon";
+  stdout-path = "serial0:115200n8";
+ };
+};
--
2.43.0

