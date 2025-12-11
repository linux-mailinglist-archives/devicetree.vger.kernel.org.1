Return-Path: <devicetree+bounces-245763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 506B5CB508C
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 09:05:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7D38E300760F
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 08:05:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0151C21CFFD;
	Thu, 11 Dec 2025 08:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gtaylBmT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473CC18C933
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 08:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765440320; cv=none; b=Cl2Tkajjbvaz4g1pURQvSghiz4zCUzO3raS1P7Rx+9SQ3VsueJgqcD4WfpMnpdfRJZfKT4Yf1iVMuLtgABRQbQ2jC4gF75ibVyVM5mI7wP+km1oQ08i1auiKMJU5yHqTH7EbiAuxHtWkpEL7Zugiw9PUtWt4K+jILPLABk0jzYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765440320; c=relaxed/simple;
	bh=VqgtzzwamOu6X/0inx2Ua5D9EIlDMgYXe5yJS7BIqyw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mrNQh/Eps1FnQJOu5p9kahr4vKCz7q0yEvYx3zV9AHDsL9Tu2+wvKtnkMDiu23KBle1Np5E4iAlW7OdRJEwL+qhEals9r+d3n9rvT0bIdX7t74TMnuSzJIHg/6dOWGfUyiXUOU0C3MYIjIycW8M0qY8ioIQ7HJxggxOGCXAJGxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gtaylBmT; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2956d816c10so9017465ad.1
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 00:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765440318; x=1766045118; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g3rLCxy8arP6w59VperOyYrrxNsr7wHMVWS7dXHm70Y=;
        b=gtaylBmTuLz4mn9n7giwlNoZgi1OIjKzArgjxnWk2RGsawnpQyQ8xS8ZKc74ea/6E7
         bXrNfzISRL/cDP5iExh9AxNNzEijWrF/SSHvVCn8pllaJYdmKSfGgRlnnQU0GzMYD8p5
         USeFQrZUkQ5U2yy4/nAzMS00MY4Hc8q0oTGZruZQgVn2UhKgSER2Sv6TPj19k1Hn5spM
         Uui3GWekW4MhaKCzzdxAnL5wydRhpliPAYcDCyKve5++KNXzxgr0hf5mLOqvIKrUMctL
         D2n9Rz60EfKOdnXvUdfg7V8L3WbeY/NnaWzf1KgTFXZVlFAg5809tb8YA1E9NyF5hZFY
         bqYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765440318; x=1766045118;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g3rLCxy8arP6w59VperOyYrrxNsr7wHMVWS7dXHm70Y=;
        b=sog67lNdge360WbrYYNF08EYnsOMFWtawvXPMpQVKGi/sfDCNy3MsljHJ8YhSKO7PZ
         3Ur8hJ9gy48wGR1MDR5S670Bnpok2WTbBMVTVStJfFP1HXLi02AIrvO8V3j4knadQyOY
         USh2IUeTjrVibp8vR5JFtegFqd0HHWl//n2kM3vkfU3dAEyX/yc0EMdNgeFraKqyF5pl
         zCUh4kJkY95DiCfNeitlsRWTG8wO7zTkgnAm8vHnRz5oPlQp8eJWCsA8vf+0jxPLdR8j
         xz8KbAcBPGETNSU20kpgBT68ENt8M9LAkGWF3W+wGljNM72zFW+Dr/FLp+4Dof8MxBm9
         aVFA==
X-Gm-Message-State: AOJu0YwH+12u8E8mDPL28GmVv8apRynlDbP9VMhdVFYIdkaygmF3Cixw
	yPfs+xaKISk6dMR/KqrbvIXkepAxir8KAspidmWk7ZQYUHvfv6Xzw+2g
X-Gm-Gg: AY/fxX6rifHqHOg49oKbuN14t0+q3GXLZc6AkIhEm85t1WXmSA7NpEsUj+kIWRwa1+e
	qkYMgob5Hx/YeS/xj+8nF3Q4JnJ1ErCOrVJ7ZG4e1WnJ3iCOcsDvOtk9FRfmE5bITTDPFs4RsJ+
	Tt7eAtLQ91L3FwQtKTulxoMebG7i7hEtY1E7sD3eZYG6D49o1Pgc8PaVfddno9XoChYMpKuCycA
	G8mJVmHXmeysL4njXy/i3/1CuhsKqkN3OEzzPuPUJEQMHn00LoPyNjXN83da0XwWZARAch5EswW
	Qin64ialU/imi2imyQ/PtC+BCgrqBAEJckUDcsMmy75EN40lhvTYmiiszpHlx7DwEYJ+i6rwQdd
	XTGBDXHitJmZZj4BVt7KJ7AkRQ9pdQTgUCmfL+Tr3NcGzmyOyJEQNQL3eiamuOkUiJ/zsWcneQU
	91QAms2xE0SRXY6BfLW9FudUFBQbC51sq7MBVn0OvlYHhBByLEKmzJn8mNtSbdWlpJNirtuco2u
	wmIFuXG4Obzj+A=
X-Google-Smtp-Source: AGHT+IFSb6qHiNb7jgJvSvyN5nw2vItlbOK8l/VjqDL3ZuhE2uUid0Tlm0CFY+T/pBTkwDJQrCPzZw==
X-Received: by 2002:a17:903:1666:b0:29e:9c82:a925 with SMTP id d9443c01a7336-29ec22ca944mr62447985ad.6.1765440318499;
        Thu, 11 Dec 2025 00:05:18 -0800 (PST)
Received: from cosmo-ubuntu-2404.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9b373d6sm16118945ad.13.2025.12.11.00.05.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 00:05:18 -0800 (PST)
From: Cosmo Chou <chou.cosmo@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	cosmo.chou@quantatw.com,
	Cosmo Chou <chou.cosmo@gmail.com>
Subject: [PATCH] ARM: dts: aspeed: bletchley: Fix dt-schema warnings
Date: Thu, 11 Dec 2025 16:03:11 +0800
Message-ID: <20251211080311.242771-1-chou.cosmo@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update the device tree to fix dt-schema warnings:
- Use generic node names for SPI, LEDs, and GPIO keys.
- Update SPI GPIO properties to use the "-gpios" suffix.
- Remove unused address/size cells from pca9539 nodes.
- Use 'aspeed,int-vref-microvolt' in ADC nodes.
- Remove unused 'aspeed,hw-timeout-ms' from i2c13.

Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
---
 .../aspeed/aspeed-bmc-facebook-bletchley.dts  | 100 ++++++++++--------
 1 file changed, 54 insertions(+), 46 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
index abdb1562115a..7c27bf6bb51d 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
@@ -34,14 +34,14 @@ iio-hwmon {
 			<&adc1 4>, <&adc1 5>, <&adc1 6>, <&adc1 7>;
 	};
 
-	spi1_gpio: spi1-gpio {
+	spi1_gpio: spi {
 		compatible = "spi-gpio";
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		gpio-sck = <&gpio0 ASPEED_GPIO(Z, 3) GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio0 ASPEED_GPIO(Z, 4) GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpio0 ASPEED_GPIO(Z, 5) GPIO_ACTIVE_HIGH>;
+		sck-gpios = <&gpio0 ASPEED_GPIO(Z, 3) GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio0 ASPEED_GPIO(Z, 4) GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpio0 ASPEED_GPIO(Z, 5) GPIO_ACTIVE_HIGH>;
 		num-chipselects = <1>;
 		cs-gpios = <&gpio0 ASPEED_GPIO(Z, 0) GPIO_ACTIVE_LOW>;
 
@@ -54,7 +54,8 @@ tpm@0 {
 
 	front_gpio_leds {
 		compatible = "gpio-leds";
-		sys_log_id {
+		led-0 {
+			label = "sys_log_id";
 			default-state = "off";
 			gpios = <&front_leds 0 GPIO_ACTIVE_LOW>;
 		};
@@ -62,42 +63,50 @@ sys_log_id {
 
 	fan_gpio_leds {
 		compatible = "gpio-leds";
-		fan0_blue {
+		led-0 {
+			label = "fan0_blue";
 			retain-state-shutdown;
 			default-state = "on";
 			gpios = <&fan_leds 8 GPIO_ACTIVE_HIGH>;
 		};
-		fan1_blue {
+		led-1 {
+			label = "fan1_blue";
 			retain-state-shutdown;
 			default-state = "on";
 			gpios = <&fan_leds 9 GPIO_ACTIVE_HIGH>;
 		};
-		fan2_blue {
+		led-2 {
+			label = "fan2_blue";
 			retain-state-shutdown;
 			default-state = "on";
 			gpios = <&fan_leds 10 GPIO_ACTIVE_HIGH>;
 		};
-		fan3_blue {
+		led-3 {
+			label = "fan3_blue";
 			retain-state-shutdown;
 			default-state = "on";
 			gpios = <&fan_leds 11 GPIO_ACTIVE_HIGH>;
 		};
-		fan0_amber {
+		led-4 {
+			label = "fan0_amber";
 			retain-state-shutdown;
 			default-state = "off";
 			gpios = <&fan_leds 12 GPIO_ACTIVE_HIGH>;
 		};
-		fan1_amber {
+		led-5 {
+			label = "fan1_amber";
 			retain-state-shutdown;
 			default-state = "off";
 			gpios = <&fan_leds 13 GPIO_ACTIVE_HIGH>;
 		};
-		fan2_amber {
+		led-6 {
+			label = "fan2_amber";
 			retain-state-shutdown;
 			default-state = "off";
 			gpios = <&fan_leds 14 GPIO_ACTIVE_HIGH>;
 		};
-		fan3_amber {
+		led-7 {
+			label = "fan3_amber";
 			retain-state-shutdown;
 			default-state = "off";
 			gpios = <&fan_leds 15 GPIO_ACTIVE_HIGH>;
@@ -106,12 +115,14 @@ fan3_amber {
 
 	sled1_gpio_leds {
 		compatible = "gpio-leds";
-		sled1_amber {
+		led-0 {
+			label = "sled1_amber";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled1_leds 0 GPIO_ACTIVE_LOW>;
 		};
-		sled1_blue {
+		led-1 {
+			label = "sled1_blue";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled1_leds 1 GPIO_ACTIVE_LOW>;
@@ -120,12 +131,14 @@ sled1_blue {
 
 	sled2_gpio_leds {
 		compatible = "gpio-leds";
-		sled2_amber {
+		led-0 {
+			label = "sled2_amber";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled2_leds 0 GPIO_ACTIVE_LOW>;
 		};
-		sled2_blue {
+		led-1 {
+			label = "sled2_blue";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled2_leds 1 GPIO_ACTIVE_LOW>;
@@ -134,12 +147,14 @@ sled2_blue {
 
 	sled3_gpio_leds {
 		compatible = "gpio-leds";
-		sled3_amber {
+		led-0 {
+			label = "sled3_amber";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled3_leds 0 GPIO_ACTIVE_LOW>;
 		};
-		sled3_blue {
+		led-1 {
+			label = "sled3_blue";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled3_leds 1 GPIO_ACTIVE_LOW>;
@@ -148,12 +163,14 @@ sled3_blue {
 
 	sled4_gpio_leds {
 		compatible = "gpio-leds";
-		sled4_amber {
+		led-0 {
+			label = "sled4_amber";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled4_leds 0 GPIO_ACTIVE_LOW>;
 		};
-		sled4_blue {
+		led-1 {
+			label = "sled4_blue";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled4_leds 1 GPIO_ACTIVE_LOW>;
@@ -162,12 +179,14 @@ sled4_blue {
 
 	sled5_gpio_leds {
 		compatible = "gpio-leds";
-		sled5_amber {
+		led-0 {
+			label = "sled5_amber";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled5_leds 0 GPIO_ACTIVE_LOW>;
 		};
-		sled5_blue {
+		led-1 {
+			label = "sled5_blue";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled5_leds 1 GPIO_ACTIVE_LOW>;
@@ -176,12 +195,14 @@ sled5_blue {
 
 	sled6_gpio_leds {
 		compatible = "gpio-leds";
-		sled6_amber {
+		led-0 {
+			label = "sled6_amber";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled6_leds 0 GPIO_ACTIVE_LOW>;
 		};
-		sled6_blue {
+		led-1 {
+			label = "sled6_blue";
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&sled6_leds 1 GPIO_ACTIVE_LOW>;
@@ -191,32 +212,32 @@ sled6_blue {
 	gpio-keys {
 		compatible = "gpio-keys";
 
-		presence-sled1 {
+		presence-sled1-switch {
 			label = "presence-sled1";
 			gpios = <&gpio0 ASPEED_GPIO(H, 2) GPIO_ACTIVE_LOW>;
 			linux,code = <ASPEED_GPIO(H, 2)>;
 		};
-		presence-sled2 {
+		presence-sled2-switch {
 			label = "presence-sled2";
 			gpios = <&gpio0 ASPEED_GPIO(H, 3) GPIO_ACTIVE_LOW>;
 			linux,code = <ASPEED_GPIO(H, 3)>;
 		};
-		presence-sled3 {
+		presence-sled3-switch {
 			label = "presence-sled3";
 			gpios = <&gpio0 ASPEED_GPIO(H, 4) GPIO_ACTIVE_LOW>;
 			linux,code = <ASPEED_GPIO(H, 4)>;
 		};
-		presence-sled4 {
+		presence-sled4-switch {
 			label = "presence-sled4";
 			gpios = <&gpio0 ASPEED_GPIO(H, 5) GPIO_ACTIVE_LOW>;
 			linux,code = <ASPEED_GPIO(H, 5)>;
 		};
-		presence-sled5 {
+		presence-sled5-switch {
 			label = "presence-sled5";
 			gpios = <&gpio0 ASPEED_GPIO(H, 6) GPIO_ACTIVE_LOW>;
 			linux,code = <ASPEED_GPIO(H, 6)>;
 		};
-		presence-sled6 {
+		presence-sled6-switch {
 			label = "presence-sled6";
 			gpios = <&gpio0 ASPEED_GPIO(H, 7) GPIO_ACTIVE_LOW>;
 			linux,code = <ASPEED_GPIO(H, 7)>;
@@ -352,8 +373,6 @@ sled1_ioexp41: pca9536@41 {
 	sled1_ioexp: pca9539@76 {
 		compatible = "nxp,pca9539";
 		reg = <0x76>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -441,8 +460,6 @@ sled2_ioexp41: pca9536@41 {
 	sled2_ioexp: pca9539@76 {
 		compatible = "nxp,pca9539";
 		reg = <0x76>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -530,8 +547,6 @@ sled3_ioexp41: pca9536@41 {
 	sled3_ioexp: pca9539@76 {
 		compatible = "nxp,pca9539";
 		reg = <0x76>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -619,8 +634,6 @@ sled4_ioexp41: pca9536@41 {
 	sled4_ioexp: pca9539@76 {
 		compatible = "nxp,pca9539";
 		reg = <0x76>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -708,8 +721,6 @@ sled5_ioexp41: pca9536@41 {
 	sled5_ioexp: pca9539@76 {
 		compatible = "nxp,pca9539";
 		reg = <0x76>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -797,8 +808,6 @@ sled6_ioexp41: pca9536@41 {
 	sled6_ioexp: pca9539@76 {
 		compatible = "nxp,pca9539";
 		reg = <0x76>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -953,7 +962,6 @@ fan_leds: pca9552@67 {
 
 &i2c13 {
 	multi-master;
-	aspeed,hw-timeout-ms = <1000>;
 	status = "okay";
 
 	//USB Debug Connector
@@ -1024,7 +1032,7 @@ &gpio0 {
 };
 
 &adc0 {
-	vref = <1800>;
+	aspeed,int-vref-microvolt = <2500000>;
 	status = "okay";
 
 	pinctrl-names = "default";
@@ -1035,7 +1043,7 @@ &pinctrl_adc4_default &pinctrl_adc5_default
 };
 
 &adc1 {
-	vref = <2500>;
+	aspeed,int-vref-microvolt = <2500000>;
 	status = "okay";
 
 	pinctrl-names = "default";
-- 
2.43.0


