Return-Path: <devicetree+bounces-178234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A67ABB1D1
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 23:59:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 187CB17444D
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 21:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 440CF2080C1;
	Sun, 18 May 2025 21:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FEU+nh2N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645C84B1E5E
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 21:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747605592; cv=none; b=HdlE5gqzP/ifp8m9JBthLzo6BiB/Vog8l24n0QecvCR1rAG3kSXimxxV8EbtP7800VI37oNmsYbCyQ47K35kZuGa0XlsAhJgNN+SuGLl4xM+ug5rmP/WoH7Bh49neaUick03Q3/uRlLamP9p+mnwI8yIyI7yA78YRIuEaJMwiTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747605592; c=relaxed/simple;
	bh=qD4Len71lN/+eSBB4A1LN1AmO96h4ECdLpj3AZ2M8s8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LnUkkLTMLH16uimS89M/McLf+QLjUDLNLh/KJZqY1cMS8ZZTrUxpNtFEuTjV0wgSI+zdVm37lk0D91oMQa1eSeCqYGnO6svaizkDzVGGpVRuVb0PHijwpIvpYDLEwuxVfTdHATZrSF9rq4WrtCtXVuQ0yOtcdOYeQRxsiWRPYf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FEU+nh2N; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so38967765e9.1
        for <devicetree@vger.kernel.org>; Sun, 18 May 2025 14:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747605588; x=1748210388; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+xC9UkJXY5JOXOk/2b7g0F3PoOZpaKShkIk0Mc9SNGk=;
        b=FEU+nh2Nq8y58RtIiecf3RyZZGSp0hNdE0u8Kgfx4Ga8JB8h+peX4JI2dqHoRgfFDG
         KQPlSlU7N1ytUJADufpHtZA3pKZIt09wGznCxzQHQ9hduxDUh1zoFpciDrgZnhGeLmgf
         8mmSRXDehqje7iszR2jBh4JFdZvHac2UnZZy3wqSUbJ2osPomTJs+cqjr+qZujajyRzo
         Kq4Ltk2JF9+4N8VXs8j0NZl/SOfILbQOM2/TSy060BqxKRf8LgVHHhevVGypT8nEoIlD
         m/69kvWpBtlnn3a64QDkAEU8Wdc7ViD8YdnjlMEOKGoZ7WdSMa/JqHy3G05PxyFCQLi0
         Strg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747605588; x=1748210388;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+xC9UkJXY5JOXOk/2b7g0F3PoOZpaKShkIk0Mc9SNGk=;
        b=uXjtdr9JJp3nSJDAR081itfQqKDxBXcQJZjqh/wnypIG8z4gwXoZmTBt/QcTbltjF0
         aZePXVjgVR2XOSiTRueYmRTLUCq6THYlVuHiyeCtDh47YbmAQgMF5nT1VRmOhvZgCgQw
         JNIDCh2lsFNUy2Bdf1ami4i7sKvQ7HZW8ayVvR3S/KKkJtuZR7f4MrumyDdasf+fwiMj
         oEB66SUEDa9v2abgz8GTRZz/J666U1ye3npruwdoYNd+9siCQ1hfuiExa23EEUnU/y5z
         rq7s6XtR39/JGx14yoVVdk+jB16Gpe4njftMKqBiJVfzVxpusT/YlVCbeD977Eya6U4h
         f9nQ==
X-Forwarded-Encrypted: i=1; AJvYcCX43cPWlzHwN1lXbVqklXT2UG5hMV5RBI5aBlpNmpUmdu1ITrNdiji+nRM+mbPMUL+6Y9h9QHA0DAHY@vger.kernel.org
X-Gm-Message-State: AOJu0YxmiuqFSwseqHdVq4eeOKAC2eWFyuetsn0sC9X7V4XWJbi1t60u
	gOv7pP2lrSM5NbZRpfjoCEoAmalnmBHwTxYvEyNupCudN7ruBdC/pI0U
X-Gm-Gg: ASbGnctejOSLQrTrWdCff9KqcxOtBlGw8YDz6R18/rwz2tMlPRu9A8BVKfEGWU9BbwT
	usty7QoS3Pzd+bVNflLHPMoj7sXeXmO/09zewdT4tcosYBCElzA5trGZLV/xIlAGsJrgWjAQ3On
	klNrPjTJ889QGY30ZzU/YhkK/Z5PhhTLK5FIQcXttdnO6nSu7tKEWUAnNJmBHXWQKcF0HqN8DuN
	YJz/YqMb46OC7gbWbG8rkx2HvWbHu2UabhBp/i36IIh04p+Xo05p0UDlwkf31utx6Zyr2+M+GPR
	8DVG/qM6pFhm2rj+ySa/JuSQzguaM6bK74DoU/XdwLPmCaPlZ+2/mT1lXgsopOcC9qyCKc3hGzO
	bS98GmhzwiXKEVCkq6U5/QT89rQybZhATMUpjAZlGz+rXQaVQIp0FP3GzlXZSbP6TrhNLeeQpny
	Bwz4XWZfKm0w==
X-Google-Smtp-Source: AGHT+IFvLBK7QKQLjbsresGOshkAq1Y2KEzfkr14fsl/n+XnbtnLa4n6aQg00/piBwhOnMY4ArgxzQ==
X-Received: by 2002:a05:600c:3e18:b0:440:6852:5b31 with SMTP id 5b1f17b1804b1-44302ae93ffmr91509075e9.10.1747605588447;
        Sun, 18 May 2025 14:59:48 -0700 (PDT)
Received: from cypher.home.roving-it.com (2.c.4.1.7.3.6.4.2.a.a.3.0.f.c.2.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:2cf0:3aa2:4637:14c2])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-442f39ef81csm185711995e9.34.2025.05.18.14.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 May 2025 14:59:48 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Peter Geis <pgwipeout@gmail.com>
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: add overlay for RockPro64 screen
Date: Sun, 18 May 2025 22:59:34 +0100
Message-ID: <20250518215944.178582-2-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250518215944.178582-1-pbrobinson@gmail.com>
References: <20250518215944.178582-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Pine64 touch panel is a panel consisting of the Feiyang fy07024di26a30d
panel with a Goodix gt911 touch screen. Add a device tree overlay to
allow the display to be easily used on the device.

This was previously included in the main device tree but left disabled
by default which still required rebuilding the DT to use the device, now
overlays can go upstream the overlay is the best way to handle the
add on devices.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  9 ++
 .../dts/rockchip/rk3399-rockpro64-screen.dtso | 89 +++++++++++++++++++
 2 files changed, 98 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.dtso

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 3e8771ef69ba1..c7b13bff3ac20 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -77,6 +77,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-screen.dtso
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
@@ -209,6 +210,14 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou-haikou-video-demo.dtb
 rk3399-puma-haikou-haikou-video-demo-dtbs := rk3399-puma-haikou.dtb \
 	rk3399-puma-haikou-video-demo.dtbo
 
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-screen.dtb
+rk3399-rockpro64-screen-dtbs := rk3399-rockpro64.dtb \
+	rk3399-rockpro64-screen.dtbo
+
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-screen.dtb
+rk3399-rockpro64-v2-screen-dtbs := rk3399-rockpro64-v2.dtb \
+	rk3399-rockpro64-screen.dtbo
+
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-vz-2-uhd.dtb
 rk3568-wolfvision-pf5-vz-2-uhd-dtbs := rk3568-wolfvision-pf5.dtb \
 	rk3568-wolfvision-pf5-display-vz.dtbo \
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.dtso b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.dtso
new file mode 100644
index 0000000000000..26899cd67fc9b
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.dtso
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2025 Peter Robinson <pbrobinson@gmail.com>
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+&{/} {
+	avdd: regulator-avdd {
+		compatible = "regulator-fixed";
+		regulator-name = "avdd";
+		regulator-min-microvolt = <11000000>;
+		regulator-max-microvolt = <11000000>;
+		vin-supply = <&vcc3v3_s0>;
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <5>;
+		pwms = <&pwm0 0 1000000 0>;
+		status = "okay";
+	};
+};
+
+&i2c4 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	touch: touchscreen@5d {
+		compatible = "goodix,gt911";
+		reg = <0x5d>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PD5 IRQ_TYPE_EDGE_FALLING>;
+		AVDD28-supply = <&vcc3v0_touch>;
+		VDDIO-supply = <&vcc3v0_touch>;
+		irq-gpios = <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>;
+		status = "okay";
+	};
+};
+
+&mipi_dsi {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	clock-master;
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		mipi_out: port@1 {
+			reg = <1>;
+
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+
+	mipi_panel: panel@0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		compatible = "feiyang,fy07024di26a30d";
+		reg = <0>;
+		avdd-supply = <&avdd>;
+		backlight = <&backlight>;
+		dvdd-supply = <&vcc3v3_s0>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
+&pwm0 {
+	status = "okay";
+};
-- 
2.49.0


