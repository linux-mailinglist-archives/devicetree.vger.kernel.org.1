Return-Path: <devicetree+bounces-29867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B21682543B
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 14:14:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2214C286CE4
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 13:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CB762D7A4;
	Fri,  5 Jan 2024 13:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="1MykyLek"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05582D622;
	Fri,  5 Jan 2024 13:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 405A5xIQ029634;
	Fri, 5 Jan 2024 14:08:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=pdoLzds6ybOz4DH26I8jBcXVv6K38hVXWpk0gC53suE=; b=1M
	ykyLekQxVB8QeCibzGBFTU+wwbLAaFThGpcG3Uv7SVcH8MRj4Ho8gJ43sRxYxZPb
	vPzYj/z5+v+6p7Ns9TMhn+bCIEAdHVMnHk7KLgRsD808/d2Z6dPnGhFJ9wjI/Dbx
	XkC0qvX9W2hynl7CwPzDudaCEF0STykNcFY+7dHZjkl2d27a2JyCVrsF8yhzHtp1
	pHOsRJBNCG4Q8mB2+SpGFAtZuvH8vTxCX1/Ha0eWpW8DZBNqWptIw47STH88jj7n
	C3g3pqfRik7xFBA7gUNSGu7eJbwHrN5e7hsd6Ik5dvB75DEYq5mkVrIeN1WC/yx+
	hKdTGOBgSBxB7Ck7wvzA==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3ve9gfj62u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 05 Jan 2024 14:08:15 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8AE39100038;
	Fri,  5 Jan 2024 14:08:14 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7EE2322A6C9;
	Fri,  5 Jan 2024 14:08:14 +0100 (CET)
Received: from localhost (10.201.20.32) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 5 Jan
 2024 14:08:14 +0100
From: Gatien Chevallier <gatien.chevallier@foss.st.com>
To: <Oleksii_Moisieiev@epam.com>, <gregkh@linuxfoundation.org>,
        <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <alexandre.torgue@foss.st.com>,
        <vkoul@kernel.org>, <jic23@kernel.org>, <olivier.moysan@foss.st.com>,
        <arnaud.pouliquen@foss.st.com>, <mchehab@kernel.org>,
        <fabrice.gasnier@foss.st.com>, <andi.shyti@kernel.org>,
        <ulf.hansson@linaro.org>, <edumazet@google.com>, <kuba@kernel.org>,
        <pabeni@redhat.com>, <hugues.fruchet@foss.st.com>, <lee@kernel.org>,
        <will@kernel.org>, <catalin.marinas@arm.com>, <arnd@kernel.org>,
        <richardcochran@gmail.com>, Frank Rowand <frowand.list@gmail.com>,
        <peng.fan@oss.nxp.com>, <lars@metafoo.de>, <rcsekar@samsung.com>,
        <wg@grandegger.com>, <mkl@pengutronix.de>
CC: <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dmaengine@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
        <linux-iio@vger.kernel.org>, <alsa-devel@alsa-project.org>,
        <linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-serial@vger.kernel.org>, <linux-spi@vger.kernel.org>,
        <linux-usb@vger.kernel.org>,
        Gatien Chevallier
	<gatien.chevallier@foss.st.com>
Subject: [PATCH v9 13/13] ARM: dts: stm32: put ETZPC as an access controller for STM32MP13x boards
Date: Fri, 5 Jan 2024 14:04:04 +0100
Message-ID: <20240105130404.301172-14-gatien.chevallier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240105130404.301172-1-gatien.chevallier@foss.st.com>
References: <20240105130404.301172-1-gatien.chevallier@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-05_06,2024-01-05_01,2023-05-22_02

Reference ETZPC as an access-control-provider.

For more information on which peripheral is securable or supports MCU
isolation, please read the STM32MP13 reference manual

Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
---

Patch not present in V6

 arch/arm/boot/dts/st/stm32mp131.dtsi  | 26 ++++++++++++++++++++++++++
 arch/arm/boot/dts/st/stm32mp133.dtsi  |  1 +
 arch/arm/boot/dts/st/stm32mp13xc.dtsi |  1 +
 arch/arm/boot/dts/st/stm32mp13xf.dtsi |  1 +
 4 files changed, 29 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp131.dtsi b/arch/arm/boot/dts/st/stm32mp131.dtsi
index 6ba8e3fd43b0..74ceece168ce 100644
--- a/arch/arm/boot/dts/st/stm32mp131.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp131.dtsi
@@ -883,6 +883,7 @@ etzpc: bus@5c007000 {
 			reg = <0x5c007000 0x400>;
 			#address-cells = <1>;
 			#size-cells = <1>;
+			#access-controller-cells = <1>;
 			ranges;
 
 			adc_2: adc@48004000 {
@@ -895,6 +896,7 @@ adc_2: adc@48004000 {
 				#interrupt-cells = <1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				access-controllers = <&etzpc 33>;
 				status = "disabled";
 
 				adc2: adc@0 {
@@ -942,6 +944,7 @@ usbotg_hs: usb@49000000 {
 				dr_mode = "otg";
 				otg-rev = <0x200>;
 				usb33d-supply = <&scmi_usb33>;
+				access-controllers = <&etzpc 34>;
 				status = "disabled";
 			};
 
@@ -955,6 +958,7 @@ usart1: serial@4c000000 {
 				dmas = <&dmamux1 41 0x400 0x5>,
 				<&dmamux1 42 0x400 0x1>;
 				dma-names = "rx", "tx";
+				access-controllers = <&etzpc 16>;
 				status = "disabled";
 			};
 
@@ -968,6 +972,7 @@ usart2: serial@4c001000 {
 				dmas = <&dmamux1 43 0x400 0x5>,
 				<&dmamux1 44 0x400 0x1>;
 				dma-names = "rx", "tx";
+				access-controllers = <&etzpc 17>;
 				status = "disabled";
 			};
 
@@ -979,6 +984,7 @@ i2s4: audio-controller@4c002000 {
 				dmas = <&dmamux1 83 0x400 0x01>,
 				<&dmamux1 84 0x400 0x01>;
 				dma-names = "rx", "tx";
+				access-controllers = <&etzpc 13>;
 				status = "disabled";
 			};
 
@@ -993,6 +999,7 @@ spi4: spi@4c002000 {
 				dmas = <&dmamux1 83 0x400 0x01>,
 				       <&dmamux1 84 0x400 0x01>;
 				dma-names = "rx", "tx";
+				access-controllers = <&etzpc 18>;
 				status = "disabled";
 			};
 
@@ -1007,6 +1014,7 @@ spi5: spi@4c003000 {
 				dmas = <&dmamux1 85 0x400 0x01>,
 				       <&dmamux1 86 0x400 0x01>;
 				dma-names = "rx", "tx";
+				access-controllers = <&etzpc 19>;
 				status = "disabled";
 			};
 
@@ -1025,6 +1033,7 @@ i2c3: i2c@4c004000 {
 				dma-names = "rx", "tx";
 				st,syscfg-fmp = <&syscfg 0x4 0x4>;
 				i2c-analog-filter;
+				access-controllers = <&etzpc 20>;
 				status = "disabled";
 			};
 
@@ -1043,6 +1052,7 @@ i2c4: i2c@4c005000 {
 				dma-names = "rx", "tx";
 				st,syscfg-fmp = <&syscfg 0x4 0x8>;
 				i2c-analog-filter;
+				access-controllers = <&etzpc 21>;
 				status = "disabled";
 			};
 
@@ -1061,6 +1071,7 @@ i2c5: i2c@4c006000 {
 				dma-names = "rx", "tx";
 				st,syscfg-fmp = <&syscfg 0x4 0x10>;
 				i2c-analog-filter;
+				access-controllers = <&etzpc 22>;
 				status = "disabled";
 			};
 
@@ -1073,6 +1084,7 @@ timers12: timer@4c007000 {
 				interrupt-names = "global";
 				clocks = <&rcc TIM12_K>;
 				clock-names = "int";
+				access-controllers = <&etzpc 23>;
 				status = "disabled";
 
 				pwm {
@@ -1097,6 +1109,7 @@ timers13: timer@4c008000 {
 				interrupt-names = "global";
 				clocks = <&rcc TIM13_K>;
 				clock-names = "int";
+				access-controllers = <&etzpc 24>;
 				status = "disabled";
 
 				pwm {
@@ -1121,6 +1134,7 @@ timers14: timer@4c009000 {
 				interrupt-names = "global";
 				clocks = <&rcc TIM14_K>;
 				clock-names = "int";
+				access-controllers = <&etzpc 25>;
 				status = "disabled";
 
 				pwm {
@@ -1150,6 +1164,7 @@ timers15: timer@4c00a000 {
 				<&dmamux1 107 0x400 0x1>,
 				<&dmamux1 108 0x400 0x1>;
 				dma-names = "ch1", "up", "trig", "com";
+				access-controllers = <&etzpc 26>;
 				status = "disabled";
 
 				pwm {
@@ -1177,6 +1192,7 @@ timers16: timer@4c00b000 {
 				dmas = <&dmamux1 109 0x400 0x1>,
 				<&dmamux1 110 0x400 0x1>;
 				dma-names = "ch1", "up";
+				access-controllers = <&etzpc 27>;
 				status = "disabled";
 
 				pwm {
@@ -1204,6 +1220,7 @@ timers17: timer@4c00c000 {
 				dmas = <&dmamux1 111 0x400 0x1>,
 				       <&dmamux1 112 0x400 0x1>;
 				dma-names = "ch1", "up";
+				access-controllers = <&etzpc 28>;
 				status = "disabled";
 
 				pwm {
@@ -1228,6 +1245,7 @@ lptimer2: timer@50021000 {
 				clocks = <&rcc LPTIM2_K>;
 				clock-names = "mux";
 				wakeup-source;
+				access-controllers = <&etzpc 1>;
 				status = "disabled";
 
 				pwm {
@@ -1262,6 +1280,7 @@ lptimer3: timer@50022000 {
 				clocks = <&rcc LPTIM3_K>;
 				clock-names = "mux";
 				wakeup-source;
+				access-controllers = <&etzpc 2>;
 				status = "disabled";
 
 				pwm {
@@ -1290,6 +1309,7 @@ hash: hash@54003000 {
 				resets = <&rcc HASH1_R>;
 				dmas = <&mdma 30 0x2 0x1000a02 0x0 0x0>;
 				dma-names = "in";
+				access-controllers = <&etzpc 41>;
 			};
 
 			rng: rng@54004000 {
@@ -1297,6 +1317,7 @@ rng: rng@54004000 {
 				reg = <0x54004000 0x400>;
 				clocks = <&rcc RNG1_K>;
 				resets = <&rcc RNG1_R>;
+				access-controllers = <&etzpc 40>;
 			};
 
 			fmc: memory-controller@58002000 {
@@ -1311,6 +1332,7 @@ fmc: memory-controller@58002000 {
 				#size-cells = <1>;
 				clocks = <&rcc FMC_K>;
 				resets = <&rcc FMC_R>;
+				access-controllers = <&etzpc 54>;
 				status = "disabled";
 
 				nand-controller@4,0 {
@@ -1344,6 +1366,7 @@ qspi: spi@58003000 {
 				dma-names = "tx", "rx";
 				clocks = <&rcc QSPI_K>;
 				resets = <&rcc QSPI_R>;
+				access-controllers = <&etzpc 55>;
 				status = "disabled";
 			};
 
@@ -1358,6 +1381,7 @@ sdmmc1: mmc@58005000 {
 				cap-sd-highspeed;
 				cap-mmc-highspeed;
 				max-frequency = <130000000>;
+				access-controllers = <&etzpc 50>;
 				status = "disabled";
 			};
 
@@ -1372,6 +1396,7 @@ sdmmc2: mmc@58007000 {
 				cap-sd-highspeed;
 				cap-mmc-highspeed;
 				max-frequency = <130000000>;
+				access-controllers = <&etzpc 51>;
 				status = "disabled";
 			};
 
@@ -1385,6 +1410,7 @@ usbphyc: usbphyc@5a006000 {
 				resets = <&rcc USBPHY_R>;
 				vdda1v1-supply = <&scmi_reg11>;
 				vdda1v8-supply = <&scmi_reg18>;
+				access-controllers = <&etzpc 5>;
 				status = "disabled";
 
 				usbphyc_port0: usb-phy@0 {
diff --git a/arch/arm/boot/dts/st/stm32mp133.dtsi b/arch/arm/boot/dts/st/stm32mp133.dtsi
index c4d3a520c14b..3e394c8e58b9 100644
--- a/arch/arm/boot/dts/st/stm32mp133.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp133.dtsi
@@ -47,6 +47,7 @@ adc_1: adc@48003000 {
 		#interrupt-cells = <1>;
 		#address-cells = <1>;
 		#size-cells = <0>;
+		access-controllers = <&etzpc 32>;
 		status = "disabled";
 
 		adc1: adc@0 {
diff --git a/arch/arm/boot/dts/st/stm32mp13xc.dtsi b/arch/arm/boot/dts/st/stm32mp13xc.dtsi
index b9fb071a1471..a8bd5fe6536c 100644
--- a/arch/arm/boot/dts/st/stm32mp13xc.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13xc.dtsi
@@ -11,6 +11,7 @@ cryp: crypto@54002000 {
 		interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&rcc CRYP1>;
 		resets = <&rcc CRYP1_R>;
+		access-controllers = <&etzpc 42>;
 		status = "disabled";
 	};
 };
diff --git a/arch/arm/boot/dts/st/stm32mp13xf.dtsi b/arch/arm/boot/dts/st/stm32mp13xf.dtsi
index b9fb071a1471..a8bd5fe6536c 100644
--- a/arch/arm/boot/dts/st/stm32mp13xf.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13xf.dtsi
@@ -11,6 +11,7 @@ cryp: crypto@54002000 {
 		interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&rcc CRYP1>;
 		resets = <&rcc CRYP1_R>;
+		access-controllers = <&etzpc 42>;
 		status = "disabled";
 	};
 };
-- 
2.35.3


