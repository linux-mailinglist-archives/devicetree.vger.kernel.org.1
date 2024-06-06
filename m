Return-Path: <devicetree+bounces-73432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6A78FF56B
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 21:45:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 072301F27147
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 19:45:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0650E4CDEC;
	Thu,  6 Jun 2024 19:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lhOs2Ige"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678F83BBCC
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 19:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717703114; cv=none; b=rg+ExL/6OoR/cTRzAzrvnx1J1dkilsF0R3MPCfPpUxZKaRS01vyKwPuXoF0sG08RtsEnQDyUGFjnI3R8XaQPmDArhmW2dBvqkSGM3OX2ADeTFsABbXTG6OQ0YDvY/ICcHfpWkXpaeXksFN3t7kTUPWjpv2WWCLq30j70Th5hBHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717703114; c=relaxed/simple;
	bh=E2VzSaOWztPo1+M75GvlWRdkqqWnzZD9/q/hUFhnbFo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o0GN0WrYaOcEmo+s21DncliAS6wkdBOpLh4YhmaVYBP8sTY7l4aMXwGIbLvWsmiWkhj2zR5ihtttB9rK+eCbwjylfkZQymLTorB+2w5wJzu4SXaiVa+dAtMoeilHg/+tM62deRsb6gmKU9uQars6PVSfSyH8KmiLnnxw/mN3/h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lhOs2Ige; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-57a50ac2ca1so1788251a12.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 12:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717703112; x=1718307912; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L23VuLABdYflpW7ohmgeoyqQ6ExDqMPO2fRrPRCWGUM=;
        b=lhOs2IgefqmzbE+o6G2P0U9hO0BUtoh4foXOO9xwmeqrXWBEbeehdpbIZ5b4CPy808
         P31d7Tp/XfIMoSMu+YIukxjCV2PVLxNPBMkU+CN7epWTHq4T8jiYmgSPmJTegW3ZujdT
         Vs/0y+wu6/2GwZ2afm8W8j4BshGHIlyuTdud6WYVlqfuKdFnds6tt1yB5U9ly08uVA2E
         j8gJJ09i3f5RZ+1hCollmXHs60ZKWouh17DFnv7vFLEU/qQEazC7yfH7d9Do3Ou0NWou
         hhUv2/9Piz12Z2i/q8DeQG8J0/nSU1VdZWnbQ+AzNMIm62BnWB0+jlcCUzIEA1nRmqJ4
         EiYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717703112; x=1718307912;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L23VuLABdYflpW7ohmgeoyqQ6ExDqMPO2fRrPRCWGUM=;
        b=E8yuDosxF3FaH5R3pgnlNTelcXcm1fN5WtwjF0kcllrX/z/jbtkhKLQ5Kv/HzLxrF0
         lYRbMq+akuXl1BZvI+grVZfbdUX7GFkPopqXoe6if8Vv9YYm+GOuyRIt23BHSe/Qk31Q
         6tEjCr9BJJF71jtsGEztD1e1UWEVrENVq4zWpqn/xwYV2D1FXx6rzf19LXl0nu9GGZG4
         gO+icoMkeA9Ad1S8E3qD+W8txAEQ6tRwGlCn0enZdMNbCVGRtNORtiJhClrQiw+Mz9OP
         B+fdHcixNhwauhpFpwWUUxSD1NRom/kLJ/NEmxdOnvc5gObsEnj6y6d0jkII0Dg7wA7B
         c8EQ==
X-Gm-Message-State: AOJu0Yzm9AHYRqt8vAXMe+cjV8SeRsQTOSj+v0PEKtz5HwZdBmL/LsSR
	bMZgMsxUIMR+g8miEZWd+W4PjIBEFqlV2FK5X5p7m94MzJ308kLq
X-Google-Smtp-Source: AGHT+IHcgAAaawhL3QkwneZXVTNNWakoOZmKpJSsRjjfrb+mkWo/UtzZ5ZLbK6eEbleSH6YwUpbbyQ==
X-Received: by 2002:a50:bb4e:0:b0:57a:2309:c1e1 with SMTP id 4fb4d7f45d1cf-57c509364eemr215509a12.23.1717703111640;
        Thu, 06 Jun 2024 12:45:11 -0700 (PDT)
Received: from localhost.localdomain ([2001:171b:c9a6:e661:d20d:79ad:6944:cc2d])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-57aae1042cfsm1566463a12.46.2024.06.06.12.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 12:45:11 -0700 (PDT)
From: Florian Vaussard <florian.vaussard@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dinh Nguyen <dinguyen@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Florian Vaussard <florian.vaussard@gmail.com>
Subject: [PATCH v2 2/2] ARM: dts: socfpga: Add support for Terasic DE1-SOC board
Date: Thu,  6 Jun 2024 21:44:07 +0200
Message-ID: <20240606194421.1465667-3-florian.vaussard@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240606194421.1465667-1-florian.vaussard@gmail.com>
References: <20240606194421.1465667-1-florian.vaussard@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Compared to Terasic SoCKit, here are some of the notable differences
on the HPS side:
- Only 1 user LED and 1 user KEY
- The QSPI Flash is not populated
- The ADXL345 accelerometer is on I2C0 instead of I2C1

Tested to be working:
- LED / KEY
- Ethernet
- Both USB Host ports
- SD card
- ADXL345 accelerometer

Signed-off-by: Florian Vaussard <florian.vaussard@gmail.com>
---
 arch/arm/boot/dts/intel/socfpga/Makefile      |   1 +
 .../socfpga/socfpga_cyclone5_de1_soc.dts      | 109 ++++++++++++++++++
 2 files changed, 110 insertions(+)
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts

diff --git a/arch/arm/boot/dts/intel/socfpga/Makefile b/arch/arm/boot/dts/intel/socfpga/Makefile
index c467828aeb4b..1d5140b238da 100644
--- a/arch/arm/boot/dts/intel/socfpga/Makefile
+++ b/arch/arm/boot/dts/intel/socfpga/Makefile
@@ -10,6 +10,7 @@ dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += \
 	socfpga_cyclone5_mcvevk.dtb \
 	socfpga_cyclone5_socdk.dtb \
 	socfpga_cyclone5_de0_nano_soc.dtb \
+	socfpga_cyclone5_de1_soc.dtb \
 	socfpga_cyclone5_sockit.dtb \
 	socfpga_cyclone5_socrates.dtb \
 	socfpga_cyclone5_sodia.dtb \
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts
new file mode 100644
index 000000000000..de5a4fe3b0e4
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts
@@ -0,0 +1,109 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2024 Florian Vaussard <florian.vaussard@gmail.com>
+ */
+
+#include "socfpga_cyclone5.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "Terasic DE1-SOC";
+	compatible = "terasic,de1-soc", "altr,socfpga-cyclone5", "altr,socfpga";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x40000000>; /* 1GB */
+	};
+
+	aliases {
+		/*
+		 * this allows the ethaddr uboot environmnet variable content
+		 * to be added to the gmac1 device tree blob.
+		 */
+		ethernet0 = &gmac1;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		hps-led {
+			gpios = <&portb 24 GPIO_ACTIVE_HIGH>;	/* HPS_GPIO53 */
+			function = LED_FUNCTION_HEARTBEAT;
+			color = <LED_COLOR_ID_GREEN>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		hps-key {
+			label = "hps_key";
+			gpios = <&portb 25 GPIO_ACTIVE_LOW>;	/* HPS_GPIO54 */
+			linux,code = <BTN_0>;
+		};
+	};
+
+	reg_3v3_sd: regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+};
+
+&gmac1 {
+	status = "okay";
+	phy-mode = "rgmii";
+
+	rxd0-skew-ps = <0>;
+	rxd1-skew-ps = <0>;
+	rxd2-skew-ps = <0>;
+	rxd3-skew-ps = <0>;
+	txen-skew-ps = <0>;
+	txc-skew-ps = <2600>;
+	rxdv-skew-ps = <0>;
+	rxc-skew-ps = <2000>;
+};
+
+&gpio0 {	/* GPIO 0..29 */
+	status = "okay";
+};
+
+&gpio1 {	/* GPIO 30..57 */
+	status = "okay";
+};
+
+&gpio2 {	/* GPIO 58..66 (HLGPI 0..13 at offset 13) */
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	accel1: accelerometer@53 {
+		compatible = "adi,adxl345";
+		reg = <0x53>;
+
+		interrupt-parent = <&portc>;
+		interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
+	};
+};
+
+&mmc0 {
+	vmmc-supply = <&reg_3v3_sd>;
+	vqmmc-supply = <&reg_3v3_sd>;
+	status = "okay";
+};
+
+&usb1 {
+	status = "okay";
+};
-- 
2.45.1


