Return-Path: <devicetree+bounces-134765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB479FE75B
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 15:58:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B508C1881083
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 14:58:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE65F1AA1DC;
	Mon, 30 Dec 2024 14:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eLwJXoWq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431BA1A8410;
	Mon, 30 Dec 2024 14:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735570715; cv=none; b=c1Gb72u+E9aYQoNJpcho6926z9jpKdvi7RSwwWvkT+QlQSWeEJmypi2SDzojpnA39KCul3kuyOUNfEz+Tx6F5S26dd5LjPzRo3pthnKgn1za15R8k8tbxnYPahY2Uqm5K54OlSx2nntMP+vAQOXNIa8tRJoT2Y0vQqqAgWGJB3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735570715; c=relaxed/simple;
	bh=zqEwd6GiT1m43xVU3Nyr+c6VVT1aXzoil8dS3+WL+PQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oRFLwC8lgD8p1QO1KJyi89AAplhgEJHh83f53J7bB1d1dTEHqRq233E9YOFcp60GCm0AOzJbuJJTRFbJQCkfO63UfB/V+v/E8n7BjUmzMnRDbgw6Jj1ZceSbs+yii+ymP4D8TtCzgYpBF5ULEAriity4YonbHdBZkh8sgYA3kcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eLwJXoWq; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-300392cc4caso108451821fa.3;
        Mon, 30 Dec 2024 06:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735570711; x=1736175511; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q5VfXiOm+swvzPXUNMXOVJWzsDvLc9Bf84gR8e8AAJE=;
        b=eLwJXoWqoPTHFFxJhrMyHMX7aO+x1Q+XRNn6RMw5TiuoI7SuKBh/ANclNO6awDn6rc
         R7vvSv9UDElnsgZA2r8EJdy+EGVJ8bWHQSE+JL/53AeX3qXTKVMPZ130bRhvdD+5MhJC
         hu7XqJ2TPndFNLgRHY3OXFrWtAsx2I+0LEnO5W7Jvd4cv69U+/0g7Ke/+7r4FTQE/ENv
         idrm4br96lNjvcdDpkhcODGbft/5ugceuo31ETQNu7NMmntrQuleLV0tuWmHn3kQhBcK
         H3G7EG6O+K/rENPfirf6YszHc7hYWYQ+ohqmBg2fX4KsomfSvj0kedwjFC7uixYia+Rd
         MDsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735570711; x=1736175511;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q5VfXiOm+swvzPXUNMXOVJWzsDvLc9Bf84gR8e8AAJE=;
        b=n9WdeMEdSVLtnC7I0+/0pQbr46y92RrN/Ynd6AvW7tDbk3bidLlRGqanx1V8m2e3/M
         KfiyQxL0ql87y5Aewkt0fXoISgH1zGmIRNc+xjaJ4sXz4ou1bRLA8Smw517NKB71Px3T
         ZvqGgwZnVrUYISiT1qa83fiGDIY91AoQpa0TGa/DFkZPe5IWXPntb+6pCkscDLJyRGtD
         7kL37D86sI+GIDH1bdJyTDA+UhofSQULrB05vLZvcXsZKTNqegrik9AF7jE8UExRQE45
         LCyRuLFs0SV6Bu8H0Hht65Gt/VUfQdvfFe8rBHi7wmERS/b6NB6ysEXXSuz8/UfpiDJj
         0KMA==
X-Forwarded-Encrypted: i=1; AJvYcCWvt231g0c49e4khaTKY6Tx0Ve/9juourYzHcXYah2DI2jigM+CWyIwQjAhBQQyEitlNEICp7CztiVR1FM=@vger.kernel.org
X-Gm-Message-State: AOJu0YzBHxsh0mjke5Qeobl7Xdoh7qiMIc+JhJkujSqBsOjGNq9KtMdK
	xjlbf+kxDm6q/xGlcMH2hxBH6E5fv1WcrsrhKIQtKAR1vm4eATY=
X-Gm-Gg: ASbGncvkHi6EkV68JZHpYQFfFYo1Z1qjVdFhWIC2X17zYeyaZyKVW3LFwsWCVvNUQjK
	wd9QiEWyJJ6Gso5P+Kqj4grEcGW7kiPnPJY0fxruU1NafwsaEk1QcyU1V2oBtVfbJgJ6563rUmR
	BbcoLD6XOPsZeJWmQWQOC6qr2wrfFX4OdwFUe76qR77kGDbB/qtQEtFpMWyLfmLFTubSMmdq3Ps
	/3mNg+61sWHYG7G9bDTuPNzjD/rhNeXhflyQSGLjMbvKyCHuhGIz/NOpAw=
X-Google-Smtp-Source: AGHT+IHvguVKXg7sywF7GKBXjGByEJCIw++NxCM4PC7TeMCXO49CVWl8gd0TTn+yurn9B/oa0zD99g==
X-Received: by 2002:a2e:b8c6:0:b0:300:7f87:a4f with SMTP id 38308e7fff4ca-30468557147mr132185161fa.19.1735570710811;
        Mon, 30 Dec 2024 06:58:30 -0800 (PST)
Received: from JetTurbine.homenetwork ([2a0e:e6c0:20d3:2100::1d])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b096026sm34385111fa.118.2024.12.30.06.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 06:58:30 -0800 (PST)
From: Ivan Sergeev <ivan8215145640@gmail.com>
Date: Mon, 30 Dec 2024 17:58:19 +0300
Subject: [PATCH v4 2/2] arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241230-bigtreetech-cb2-v4-2-26d2d30e07ce@gmail.com>
References: <20241230-bigtreetech-cb2-v4-0-26d2d30e07ce@gmail.com>
In-Reply-To: <20241230-bigtreetech-cb2-v4-0-26d2d30e07ce@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ivan Sergeev <ivan8215145640@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=24299;
 i=ivan8215145640@gmail.com; h=from:subject:message-id;
 bh=zqEwd6GiT1m43xVU3Nyr+c6VVT1aXzoil8dS3+WL+PQ=;
 b=owEBbQKS/ZANAwAIAbzfXRlQM5b9AcsmYgBncrUUQBIjQPRnxTMh62rgH6dbpa7W4tQ3TbGC0
 Fchb4p5wB6JAjMEAAEIAB0WIQROCZtApKFz1fvvsOS8310ZUDOW/QUCZ3K1FAAKCRC8310ZUDOW
 /StuD/4ti152KuoUnF8i8WnyRmVbEXMtIdCdaBYkDQorvEPvGKden3NQ/uwKcgJN+J4DKXoQfnD
 zpu41jwyQEcZnkJ1sFoGxXcAN3ii2I8CF3uTVs1fiQ6+4XdIPI04ZWKWWmxZ9LzK/7CxrwGJzD5
 WHVbPEFVfXmn54pqaL91MfTZjcDWiBeN2017UiyC8nqLRipef+tZFNqFZ9stHOx5BvAmGfJeFD1
 r12sV4ECLokZR4I14G/M3c5X97+7L2xM6Z5PUep3xKKtCf7qG9nUwdWfFAWWdPZEzsqzBoHQuwI
 GXmPca1LxQ7lNvAp5vAkOUgZ2qnh1eu1+9F4yHDJYRJ0gOVjbN7sJelzThv4ftwVDeuD2L5B5df
 BtxTI1NgoXcexxSWhIKYd/0smF9EQaki0uFZKKQsGyyuvNge0LECC+QS7AEtA1BzLi1ioQh5z4D
 v/Nr3gNIm1d1ubAhJDq1LofNHaaaaBoq0Ub87NJ6mFxtF9T71M0S+X/i6ajPV3/2Ad1NIhUOJWq
 PoLjeRrbD/T2UtP/Z6iyAy3jXuYGnqGU3TSn79/iK/Iz/46pkdR4zmjbMLDPwvClw7z/Ub+hPpQ
 IR3Az4CUEebxA6qZWiVto6iS1lofCXh0G7ESEm+yj3jhMkdsGsrBI3gfaoigOLyrDZqzmHhhVyb
 yu2Mkx5E6tbyqMA==
X-Developer-Key: i=ivan8215145640@gmail.com; a=openpgp;
 fpr=4E099B40A4A173D5FBEFB0E4BCDF5D19503396FD

BigTreeTech CB2 and Pi2 share a lot of hardware configuration, so a
common dtsi file was used to define common nodes and properties. This is
similar to how BigTreeTech CB1 and Pi are implemented.

Signed-off-by: Ivan Sergeev <ivan8215145640@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile              |   2 +
 .../dts/rockchip/rk3566-bigtreetech-cb2-manta.dts  |  10 +
 .../boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  | 943 +++++++++++++++++++++
 .../boot/dts/rockchip/rk3566-bigtreetech-pi2.dts   |  10 +
 4 files changed, 965 insertions(+)

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
index 0000000000000000000000000000000000000000..5d60a86072a1d76f00dacec159543bd7a861ac04
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -0,0 +1,943 @@
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
+	tft_tp: ns2009@48 {
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
+	pinctrl-0 = <&i2s1m0_sclktx
+			&i2s1m0_lrcktx
+			&i2s1m0_sdi0
+			&i2s1m0_sdo0>;
+	rockchip,trcm-sync-tx-only;
+	status = "okay";
+};
+
+&spi1 {
+	pinctrl-0 = <&spi1m1_cs0 &spi1m1_pins>;
+
+	can_mcp2515: can-mcp2515@0 {
+		status = "disabled";
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
+	wireless-bluetooth {
+		uart1_gpios: uart1-gpios {
+			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sd {
+		sdmmc0_pwr_h: sdmmc0-pwr-h {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	mxc6655xa {
+		mxc6655xa_irq_gpio: mxc6655xa_irq_gpio {
+			rockchip,pins = <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
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
+	touch {
+		touch_gpio: touch-gpio {
+			rockchip,pins =
+				<0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>,
+				<0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
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
+		mcp2515_int_pin: mcp2515_in_pin {
+			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&pmu_io_domains {
+		status = "okay";
+		pmuio1-supply = <&vcc3v3_pmu>;
+		pmuio2-supply = <&vcc3v3_pmu>;
+		vccio1-supply = <&vcc_3v3>;
+		vccio2-supply = <&vcc_1v8>;
+		vccio3-supply = <&vccio_sd>;
+		vccio4-supply = <&vcc_1v8>;
+		vccio5-supply = <&vcc_3v3>;
+		vccio6-supply = <&vcc_3v3>;
+		vccio7-supply = <&vcc_3v3>;
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
+	//sd-uhs-sdr104;
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
+	sd-uhs-sdr104;
+	status = "okay";
+	rockchip,default-sample-phase = <90>;
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
+	dma-names = "tx\0rx";
+
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		clocks = <&rk809 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
+		//pinctrl-names = "default";
+		//pinctrl-0 = <&bt_host_wake &bt_wake &bt_enable>;
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
+	phy-supply = <&vcc5v0_host>,<&vcc5v0_otg>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	status = "okay";
+};
+
+&usb2phy1 {
+	status = "okay";
+};
+
+&usb2phy1_host {
+	status = "okay";
+	phy-supply = <&vcc5v0_usb2t>,<&vcc5v0_usb2b>;
+};
+
+&usb2phy1_otg {
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


