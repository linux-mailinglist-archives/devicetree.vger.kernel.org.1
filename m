Return-Path: <devicetree+bounces-125643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA259DEDDF
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:42:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01A4E16384A
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 00:41:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECD5F28EA;
	Sat, 30 Nov 2024 00:41:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80508374EA
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 00:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732927316; cv=none; b=c/qzhbAGILdJ51nW7lSJGGqsKSrykBEH8S2Mqrpe3loxJpgMofYgD2ooJeYYKDS7e6q1m1gtWkZ5OsbMZnWo1gloNcMMGsD28HtfeqsTts3/fF1lrujrXilZCtGZwvKT8rU6mh1NVWKAXTFos9dlDXNavdq0XtHcLXogbG44Qw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732927316; c=relaxed/simple;
	bh=w9mBRLQUgLa2BraJIxxu9yQ5WgejDi4zD6NKivpDjG4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L8sv+tSBXT3Z33L3ky6Q0LrT4Pvk1Op2yhOfdsiWZwmmTSYbt084oJLZmcBoPbHw0yGCMa5t62QgIMQpKi2DG6QsaBnR7sGjCmrQEUmUzmDR2awELZo8x3KQGFnFqBtfwlu5kHmxv7WPovXF+0y07hQ9rzobUtE0+1n/ySL0KN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0f3BH024368;
	Sat, 30 Nov 2024 09:41:05 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 3/6] arm64: dts: rockchip: fix pmic regulators for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:40:54 +0000
Message-ID: <20241130004057.7432-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241130004057.7432-1-naoki@radxa.com>
References: <20241130004057.7432-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

fix regulator names to match with schematic. fix properties to match
with vendor kernel.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 80 +++++++++----------
 1 file changed, 40 insertions(+), 40 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 3cd8c63151db..95f2f4dbf12d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -461,7 +461,7 @@ &pwm1 {
 };
 
 &saradc {
-	vref-supply = <&avcc_1v8_s0>;
+	vref-supply = <&vcca_1v8_s0>;
 	status = "okay";
 };
 
@@ -588,12 +588,12 @@ rk806_dvs3_null: dvs3-null-pins {
 		};
 
 		regulators {
-			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
+			vdd_gpu_s0: dcdc-reg1 {
+				regulator-name = "vdd_gpu_s0";
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_gpu_s0";
 				regulator-enable-ramp-delay = <400>;
 
 				regulator-state-mem {
@@ -601,13 +601,13 @@ regulator-state-mem {
 				};
 			};
 
-			vdd_cpu_lit_s0: vdd_cpu_lit_mem_s0: dcdc-reg2 {
+			vdd_cpu_lit_s0: dcdc-reg2 {
+				regulator-name = "vdd_cpu_lit_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_cpu_lit_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
@@ -615,26 +615,26 @@ regulator-state-mem {
 			};
 
 			vdd_log_s0: dcdc-reg3 {
+				regulator-name = "vdd_log_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <750000>;
 				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_log_s0";
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <750000>;
 				};
 			};
 
-			vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
+			vdd_vdenc_s0: dcdc-reg4 {
+				regulator-name = "vdd_vdenc_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_vdenc_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
@@ -642,12 +642,12 @@ regulator-state-mem {
 			};
 
 			vdd_ddr_s0: dcdc-reg5 {
+				regulator-name = "vdd_ddr_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <900000>;
 				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_ddr_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
@@ -656,9 +656,9 @@ regulator-state-mem {
 			};
 
 			vdd2_ddr_s3: dcdc-reg6 {
+				regulator-name = "vdd2_ddr_s3";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-name = "vdd2_ddr_s3";
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -666,12 +666,11 @@ regulator-state-mem {
 			};
 
 			vcc_2v0_pldo_s3: dcdc-reg7 {
+				regulator-name = "vcc_2v0_pldo_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <2000000>;
 				regulator-max-microvolt = <2000000>;
-				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_2v0_pldo_s3";
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -680,11 +679,11 @@ regulator-state-mem {
 			};
 
 			vcc_3v3_s3: dcdc-reg8 {
+				regulator-name = "vcc_3v3_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
-				regulator-name = "vcc_3v3_s3";
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -693,9 +692,9 @@ regulator-state-mem {
 			};
 
 			vddq_ddr_s0: dcdc-reg9 {
+				regulator-name = "vddq_ddr_s0";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-name = "vddq_ddr_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
@@ -703,11 +702,11 @@ regulator-state-mem {
 			};
 
 			vcc_1v8_s3: dcdc-reg10 {
+				regulator-name = "vcc_1v8_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_1v8_s3";
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -715,63 +714,63 @@ regulator-state-mem {
 				};
 			};
 
-			avcc_1v8_s0: pldo-reg1 {
+			vcca_1v8_s0: pldo-reg1 {
+				regulator-name = "vcca_1v8_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "avcc_1v8_s0";
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
 				};
 			};
 
 			vcc_1v8_s0: pldo-reg2 {
+				regulator-name = "vcc_1v8_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_1v8_s0";
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <1800000>;
 				};
 			};
 
-			avdd_1v2_s0: pldo-reg3 {
+			vdda_1v2_s0: pldo-reg3 {
+				regulator-name = "vdda_1v2_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1200000>;
 				regulator-max-microvolt = <1200000>;
-				regulator-name = "avdd_1v2_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
-			vcc_3v3_s0: pldo-reg4 {
+			vcca_3v3_s0: pldo-reg4 {
+				regulator-name = "vcca_3v3_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
-				regulator-ramp-delay = <12500>;
-				regulator-name = "vcc_3v3_s0";
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
 				};
 			};
 
 			vccio_sd_s0: pldo-reg5 {
+				regulator-name = "vccio_sd_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
-				regulator-ramp-delay = <12500>;
-				regulator-name = "vccio_sd_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
@@ -779,11 +778,11 @@ regulator-state-mem {
 			};
 
 			pldo6_s3: pldo-reg6 {
+				regulator-name = "pldo6_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "pldo6_s3";
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -792,11 +791,11 @@ regulator-state-mem {
 			};
 
 			vdd_0v75_s3: nldo-reg1 {
+				regulator-name = "vdd_0v75_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <750000>;
 				regulator-max-microvolt = <750000>;
-				regulator-name = "vdd_0v75_s3";
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -804,37 +803,38 @@ regulator-state-mem {
 				};
 			};
 
-			vdd_ddr_pll_s0: nldo-reg2 {
+			vdda_ddr_pll_s0: nldo-reg2 {
+				regulator-name = "vdda_ddr_pll_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <850000>;
 				regulator-max-microvolt = <850000>;
-				regulator-name = "vdd_ddr_pll_s0";
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <850000>;
 				};
 			};
 
-			avdd_0v75_s0: nldo-reg3 {
+			vdda_0v75_s0: nldo-reg3 {
+				regulator-name = "vdda_0v75_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <750000>;
 				regulator-max-microvolt = <750000>;
-				regulator-name = "avdd_0v75_s0";
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
 				};
 			};
 
-			vdd_0v85_s0: nldo-reg4 {
+			vdda_0v85_s0: nldo-reg4 {
+				regulator-name = "vdda_0v85_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <850000>;
 				regulator-max-microvolt = <850000>;
-				regulator-name = "vdd_0v85_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
@@ -842,11 +842,11 @@ regulator-state-mem {
 			};
 
 			vdd_0v75_s0: nldo-reg5 {
+				regulator-name = "vdd_0v75_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <750000>;
 				regulator-max-microvolt = <750000>;
-				regulator-name = "vdd_0v75_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
-- 
2.43.0


