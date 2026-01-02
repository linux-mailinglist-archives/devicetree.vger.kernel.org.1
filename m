Return-Path: <devicetree+bounces-251103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D372CEEB81
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 15:01:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1CE92301098F
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 14:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8208B2DCF67;
	Fri,  2 Jan 2026 14:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuIGNu3u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF0C2116F6
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 14:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767362466; cv=none; b=CjCfn9F1a2LvgrYBlVgLt3hrbiZTeGcBshrwIr/4n5e/eGOp5n12M6Ui7jewyE8QJFzxx0Z02aHBqozM1vykoln0SdXqmsOXIv3PkViQvdFyI974PMOLxytLvNSQClxAYNLdI1NrTlX4kOw6lVGy+7LkPwxju7w889H0ALklDRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767362466; c=relaxed/simple;
	bh=i1EPFpuXYoV+2OJNQPqlEeqOXpVhB3CII/dIgcsxrVE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=svkPlz6J8V6ZQmDBkVgsEkTBjjjVwJlYqSDl/QmH2gRzHESfc+g+NcyH/OCI+ZViFfJeuVkgfocJc5wTCqZMHoW2efHJ+4n1tGJ19Rl0MB3opvZ89Gt0f3RIRtg2NQznYCRCzdjy09Q72GMpwzUUIrAG+uugwiGF61gYk7CvdUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuIGNu3u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 249A2C19423;
	Fri,  2 Jan 2026 14:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767362465;
	bh=i1EPFpuXYoV+2OJNQPqlEeqOXpVhB3CII/dIgcsxrVE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DuIGNu3ur90A33HfUlsYXup/NOL11tX9tmAucrpteOmpyJPRksAVmSDPaE/58+RNh
	 q7DRgPbRJJbWt81hHErcM/0GeMfgc12D3Wzd2jOpQrg0BtJ8ypDeopCa87eCkyQ2o5
	 GIihJoxbSM6R4Z5Rjg77uPABiIGKSximiizOh47yi90RnGVSK7jwpu3WoeZD2lVlqV
	 Sjp4yOrCsNMGTC6pKZ8trq+XvBRlyLb/pqNcDYWWnBVcdE8AoJvIHEcIy1UkJ7JsHf
	 v02U0JQg9hcMuZKMAj2TG5ceNeIZc6lhlaPFwWa1/4C8aYBXnhj1dQXcxl5IgBIEDv
	 oMHHupGr5zP3g==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: socfpga: arria10: remove underscore in node names
Date: Fri,  2 Jan 2026 08:00:54 -0600
Message-ID: <20260102140054.1088756-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20260102140054.1088756-1-dinguyen@kernel.org>
References: <20260102140054.1088756-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The node names should be using a hyphen not an underscore(dtc with W=2
warns about them).

sec command used : sed -E ':a; s/(:.*)_/\1-/; ta'

Also used dtx_diff to check before/after dtbs.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 .../dts/intel/socfpga/socfpga_arria10.dtsi    | 86 +++++++++----------
 1 file changed, 43 insertions(+), 43 deletions(-)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
index a53a94678df2..1b9d17673bd5 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
@@ -97,17 +97,17 @@ clocks {
 					#address-cells = <1>;
 					#size-cells = <0>;
 
-					cb_intosc_hs_div2_clk: cb_intosc_hs_div2_clk {
+					cb_intosc_hs_div2_clk: cb-intosc-hs-div2-clk {
 						#clock-cells = <0>;
 						compatible = "fixed-clock";
 					};
 
-					cb_intosc_ls_clk: cb_intosc_ls_clk {
+					cb_intosc_ls_clk: cb-intosc-ls-clk {
 						#clock-cells = <0>;
 						compatible = "fixed-clock";
 					};
 
-					f2s_free_clk: f2s_free_clk {
+					f2s_free_clk: f2s-free-clk {
 						#clock-cells = <0>;
 						compatible = "fixed-clock";
 					};
@@ -117,7 +117,7 @@ osc1: osc1 {
 						compatible = "fixed-clock";
 					};
 
-					main_pll: main_pll@40 {
+					main_pll: main-pll@40 {
 						#address-cells = <1>;
 						#size-cells = <0>;
 						#clock-cells = <0>;
@@ -126,49 +126,49 @@ main_pll: main_pll@40 {
 							 <&f2s_free_clk>;
 						reg = <0x40>;
 
-						main_mpu_base_clk: main_mpu_base_clk {
+						main_mpu_base_clk: main-mpu-base-clk {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&main_pll>;
 							div-reg = <0x140 0 11>;
 						};
 
-						main_noc_base_clk: main_noc_base_clk {
+						main_noc_base_clk: main-noc-base-clk {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&main_pll>;
 							div-reg = <0x144 0 11>;
 						};
 
-						main_emaca_clk: main_emaca_clk@68 {
+						main_emaca_clk: main-emaca-clk@68 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&main_pll>;
 							reg = <0x68>;
 						};
 
-						main_emacb_clk: main_emacb_clk@6c {
+						main_emacb_clk: main-emacb-clk@6c {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&main_pll>;
 							reg = <0x6C>;
 						};
 
-						main_emac_ptp_clk: main_emac_ptp_clk@70 {
+						main_emac_ptp_clk: main-emac-ptp-clk@70 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&main_pll>;
 							reg = <0x70>;
 						};
 
-						main_gpio_db_clk: main_gpio_db_clk@74 {
+						main_gpio_db_clk: main-gpio-db-clk@74 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&main_pll>;
 							reg = <0x74>;
 						};
 
-						main_sdmmc_clk: main_sdmmc_clk@78 {
+						main_sdmmc_clk: main-sdmmc-clk@78 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk"
 ;
@@ -176,28 +176,28 @@ main_sdmmc_clk: main_sdmmc_clk@78 {
 							reg = <0x78>;
 						};
 
-						main_s2f_usr0_clk: main_s2f_usr0_clk@7c {
+						main_s2f_usr0_clk: main-s2f-usr0-clk@7c {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&main_pll>;
 							reg = <0x7C>;
 						};
 
-						main_s2f_usr1_clk: main_s2f_usr1_clk@80 {
+						main_s2f_usr1_clk: main-s2f-usr1-clk@80 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&main_pll>;
 							reg = <0x80>;
 						};
 
-						main_hmc_pll_ref_clk: main_hmc_pll_ref_clk@84 {
+						main_hmc_pll_ref_clk: main-hmc-pll-ref-clk@84 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&main_pll>;
 							reg = <0x84>;
 						};
 
-						main_periph_ref_clk: main_periph_ref_clk@9c {
+						main_periph_ref_clk: main-periph-ref-clk@9c {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&main_pll>;
@@ -205,7 +205,7 @@ main_periph_ref_clk: main_periph_ref_clk@9c {
 						};
 					};
 
-					periph_pll: periph_pll@c0 {
+					periph_pll: periph-pll@c0 {
 						#address-cells = <1>;
 						#size-cells = <0>;
 						#clock-cells = <0>;
@@ -214,70 +214,70 @@ periph_pll: periph_pll@c0 {
 							 <&f2s_free_clk>, <&main_periph_ref_clk>;
 						reg = <0xC0>;
 
-						peri_mpu_base_clk: peri_mpu_base_clk {
+						peri_mpu_base_clk: peri-mpu-base-clk {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&periph_pll>;
 							div-reg = <0x140 16 11>;
 						};
 
-						peri_noc_base_clk: peri_noc_base_clk {
+						peri_noc_base_clk: peri-noc-base-clk {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&periph_pll>;
 							div-reg = <0x144 16 11>;
 						};
 
-						peri_emaca_clk: peri_emaca_clk@e8 {
+						peri_emaca_clk: peri-emaca-clk@e8 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0xE8>;
 						};
 
-						peri_emacb_clk: peri_emacb_clk@ec {
+						peri_emacb_clk: peri-emacb-clk@ec {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0xEC>;
 						};
 
-						peri_emac_ptp_clk: peri_emac_ptp_clk@f0 {
+						peri_emac_ptp_clk: peri-emac-ptp-clk@f0 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0xF0>;
 						};
 
-						peri_gpio_db_clk: peri_gpio_db_clk@f4 {
+						peri_gpio_db_clk: peri-gpio-db-clk@f4 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0xF4>;
 						};
 
-						peri_sdmmc_clk: peri_sdmmc_clk@f8 {
+						peri_sdmmc_clk: peri-sdmmc-clk@f8 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0xF8>;
 						};
 
-						peri_s2f_usr0_clk: peri_s2f_usr0_clk@fc {
+						peri_s2f_usr0_clk: peri-s2f-usr0-clk@fc {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0xFC>;
 						};
 
-						peri_s2f_usr1_clk: peri_s2f_usr1_clk@100 {
+						peri_s2f_usr1_clk: peri-s2f-usr1-clk@100 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&periph_pll>;
 							reg = <0x100>;
 						};
 
-						peri_hmc_pll_ref_clk: peri_hmc_pll_ref_clk@104 {
+						peri_hmc_pll_ref_clk: peri-hmc-pll-ref-clk@104 {
 							#clock-cells = <0>;
 							compatible = "altr,socfpga-a10-perip-clk";
 							clocks = <&periph_pll>;
@@ -285,7 +285,7 @@ peri_hmc_pll_ref_clk: peri_hmc_pll_ref_clk@104 {
 						};
 					};
 
-					mpu_free_clk: mpu_free_clk@60 {
+					mpu_free_clk: mpu-free-clk@60 {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-perip-clk";
 						clocks = <&main_mpu_base_clk>, <&peri_mpu_base_clk>,
@@ -294,7 +294,7 @@ mpu_free_clk: mpu_free_clk@60 {
 						reg = <0x60>;
 					};
 
-					noc_free_clk: noc_free_clk@64 {
+					noc_free_clk: noc-free-clk@64 {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-perip-clk";
 						clocks = <&main_noc_base_clk>, <&peri_noc_base_clk>,
@@ -303,7 +303,7 @@ noc_free_clk: noc_free_clk@64 {
 						reg = <0x64>;
 					};
 
-					s2f_user1_free_clk: s2f_user1_free_clk@104 {
+					s2f_user1_free_clk: s2f-user1-free-clk@104 {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-perip-clk";
 						clocks = <&main_s2f_usr1_clk>, <&peri_s2f_usr1_clk>,
@@ -312,7 +312,7 @@ s2f_user1_free_clk: s2f_user1_free_clk@104 {
 						reg = <0x104>;
 					};
 
-					sdmmc_free_clk: sdmmc_free_clk@f8 {
+					sdmmc_free_clk: sdmmc-free-clk@f8 {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-perip-clk";
 						clocks = <&main_sdmmc_clk>, <&peri_sdmmc_clk>,
@@ -322,14 +322,14 @@ sdmmc_free_clk: sdmmc_free_clk@f8 {
 						reg = <0xF8>;
 					};
 
-					l4_sys_free_clk: l4_sys_free_clk {
+					l4_sys_free_clk: l4-sys-free-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-perip-clk";
 						clocks = <&noc_free_clk>;
 						fixed-divider = <4>;
 					};
 
-					l4_main_clk: l4_main_clk {
+					l4_main_clk: l4-main-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-gate-clk";
 						clocks = <&noc_free_clk>;
@@ -337,7 +337,7 @@ l4_main_clk: l4_main_clk {
 						clk-gate = <0x48 1>;
 					};
 
-					l4_mp_clk: l4_mp_clk {
+					l4_mp_clk: l4-mp-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-gate-clk";
 						clocks = <&noc_free_clk>;
@@ -345,7 +345,7 @@ l4_mp_clk: l4_mp_clk {
 						clk-gate = <0x48 2>;
 					};
 
-					l4_sp_clk: l4_sp_clk {
+					l4_sp_clk: l4-sp-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-gate-clk";
 						clocks = <&noc_free_clk>;
@@ -353,7 +353,7 @@ l4_sp_clk: l4_sp_clk {
 						clk-gate = <0x48 3>;
 					};
 
-					mpu_periph_clk: mpu_periph_clk {
+					mpu_periph_clk: mpu-periph-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-gate-clk";
 						clocks = <&mpu_free_clk>;
@@ -361,35 +361,35 @@ mpu_periph_clk: mpu_periph_clk {
 						clk-gate = <0x48 0>;
 					};
 
-					sdmmc_clk: sdmmc_clk {
+					sdmmc_clk: sdmmc-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-gate-clk";
 						clocks = <&sdmmc_free_clk>;
 						clk-gate = <0xC8 5>;
 					};
 
-					qspi_clk: qspi_clk {
+					qspi_clk: qspi-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-gate-clk";
 						clocks = <&l4_main_clk>;
 						clk-gate = <0xC8 11>;
 					};
 
-					nand_x_clk: nand_x_clk {
+					nand_x_clk: nand-x-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-gate-clk";
 						clocks = <&l4_mp_clk>;
 						clk-gate = <0xC8 10>;
 					};
 
-					nand_ecc_clk: nand_ecc_clk {
+					nand_ecc_clk: nand-ecc-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-gate-clk";
 						clocks = <&nand_x_clk>;
 						clk-gate = <0xC8 10>;
 					};
 
-					nand_clk: nand_clk {
+					nand_clk: nand-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-gate-clk";
 						clocks = <&nand_x_clk>;
@@ -397,21 +397,21 @@ nand_clk: nand_clk {
 						clk-gate = <0xC8 10>;
 					};
 
-					spi_m_clk: spi_m_clk {
+					spi_m_clk: spi-m-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-gate-clk";
 						clocks = <&l4_main_clk>;
 						clk-gate = <0xC8 9>;
 					};
 
-					usb_clk: usb_clk {
+					usb_clk: usb-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-gate-clk";
 						clocks = <&l4_mp_clk>;
 						clk-gate = <0xC8 8>;
 					};
 
-					s2f_usr1_clk: s2f_usr1_clk {
+					s2f_usr1_clk: s2f-usr1-clk {
 						#clock-cells = <0>;
 						compatible = "altr,socfpga-a10-gate-clk";
 						clocks = <&peri_s2f_usr1_clk>;
-- 
2.42.0.411.g813d9a9188


