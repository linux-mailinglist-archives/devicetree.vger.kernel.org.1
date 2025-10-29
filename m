Return-Path: <devicetree+bounces-232908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 528B5C1D01F
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 20:29:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87FF8401BA7
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 19:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F803358D0B;
	Wed, 29 Oct 2025 19:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LYWalxJi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7975335970F
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 19:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761766155; cv=none; b=Pt4BeLIjPL3myriyvat3YvnqOSJ9vm0zQhjqnq7YgLCqQWNro9usXhSS00tpXQBsGIPd6T+HLudSasa+Zw/pcBA3g+yfuiMEDbctK7zSTFF/ehfT2TgNAZdvvuE4V0UOr9M7BgwP1sx4FrTxDut+ChEi6FX7pHf/OqwHhKX/HQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761766155; c=relaxed/simple;
	bh=E+yxGzCZFcyhRl056ULuyl5WPwp58wUUUI9XLCSFWXk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sNrWnQzR9SfvC8wXXYBVUQsPtU/3LYVAGa2F/EqKtAP0pqurArQe4IZkf0FYASrfdLagfja9DIgIbnBqt/2leVsLoiLl9vsoEXKQbOblOftQ/aXKJrYFxnRZ323BKYkMn+iZqrFvJ58Di2OEi8ROTyr9igA5jmWUvUNPM7Qxso0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LYWalxJi; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b3e7cc84b82so57255166b.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 12:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761766151; x=1762370951; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5pWDmbZrTdABcUlBNCeOKZzPd6c0px/j6MB6LEuyup4=;
        b=LYWalxJibNo9Wa03NbmeC0FC+cHs0RBRj/wXs6ueIS6ksddb1Al5fI5v0otUH3ZU9s
         t4y2YdezBIIt6kyQ3oA+cYHDOL9XigVxtorrgqm8E1dwgqRpFRyx7eui+8LEOGS2JyGK
         f6U8cHL/J2lHjLh02ET6x7Z3nqoLnydWBdZpYKqxBBkloDYqWEOpztWbmXNq43Zs6GP4
         OU3FYA8sNoS81SltNz+n9VsJp0bPVBECOaq//3/gZOoU/c7Wbc0VPLG0PQafNvw4i3Ck
         Ucpn6/gkL/inq1GwCKokzESo/uA5+jbnoZeWGiGO8eLGyJhLaj0Y87thTH5GItMP35yz
         YAeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761766151; x=1762370951;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5pWDmbZrTdABcUlBNCeOKZzPd6c0px/j6MB6LEuyup4=;
        b=omVNx0UYO5/NWaoNBLq84TRvogg6wqvtE4lCtY+YEArOdkD007A3ksJ0HrgBNrX9VK
         Zkf54buoCdhO72iEKcSjZ894/UpMJfyZeaB5W9gn1mHYXA2iM4oiUngByLPQUSnVBx2r
         fqS1nsEiDyCYG772EzsENr/p/hRavMWLb90xWYyAufWIar4rulEQ4CfXQ44VYQ9WM+J/
         a9ROgaFjWBqJW3/YJw+GBRIbUbv3U6dyVli4d1VuUdCb41ETIixS41NG9K6guWnSjfQp
         jNA68uanuOt3Rzi9aR9OicULU0Dxt64eSo7CK4wRYepBq16qTQkmrpQVFEwiVKm9ATgF
         A56g==
X-Gm-Message-State: AOJu0Yw8vINyz7u4XBno4GElXOit73AWVKwKQCxbqY6J6h+ipAfjmvuS
	txzrFXG7r02N71j5Lq40COrrVrV11h7I1j8n7ZkriyyWxpYfeiQwn+k4Wu1J67V5
X-Gm-Gg: ASbGncu7N1LT6Q9EGX5slUpzA9Tt7Ij+3h4Tk5f7oHqjAx5d4cS7msH2o8XFxG94L2t
	V0lFts8a+PzNA0bt7O8Sc0oOzETwFh8Ye/vwt1csP/76pVf0rb81arISt8UEafXK30HyaIvoriD
	zwMH+ICsH6aeX1DpHVLkKrzMYmroactd9Pf6ZOVsOglv1h7jzzHNsan80swH/3LWKPdN+Bhglxm
	NNOtaocEXQbbbsricr6Xh5mYfl8MxgEYq4rohJ147rdoaT74L2Uv0ZSNHcq5hfklCvh1a0H19Kf
	eI7zjX5GWr7Sxb8Y9UTcb8DIKyaMxWqbtU+SBr8R/ZXTIBN2i4eHj0FfWqHEbmUqItUrtThCC1d
	YGTdAylJR4i6ctCrI4lhalt7SKh+IhFnai8rxZW6MTb1bQkxJ+qIFyiVdNUZA133/eLAeYMLV7Z
	vL5D8EzsS0J8jB7k69KPRzQBV2hrGAw/l4o8Yuvs/kQdi8+QuzFCkZQonvwggpeQ==
X-Google-Smtp-Source: AGHT+IHwJhZkEKqRnVEte1O7I0899f550vGZfsEycCCZE4aJZvfMSJzZMXQacN9shYw9JF12C9LbCw==
X-Received: by 2002:a17:907:a03:b0:b04:626e:f43d with SMTP id a640c23a62f3a-b703d533318mr342078366b.47.1761766151112;
        Wed, 29 Oct 2025 12:29:11 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-146-98-100.cust.vodafonedsl.it. [93.146.98.100])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8548eda6sm1496673266b.75.2025.10.29.12.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 12:29:10 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.radaelli21@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 2/4] arm64: dts: freescale: imx93-var-som: Add PMIC support
Date: Wed, 29 Oct 2025 20:28:47 +0100
Message-ID: <20251029192852.656806-3-stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251029192852.656806-1-stefano.radaelli21@gmail.com>
References: <20251029192852.656806-1-stefano.radaelli21@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The VAR-SOM-MX93 features Dual Freescale/NXP PCA9541 chip as a Power
Management Integrated circuit (PMIC).
The PMIC is programmable via the I2C interface and its associated
register map, and this patch adds its support.

Signed-off-by: Stefano Radaelli <stefano.radaelli21@gmail.com>
---
 .../boot/dts/freescale/imx93-var-som.dtsi     | 98 +++++++++++++++++++
 1 file changed, 98 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx93-var-som.dtsi
index 97198007b545..368530f5831f 100644
--- a/arch/arm64/boot/dts/freescale/imx93-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93-var-som.dtsi
@@ -70,6 +70,90 @@ led@1 {
 	};
 };
 
+&lpi2c3 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default", "sleep", "gpio";
+	pinctrl-0 = <&pinctrl_lpi2c3>;
+	pinctrl-1 = <&pinctrl_lpi2c3_gpio>;
+	pinctrl-2 = <&pinctrl_lpi2c3_gpio>;
+	scl-gpios = <&gpio2 29 GPIO_ACTIVE_HIGH>;
+	sda-gpios = <&gpio2 28 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	pmic@25 {
+		compatible = "nxp,pca9451a";
+		reg = <0x25>;
+
+		regulators {
+			buck1: BUCK1 {
+				regulator-name = "BUCK1";
+				regulator-min-microvolt = <650000>;
+				regulator-max-microvolt = <2237500>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+			};
+
+			buck2: BUCK2 {
+				regulator-name = "BUCK2";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+			};
+
+			buck4: BUCK4{
+				regulator-name = "BUCK4";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck5: BUCK5{
+				regulator-name = "BUCK5";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck6: BUCK6 {
+				regulator-name = "BUCK6";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1: LDO1 {
+				regulator-name = "LDO1";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4: LDO4 {
+				regulator-name = "LDO4";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo5: LDO5 {
+				regulator-name = "LDO5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
 /* BT module */
 &lpuart5 {
 	pinctrl-names = "default";
@@ -140,6 +224,20 @@ MX93_PAD_UART2_TXD__GPIO1_IO07			0x51e
 		>;
 	};
 
+	pinctrl_lpi2c3: lpi2c3grp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO28__LPI2C3_SDA                  0x40000b9e
+			MX93_PAD_GPIO_IO29__LPI2C3_SCL                  0x40000b9e
+		>;
+	};
+
+	pinctrl_lpi2c3_gpio: lpi2c3-gpiogrp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO28__GPIO2_IO28                  0x40000b9e
+			MX93_PAD_GPIO_IO29__GPIO2_IO29                  0x40000b9e
+		>;
+	};
+
 	pinctrl_lpuart5: lpuart5grp {
 		fsl,pins = <
 			MX93_PAD_DAP_TDO_TRACESWO__LPUART5_TX   0x31e
-- 
2.43.0


