Return-Path: <devicetree+bounces-135039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 308B89FF850
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 11:39:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED31C7A138A
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 10:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38E611ABEC7;
	Thu,  2 Jan 2025 10:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="w+/f+EQT"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9CAB1A08B1;
	Thu,  2 Jan 2025 10:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735814338; cv=none; b=gl7S53sHtftjKb28K0WR5HW19IZBaRAaZpL+J2aRNv8vtg+8ZHjeeEfmD1Mw6fMj1Flpqy9YGuPDQNW/lmxcafLwQq8DfKRL4ipLTxw7JpqrmcvZgdVfK4sryt19hzjv5tyhA4vm17RDcT9AvP8L/EG3krcwtyTto0C2HDG07Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735814338; c=relaxed/simple;
	bh=e4wsYk1WZNi/2i2nK25yv+BfcA29VIgj0QbeROgmAhc=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=hW/7pBDPUwNIP1/dltkf8OhCOqgWNQ/na2t45d1C4KHhpWKl+pZi70TuJvMTObVT8grl5Jeqq/hkufI9BLMX5TKlOFvdTAy9gkk01YDZDRPiSB+VvYRIVf2Jig+eFpG028xX+XhO6srtRGze/FKqskwg14hADZybxrFd/rVyvrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=w+/f+EQT; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 502AcSiH1876284
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 2 Jan 2025 04:38:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735814309;
	bh=0iSidzEjR686c/vyQi1Lc8/oYdHsXDCCjNpZCNq3ASM=;
	h=From:To:CC:Subject:Date;
	b=w+/f+EQTua8qiy1Z/gqMF8wqQgCIURitqPmQG14j3KHOkkIHz3gSIscIMRHUaY6S9
	 h9zMsFuWKtVKzvUxk9xjYuctPmjZBNKKtgubBXdqcv3OXvi5UkwImUPMv1VScijcuA
	 XUmpcyxhFlMuTa8hc6gdMrTct8lsqggRn4Uvzwbs=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 502AcSUQ089480
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jan 2025 04:38:28 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 2
 Jan 2025 04:38:28 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 2 Jan 2025 04:38:28 -0600
Received: from udit-HP-Z2-Tower-G9-Workstation-Desktop-PC.dhcp.ti.com (udit-hp-z2-tower-g9-workstation-desktop-pc.dhcp.ti.com [10.24.69.6])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 502AcPZK093067;
	Thu, 2 Jan 2025 04:38:25 -0600
From: Udit Kumar <u-kumar1@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>
CC: <kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Udit Kumar
	<u-kumar1@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-j722s-evm: Enable PMIC
Date: Thu, 2 Jan 2025 16:08:14 +0530
Message-ID: <20250102103814.102499-1-u-kumar1@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Add support for TPS6522x PMIC family on wakeup I2C0 bus.
This device provides regulators (bucks and LDOs), along with
GPIOs, and monitors SOC's MCU error signal.

Signed-off-by: Udit Kumar <u-kumar1@ti.com>
---
Bootlogs
https://gist.github.com/uditkumarti/961cdece09f176e1e1806efef7799cf2

 arch/arm64/boot/dts/ti/k3-j722s-evm.dts | 88 +++++++++++++++++++++++++
 1 file changed, 88 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
index a00f4a7d20d9..691c6560ec04 100644
--- a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
@@ -359,6 +359,13 @@ audio_ext_refclk1_pins_default: audio-ext-refclk1-default-pins {
 			J722S_IOPAD(0x00a0, PIN_OUTPUT, 1) /* (N24) GPMC0_WPn.AUDIO_EXT_REFCLK1 */
 		>;
 	};
+
+	pmic_irq_pins_default: pmic-irq-default-pins {
+		pinctrl-single,pins = <
+			J722S_IOPAD(0x030, PIN_INPUT, 7) /* (K23) GPIO0_12 */
+		>;
+	};
+
 };
 
 &cpsw3g {
@@ -459,6 +466,87 @@ &wkup_i2c0 {
 	clock-frequency = <400000>;
 	status = "okay";
 	bootph-all;
+
+	tps65224: pmic@48 {
+		compatible = "ti,tps65224-q1";
+		reg = <0x48>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_irq_pins_default>;
+		interrupt-parent = <&main_gpio0>;
+		interrupts = <0 IRQ_TYPE_EDGE_FALLING>;
+		ti,primary-pmic;
+
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		buck12-supply = <&vsys_io_3v3>;
+		buck3-supply = <&vsys_io_3v3>;
+		buck4-supply = <&vsys_io_3v3>;
+
+		ldo1-supply = <&vsys_io_3v3>;
+		ldo2-supply = <&vsys_io_3v3>;
+		ldo3-supply = <&vsys_io_3v3>;
+
+		regulators {
+
+			buck1: buck1 {
+				regulator-name = "vcc1v8_io_buck1";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+				bootph-all;
+			};
+
+			buck2: buck2 {
+				regulator-name = "vcc1v1_ddr_buck2";
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck3: buck3 {
+				regulator-name = "vcc0v85_ram_buck3";
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck4: buck4 {
+				regulator-name = "vcc0v75_ioret_buck4";
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1: ldo1 {
+				regulator-name = "vdda1v8_pll_ldo1";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2: ldo2 {
+				regulator-name = "dvdd3v3_ldo2";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3: ldo3 {
+				regulator-name = "vdd1v85_phy_ldo3";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+	       };
+	};
 };
 
 &k3_clks {
-- 
2.34.1


