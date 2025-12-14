Return-Path: <devicetree+bounces-246298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C703DCBB9B7
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 12:07:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7FD53301C946
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 11:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEC502C0277;
	Sun, 14 Dec 2025 11:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MRpVOO3a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A1B2BF3DB
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 11:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765710358; cv=none; b=az89CPuk/XiOx1H8/dMmrE3z3qckvgKjPwe0xm9UCF2xeJqQOT2Jz1HwokcRbfVN4xriRrMALmQgJq0k7rRAffFlpIzFkfuzkhdvkGhipEH42m/ExUICUPcEpnIuZOC4ieDUClsck7hr/nJzzX/9YyIZGtIQwBj3HQ2B8XASgSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765710358; c=relaxed/simple;
	bh=pHb+MbKsBipKUwGTu3kQtoRDAZWFgKIfAJmq86q5exk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XXsf8d79BsJE7oMKMuGT+d7uo7uMypm7Q4CvdsfaDg/2iMgyoSeN4Tnp3u+M+baDGupuxEDzy2yBhqxetutY40CTH56FGY1MGEPoYdbvYiqUY8xUTNLWuOZ5XmdUpBneuzlioFbVaFL7qk5L3pkcyqyY5oezv33qpV2c6gq4TTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MRpVOO3a; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-42e2d5e119fso1133490f8f.2
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 03:05:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765710353; x=1766315153; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2F5uXP1gOIQBrzq2hOBarI+Qc/GCCuzwKt4gk60y13U=;
        b=MRpVOO3aNdW2p195IMohZywATlwFd7F71m0Xwzb4j3t5DRezFOLujgvVkYROzE33wD
         Wfgo7t1UX9SU68xdwIaVD97r1nl1wLy8Q0+ZIP+7+hzQ9svuMvNznl811J3PbBTEtVn1
         qAXRTMaSTYRv6WBQB90wv54b8wbf4s4fy9euRNfFbfvWYgyP7k6yOvnGHiIi364UzOmZ
         EUf1puKlUE1D6+sMZYJeQLjuuOS7IdwB4rsakS5XNKo3lVrIDK7gK5GVmxjJd+hvrOMu
         NR3OShsDtZWH/f0Cui6UXl6qcXiTJElfaVmrP7Fbe9vZhNcCW34e4CdeOodIUKP8VLHi
         ff9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765710353; x=1766315153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2F5uXP1gOIQBrzq2hOBarI+Qc/GCCuzwKt4gk60y13U=;
        b=fx+TQ5eaRHFB/bgqK3QVM8NdTSDhJZqpoqZ5XunB9672ZE6fve85lzwumJax0svXoc
         NIebA/XqCpsiUnzf9OYegsm7/O2k3GTRBiVlQJBUSsZXZ3A3V6Aa1SMlQCHXjHb0sA8R
         07Oh+Y7PtcxD68PAyzFWsZucvhxXX7sBnr/cRE7whtaF+mIfddHBrZuhvGQ5RNsLfK4P
         vtg46cSrTy0KjV/ddloCqm4Qwlvp/m5tgnzJ0K2SJaiWNmUye/L35ztYdz5qLAk93FLT
         UP+8L1xnbcuA8Z2w2KZAbQ0oczjoR4a+JV4tmCCx5EaKtRTCFmYAxzejxXXw1alDnbh5
         t/Lw==
X-Gm-Message-State: AOJu0YyxV1Inty2ELzQUdEtdI39oGeQfp7S7b5XgyGOdf6j/hZs0X8qr
	JlG2MmBx+P1hQ56uxW9jZBRLgGaSgD4/pEYwL6trl1HVoFZF3fbv2NOFNkrcO7PC
X-Gm-Gg: AY/fxX7yqpxf4Uw3LirOlARKQRjKSJ3JS0h/Qds+3PLtT0oPID/ExEHAubHfi5vOh8H
	OIOV3ioHruLx9WS8yQTIz/sJ8jq2ojBoeN2GMpSci5Yi2FyPagjAv6/ynAPQWF5gwynJs+EhxHs
	oD+GZVEqNhtSvZ1i+PHDIKnO4t3qiWGcgHIANB5p0EGjKAehpBNoJnIz3+ZGQ/sXKaPt4Bz+Udi
	Ybp15Y0tizGftUlrPfYjdQXna4qYJnqc9tENupbchvzSH2moI6jrjdS4X7brp1zZWmM07k8JjAg
	2Hv+Nl6MNc5IX9BGBO8kFTKFcpWpFDT3rhflp477MibHPPOxFF7ip9w19gDsW1NcEe3Zc0iuBI+
	aNd07fTZNFaQ5z9Y0n02cGeQsTQmL7MAS5OTKLoT84IKRs5iQNQiboRzgtJ2te6xmxaNeiQe90P
	YcpLJs/j4hYIHN6B7RRhttE2WAQo80IhQutYe86aOEaPgWlUehmQ/UvrMGmsmnSMfiEJIQZfDUH
	G6Ggz1A8ecdGl0=
X-Google-Smtp-Source: AGHT+IH2w6z+SU0eHU6NOuPA4iQyXCEAi3j85watwL907LSzJ3TbJ27HKuMsKAPlK6Wr9/bCIZ3zVA==
X-Received: by 2002:a05:6000:2585:b0:42b:40df:2337 with SMTP id ffacd0b85a97d-42fb490d6fdmr8806346f8f.50.1765710352872;
        Sun, 14 Dec 2025 03:05:52 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f36b6a19sm7823660f8f.38.2025.12.14.03.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 03:05:52 -0800 (PST)
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
Subject: [PATCH v3 4/6] arm64: dts: imx8mp-var-som: Add WiFi and Bluetooth support
Date: Sun, 14 Dec 2025 12:05:27 +0100
Message-ID: <20251214110531.9475-5-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251214110531.9475-1-stefano.r@variscite.com>
References: <20251214110531.9475-1-stefano.r@variscite.com>
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


