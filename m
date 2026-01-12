Return-Path: <devicetree+bounces-253692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD5DD10969
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 05:42:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 719D030146CA
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 04:42:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 271CF264FBD;
	Mon, 12 Jan 2026 04:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPCSlwqM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041991E4AB
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 04:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768192923; cv=none; b=C5SgpvU5S7OKwg5XgWhR/3Vn2DAnL03lOxA/4V4NmKkZN4DdmgZSMsfpDDlnQHf001B0SDDCC3h1V8oxj1CN/OOMTY51on5ZWyMhdjDQf6aj2RNb7HuKSv83Y5s/Y1FrG/GcOqzgkDLepzlIbS892g2ND8O1ZzVkU1fwhpBva5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768192923; c=relaxed/simple;
	bh=GLHYzMYahKcO9E8TbEQFDB64LDBAnwrH3mmB/8VZJZ0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BuBiGFzGxYy0xkGqUDJPCOzD2whFJAorH9eAjuiGbCD/so1gp9mRds8h0RgefDIPGoLG9sm9tCerpfK76UacPvsYDebIJxGUfS6K1+M6KeXStuPSNF/ve5Zen2mQEmg+EqK5IY+4y11AAQhUv1KV6K+LmhEp3hF/n7Hysa4P7Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPCSlwqM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8318C19422;
	Mon, 12 Jan 2026 04:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768192922;
	bh=GLHYzMYahKcO9E8TbEQFDB64LDBAnwrH3mmB/8VZJZ0=;
	h=From:To:Cc:Subject:Date:From;
	b=tPCSlwqMP9Z7F7Tjon+pirJ3yTwSZmV1EvJyL1fzkw37GtOGNo7OrM2dhxw1FWj5D
	 H3rjOqe1t7KW2g0iDJOlWPeYHFUdco33UQm4twMrQou7D4Tg+KvkCUyoUFYPzWt+Su
	 YOWk2f8Y/bkkzPsQRRYIP2V685XYuveutG8Wqr7FuzpU676TDDZRG+wu9vdW7pbaNN
	 zjHcwee0SKvW/wBN68mL35Zt/GkFgwitXnXJ2XU74HsT16lDYEGKNLPOt/Zjl2U1A1
	 rFO/2HCisvgYinmzl/NVjuxF93haXlH7AOheTyJNowWxtCR1xa0kBiwWw/lNcLKGM+
	 DlioZdlf1lmaA==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCHv2] ARM: dts: socfpga: remove underscore node names for base socfpga dtsi
Date: Sun, 11 Jan 2026 22:41:53 -0600
Message-ID: <20260112044153.1887253-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The node names in a DTS file should be using a hyphen, not an underscore
as warned by 'dtc W=2'.

For clock nodes, use clock-controller@address and clock-<name>. While at
it, fix DTS coding style to use lowercase hex for values and unit
addresses for these clock nodes.

There are no functional change in this patch.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
v2: used clock-controller@address and clock-name
    reworded commit message
---
 arch/arm/boot/dts/intel/socfpga/socfpga.dtsi | 128 +++++++++----------
 1 file changed, 64 insertions(+), 64 deletions(-)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
index 35be14150f41..28494aeb71b2 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
@@ -131,17 +131,17 @@ osc2: osc2 {
 						compatible = "fixed-clock";
 					};
 
-					f2s_periph_ref_clk: f2s_periph_ref_clk {
+					f2s_periph_ref_clk: clock-f2s-periph-ref {
 						#clock-cells = <0>;
 						compatible = "fixed-clock";
 					};
 
-					f2s_sdram_ref_clk: f2s_sdram_ref_clk {
+					f2s_sdram_ref_clk: clock-f2s-sdram-ref {
 						#clock-cells = <0>;
 						compatible = "fixed-clock";
 					};
 
-					main_pll: main_pll@40 {
+					main_pll: clock-controller@40 {
 						#address-cells = <1>;
 						#size-cells = <0>;
 						#clock-cells = <0>;
@@ -149,7 +149,7 @@ main_pll: main_pll@40 {
 						clocks = <&osc1>;
 						reg = <0x40>;
 
-						mpuclk: mpuclk@48 {
+						mpuclk: clock-controller@48 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&main_pll>;
@@ -157,15 +157,15 @@ mpuclk: mpuclk@48 {
 							reg = <0x48>;
 						};
 
-						mainclk: mainclk@4c {
+						mainclk: clock-controller@4c {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&main_pll>;
 							div-reg = <0xe4 0 9>;
-							reg = <0x4C>;
+							reg = <0x4c>;
 						};
 
-						dbg_base_clk: dbg_base_clk@50 {
+						dbg_base_clk: clock-controller@50 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&main_pll>, <&osc1>;
@@ -173,29 +173,29 @@ dbg_base_clk: dbg_base_clk@50 {
 							reg = <0x50>;
 						};
 
-						main_qspi_clk: main_qspi_clk@54 {
+						main_qspi_clk: clock-controller@54 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&main_pll>;
 							reg = <0x54>;
 						};
 
-						main_nand_sdmmc_clk: main_nand_sdmmc_clk@58 {
+						main_nand_sdmmc_clk: clock-controller@58 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&main_pll>;
 							reg = <0x58>;
 						};
 
-						cfg_h2f_usr0_clk: cfg_h2f_usr0_clk@5c {
+						cfg_h2f_usr0_clk: clock-controller@5c {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&main_pll>;
-							reg = <0x5C>;
+							reg = <0x5c>;
 						};
 					};
 
-					periph_pll: periph_pll@80 {
+					periph_pll: clock-controller@80 {
 						#address-cells = <1>;
 						#size-cells = <0>;
 						#clock-cells = <0>;
@@ -203,50 +203,50 @@ periph_pll: periph_pll@80 {
 						clocks = <&osc1>, <&osc2>, <&f2s_periph_ref_clk>;
 						reg = <0x80>;
 
-						emac0_clk: emac0_clk@88 {
+						emac0_clk: clock-controller@88 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0x88>;
 						};
 
-						emac1_clk: emac1_clk@8c {
+						emac1_clk: clock-controller@8c {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&periph_pll>;
-							reg = <0x8C>;
+							reg = <0x8c>;
 						};
 
-						per_qspi_clk: per_qsi_clk@90 {
+						per_qspi_clk: clock-controller@90 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0x90>;
 						};
 
-						per_nand_mmc_clk: per_nand_mmc_clk@94 {
+						per_nand_mmc_clk: clock-controller@94 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0x94>;
 						};
 
-						per_base_clk: per_base_clk@98 {
+						per_base_clk: clock-controller@98 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0x98>;
 						};
 
-						h2f_usr1_clk: h2f_usr1_clk@9c {
+						h2f_usr1_clk: clock-controller@9c {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&periph_pll>;
-							reg = <0x9C>;
+							reg = <0x9c>;
 						};
 					};
 
-					sdram_pll: sdram_pll@c0 {
+					sdram_pll: clock-controller@c0 {
 						#address-cells = <1>;
 						#size-cells = <0>;
 						#clock-cells = <0>;
@@ -254,64 +254,64 @@ sdram_pll: sdram_pll@c0 {
 						clocks = <&osc1>, <&osc2>, <&f2s_sdram_ref_clk>;
 						reg = <0xC0>;
 
-						ddr_dqs_clk: ddr_dqs_clk@c8 {
+						ddr_dqs_clk: clock-controller@c8 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&sdram_pll>;
-							reg = <0xC8>;
+							reg = <0xc8>;
 						};
 
-						ddr_2x_dqs_clk: ddr_2x_dqs_clk@cc {
+						ddr_2x_dqs_clk: clock-controller@cc {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&sdram_pll>;
-							reg = <0xCC>;
+							reg = <0xcc>;
 						};
 
-						ddr_dq_clk: ddr_dq_clk@d0 {
+						ddr_dq_clk: clock-controller@d0 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&sdram_pll>;
-							reg = <0xD0>;
+							reg = <0xd0>;
 						};
 
-						h2f_usr2_clk: h2f_usr2_clk@d4 {
+						h2f_usr2_clk: clock-controller@d4 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&sdram_pll>;
-							reg = <0xD4>;
+							reg = <0xd4>;
 						};
 					};
 
-					mpu_periph_clk: mpu_periph_clk {
+					mpu_periph_clk: clock-mpu-periph {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-perip-clk";
 						clocks = <&mpuclk>;
 						fixed-divider = <4>;
 					};
 
-					mpu_l2_ram_clk: mpu_l2_ram_clk {
+					mpu_l2_ram_clk: clock-mpu-l2-ram {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-perip-clk";
 						clocks = <&mpuclk>;
 						fixed-divider = <2>;
 					};
 
-					l4_main_clk: l4_main_clk {
+					l4_main_clk: clock-l4-main {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&mainclk>;
 						clk-gate = <0x60 0>;
 					};
 
-					l3_main_clk: l3_main_clk {
+					l3_main_clk: clock-l3-main {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-perip-clk";
 						clocks = <&mainclk>;
 						fixed-divider = <1>;
 					};
 
-					l3_mp_clk: l3_mp_clk {
+					l3_mp_clk: clock-l3-mp {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&mainclk>;
@@ -319,14 +319,14 @@ l3_mp_clk: l3_mp_clk {
 						clk-gate = <0x60 1>;
 					};
 
-					l3_sp_clk: l3_sp_clk {
+					l3_sp_clk: clock-l3-sp {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&l3_mp_clk>;
 						div-reg = <0x64 2 2>;
 					};
 
-					l4_mp_clk: l4_mp_clk {
+					l4_mp_clk: clock-l4-mp {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&mainclk>, <&per_base_clk>;
@@ -334,7 +334,7 @@ l4_mp_clk: l4_mp_clk {
 						clk-gate = <0x60 2>;
 					};
 
-					l4_sp_clk: l4_sp_clk {
+					l4_sp_clk: clock-l4-sp {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&mainclk>, <&per_base_clk>;
@@ -342,7 +342,7 @@ l4_sp_clk: l4_sp_clk {
 						clk-gate = <0x60 3>;
 					};
 
-					dbg_at_clk: dbg_at_clk {
+					dbg_at_clk: clock-dbg-at {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&dbg_base_clk>;
@@ -350,7 +350,7 @@ dbg_at_clk: dbg_at_clk {
 						clk-gate = <0x60 4>;
 					};
 
-					dbg_clk: dbg_clk {
+					dbg_clk: clock-dbg {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&dbg_at_clk>;
@@ -358,50 +358,50 @@ dbg_clk: dbg_clk {
 						clk-gate = <0x60 5>;
 					};
 
-					dbg_trace_clk: dbg_trace_clk {
+					dbg_trace_clk: clock-dbg-trace {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&dbg_base_clk>;
-						div-reg = <0x6C 0 3>;
+						div-reg = <0x6c 0 3>;
 						clk-gate = <0x60 6>;
 					};
 
-					dbg_timer_clk: dbg_timer_clk {
+					dbg_timer_clk: clock-dbg-timer {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&dbg_base_clk>;
 						clk-gate = <0x60 7>;
 					};
 
-					cfg_clk: cfg_clk {
+					cfg_clk: clock-cfg {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&cfg_h2f_usr0_clk>;
 						clk-gate = <0x60 8>;
 					};
 
-					h2f_user0_clk: h2f_user0_clk {
+					h2f_user0_clk: clock-h2f-user0 {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&cfg_h2f_usr0_clk>;
 						clk-gate = <0x60 9>;
 					};
 
-					emac_0_clk: emac_0_clk {
+					emac_0_clk: clock-emac-0 {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&emac0_clk>;
 						clk-gate = <0xa0 0>;
 					};
 
-					emac_1_clk: emac_1_clk {
+					emac_1_clk: clock-emac-1 {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&emac1_clk>;
 						clk-gate = <0xa0 1>;
 					};
 
-					usb_mp_clk: usb_mp_clk {
+					usb_mp_clk: clock-usb-mp {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&per_base_clk>;
@@ -409,7 +409,7 @@ usb_mp_clk: usb_mp_clk {
 						div-reg = <0xa4 0 3>;
 					};
 
-					spi_m_clk: spi_m_clk {
+					spi_m_clk: clock-spi-m {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&per_base_clk>;
@@ -417,7 +417,7 @@ spi_m_clk: spi_m_clk {
 						div-reg = <0xa4 3 3>;
 					};
 
-					can0_clk: can0_clk {
+					can0_clk: clock-can0 {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&per_base_clk>;
@@ -425,7 +425,7 @@ can0_clk: can0_clk {
 						div-reg = <0xa4 6 3>;
 					};
 
-					can1_clk: can1_clk {
+					can1_clk: clock-can1 {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&per_base_clk>;
@@ -433,7 +433,7 @@ can1_clk: can1_clk {
 						div-reg = <0xa4 9 3>;
 					};
 
-					gpio_db_clk: gpio_db_clk {
+					gpio_db_clk: clock-gpio-db {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&per_base_clk>;
@@ -441,21 +441,21 @@ gpio_db_clk: gpio_db_clk {
 						div-reg = <0xa8 0 24>;
 					};
 
-					h2f_user1_clk: h2f_user1_clk {
+					h2f_user1_clk: clock-h2f-user1 {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&h2f_usr1_clk>;
 						clk-gate = <0xa0 7>;
 					};
 
-					sdmmc_clk: sdmmc_clk {
+					sdmmc_clk: clock-sdmmc {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&f2s_periph_ref_clk>, <&main_nand_sdmmc_clk>, <&per_nand_mmc_clk>;
 						clk-gate = <0xa0 8>;
 					};
 
-					sdmmc_clk_divided: sdmmc_clk_divided {
+					sdmmc_clk_divided: clock-sdmmc-divided {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&sdmmc_clk>;
@@ -463,21 +463,21 @@ sdmmc_clk_divided: sdmmc_clk_divided {
 						fixed-divider = <4>;
 					};
 
-					nand_x_clk: nand_x_clk {
+					nand_x_clk: clock-nand-x {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&f2s_periph_ref_clk>, <&main_nand_sdmmc_clk>, <&per_nand_mmc_clk>;
 						clk-gate = <0xa0 9>;
 					};
 
-					nand_ecc_clk: nand_ecc_clk {
+					nand_ecc_clk: clock-nand-ecc {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&nand_x_clk>;
 						clk-gate = <0xa0 9>;
 					};
 
-					nand_clk: nand_clk {
+					nand_clk: clock-nand {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&nand_x_clk>;
@@ -485,35 +485,35 @@ nand_clk: nand_clk {
 						fixed-divider = <4>;
 					};
 
-					qspi_clk: qspi_clk {
+					qspi_clk: clock-qspi {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&f2s_periph_ref_clk>, <&main_qspi_clk>, <&per_qspi_clk>;
 						clk-gate = <0xa0 11>;
 					};
 
-					ddr_dqs_clk_gate: ddr_dqs_clk_gate {
+					ddr_dqs_clk_gate: clock-ddr-dqs-gate {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&ddr_dqs_clk>;
 						clk-gate = <0xd8 0>;
 					};
 
-					ddr_2x_dqs_clk_gate: ddr_2x_dqs_clk_gate {
+					ddr_2x_dqs_clk_gate: clock-ddr-2x-dqs-gate {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&ddr_2x_dqs_clk>;
 						clk-gate = <0xd8 1>;
 					};
 
-					ddr_dq_clk_gate: ddr_dq_clk_gate {
+					ddr_dq_clk_gate: clock-ddr-dq-gate {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&ddr_dq_clk>;
 						clk-gate = <0xd8 2>;
 					};
 
-					h2f_user2_clk: h2f_user2_clk {
+					h2f_user2_clk: clock-h2f-user2 {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&h2f_usr2_clk>;
@@ -523,7 +523,7 @@ h2f_user2_clk: h2f_user2_clk {
 				};
 		};
 
-		fpga_bridge0: fpga_bridge@ff400000 {
+		fpga_bridge0: fpga-bridge@ff400000 {
 			compatible = "altr,socfpga-lwhps2fpga-bridge";
 			reg = <0xff400000 0x100000>;
 			resets = <&rst LWHPS2FPGA_RESET>;
@@ -531,7 +531,7 @@ fpga_bridge0: fpga_bridge@ff400000 {
 			status = "disabled";
 		};
 
-		fpga_bridge1: fpga_bridge@ff500000 {
+		fpga_bridge1: fpga-bridge@ff500000 {
 			compatible = "altr,socfpga-hps2fpga-bridge";
 			reg = <0xff500000 0x10000>;
 			resets = <&rst HPS2FPGA_RESET>;
-- 
2.42.0.411.g813d9a9188


