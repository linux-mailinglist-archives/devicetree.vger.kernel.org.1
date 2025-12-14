Return-Path: <devicetree+bounces-246339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDB2CBC099
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 22:53:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EBAD43010E07
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 21:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C79013161B7;
	Sun, 14 Dec 2025 21:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZlMt59Yf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF29315D46
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 21:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765749190; cv=none; b=nspnfEoxlghUGmRZpapv2cutBgz01VqiFQi7jXb8Ds4tpExV045I1r1m+uQRr2op0P4HGYfq8g5gDxsqopG2T+YliftTl8pALU1JR4Deyl7bjljzemYfMS/OkDanv6cf8YxJeS68iPk7aQFb9pctvw3AvBdrykkJ2Sb8Rvzrnns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765749190; c=relaxed/simple;
	bh=pHb+MbKsBipKUwGTu3kQtoRDAZWFgKIfAJmq86q5exk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TLOloY53L82YLOjLZLEBwhgSywHVbSU5p4BJp5D5IVyEE0VgR/fjH0eXGCUv9yETZlPyPosX74i1B7CPuRd0cRye7m1EDi3gKuwj2XInTt4fi12gTILrMgOw9QqV+pETxhGQXFfd8MsEHyfyXaskeioD/PzLJnV68xrsqbcH6Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZlMt59Yf; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-430fbb6012bso340806f8f.1
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 13:53:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765749187; x=1766353987; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2F5uXP1gOIQBrzq2hOBarI+Qc/GCCuzwKt4gk60y13U=;
        b=ZlMt59Yfm88+CicqtzXgre9MCwXQbMyUQkuyPAi7VFCkbTDbh2ZQi2rhieuggYEcud
         583dXGAIAkR0E6Z+onN5zDURPLUa+uhnWbuCIshiKNASSFYYaT5jFOMGQbmlRaCgI74C
         hp5v1jy6/40I+QkRjHlPD/3bA5dXo9N82kuSkfxGf8M7e/FGZzbKUIsDj3mDYv+7c0+c
         s3HObSiE5kjNXaAXpm+nVI1V/NZhs7eXlbomkCp6lh4ajPscILyrCP7NLbIbN/Lf056V
         a8awnVHWJ3x6edCW9oclsWBXHhGVzo3GoU89gNUelLh+jEanVGF+1tHRAzftjq0R1uL4
         2d6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765749187; x=1766353987;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2F5uXP1gOIQBrzq2hOBarI+Qc/GCCuzwKt4gk60y13U=;
        b=bcB4EiBhXn/hWAQH1As8p6exhao6NNWTWBTVKGzhKHZxj6QwX63ORQzsSuMq713ipp
         V8gsZYHok8y57DPtDI553L2aU09bewRWxiZfT7IJgVHXxLd1Rh9ZqWRyQj1EtuNkTg0+
         tjQZO+xkGLt09D7XoTcDAI1qiadq1yd8WWt2e0vHtHiTlLxkSJMi80rph1FoyQ5Tiwo4
         Qud3eQuJfHANy4M0q9o0jN+U1aqnHaWVEF9p33xTnBqWO7ZjRgn5U1P8voBeDE+I50Iw
         U5S9mGatOBfp4z/e1TwEj0rpN9HzhEOF8Ztw4bsJWXm7mmGy7IWnvo2Tq+GoPELHUaDE
         lJCQ==
X-Gm-Message-State: AOJu0YxIllnbjnCX1dktTeksnkvtyN/rVUzjxlp++BRuRJv6yStVLOJN
	eZZKgHtqbWMrjvmsiiCCH/9KZJN98ooEjvXr6VTrWttVD5tgVGa+E5x7fjyaArut
X-Gm-Gg: AY/fxX7t+IVtVlQ6rtp9NPOzNt1MDLzVfFzvcP0XySX3jFYnF7lPNM/OaF2vdRIF1IA
	D0/aOFIx93deY3xHf/JAPm8XsM/xmtAwPH+FoM3RxP6hE/Fe/Ks4xLorAWuJbrf3UAXsFyAjb/n
	2RSV1JXGciiiB9lZEq9YLG0ZZVMJmTeVuqwdzdwNKkKZtPJmWCiQa5uWpHY8Im0CzMEYZqHbcqh
	A+3RJG07+v4b0KfIFuMIhyMNipeGY1gK4zFe2UTvLBXbX97r7d2huxBIt+chIPgtBqKM2foFDRJ
	dzWlKgfLqvL4f9xu1OKb7+71OtFAdQz5J8HRdDo5he9dqxWR3d/FfY2Hn2/xyF6WXFDnDJoeL8n
	l/a06EJjpjuzvWNXmp+ItgPNvK1Iw+Em0FT9EQW90bG8RbN6pwj8zl5zWPeKGjikbKq0f0FdoeP
	iojd6Z2Zpfc9rcvWNt4eT2J6YXDAbRYt/Z+JmPO8rKlJEiy1NRgDTm6Ke+91o7ztjCK8FjqR/U7
	m8NFTvdFomJ8Xo=
X-Google-Smtp-Source: AGHT+IH5q/7aBvJPjnjOG7E6nhAeBZKXJqEYSxCBGInW+6pZRSupN9zJSXDFPB84qoKhL9ZS6X1B5g==
X-Received: by 2002:a5d:5d0e:0:b0:430:f3ab:56af with SMTP id ffacd0b85a97d-430f3ab5950mr5281059f8f.48.1765749186695;
        Sun, 14 Dec 2025 13:53:06 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f6a42c8csm7625568f8f.16.2025.12.14.13.53.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 13:53:06 -0800 (PST)
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
Subject: [PATCH v4 4/6] arm64: dts: imx8mp-var-som: Add WiFi and Bluetooth support
Date: Sun, 14 Dec 2025 22:52:51 +0100
Message-ID: <20251214215256.5812-5-stefano.r@variscite.com>
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

Add device tree nodes for the WiFi and Bluetooth module mounted on the
VAR-SOM-MX8MP. The module can be based on either the NXP IW612 or IW611
chipset, depending on the configuration chosen by the customer.

Regardless of the chipset used, WiFi communicates over SDIO and Bluetooth
over UART.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../boot/dts/freescale/imx8mp-var-som.dtsi    | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
index 5bba91dcef17..2c49d53e30c3 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
@@ -21,6 +21,14 @@ memory@40000000 {
 		      <0x1 0x00000000 0 0xc0000000>;
 	};
 
+	iw61x_pwrseq: wifi-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		post-power-on-delay-ms = <100>;
+		power-off-delay-us = <10000>;
+		reset-gpios = <&gpio2 8 GPIO_ACTIVE_LOW>, /* WIFI_RESET */
+			      <&gpio2 19 GPIO_ACTIVE_LOW>; /* WIFI_PWR_EN */
+	};
+
 	reg_phy_supply: regulator-phy-supply {
 		compatible = "regulator-fixed";
 		regulator-name = "phy-supply";
@@ -202,6 +210,33 @@ ldo5: LDO5 {
 	};
 };
 
+/* BT */
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>, <&pinctrl_bluetooth>;
+	assigned-clocks = <&clk IMX8MP_CLK_UART3>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_80M>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "nxp,88w8987-bt";
+	};
+};
+
+/* WIFI */
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1>, <&pinctrl_wifi>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>, <&pinctrl_wifi>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>, <&pinctrl_wifi>;
+	bus-width = <4>;
+	non-removable;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&iw61x_pwrseq>;
+	status = "okay";
+};
+
 /* eMMC */
 &usdhc3 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
@@ -222,6 +257,14 @@ &wdog1 {
 
 &iomuxc {
 
+	pinctrl_bluetooth: bluetoothgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_DATA7__GPIO2_IO09                              0xc0
+			MX8MP_IOMUXC_GPIO1_IO04__GPIO1_IO04                             0xc0
+			MX8MP_IOMUXC_SD1_RESET_B__GPIO2_IO10                            0xc0
+		>;
+	};
+
 	pinctrl_eqos: eqosgrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC				0x2
@@ -256,6 +299,48 @@ MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04				0x1c0
 		>;
 	};
 
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_ECSPI1_SCLK__UART3_DCE_RX                          0x140
+			MX8MP_IOMUXC_ECSPI1_MOSI__UART3_DCE_TX                          0x140
+			MX8MP_IOMUXC_ECSPI1_MISO__UART3_DCE_CTS                         0x140
+			MX8MP_IOMUXC_ECSPI1_SS0__UART3_DCE_RTS                          0x140
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK                                0x190
+			MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD                                0x1d0
+			MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0                            0x1d0
+			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1                            0x1d0
+			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2                            0x1d0
+			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3                            0x1d0
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1-100mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK                                0x194
+			MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD                                0x1d4
+			MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0                            0x1d4
+			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1                            0x1d4
+			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2                            0x1d4
+			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3                            0x1d4
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1-200mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK                                0x196
+			MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD                                0x1d6
+			MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0                            0x1d6
+			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1                            0x1d6
+			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2                            0x1d6
+			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3                            0x1d6
+		>;
+	};
+
 	pinctrl_usdhc3: usdhc3grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK				0x190
@@ -309,4 +394,11 @@ pinctrl_wdog: wdoggrp {
 			MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B				0xc6
 		>;
 	};
+
+	pinctrl_wifi: wifigrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_DATA6__GPIO2_IO08                              0xc0
+			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19                            0xc0
+		>;
+	};
 };
-- 
2.47.3


