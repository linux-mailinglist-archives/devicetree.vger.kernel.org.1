Return-Path: <devicetree+bounces-149876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF28A40AAC
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 18:28:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C77D179E7F
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 17:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD5A11FF7DA;
	Sat, 22 Feb 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kGeq+oyg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125281F1506
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 17:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740245333; cv=none; b=aIhC2jVviaubCDeSkiS1PirowJE8sESWCBX9LsXpwGaI7O2cI3MSmRBR/qPWyei09Q8sE31cj6XTdS3Phkv3ZIPVhi8u2M27+x9kSKm6zFx4Vt/7Vd9e1mM/XOY9W1efzylALcnSKshcL3UYRQHv92bg0Bx+q590y5mqJb61tqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740245333; c=relaxed/simple;
	bh=vJ2TvzBgf3FYzERuh9MfR6haCltBjWvwvOErXSCds+c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ssf+JujLZ/KvRZohsL327zV2Ro+UG+yck3vRDkElXKvzQd7P7pFOgueCasyPAfTXSmyELLxfW+JUgCpWhTBzAt4N8V9rO1CUKathTWi36wPpBYF8rPlJ9/Po5DzE1w7MRbVyHVq0t7FyYbWkzbTgSZDuGXdPpnn4tGpwbvDY9A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kGeq+oyg; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-2bcceee7b41so668298fac.2
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 09:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740245331; x=1740850131; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9HB2300uflqiIiUndQgHCnMwg6h8dJJ3C2ou+rEx6MQ=;
        b=kGeq+oygN1JbWPmwxw94IzJoNbLuMWWcf1/oSKxf3TUo/zBalz1jS80HftQ1THafRj
         acRICUdJvhNmSL4hoORrKKmZiACg2GhboAr9Mgp08+1Dv/odj0mwG3AqH/MmfImBVjqx
         Pt/HF8nqhjcca8XZ9ShBbauCZWzD67wQI5Tv68ew5j+t55KdNBoT05c5Am3X1hF5gODc
         JNDDbdl9psO/3kN0dC5MA9MzZNQZYhaaQY44rZILiCMWFI2tkaBFOxM8QpidDBk6vXs0
         zLvt2pdo66qjFDCkwQL/WB26AvfSzuTagnD5Ajn19DUnJzm7IADEmrS8epw5ZBIFCTij
         hErQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740245331; x=1740850131;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9HB2300uflqiIiUndQgHCnMwg6h8dJJ3C2ou+rEx6MQ=;
        b=mhw29h+LHYJQeijegS+DSsAGBa6lgCI+PDvYwZK1S/FF3NHIXfHsWKFHBQtT8IwQEM
         dCrZmCsMWV16d94Py9g44srv1sgV6/mjKgXw36g0wTHUo0xRPdYvvuJlAeGLFYstdhjL
         tnh1kQqh1Xxl8h1jGtKIEtuB/YXx4HFoKv3ELr61v5G6mJfR9oE4boq9ufFRXzSRZu/f
         Rf2Z6NqDORKiWo4MESTiy2+EqOPvz5jEZDel2SKQULVnUL3pPh5JmitJEV+t85bbcRsh
         aCloAIn/eztY31KSw5hIKC5AlMQKUT3QvFWRtaVyP2LtyWK36aeWPJ7n+ARl29ckJ4Us
         hN/w==
X-Forwarded-Encrypted: i=1; AJvYcCWz7HLHSqXglSzBZYeYQA/zymVWF/qacMys1gFSVOkaEA5/vdI39jgoRXIE5n7Zd0n/uapTROC+cEWg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2gLl/Ktb3/d/PDJzmWD/uvZdSeE/96hswAiODGmqVcv5UVNK5
	6xEqKB2Qw9ejVnS6048wDdeIoh/76RSU+uoyvJCL4mP+SNJyQslGybEVhR1M
X-Gm-Gg: ASbGncuY/yurUvWJBk5+C7O1gwOrrXlJHockbLFTXRufcmNABrarBjZQsd1fiuSDKUk
	rR8vFHWFt5mm40Pbtk/JipBctJNK5bayvOBygXWoVJ8BY7bWsv45aNb1SoMplQKResXHeHrzFfc
	t21rZGGDj8810ztynd+itWKp0cggtiMK2oip/PIV6jqyv72MuVUZSBtzc+my4UYgJZ/XnzzIsLZ
	zDONhBzt/fe+2g5ft8ed4tYSQnNNTbmAQo1nPJhRLbQS+khZ8c+XBz613S2FiT3iDCv4FzXldmc
	yawtnx6slvNnvp/4vM8O0FXbFV2OoeLqUsk=
X-Google-Smtp-Source: AGHT+IEMFe+lFEc+YZNmIjaRNRS/0ZWidVHYiCpGOSiTppW75wd8bhABpnWA2+7PGawx6yD39ANwfA==
X-Received: by 2002:a05:6871:710:b0:29e:255e:9551 with SMTP id 586e51a60fabf-2bd50c5a460mr5930657fac.2.1740245331000;
        Sat, 22 Feb 2025 09:28:51 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:996a:132b:43a2:f7b0])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b963a0ac4bsm7244238fac.47.2025.02.22.09.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 09:28:49 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Johannes Erdfelt <johannes@erdfelt.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v6 3/5] arm64: dts: rockchip: Add Orange Pi 5 Ultra board
Date: Sat, 22 Feb 2025 11:27:50 -0600
Message-ID: <20250222172752.6254-4-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250222172752.6254-1-honyuenkwun@gmail.com>
References: <20250222172752.6254-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RK3588 Single Board Computer includes
- eMMC
- microSD
- UART
- 2 PWM LEDs
- RTC
- RTL8125 network controller on PCIe 2.0x1.
- M.2 M-key connector routed to PCIe 3.0x4
- PWM controlled heat sink fan.
- 2 USB2 ports
- lower USB3 port
- upper USB3 port with OTG capability
- Mali GPU
- SPI NOR flash
- Mask Rom button
- Analog audio using es8388 codec via the headset jack and onboard mic
- HDMI1
- HDMI IN

the vcc5v0_usb30 regulator shares the same enable gpio pin as the
vcc5v0_usb20 regulator.

The Orange Pi 5 Ultra is a single board computer powered by the Rockchip
RK3588 with similar board layout as the 5 Max but with the HDMI0 swapped
for HDMI IN.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3588-orangepi-5-ultra.dts  | 33 +++++++++++++++++++
 2 files changed, 34 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 57c5c013cc08..d068b9018cf4 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -151,6 +151,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-max.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-ultra.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5-itx.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
new file mode 100644
index 000000000000..fa975c5db0ae
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3588-orangepi-5-compact.dtsi"
+
+/ {
+	model = "Xunlong Orange Pi 5 Ultra";
+	compatible = "xunlong,orangepi-5-ultra", "rockchip,rk3588";
+};
+
+&led_blue_pwm {
+	pwms = <&pwm4 0 25000 PWM_POLARITY_INVERTED>;
+};
+
+&led_green_pwm {
+	pwms = <&pwm5 0 25000 PWM_POLARITY_INVERTED>;
+};
+
+&pinctrl {
+
+	usb {
+		usb_otg_pwren: usb-otg-pwren {
+			rockchip,pins = <4 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&vcc5v0_usb30_otg {
+	gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
+};
-- 
2.48.1


