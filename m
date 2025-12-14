Return-Path: <devicetree+bounces-246341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F06CBC0B4
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 22:54:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1BFAC300EE40
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 21:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7560A3164A5;
	Sun, 14 Dec 2025 21:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hAWSlN9+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFC63161B9
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 21:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765749194; cv=none; b=GdSI6vtkLo9T49bNjR1h/E1R1Se584YV9zZpiXmfIRArW6M9ZCXrg7iis6Mn3ohuo7FVXRjGa1q1Rdk+EszAQl31xdb6KkXNIxqdnifidquvyuPfKwoZHl2LeczpM226cf60ZeVmcmaBYit/5winZz/Cj+71soa2W3FSN++iQPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765749194; c=relaxed/simple;
	bh=aSpybkLoe5CnA4HYcJhOwk25yxid6o9UNHL3aNFzoJY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GRakbIOmlSTzRvRUs3QYx6N7x4vbN9PcMM14hckVPVOyITF65O0UvDiYz187wSw7l3bB1b4Z1iM8hblYldRqFA4S73NguugNA/vGXJknlkPd8LVGW4o4F6/TRqFHNhOYV2Cv0KIMz7UeYBC59cgkoEfNN2TNBfv9SXuUxqePxQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hAWSlN9+; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47774d3536dso28073115e9.0
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 13:53:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765749191; x=1766353991; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tM/GDAHbcq8iQ+ECF/3alHpWVJkwLioPe4BjvZMs1mE=;
        b=hAWSlN9+fuWEACvM9DWTcOr739EqZIcuP1jIE7JO4L/k4b97Ydb18cXPEXYdOp+oLN
         HA5b2LjHBUbP844NhoKElp7C+hCedY81TnGVYD4ZEOfdUAFnLCv8pTwC+5Pc5Z4f++6q
         JJb0ZsTTovQu9UkYhgblvIQODTegO3Tsu/PCF7PUjjlBLEGVdrh18E7h85Sk4LGVynd4
         AhRItWFwMBDMl7sf/d705bBf03kwXpUntElAZuDH/jGka1s+dfIFDrsE9JY3Uj3yU2ST
         k8hXd+oxygaeyfhYUB0we6AmjRLSjsuGBnlUHRhCtt1nYcTqMSJAux1i6nsaanRrLiB/
         QDIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765749191; x=1766353991;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tM/GDAHbcq8iQ+ECF/3alHpWVJkwLioPe4BjvZMs1mE=;
        b=m8aUzGXyCRLs174J+dyQ2aKwm2AR048VmwNQQxhDGdyXvs2Tb9SRloKxSnX6YaCDQa
         +rgyBgYbVjMlnBmGnXL+1n6AoNz5iZ9LJU6irnfhUjibQBXZ3habRyhuhoLZrgMuuJ/m
         ia7R9NCxlhrJH16z32cUN1ZEoxHhjnZqiFmTa1ibpPVP5N2c021fKKQUxn5Oxs8gfyc9
         TEJjaHIyqhhDfo7C90bbVeIcQfmHG0b3H0ikEOZldoZvrIPEAzoKx2Iuv0e+5qQQNsol
         YDXflHXSDOKpObLfL8vXyxy3t4hJXRBpuzr716DODyEIUGy4WEJg3tYXSwAPCuu/Plx7
         Bbvg==
X-Gm-Message-State: AOJu0Yxr258qxTOnhF09jRe/5eyXnluS4UfFFG1/enZ4xu2WmMpnIhOK
	5lH9CCclPNy+Xh3AYOrH8gVcs8K32qynMDIEu5bqWtgCOT8bf8jFOdFzK3tKGEKx
X-Gm-Gg: AY/fxX5/ZThvEEqkuyuebJqqGwFjk37wsNLS6z67yXSYkOYalzvskIpevns1URFnJkO
	1nL0R537Rg19ja1f1DXVMBSVt2mIvzZYPe0JTlMmhvbutUlioiJXTTANIIywyv+m6xGHhb1qu1M
	VkxA6YQ+4Z+jTLxOLI4zQEum6/0sKv4WPwGnRgy3nNOIeC5DtH+Eng0iQS48PIKQu1s48BpjTYv
	w4kAMnxWqJRqbGPExruGWMvXhor6Tn8vP+vQ63aHAXUwRgHk8+llvuP9J59aZPrhJgbyE43QPP8
	E/y006OITc14g/pIh7q58J7QssUgyiXQhLymgG7h/kOEg6nFS+OCHfSj3LnLHOTsyl87ZMNV9s4
	37Wb7JStNxTVpg5lmxFqBHJXSGpG/KwrJFLojNiXXoJ4PamtMyaPSNIe8//oXSM/XyDolO/AxMz
	BC3KCSX9iEOwWPmTcOZLiHrQlG4SbaqlYQR1fXRvNU8WUScJAgpqHVMJPhmquHjx29KqD5a5dgK
	TsiI70H/H/selk=
X-Google-Smtp-Source: AGHT+IE0IMq/1tUZxhnQGiJzgtJjbUC5CSa+FGAkLQyEctAaGf7usWM7SccW7nJPbd0Qiddz4/h6GA==
X-Received: by 2002:a05:6000:2908:b0:430:fcbc:dc52 with SMTP id ffacd0b85a97d-430fcbcdd84mr1760945f8f.30.1765749190606;
        Sun, 14 Dec 2025 13:53:10 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f6a42c8csm7625568f8f.16.2025.12.14.13.53.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 13:53:09 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 6/6] arm64: dts: imx8mp-var-som: Add support for TSC2046 touchscreen
Date: Sun, 14 Dec 2025 22:52:53 +0100
Message-ID: <20251214215256.5812-7-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251214215256.5812-1-stefano.r@variscite.com>
References: <20251214215256.5812-1-stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The VAR-SOM-MX8MP integrates a TSC2046 resistive touchscreen controller.
The controller is physically located on the SOM, and its signals are
routed to the SOM pins, allowing carrier boards to make use of it.

This patch adds the TSC2046 node and the appropriate SPI controller.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../boot/dts/freescale/imx8mp-var-som.dtsi    | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
index 6da5df11c44a..49467b48d0b0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
@@ -100,6 +100,37 @@ &A53_3 {
 	cpu-supply = <&buck2>;
 };
 
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	cs-gpios = <&gpio5 17 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	/* Resistive touch controller */
+	tsc2046: touchscreen@0 {
+		compatible = "ti,tsc2046";
+		reg = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_restouch>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <12 IRQ_TYPE_EDGE_FALLING>;
+		spi-max-frequency = <1500000>;
+		pendown-gpio = <&gpio1 12 GPIO_ACTIVE_LOW>;
+		ti,x-min = /bits/ 16 <125>;
+		ti,x-max = /bits/ 16 <4008>;
+		ti,y-min = /bits/ 16 <282>;
+		ti,y-max = /bits/ 16 <3864>;
+		ti,x-plate-ohms = /bits/ 16 <180>;
+		ti,pressure-max = /bits/ 16 <255>;
+		ti,debounce-max = /bits/ 16 <10>;
+		ti,debounce-tol = /bits/ 16 <3>;
+		ti,debounce-rep = /bits/ 16 <1>;
+		ti,settle-delay-usec = /bits/ 16 <150>;
+		ti,keep-vref-on;
+		wakeup-source;
+	};
+};
+
 &eqos {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_eqos>;
@@ -347,6 +378,15 @@ MX8MP_IOMUXC_SD1_RESET_B__GPIO2_IO10                            0xc0
 		>;
 	};
 
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C1_SCL__ECSPI1_SCLK                              0x12
+			MX8MP_IOMUXC_I2C1_SDA__ECSPI1_MOSI                              0x12
+			MX8MP_IOMUXC_I2C2_SCL__ECSPI1_MISO                              0x12
+			MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17                               0x12
+		>;
+	};
+
 	pinctrl_eqos: eqosgrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC				0x2
@@ -381,6 +421,12 @@ MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04				0x1c0
 		>;
 	};
 
+	pinctrl_restouch: restouchgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO12__GPIO1_IO12                             0xc0
+		>;
+	};
+
 	pinctrl_sai3: sai3grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_SAI3_TXFS__AUDIOMIX_SAI3_TX_SYNC                   0xd6
-- 
2.47.3


