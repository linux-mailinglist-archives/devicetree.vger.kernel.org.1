Return-Path: <devicetree+bounces-251102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A59CEEB7E
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 15:01:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 17A503002166
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 14:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69B0C2D8383;
	Fri,  2 Jan 2026 14:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFveQy7y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4484527A123
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 14:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767362465; cv=none; b=ILMYyp35vFDtuLDYTPV18ngR9JBKSnV0aeNZNFbuza2UB0LDZF+5jctly0TOGtSHtzb8vZJpWSH2kqNZUB218wE5y95SnGlzO52+hqmDkwe0Qy6PtC1nmtqdYfKixg3OGFFhVvflHdV0P/oxsdsPpKIDvJD3DCIzwiLze19Zgek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767362465; c=relaxed/simple;
	bh=YL9bTHFOk4RmI54RTXLZ8T/JVnOHkeYuZmLXcfm9qXw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=j50zlg9MiJWoAOC5RrZC66iOC/HCjk1wmk3L7aq5tntSOT4rMfO5TzoMx8W5c2lRqTTKS9dvqA4kVJyiOgoTmLyooqeAit1/ItnOiOd8D7i/E/FGI7kgRwUQiTrnYa7mIAaW8lc83jYh4vyNK4Egvj93stXdvkcA6ho5y2nXPu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFveQy7y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19139C116B1;
	Fri,  2 Jan 2026 14:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767362464;
	bh=YL9bTHFOk4RmI54RTXLZ8T/JVnOHkeYuZmLXcfm9qXw=;
	h=From:To:Cc:Subject:Date:From;
	b=UFveQy7yIvym78rWKtvjaKiU8wj9t5rxRsHUqDbAEV6QM0oERREkFNRP5ocCYTIBh
	 5cV2378HyNbXV/Xyn0SM+/kY6eWlfD2VyzCqrSPmydWjBz8EW2eIxE7BY1G7MMbQoZ
	 53RgCtj0p2tuHBIf7haxydpFYAT/bTwQbOs+M4dlpRylNvCPYs2TGhqGamFukCS+u0
	 IdinIUebEtMxkY3LQL3HmW88hUXLt0sAe8nHndpU7CY5atQYFcumLFkjQJ8RWs/8AX
	 GFYlqZN5/Kqg/FLqWRz+9SEcIb42yuS2WvGwH0RPhreWRiMbb8XgyzwFNkJzT4a7xh
	 8vapfpq4a4eTg==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] ARM: dts: socfpga: remove underscore node names for base socfpga dtsi
Date: Fri,  2 Jan 2026 08:00:53 -0600
Message-ID: <20260102140054.1088756-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The node names in the these file should be using a hyphen, not an
underscore as warned by 'dtc W=2'.

sed command used : sed -E ':a; s/(:.*)_/\1-/; ta'

Used dtx_diff to check before/after dtbs.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/intel/socfpga/socfpga.dtsi | 106 +++++++++----------
 1 file changed, 53 insertions(+), 53 deletions(-)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
index 5dc8d33e8ad7..d439fc3e17a7 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
@@ -132,17 +132,17 @@ osc2: osc2 {
 						compatible = "fixed-clock";
 					};
 
-					f2s_periph_ref_clk: f2s_periph_ref_clk {
+					f2s_periph_ref_clk: f2s-periph-ref-clk {
 						#clock-cells = <0>;
 						compatible = "fixed-clock";
 					};
 
-					f2s_sdram_ref_clk: f2s_sdram_ref_clk {
+					f2s_sdram_ref_clk: f2s-sdram-ref-clk {
 						#clock-cells = <0>;
 						compatible = "fixed-clock";
 					};
 
-					main_pll: main_pll@40 {
+					main_pll: main-pll@40 {
 						#address-cells = <1>;
 						#size-cells = <0>;
 						#clock-cells = <0>;
@@ -166,7 +166,7 @@ mainclk: mainclk@4c {
 							reg = <0x4C>;
 						};
 
-						dbg_base_clk: dbg_base_clk@50 {
+						dbg_base_clk: dbg-base-clk@50 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&main_pll>, <&osc1>;
@@ -174,21 +174,21 @@ dbg_base_clk: dbg_base_clk@50 {
 							reg = <0x50>;
 						};
 
-						main_qspi_clk: main_qspi_clk@54 {
+						main_qspi_clk: main-qspi-clk@54 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&main_pll>;
 							reg = <0x54>;
 						};
 
-						main_nand_sdmmc_clk: main_nand_sdmmc_clk@58 {
+						main_nand_sdmmc_clk: main-nand-sdmmc-clk@58 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&main_pll>;
 							reg = <0x58>;
 						};
 
-						cfg_h2f_usr0_clk: cfg_h2f_usr0_clk@5c {
+						cfg_h2f_usr0_clk: cfg-h2f-usr0-clk@5c {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&main_pll>;
@@ -196,7 +196,7 @@ cfg_h2f_usr0_clk: cfg_h2f_usr0_clk@5c {
 						};
 					};
 
-					periph_pll: periph_pll@80 {
+					periph_pll: periph-pll@80 {
 						#address-cells = <1>;
 						#size-cells = <0>;
 						#clock-cells = <0>;
@@ -204,42 +204,42 @@ periph_pll: periph_pll@80 {
 						clocks = <&osc1>, <&osc2>, <&f2s_periph_ref_clk>;
 						reg = <0x80>;
 
-						emac0_clk: emac0_clk@88 {
+						emac0_clk: emac0-clk@88 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0x88>;
 						};
 
-						emac1_clk: emac1_clk@8c {
+						emac1_clk: emac1-clk@8c {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0x8C>;
 						};
 
-						per_qspi_clk: per_qsi_clk@90 {
+						per_qspi_clk: per-qsi-clk@90 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0x90>;
 						};
 
-						per_nand_mmc_clk: per_nand_mmc_clk@94 {
+						per_nand_mmc_clk: per-nand-mmc-clk@94 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0x94>;
 						};
 
-						per_base_clk: per_base_clk@98 {
+						per_base_clk: per-base-clk@98 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0x98>;
 						};
 
-						h2f_usr1_clk: h2f_usr1_clk@9c {
+						h2f_usr1_clk: h2f-usr1-clk@9c {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&periph_pll>;
@@ -247,7 +247,7 @@ h2f_usr1_clk: h2f_usr1_clk@9c {
 						};
 					};
 
-					sdram_pll: sdram_pll@c0 {
+					sdram_pll: sdram-pll@c0 {
 						#address-cells = <1>;
 						#size-cells = <0>;
 						#clock-cells = <0>;
@@ -255,28 +255,28 @@ sdram_pll: sdram_pll@c0 {
 						clocks = <&osc1>, <&osc2>, <&f2s_sdram_ref_clk>;
 						reg = <0xC0>;
 
-						ddr_dqs_clk: ddr_dqs_clk@c8 {
+						ddr_dqs_clk: ddr-dqs-clk@c8 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&sdram_pll>;
 							reg = <0xC8>;
 						};
 
-						ddr_2x_dqs_clk: ddr_2x_dqs_clk@cc {
+						ddr_2x_dqs_clk: ddr-2x-dqs-clk@cc {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&sdram_pll>;
 							reg = <0xCC>;
 						};
 
-						ddr_dq_clk: ddr_dq_clk@d0 {
+						ddr_dq_clk: ddr-dq-clk@d0 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&sdram_pll>;
 							reg = <0xD0>;
 						};
 
-						h2f_usr2_clk: h2f_usr2_clk@d4 {
+						h2f_usr2_clk: h2f-usr2-clk@d4 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-perip-clk";
 							clocks = <&sdram_pll>;
@@ -284,35 +284,35 @@ h2f_usr2_clk: h2f_usr2_clk@d4 {
 						};
 					};
 
-					mpu_periph_clk: mpu_periph_clk {
+					mpu_periph_clk: mpu-periph-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-perip-clk";
 						clocks = <&mpuclk>;
 						fixed-divider = <4>;
 					};
 
-					mpu_l2_ram_clk: mpu_l2_ram_clk {
+					mpu_l2_ram_clk: mpu-l2-ram-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-perip-clk";
 						clocks = <&mpuclk>;
 						fixed-divider = <2>;
 					};
 
-					l4_main_clk: l4_main_clk {
+					l4_main_clk: l4-main-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&mainclk>;
 						clk-gate = <0x60 0>;
 					};
 
-					l3_main_clk: l3_main_clk {
+					l3_main_clk: l3-main-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-perip-clk";
 						clocks = <&mainclk>;
 						fixed-divider = <1>;
 					};
 
-					l3_mp_clk: l3_mp_clk {
+					l3_mp_clk: l3-mp-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&mainclk>;
@@ -320,14 +320,14 @@ l3_mp_clk: l3_mp_clk {
 						clk-gate = <0x60 1>;
 					};
 
-					l3_sp_clk: l3_sp_clk {
+					l3_sp_clk: l3-sp-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&l3_mp_clk>;
 						div-reg = <0x64 2 2>;
 					};
 
-					l4_mp_clk: l4_mp_clk {
+					l4_mp_clk: l4-mp-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&mainclk>, <&per_base_clk>;
@@ -335,7 +335,7 @@ l4_mp_clk: l4_mp_clk {
 						clk-gate = <0x60 2>;
 					};
 
-					l4_sp_clk: l4_sp_clk {
+					l4_sp_clk: l4-sp-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&mainclk>, <&per_base_clk>;
@@ -343,7 +343,7 @@ l4_sp_clk: l4_sp_clk {
 						clk-gate = <0x60 3>;
 					};
 
-					dbg_at_clk: dbg_at_clk {
+					dbg_at_clk: dbg-at-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&dbg_base_clk>;
@@ -351,7 +351,7 @@ dbg_at_clk: dbg_at_clk {
 						clk-gate = <0x60 4>;
 					};
 
-					dbg_clk: dbg_clk {
+					dbg_clk: dbg-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&dbg_at_clk>;
@@ -359,7 +359,7 @@ dbg_clk: dbg_clk {
 						clk-gate = <0x60 5>;
 					};
 
-					dbg_trace_clk: dbg_trace_clk {
+					dbg_trace_clk: dbg-trace-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&dbg_base_clk>;
@@ -367,42 +367,42 @@ dbg_trace_clk: dbg_trace_clk {
 						clk-gate = <0x60 6>;
 					};
 
-					dbg_timer_clk: dbg_timer_clk {
+					dbg_timer_clk: dbg-timer-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&dbg_base_clk>;
 						clk-gate = <0x60 7>;
 					};
 
-					cfg_clk: cfg_clk {
+					cfg_clk: cfg-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&cfg_h2f_usr0_clk>;
 						clk-gate = <0x60 8>;
 					};
 
-					h2f_user0_clk: h2f_user0_clk {
+					h2f_user0_clk: h2f-user0-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&cfg_h2f_usr0_clk>;
 						clk-gate = <0x60 9>;
 					};
 
-					emac_0_clk: emac_0_clk {
+					emac_0_clk: emac-0-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&emac0_clk>;
 						clk-gate = <0xa0 0>;
 					};
 
-					emac_1_clk: emac_1_clk {
+					emac_1_clk: emac-1-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&emac1_clk>;
 						clk-gate = <0xa0 1>;
 					};
 
-					usb_mp_clk: usb_mp_clk {
+					usb_mp_clk: usb-mp-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&per_base_clk>;
@@ -410,7 +410,7 @@ usb_mp_clk: usb_mp_clk {
 						div-reg = <0xa4 0 3>;
 					};
 
-					spi_m_clk: spi_m_clk {
+					spi_m_clk: spi-m-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&per_base_clk>;
@@ -418,7 +418,7 @@ spi_m_clk: spi_m_clk {
 						div-reg = <0xa4 3 3>;
 					};
 
-					can0_clk: can0_clk {
+					can0_clk: can0-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&per_base_clk>;
@@ -426,7 +426,7 @@ can0_clk: can0_clk {
 						div-reg = <0xa4 6 3>;
 					};
 
-					can1_clk: can1_clk {
+					can1_clk: can1-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&per_base_clk>;
@@ -434,7 +434,7 @@ can1_clk: can1_clk {
 						div-reg = <0xa4 9 3>;
 					};
 
-					gpio_db_clk: gpio_db_clk {
+					gpio_db_clk: gpio-db-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&per_base_clk>;
@@ -442,21 +442,21 @@ gpio_db_clk: gpio_db_clk {
 						div-reg = <0xa8 0 24>;
 					};
 
-					h2f_user1_clk: h2f_user1_clk {
+					h2f_user1_clk: h2f-user1-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&h2f_usr1_clk>;
 						clk-gate = <0xa0 7>;
 					};
 
-					sdmmc_clk: sdmmc_clk {
+					sdmmc_clk: sdmmc-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&f2s_periph_ref_clk>, <&main_nand_sdmmc_clk>, <&per_nand_mmc_clk>;
 						clk-gate = <0xa0 8>;
 					};
 
-					sdmmc_clk_divided: sdmmc_clk_divided {
+					sdmmc_clk_divided: sdmmc-clk-divided {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&sdmmc_clk>;
@@ -464,21 +464,21 @@ sdmmc_clk_divided: sdmmc_clk_divided {
 						fixed-divider = <4>;
 					};
 
-					nand_x_clk: nand_x_clk {
+					nand_x_clk: nand-x-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&f2s_periph_ref_clk>, <&main_nand_sdmmc_clk>, <&per_nand_mmc_clk>;
 						clk-gate = <0xa0 9>;
 					};
 
-					nand_ecc_clk: nand_ecc_clk {
+					nand_ecc_clk: nand-ecc-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&nand_x_clk>;
 						clk-gate = <0xa0 9>;
 					};
 
-					nand_clk: nand_clk {
+					nand_clk: nand-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&nand_x_clk>;
@@ -486,35 +486,35 @@ nand_clk: nand_clk {
 						fixed-divider = <4>;
 					};
 
-					qspi_clk: qspi_clk {
+					qspi_clk: qspi-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&f2s_periph_ref_clk>, <&main_qspi_clk>, <&per_qspi_clk>;
 						clk-gate = <0xa0 11>;
 					};
 
-					ddr_dqs_clk_gate: ddr_dqs_clk_gate {
+					ddr_dqs_clk_gate: ddr-dqs-clk-gate {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&ddr_dqs_clk>;
 						clk-gate = <0xd8 0>;
 					};
 
-					ddr_2x_dqs_clk_gate: ddr_2x_dqs_clk_gate {
+					ddr_2x_dqs_clk_gate: ddr-2x-dqs-clk-gate {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&ddr_2x_dqs_clk>;
 						clk-gate = <0xd8 1>;
 					};
 
-					ddr_dq_clk_gate: ddr_dq_clk_gate {
+					ddr_dq_clk_gate: ddr-dq-clk-gate {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&ddr_dq_clk>;
 						clk-gate = <0xd8 2>;
 					};
 
-					h2f_user2_clk: h2f_user2_clk {
+					h2f_user2_clk: h2f-user2-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-gate-clk";
 						clocks = <&h2f_usr2_clk>;
@@ -524,7 +524,7 @@ h2f_user2_clk: h2f_user2_clk {
 				};
 		};
 
-		fpga_bridge0: fpga_bridge@ff400000 {
+		fpga_bridge0: fpga-bridge@ff400000 {
 			compatible = "altr,socfpga-lwhps2fpga-bridge";
 			reg = <0xff400000 0x100000>;
 			resets = <&rst LWHPS2FPGA_RESET>;
@@ -532,7 +532,7 @@ fpga_bridge0: fpga_bridge@ff400000 {
 			status = "disabled";
 		};
 
-		fpga_bridge1: fpga_bridge@ff500000 {
+		fpga_bridge1: fpga-bridge@ff500000 {
 			compatible = "altr,socfpga-hps2fpga-bridge";
 			reg = <0xff500000 0x10000>;
 			resets = <&rst HPS2FPGA_RESET>;
-- 
2.42.0.411.g813d9a9188


