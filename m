Return-Path: <devicetree+bounces-18532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE867F7067
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:49:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 62864B21008
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:49:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A1A8171D7;
	Fri, 24 Nov 2023 09:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pGlP4PeB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E4E810F9
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:49:11 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a04196fc957so246670866b.2
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700819349; x=1701424149; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UUdTnaaBHnW2fjhe6sI21VXYoayTY5LZbV+9rSQdYMc=;
        b=pGlP4PeBy4NTZf9BrqvXX3Q5jgWh+tHYEXYGZ+DqepOd58n91sajaZeJTUDbO4TVjp
         4M8AM32wI3SZ4MZTnbVCATUFZZmXlb5ybdJ4XDRhVsOyQWFs8p5SJf/UDBFRhMKW620I
         oO0ALAKfBamcC+LKHyHLjE2Hg1bd5QFVgdNXBkB8cP2FiXT7lluMaYxjZbhbXPLnUnLD
         e1nDcHKmqfWEkk8vT1g+FtJJhNumnjy+lKrmbDZ48qLayBj60y7u3l/0VXYCDaMxWspj
         oQGG61+f518Q7jX6z8bsbHPVcdWIgCnHKzkGyN5EYcee/zQPCJjX2B1u///cfBHs+dZC
         zyMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700819349; x=1701424149;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UUdTnaaBHnW2fjhe6sI21VXYoayTY5LZbV+9rSQdYMc=;
        b=fGoBCdq7BQYbnSkav6skTZFtjfrIm2nInFaifMGBzA96n3hpOxq0zdYg9XW3imRkMO
         LE3RWV34eYR/I/QL08QzCNI5Aelu89H36aeD2Nliqkhyi6o8mJybxkKhNT7ilCfWH5jt
         e6t1gBplkQbzK+IBFwWSH7JFc8Aacad+WAPBXUp105USWfzRLUp5efWNPcGhNqIeNniw
         9LyCZJpRUA9MMAQ6GYL8Vgam4xumMIezaUYU3HbZ74Xn29Ip5iCh8OmHsrMDAkj8smDt
         q/NNpG9tyukB08zwDHdDx77W1RCdU8vdnht9EAPwoDuM3CzgSYB+tWR6BMsS0Z+txH9X
         VVzw==
X-Gm-Message-State: AOJu0Yy+6gtpBhVWHaRth0eZegyrGePvC906s8Ki8qJIlioRsFcbMdrg
	IiZ01vzEg1RZsYUjeiBpsuRdPw==
X-Google-Smtp-Source: AGHT+IFvkCKst+6yxzZMwo06iOJIDvsxsngV5hArSa+rFOZbFNoN9V7sg2i35tPibbR6FhG4eZ7r/A==
X-Received: by 2002:a17:906:9c12:b0:9df:e39d:e0ed with SMTP id ff18-20020a1709069c1200b009dfe39de0edmr1453162ejc.24.1700819349499;
        Fri, 24 Nov 2023 01:49:09 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id h24-20020a170906591800b009fdc684a79esm1857025ejq.124.2023.11.24.01.49.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 01:49:08 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: st: minor whitespace cleanup around '='
Date: Fri, 24 Nov 2023 10:49:05 +0100
Message-Id: <20231124094905.58425-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/st/ste-dbx5x0.dtsi           | 18 +++++++++---------
 arch/arm/boot/dts/st/ste-hrefprev60.dtsi       |  2 +-
 arch/arm/boot/dts/st/ste-hrefv60plus.dtsi      |  2 +-
 arch/arm/boot/dts/st/ste-nomadik-stn8815.dtsi  |  8 ++++----
 arch/arm/boot/dts/st/ste-snowball.dts          |  2 +-
 .../dts/st/ste-ux500-samsung-codina-tmo.dts    |  2 +-
 .../boot/dts/st/ste-ux500-samsung-codina.dts   |  2 +-
 .../boot/dts/st/ste-ux500-samsung-gavini.dts   |  2 +-
 .../boot/dts/st/ste-ux500-samsung-janice.dts   |  2 +-
 .../arm/boot/dts/st/ste-ux500-samsung-kyle.dts |  2 +-
 arch/arm/boot/dts/st/stih407-pinctrl.dtsi      |  8 ++++----
 arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts  |  2 +-
 arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts  |  2 +-
 arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts  |  2 +-
 arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts  |  2 +-
 15 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/arch/arm/boot/dts/st/ste-dbx5x0.dtsi b/arch/arm/boot/dts/st/ste-dbx5x0.dtsi
index d5d88771ef97..0f87abeddc33 100644
--- a/arch/arm/boot/dts/st/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/st/ste-dbx5x0.dtsi
@@ -425,7 +425,7 @@ rtc@80154000 {
 		gpio0: gpio@8012e000 {
 			compatible = "stericsson,db8500-gpio",
 				"st,nomadik-gpio";
-			reg =  <0x8012e000 0x80>;
+			reg = <0x8012e000 0x80>;
 			interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -440,7 +440,7 @@ gpio0: gpio@8012e000 {
 		gpio1: gpio@8012e080 {
 			compatible = "stericsson,db8500-gpio",
 				"st,nomadik-gpio";
-			reg =  <0x8012e080 0x80>;
+			reg = <0x8012e080 0x80>;
 			interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -455,7 +455,7 @@ gpio1: gpio@8012e080 {
 		gpio2: gpio@8000e000 {
 			compatible = "stericsson,db8500-gpio",
 				"st,nomadik-gpio";
-			reg =  <0x8000e000 0x80>;
+			reg = <0x8000e000 0x80>;
 			interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -470,7 +470,7 @@ gpio2: gpio@8000e000 {
 		gpio3: gpio@8000e080 {
 			compatible = "stericsson,db8500-gpio",
 				"st,nomadik-gpio";
-			reg =  <0x8000e080 0x80>;
+			reg = <0x8000e080 0x80>;
 			interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -485,7 +485,7 @@ gpio3: gpio@8000e080 {
 		gpio4: gpio@8000e100 {
 			compatible = "stericsson,db8500-gpio",
 				"st,nomadik-gpio";
-			reg =  <0x8000e100 0x80>;
+			reg = <0x8000e100 0x80>;
 			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -500,7 +500,7 @@ gpio4: gpio@8000e100 {
 		gpio5: gpio@8000e180 {
 			compatible = "stericsson,db8500-gpio",
 				"st,nomadik-gpio";
-			reg =  <0x8000e180 0x80>;
+			reg = <0x8000e180 0x80>;
 			interrupts = <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -515,7 +515,7 @@ gpio5: gpio@8000e180 {
 		gpio6: gpio@8011e000 {
 			compatible = "stericsson,db8500-gpio",
 				"st,nomadik-gpio";
-			reg =  <0x8011e000 0x80>;
+			reg = <0x8011e000 0x80>;
 			interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -530,7 +530,7 @@ gpio6: gpio@8011e000 {
 		gpio7: gpio@8011e080 {
 			compatible = "stericsson,db8500-gpio",
 				"st,nomadik-gpio";
-			reg =  <0x8011e080 0x80>;
+			reg = <0x8011e080 0x80>;
 			interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -545,7 +545,7 @@ gpio7: gpio@8011e080 {
 		gpio8: gpio@a03fe000 {
 			compatible = "stericsson,db8500-gpio",
 				"st,nomadik-gpio";
-			reg =  <0xa03fe000 0x80>;
+			reg = <0xa03fe000 0x80>;
 			interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
diff --git a/arch/arm/boot/dts/st/ste-hrefprev60.dtsi b/arch/arm/boot/dts/st/ste-hrefprev60.dtsi
index 9859ee91a15e..c87fd27b4434 100644
--- a/arch/arm/boot/dts/st/ste-hrefprev60.dtsi
+++ b/arch/arm/boot/dts/st/ste-hrefprev60.dtsi
@@ -62,7 +62,7 @@ spi@80002000 {
 
 		// External Micro SD slot
 		mmc@80126000 {
-			cd-gpios  = <&tc3589x_gpio 3 GPIO_ACTIVE_HIGH>;
+			cd-gpios = <&tc3589x_gpio 3 GPIO_ACTIVE_HIGH>;
 		};
 
 		pinctrl {
diff --git a/arch/arm/boot/dts/st/ste-hrefv60plus.dtsi b/arch/arm/boot/dts/st/ste-hrefv60plus.dtsi
index e66fa59c2de6..f87f4150ea68 100644
--- a/arch/arm/boot/dts/st/ste-hrefv60plus.dtsi
+++ b/arch/arm/boot/dts/st/ste-hrefv60plus.dtsi
@@ -191,7 +191,7 @@ gpio@8011e080 {
 
 		// External Micro SD slot
 		mmc@80126000 {
-			cd-gpios  = <&gpio2 31 GPIO_ACTIVE_HIGH>; // 95
+			cd-gpios = <&gpio2 31 GPIO_ACTIVE_HIGH>; // 95
 		};
 
 		pinctrl {
diff --git a/arch/arm/boot/dts/st/ste-nomadik-stn8815.dtsi b/arch/arm/boot/dts/st/ste-nomadik-stn8815.dtsi
index 6816eef39d45..4d37c5fb553c 100644
--- a/arch/arm/boot/dts/st/ste-nomadik-stn8815.dtsi
+++ b/arch/arm/boot/dts/st/ste-nomadik-stn8815.dtsi
@@ -52,7 +52,7 @@ mtu1: mtu@101e3000 {
 
 	gpio0: gpio@101e4000 {
 		compatible = "st,nomadik-gpio";
-		reg =  <0x101e4000 0x80>;
+		reg = <0x101e4000 0x80>;
 		interrupt-parent = <&vica>;
 		interrupts = <6>;
 		interrupt-controller;
@@ -66,7 +66,7 @@ gpio0: gpio@101e4000 {
 
 	gpio1: gpio@101e5000 {
 		compatible = "st,nomadik-gpio";
-		reg =  <0x101e5000 0x80>;
+		reg = <0x101e5000 0x80>;
 		interrupt-parent = <&vica>;
 		interrupts = <7>;
 		interrupt-controller;
@@ -80,7 +80,7 @@ gpio1: gpio@101e5000 {
 
 	gpio2: gpio@101e6000 {
 		compatible = "st,nomadik-gpio";
-		reg =  <0x101e6000 0x80>;
+		reg = <0x101e6000 0x80>;
 		interrupt-parent = <&vica>;
 		interrupts = <8>;
 		interrupt-controller;
@@ -94,7 +94,7 @@ gpio2: gpio@101e6000 {
 
 	gpio3: gpio@101e7000 {
 		compatible = "st,nomadik-gpio";
-		reg =  <0x101e7000 0x80>;
+		reg = <0x101e7000 0x80>;
 		ngpio = <28>;
 		interrupt-parent = <&vica>;
 		interrupts = <9>;
diff --git a/arch/arm/boot/dts/st/ste-snowball.dts b/arch/arm/boot/dts/st/ste-snowball.dts
index 27c2ec51e732..1322abfc7acf 100644
--- a/arch/arm/boot/dts/st/ste-snowball.dts
+++ b/arch/arm/boot/dts/st/ste-snowball.dts
@@ -266,7 +266,7 @@ mmc@80126000 {
 			pinctrl-1 = <&mc0_a_1_sleep>;
 
 			/* GPIO218 MMC_CD */
-			cd-gpios  = <&gpio6 26 GPIO_ACTIVE_LOW>;
+			cd-gpios = <&gpio6 26 GPIO_ACTIVE_LOW>;
 
 			status = "okay";
 		};
diff --git a/arch/arm/boot/dts/st/ste-ux500-samsung-codina-tmo.dts b/arch/arm/boot/dts/st/ste-ux500-samsung-codina-tmo.dts
index 463942ae755e..c623cc35c5ea 100644
--- a/arch/arm/boot/dts/st/ste-ux500-samsung-codina-tmo.dts
+++ b/arch/arm/boot/dts/st/ste-ux500-samsung-codina-tmo.dts
@@ -310,7 +310,7 @@ mmc@80126000 {
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&mc0_a_2_default>;
 			pinctrl-1 = <&mc0_a_2_sleep>;
-			cd-gpios  = <&gpio6 25 GPIO_ACTIVE_LOW>; // GPIO217
+			cd-gpios = <&gpio6 25 GPIO_ACTIVE_LOW>; // GPIO217
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/st/ste-ux500-samsung-codina.dts b/arch/arm/boot/dts/st/ste-ux500-samsung-codina.dts
index c1ae0e23fe45..2355ca6e9ad6 100644
--- a/arch/arm/boot/dts/st/ste-ux500-samsung-codina.dts
+++ b/arch/arm/boot/dts/st/ste-ux500-samsung-codina.dts
@@ -402,7 +402,7 @@ mmc@80126000 {
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&mc0_a_2_default>;
 			pinctrl-1 = <&mc0_a_2_sleep>;
-			cd-gpios  = <&gpio6 25 GPIO_ACTIVE_LOW>; // GPIO217
+			cd-gpios = <&gpio6 25 GPIO_ACTIVE_LOW>; // GPIO217
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/st/ste-ux500-samsung-gavini.dts b/arch/arm/boot/dts/st/ste-ux500-samsung-gavini.dts
index b21e40da3dfd..ad9a20ccaaeb 100644
--- a/arch/arm/boot/dts/st/ste-ux500-samsung-gavini.dts
+++ b/arch/arm/boot/dts/st/ste-ux500-samsung-gavini.dts
@@ -362,7 +362,7 @@ mmc@80126000 {
 			pinctrl-0 = <&mc0_a_2_default>;
 			pinctrl-1 = <&mc0_a_2_sleep>;
 			/* "flash detect" actually card detect */
-			cd-gpios  = <&gpio6 25 GPIO_ACTIVE_LOW>;
+			cd-gpios = <&gpio6 25 GPIO_ACTIVE_LOW>;
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/st/ste-ux500-samsung-janice.dts b/arch/arm/boot/dts/st/ste-ux500-samsung-janice.dts
index 6e586e875565..229f7c32103c 100644
--- a/arch/arm/boot/dts/st/ste-ux500-samsung-janice.dts
+++ b/arch/arm/boot/dts/st/ste-ux500-samsung-janice.dts
@@ -412,7 +412,7 @@ mmc@80126000 {
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&mc0_a_2_default>;
 			pinctrl-1 = <&mc0_a_2_sleep>;
-			cd-gpios  = <&gpio6 25 GPIO_ACTIVE_LOW>; // GPIO217
+			cd-gpios = <&gpio6 25 GPIO_ACTIVE_LOW>; // GPIO217
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/st/ste-ux500-samsung-kyle.dts b/arch/arm/boot/dts/st/ste-ux500-samsung-kyle.dts
index ba4421080b2a..cdb147dcc1db 100644
--- a/arch/arm/boot/dts/st/ste-ux500-samsung-kyle.dts
+++ b/arch/arm/boot/dts/st/ste-ux500-samsung-kyle.dts
@@ -238,7 +238,7 @@ mmc@80126000 {
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&mc0_a_1_default>;
 			pinctrl-1 = <&mc0_a_1_sleep>;
-			cd-gpios  = <&gpio6 25 GPIO_ACTIVE_LOW>; // GPIO217
+			cd-gpios = <&gpio6 25 GPIO_ACTIVE_LOW>; // GPIO217
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/st/stih407-pinctrl.dtsi b/arch/arm/boot/dts/st/stih407-pinctrl.dtsi
index 7815669fe813..dcb821f567fa 100644
--- a/arch/arm/boot/dts/st/stih407-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stih407-pinctrl.dtsi
@@ -462,14 +462,14 @@ pio19: pio@9209000 {
 			serial0 {
 				pinctrl_serial0: serial0-0 {
 					st,pins {
-						tx =  <&pio17 0 ALT1 OUT>;
-						rx =  <&pio17 1 ALT1 IN>;
+						tx = <&pio17 0 ALT1 OUT>;
+						rx = <&pio17 1 ALT1 IN>;
 					};
 				};
 				pinctrl_serial0_hw_flowctrl: serial0-0_hw_flowctrl {
 					st,pins {
-						tx =  <&pio17 0 ALT1 OUT>;
-						rx =  <&pio17 1 ALT1 IN>;
+						tx = <&pio17 0 ALT1 OUT>;
+						rx = <&pio17 1 ALT1 IN>;
 						cts = <&pio17 2 ALT1 IN>;
 						rts = <&pio17 3 ALT1 OUT>;
 					};
diff --git a/arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts b/arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts
index afcd6285890c..69d693ae26dd 100644
--- a/arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts
+++ b/arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts
@@ -59,7 +59,7 @@ &m4_rproc {
 	/delete-property/ st,syscfg-holdboot;
 	resets = <&scmi_reset RST_SCMI_MCU>,
 		 <&scmi_reset RST_SCMI_MCU_HOLD_BOOT>;
-	reset-names =  "mcu_rst", "hold_boot";
+	reset-names = "mcu_rst", "hold_boot";
 };
 
 &rcc {
diff --git a/arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts b/arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts
index 39358d902000..89bfb4143ba7 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts
@@ -65,7 +65,7 @@ &m4_rproc {
 	/delete-property/ st,syscfg-holdboot;
 	resets = <&scmi_reset RST_SCMI_MCU>,
 		 <&scmi_reset RST_SCMI_MCU_HOLD_BOOT>;
-	reset-names =  "mcu_rst", "hold_boot";
+	reset-names = "mcu_rst", "hold_boot";
 };
 
 &rcc {
diff --git a/arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts b/arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts
index 07ea765a4553..ca7a3a0f16af 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts
@@ -64,7 +64,7 @@ &m4_rproc {
 	/delete-property/ st,syscfg-holdboot;
 	resets = <&scmi_reset RST_SCMI_MCU>,
 		 <&scmi_reset RST_SCMI_MCU_HOLD_BOOT>;
-	reset-names =  "mcu_rst", "hold_boot";
+	reset-names = "mcu_rst", "hold_boot";
 };
 
 &rcc {
diff --git a/arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts b/arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts
index 813086ec2489..f6510b93f912 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts
@@ -70,7 +70,7 @@ &m4_rproc {
 	/delete-property/ st,syscfg-holdboot;
 	resets = <&scmi_reset RST_SCMI_MCU>,
 		 <&scmi_reset RST_SCMI_MCU_HOLD_BOOT>;
-	reset-names =  "mcu_rst", "hold_boot";
+	reset-names = "mcu_rst", "hold_boot";
 };
 
 &rcc {
-- 
2.34.1


