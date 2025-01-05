Return-Path: <devicetree+bounces-135619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1E7A018F5
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 11:02:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C57B91882711
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 10:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B84B91465B3;
	Sun,  5 Jan 2025 10:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cfwi/hWu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E523B1B960;
	Sun,  5 Jan 2025 10:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736071301; cv=none; b=tv8zHTILSIH1noQpmsvAD+JOoVJAgfcHH7ZyL/3Ds6yCw53KJhlH0i6a6qZVR0Yy+h87MhRWhkkOrA59jNYNWHnTLHqqiGWZf5LY0aLUHOQVy5Bgm/4PknqiG3l8OdWxllc3JqIjSTmT66JPVetYV35g9RfU41Ml+bjJ/PaPxQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736071301; c=relaxed/simple;
	bh=TOzgm7ykFZx99M/T5MWZ9haml5H0/lvRzNaLzUUwAdE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sWu10y+HHM7na+/RIVApx82/Ja94/BfHzyUNbYjriEQqkF0frPk/4cRtApCZziM6IpiD1U5nRFw0qtQYsR5SknWPOOJjIYOulOeg0vme++PnnzEOftLRpFi+iKrs7TGW/SNeWI6Tu1VT7M1vFghUwLXpRyaU6cXjagkGUI/HNmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cfwi/hWu; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-54020b0dcd2so15645028e87.1;
        Sun, 05 Jan 2025 02:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736071297; x=1736676097; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UfOdauKrKR/SSYoymzLvf/ItdJTU9f3PP9TuavwwGV8=;
        b=Cfwi/hWuF0hIJSwwhM8slcmBRQbA36+5Eu5r2sktqfhMiNnGQ5Ak+UkjWL9r58+3/2
         IdXT6RdqZqdr8P7hEaEmUvOV4e+oCS3ggTsu+tzCWLFxTXDDML51Low7Ymdr1VOIZBkT
         bWHgFxX8VlwwCXMvQC0ljdRspV5+e4M7MVJgyn5vqOlOT6n+XlYVetx7TfW94AQFa6J4
         t7zpqmUKuLZOoDqfEC/idS9vWQPh1g5RPYDqGr6H2XOfrZ6zydqTbWNjA00hmBAajO4N
         rn/57Q1vBixGmNpRJetsKtm8Xl6hnk41fhOXHTt6TsbX9uBwr+Q1N1azqEKtJ89EL9T4
         Pqjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736071297; x=1736676097;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UfOdauKrKR/SSYoymzLvf/ItdJTU9f3PP9TuavwwGV8=;
        b=Bi1yhVbo7ST9FUeLGL68r02Pf2slnVTW3WpThtTFHJwgtx82hJo7/yI5ESOc3XcHDd
         5B3bv+bBTax15pEq4J/xkF4yDUqMev6cOgcm0DXkFK7Sfr2OqbnAnlv/x3ypuTF3apU0
         K6dWUhnrAex5t5P8FTqaDD4R8kyiKJbEkZpOqwWmFtJOwTHlMH7zi+VIcMN4mKFf/aDy
         L/Ae/VSESm+Lw+2penZeCB5TJQiDH1djA9+F/v7SaMpkp3jW7UvuKTvPWqzlMtWKTjzY
         deTeysonFyE9iJkQZP116NN+IITHR5A1UcR7T3Vbe8SibQPpgaYW0MADgjIjpoiUlHaU
         rCzA==
X-Forwarded-Encrypted: i=1; AJvYcCUet8KPfi8IN5yNpccO6YGVteSHB9fMXv1eu/1JYGaURU4+h81BqLvB0ZlroJhtwSmjYLtW10thg7Xgtio=@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ7L9vzvf+Uv+Vsv8FPm5Isg8eKswgR7JzdJ7w+kyv6FyNjkoY
	ndcv5xGNknbpysHSQeD+H0mY9X8OGsfEK9Z7tBCMIlHehT+qWki8Mkn5Sj0boQ==
X-Gm-Gg: ASbGnctmDO2gjiq16ubc8jS8vFW0CSgA4021YkbLFE8g2WGim0V4tOW58T4l9uEymD3
	IvxjqKb9Wt6jNckpszS2doV82TmoUk51uueIpl404EmybOpZDP1f4PP9KNCAXwje6xHXrcgf0xM
	DksmCMDtpHETyQlrTiPYXOd/QbYcDO28TwASvurMUL/XGc0z2ozWVc+l1RarPfwuIEJ8MPTqqKY
	wQ/YJTf4SkCf6PYlCZ4ktn+HNG5S/LVbvdcn/rrMS5scWJHJPjXyer0guY=
X-Google-Smtp-Source: AGHT+IEslFGnRRAkRLuh/hpF+aOTddSoTt07FiOio1huu+eai6gvUcjzpSHfsyzKIozvbHo6OFuz9g==
X-Received: by 2002:a05:6512:3da7:b0:542:6f23:a95d with SMTP id 2adb3069b0e04-5426f23abb3mr1259418e87.3.1736071296665;
        Sun, 05 Jan 2025 02:01:36 -0800 (PST)
Received: from JetTurbine.homenetwork ([2a0e:e6c0:20d3:2100::1d])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223813806sm4580828e87.114.2025.01.05.02.01.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 02:01:34 -0800 (PST)
From: Ivan Sergeev <ivan8215145640@gmail.com>
Date: Sun, 05 Jan 2025 13:01:29 +0300
Subject: [PATCH v5 2/2] arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250105-bigtreetech-cb2-v5-2-923f911b10c0@gmail.com>
References: <20250105-bigtreetech-cb2-v5-0-923f911b10c0@gmail.com>
In-Reply-To: <20250105-bigtreetech-cb2-v5-0-923f911b10c0@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ivan Sergeev <ivan8215145640@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=23800;
 i=ivan8215145640@gmail.com; h=from:subject:message-id;
 bh=TOzgm7ykFZx99M/T5MWZ9haml5H0/lvRzNaLzUUwAdE=;
 b=owEBbQKS/ZANAwAIAbzfXRlQM5b9AcsmYgBnelh8pwxDGu+n8x3VQ14CS9XOa41akCf6mWtCt
 xtTI5hjoIqJAjMEAAEIAB0WIQROCZtApKFz1fvvsOS8310ZUDOW/QUCZ3pYfAAKCRC8310ZUDOW
 /c+0D/97BQY3ZusQuM/5O30vAD6AtJTIPRVqJcuCgyBRBFZ5HJPKgP8wSd3JJFOPJZShD0HFilU
 qyLzcyqyqht0L7zWTI1kjtNS5cTa9bbwlm4E+ST3Q1B18MZlPtm4x714+oytyf4YUI0GVg8A+3N
 xhCdJ1FZ4TRyBcKUvRUV+60OB/0sf/cFNpbSaqELEckHpOXvJo+VSJyj8xDo9Ndn/WFbfoDMeA0
 vmp1u9+g1EnTHrJ1BequRDX+2gfSh+sKBG/OyijV5ex/X1LNN4zx8YvStz2U7NdgTx2l6uV9HBX
 KpyWTptgNu/8jaX7UOMHYDZiuDOAPueyElwr1cF4RStiYSMzrEesosrH1fxdbhsLZ0KySf52NYf
 DXSpTNNEi7U9db/j2/LNODprhT91mI/2Npo+R9nVcCTR/YntpbwtZl9c6jdDvYUm0jTBvQiKy2G
 lRBxN/sMqGB7oQfEAdekS7FjdXLLeYD2I0uwZRogUjpkXsHWYd7djd1QI6Kpn3CC/WnhHNd8cfA
 K3DXGbYpf/WtdEo0+4Rhf2oFd/ScDVsZJXb8gYZAjPbCocnYHJbXIolyPa0oEhma8ZdMN6rXuxW
 lo9beMVfkIXg6IrcO8jOLICc5fDOn2fLmgaEtwOiPW6o3IJwntQqrRq5x1SEsvO7gh0VNOlCjSd
 pxPUx3gIxmBRBnQ==
X-Developer-Key: i=ivan8215145640@gmail.com; a=openpgp;
 fpr=4E099B40A4A173D5FBEFB0E4BCDF5D19503396FD

BigTreeTech CB2 and Pi2 share a lot of hardware configuration, so a
common dtsi file was used to define common nodes and properties. This is
similar to how BigTreeTech CB1 and Pi are implemented.

Signed-off-by: Ivan Sergeev <ivan8215145640@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile              |   2 +
 .../dts/rockchip/rk3566-bigtreetech-cb2-manta.dts  |  10 +
 .../boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  | 919 +++++++++++++++++++++
 .../boot/dts/rockchip/rk3566-bigtreetech-pi2.dts   |  10 +
 4 files changed, 941 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 86cc418a2255cdc22f1d503e9519d2d9572d4e9d..99266316a6003e5a8a4dadbd05b8453beb2c3efc 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -111,6 +111,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-box-demo.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-lckfb-tspi.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-lubancat-1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-nanopi-r3s.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-bigtreetech-cb2-manta.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-bigtreetech-pi2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-fastrhino-r66s.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dts b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dts
new file mode 100644
index 0000000000000000000000000000000000000000..97415d099d886aba97c9b652af3d03573f5e74d7
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3566-bigtreetech-cb2.dtsi"
+
+/ {
+	model = "BigTreeTech CB2";
+	compatible = "bigtreetech,cb2-manta", "bigtreetech,cb2", "rockchip,rk3566";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..8f528dfd427621c287bfecbaebfad3ad302b44a5
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -0,0 +1,919 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pwm/pwm.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include <dt-bindings/leds/common.h>
+#include "rk3566.dtsi"
+
+/ {
+	aliases {
+		ethernet0 = &gmac1;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		#cooling-cells = <2>;
+		pwms = <&pwm7 0 50000 0>;
+		cooling-levels = <0 50 100 150 200 255>;
+	};
+
+	hdmi-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
+	leds: leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			gpios = <&gpio4 RK_PA1 GPIO_ACTIVE_LOW>;
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_BLUE>;
+			linux,default-trigger = "default-on";
+			pinctrl-names = "default";
+			pinctrl-0 =<&blue_led>;
+		};
+
+		led-1 {
+			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_LOW>;
+			function = LED_FUNCTION_HEARTBEAT;
+			color = <LED_COLOR_ID_GREEN>;
+			linux,default-trigger = "heartbeat";
+			pinctrl-names = "default";
+			pinctrl-0 =<&heartbeat_led>;
+		};
+	};
+
+	rk809-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "Analog RK809";
+		simple-audio-card,mclk-fs = <256>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&rk809>;
+		};
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk809 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		post-power-on-delay-ms = <200>;
+		reset-gpios = <&gpio0 RK_PD3 GPIO_ACTIVE_LOW>;
+	};
+
+	vcc12v_dcin: regulator-vcc12v-dcin {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc_5v: regulator-vcc-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_5v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vbus: regulator-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc3v3_pcie: regulator-vcc3v3-pcie {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie";
+		enable-active-high;
+		gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_drv>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc3v3_sys: regulator-vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vbus>;
+	};
+
+	vcc5v0_sys: regulator-vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vbus>;
+	};
+
+	vcc5v0_usb: regulator-vcc5v0-usb {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vbus>;
+	};
+
+	vcc_sd: regulator-vcc-sd {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "vcc_sd";
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	vcc5v0_host: regulator-vcc5v0-host {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_host_en>;
+		regulator-name = "vcc5v0_host3";
+		regulator-always-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc5v0_otg: regulator-vcc5v0-otg {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_otg_en>;
+		regulator-name = "vcc5v0_otg3";
+		regulator-always-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc5v0_usb2t: regulator-vcc5v0-usb2t {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb2t_en>;
+		regulator-name = "vcc5v0_usb2t";
+		regulator-always-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc5v0_usb2b: regulator-vcc5v0-usb2b {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb2b_en>;
+		regulator-name = "vcc5v0_usb2b";
+		regulator-always-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	ext_cam_clk: ext-cam-clk {
+		status = "okay";
+		compatible = "fixed-clock";
+		clock-frequency = <25000000>;
+		clock-output-names = "ext_cam_clk";
+		#clock-cells = <0>;
+	};
+
+	can_mcp2515_osc: can-mcp2515-osc {
+		compatible = "fixed-clock";
+		clock-frequency = <8000000>;
+		#clock-cells = <0>;
+	};
+};
+
+&combphy1 {
+	status = "okay";
+};
+
+&combphy2 {
+	status = "okay";
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&gmac1 {
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
+	assigned-clock-rates = <0>, <125000000>;
+	clock_in_out = "input";
+	phy-mode = "rgmii-id";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m0_miim
+			&gmac1m0_tx_bus2
+			&gmac1m0_rx_bus2
+			&gmac1m0_rgmii_clk
+			&gmac1m0_clkinout
+			&gmac1m0_rgmii_bus>;
+	phy-handle = <&rgmii_phy0>;
+	status = "okay";
+};
+
+&mdio1 {
+	rgmii_phy0: phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reset-gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_LOW>;
+		reset-delay-us = <20000>;
+		reset-post-delay-us = <100000>;
+		reg = <0x0>;
+	};
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
+&hdmi {
+	avdd-0v9-supply = <&vdda0v9_image>;
+	avdd-1v8-supply = <&vcca1v8_image>;
+	status = "okay";
+};
+
+&hdmi_in {
+	hdmi_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi>;
+	};
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&hdmi_sound {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		vin-supply = <&vcc5v0_sys>;
+		regulator-name = "vdd_cpu";
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1390000>;
+		regulator-initial-mode = <1>;
+		regulator-ramp-delay = <2300>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+
+		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
+		#clock-cells = <1>;
+		clock-names = "mclk";
+		clocks = <&cru I2S1_MCLKOUT_TX>;
+		pinctrl-names = "default", "pmic-sleep",
+				"pmic-power-off", "pmic-reset";
+		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
+		#sound-dai-cells = <0>;
+
+		system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vcc3v3_sys>;
+		vcc2-supply = <&vcc3v3_sys>;
+		vcc3-supply = <&vcc3v3_sys>;
+		vcc4-supply = <&vcc3v3_sys>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc3v3_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc3v3_sys>;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_logic";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_gpu: DCDC_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_gpu";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vcc_ddr";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vdd_npu: DCDC_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_npu";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_image: LDO_REG1 {
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdda0v9_image";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_0v9: LDO_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdda_0v9";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_pmu: LDO_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdda0v9_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vccio_acodec: LDO_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-name = "vccio_acodec";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_sd";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc3v3_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcca_1v8: LDO_REG7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca_1v8";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca1v8_pmu: LDO_REG8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca1v8_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcca1v8_image: LDO_REG9 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca1v8_image";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8: DCDC_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v3: SWITCH_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc_3v3";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sd: SWITCH_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc3v3_sd";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+
+		codec {
+			rockchip,mic-in-differential;
+		};
+	};
+};
+
+&i2c2 {
+	pinctrl-0 = <&i2c2m1_xfer>;
+};
+
+&i2c3 {
+	status = "okay";
+
+	tft_tp: touchscreen@48 {
+		compatible = "ti,tsc2007";
+		reg = <0x48>;
+		status = "okay";
+		ti,x-plate-ohms = <660>;
+		ti,rt-thr = <3000>;
+		ti,fuzzx = <32>;
+		ti,fuzzy = <16>;
+	};
+};
+
+&i2s0_8ch {
+	status = "okay";
+};
+
+&i2s1_8ch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_lrcktx &i2s1m0_sdi0 &i2s1m0_sdo0>;
+	rockchip,trcm-sync-tx-only;
+	status = "okay";
+};
+
+&spi1 {
+	pinctrl-0 = <&spi1m1_cs0 &spi1m1_pins>;
+
+	can_mcp2515: can@0 {
+		compatible = "microchip,mcp2515";
+		reg = <0x00>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+		spi-max-frequency = <10000000>;
+		clocks = <&can_mcp2515_osc>;
+		vdd-supply = <&vcc3v3_sys>;
+		xceiver-supply = <&vcc3v3_sys>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&mcp2515_int_pin>;
+	};
+};
+
+&spi3 {
+	pinctrl-0 = <&spi3m1_cs0 &spi3m1_pins>;
+};
+
+&pcie2x1 {
+	reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_reset_h>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
+&pinctrl {
+	sd {
+		sdmmc0_pwr_h: sdmmc0-pwr-h {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int: pmic_int {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		soc_slppin_gpio: soc_slppin_gpio {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+
+		soc_slppin_slp: soc_slppin_slp {
+			rockchip,pins = <0 RK_PA2 1 &pcfg_pull_none>;
+		};
+
+		soc_slppin_rst: soc_slppin_rst {
+			rockchip,pins = <0 RK_PA2 2 &pcfg_pull_none>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_host_wake: wifi-host-wake-l {
+			rockchip,pins = <2 RK_PB1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	usb {
+		vcc5v0_host_en: vcc5v0-host-en {
+			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc5v0_otg_en: vcc5v0-otg-en {
+			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc5v0_usb2t_en: vcc5v0_usb2t-en {
+			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc5v0_usb2b_en: vcc5v0-usb2b-en {
+			rockchip,pins = <4 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	work-led {
+		heartbeat_led: led-heartbeat {
+			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		blue_led: led-blue {
+			rockchip,pins = <4 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	headphone {
+		hp_det: hp-det {
+			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	pcie {
+		pcie_drv: pcie-drv {
+			rockchip,pins = <4 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie_reset_h: pcie-reset-h {
+			rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	edp {
+		edp_hpd: edp-hpd {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bl_en: bl-en {
+			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_output_high>;
+		};
+	};
+
+	bt {
+		bt_enable: bt-enable-h {
+			rockchip,pins = <2 RK_PB7 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		bt_host_wake: bt-host-wake-l {
+			rockchip,pins = <2 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		bt_wake: bt-wake-l {
+			rockchip,pins = <2 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	mcp2515_int_pin {
+		mcp2515_int_pin: mcp2515-int-pin {
+			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	status = "okay";
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	vccio1-supply = <&vcc_3v3>;
+	vccio2-supply = <&vcc_1v8>;
+	vccio3-supply = <&vccio_sd>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_3v3>;
+	vccio7-supply = <&vcc_3v3>;
+};
+
+&pwm0 {
+	pinctrl-0 = <&pwm0m1_pins>;
+};
+
+&pwm7 {
+	status = "disabled";
+};
+
+&pwm12 {
+	pinctrl-0 = <&pwm12m1_pins>;
+};
+
+&pwm13 {
+	pinctrl-0 = <&pwm13m1_pins>;
+};
+
+&pwm14 {
+	pinctrl-0 = <&pwm14m1_pins>;
+};
+
+&pwm15 {
+	pinctrl-0 = <&pwm15m1_pins>;
+};
+
+&saradc {
+	status = "okay";
+	vref-supply = <&vcca_1v8>;
+};
+
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd>;
+	status = "okay";
+};
+
+&sdmmc0 {
+	max-frequency = <150000000>;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	vmmc-supply = <&vcc_sd>;
+	vqmmc-supply = <&vccio_sd>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
+	status = "okay";
+};
+
+&sdmmc1 {
+	/* WiFi & BT combo module AMPAK AP6256 */
+	#address-cells = <1>;
+	#size-cells = <0>;
+	max-frequency = <150000000>;
+	bus-width = <4>;
+	disable-wp;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
+	rockchip,default-sample-phase = <90>;
+	status = "okay";
+
+	sdio-wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <9 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake>;
+		brcm,drive-strength = <10>;
+	};
+};
+
+&sfc {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+};
+
+&tsadc {
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
+	uart-has-rtscts;
+	dma-names = "tx","rx";
+
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		clocks = <&rk809 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake &bt_wake &bt_enable>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcca1v8_pmu>;
+	};
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&uart5 {
+	pinctrl-0 = <&uart5m1_xfer>;
+};
+
+&uart7 {
+	pinctrl-0 = <&uart7m2_xfer>;
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	phy-supply = <&vcc5v0_otg>;
+	status = "okay";
+};
+
+&usb2phy1 {
+	status = "okay";
+};
+
+&usb2phy1_host {
+	phy-supply = <&vcc5v0_usb2t>;
+	status = "okay";
+};
+
+&usb2phy1_otg {
+	phy-supply = <&vcc5v0_usb2b>;
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	dr_mode = "host";
+	extcon = <&usb2phy0>;
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usb_host1_xhci {
+	status = "okay";
+};
+
+&vop {
+	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
+	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi_in_vp0>;
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dts b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dts
new file mode 100644
index 0000000000000000000000000000000000000000..7cd444caa18bc9f6cf7afe04a777aecdce2fc93e
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3566-bigtreetech-cb2.dtsi"
+
+/ {
+	model = "BigTreeTech Pi 2";
+	compatible = "bigtreetech,pi2", "rockchip,rk3566";
+};

-- 
2.45.2


