Return-Path: <devicetree+bounces-179623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0ACAC0EFF
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 16:56:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3708D3A275F
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:56:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4018728FA9C;
	Thu, 22 May 2025 14:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D5ajLTTK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA7F28F934
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 14:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747925586; cv=none; b=qJXQN3hDRLRH85ZmvZJuO6q0sUdoRzgoopvbNs3agdLp3mUSOcS2dc9nG3pVMAMTdSlaGoyEDly6ZQrH/XN4JfkxWsrVB+fBcIFE8262/ebqty8VB53bZ2k1I4N+lIvjlPkQvl9AW3X0XUTngRBeC4np7qrvXb4hyQlUeq86nN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747925586; c=relaxed/simple;
	bh=voHIdnek2rVWq11x4dHxBsrRBa2u2uSDVw8eZR/HomA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d2OV8wa1XJhQpB38NxIsJzM5sZVo02MlwrB4OGWJSpdwT8Ny4LlzcM/UexS0LTJzPVTCMNMqdDFEucAVj067sdkigZfl04fdve4A9FdzUcIaZZLYUO2OcUJairQZTKFWpBKCOXW1YRfWkYqBl0nS6420pXFeNYs3+EA9NKbWGMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D5ajLTTK; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-442ccf0e1b3so101425815e9.3
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 07:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747925582; x=1748530382; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WYaZ4ifiuCk5/DWThGzMkIsPWpqlx/A/4VaIeK3abLc=;
        b=D5ajLTTKu8QEqrtLRO6VOCD8MIN5KJau9dhvjrtmEMucEh1BMlinC1U5+KngRyZjNX
         vU6Y83X/9lCUN3Pi+K16aYjp8zS1Fd+taddD6iJn97SCIs1c8h7OfiQd/8LwWrD+id40
         NiQTbaKJMx/r3UT3HxPimfac+ws3btuzcDDz4cMeiDS/J8lCIFnF5BArOIsgN0XUT8kM
         eDpf3UKp1tF/mbyz2GXOhTLCUvde12laoL8bC8TBEQvcMp+atNGpPEhF0jm3/CARVBnp
         0gWXVzqe0YazQq9bRggpv6XSoqwacOXsb7+hQHapxyvizoWTV7tNaY+IROLAJ0KHAVpj
         YSbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747925582; x=1748530382;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WYaZ4ifiuCk5/DWThGzMkIsPWpqlx/A/4VaIeK3abLc=;
        b=Mvgm+aQLPHxAcbXEHnP3qK90sNDbwOHVUbgBMr6IGg5OhUE38S+j5EZKhcN5Ok2t9p
         mmsV8WOmkHtfWIZlH3yj8UsWTja48Sz/7kOhDWGsqUaaLhqezpoeTUMZXEEJE3PUgPFZ
         GVP23KzOOSLCYYUOThEvnQoFufmP5+KJXcgB2GY2N9VlWRpTXqIRwtozxKV/n0H9nbaR
         feVz3cvOFpWx0mICpQYt5NX5s7k8fM7x43Vpxv13WeRpPvxnmn1ijC3xfqVFTRQWsWxj
         NNlQbTS120FioVeF1cfe7qd/eA1r2BKqdKMJR+gqiR+AeFB/dj4lZqs8FpB9OUpZ2W0B
         0oVg==
X-Forwarded-Encrypted: i=1; AJvYcCUQzAeU4XbOxBPIC0/WYpKxgjBdQRuGiEcmapquqQsgqi/Usdc4LZYztPIXaCGumzjXZUuFRhmXJaJE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/O/LoDI5yiHUo/SMo9UMFzgN7V383Wwcwy9jZdcf4+18d2Bzp
	y/wMc8j58RenApiJ/+fmpVBdAsACWrtqXH9200bUon5PejTdzaMtOMUoLvhAOlenkgA=
X-Gm-Gg: ASbGnctrTiklZn3Bvg0MLafVpWMT+6L+DqKmG16UKtlGCXbMiicBUbhnhpx0TbSJrdB
	A5V2vIB0TEWAlI/bvLa8Q5MICkHGtiCdKhfGeXCa679AVHEFJRCvUfOLYiLamdyHSM/0m2fp/mt
	gLPkk7vKeWG56U1zGpwj9zKCfbkoMG2ulpmH2BSvHuzzX7GQGY9udqB+eHiZkeyi5N6flqsfZOM
	IgqtOhU9elfO7CFFsm17xPgo3xHEUAo1rEk7Mop8Vp1HlbjEql9cKv2QNmPo+zcNWR+FW+2tIq1
	mvxS58NEPoTiDpFVmWNfBoYNAketqfASdKebNklHBHkNpdDy2aydsxCGZoyL
X-Google-Smtp-Source: AGHT+IHCGO08iUjDoKaqKd1XsFoF23FK31du7ZihSX97aKyIlXUv+uhNYjl/lS+O32YNy8OUI/RSbg==
X-Received: by 2002:a05:600c:4f42:b0:442:f4d4:522 with SMTP id 5b1f17b1804b1-442fd60a5bemr233790665e9.5.1747925582001;
        Thu, 22 May 2025 07:53:02 -0700 (PDT)
Received: from ho-tower-lan.lan ([37.18.136.128])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f78aeb56sm104965555e9.27.2025.05.22.07.53.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 07:53:01 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 22 May 2025 15:51:43 +0100
Subject: [PATCH v2 14/14] arm64: dts: Add DSPI entries for S32G platforms
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-james-nxp-spi-v2-14-bea884630cfb@linaro.org>
References: <20250522-james-nxp-spi-v2-0-bea884630cfb@linaro.org>
In-Reply-To: <20250522-james-nxp-spi-v2-0-bea884630cfb@linaro.org>
To: Vladimir Oltean <olteanv@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
 Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, 
 NXP S32 Linux Team <s32@nxp.com>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Chao Fu <B44548@freescale.com>, 
 Xiubo Li <Li.Xiubo@freescale.com>, Lukasz Majewski <lukma@denx.de>, 
 linux-spi@vger.kernel.org, imx@lists.linux.dev, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Vladimir Oltean <vladimir.oltean@nxp.com>, 
 Dan Carpenter <dan.carpenter@linaro.org>, 
 Larisa Grigore <larisa.grigore@nxp.com>, 
 "Radu Pirea (NXP OSS)" <radu-nicolae.pirea@oss.nxp.com>, 
 Larisa Grigore <Larisa.Grigore@nxp.com>, 
 James Clark <james.clark@linaro.org>
X-Mailer: b4 0.14.0

From: Larisa Grigore <larisa.grigore@nxp.com>

S32G3 and S32G2 have the same 6 SPI devices, add the DT entries. Devices
are all the same except spi0 has 8 chip selects instead of 5. Clock
settings for the chip rely on ATF Firmware [1].

[1]: https://github.com/nxp-auto-linux/arm-trusted-firmware
Co-developed-by: Radu Pirea (NXP OSS) <radu-nicolae.pirea@oss.nxp.com>
Signed-off-by: Radu Pirea (NXP OSS) <radu-nicolae.pirea@oss.nxp.com>
Signed-off-by: Larisa Grigore <Larisa.Grigore@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 arch/arm64/boot/dts/freescale/s32g2.dtsi        | 78 +++++++++++++++++++++++
 arch/arm64/boot/dts/freescale/s32g3.dtsi        | 78 +++++++++++++++++++++++
 arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi | 83 +++++++++++++++++++++++++
 arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi | 83 +++++++++++++++++++++++++
 4 files changed, 322 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
index ea1456d361a3..68848575bf81 100644
--- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
@@ -376,6 +376,45 @@ uart1: serial@401cc000 {
 			status = "disabled";
 		};
 
+		spi0: spi@401d4000 {
+			compatible = "nxp,s32g2-dspi";
+			reg = <0x401d4000 0x1000>;
+			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 26>;
+			clock-names = "dspi";
+			spi-num-chipselects = <8>;
+			bus-num = <0>;
+			dmas = <&edma0 0 7>, <&edma0 0 8>;
+			dma-names = "tx", "rx";
+			status = "disabled";
+		};
+
+		spi1: spi@401d8000 {
+			compatible = "nxp,s32g2-dspi";
+			reg = <0x401d8000 0x1000>;
+			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 26>;
+			clock-names = "dspi";
+			spi-num-chipselects = <5>;
+			bus-num = <1>;
+			dmas = <&edma0 0 10>, <&edma0 0 11>;
+			dma-names = "tx", "rx";
+			status = "disabled";
+		};
+
+		spi2: spi@401dc000 {
+			compatible = "nxp,s32g2-dspi";
+			reg = <0x401dc000 0x1000>;
+			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 26>;
+			clock-names = "dspi";
+			spi-num-chipselects = <5>;
+			bus-num = <2>;
+			dmas = <&edma0 0 13>, <&edma0 0 14>;
+			dma-names = "tx", "rx";
+			status = "disabled";
+		};
+
 		i2c0: i2c@401e4000 {
 			compatible = "nxp,s32g2-i2c";
 			reg = <0x401e4000 0x1000>;
@@ -460,6 +499,45 @@ uart2: serial@402bc000 {
 			status = "disabled";
 		};
 
+		spi3: spi@402c8000 {
+			compatible = "nxp,s32g2-dspi";
+			reg = <0x402c8000 0x1000>;
+			interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 26>;
+			clock-names = "dspi";
+			spi-num-chipselects = <5>;
+			bus-num = <3>;
+			dmas = <&edma0 1 7>, <&edma0 1 8>;
+			dma-names = "tx", "rx";
+			status = "disabled";
+		};
+
+		spi4: spi@402cc000 {
+			compatible = "nxp,s32g2-dspi";
+			reg = <0x402cc000 0x1000>;
+			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 26>;
+			clock-names = "dspi";
+			spi-num-chipselects = <5>;
+			bus-num = <4>;
+			dmas = <&edma0 1 10>, <&edma0 1 11>;
+			dma-names = "tx", "rx";
+			status = "disabled";
+		};
+
+		spi5: spi@402d0000 {
+			compatible = "nxp,s32g2-dspi";
+			reg = <0x402d0000 0x1000>;
+			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 26>;
+			clock-names = "dspi";
+			spi-num-chipselects = <5>;
+			bus-num = <5>;
+			dmas = <&edma0 1 13>, <&edma0 1 14>;
+			dma-names = "tx", "rx";
+			status = "disabled";
+		};
+
 		i2c3: i2c@402d8000 {
 			compatible = "nxp,s32g2-i2c";
 			reg = <0x402d8000 0x1000>;
diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/dts/freescale/s32g3.dtsi
index 991dbfbfa203..4f883b1a50ad 100644
--- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
@@ -435,6 +435,45 @@ uart1: serial@401cc000 {
 			status = "disabled";
 		};
 
+		spi0: spi@401d4000 {
+			compatible = "nxp,s32g3-dspi", "nxp,s32g2-dspi";
+			reg = <0x401d4000 0x1000>;
+			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 26>;
+			clock-names = "dspi";
+			spi-num-chipselects = <8>;
+			bus-num = <0>;
+			dmas = <&edma0 0 7>, <&edma0 0 8>;
+			dma-names = "tx", "rx";
+			status = "disabled";
+		};
+
+		spi1: spi@401d8000 {
+			compatible = "nxp,s32g3-dspi", "nxp,s32g2-dspi";
+			reg = <0x401d8000 0x1000>;
+			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 26>;
+			clock-names = "dspi";
+			spi-num-chipselects = <5>;
+			bus-num = <1>;
+			dmas = <&edma0 0 10>, <&edma0 0 11>;
+			dma-names = "tx", "rx";
+			status = "disabled";
+		};
+
+		spi2: spi@401dc000 {
+			compatible = "nxp,s32g3-dspi", "nxp,s32g2-dspi";
+			reg = <0x401dc000 0x1000>;
+			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 26>;
+			clock-names = "dspi";
+			spi-num-chipselects = <5>;
+			bus-num = <2>;
+			dmas = <&edma0 0 13>, <&edma0 0 14>;
+			dma-names = "tx", "rx";
+			status = "disabled";
+		};
+
 		i2c0: i2c@401e4000 {
 			compatible = "nxp,s32g3-i2c",
 				     "nxp,s32g2-i2c";
@@ -524,6 +563,45 @@ uart2: serial@402bc000 {
 			status = "disabled";
 		};
 
+		spi3: spi@402c8000 {
+			compatible = "nxp,s32g3-dspi", "nxp,s32g2-dspi";
+			reg = <0x402c8000 0x1000>;
+			interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 26>;
+			clock-names = "dspi";
+			spi-num-chipselects = <5>;
+			bus-num = <3>;
+			dmas = <&edma0 1 7>, <&edma0 1 8>;
+			dma-names = "tx", "rx";
+			status = "disabled";
+		};
+
+		spi4: spi@402cc000 {
+			compatible = "nxp,s32g3-dspi", "nxp,s32g2-dspi";
+			reg = <0x402cc000 0x1000>;
+			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 26>;
+			clock-names = "dspi";
+			spi-num-chipselects = <5>;
+			bus-num = <4>;
+			dmas = <&edma0 1 10>, <&edma0 1 11>;
+			dma-names = "tx", "rx";
+			status = "disabled";
+		};
+
+		spi5: spi@402d0000 {
+			compatible = "nxp,s32g3-dspi", "nxp,s32g2-dspi";
+			reg = <0x402d0000 0x1000>;
+			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 26>;
+			clock-names = "dspi";
+			spi-num-chipselects = <5>;
+			bus-num = <5>;
+			dmas = <&edma0 1 13>, <&edma0 1 14>;
+			dma-names = "tx", "rx";
+			status = "disabled";
+		};
+
 		i2c3: i2c@402d8000 {
 			compatible = "nxp,s32g3-i2c",
 				     "nxp,s32g2-i2c";
diff --git a/arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi b/arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi
index d26af0fb8be7..d8bf734aa267 100644
--- a/arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi
@@ -173,6 +173,77 @@ i2c4-gpio-grp1 {
 			pinmux = <0x2d40>, <0x2d30>;
 		};
 	};
+
+	dspi1_pins: dspi1-pins {
+		dspi1-grp0 {
+			pinmux = <0x72>;
+			output-enable;
+			input-enable;
+			slew-rate = <150>;
+			bias-pull-up;
+		};
+
+		dspi1-grp1 {
+			pinmux = <0x62>;
+			output-enable;
+			slew-rate = <150>;
+		};
+
+		dspi1-grp2 {
+			pinmux = <0x83>;
+			output-enable;
+			input-enable;
+			slew-rate = <150>;
+		};
+
+		dspi1-grp3 {
+			pinmux = <0x5F0>;
+			input-enable;
+			slew-rate = <150>;
+			bias-pull-up;
+		};
+
+		dspi1-grp4 {
+			pinmux = <0x3D92>,
+				 <0x3DA2>,
+				 <0x3DB2>;
+		};
+	};
+
+	dspi5_pins: dspi5-pins {
+		dspi5-grp0 {
+			pinmux = <0x93>;
+			output-enable;
+			input-enable;
+			slew-rate = <150>;
+		};
+
+		dspi5-grp1 {
+			pinmux = <0xA0>;
+			input-enable;
+			slew-rate = <150>;
+			bias-pull-up;
+		};
+
+		dspi5-grp2 {
+			pinmux = <0x3ED2>,
+				 <0x3EE2>,
+				 <0x3EF2>;
+		};
+
+		dspi5-grp3 {
+			pinmux = <0xB3>;
+			output-enable;
+			slew-rate = <150>;
+		};
+		dspi5-grp4 {
+			pinmux = <0xC3>;
+			output-enable;
+			input-enable;
+			slew-rate = <150>;
+			bias-pull-up;
+		};
+	};
 };
 
 &can0 {
@@ -220,3 +291,15 @@ &i2c4 {
 	pinctrl-1 = <&i2c4_gpio_pins>;
 	status = "okay";
 };
+
+&spi1 {
+	pinctrl-0 = <&dspi1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&spi5 {
+	pinctrl-0 = <&dspi5_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi b/arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi
index ba53ec622f0b..b0a21e4468da 100644
--- a/arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi
@@ -127,6 +127,77 @@ i2c4-gpio-grp1 {
 			pinmux = <0x2d40>, <0x2d30>;
 		};
 	};
+
+	dspi1_pins: dspi1-pins {
+		dspi1-grp0 {
+			pinmux = <0x72>;
+			output-enable;
+			input-enable;
+			slew-rate = <150>;
+			bias-pull-up;
+		};
+
+		dspi1-grp1 {
+			pinmux = <0x62>;
+			output-enable;
+			slew-rate = <150>;
+		};
+
+		dspi1-grp2 {
+			pinmux = <0x83>;
+			output-enable;
+			input-enable;
+			slew-rate = <150>;
+		};
+
+		dspi1-grp3 {
+			pinmux = <0x5F0>;
+			input-enable;
+			slew-rate = <150>;
+			bias-pull-up;
+		};
+
+		dspi1-grp4 {
+			pinmux = <0x3D92>,
+				 <0x3DA2>,
+				 <0x3DB2>;
+		};
+	};
+
+	dspi5_pins: dspi5-pins {
+		dspi5-grp0 {
+			pinmux = <0x93>;
+			output-enable;
+			input-enable;
+			slew-rate = <150>;
+		};
+
+		dspi5-grp1 {
+			pinmux = <0xA0>;
+			input-enable;
+			slew-rate = <150>;
+			bias-pull-up;
+		};
+
+		dspi5-grp2 {
+			pinmux = <0x3ED2>,
+				 <0x3EE2>,
+				 <0x3EF2>;
+		};
+
+		dspi5-grp3 {
+			pinmux = <0xB3>;
+			output-enable;
+			slew-rate = <150>;
+		};
+		dspi5-grp4 {
+			pinmux = <0xC3>;
+			output-enable;
+			input-enable;
+			slew-rate = <150>;
+			bias-pull-up;
+		};
+	};
 };
 
 &can0 {
@@ -155,6 +226,18 @@ pcal6524: gpio-expander@22 {
 	};
 };
 
+&spi1 {
+	pinctrl-0 = <&dspi1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&spi5 {
+	pinctrl-0 = <&dspi5_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &i2c2 {
 	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&i2c2_pins>;

-- 
2.34.1


