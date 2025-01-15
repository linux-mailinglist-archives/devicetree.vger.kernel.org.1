Return-Path: <devicetree+bounces-138770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9985AA1227A
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 12:23:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB6383ADF86
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 11:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB522063C3;
	Wed, 15 Jan 2025 11:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kr7ggO2C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F031E9910
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 11:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736940174; cv=none; b=hJUcoAEu6P5F+u0/kvy/q6+0dHmd3A9McRvP7A2xbGERY2D5kkDe/YzkgxpOFB3yZ40wFNucaUbsL3d/CM8kBBfxIHif1uKs5I4edOv0TWDXyxS8crjf2DErBG0icG+zO+tx2OwSzwzoR9Zl2iZEnaEJ3VT2cLor2+fOqenVnCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736940174; c=relaxed/simple;
	bh=3MkPbMRjbZyxzB/siZaUWRTDY2oMNQCHO5lKCav+eRs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RdEw6pbS7BTc9tzUL0yFMENrEbD9BB61dnO2DnWJ+mX92l/LGFOvTo8CCaV3SuBCTHjyaUKrfVZcIT/SIgrB8fS2uWwDGi5/ViXfCByo7G1h03g7TkFyReRrWUIhGKfRXVxdxEBdq1bEwDfRuZOvzHh8CalwLWyD9Mt87JwNfAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jms.id.au; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kr7ggO2C; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jms.id.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2165cb60719so117954715ad.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 03:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736940171; x=1737544971; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Zo63X4b2n6p23OwJQ1JnY9oZ9Wn9evh647WwH/Y0K94=;
        b=Kr7ggO2CuUeFXynEXJiNCms5FncFthm85IHVXtz2Ul0uT8mmNo8NlWPsv7psK56NPK
         S2nzA99lQuab7QpHfQ0hdIS6wkMHpq6ncvlDCwC3FzQ9/K7P26b3/3QzazM978Eo0xHQ
         YAZgiqUEKJ1CbXuE+p0wP4HOlOTtTscZf5o/793qUjzjb9SAKBwPLO1ucWmKJdwTTxC+
         fjSf+qEVv+uKkSuoaMkY8fF4uvWFRVOojQenqNQcghhY/yQt0uoh2C6l25zdaC+rvE2g
         EFIlUTaxpWoBi4i2UMrROq2WeaA+TesBA/8qK41yMUVKP8L90VSzASDP2HGiNT0YIka9
         AetQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736940171; x=1737544971;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zo63X4b2n6p23OwJQ1JnY9oZ9Wn9evh647WwH/Y0K94=;
        b=LiY7cjTNNrCGqbB8GfJusX/fk4G7jdgStoCpV+XxFaH8iVqQTUNonciCNBDZOYGzHa
         3Cff5iUF5B0fNFAjOv9kWdfAjp0zZ6wwcjZ/EMpfvYArl8FPlOARRfPdI41fvBxAsFWA
         3kmDTpsxdCWrgtwnhDMUHlWGC/Aqqj8Db9XQYUJuVdVOqyVpgif6lGqsc/j+9YNjJ1nc
         NfRjkhSJmP7wINHodCP32hdjjDRQz88wPpuEo6LQumex2JF7ZZjcH8q8iFgSPAr8yOoW
         VdCvSAYOKs+lsXSWRiOOb1v12l4WLr3AuWfZghoXGrluiIs9JOUiEGgpJPyzkMXBB6Xs
         3dJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVc7mIbc2rPWZkSI8pkCe9n68xLj+dJpasMwhEhwsBaqrJAHrJiJFru62dXqFezWJAnKDeXtAlBYe45@vger.kernel.org
X-Gm-Message-State: AOJu0YyjoUVL9BVidCImgM6bFMX2+iXuLipAt46TuValtAJNobqly43F
	UBZ4D9VcsuVlTUqAdgfPuwqHu0kXefOQhBNZlyV8RHBMAlDnjDMN
X-Gm-Gg: ASbGncvEuLXC5k6fKvrBUPAKbTqdOeVKjmiqSjJaXGWlg4IVZuvU6h+H9ZBJPs8BocI
	2wwRU17Ia/tehTZeiffXAaHowbBMbyC0LfD1H0gi+R4nPzuuR7NIIsyt+FEQgLl+sKfwE4kgUk7
	u/arfbLBUIxsNfBrBjgYWwtH8hzUUe2P03sXvnqCEqvr1aBHu+gyy3fr0oInaP4yuiK4ORFdJ3H
	T8jhkLmTfmQ+SIvEWKzZ+tkbS2FWmsYK7dxnqun3hVmKfILzMXw
X-Google-Smtp-Source: AGHT+IEqSWTyEAvhn4NfhqEKLFHJGZYS2WAPJVQyXKuKqmPW3WItXYzuAtZ8poCQD+q257oCT7R+XA==
X-Received: by 2002:a17:902:ea08:b0:215:9894:5679 with SMTP id d9443c01a7336-21a83da498emr452270265ad.0.1736940171409;
        Wed, 15 Jan 2025 03:22:51 -0800 (PST)
Received: from prometheus.lan ([45.124.203.18])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f111b82sm80243675ad.35.2025.01.15.03.22.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 03:22:50 -0800 (PST)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From: Joel Stanley <joel@jms.id.au>
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	Andrew Geissler <geissonator@yahoo.com>
Subject: [PATCH] ARM: dts: aspeed: Remove swift machine
Date: Wed, 15 Jan 2025 21:52:38 +1030
Message-ID: <20250115112239.430636-1-joel@jms.id.au>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This machine is no longer in use, and support was deleted from openbmc
in March 2022.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed/Makefile             |   1 -
 .../boot/dts/aspeed/aspeed-bmc-opp-swift.dts  | 974 ------------------
 2 files changed, 975 deletions(-)
 delete mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-opp-swift.dts

diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspeed/Makefile
index 2e5f4833a073..456da4b6fc9b 100644
--- a/arch/arm/boot/dts/aspeed/Makefile
+++ b/arch/arm/boot/dts/aspeed/Makefile
@@ -55,7 +55,6 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-bmc-opp-nicole.dtb \
 	aspeed-bmc-opp-palmetto.dtb \
 	aspeed-bmc-opp-romulus.dtb \
-	aspeed-bmc-opp-swift.dtb \
 	aspeed-bmc-opp-tacoma.dtb \
 	aspeed-bmc-opp-vesnin.dtb \
 	aspeed-bmc-opp-witherspoon.dtb \
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-opp-swift.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-opp-swift.dts
deleted file mode 100644
index a0e8c97e944a..000000000000
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-opp-swift.dts
+++ /dev/null
@@ -1,974 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-/dts-v1/;
-#include "aspeed-g5.dtsi"
-#include <dt-bindings/gpio/aspeed-gpio.h>
-#include <dt-bindings/leds/leds-pca955x.h>
-
-/ {
-	model = "Swift BMC";
-	compatible = "ibm,swift-bmc", "aspeed,ast2500";
-
-	chosen {
-		stdout-path = &uart5;
-		bootargs = "console=ttyS4,115200 earlycon";
-	};
-
-	memory@80000000 {
-		reg = <0x80000000 0x20000000>;
-	};
-
-	reserved-memory {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		flash_memory: region@98000000 {
-			no-map;
-			reg = <0x98000000 0x04000000>; /* 64M */
-		};
-
-		gfx_memory: framebuffer {
-			size = <0x01000000>;
-			alignment = <0x01000000>;
-			compatible = "shared-dma-pool";
-			reusable;
-		};
-	};
-
-	gpio-keys {
-		compatible = "gpio-keys";
-
-		event-air-water {
-			label = "air-water";
-			gpios = <&gpio ASPEED_GPIO(B, 5) GPIO_ACTIVE_LOW>;
-			linux,code = <ASPEED_GPIO(B, 5)>;
-		};
-
-		event-checkstop {
-			label = "checkstop";
-			gpios = <&gpio ASPEED_GPIO(J, 2) GPIO_ACTIVE_LOW>;
-			linux,code = <ASPEED_GPIO(J, 2)>;
-		};
-
-		event-ps0-presence {
-			label = "ps0-presence";
-			gpios = <&gpio ASPEED_GPIO(R, 7) GPIO_ACTIVE_LOW>;
-			linux,code = <ASPEED_GPIO(R, 7)>;
-		};
-
-		event-ps1-presence {
-			label = "ps1-presence";
-			gpios = <&gpio ASPEED_GPIO(N, 0) GPIO_ACTIVE_LOW>;
-			linux,code = <ASPEED_GPIO(N, 0)>;
-		};
-
-		event-oppanel-presence {
-			label = "oppanel-presence";
-			gpios = <&gpio ASPEED_GPIO(A, 7) GPIO_ACTIVE_LOW>;
-			linux,code = <ASPEED_GPIO(A, 7)>;
-		};
-
-		event-opencapi-riser-presence {
-			label = "opencapi-riser-presence";
-			gpios = <&gpio ASPEED_GPIO(I, 0) GPIO_ACTIVE_LOW>;
-			linux,code = <ASPEED_GPIO(I, 0)>;
-		};
-	};
-
-	iio-hwmon-battery {
-		compatible = "iio-hwmon";
-		io-channels = <&adc 12>;
-	};
-
-	gpio-keys-polled {
-		compatible = "gpio-keys-polled";
-		poll-interval = <1000>;
-
-		event-scm0-presence {
-			label = "scm0-presence";
-			gpios = <&pca9552 6 GPIO_ACTIVE_LOW>;
-			linux,code = <6>;
-		};
-
-		event-scm1-presence {
-			label = "scm1-presence";
-			gpios = <&pca9552 7 GPIO_ACTIVE_LOW>;
-			linux,code = <7>;
-		};
-
-		event-cpu0vrm-presence {
-			label = "cpu0vrm-presence";
-			gpios = <&pca9552 12 GPIO_ACTIVE_LOW>;
-			linux,code = <12>;
-		};
-
-		event-cpu1vrm-presence {
-			label = "cpu1vrm-presence";
-			gpios = <&pca9552 13 GPIO_ACTIVE_LOW>;
-			linux,code = <13>;
-		};
-
-		event-fan0-presence {
-			label = "fan0-presence";
-			gpios = <&pca0 5 GPIO_ACTIVE_LOW>;
-			linux,code = <5>;
-		};
-
-		event-fan1-presence {
-			label = "fan1-presence";
-			gpios = <&pca0 6 GPIO_ACTIVE_LOW>;
-			linux,code = <6>;
-		};
-
-		event-fan2-presence {
-			label = "fan2-presence";
-			gpios = <&pca0 7 GPIO_ACTIVE_LOW>;
-			linux,code = <7>;
-		};
-
-		event-fan3-presence {
-			label = "fan3-presence";
-			gpios = <&pca0 8 GPIO_ACTIVE_LOW>;
-			linux,code = <8>;
-		};
-
-		event-fanboost-presence {
-			label = "fanboost-presence";
-			gpios = <&pca0 9 GPIO_ACTIVE_LOW>;
-			linux,code = <9>;
-		};
-	};
-
-	leds {
-		compatible = "gpio-leds";
-
-		fan0 {
-			retain-state-shutdown;
-			default-state = "keep";
-			gpios = <&pca0 0 GPIO_ACTIVE_LOW>;
-		};
-
-		fan1 {
-			retain-state-shutdown;
-			default-state = "keep";
-			gpios = <&pca0 1 GPIO_ACTIVE_LOW>;
-		};
-
-		fan2 {
-			retain-state-shutdown;
-			default-state = "keep";
-			gpios = <&pca0 2 GPIO_ACTIVE_LOW>;
-		};
-
-		fan3 {
-			retain-state-shutdown;
-			default-state = "keep";
-			gpios = <&pca0 3 GPIO_ACTIVE_LOW>;
-		};
-
-		fanboost {
-			retain-state-shutdown;
-			default-state = "keep";
-			gpios = <&pca0 4 GPIO_ACTIVE_LOW>;
-		};
-
-		front-fault {
-			retain-state-shutdown;
-			default-state = "keep";
-			gpios = <&pca1 2 GPIO_ACTIVE_LOW>;
-		};
-
-		front-power {
-			retain-state-shutdown;
-			default-state = "keep";
-			gpios = <&pca1 3 GPIO_ACTIVE_LOW>;
-		};
-
-		front-id {
-			retain-state-shutdown;
-			default-state = "keep";
-			gpios = <&pca1 0 GPIO_ACTIVE_LOW>;
-		};
-
-		rear-fault {
-			gpios = <&gpio ASPEED_GPIO(N, 2) GPIO_ACTIVE_LOW>;
-		};
-
-		rear-id {
-			gpios = <&gpio ASPEED_GPIO(N, 4) GPIO_ACTIVE_LOW>;
-		};
-	};
-
-	fsi: gpio-fsi {
-		compatible = "fsi-master-gpio", "fsi-master";
-		#address-cells = <2>;
-		#size-cells = <0>;
-		no-gpio-delays;
-
-		clock-gpios = <&gpio ASPEED_GPIO(P, 1) GPIO_ACTIVE_HIGH>;
-		data-gpios = <&gpio ASPEED_GPIO(P, 2) GPIO_ACTIVE_HIGH>;
-		mux-gpios = <&gpio ASPEED_GPIO(P, 4) GPIO_ACTIVE_HIGH>;
-		enable-gpios = <&gpio ASPEED_GPIO(P, 0) GPIO_ACTIVE_HIGH>;
-		trans-gpios = <&gpio ASPEED_GPIO(P, 3) GPIO_ACTIVE_HIGH>;
-	};
-
-	iio-hwmon-dps310 {
-		compatible = "iio-hwmon";
-		io-channels = <&dps 0>;
-	};
-
-};
-
-&fmc {
-	status = "okay";
-
-	flash@0 {
-		status = "okay";
-		label = "bmc";
-		m25p,fast-read;
-		spi-max-frequency = <100000000>;
-		partitions {
-			#address-cells = < 1 >;
-			#size-cells = < 1 >;
-			compatible = "fixed-partitions";
-			u-boot@0 {
-				reg = < 0 0x60000 >;
-				label = "u-boot";
-			};
-			u-boot-env@60000 {
-				reg = < 0x60000 0x20000 >;
-				label = "u-boot-env";
-			};
-			obmc-ubi@80000 {
-				reg = < 0x80000 0x7F80000>;
-				label = "obmc-ubi";
-			};
-		};
-	};
-
-	flash@1 {
-		status = "okay";
-		label = "alt-bmc";
-		m25p,fast-read;
-		spi-max-frequency = <100000000>;
-		partitions {
-			#address-cells = < 1 >;
-			#size-cells = < 1 >;
-			compatible = "fixed-partitions";
-			u-boot@0 {
-				reg = < 0 0x60000 >;
-				label = "alt-u-boot";
-			};
-			u-boot-env@60000 {
-				reg = < 0x60000 0x20000 >;
-				label = "alt-u-boot-env";
-			};
-			obmc-ubi@80000 {
-				reg = < 0x80000 0x7F80000>;
-				label = "alt-obmc-ubi";
-			};
-		};
-	};
-};
-
-&spi1 {
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_spi1_default>;
-
-	flash@0 {
-		status = "okay";
-		label = "pnor";
-		m25p,fast-read;
-		spi-max-frequency = <100000000>;
-	};
-};
-
-&uart1 {
-	/* Rear RS-232 connector */
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_txd1_default
-			&pinctrl_rxd1_default
-			&pinctrl_nrts1_default
-			&pinctrl_ndtr1_default
-			&pinctrl_ndsr1_default
-			&pinctrl_ncts1_default
-			&pinctrl_ndcd1_default
-			&pinctrl_nri1_default>;
-};
-
-&uart2 {
-	/* APSS */
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_txd2_default &pinctrl_rxd2_default>;
-};
-
-&uart5 {
-	status = "okay";
-};
-
-&lpc_ctrl {
-	status = "okay";
-	memory-region = <&flash_memory>;
-	flash = <&spi1>;
-};
-
-&mac0 {
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_rmii1_default>;
-	use-ncsi;
-	clocks = <&syscon ASPEED_CLK_GATE_MAC1CLK>,
-		 <&syscon ASPEED_CLK_MAC1RCLK>;
-	clock-names = "MACCLK", "RCLK";
-};
-
-&i2c2 {
-	status = "okay";
-
-	/* MUX ->
-	 *    Samtec 1
-	 *    Samtec 2
-	 */
-};
-
-&i2c3 {
-	status = "okay";
-
-	max31785@52 {
-		compatible = "maxim,max31785a";
-		reg = <0x52>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		fan@0 {
-			compatible = "pmbus-fan";
-			reg = <0>;
-			tach-pulses = <2>;
-			maxim,fan-rotor-input = "tach";
-			maxim,fan-pwm-freq = <25000>;
-			maxim,fan-no-watchdog;
-			maxim,fan-no-fault-ramp;
-			maxim,fan-ramp = <2>;
-			maxim,fan-fault-pin-mon;
-		};
-
-		fan@1 {
-			compatible = "pmbus-fan";
-			reg = <1>;
-			tach-pulses = <2>;
-			maxim,fan-rotor-input = "tach";
-			maxim,fan-pwm-freq = <25000>;
-			maxim,fan-no-watchdog;
-			maxim,fan-no-fault-ramp;
-			maxim,fan-ramp = <2>;
-			maxim,fan-fault-pin-mon;
-		};
-
-		fan@2 {
-			compatible = "pmbus-fan";
-			reg = <2>;
-			tach-pulses = <2>;
-			maxim,fan-rotor-input = "tach";
-			maxim,fan-pwm-freq = <25000>;
-			maxim,fan-no-watchdog;
-			maxim,fan-no-fault-ramp;
-			maxim,fan-ramp = <2>;
-			maxim,fan-fault-pin-mon;
-		};
-
-		fan@3 {
-			compatible = "pmbus-fan";
-			reg = <3>;
-			tach-pulses = <2>;
-			maxim,fan-rotor-input = "tach";
-			maxim,fan-pwm-freq = <25000>;
-			maxim,fan-no-watchdog;
-			maxim,fan-no-fault-ramp;
-			maxim,fan-ramp = <2>;
-			maxim,fan-fault-pin-mon;
-		};
-
-		fan@4 {
-			compatible = "pmbus-fan";
-			reg = <4>;
-			tach-pulses = <2>;
-			maxim,fan-rotor-input = "tach";
-			maxim,fan-pwm-freq = <25000>;
-			maxim,fan-no-watchdog;
-			maxim,fan-no-fault-ramp;
-			maxim,fan-ramp = <2>;
-			maxim,fan-fault-pin-mon;
-		};
-	};
-
-	pca0: pca9552@60 {
-		compatible = "nxp,pca9552";
-		reg = <0x60>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		gpio-controller;
-		#gpio-cells = <2>;
-
-		gpio@0 {
-			reg = <0>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@1 {
-			reg = <1>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@2 {
-			reg = <2>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@3 {
-			reg = <3>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@4 {
-			reg = <4>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@5 {
-			reg = <5>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@6 {
-			reg = <6>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@7 {
-			reg = <7>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@8 {
-			reg = <8>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@9 {
-			reg = <9>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@10 {
-			reg = <10>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@11 {
-			reg = <11>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@12 {
-			reg = <12>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@13 {
-			reg = <13>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@14 {
-			reg = <14>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@15 {
-			reg = <15>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-	};
-
-	power-supply@68 {
-		compatible = "ibm,cffps2";
-		reg = <0x68>;
-	};
-
-	eeprom@50 {
-		compatible = "atmel,24c64";
-		reg = <0x50>;
-	};
-
-	power-supply@69 {
-		compatible = "ibm,cffps2";
-		reg = <0x69>;
-	};
-
-	eeprom@51 {
-		compatible = "atmel,24c64";
-		reg = <0x51>;
-	};
-};
-
-&i2c7 {
-	status = "okay";
-
-	dps: dps310@76 {
-		compatible = "infineon,dps310";
-		reg = <0x76>;
-		#io-channel-cells = <0>;
-	};
-
-	tmp275@48 {
-		compatible = "ti,tmp275";
-		reg = <0x48>;
-	};
-
-	si7021a20@20 {
-		compatible = "si,si7021a20";
-		reg = <0x20>;
-	};
-
-	eeprom@50 {
-		compatible = "atmel,24c64";
-		reg = <0x50>;
-	};
-
-	pca1: pca9551@60 {
-		compatible = "nxp,pca9551";
-		reg = <0x60>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		gpio-controller;
-		#gpio-cells = <2>;
-
-		gpio@0 {
-			reg = <0>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@1 {
-			reg = <1>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@2 {
-			reg = <2>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@3 {
-			reg = <3>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@4 {
-			reg = <4>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@5 {
-			reg = <5>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@6 {
-			reg = <6>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@7 {
-			reg = <7>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-	};
-};
-
-&i2c8 {
-	status = "okay";
-
-	pca9552: pca9552@60 {
-		compatible = "nxp,pca9552";
-		reg = <0x60>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		gpio-controller;
-		#gpio-cells = <2>;
-
-		gpio-line-names = "PS_SMBUS_RESET_N", "APSS_RESET_N",
-			"GPU0_TH_OVERT_N_BUFF",	"GPU1_TH_OVERT_N_BUFF",
-			"GPU2_TH_OVERT_N_BUFF", "GPU3_TH_OVERT_N_BUFF",
-			"P9_SCM0_PRES",	"P9_SCM1_PRES",
-			"GPU0_PWR_GOOD_BUFF", "GPU1_PWR_GOOD_BUFF",
-			"GPU2_PWR_GOOD_BUFF", "GPU3_PWR_GOOD_BUFF",
-			"PRESENT_VRM_CP0_N", "PRESENT_VRM_CP1_N",
-			"12V_BREAKER_FLT_N", "THROTTLE_UNLATCHED_N";
-
-		gpio@0 {
-			reg = <0>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@1 {
-			reg = <1>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@2 {
-			reg = <2>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@3 {
-			reg = <3>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@4 {
-			reg = <4>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@5 {
-			reg = <5>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@6 {
-			reg = <6>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@7 {
-			reg = <7>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@8 {
-			reg = <8>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@9 {
-			reg = <9>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@10 {
-			reg = <10>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@11 {
-			reg = <11>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@12 {
-			reg = <12>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@13 {
-			reg = <13>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@14 {
-			reg = <14>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-
-		gpio@15 {
-			reg = <15>;
-			type = <PCA955X_TYPE_GPIO>;
-		};
-	};
-
-	rtc@32 {
-		compatible = "epson,rx8900";
-		reg = <0x32>;
-	};
-
-	eeprom@51 {
-		compatible = "atmel,24c64";
-		reg = <0x51>;
-	};
-
-	ucd90160@64 {
-		compatible = "ti,ucd90160";
-		reg = <0x64>;
-	};
-};
-
-&i2c9 {
-	status = "okay";
-
-	eeprom@50 {
-		compatible = "atmel,24c64";
-		reg = <0x50>;
-	};
-
-	tmp423a@4c {
-		compatible = "ti,tmp423";
-		reg = <0x4c>;
-	};
-
-	ir35221@71 {
-		compatible = "infineon,ir35221";
-		reg = <0x71>;
-	};
-
-	ir35221@72 {
-		compatible = "infineon,ir35221";
-		reg = <0x72>;
-	};
-
-	pca2: pca9539@74 {
-		compatible = "nxp,pca9539";
-		reg = <0x74>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		gpio-controller;
-		#gpio-cells = <2>;
-
-		gpio@0 {
-			reg = <0>;
-		};
-
-		gpio@1 {
-			reg = <1>;
-		};
-
-		gpio@2 {
-			reg = <2>;
-		};
-
-		gpio@3 {
-			reg = <3>;
-		};
-
-		gpio@4 {
-			reg = <4>;
-		};
-
-		gpio@5 {
-			reg = <5>;
-		};
-
-		gpio@6 {
-			reg = <6>;
-		};
-
-		gpio@7 {
-			reg = <7>;
-		};
-
-		gpio@8 {
-			reg = <8>;
-		};
-
-		gpio@9 {
-			reg = <9>;
-		};
-
-		gpio@10 {
-			reg = <10>;
-		};
-
-		gpio@11 {
-			reg = <11>;
-		};
-
-		gpio@12 {
-			reg = <12>;
-		};
-
-		gpio@13 {
-			reg = <13>;
-		};
-
-		gpio@14 {
-			reg = <14>;
-		};
-
-		gpio@15 {
-			reg = <15>;
-		};
-	};
-};
-
-&i2c10 {
-	status = "okay";
-
-	eeprom@50 {
-		compatible = "atmel,24c64";
-		reg = <0x50>;
-	};
-
-	tmp423a@4c {
-		compatible = "ti,tmp423";
-		reg = <0x4c>;
-	};
-
-	ir35221@71 {
-		compatible = "infineon,ir35221";
-		reg = <0x71>;
-	};
-
-	ir35221@72 {
-		compatible = "infineon,ir35221";
-		reg = <0x72>;
-	};
-
-	pca3: pca9539@74 {
-		compatible = "nxp,pca9539";
-		reg = <0x74>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		gpio-controller;
-		#gpio-cells = <2>;
-
-		gpio@0 {
-			reg = <0>;
-		};
-
-		gpio@1 {
-			reg = <1>;
-		};
-
-		gpio@2 {
-			reg = <2>;
-		};
-
-		gpio@3 {
-			reg = <3>;
-		};
-
-		gpio@4 {
-			reg = <4>;
-		};
-
-		gpio@5 {
-			reg = <5>;
-		};
-
-		gpio@6 {
-			reg = <6>;
-		};
-
-		gpio@7 {
-			reg = <7>;
-		};
-
-		gpio@8 {
-			reg = <8>;
-		};
-
-		gpio@9 {
-			reg = <9>;
-		};
-
-		gpio@10 {
-			reg = <10>;
-		};
-
-		gpio@11 {
-			reg = <11>;
-		};
-
-		gpio@12 {
-			reg = <12>;
-		};
-
-		gpio@13 {
-			reg = <13>;
-		};
-
-		gpio@14 {
-			reg = <14>;
-		};
-
-		gpio@15 {
-			reg = <15>;
-		};
-	};
-};
-
-&i2c11 {
-	/* MUX
-	 *   -> PCIe Slot 0
-	 *   -> PCIe Slot 1
-	 *   -> PCIe Slot 2
-	 *   -> PCIe Slot 3
-	 */
-	status = "okay";
-};
-
-&i2c12 {
-	status = "okay";
-
-	tmp275@48 {
-		compatible = "ti,tmp275";
-		reg = <0x48>;
-	};
-
-	tmp275@4a {
-		compatible = "ti,tmp275";
-		reg = <0x4a>;
-	};
-};
-
-&i2c13 {
-	status = "okay";
-};
-
-&vuart {
-	status = "okay";
-};
-
-&gfx {
-	status = "okay";
-	memory-region = <&gfx_memory>;
-};
-
-&wdt1 {
-	aspeed,reset-type = "none";
-	aspeed,external-signal;
-	aspeed,ext-push-pull;
-	aspeed,ext-active-high;
-
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_wdtrst1_default>;
-};
-
-&wdt2 {
-	aspeed,alt-boot;
-};
-
-&ibt {
-	status = "okay";
-};
-
-&adc {
-	status = "okay";
-};
-
-&sdmmc {
-       status = "okay";
-};
-
-&sdhci1 {
-       status = "okay";
-
-       pinctrl-names = "default";
-       pinctrl-0 = <&pinctrl_sd2_default>;
-};
-
-#include "ibm-power9-dual.dtsi"
-- 
2.45.2


