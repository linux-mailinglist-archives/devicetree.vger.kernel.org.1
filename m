Return-Path: <devicetree+bounces-246271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B23ACBB49E
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 00:09:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 670C33011409
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 23:09:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19CCD2F6166;
	Sat, 13 Dec 2025 23:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kUNKXKhc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B864285C91
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 23:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765667373; cv=none; b=VLE2FjFdC4YzbfApuDQ75jSDSwcvHSQeJXufoeBuKNuhw1YPtu0LBHcEdK5sG1g+8BjwfsOOeYEriaIY7krYGJQEfuqdgUQ2XxJxQPHSgsPngmU/YUS/Z5gM+f8pIsfGWRmRrCg4wTcgoJhDY3famoKGpAWoDPzvAzbqIDucDww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765667373; c=relaxed/simple;
	bh=7ljJ05ztTohJDBRhGnpzl50vRdnwmAmrwNkbp/q570E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uYlNXV5epMz21vAPyJ9l+s4B6PJ1Epn/WeqV1xxYWx6qDTKbvJBwdb7Jewa4iNz1yZ4IkQMLKPEOBVKKzwHF7WjJCS/BK9CAKmwav5dlDwrN2Thspg1AhuMoEr8eFvBriGNFrea2kKPu/NpoN+H9a1vvvFYUkb4EIgUdq7P32LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kUNKXKhc; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4777771ed1aso18199245e9.2
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 15:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765667369; x=1766272169; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d98j53CwylYGkDXzrv9xLEHUO5ol14s3GpQ93nPd4ok=;
        b=kUNKXKhc3ERuLrBYyQ0LoubsIjKQvWjCjKPkpECtd268ConOgl6k1WCudbHJ0V4FqI
         y1iuZjkFTuvmnGt7JNeRJQKCB0F7gFCPWdufR53m5J88xNVxFoont6GdsN10CHuTZsjT
         4HkAEFzX2OwA+IxSSYoUezGsI5YYt3CByHYcsCgbOcg4B2MTqlr8Gw6LOEpLqlIAj/GF
         Qwz7+LqIh1NN34BZwioUkETmas9n9/fmVL5T8Ivh0k6TTPyrZCfpnla8tee8ZoxjcYJ6
         UCctd5q8JIX6zowyKAUERt3J29hh+VOTLtB62iLT/LuO0CpNxoGHs3cAULWGSFMo2O8i
         m4Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765667369; x=1766272169;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d98j53CwylYGkDXzrv9xLEHUO5ol14s3GpQ93nPd4ok=;
        b=VGCmOP6tXJZMy/03hcSCE8EU1WAmkmNhLm12RbmF91YZbZrNk6lywNsAQ4/Axygfxp
         csfOa21xw6ZfrZjFq8LM8te0kdT0synoxkcR6aN/aaRwUxpw5es69P/wDuZ8z78Ok06w
         DDVdvWYiIuufL+ymcqg21pUiVjMHGl9IBA/UNBIg8wH6PaRSy6Mz77aQIFkTrmpfCF6o
         KuLTqOg8+DrjJbt8VApfvQYi0UNWyUa3LOWiC4nMhMPh+1tvNFpr45gUw9TrbWlj7HQI
         OtLX7GBubMk6GoM4EVnjgsm9a45OhtwycMuV+8J9gCOrPoBYN2A5K60lUHD6EiQiCmax
         BTrA==
X-Gm-Message-State: AOJu0Ywp30XMoH2B/G3gScPhaOC0y7IdK+eDRit8BhCRvJc0vRWDMB+1
	XxUS8Baffwhp4lN5zagYO9qU4u6XrOZT6OIrTEC/g1Z0Xin3MWbpv8M41xpXDibg
X-Gm-Gg: AY/fxX6kgrp8fRLfXmDhpl/xTnAI0HQr+zjaSs0JAWwHqHIoW79zJA5sn/agd2I6IoJ
	KFvq5aLhAlyDkgU08/TPuDZlYcck4oZ5/sypYv5TnK1bU+YJ0ZoyDoXEFUKjdLi2OCWsCXhNIRe
	ezTFfVGK+FLL87qRtJ6sJTRCjCUxLAliGcfq2XuMg9wS+sDZy10TELQm4jjhedj/i4Z3XC1qAvO
	aaZR7Knq1OpD2CIx+aDQOpW9EV4OX5uE2h5tn946e7PAqRwNWf8a90mtfnbpeDykqfLmkY+UG0o
	tlHb9LDPjFbFhpXshrepTDs5p1fbXG/Y6GTaWZkh/0ZtsxNZeJpI1NrA7HRQZYvNDdXzeviFH4f
	Wnr7qrnAxeHVuVpi9pBhFnY/ZgioOxdnSvlTfsdAnJCTGu+3J8zTkc8aWoKdCOYu1ESW6W59QBY
	r1R2C2uLFnTNQ+MaU4cRePhdpX8z+DllYj6u0R8kON0ZQZjfGFoP3D4mXYaAFY8pe7yLJIJbRSu
	/2AybWIzIaOodM=
X-Google-Smtp-Source: AGHT+IE0i0OHG9zPGssVS6s7n/MyzlwweJMGz2LKj0xxqo9QnAqsaqoQO/5Chy5hXAhgf9R2CsBORA==
X-Received: by 2002:a05:600c:3ace:b0:46f:b32e:5094 with SMTP id 5b1f17b1804b1-47a8f915c57mr54254125e9.32.1765667369178;
        Sat, 13 Dec 2025 15:09:29 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f4f4150sm106040995e9.11.2025.12.13.15.09.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 15:09:28 -0800 (PST)
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
Subject: [PATCH v2 1/6] arm64: dts: imx8mp-var-som: Move USDHC2 support to Symphony carrier
Date: Sun, 14 Dec 2025 00:09:01 +0100
Message-ID: <20251213230909.16810-2-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251213230909.16810-1-stefano.r@variscite.com>
References: <20251213230909.16810-1-stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The VAR-SOM-MX8MP module does not include a microSD slot connected to
USDHC2. The USDHC2 interface is routed only on the Symphony carrier
board, and it may optionally be used or omitted depending on the
customer's carrier design.

Move the USDHC2 node, its regulators, pinctrl groups and related GPIOs
from the SOM device tree to the Symphony carrier DTS, keeping the SOM
description limited to hardware populated on the module.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../dts/freescale/imx8mp-var-som-symphony.dts | 77 +++++++++++++++++++
 .../boot/dts/freescale/imx8mp-var-som.dtsi    | 75 ------------------
 2 files changed, 77 insertions(+), 75 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
index 36d3eb865202..ea3c193bb684 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
@@ -8,4 +8,81 @@
 / {
 	model = "Variscite VAR-SOM-MX8M-PLUS on Symphony-Board";
 	compatible = "variscite,var-som-mx8mp-symphony", "variscite,var-som-mx8mp", "fsl,imx8mp";
+
+	reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "VSD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&gpio4 22 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		startup-delay-us = <100>;
+		off-on-delay-us = <12000>;
+	};
+
+	reg_usdhc2_vqmmc: regulator-usdhc2-vqmmc {
+		compatible = "regulator-gpio";
+		regulator-name = "VSD_VSEL";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&gpio2 12 GPIO_ACTIVE_HIGH>;
+		states = <3300000 0x0 1800000 0x1>;
+		vin-supply = <&ldo5>;
+	};
+};
+
+/* SD-card */
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	cd-gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	vqmmc-supply = <&reg_usdhc2_vqmmc>;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_usdhc2_gpio: usdhc2-gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO14__GPIO1_IO14                             0x1c4
+			MX8MP_IOMUXC_SAI2_RXC__GPIO4_IO22                               0x10
+			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12                               0xc0
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK                                0x190
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD                                0x1d0
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0                            0x1d0
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1                            0x1d0
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2                            0x1d0
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3                            0x1d0
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK                                0x194
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD                                0x1d4
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0                            0x1d4
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1                            0x1d4
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2                            0x1d4
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3                            0x1d4
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK                                0x196
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD                                0x1d6
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0                            0x1d6
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1                            0x1d6
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2                            0x1d6
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3                            0x1d6
+		>;
+	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
index 29f080904482..949d9878f395 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
@@ -35,27 +35,6 @@ memory@40000000 {
 		      <0x1 0x00000000 0 0xc0000000>;
 	};
 
-	reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
-	        compatible = "regulator-fixed";
-	        regulator-name = "VSD_3V3";
-	        regulator-min-microvolt = <3300000>;
-	        regulator-max-microvolt = <3300000>;
-	        gpios = <&gpio4 22 GPIO_ACTIVE_HIGH>;
-	        enable-active-high;
-	        startup-delay-us = <100>;
-	        off-on-delay-us = <12000>;
-	};
-
-	reg_usdhc2_vqmmc: regulator-usdhc2-vqmmc {
-		compatible = "regulator-gpio";
-		regulator-name = "VSD_VSEL";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <3300000>;
-		gpios = <&gpio2 12 GPIO_ACTIVE_HIGH>;
-		states = <3300000 0x0 1800000 0x1>;
-		vin-supply = <&ldo5>;
-	};
-
 	reg_phy_supply: regulator-phy-supply {
 		compatible = "regulator-fixed";
 		regulator-name = "phy-supply";
@@ -271,19 +250,6 @@ &uart2 {
         status = "okay";
 };
 
-/* SD-card */
-&usdhc2 {
-        pinctrl-names = "default", "state_100mhz", "state_200mhz";
-        pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
-        pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
-        pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
-        cd-gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
-        vmmc-supply = <&reg_usdhc2_vmmc>;
-	vqmmc-supply = <&reg_usdhc2_vqmmc>;
-        bus-width = <4>;
-        status = "okay";
-};
-
 /* eMMC */
 &usdhc3 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
@@ -358,47 +324,6 @@ MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX                            0x40
 		>;
 	};
 
-	pinctrl_usdhc2_gpio: usdhc2-gpiogrp {
-	        fsl,pins = <
-	                MX8MP_IOMUXC_GPIO1_IO14__GPIO1_IO14                             0x1c4
-	                MX8MP_IOMUXC_SAI2_RXC__GPIO4_IO22                               0x10
-	                MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12                               0xc0
-	        >;
-	};
-
-	pinctrl_usdhc2: usdhc2grp {
-	        fsl,pins = <
-	                MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK                                0x190
-	                MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD                                0x1d0
-	                MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0                            0x1d0
-	                MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1                            0x1d0
-	                MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2                            0x1d0
-	                MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3                            0x1d0
-	        >;
-	};
-
-	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
-	        fsl,pins = <
-	                MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK                                0x194
-	                MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD                                0x1d4
-	                MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0                            0x1d4
-	                MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1                            0x1d4
-	                MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2                            0x1d4
-	                MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3                            0x1d4
-	        >;
-	};
-
-	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
-	        fsl,pins = <
-	                MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK                                0x196
-	                MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD                                0x1d6
-	                MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0                            0x1d6
-	                MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1                            0x1d6
-	                MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2                            0x1d6
-	                MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3                            0x1d6
-	        >;
-	};
-
 	pinctrl_usdhc3: usdhc3grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK				0x190
-- 
2.47.3


