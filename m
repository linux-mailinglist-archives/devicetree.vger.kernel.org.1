Return-Path: <devicetree+bounces-135882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DC1A02D57
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 17:07:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 232B118824CB
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 16:07:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2EC51DDC1F;
	Mon,  6 Jan 2025 16:06:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B93014A617
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 16:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736179618; cv=none; b=ohfT78sYUDELpsBXO/jis6Y75knW+jYga+lhD3PFIq0JmuuvfD2f9curvgnBijC8noiYjivgqED4ePQMAX0RT1Gfc6DFtLbo2g6QZ/vrdcGyfxLSL1BGDDjOzois7tKUAOcbmYZLOIL0UZlZWrUj6xlrPmc6HEbknG7Oboqd70I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736179618; c=relaxed/simple;
	bh=E2qzko7QZTu2JxRtirtjJik5ENY/WrUhn32zQ+3cu34=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=omzmETfLOFbsU7wPOgsUo9Zlh+s23eXRXrwfskr6b238DAgGN/t4PfzOTRfcZ16EHvdFWXVttjNc2dAcEkC6LOSLYcB/LmgvJ3K+aePgmzpkRSsLHCiT1YFGRWq4y582w4cNvhOvuFCAP+oBakCdqCpXRwVXWjgbsTwMNz/A3Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUpcx-0000C3-KF; Mon, 06 Jan 2025 17:06:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUpcw-007C9k-0k;
	Mon, 06 Jan 2025 17:06:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUpcw-009dVc-32;
	Mon, 06 Jan 2025 17:06:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 06 Jan 2025 17:06:36 +0100
Subject: [PATCH v2 01/10] arm64: dts: imx8mp-skov: correct PMIC board
 limits
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-skov-dt-updates-v2-1-4504d3f00ecb@pengutronix.de>
References: <20250106-skov-dt-updates-v2-0-4504d3f00ecb@pengutronix.de>
In-Reply-To: <20250106-skov-dt-updates-v2-0-4504d3f00ecb@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 Frank Li <Frank.li@nxp.com>, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The PMIC voltage constraints in the device tree currently describe the
permissible range of the PMIC. This is unnecessary as this information
already exists in the driver and wrong as it doesn't account for
board-specific constraints, e.g. a 2.1V on VDD_SOC would fry the SoC and
a maximum voltage of 3.4V on the VDD_3V3 rail may be unexpected across
the board.

Fix this by adjusting constraints to reflect the board limits.

Fixes: 6d382d51d979 ("arm64: dts: freescale: Add SKOV IMX8MP CPU revB board")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 .../arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi | 24 +++++++++++-----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
index 59813ef8e2bb3a3d5672ba1c5776cf0e45fb6862..ae82166b5c266a96441809958c56b6c8a7ef5e3d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
@@ -247,8 +247,8 @@ reg_vdd_soc: BUCK1 {
 
 			reg_vdd_arm: BUCK2 {
 				regulator-name = "VDD_ARM";
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <2187500>;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <1000000>;
 				vin-supply = <&reg_5v_p>;
 				regulator-boot-on;
 				regulator-always-on;
@@ -259,8 +259,8 @@ reg_vdd_arm: BUCK2 {
 
 			reg_vdd_3v3: BUCK4 {
 				regulator-name = "VDD_3V3";
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <3400000>;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
 				vin-supply = <&reg_5v_p>;
 				regulator-boot-on;
 				regulator-always-on;
@@ -268,8 +268,8 @@ reg_vdd_3v3: BUCK4 {
 
 			reg_vdd_1v8: BUCK5 {
 				regulator-name = "VDD_1V8";
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <3400000>;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
 				vin-supply = <&reg_5v_p>;
 				regulator-boot-on;
 				regulator-always-on;
@@ -277,8 +277,8 @@ reg_vdd_1v8: BUCK5 {
 
 			reg_nvcc_dram_1v1: BUCK6 {
 				regulator-name = "NVCC_DRAM_1V1";
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <3400000>;
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
 				vin-supply = <&reg_5v_p>;
 				regulator-boot-on;
 				regulator-always-on;
@@ -286,8 +286,8 @@ reg_nvcc_dram_1v1: BUCK6 {
 
 			reg_nvcc_snvs_1v8: LDO1 {
 				regulator-name = "NVCC_SNVS_1V8";
-				regulator-min-microvolt = <1600000>;
-				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
 				vin-supply = <&reg_5v_p>;
 				regulator-boot-on;
 				regulator-always-on;
@@ -295,8 +295,8 @@ reg_nvcc_snvs_1v8: LDO1 {
 
 			reg_vdda_1v8: LDO3 {
 				regulator-name = "VDDA_1V8";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
 				vin-supply = <&reg_5v_p>;
 				regulator-boot-on;
 				regulator-always-on;

-- 
2.39.5


