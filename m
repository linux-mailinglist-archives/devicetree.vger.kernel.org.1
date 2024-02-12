Return-Path: <devicetree+bounces-40989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5F9851D50
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:50:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 36B44B2149B
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CE4D41212;
	Mon, 12 Feb 2024 18:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mispTYJ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9AD146436
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 18:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707763805; cv=none; b=ZXf9szc0FF23VxeCAXbIm3XpgjM6rbUvV42pCsLPcgzKLXWiw/eDFpiUnaQM3Pu4Bpvucb3yiLPky/iOeUlHUs1HiUBKvucgqF04zlt55YPAwhxEPYKYFZAMDm25lAEbishp5xpkopI3+n1M+UFjQPPJkdCBWUzgZwyanoDQO1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707763805; c=relaxed/simple;
	bh=KmXrlNxD+s3wgnBIhnz4XKRtISMSWwMS8NzhmRLS8F8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Kk/k3l69UBPaJphVws6ZG97Ri3PEW//BwF6ouNHH5P2EoV0BzdlyngWxAn3xGaRksdi3W4MRqvEUBi/WoER+uPY406XxlR7t4YukmG/94NaPXXbyGaDdDQD8uezYHdKe5Gze2ZsPrW4Phn4N6EXylF4xwJF2EhaxPmsGARBDXmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mispTYJ0; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-5961a2726aaso2303707eaf.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 10:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763803; x=1708368603; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U+Zsk6HBC5/Pag8q1TO8vPoQmQRPTUSpwHWT3Y8NpYM=;
        b=mispTYJ0fJvo8krGy+vDS2MB+rgPFLxA5ddxBepvNxguclU5YgjWWalzmuPzvdNXIc
         yL7cY+RlulGsasqagaZIrlS+5LlRVw9EVimle2CQffVX5FOll2vYH5LSCvt7ZfyEgQWm
         zjTvKGCu+XZhDlPXaIXbz5piOUivZEv9ZP8cN8DKng6yooCveUDVTg4RAbZqTMMHx7FI
         IiuIz7L8VJWmxA+v4pLhEhZtUNpT4Udqw93HCATVcY4ndIQ33eu66eWrXvzu/4oqhd8B
         O1PXYopiFKpQu04dyxPyYcnZ1si7oRBO5FHfg8/MxouVFGhAjCnKhWHfur/8pN742/Qm
         WgSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763803; x=1708368603;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U+Zsk6HBC5/Pag8q1TO8vPoQmQRPTUSpwHWT3Y8NpYM=;
        b=ObHwX2UuzrNEBOtrJtEUWfdZidLlucbm8PB2D2eW9i3GIGGeKjnV8S/NCSXw7ylTkV
         rvutB3JFZYfuOAaxlbwEp3o7J313B3XJ983PkMYrWsQ9MEt9t4v0bc9jYmnSkyFdYoFe
         nXKYN4vfTKU8u57Td7D5Icerj7aVHdpnemgDK1UlvtQ4vE4Rirh82jaKYa8l43W+1krA
         vq2tnQtVjYVgjbdr7JUVWzVcInlEiJwqw9ipk1hx0r8D85pUcyIESoj9Ijuliad+VfSw
         T+qw+1zbkT61XNd/CuC2RHHUVb0IuL3YZuQVd+yQfScTC/7weyAy9RAYKHpWplbd8krw
         Gndw==
X-Gm-Message-State: AOJu0YzBcqGSsS1imaQgJR/p7aXCixy0weGRqT+H1FHcYy119oQBzDB3
	ezgv6n9Rxqgvd3jYFgAiwg4dL+mLwJNJW+brpzjzlga+Gh6izQ/G
X-Google-Smtp-Source: AGHT+IF2GtLHuizmdNtPctob4UCqvZ0KarbccbJZkSF7dyb21zuVDYoLXsv8+3H2OR5F+vrRXpMP7w==
X-Received: by 2002:a4a:d283:0:b0:59a:e43f:f209 with SMTP id h3-20020a4ad283000000b0059ae43ff209mr5458362oos.9.1707763803015;
        Mon, 12 Feb 2024 10:50:03 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWkcxxpuI7IaKTDaMNEyKIuCQFx+EcAU6C17eWvs29APm+/yndvP422Msq0A74VjkoeOUbqBWNE9QDMySfBvBPprHJkR8bvckjfRer6slxaVMN2IxXpXtcV6oxy5Y1kAL68GdfuZDxJVgdJfwVGKE4zic9H54ehSUzDlgvCudEqpzWZof9uTI9gvZrTp8DZo62wVSLhhpFVGfPi0kpman5aMJGUaDjJl/v46z8VtFx1liYQwed3353f8eKYhP1Xh+vE/gDNqm4UesDeDJG33KPO+y06GUMlXg4R/Yh0PEXCgKGGuEuVHZ3LUYQqXvIU+Mv6zsF8jHJo+o417O8up4w5Na96uCLGx8uI0gpOc20mC8yQzw9nttZp4OeMM9IhBy4wZHUGhFqtgssenBcRs55QqN+6clXb0ky3xCDwBFQEwUnNyGxFGwjOC/dUsfan8hTSBb6MUhfkcleCXXedhD5Qu67T8Yup6DJtfn0CI6oCTx26Zvo8B/LipsDyCwA3HKh/Z5fFvL+6oskSZlUxcI7MvLula5K3D+Deco9EXJsk81i/E3Jq0X352tDZ
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.50.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:50:02 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 7/7] arm64: dts: rockchip: Add Powkiddy RGB10MAX3
Date: Mon, 12 Feb 2024 12:49:50 -0600
Message-Id: <20240212184950.52210-8-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Powkiddy RGB10MAX3. The Powkiddy RGB10MAX3 is a
handheld gaming device with a 720p 5.0 inch screen powered by the
Rockchip RK3566 SoC. It includes a Realtek 8723ds WiFi/BT module, 2 ADC
joysticks powered by a 4-way muxed ADC channel, and several GPIO
face buttons. There are 2 SDMMC slots (sdmmc1 and sdmmc3), 3 pwm
controlled LEDs, and the device includes 1GB of RAM.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../rockchip/rk3566-powkiddy-rgb10max3.dts    | 87 +++++++++++++++++++
 2 files changed, 88 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb10max3.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index a7b30e11beaf..3c4f87e4db61 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -78,6 +78,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353vs.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb10max3.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb30.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rk2023.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-x55.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb10max3.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb10max3.dts
new file mode 100644
index 000000000000..fd1a01744a25
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb10max3.dts
@@ -0,0 +1,87 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566-powkiddy-rk2023.dtsi"
+
+/ {
+	model = "Powkiddy RGB10MAX3";
+	compatible = "powkiddy,rgb10max3", "rockchip,rk3566";
+};
+
+&bluetooth {
+	compatible = "realtek,rtl8723ds-bt";
+};
+
+&cru {
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
+			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>,
+			       <200000000>, <126400000>;
+};
+
+&dsi0 {
+	panel: panel@0 {
+		compatible = "powkiddy,rgb10max3-panel";
+		reg = <0>;
+		backlight = <&backlight>;
+		iovcc-supply = <&vcc3v3_lcd0_n>;
+		pinctrl-0 = <&lcd_rst>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+		rotation = <270>;
+		vcc-supply = <&vcc3v3_lcd0_n>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
+&green_led {
+	default-state = "on";
+	function = LED_FUNCTION_POWER;
+};
+
+&i2c0 {
+	vdd_cpu: regulator@40 {
+		compatible = "fcs,fan53555";
+		reg = <0x40>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1390000>;
+		regulator-name = "vdd_cpu";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc_sys>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&leds {
+	amber_led: led-2 {
+		color = <LED_COLOR_ID_AMBER>;
+		function = LED_FUNCTION_CHARGING;
+		max-brightness = <255>;
+		pwms = <&pwm0 0 25000 0>;
+	};
+};
+
+&pwm0 {
+	pinctrl-0 = <&pwm0m1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&red_led {
+	default-state = "off";
+	function = LED_FUNCTION_STATUS;
+};
-- 
2.34.1


