Return-Path: <devicetree+bounces-134212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 916FE9FCFBF
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 04:10:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B650163AEE
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 03:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFFEA4595B;
	Fri, 27 Dec 2024 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Imgq8U80"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F7435974;
	Fri, 27 Dec 2024 03:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735269034; cv=none; b=MmN95qXkvMLX92MsMFfPAhYoh+GNfEhTundniN6DaN7zvodRhqfx2dPJpzuw2wVqVL4/651ndSok1PEz+ugUlS1jAOTA0/kqTn3aZwwAu3sbjFVyAk7nXzccKEAL2jA1cRSBNX+Mna/h8UgyYbL0yOMGC0YxwkxEqHXGiAz0UAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735269034; c=relaxed/simple;
	bh=PSyfRiVAE3Dgwf8JYIXjt9FFfs91bYDPbne0de2gBqk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YDHMrdPJToC/gl7g90AnJXRcmmmLShQgKRJbqFfpK53EJFkuPHSoTcUwAHy1MDV5UqOjWHhb1O/vQJizMAUnlS59vRmDlgn0QCPripZqgu4QneLLzTg5yNJdcg+ooSbVI+WwS0jGYkWuc/tEvSavPSNiRg6nwPhFT6C0KnwRte8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Imgq8U80; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-30037784fceso73672861fa.2;
        Thu, 26 Dec 2024 19:10:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735269030; x=1735873830; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M0xZ2InpMbu3cmKcd6VAlAxnb2CXJt6wr5Z+V4Cjxhc=;
        b=Imgq8U80a1nw14x6g/bFCVu1EhseFss9Am7wUiCG7sq0wHlL/yUKB/LjtvqggNN9DC
         sLHmlQEwGKkHGtpCh8/pr0b3bs8eLUvSoilbjD3higiDJD+pTMnl+EW3WmTK4dUK/bQF
         xpvRgAcVRAWFXw0RdQqkkNcMEZ5x/Yj98WGLfrSAekvt4GrGdsQ78vu962ytBrK16aud
         oKudEAZ0n29bV1etcyMlQYjf34JXFFXjLgMsJLE/eB8Uby/b2utLV5yErRj77oonuG0A
         xaRqk5BLa8wXKaeeJD6RDEMxlM8hUg+3qNHASVouA5sCq+LDYh8I2NVtvrOYuJcHXRC5
         Dt8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735269030; x=1735873830;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M0xZ2InpMbu3cmKcd6VAlAxnb2CXJt6wr5Z+V4Cjxhc=;
        b=Gce26hiFR1QEHFwmTh8/plmEAebB7siHwjPX7J/drGBvYZ9PYMoaHH6Q0mxqiBRlXt
         4q1o4Syp3TAm1+0V8L6TiTduJaKihspy5zSLOoziK6SinlAnozCOQtHS2UuPmtUKnFMo
         O8knYp5gBRBDx7/hyzavV1aMVL1tPkXbgOH9rVUDsNAH9mXwC3J7+x/kOIeLPOlUdFr0
         eCnDuIO8uW9Ijl2WMCzu2XpNB+I7FsVmTbPKdRO9qlcaggOtMwn9n+vm4HCVelxVM/JV
         IJIz7V6HCjrJieKaNVWxzGhWRmxijWsLMQQtiuqjZ83LuXZkwmgBCCbNmMcKXicvQa75
         GYig==
X-Forwarded-Encrypted: i=1; AJvYcCWsib9DPQJSZbw+C7BLLBNkfu+87gnlDF7XVi6uIXGENJV0h2ezjV48C2PAV/2DCPSlDd2RVno2iCAn3o0=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzeqv7TeSHFKQfH4RmwE0xmYBWgNfynxB0vmXpv04jyKseD7N4i
	sb9y5nA0Vs7S4beYyrVnjgjJF7J5dOXOYSI1qqCewFXEyIQAg+I=
X-Gm-Gg: ASbGncvIzVX+blONsGZWSmhCcfU3fnMfAMsb/Uty3qstI16ULO7ItxAwnwXYI8C9zsc
	rbBiAvVG2IfBJddAmy7Tcth5wcjphX2zij2H7y4uF+3lOgXsooVjoi7kk3PDQRCaJG+4Ynqd+xf
	g5EYjGuS9iqazo0Hp1pZ9V6SyHQmImdXCKH5+9zIJcNbbS22XgjaiCaevIml730ZgAid5LDGqDD
	gbyAbVf3Bfm6/zqc2tddSwtpMPl8tk8JYxi9B8nGzzUoXElC5dgpkX6pZ8=
X-Google-Smtp-Source: AGHT+IFzMXdEkcvXIuiLJmCBq9ly+Z9UhsOT8YbquDjmbYeCnBJYPHNbX8948Ig7AtloMeK8B0rPwg==
X-Received: by 2002:a05:651c:1402:b0:302:3d74:a1af with SMTP id 38308e7fff4ca-30468594006mr67728101fa.20.1735269030194;
        Thu, 26 Dec 2024 19:10:30 -0800 (PST)
Received: from JetTurbine.homenetwork ([2a0e:e6c0:20d3:2100::1d])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad6cccasm24326141fa.1.2024.12.26.19.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 19:10:28 -0800 (PST)
From: Ivan Sergeev <ivan8215145640@gmail.com>
Date: Fri, 27 Dec 2024 06:10:14 +0300
Subject: [PATCH v3 2/2] arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-bigtreetech-cb2-v3-2-91c556adcffe@gmail.com>
References: <20241227-bigtreetech-cb2-v3-0-91c556adcffe@gmail.com>
In-Reply-To: <20241227-bigtreetech-cb2-v3-0-91c556adcffe@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ivan Sergeev <ivan8215145640@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=24231;
 i=ivan8215145640@gmail.com; h=from:subject:message-id;
 bh=PSyfRiVAE3Dgwf8JYIXjt9FFfs91bYDPbne0de2gBqk=;
 b=owEBbQKS/ZANAwAIAbzfXRlQM5b9AcsmYgBnbhqistWRajiMpsoJG9FfOuhRZ7niXLCANya/u
 lItfK6fmPWJAjMEAAEIAB0WIQROCZtApKFz1fvvsOS8310ZUDOW/QUCZ24aogAKCRC8310ZUDOW
 /R89D/kBZXu81iYGvsrYmHs+XATR8O9rBpBwoeFcobFGk3z5iQPZxtojPTE0v0RvBUPqxcxnEF6
 WlwNU34SPP7+9wXYpWwiE84F7v1QM7gwvW7sj4wC+DOrxdSspRr3INLLAJuzL8JYz/HDlVMIEvh
 MHnd7UpUJpfQdZuwM7BQj5XZ7Sc0h9LHjRtcV+Aie8VQd6EeTU3r9i4yqTDE4lpNlI0C6dNU8cd
 4RRC7mr39Shx1pmUBy4TNnn8GK7toxF2Mz+yJwa0IENfp6sXGVuST67T8beh0Obn0iSOdbd2E70
 g4EXUTE9oCtOzTMPmfnTToLfAfnbZaLDWOzrBs7mraC9heSPKJBUQ4KPd5tcx53SCDro1SQh70f
 IMqy+Z6L6LR0EdMhbhtfmlWAkjrWBsC1hkT32RRqJ+EHzY4GZ11SZRuqLaOslGuhwUWkkz/m7Bu
 4K7n6bDG4N6mI6Y6Xbx20+1Mqw/bg7ix6WsL5rwm/fRGuAjXuRJO5VNxzJ2k4vS1Pj/Qlz0qt2D
 btu5bwKxZRZrK9D1TkuJbrgmNAf/GaDGyS+YWumj3KfxLd8CmFlRGiAhQsJ9z6xs0mvhPr6RpIY
 fNUrBRxl6Q1+ZiO0y38qfxucHq08UzYOL5vV+l2BV+I4cPiVmVh+Lqi62j4qtUTnrLI6I2oKujE
 U2hndGe1MyHPkpg==
X-Developer-Key: i=ivan8215145640@gmail.com; a=openpgp;
 fpr=4E099B40A4A173D5FBEFB0E4BCDF5D19503396FD

BigTreeTech CB2 and Pi2 share a lot of hardware configuration, so a
common dtsi file was used to define common nodes and properties. This is
similar to how BigTreeTech CB1 and Pi are implemented.

Signed-off-by: Ivan Sergeev <ivan8215145640@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile              |   2 +
 .../dts/rockchip/rk3566-bigtreetech-cb2-manta.dts  |  10 +
 .../boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  | 941 +++++++++++++++++++++
 .../boot/dts/rockchip/rk3566-bigtreetech-pi2.dts   |  10 +
 4 files changed, 963 insertions(+)

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
index 0000000000000000000000000000000000000000..a69d4f85c28e850770645fad24debb37fa9ec3c7
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -0,0 +1,941 @@
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
+		i2c,ignore-nak = <1>;
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
+		reg = <0x1>;
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
+	phy-supply = <&vcc5v0_host &vcc5v0_otg>;
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
+	phy-supply = <&vcc5v0_usb2t &vcc5v0_usb2b>;
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


