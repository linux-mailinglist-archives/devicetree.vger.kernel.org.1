Return-Path: <devicetree+bounces-34418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D68839AF6
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 22:21:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E91D11C26AC5
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 21:21:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D88236B04;
	Tue, 23 Jan 2024 21:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BUmKv755"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96A742C1BC
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 21:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706044881; cv=none; b=fhm95rbQOpBPqVYhlU+utvFmNSyh5F5FJ0Luf03wucCnx62B7F8n29Hv46n/UsBzZYAkJ8xMaE+/n5g90hubnpxtmypmJKO9E8oQu+7ckg5T/9uHjzxlK/hejdoYKDBIjwS7LqmfTjrBaQrWnTT40rExh9tCrto5UDl8hqelkps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706044881; c=relaxed/simple;
	bh=bLbHblfklv6DyfX+wEHJLDoaFQApt56Czv0huwiAQ40=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BcXeEXVgeQOcmS8+FkEbYJEDOj9PDUHwyJCIrftseFL1aUF6P0OhItoCMv/Gfc4swV8zd8qoo5ZzOUOJ15sG3t3WVMCNS5EwxpSnHitbls96Hj9JmQHOVldPr+K1xN12xvMMtN3nXBH8Pd0C8NxAB3Z5sCrisxlxvL8D+8KPiQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BUmKv755; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-214917ed35aso483810fac.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 13:21:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706044878; x=1706649678; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=atdXaQZCw8Ctbj/HWpcWiAsjfznuoi7ii5HEQI3brC4=;
        b=BUmKv755MxQanlwSAsmQm7aKMRjZM6zcE1sXgLzfmg2U1qFW/4VCgpk8Xi/K8OQbqD
         hdNhCn8N+xuJZUjboulgc+g7l5qAnAKwexAy5oDte/NNFrxan5BOffWbKOxAHK9ftSCV
         h6POxs3H3NTipy7c1LStD9/lXvgluNDxQ6BJBgvCENiGbpxyDvivA1OFTYUbk9trKPxQ
         0C6XUcgVHzKbnO+GGZ+kARMLFZ0li4F4Qd1sqoAouZdIW8SESuld5OCkvibsCz6enH8v
         RjqtDYUSSA+AyZIwLmYs+231AiN0Wzh89feCAgGwH2nXZJBgpyMswCPbs7MYli/EQ91q
         Wubg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706044878; x=1706649678;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=atdXaQZCw8Ctbj/HWpcWiAsjfznuoi7ii5HEQI3brC4=;
        b=AdfFdFIDPc8h7A+a9SS/jff22g9UpvBNTGMmD7r/QcDWRpJ7zKOi4NPIL09fHIN8nv
         fQLDNOvrGAvzzHvO8Z0PlE/IAa6vYIubkOQpFClnxuDSkqdG1YRdfALoQv0dGsY4aznB
         547McvOW5O9wOfdEBpd8n2q+QUHMuZzUIwM5QVkd25RRkKtRHGtTw/Tn9cXQbSYhbsKg
         QK02YDT4fCLCm0IYnQM64Ox0Rdda6H1EI98x5jhmzWlEebv/JLUZ8Jtgkv71m6VI4rDl
         8o0ov06hW/M2JPUCFvf5eOFCkRPfGhXDJGXTi2K0IiN6Ovm/2AaeGg9nVV/IEpB4WTsm
         bOwA==
X-Gm-Message-State: AOJu0YwwPJGdA867HQyrB5T+EnBOt9tgVYF4H36KH/XUUuCdKtbYPn8Q
	yh2v4dAyrNA0uzaWMVrH1Ua6XRSDcQJYFCTqUckJSmh/Q+PwzuPp
X-Google-Smtp-Source: AGHT+IEuyIETcjdu3Kp6BJQc8aH1nwWNGAOF/jiKDUyXWKMQQLrHpX1zXf2tWflzeubfSv5BiXQ3dQ==
X-Received: by 2002:a05:6871:798f:b0:214:831a:76e7 with SMTP id pb15-20020a056871798f00b00214831a76e7mr2056177oac.81.1706044878445;
        Tue, 23 Jan 2024 13:21:18 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id w2-20020a9d4502000000b006dc6e40ba97sm2265770ote.72.2024.01.23.13.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 13:21:18 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/4] arm64: dts: rockchip: Move device specific properties
Date: Tue, 23 Jan 2024 15:21:08 -0600
Message-Id: <20240123212111.202146-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240123212111.202146-1-macroalpha82@gmail.com>
References: <20240123212111.202146-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Move device specific properties related to the ADC Joystick to
different board specific device trees. This is in preparation for
adding the Anbernic RG-Arc series of devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg353x.dtsi  | 74 +++++++++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    | 74 +++++++++++++++++++
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 74 -------------------
 3 files changed, 148 insertions(+), 74 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
index 2a2821f4c580..63a18ff36cea 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
@@ -8,11 +8,73 @@
 #include "rk3566-anbernic-rgxx3.dtsi"
 
 / {
+	adc-joystick {
+		compatible = "adc-joystick";
+		io-channels = <&adc_mux 0>,
+			      <&adc_mux 1>,
+			      <&adc_mux 2>,
+			      <&adc_mux 3>;
+		pinctrl-0 = <&joy_mux_en>;
+		pinctrl-names = "default";
+		poll-interval = <60>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		axis@0 {
+			reg = <0>;
+			abs-flat = <32>;
+			abs-fuzz = <32>;
+			abs-range = <1023 15>;
+			linux,code = <ABS_X>;
+		};
+
+		axis@1 {
+			reg = <1>;
+			abs-flat = <32>;
+			abs-fuzz = <32>;
+			abs-range = <15 1023>;
+			linux,code = <ABS_RX>;
+		};
+
+		axis@2 {
+			reg = <2>;
+			abs-flat = <32>;
+			abs-fuzz = <32>;
+			abs-range = <15 1023>;
+			linux,code = <ABS_Y>;
+		};
+
+		axis@3 {
+			reg = <3>;
+			abs-flat = <32>;
+			abs-fuzz = <32>;
+			abs-range = <1023 15>;
+			linux,code = <ABS_RY>;
+		};
+	};
+
+	adc_mux: adc-mux {
+		compatible = "io-channel-mux";
+		channels = "left_x", "right_x", "left_y", "right_y";
+		#io-channel-cells = <1>;
+		io-channels = <&saradc 3>;
+		io-channel-names = "parent";
+		mux-controls = <&gpio_mux>;
+		settle-time-us = <100>;
+	};
+
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		power-supply = <&vcc_sys>;
 		pwms = <&pwm4 0 25000 0>;
 	};
+
+	gpio_mux: mux-controller {
+		compatible = "gpio-mux";
+		mux-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>,
+			    <&gpio0 RK_PB7 GPIO_ACTIVE_LOW>;
+		#mux-control-cells = <0>;
+	};
 };
 
 &cru {
@@ -83,6 +145,18 @@ button-right {
 		linux,code = <BTN_DPAD_RIGHT>;
 	};
 
+	button-thumbl {
+		gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_LOW>;
+		label = "THUMBL";
+		linux,code = <BTN_THUMBL>;
+	};
+
+	button-thumbr {
+		gpios = <&gpio3 RK_PA2 GPIO_ACTIVE_LOW>;
+		label = "THUMBR";
+		linux,code = <BTN_THUMBR>;
+	};
+
 	button-y {
 		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
 		label = "WEST";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index c763c7f3b1b3..94e6dd61a2db 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -17,6 +17,61 @@ aliases {
 		mmc2 = &sdmmc2;
 	};
 
+	adc-joystick {
+		compatible = "adc-joystick";
+		io-channels = <&adc_mux 0>,
+			      <&adc_mux 1>,
+			      <&adc_mux 2>,
+			      <&adc_mux 3>;
+		pinctrl-0 = <&joy_mux_en>;
+		pinctrl-names = "default";
+		poll-interval = <60>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		axis@0 {
+			reg = <0>;
+			abs-flat = <32>;
+			abs-fuzz = <32>;
+			abs-range = <1023 15>;
+			linux,code = <ABS_X>;
+		};
+
+		axis@1 {
+			reg = <1>;
+			abs-flat = <32>;
+			abs-fuzz = <32>;
+			abs-range = <15 1023>;
+			linux,code = <ABS_RX>;
+		};
+
+		axis@2 {
+			reg = <2>;
+			abs-flat = <32>;
+			abs-fuzz = <32>;
+			abs-range = <15 1023>;
+			linux,code = <ABS_Y>;
+		};
+
+		axis@3 {
+			reg = <3>;
+			abs-flat = <32>;
+			abs-fuzz = <32>;
+			abs-range = <1023 15>;
+			linux,code = <ABS_RY>;
+		};
+	};
+
+	adc_mux: adc-mux {
+		compatible = "io-channel-mux";
+		channels = "left_x", "right_x", "left_y", "right_y";
+		#io-channel-cells = <1>;
+		io-channels = <&saradc 3>;
+		io-channel-names = "parent";
+		mux-controls = <&gpio_mux>;
+		settle-time-us = <100>;
+	};
+
 	battery: battery {
 		compatible = "simple-battery";
 		charge-full-design-microamp-hours = <3472000>;
@@ -36,6 +91,13 @@ battery: battery {
 					<3400000 0>;
 	};
 
+	gpio_mux: mux-controller {
+		compatible = "gpio-mux";
+		mux-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>,
+			    <&gpio0 RK_PB7 GPIO_ACTIVE_LOW>;
+		#mux-control-cells = <0>;
+	};
+
 	gpio_spi: spi {
 		compatible = "spi-gpio";
 		pinctrl-names = "default";
@@ -174,6 +236,18 @@ button-right {
 		linux,code = <BTN_DPAD_RIGHT>;
 	};
 
+	button-thumbl {
+		gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_LOW>;
+		label = "THUMBL";
+		linux,code = <BTN_THUMBL>;
+	};
+
+	button-thumbr {
+		gpios = <&gpio3 RK_PA2 GPIO_ACTIVE_LOW>;
+		label = "THUMBR";
+		linux,code = <BTN_THUMBR>;
+	};
+
 	button-y {
 		gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
 		label = "WEST";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 8cbf3d9a4f22..18b8c2e7befa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -14,51 +14,6 @@ chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
-	adc-joystick {
-		compatible = "adc-joystick";
-		io-channels = <&adc_mux 0>,
-			      <&adc_mux 1>,
-			      <&adc_mux 2>,
-			      <&adc_mux 3>;
-		pinctrl-0 = <&joy_mux_en>;
-		pinctrl-names = "default";
-		poll-interval = <60>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		axis@0 {
-			reg = <0>;
-			abs-flat = <32>;
-			abs-fuzz = <32>;
-			abs-range = <1023 15>;
-			linux,code = <ABS_X>;
-		};
-
-		axis@1 {
-			reg = <1>;
-			abs-flat = <32>;
-			abs-fuzz = <32>;
-			abs-range = <15 1023>;
-			linux,code = <ABS_RX>;
-		};
-
-		axis@2 {
-			reg = <2>;
-			abs-flat = <32>;
-			abs-fuzz = <32>;
-			abs-range = <15 1023>;
-			linux,code = <ABS_Y>;
-		};
-
-		axis@3 {
-			reg = <3>;
-			abs-flat = <32>;
-			abs-fuzz = <32>;
-			abs-range = <1023 15>;
-			linux,code = <ABS_RY>;
-		};
-	};
-
 	adc_keys: adc-keys {
 		compatible = "adc-keys";
 		io-channels = <&saradc 0>;
@@ -77,16 +32,6 @@ button-mode {
 		};
 	};
 
-	adc_mux: adc-mux {
-		compatible = "io-channel-mux";
-		channels = "left_x", "right_x", "left_y", "right_y";
-		#io-channel-cells = <1>;
-		io-channels = <&saradc 3>;
-		io-channel-names = "parent";
-		mux-controls = <&gpio_mux>;
-		settle-time-us = <100>;
-	};
-
 	gpio_keys_control: gpio-keys-control {
 		compatible = "gpio-keys";
 		pinctrl-0 = <&btn_pins_ctrl>;
@@ -128,18 +73,6 @@ button-start {
 			linux,code = <BTN_START>;
 		};
 
-		button-thumbl {
-			gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_LOW>;
-			label = "THUMBL";
-			linux,code = <BTN_THUMBL>;
-		};
-
-		button-thumbr {
-			gpios = <&gpio3 RK_PA2 GPIO_ACTIVE_LOW>;
-			label = "THUMBR";
-			linux,code = <BTN_THUMBR>;
-		};
-
 		button-up {
 			gpios = <&gpio3 RK_PA3 GPIO_ACTIVE_LOW>;
 			label = "DPAD-UP";
@@ -172,13 +105,6 @@ button-vol-up {
 		};
 	};
 
-	gpio_mux: mux-controller {
-		compatible = "gpio-mux";
-		mux-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>,
-			    <&gpio0 RK_PB7 GPIO_ACTIVE_LOW>;
-		#mux-control-cells = <0>;
-	};
-
 	hdmi-con {
 		compatible = "hdmi-connector";
 		ddc-i2c-bus = <&i2c5>;
-- 
2.34.1


