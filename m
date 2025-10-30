Return-Path: <devicetree+bounces-233213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5C1C1FED2
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A7D16188FFE3
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA59F346E6B;
	Thu, 30 Oct 2025 12:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ISl4J1m6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E3E31D377
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761825770; cv=none; b=aYNx9runmqOiudiClXWJ7QoBlF0K8mzbK/YumY5YkV/fMzSbZsDQZ1nZGckwhYezVSpra9wKSUkgu0fQIssXgX63za8c4u0qNRfCUXdFJ7fXt0T0zzWgZBalQoVdiXJBadYFAXzTLR5E4FG23v0zT5KmhaJPAmE2iroA3kDSpPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761825770; c=relaxed/simple;
	bh=YANsc/aUJY7yFzRK813J7R8e4uexbNeXv+bcwl/+HbQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SZWb7iT++COpWJj6oXH4uR9HZzUrC8UGsphVuJSx9/R8mtIO1Ob7jTM4erBuj4aUkHj30rvkb4tPR7Mh3Tbj6EdJ53scuCXEBcM8S1OugmK16rvJVGPILX56r+gbYkXYZmc6s1GmjHLVS7zXb8WiEdm2lwrygbdMmuemPJN/q28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ISl4J1m6; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4711810948aso7468935e9.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 05:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761825767; x=1762430567; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z0mFQTcGqmSkiKPfup/qBvNwcKsotJhGPnyj9Bdv5bM=;
        b=ISl4J1m6eX0iSLV4Bbf/3E1OliJMcW20C4vu6elxZSs0yEFzyQbAmFOr4SOJ5rVvFK
         14ZV9PQH/tMRaqaWh45PgO6dirX8SHFbOlootrNW2TicFuPpHZLBk2HJkJ0R5MJQCzNV
         aTESfIRQXkMeVLS1ywMZqsLIPR4mmUUafNbAFAwmL0i2OR/ZPbxz2CuabZMYff6xxDHJ
         7wG2kgTQLdUiuaUhAzWP0QdaaX/17+xZZ9deMmvln7bcabpHol43C+PxIo/7zlkowvtP
         Xfu7g5OPlIditcCXQh7hzymDhGiUFClJeMdXzo36lL6UEO8QZSW6EPnKyZaXcmEwXGqx
         v1Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761825767; x=1762430567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z0mFQTcGqmSkiKPfup/qBvNwcKsotJhGPnyj9Bdv5bM=;
        b=r+uv4UtONbCBQEgTyMVjPjYWU4yHr8IJZGcVi+eWF0gKcuLCXMnFSIPH8D8U1FRorx
         7pMz7jtMx1gCRyau2s6qE/PPlL9NhB+qe97VnM+Z34D1/oN8H0xNXnf7vHH+S6K3jKYK
         WtN8D1QZzj677/Kjagdu8QiEKbKGr1l2nQYNZ2w98gjm7mFxp6bdaMeI7LKt8wAtQgNp
         1Ze2FEOftVVzoSOuuxb5m0WSLGEOYoQCSaYrDuWi9JklTC578mVkDac6FGLrmWUhunHw
         3ngtOcZRAX5YhpWZQBw2o6tIKKDpUqD6loOYLH7eH7En9NpGv2KFqnYdDxPaR2p8sBZY
         m1vw==
X-Gm-Message-State: AOJu0YxmsvoVIlOeclIOAWzk1ftmi45a8ssPx9BBOlae8/BCkj3OyHF0
	Zo1VnQ/0O6xpyMqHv8VFTXS3m51Uji2+lSrkHSAz/zAYci9RQo0UXFSNLsOUw5ve
X-Gm-Gg: ASbGnctSiiTbmKLuw1Lmm9Y95mMdqJdhsXvOUGIPoZmtYkIVq0ESsWgDeafzpL43/wt
	/yn6nIu94DCPgLfawjOtDe6CRnaTWAgFz/VtQUxh6ns79UOmpNZaK3kq+IuZ75um2eGOAokJbwf
	GqJ/yjEBGX4K9sNerf5T2oVPpUV709iYXH9fkzcIPiIf2jAvW7jj5dpKe0Gv/etz/6Dvm1z72sB
	DXydpMp39iMGDJ3IWndCQkPxrdz8yLtE6Lj4CfuBSm8jwJdhuPhbO8aJnujYcrJgX4guvYNjtru
	PbCO5FzxD8FEQauM8wz6q7TIJvk64RaMpDYOyMgulw1y1CgpqF3o+hjFAQHmLH73jgcEop4nzAf
	MkiqTtwT9JAf8lRzn7+06WaIkH/I98tcktexf5Q8EwKliFr81AxnT6M67FJCaStpnOwX1pg1l0c
	Sn6qfl9MtcBnfZLWC5hmKxXIGpb3uYelkFI62pwaEZke0hb+zmPmc7dD7bh4lGaEt8suya6AiK
X-Google-Smtp-Source: AGHT+IE+1Y1iMggZfF62Rfc9eTffUBllTx25tgqnlq9EBnWiqaF5y6rvo9W+qkPwMxETU1MJsDHwbw==
X-Received: by 2002:a05:6000:240f:b0:3ec:db87:e8fa with SMTP id ffacd0b85a97d-429aef830bbmr5741010f8f.26.1761825766901;
        Thu, 30 Oct 2025 05:02:46 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-146-98-100.cust.vodafonedsl.it. [93.146.98.100])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429b9b436efsm2399848f8f.23.2025.10.30.05.02.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 05:02:46 -0700 (PDT)
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
Subject: [PATCH v2 2/4] arm64: dts: freescale: imx93-var-som: Add PMIC support
Date: Thu, 30 Oct 2025 13:01:22 +0100
Message-ID: <20251030120127.509933-3-stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030120127.509933-1-stefano.radaelli21@gmail.com>
References: <20251030120127.509933-1-stefano.radaelli21@gmail.com>
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
v2:
 - Fix pinctrl alignment

 .../boot/dts/freescale/imx93-var-som.dtsi     | 98 +++++++++++++++++++
 1 file changed, 98 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx93-var-som.dtsi
index 37f7837fb5ac..85fd9c9c9372 100644
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
+			MX93_PAD_GPIO_IO28__LPI2C3_SDA		0x40000b9e
+			MX93_PAD_GPIO_IO29__LPI2C3_SCL		0x40000b9e
+		>;
+	};
+
+	pinctrl_lpi2c3_gpio: lpi2c3-gpiogrp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO28__GPIO2_IO28		0x40000b9e
+			MX93_PAD_GPIO_IO29__GPIO2_IO29		0x40000b9e
+		>;
+	};
+
 	pinctrl_lpuart5: lpuart5grp {
 		fsl,pins = <
 			MX93_PAD_DAP_TDO_TRACESWO__LPUART5_TX   0x31e
-- 
2.43.0


