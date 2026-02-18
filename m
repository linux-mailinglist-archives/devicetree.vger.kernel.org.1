Return-Path: <devicetree+bounces-266372-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOluCyiWlWk1SgIAu9opvQ
	(envelope-from <devicetree+bounces-266372-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:36:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEF4155857
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:36:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A069E30FD9E0
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:22:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9658F2FFF8E;
	Wed, 18 Feb 2026 10:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="kWeLo4kx"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (pouet.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085D3266581;
	Wed, 18 Feb 2026 10:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771410084; cv=none; b=GOlssUq9+cXvjVVYYmA4bSAaWTaCT6mZ20sJMiNZWwbuAF8hszJkO2Zj4mEB1bki5XeyxdJ4y5utS8tFbbOaBsI18dfKJJSDl8bkIaVqMtMQ10tLuPP0XgMZlLABqYZKX6bAu6Ee1xHoM9qSNneNmQ3yoS55KqWnJcAQywT+478=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771410084; c=relaxed/simple;
	bh=UeFlavmnt7uIyd9IWGgQdfb30RwEmhTPoe/K9fhYX3E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KaOwTCXURPFsVpWUGaFenYvkxpwzxMv92a8VIgTHHHp+p/jwhhkJoNDJ8nn3T2nFQ0cMqpm5IjmR1Rju2IaaDSzj/Q/V5dN2VAr2d2UJBUzXO2PrA+PbQ6sgo5QhxGU9dccHrcAfyAQ6M3e+EaNBacYkEWAfM9goNeJfsMtugk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=kWeLo4kx; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
Received: from localhost.localdomain (2A02-842b-8136-0001-B865-661d-5641-E7C6.rev.sfr.net [IPv6:2a02:842b:8136:1:b865:661d:5641:e7c6])
	by courrier.aliel.fr (Postfix) with ESMTPSA id 1C72D4CB4C;
	Wed, 18 Feb 2026 10:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1771410081;
	bh=UeFlavmnt7uIyd9IWGgQdfb30RwEmhTPoe/K9fhYX3E=;
	h=From:To:Cc:Subject:Date;
	b=kWeLo4kxE5qZfuL+yXPrK5lfUUDDNuh9fAAYLLDbnaVq5xpiFBAw/iXYjaY3/l0ju
	 gH43MmO1ZID4PxNN3C0NeoHJTzisdBfSkMn896+LS3jsWwjMmmM7ND2e9ecq65ukMI
	 gDLdXjznjwbRlsxVX1PEuaR2s5G28DdbmB36YFtM=
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
To: linux-amlogic@lists.infradead.org
Cc: Ronald Claveau <linux-kernel-dev@aliel.fr>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 6/7] arm64: dts: amlogic: Add clock and EMMC for T7
Date: Wed, 18 Feb 2026 11:20:43 +0100
Message-ID: <20260218102045.35633-1-linux-kernel-dev@aliel.fr>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266372-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[aliel.fr];
	DKIM_TRACE(0.00)[aliel.fr:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[aliel.fr,linaro.org,baylibre.com,googlemail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7CEF4155857
X-Rspamd-Action: no action

Add fixed clock and EMMC support for Amlogic T7 SoC family dtsi.

Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
 arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 137 +++++++++++++++++++-
 1 file changed, 134 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
index 6510068bcff9..e5932eb3db2b 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
@@ -3,6 +3,8 @@
  * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
  */
 
+#include <dt-bindings/clock/amlogic,t7-peripherals-clkc.h>
+#include <dt-bindings/clock/amlogic,t7-pll-clkc.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/power/amlogic,t7-pwrc.h>
 #include "amlogic-t7-reset.h"
@@ -208,12 +210,14 @@ soc {
 		ranges;
 
 		gic: interrupt-controller@fff01000 {
-			compatible = "arm,gic-400";
+			compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
 			#interrupt-cells = <3>;
 			#address-cells = <0>;
 			interrupt-controller;
 			reg = <0x0 0xfff01000 0 0x1000>,
-			      <0x0 0xfff02000 0 0x0100>;
+				  <0x0 0xfff02000 0 0x2000>,
+				  <0x0 0xfff04000 0 0x2000>,
+				  <0x0 0xfff06000 0 0x2000>;
 			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_HIGH)>;
 		};
 
@@ -224,6 +228,24 @@ apb4: bus@fe000000 {
 			#size-cells = <2>;
 			ranges = <0x0 0x0 0x0 0xfe000000 0x0 0x480000>;
 
+			clkc: clock-controller@0 {
+				compatible = "amlogic,t7-peripherals-clkc";
+				reg = <0x0 0x0 0x0 0x49c>;
+				#clock-cells = <1>;
+				clocks = <&xtal>,
+						 <&fpll CLKID_FDIV2>,
+						 <&fpll CLKID_FDIV2P5>,
+						 <&fpll CLKID_FDIV3>,
+						 <&fpll CLKID_FDIV4>,
+						 <&fpll CLKID_FDIV5>,
+						 <&hifi_pll CLKID_HIFI_PLL>,
+						 <&mpll CLKID_MPLL2>,
+						 <&mpll CLKID_MPLL3>,
+						 <&gp0_pll CLKID_GP0_PLL>;
+				clock-names = "xtal", "fdiv2", "fdiv2p5", "fdiv3", "fdiv4",
+							  "fdiv5", "hifi", "mpll2", "mpll3", "gp0";
+			};
+
 			reset: reset-controller@2000 {
 				compatible = "amlogic,t7-reset";
 				reg = <0x0 0x2000 0x0 0x98>;
@@ -250,6 +272,68 @@ gpio: bank@4000 {
 					#gpio-cells = <2>;
 					gpio-ranges = <&periphs_pinctrl 0 0 157>;
 				};
+
+				emmc_ctrl_pins: emmc-ctrl {
+					mux-0 {
+						groups = "emmc_cmd";
+						function = "emmc";
+						bias-pull-up;
+						drive-strength-microamp = <4000>;
+					};
+
+					mux-1 {
+						groups = "emmc_clk";
+						function = "emmc";
+						bias-disable;
+						drive-strength-microamp = <4000>;
+					};
+				};
+
+				emmc_data_4b_pins: emmc-data-4b {
+					mux-0 {
+						groups = "emmc_nand_d0",
+								 "emmc_nand_d1",
+								 "emmc_nand_d2",
+								 "emmc_nand_d3";
+						function = "emmc";
+						bias-pull-up;
+						drive-strength-microamp = <4000>;
+					};
+				};
+
+				emmc_data_8b_pins: emmc-data-8b {
+					mux-0 {
+						groups = "emmc_nand_d0",
+								 "emmc_nand_d1",
+								 "emmc_nand_d2",
+								 "emmc_nand_d3",
+								 "emmc_nand_d4",
+								 "emmc_nand_d5",
+								 "emmc_nand_d6",
+								 "emmc_nand_d7";
+						function = "emmc";
+						bias-pull-up;
+						drive-strength-microamp = <4000>;
+					};
+				};
+
+				emmc_ds_pins: emmc-ds {
+					mux {
+						groups = "emmc_nand_ds";
+						function = "emmc";
+						bias-pull-down;
+						drive-strength-microamp = <4000>;
+					};
+				};
+
+				emmc_clk_gate_pins: emmc_clk_gate {
+					mux {
+						groups = "GPIOB_8";
+						function = "gpio_periphs";
+						bias-pull-down;
+						drive-strength-microamp = <4000>;
+					};
+				};
 			};
 
 			gpio_intc: interrupt-controller@4080 {
@@ -262,8 +346,40 @@ gpio_intc: interrupt-controller@4080 {
 					<10 11 12 13 14 15 16 17 18 19 20 21>;
 			};
 
+			fpll: clock-controller@8040 {
+				compatible = "amlogic,t7-fpll";
+				reg = <0x0 0x8040 0x0 0x20>;
+				#clock-cells = <1>;
+				clocks = <&xtal>;
+				clock-names = "xtal";
+			};
+
+			gp0_pll: clock-controller@8080 {
+				compatible = "amlogic,t7-gp0-pll";
+				reg = <0x0 0x8080 0x0 0x20>;
+				#clock-cells = <1>;
+				clocks = <&xtal>;
+				clock-names = "in0";
+			};
+
+			hifi_pll: clock-controller@8100 {
+				compatible = "amlogic,t7-hifi-pll";
+				reg = <0x0 0x8100 0x0 0x20>;
+				#clock-cells = <1>;
+				clocks = <&xtal>;
+				clock-names = "in0";
+			};
+
+			mpll: clock-controller@8180 {
+				compatible = "amlogic,t7-mpll";
+				reg = <0x0 0x8180 0x0 0x20>;
+				#clock-cells = <1>;
+				clocks = <&fpll CLKID_FPLL_DCO>;
+				clock-names = "in0";
+			};
+
 			uart_a: serial@78000 {
-				compatible = "amlogic,t7-uart", "amlogic,meson-s4-uart";
+				compatible = "amlogic,meson-s4-uart";
 				reg = <0x0 0x78000 0x0 0x18>;
 				interrupts = <GIC_SPI 168 IRQ_TYPE_EDGE_RISING>;
 				status = "disabled";
@@ -276,6 +392,21 @@ sec_ao: ao-secure@10220 {
 				reg = <0x0 0x10220 0x0 0x140>;
 				amlogic,has-chip-id;
 			};
+
+			sd_emmc_c: mmc@8c000{
+				compatible = "amlogic,meson-axg-mmc";
+				reg = <0x0 0x8c000 0x0 0x800>;
+				interrupts = <GIC_SPI 178 IRQ_TYPE_EDGE_RISING>;
+				status = "disabled";
+				clocks = <&clkc CLKID_SYS_SD_EMMC_C>,
+						 <&clkc CLKID_SD_EMMC_C>,
+						 <&gp0_pll CLKID_GP0_PLL>;
+				clock-names = "core", "clkin0", "clkin1";
+				assigned-clocks = <&clkc CLKID_SD_EMMC_C_SEL>;
+				assigned-clock-parents = <&xtal>;
+				no-sdio;
+				no-sd;
+			};
 		};
 
 	};
-- 
2.49.0


