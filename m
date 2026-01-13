Return-Path: <devicetree+bounces-254613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5266ED19EF4
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:35:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 48D06300CEF0
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D278D312803;
	Tue, 13 Jan 2026 15:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="k3HqSlBr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71DAC29AB15;
	Tue, 13 Jan 2026 15:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768318411; cv=none; b=J3pig6byvzL3DZ0/gnXPPnm9T04z/ZOF4PwpatMYql4Y5GjZnNwZ6yxcamEx6dj7eQmOL/f0Uib2r1KtQ8zAwcav9Pi0D2CnWFmATOWp/cl5snrcy0puXWbJwgKtJedFGGy/EMn1JY0C+MadjhThk59+e++5ED1IQZ7sbxqnpSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768318411; c=relaxed/simple;
	bh=PNoY+oPVcq1qySKpu5bkjrebwhB2LtCybrJ+6fvflog=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VtRJMg67XPDPLBZAqxzOAVnvmKe9MtW+onByF1ueTgp/BsCnW7tKoOQjPzV8kGRuDx40QM/58gcMNGmbvZJIf7XMVRk0wf0PhxUk00L5pDSALWooXXEbHSlqzcDJwjHUKJA2kUFQwk91ja1KvGlSBWvBNcwLXbc65mY/Wj51Vug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=k3HqSlBr; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Cc:In-Reply-To:References:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=i9tPInbRYZ5DqbTROuvEuMqdg4B8OEQPATOSgbmxIds=; b=k3HqSlBr938lscRgQVFS8xsNdi
	xmMgvVMTEgZwVcJcOTQhGeSVC8TwGkzY2N0FEq7LbSUmFd+RVBqXiTz0iWeq+KWew7mcWm059YHrM
	h31T6HOdhyX67zko8iWztVbG9XgHgva5Xt3OTFgKREmgBED2QK6Jb/5Y6dXhANhAMSlb6g1stcKL/
	qvGbtzqryDEEtSBozJ/ELG/TvqO0sPqEobMcOB4kZDg9kzOIFuLf61PzhcT3jEVG1veujpBnl6uhw
	wTLZ5fGnaxlFErRFmHTHe34m5YIvSC34sflfqDroVjSPXhq/tlAE3LqnsZCvHIaoFc0O3wo+4Bbhl
	8C3kxFtg==;
From: Andreas Kemnade <andreas@kemnade.info>
Date: Tue, 13 Jan 2026 16:31:35 +0100
Subject: [PATCH 2/3] ARM: dts: imx50-kobo-aura: add epd pmic description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-tps65185-dt-v1-2-66d376ba5f65@kemnade.info>
References: <20260113-tps65185-dt-v1-0-66d376ba5f65@kemnade.info>
In-Reply-To: <20260113-tps65185-dt-v1-0-66d376ba5f65@kemnade.info>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Andreas Kemnade <andreas@kemnade.info>, Josua Mayer <josua.mayer@jm0.eu>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2670; i=andreas@kemnade.info;
 h=from:subject:message-id; bh=jBmRxWjmO330uO2yWkvQ8CKi7YrP9xdjB0Sm7QHVf+4=;
 b=owGbwMvMwCUm/rzkS6lq2x3G02pJDJlpqbNKSvJUc9afqjI8YGTVybKqdP+kqha5ORLXHjwIe
 3pYYfrOjlIWBjEuBlkxRZZf1gpun1Se5QZPjbCHmcPKBDKEgYtTACbyVIyR4e0Fz3tKk0v49otb
 LZy2QTju5qGCc1PXxro55xk+jQ5LdGRk2Bd79/pHsy37O77WJiapswrvVNfSunm8bVVl6vQ0GR8
 ZZgA=
X-Developer-Key: i=andreas@kemnade.info; a=openpgp;
 fpr=EEC0DB858E66C0DA70620AC07DBD6AC74DE29324

From: Josua Mayer <josua.mayer@jm0.eu>

Kobo Aura (N514) includes a TPS65185 PMIC for the epaper display.

Add description for this pmic and its vin power-supply.

Signed-off-by: Josua Mayer <josua.mayer@jm0.eu>
Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 arch/arm/boot/dts/nxp/imx/imx50-kobo-aura.dts | 60 ++++++++++++++++++++++++++-
 1 file changed, 59 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx50-kobo-aura.dts b/arch/arm/boot/dts/nxp/imx/imx50-kobo-aura.dts
index b1a6a9c58ac3..4725ee241cb1 100644
--- a/arch/arm/boot/dts/nxp/imx/imx50-kobo-aura.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx50-kobo-aura.dts
@@ -58,6 +58,16 @@ event-frontlight {
 		};
 	};
 
+	epd_pmic_supply: regulator-epd-pmic-in {
+		compatible = "regulator-fixed";
+		regulator-name = "epd_pmic_supply";
+		gpio = <&gpio1 27 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		startup-delay-us = <20000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_epd_pmic_supply>;
+	};
+
 	sd2_pwrseq: pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		pinctrl-names = "default";
@@ -135,7 +145,34 @@ &i2c2 {
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
 
-	/* TODO: TPS65185 PMIC for E Ink at 0x68 */
+	pmic@68 {
+		compatible = "ti,tps65185";
+		reg = <0x68>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_epd_pmic>;
+		pwr-good-gpios = <&gpio3 28 GPIO_ACTIVE_HIGH>;
+		vcom-ctrl-gpios = <&gpio4 21 GPIO_ACTIVE_HIGH>;
+		enable-gpios = <&gpio3 30 GPIO_ACTIVE_HIGH>;
+		wakeup-gpios = <&gpio3 29 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&epd_pmic_supply>;
+		interrupts-extended = <&gpio4 15 IRQ_TYPE_LEVEL_LOW>;
+
+		regulators {
+			vcom {
+				regulator-name = "vcom";
+			};
+
+			vposneg {
+				regulator-name = "vposneg";
+				regulator-min-microvolt = <15000000>;
+				regulator-max-microvolt = <15000000>;
+			};
+
+			v3p3 {
+				regulator-name = "v3p3";
+			};
+		};
+	};
 };
 
 &i2c3 {
@@ -161,6 +198,27 @@ MX50_PAD_CSPI_SS0__GPIO4_11		0x0	/* INT */
 		>;
 	};
 
+	pinctrl_epd_pmic: epd-pmic-grp {
+		fsl,pins = <
+			/* PWRUP */
+			MX50_PAD_EPDC_PWRCTRL1__GPIO3_30	0x0
+			/* WAKEUP */
+			MX50_PAD_EPDC_PWRCTRL0__GPIO3_29	0x0
+			/* VCOMCTRL */
+			MX50_PAD_EPDC_VCOM0__GPIO4_21		0x0
+			/* PWRGOOD: enable internal 100k pull-up */
+			MX50_PAD_EPDC_PWRSTAT__GPIO3_28		0xe0
+			/* INT: enable internal 100k pull-up */
+			MX50_PAD_ECSPI1_SS0__GPIO4_15		0xe0
+		>;
+	};
+
+	pinctrl_epd_pmic_supply: epd-pmic-supply-grp {
+		fsl,pins = <
+			MX50_PAD_EIM_CRE__GPIO1_27		0x0
+		>;
+	};
+
 	pinctrl_gpiokeys: gpiokeysgrp {
 		fsl,pins = <
 			MX50_PAD_CSPI_MISO__GPIO4_10		0x0

-- 
2.47.3


