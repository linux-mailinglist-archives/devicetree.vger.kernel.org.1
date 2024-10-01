Return-Path: <devicetree+bounces-106883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B5F98C1E3
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 17:43:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C557DB21742
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 15:42:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57E311CB314;
	Tue,  1 Oct 2024 15:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fKqi27Vj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD071C8FD5
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 15:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727797366; cv=none; b=MtvcbkNvNWetUMJ8+Gv4bclsCfN5AIS6Ah5JQDDqCZB98YxrRj5bDo1Mj3awX8TB9YFtOQGoeZb1levt1j9Wd+gVpUakpFdkexcwyRyGEMJfKJXO9sPj9+Tm3Ou5Oqs/lFp1T85yyqdaLtQlPXYUPYu+Iej4v+OM1MkzGW1/7l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727797366; c=relaxed/simple;
	bh=P8Va5+JfcMcqmRFAP5yK95zqHNvbTMZCnCZBNHg7N3w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NzDk6+avvJetmzhz+u48t3HFH8XuuSUqq6MRv74QTQlGQQt56YHUr5Ll1YXkJIvizaK9jldO+B4Dywicu2b+s9o2TKg59wmfb/0eDH2eafKM/mCcDwHa2LaPqqFD2yLEA3UKHCbHNYuQSGsLd5y/IBzXJPuAsFA8/Ybu8+T6e6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fKqi27Vj; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3e16d974030so2772372b6e.1
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 08:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727797364; x=1728402164; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNsrm5wfGwJrCSxE78fY+2C3NP2/Z5aeTtNfv5/sTTI=;
        b=fKqi27Vj+q5ZugWgH+gHvrdEDKGrnCeORQN1Z8UwE/s4wUr+b5XOpYDKInIA7Tv1Ii
         1LbW0EQcB1AyOuWuHY3xIjsSkDfMNeAqJAjbrtWAdOVm0DgyeXTTPt3SSkgGHjIhzyIu
         rt1EfucbzHC/ELZeWFLa6DiUbizxS+LrOq35whWvpRwR2Cx4n8o/XqqKHAv96CijbFP7
         GMOvLhBa0zaUMrvrndX9+YFnZ39HeCQzmGda3xXz/ryPsQRyXByPti7/C9ih9oK/YdBa
         1LkMolWB6JuM1NGiHfZ3XNRubdbQt7W0W8bXCAauAHqnshgDUe46WJwtJYdsxdndiRZU
         bwBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727797364; x=1728402164;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oNsrm5wfGwJrCSxE78fY+2C3NP2/Z5aeTtNfv5/sTTI=;
        b=SrDMS+w9lfO1R0haVGR/TdMCoxt9OItqlyk9bqcpLcHNj5SUe9bmBH4t7qW5JFviSM
         W4eHAAQfyvQUYa07OzoVSJ3necuct+I0Tez7zvdD1RtQg5vhSqe24S34Qyp61KA2crPp
         t8yOeaeXkPY+73Ee+PWvCUAU2B1SCrYBeGz7bFqgmVzclRpGPTfbGUxFQDzfYxWo9pKw
         pBz3ka1tkCcObh+OK4c8G6l9RnMICHedePdWtU7Ok5BJcNfJNgNJ2BdjDLzyTF7r/6x2
         A8+pouUAv+UYoR/mHD4KejZx5UHryj+H3BbFGuplDz5RfVodqO4yB01jWZeQEggqBMVM
         GdHQ==
X-Gm-Message-State: AOJu0YxZPYx3lwoXC2T9+aHMsAwFz2/RofCjIi+Wh3N7pqHV2Vayep9L
	97HEfKQxL4DqMMrksVPAFdXOhd3hZDJNa/+4URUTURsiiMV9Ab4X0GSN4KQ1
X-Google-Smtp-Source: AGHT+IEoidGgYCbP9q2oqxtoVmSp5rGAmO2bN39lB7Q1a0rgi+FaVO84uwVqFAKnZfGSp0/ahxDyjw==
X-Received: by 2002:a05:6808:1825:b0:3e2:8d62:ce4e with SMTP id 5614622812f47-3e3acb4376dmr1740148b6e.4.1727797363866;
        Tue, 01 Oct 2024 08:42:43 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e3935c6293sm3120485b6e.53.2024.10.01.08.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 08:42:42 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Add Powkiddy RGB20SX
Date: Tue,  1 Oct 2024 10:40:16 -0500
Message-ID: <20241001154016.87386-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241001154016.87386-1-macroalpha82@gmail.com>
References: <20241001154016.87386-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Powkiddy RGB20SX is a portable game console extremely similar to
the existing RGB30 console. The key differences from the RGB30 are
as follows:

 - Realtek RTW8723DS WiFi and Bluetooth.
 - UART pads for debug console (UART2).
 - A function button (ADC channel 0).
 - A much larger battery (5000 mAh).

Otherwise, the device is identical to the RGB30, including the
hard-coded value on ADC channel 1 used to identify the device at
runtime.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3566-powkiddy-rgb20sx.dts  | 89 +++++++++++++++++++
 2 files changed, 90 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb20sx.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 09423070c992..8021e5190ece 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -91,6 +91,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinetab2-v0.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinetab2-v2.0.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb10max3.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb20sx.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb30.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rk2023.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-x55.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb20sx.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb20sx.dts
new file mode 100644
index 000000000000..9b70026ce4a5
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb20sx.dts
@@ -0,0 +1,89 @@
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
+	model = "Powkiddy RGB20SX";
+	compatible = "powkiddy,rgb20sx", "rockchip,rk3566";
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	adc_keys: adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <60>;
+
+		/*
+		 * Button is labelled as FN, but according to input
+		 * guidelines it should be mode.
+		 */
+		button-mode {
+			label = "MODE";
+			linux,code = <BTN_MODE>;
+			press-threshold-microvolt = <1750>;
+		};
+	};
+};
+
+&battery {
+	charge-full-design-microamp-hours = <5000000>;
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
+			       <200000000>, <292500000>;
+};
+
+&dsi0 {
+	panel: panel@0 {
+		compatible = "powkiddy,rgb30-panel";
+		reg = <0>;
+		backlight = <&backlight>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_rst>;
+		reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+		vcc-supply = <&vcc3v3_lcd0_n>;
+		iovcc-supply = <&vcc3v3_lcd0_n>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
+&i2c0 {
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		fcs,suspend-voltage-selector = <1>;
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
+&uart2 {
+	status = "okay";
+};
-- 
2.43.0


