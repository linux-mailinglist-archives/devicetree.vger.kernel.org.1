Return-Path: <devicetree+bounces-247052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8DFCC3A85
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:40:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A2A9A306D09C
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:33:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF43634B663;
	Tue, 16 Dec 2025 13:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="E4UmC59g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay186-hz1.antispameurope.com (mx-relay186-hz1.antispameurope.com [94.100.133.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B34E34A783
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.75
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765892465; cv=pass; b=Sxt7t4QMvs5lcEvzFU5gvOsDX/OT3U3PXrLpdteC/REcpfXGQc2HRakMlMSCDf4ScQLArzALcv17/OFSfuuQSkFORNB0MkunmLFB8/LQp2w6E3Z+q6u4WeH3hoe+yRlOQYqLt4mxrlH2v/7nN3pufvQuQ1E6binKH0+prLbCkKY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765892465; c=relaxed/simple;
	bh=ZVwXYQDLhX+snpzP7zDTjm80JBthkRMPulHnycCGpdU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S/HkqmIhzhSwz3fUwxGogeP5DKmKy5RlzLor8M26JAhbc8lAmSOBsPx2OxjwTIWpfxSi3OsnVUSprlJmlRNQjnwToK+RM3Waf6SBS/7hsTaowlKd2Sji+YNmb9pfD5bkcBH0vXr2/gzbxlD1NgIWYlRU87AJUWgL7ssKURmNw+Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=ew.tq-group.com; spf=unknown smtp.mailfrom=ew.tq-group.com; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=E4UmC59g reason="key not found in DNS"; arc=pass smtp.client-ip=94.100.133.75
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=tempfail smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate186-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=y/NNmCOZpOKOo1L5GaD1X3K8BzLVRcnpiik60MQSZsk=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765892394;
 b=rz2kP2GIKyyT2Ct/ohdiccNNstzTdfAu9VIRhTixfGSSuGSnWqiz9ISvDUDdEKspEFkrHEA6
 i0cO+CIzRDzMANnO0YFsvHzuGnG6Jz2jVhX/Zn1xLHTyuEi6+72DqD0jvNIGJOX+rOC79RL0TQ8
 F2EOL1nY9fr0+DqKEn106nUKFlxMzkkbbThDQGDi1D1EDtcqbHPM3cRDPlRjbj0d4XhkRi6R+vx
 360YTNojUwdMffFgk1XyNjVRtmvLbHr3c/ISL0L66AGgyyk+Wq32K9McUwInuTDHuhaje5jYoVG
 r07n9awY8CmY6cJrjCVYVmvznNnbfJAjkY3laTIH0L0wA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765892394;
 b=CKlSvvUnU41SpDpuPlSfQQhEN66cCOByxFMed+5aKnH5FHmsNJZHTc1yDN8sCIY4LFwRXvqz
 UTYwPNvyMfFg9SXxUiBlgdSgcLiiSb5E+IzF+s4FuA2cE3QyJ/HBgA0eKQRIlnk5IQftQ4nhUNw
 wpRIBqGYgR9eCByfWRxcUvO0nKpgzpuWFJ3CAg6YATn4iUvt+q7JDF9gMT5nFmRQqJLH9C3u3AD
 b0ByIntvmoRUI6wTytVu+nnjhnPVVGR4YAvUW7/aJbzSai3CYkYeo7Dolu5lDTFwJsr28S5S964
 zzt+uU73uyoiwgXXJn5w7s9pBIfTUBCADHrgsTDbcV0IA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay186-hz1.antispameurope.com;
 Tue, 16 Dec 2025 14:39:54 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id A7BE65A167D;
	Tue, 16 Dec 2025 14:39:46 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH 3/3] arm64: dts: imx8mn-tqma8mqnl: fix LDO5 power off
Date: Tue, 16 Dec 2025 14:39:25 +0100
Message-ID: <20251216133927.913039-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251216133927.913039-1-alexander.stein@ew.tq-group.com>
References: <20251216133927.913039-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay186-hz1.antispameurope.com with 4dVyhz3009z3f2J0
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:368384c713b76e7f27c528b6b2e25988
X-cloud-security:scantime:1.996
DKIM-Signature: a=rsa-sha256;
 bh=y/NNmCOZpOKOo1L5GaD1X3K8BzLVRcnpiik60MQSZsk=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765892394; v=1;
 b=E4UmC59gUTHIhJ2hYpbRcp66DyBHHaR5uh3vSx4Adq3PzBbac2ofSoLtHnL/VFhclVLZu/hN
 Pdos99RAAUgyFHYEXZyVmV9B942qGvR4E3RvNu6izyLxkLSp+xVl2zaL3ueO9CRUhBMYjrfKSE0
 H3s/FXcV2W+CBfShoVGFeUHVdS1MUYgOxYQi72bs7PEvNwLkFq27/SbT548DEdkD1N/wQHSqNBN
 tDesQJENrGBo+nrYZl5X9+7WsQwkOtX+KpbLt/MX07v3CQwUFLE5pXwkswbLrYx/syKbrPuGYzT
 9d2nJg0BUra5cCyo97R55fGur1RB9we2BqRdTs2qNECoQ==

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

Fix SD card removal caused by automatic LDO5 power off after boot

To prevent this, add vqmmc regulator for USDHC, using a GPIO-controlled
regulator that is supplied by LDO5. Since this is implemented on SoM but
used on baseboards with SD-card interface, implement the functionality
on SoM part and optionally enable it on baseboards if needed.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts | 13 ++++++-----
 .../boot/dts/freescale/imx8mn-tqma8mqnl.dtsi  | 22 +++++++++++++++++++
 2 files changed, 29 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
index d7f7f9aafb7d1..0d009f4be804e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
@@ -69,6 +69,10 @@ &mipi_dsi {
 	samsung,esc-clock-frequency = <20000000>;
 };
 
+&reg_usdhc2_vqmmc {
+	status = "okay";
+};
+
 &sai3 {
 	assigned-clocks = <&clk IMX8MN_CLK_SAI3>;
 	assigned-clock-parents = <&clk IMX8MN_AUDIO_PLL1_OUT>;
@@ -216,8 +220,7 @@ pinctrl_usdhc2: usdhc2grp {
 			   <MX8MN_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d4>,
 			   <MX8MN_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d4>,
 			   <MX8MN_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d4>,
-			   <MX8MN_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4>,
-			   <MX8MN_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x84>;
+			   <MX8MN_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4>;
 	};
 
 	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
@@ -226,8 +229,7 @@ pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
 			   <MX8MN_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d4>,
 			   <MX8MN_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d4>,
 			   <MX8MN_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d4>,
-			   <MX8MN_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4>,
-			   <MX8MN_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x84>;
+			   <MX8MN_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4>;
 	};
 
 	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
@@ -236,8 +238,7 @@ pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
 			   <MX8MN_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d4>,
 			   <MX8MN_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d4>,
 			   <MX8MN_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d4>,
-			   <MX8MN_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4>,
-			   <MX8MN_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x84>;
+			   <MX8MN_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4>;
 	};
 
 	pinctrl_usdhc2_gpio: usdhc2-gpiogrp {
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
index ac6ce5d814c50..31a3ca137e636 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
@@ -15,6 +15,20 @@ memory@40000000 {
 		reg = <0x00000000 0x40000000 0 0x40000000>;
 	};
 
+	reg_usdhc2_vqmmc: regulator-usdhc2-vqmmc {
+		compatible = "regulator-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_usdhc2_vqmmc>;
+		regulator-name = "V_SD2";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
+		states = <1800000 0x1>,
+			 <3300000 0x0>;
+		vin-supply = <&ldo5_reg>;
+		status = "disabled";
+	};
+
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -218,6 +232,10 @@ &mipi_dsi {
 	vddio-supply = <&ldo3_reg>;
 };
 
+&usdhc2 {
+	vqmmc-supply = <&reg_usdhc2_vqmmc>;
+};
+
 &usdhc3 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc3>;
@@ -272,6 +290,10 @@ pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
 		fsl,pins = <MX8MN_IOMUXC_SD2_RESET_B_GPIO2_IO19		0x84>;
 	};
 
+	pinctrl_reg_usdhc2_vqmmc: regusdhc2vqmmcgrp {
+		fsl,pins = <MX8MN_IOMUXC_GPIO1_IO04_GPIO1_IO4		0xc0>;
+	};
+
 	pinctrl_usdhc3: usdhc3grp {
 		fsl,pins = <MX8MN_IOMUXC_NAND_WE_B_USDHC3_CLK		0x1d4>,
 			   <MX8MN_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d2>,
-- 
2.43.0


