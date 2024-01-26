Return-Path: <devicetree+bounces-35427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA1283D6A7
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:42:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFEF4282AAA
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 09:42:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44A7414901A;
	Fri, 26 Jan 2024 08:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="MWej16+Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C9D1487F6
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 08:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706259466; cv=none; b=VnmnUt+ipEsJaxlwgE2nfifXvLEu2j2XbM5ZLSmIvMQ+G4crvfScG9bTrZRW+gdl128hDXEsUpZg1DA963F9cFD9RUS1qeUWhhgwVGBLrt/ABXAVxHKNqLTHE0wJYseIRwdgb0DJ1ceB3XxZGPOrF3MZbu1ffI2PVVjYrdhPyzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706259466; c=relaxed/simple;
	bh=bbrtM5l9Zaz5+Mfx4BKGI+ckSZGPLPb2/lg0G8glInI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=dTx+oRcvofLRSgiu4qOwERpaJIoPUSUI6MrFeuY6ygf5PBcN0w8Cfhobg2OVUIGogs4dFwetRG9cIDsITYtxQLHUfm1np5AWi3kN5a+RnXG5QwYooIl2fWJXWoqEWYU5q6VZqf9JGu1VT/rKaUI46OFjZl5UwO0Rb2juK31ZhHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=MWej16+Q; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1706259457; x=1708851457;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bbrtM5l9Zaz5+Mfx4BKGI+ckSZGPLPb2/lg0G8glInI=;
	b=MWej16+QbozxnGRMlSGSl9nqElGMapo2IiMLrB6pk3Mn3BD7j4MQklFqXotSfH6d
	FnXLYVFarttQSjrixLA+R9JHUZrpdOkqtvgcCRj/Q1u2e3dPbKZmV2YEQ7u76Iq0
	VxkAa0bZvPxdAyvK9RDXNEEG7Uf4i3QjINe2X9A+ILA=;
X-AuditID: ac14000a-fbefe7000000290d-bc-65b3740060f3
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 85.F9.10509.00473B56; Fri, 26 Jan 2024 09:57:36 +0100 (CET)
Received: from lws-moog.phytec.de (172.25.0.11) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Fri, 26 Jan
 2024 09:57:36 +0100
From: Yannic Moog <y.moog@phytec.de>
Date: Fri, 26 Jan 2024 09:57:25 +0100
Subject: [PATCH RFC for upstream 3/4] arm64: dts:
 imx8mp-phyboard-pollux-rdk: add etml panel support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20240126-wip-y-moog-phytec-de-upstream-pollux-lvds-v1-3-8ec5b48eec05@phytec.de>
References: <20240126-wip-y-moog-phytec-de-upstream-pollux-lvds-v1-0-8ec5b48eec05@phytec.de>
In-Reply-To: <20240126-wip-y-moog-phytec-de-upstream-pollux-lvds-v1-0-8ec5b48eec05@phytec.de>
To: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang
	<quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, David Airlie
	<airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, Shawn Guo
	<shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP
 Linux Team <linux-imx@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
CC: Primoz Fiser <primoz.fiser@norik.com>, <dri-devel@lists.freedesktop.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <upstream@lists.phytec.de>, Yannic
 Moog <y.moog@phytec.de>
X-Mailer: b4 0.12.3
X-ClientProxiedBy: Berlix.phytec.de (172.25.0.12) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA02SeyzVYRjHvb+bnxPt14/yYrFZZjXXxnq3zNTaeldWui1rNZ1444yk42RR
	q5NQjnKpJZ3Jnelkw3E5GDsbKjKsQkukQzPNLYsazcrPWct/n+f7fJ/n+f7x8LQ4yTjyilgV
	UcbKY1w5GVPlYGHtaaGqIz4drXtR14cSCs1X3Aeoqq2PQn8ac2hU2NnHooGleQ6ZBo8i3eNm
	BmVOmWiknxhikWblOY3et+RzqHihgUFp6RUsmm8eBqhLY2JR8sMnNEpt67REqwY9gyqXGwCa
	qrdHyy0FDKqfyWFRxpw7ShnxD3LAVQVVALf9LGJws3bUEut16RweGWrlcEH3MTyW8ZrCdWW3
	cFZGCot/LdWwuHauicJZqz44p/UmLssd5HBdz3X8Q+8cIpyRBUSQGEUCUXoHnpdFzRRHxvXA
	ay9NGUAN+m01gOeh4AfTFoI1QMaLQikFh3+3AHNhAtBo/LZWWPGcsANOTH1mJWYEN7iarKMk
	thUuwq5PI+tsI2yB3U+/MtJSWtgJq1u8JZkWXKBhNp82W87CxncaVrKIa6yZCJPQSjgHb9/x
	lK7aCRoOTut7OfPoIoAlBjeJoWAL75YMr18She1wqv+BpVl3gbl907SZT8GGRQOVDUTthkDa
	/4G0GwIVAVoHxEuK8GiiVER7xUUlqki4VwTRA+kX7CxkTSAzH7cDigftAPK0q52Nn38tEW0i
	5IlJRHk5THk1hsS3AyeecbW3eXHvBBGFSLmKRBMSR5T/uhRv5agGqcLB2T1+K85az5BAxnnA
	zTbY4Yg67a3Cad8rkvBlbLy4jX0zWhm2ySOpPGDyUeNhWF14oPZZWcIVY7JvzXyR7+5efjRI
	NR4QEfoxJq8S+HdmG7cdz9sqJpXXfa/puNCnsnZHeftvROk2N816HIoL9TOlcWpiPH3SWm1Q
	WZVOujLxUXLfXbQyXv4XFZ/FxvkCAAA=

The imx8mp-phyboard-pollux has on-board lvds interface connections. An
edt,etml1010g3dra panel is supported for this interface. Add device tree
nodes for backlight and panel.

Signed-off-by: Yannic Moog <y.moog@phytec.de>
---
 .../dts/freescale/imx8mp-phyboard-pollux-rdk.dts   | 74 ++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
index c8640cac3edc..9e8afceba65e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
@@ -19,6 +19,30 @@ chosen {
 		stdout-path = &uart1;
 	};
 
+	backlight_lvds: backlight {
+		compatible = "pwm-backlight";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_lvds1>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <11>;
+		enable-gpios = <&gpio2 20 GPIO_ACTIVE_LOW>;
+		num-interpolated-steps = <2>;
+		power-supply = <&reg_lvds1_reg_en>;
+		pwms = <&pwm3 0 50000 0>;
+	};
+
+	panel1_lvds: panel-lvds {
+		compatible = "edt,etml1010g3dra";
+		backlight = <&backlight_lvds>;
+		power-supply = <&reg_vcc_3v3_sw>;
+
+		port {
+			panel1_in: endpoint {
+				remote-endpoint = <&ldb_lvds_ch1>;
+			};
+		};
+	};
+
 	reg_can1_stby: regulator-can1-stby {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
@@ -39,6 +63,15 @@ reg_can2_stby: regulator-can2-stby {
 		regulator-name = "can2-stby";
 	};
 
+	reg_lvds1_reg_en: regulator-lvds1 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 9 GPIO_ACTIVE_HIGH>;
+		regulator-max-microvolt = <1200000>;
+		regulator-min-microvolt = <1200000>;
+		regulator-name = "lvds1_reg_en";
+	};
+
 	reg_usb1_vbus: regulator-usb1-vbus {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
@@ -61,6 +94,13 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
 		startup-delay-us = <100>;
 		off-on-delay-us = <12000>;
 	};
+
+	reg_vcc_3v3_sw: regulator-vcc-3v3-sw {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_3V3_SW";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
 };
 
 &eqos {
@@ -135,10 +175,32 @@ led-3 {
 	};
 };
 
+&lcdif2 {
+	status = "okay";
+};
+
+&lvds_bridge {
+	status = "okay";
+
+	ports {
+		port@2 {
+			ldb_lvds_ch1: endpoint {
+				remote-endpoint = <&panel1_in>;
+			};
+		};
+	};
+};
+
 &snvs_pwrkey {
 	status = "okay";
 };
 
+&pwm3 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm3>;
+};
+
 /* debug console */
 &uart1 {
 	pinctrl-names = "default";
@@ -289,6 +351,18 @@ MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17	0x1e2
 		>;
 	};
 
+	pinctrl_lvds1: lvds1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_WP__GPIO2_IO20		0x12
+		>;
+	};
+
+	pinctrl_pwm3: pwm3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SPDIF_TX__PWM3_OUT		0x12
+		>;
+	};
+
 	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	0x40

-- 
2.34.1


