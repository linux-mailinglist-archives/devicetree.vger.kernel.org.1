Return-Path: <devicetree+bounces-206464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA70B2C580
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:26:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8452118903D8
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED16535A29B;
	Tue, 19 Aug 2025 13:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JLjrDY0D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C446A33CE8A
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609490; cv=none; b=l0p2NoWETTY6UiLusjkESu0rGU2HFiDfqi8/UXFEqslcJrtkWbKqmgzUHLNNmovzKZoFwII6GWLSKRdfkAJjY9YmxuUJ+3mrFo3QgRKfuVb39CYhKGbXTTJIMjcfqoxEr9+2U6c/H/0adrDefcr5s/6pBMMNNyojvtDz2ZgNmtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609490; c=relaxed/simple;
	bh=Z7ZJtSXgHh9PWOTDmz4uF6v50jelxpYxfcgTFPx7DJs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Bbq6L2aCL8RHiCkEeM7hAbLlJprZBToRHUHnG+fh32FBaXu7o9T0uts8tMK2PEzwIZNAIz1NNpgTK0CM4SiB3a7Zn82TJN7FYiQ4TFIzvWWGAv2/m7P9fRiLAXigwEpwtNcCHH2hG3J4Ut9nX5nPYKksV3LUntefO+RI4HWwzN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JLjrDY0D; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-afcb78fd0c2so74183566b.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609487; x=1756214287; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ulpUZhqfESE2Vkv73Vq8o6AJ5DJINj6XxiR4N0/qC2o=;
        b=JLjrDY0DNk85/fGAtJKT6F1gHtRUD5HEU1NC+uawSwWm14XQ8EMW5EtIWwhnODB1FR
         klPtb74tkhko80SKhlVUNUfDxqkyhFTO+2kIl2JP3GI85XzaWHI/PAn56Q6esRUwQZYE
         9cGkn/2Sieg2T8T0a4LwPlWgi9OkdgLZz8kw7MejSRvQ5o1tn+8uySEKdHtDwPgLG4nb
         3DYwJnlZl4rrIBzOOsWGVq3TrSbtWznNnFc5ZoSlyUbbaSw5Y6ykdiSJqEl8XCQ38v/F
         WRtmblfqdJYtv8++YFwehrIf2V1NHOt4gaLkCHkUkWIumliw0svJMTQ0Evp/ozMDUDsY
         AJaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609487; x=1756214287;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ulpUZhqfESE2Vkv73Vq8o6AJ5DJINj6XxiR4N0/qC2o=;
        b=KJ9rhnyJXAyWBaIqX/jHquH73mdaYfaCzHsFTejmpNixyMNktWMJ0G35MzyXUR/Chu
         cq1AGJdXi2Gi/iNdTLJkowwdspO0JMtgoHl2+aC1GcFG+iP8E39og40u7LCwl1dmBgpO
         PIYfiiZWwQr0N3W0IkfQ54cLgBJxt7FNsoK0b936uWU2LKVQPqZhz6UftuTDKLK34kiD
         eaEHlMeMQgAnyRqZV0qBb2aDKRBlhllP0RYV6AhIVobsKd5fAXXc+7+biR6ZA+DFCYDi
         UFrj64MXsbnHR/6HHsIVpTKCFHgEAc7602qbAZpllE2bzF9REumwV9R8rXMKtwQHVAiq
         mm9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUfGNN6Co5rJQD4v+w8EZ6Qz2MZjChgZqmA/x7Bs6ASN58xdNvemmD71bVwRA9HJg/Zr+ar7iwv1sq6@vger.kernel.org
X-Gm-Message-State: AOJu0YwgR8xP7hFjCoiJCPOkTZPn8t7KDA9dHbxN8hPQe/msSrDgyoOm
	ryox4cTtDhAoQW5usSVsrAUor5PLWrPVicwhg8O3Ol1xvHOj+oklgJ7/1aFo/yeCHiA=
X-Gm-Gg: ASbGnctmOltgBULj8/nyepnD+yqMBBvPdI5dgbLz3b5Ec8Awmeuuj9GQ/8hmDRddTdO
	sODIf8d35zFGShrOF8xlLFX64g1Y3vYjd6INGpJjKCMBE7M2xnEanY/j+790yqlXlPJwrYRz8kD
	bQzjGkh6AFAT+y5qvA6hQJKJqMd/5EU/eRKDzNzW4Pg4CHLl/23PS+lmRiDTAADCGgJiI4FqE+0
	rKYLVtMYlUO+pD5LqWedWfkUXcrpTnlKsib/YCvQ0kmpgN9WqS7gLGP2LEXMwZc2FEM0WkcR3an
	qisCC80pUETn5+k3ASSMK+DimbG/JrxmqfKDBpgsux9vLWrhHtEJiiIQOb4JsQS9svim5mqUrgk
	i7H7FCOxyUEOk5BoltgxtWUGF5F/b1TXwMw==
X-Google-Smtp-Source: AGHT+IF6Gzin6S8zveSklDH6azaQ/Zt4eVSrZ3ApV9V3k0QaGLNN/377jOXR6gIAndbfiNv1LCNbyA==
X-Received: by 2002:a17:906:dc93:b0:af9:3c7f:7447 with SMTP id a640c23a62f3a-afddc961dbemr117508066b.2.1755609487050;
        Tue, 19 Aug 2025 06:18:07 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdd01ab3fsm1006508966b.102.2025.08.19.06.18.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 06:18:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: freescale: Minor whitespace cleanup
Date: Tue, 19 Aug 2025 15:18:02 +0200
Message-ID: <20250819131800.86990-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250819131800.86990-3-krzysztof.kozlowski@linaro.org>
References: <20250819131800.86990-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=12221; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=Z7ZJtSXgHh9PWOTDmz4uF6v50jelxpYxfcgTFPx7DJs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopHmJJ547d13e7h+Ug2PbMtIqWwrpixpMzjYce
 8LpQAtBFCOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKR5iQAKCRDBN2bmhouD
 1waWD/0WxZFcZdftmXNp7AaxVxKsDNkFpXh3EPpcXZ1e5i5fWnDndcjC9XUuWkwpRNx+HIenKit
 QCpko2I5X1H8IJfdV/zq+ouLobGXca4xpDtyI3uxWZwV/pqelOm/b2Xpl+c85MqJdM3m/guAky5
 a2fJPjg6eiQLW+UW1eq5AXIgd/EOLO2blVVs86af6QxPhQX338xg41lSC/rjs9Mi8Gfo9zA+6Jy
 NCxJmyeN/8xNJBzmViM+UPI0e5DMH6dtJkDc5wmVra1OwM23zZxxuUCMDog8faNRU56gC32igfB
 NBtSKEHsyWNaRkjd1/IuPBgUdKVwwhOG12bOKIc2kvP/y4ApOADP8tHt4k5QZ12ezezfBRkWCYU
 Rr6jaJr2jdglqcZcZH5+2ve94GuMzmuCjMT0awIbX+vQNVWhRcfuuUP6zGVpoYL0Jni7AsIu66G
 xrYzDbKKk7a6AioDRqm3PBTBLq+fxBbCt0Rt9/2S1Ap/b1vRjN+2mPGdKIVIdm5T++1RxqDw9JQ
 Urc3TUqeLnAWQ6qEHBkmIYfvRtobAlPfyZfmxV0SdzT9LoUpjkAnPqBRcBx2KuSBJT2LXZiNy0Y
 P6A/fmAPSUPcko1yEoU5IVEld8CCerdTUzTCvhn7zytUrZQZbJ1u/n14rgIzb5enUV6GWY0U/rK Cll05CBp40agsQg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '=' or '{'
characters.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../boot/dts/freescale/imx8-apalis-v1.1.dtsi  |  2 +-
 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts |  2 +-
 .../dts/freescale/imx8mm-emtop-baseboard.dts  |  2 +-
 .../imx8mm-phyboard-polis-peb-av-10.dtso      |  2 +-
 .../imx8mp-aristainetos3-proton2s.dts         |  2 +-
 .../imx8mp-aristainetos3a-som-v1.dtsi         |  6 +--
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts  |  2 +-
 .../dts/freescale/imx8mp-skov-revb-lt6.dts    |  2 +-
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts  |  2 +-
 .../boot/dts/freescale/imx8x-colibri.dtsi     |  4 +-
 .../boot/dts/freescale/imx93-14x14-evk.dts    |  4 +-
 .../boot/dts/freescale/imx95-19x19-evk.dts    |  2 +-
 arch/arm64/boot/dts/freescale/imx95.dtsi      | 40 +++++++++----------
 13 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
index 6f27a9cc2494..86d018f470c1 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
@@ -256,7 +256,7 @@ touchscreen: touchscreen {
 };
 
 &asrc0 {
-	fsl,asrc-rate  = <48000>;
+	fsl,asrc-rate = <48000>;
 };
 
 &adc0 {
diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
index b6d64d3906ea..25a77cac6f0b 100644
--- a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
@@ -652,7 +652,7 @@ &pcie0 {
 	status = "okay";
 };
 
-&pcie0_ep{
+&pcie0_ep {
 	phys = <&hsio_phy 0 PHY_TYPE_PCIE 0>;
 	phy-names = "pcie-phy";
 	pinctrl-0 = <&pinctrl_pcieb>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-emtop-baseboard.dts b/arch/arm64/boot/dts/freescale/imx8mm-emtop-baseboard.dts
index 90e638b8e92a..87fe3ebedb8d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-emtop-baseboard.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-emtop-baseboard.dts
@@ -333,7 +333,7 @@ MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3             0x1d0
 		>;
 	};
 
-	pinctrl_usdhc1_100mhz: usdhc1-100mhzgrp{
+	pinctrl_usdhc1_100mhz: usdhc1-100mhzgrp {
 		fsl,pins = <
 			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK         	0x194
 			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD         	0x1d4
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-peb-av-10.dtso b/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-peb-av-10.dtso
index e5ca5a664b61..79e4c3710ac3 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-peb-av-10.dtso
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-peb-av-10.dtso
@@ -20,7 +20,7 @@ backlight: backlight {
 		pwms = <&pwm4 0 50000 0>;
 		power-supply = <&reg_vdd_3v3_s>;
 		enable-gpios = <&gpio5 1 GPIO_ACTIVE_HIGH>;
-		brightness-levels= <0 4 8 16 32 64 128 255>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
 	};
 
 	panel {
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3-proton2s.dts b/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3-proton2s.dts
index 2a736dbe96b4..58e36de7a2cd 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3-proton2s.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3-proton2s.dts
@@ -36,7 +36,7 @@ &eqos {
 	max-speed = <100>;
 };
 
-&ecspi1{
+&ecspi1 {
 	pinctrl-0 = <&pinctrl_ecspi1>;
 	cs-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi
index 231e480acfd4..f654d866e58c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi
@@ -167,7 +167,7 @@ &clk {
 			  <&clk IMX8MP_VIDEO_PLL1>;
 };
 
-&ecspi1{
+&ecspi1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_ecspi1 &pinctrl_ecspi1_cs2>;
 	cs-gpios = <&gpio5 9 GPIO_ACTIVE_LOW &gpio1 6 GPIO_ACTIVE_LOW>;
@@ -565,7 +565,7 @@ &mipi_dsi {
 	status = "disabled";
 };
 
-&pcie{
+&pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
 	reset-gpio = <&gpio4 20 GPIO_ACTIVE_LOW>;
@@ -574,7 +574,7 @@ &pcie{
 	status = "okay";
 };
 
-&pcie_phy{
+&pcie_phy {
 	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
 	clocks = <&pcie0_refclk>;
 	clock-names = "ref";
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
index c0cc5611048e..3730792daf50 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
@@ -309,7 +309,7 @@ &dsp {
 };
 
 &easrc {
-	fsl,asrc-rate  = <48000>;
+	fsl,asrc-rate = <48000>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts
index baecf768a2ee..e602c1c96143 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts
@@ -83,7 +83,7 @@ adc_ts: adc@0 {
 		compatible = "ti,tsc2046e-adc";
 		reg = <0>;
 		pinctrl-0 = <&pinctrl_touch>;
-		pinctrl-names ="default";
+		pinctrl-names = "default";
 		spi-max-frequency = <1000000>;
 		interrupts-extended = <&gpio4 25 IRQ_TYPE_LEVEL_LOW>;
 		#io-channel-cells = <1>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qm-mek.dts b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
index 95523c538135..de971af87f3f 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
@@ -407,7 +407,7 @@ sound-wm8960 {
 		audio-cpu = <&sai1>;
 		audio-codec = <&wm8960>;
 		hp-det-gpio = <&lsio_gpio0 31 GPIO_ACTIVE_HIGH>;
-		audio-routing =	"Headphone Jack", "HP_L",
+		audio-routing = "Headphone Jack", "HP_L",
 				"Headphone Jack", "HP_R",
 				"Ext Spk", "SPK_LP",
 				"Ext Spk", "SPK_LN",
diff --git a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
index e602d147e39b..8e9e841cc828 100644
--- a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
@@ -462,11 +462,11 @@ &lsio_pwm2 {
 
 /* VPU Mailboxes */
 &mu_m0 {
-	status="okay";
+	status = "okay";
 };
 
 &mu1_m0 {
-	status="okay";
+	status = "okay";
 };
 
 /* TODO MIPI CSI */
diff --git a/arch/arm64/boot/dts/freescale/imx93-14x14-evk.dts b/arch/arm64/boot/dts/freescale/imx93-14x14-evk.dts
index c5d86b54ad33..8c5769f90746 100644
--- a/arch/arm64/boot/dts/freescale/imx93-14x14-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-14x14-evk.dts
@@ -276,7 +276,7 @@ buck2: BUCK2 {
 				regulator-ramp-delay = <3125>;
 			};
 
-			buck4: BUCK4{
+			buck4: BUCK4 {
 				regulator-name = "BUCK4";
 				regulator-min-microvolt = <1620000>;
 				regulator-max-microvolt = <3400000>;
@@ -284,7 +284,7 @@ buck4: BUCK4{
 				regulator-always-on;
 			};
 
-			buck5: BUCK5{
+			buck5: BUCK5 {
 				regulator-name = "BUCK5";
 				regulator-min-microvolt = <1620000>;
 				regulator-max-microvolt = <3400000>;
diff --git a/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts b/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
index 2f949a0d48d2..0bfa4a8799a5 100644
--- a/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
@@ -671,7 +671,7 @@ &wdog3 {
 };
 
 &scmi_iomuxc {
-	pinctrl_emdio: emdiogrp{
+	pinctrl_emdio: emdiogrp {
 		fsl,pins = <
 			IMX95_PAD_ENET1_MDC__NETCMIX_TOP_NETC_MDC		0x50e
 			IMX95_PAD_ENET1_MDIO__NETCMIX_TOP_NETC_MDIO		0x90e
diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
index 4ca6a7ea586e..3279a9b9c3c2 100644
--- a/arch/arm64/boot/dts/freescale/imx95.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
@@ -260,35 +260,35 @@ clk_ext1: clock-ext1 {
 	sai1_mclk: clock-sai-mclk1 {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-		clock-frequency= <0>;
+		clock-frequency = <0>;
 		clock-output-names = "sai1_mclk";
 	};
 
 	sai2_mclk: clock-sai-mclk2 {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-		clock-frequency= <0>;
+		clock-frequency = <0>;
 		clock-output-names = "sai2_mclk";
 	};
 
 	sai3_mclk: clock-sai-mclk3 {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-		clock-frequency= <0>;
+		clock-frequency = <0>;
 		clock-output-names = "sai3_mclk";
 	};
 
 	sai4_mclk: clock-sai-mclk4 {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-		clock-frequency= <0>;
+		clock-frequency = <0>;
 		clock-output-names = "sai4_mclk";
 	};
 
 	sai5_mclk: clock-sai-mclk5 {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-		clock-frequency= <0>;
+		clock-frequency = <0>;
 		clock-output-names = "sai5_mclk";
 	};
 
@@ -1100,7 +1100,7 @@ usdhc1: mmc@42850000 {
 				assigned-clock-rates = <400000000>;
 				bus-width = <8>;
 				fsl,tuning-start-tap = <1>;
-				fsl,tuning-step= <2>;
+				fsl,tuning-step = <2>;
 				status = "disabled";
 			};
 
@@ -1117,7 +1117,7 @@ usdhc2: mmc@42860000 {
 				assigned-clock-rates = <400000000>;
 				bus-width = <4>;
 				fsl,tuning-start-tap = <1>;
-				fsl,tuning-step= <2>;
+				fsl,tuning-step = <2>;
 				status = "disabled";
 			};
 
@@ -1134,7 +1134,7 @@ usdhc3: mmc@428b0000 {
 				assigned-clock-rates = <400000000>;
 				bus-width = <4>;
 				fsl,tuning-start-tap = <1>;
-				fsl,tuning-step= <2>;
+				fsl,tuning-step = <2>;
 				status = "disabled";
 			};
 		};
@@ -1685,9 +1685,9 @@ pcie0: pcie@4c300000 {
 				 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>,
 				 <&hsio_blk_ctl 0>;
 			clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux", "ref";
-			assigned-clocks =<&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
-					 <&scmi_clk IMX95_CLK_HSIOPLL>,
-					 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
+			assigned-clocks = <&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
+					  <&scmi_clk IMX95_CLK_HSIOPLL>,
+					  <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
 			assigned-clock-rates = <3600000000>, <100000000>, <10000000>;
 			assigned-clock-parents = <0>, <0>,
 						 <&scmi_clk IMX95_CLK_SYSPLL1_PFD1_DIV2>;
@@ -1719,9 +1719,9 @@ pcie0_ep: pcie-ep@4c300000 {
 				 <&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
 				 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
 			clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux";
-			assigned-clocks =<&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
-					 <&scmi_clk IMX95_CLK_HSIOPLL>,
-					 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
+			assigned-clocks = <&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
+					  <&scmi_clk IMX95_CLK_HSIOPLL>,
+					  <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
 			assigned-clock-rates = <3600000000>, <100000000>, <10000000>;
 			assigned-clock-parents = <0>, <0>,
 						 <&scmi_clk IMX95_CLK_SYSPLL1_PFD1_DIV2>;
@@ -1759,9 +1759,9 @@ pcie1: pcie@4c380000 {
 				 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>,
 				 <&hsio_blk_ctl 0>;
 			clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux", "ref";
-			assigned-clocks =<&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
-					 <&scmi_clk IMX95_CLK_HSIOPLL>,
-					 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
+			assigned-clocks = <&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
+					  <&scmi_clk IMX95_CLK_HSIOPLL>,
+					  <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
 			assigned-clock-rates = <3600000000>, <100000000>, <10000000>;
 			assigned-clock-parents = <0>, <0>,
 						 <&scmi_clk IMX95_CLK_SYSPLL1_PFD1_DIV2>;
@@ -1795,9 +1795,9 @@ pcie1_ep: pcie-ep@4c380000 {
 				 <&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
 				 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
 			clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux";
-			assigned-clocks =<&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
-					 <&scmi_clk IMX95_CLK_HSIOPLL>,
-					 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
+			assigned-clocks = <&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
+					  <&scmi_clk IMX95_CLK_HSIOPLL>,
+					  <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
 			assigned-clock-rates = <3600000000>, <100000000>, <10000000>;
 			assigned-clock-parents = <0>, <0>,
 						 <&scmi_clk IMX95_CLK_SYSPLL1_PFD1_DIV2>;
-- 
2.48.1


