Return-Path: <devicetree+bounces-33790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BF28365BD
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 15:44:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE32728B88B
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 14:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E5653D572;
	Mon, 22 Jan 2024 14:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="OiOUAeZa"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B99C20DF0
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 14:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705934659; cv=none; b=MaJCuLaNxHcMTDwjmUwGlTqftxlz2Q78LlMbOIgKs+nl+ceYklKH7O6btLPyd/936Y5dJ43eeozIFrUny6DwT1MtxlpfLSi1antJ02+LsDYw5edjjHInwvYjQw+JXDlAN6KMKfhRtMSa3PR5U4DKyfh/cE3rmK/zQB+BEP/eYgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705934659; c=relaxed/simple;
	bh=BaS6JobNS5mKNAZlpLQj2bcLHo3JwKkg7Z7+Sr+rHM0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Jy2ReTeK+/TE6ZAksJ2m/9LE8Xkg6X8zR8vet3A1EaHRFNg1xbEsc9s1GNjp+a8Jj6Mmc7FeWVxmsmS1b884xZrle77rQV9I7XUqhAChLTrrEBTBJ7Y2RiU64baKCf6FUjYf1zcxrifnYKj2jk35k9ob8YSURWCegcaMIEH691Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=OiOUAeZa; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 7B2C08783F;
	Mon, 22 Jan 2024 15:44:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1705934649;
	bh=B57MicbdDJm+TEZx/yPjERwGzPR1TjXrl061h8lzFSA=;
	h=From:To:Cc:Subject:Date:From;
	b=OiOUAeZaptpXLIVBh6aUGb3iHG1XbFcb7Fdfo/R1C27UWHXv5RcQ0/tCmj9ytzVuC
	 r+Kpsq9DtpOPfJwkMPbwgQtpgMQQIZp2V2yITa8Dw4hGrrdw4IXYlpCm/f9rHg0HwO
	 prnN0tRF438fS0xXGOI7yAT9OYNnMXvRZZobt5+8fWDIuRldctFkgXf/OnOg/RrRX/
	 +kizX0NEGmNaPN6tmuxK+wIrFX5WUTKdmcJeJK90ZQ58uwskXxypuJfWrwoa0wHuwo
	 FPzoLn8r/cMtsBZGyBAoFQn5aXNWvjs9pjUaE9Z/tTXTf29u9K1ugPCzQ7kjt3pxiZ
	 HPLjqXVvIH+Cg==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: Enable SAI audio on Data Modul i.MX8M Plus eDM SBC
Date: Mon, 22 Jan 2024 15:43:51 +0100
Message-ID: <20240122144359.169899-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Add SAI I2S and audio bindings to Data Modul i.MX8M Plus eDM SBC.

The SGTL5000 is attached to SAI3, however the SGTL5000 codec MCLK
must be supplied even if the SAI3 is not in use and is controlled
separately by the codec. The MCLK is also used to drive the codec
I2C block, so without MCLK, I2C access to the codec would not be
possible.

To provide such flexible MCLK control, use PWM4 with period 1 and
duty cycle 50% as 12 MHz clock source, as there is no direct way
to route MX8MP CCM clock to the MCLK pin. Use codec as bitclock
and frame clock master, so that the SGTL5000 PLL can be used to
generate derived clock.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 .../freescale/imx8mp-data-modul-edm-sbc.dts   | 64 ++++++++++++++++++-
 1 file changed, 63 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
index 5828c9d7821de..433b2c9468f89 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
@@ -45,6 +45,19 @@ clk_xtal25: clock-xtal25 {
 		clock-frequency = <25000000>;
 	};
 
+	clk_pwm4: clock-pwm4 {
+		compatible = "pwm-clock";
+		#clock-cells = <0>;
+		clock-frequency = <12000000>;
+		clock-output-names = "codec-pwm4";
+		/*
+		 * 1 / 83 ns ~= 12 MHz , but since the PWM input clock is 24 MHz
+		 * and the calculated PWM period is 1 and duty cycle is 50%, the
+		 * result is exactly 12 MHz, which is fine for SGTL5000 MCLK.
+		 */
+		pwms = <&pwm4 0 83 0>;
+	};
+
 	panel: panel {
 		/* Compatible string is filled in by panel board DT Overlay. */
 		backlight = <&backlight>;
@@ -82,6 +95,24 @@ reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
 		vin-supply = <&buck4>;
 	};
 
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "SGTL5000-Card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&codec_dai>;
+		simple-audio-card,frame-master = <&codec_dai>;
+		simple-audio-card,widgets = "Headphone", "Headphone Jack";
+		simple-audio-card,routing = "Headphone Jack", "HP_OUT";
+
+		cpu_dai: simple-audio-card,cpu {
+			sound-dai = <&sai3>;
+		};
+
+		codec_dai: simple-audio-card,codec {
+			sound-dai = <&sgtl5000>;
+		};
+	};
+
 	watchdog { /* TPS3813 */
 		compatible = "linux,wdt-gpio";
 		pinctrl-names = "default";
@@ -288,6 +319,15 @@ &i2c1 {
 	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 
+	sgtl5000: codec@a {
+		#sound-dai-cells = <0>;
+		clocks = <&clk_pwm4>;
+		compatible = "fsl,sgtl5000";
+		reg = <0x0a>;
+		VDDA-supply = <&buck4>;
+		VDDIO-supply = <&buck4>;
+	};
+
 	usb-hub@2c {
 		compatible = "microchip,usb2514bi";
 		reg = <0x2c>;
@@ -436,6 +476,23 @@ &pwm1 {
 	status = "disabled";
 };
 
+&pwm4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm4>;
+	status = "okay";
+};
+
+&sai3 {
+	#clock-cells = <0>;
+	#sound-dai-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai3>;
+	assigned-clocks = <&clk IMX8MP_CLK_SAI3>;
+	assigned-clock-parents = <&clk IMX8MP_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <12288000>;
+	status = "okay";
+};
+
 /* SD slot */
 &usdhc2 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
@@ -785,6 +842,12 @@ MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03		0x40000090
 		>;
 	};
 
+	pinctrl_pwm4: pwm4-grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI3_MCLK__PWM4_OUT		0xd6
+		>;
+	};
+
 	pinctrl_rtc: rtc-grp {
 		fsl,pins = <
 			/* RTC_IRQ# */
@@ -816,7 +879,6 @@ pinctrl_sai3: sai3-grp {
 			MX8MP_IOMUXC_SAI3_TXFS__AUDIOMIX_SAI3_TX_SYNC	0xd6
 			MX8MP_IOMUXC_SAI3_TXD__AUDIOMIX_SAI3_TX_DATA00	0xd6
 			MX8MP_IOMUXC_SAI3_TXC__AUDIOMIX_SAI3_TX_BCLK	0xd6
-			MX8MP_IOMUXC_SAI3_MCLK__AUDIOMIX_SAI3_MCLK	0xd6
 			MX8MP_IOMUXC_SAI3_RXD__AUDIOMIX_SAI3_RX_DATA00	0xd6
 		>;
 	};
-- 
2.43.0


