Return-Path: <devicetree+bounces-246276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0B5CBB4A1
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 00:10:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E358E3009767
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 23:09:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D397430B53F;
	Sat, 13 Dec 2025 23:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jyvFrbPd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F42E2F7478
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 23:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765667380; cv=none; b=A8fxxcxt4Xerc7etwBJU2vCeOko+gSbM4p2y1bmlobRxOWbXzB/KP6XAIBh4u0LNyiYjgRDvcT+k9WIOpdzt3gXQ260HdxjQbKSVwgYZDBqhrklRm3DjRVFkigx1OAf1Va5yd93T4wxBqhNljtqN1sevK5l0sMZPo4ZH0SYDcFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765667380; c=relaxed/simple;
	bh=yBref/AZwu6pgOZMRs83ElRYvornogsTNti67ViqWjM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UwVXnqn2zzQl822Rp9AOprH7AiO6FC2GXQWXVmKip0GlGRcGmXpsbydiiuKvDGnX0/nZBolArehBd6QO3G1TDOnTFeyC4hVuRLZH7KPmfnWmHkAqd3Ox3DI2CmOYoalHIMlLA62RgBxQWzNrsEZcjjInHyIYPzsWTIeYMpiRk5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jyvFrbPd; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4777771ed1aso18199535e9.2
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 15:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765667377; x=1766272177; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XFBu7h1JZxFW4pexj6Ke1Y08ewGv0xJ1I7XQdP6xSOY=;
        b=jyvFrbPdayZ7PjMdk0udaiLq3x+5g/ntCQDPJ1qhRRqYGr8ZXfN7QlN9fj7MSuDf2G
         VRQJRPYU/QnniJtj+ijL8BExyD9G8GRjMaCzQh6B3rl/kszZWhA+n4t+bLN3+fm0QT3a
         7xcRE2dEwGB2R1YZdDoFf3v63zhSJtkFwsH6W5AxyVDgoG5nXS+pYEnOv5HfdaFbHH5/
         2F2kfeQWcmE0Yc7UkRxsP/cdotNA12S6eORWcWw7QRjHQNAYMcE2+oR3IW21TVwZknIa
         mMMaxdzhaZwg4HePxdUPQBZrtD9zuhJ4qmuQ4GoCl1KjtHzhqateyLWh39FhA7IqwceL
         CmUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765667377; x=1766272177;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XFBu7h1JZxFW4pexj6Ke1Y08ewGv0xJ1I7XQdP6xSOY=;
        b=dloO1cIdxjP02+MgYOTQNC2Ow2oFKOa4/kv2wcV4cCmcpgj/oHc3r0PC/1+M9vsntC
         oYNyZwcgY/0wkW59+QM01MjuBaQcTMTKasBrk1+FW2FlVXLUh2pYMa3e3EVuKLKp0FCw
         kwy5RcwOUZyGg9LmJJL6iyujpQTu1VJV0bbROEVgL2iXL491u9b2vHGcPV1BA2HcwzcG
         NkA8pVNarvN57cEbc3uXDTaWkpxSzoAcDKpbQe61FRRvaGx1fAIRF7hDgUqX/1dtqYbA
         OvocaUXCTNbw+YB1rQ9PcKrgaLkx3MbuNL5dZHwICAOvLi9r/C7zodgMPfKbLF7059NK
         ktbg==
X-Gm-Message-State: AOJu0YwVmBpTFLmEYaMqb+sIETZ+xKXOknICxnHcO+vYFRj1xvAQxcRW
	tTOltGBHL5tG8j4MnfW21xJEQDgXEqHYt+oGpo1AXh/MXslRgBJ8d+gF7dVYAKTW
X-Gm-Gg: AY/fxX4QW1DtVjnTWERiBkydUDxGMGDH+332Oz21dSnQ1dWGsLVLD7xzBUpTuewpQ0l
	lv+4hWp3sS072COP/9s6DMpwNGxrn4O3UuTHB8+v8qj+NCifERY6lK96RmEbHSh5zYwnTIZ9Vub
	ak8Gp+++10UCkZxk1/0UGlq76Da/apBPwpEjoKSXitkJOfWKqMUjSuUnCYLwXlO7WeV6Ypoysis
	TWeuqskNZmshK4spoxk9Bvii0zLFb5boLNznk+Z0MZgxFD21omzefoJzhTgdi1GU/DcHj531V6m
	PWtpyAUuwk+Qe8Nzi3edVlak1QAdtuhMIm/0Lj9+UGMBOD0+Imrunm0fdHSul+uRNvVp2/0rNGm
	toSgjSKiMjrZNjaLFJ6fPRd2t9My2f7KuR0fyIPbnUURbpBYpTxj/EV745RdO2ZTrr0rK3vSEx9
	L+QoFlOwlFTtMZ3vfLvsw7GxLL6yoz4ZcRy7xkB4GZ5n9+jIcSDGz/LbWMQMQ4IZKBUiyCpFjcW
	aTq1DejrP+Bjf4=
X-Google-Smtp-Source: AGHT+IHEtlj8IChu5bhTz+/I0sk3TLOpzFD+a5W1lLZsBxV4wDhUBQBzvW9/4MfsDfvwL8cT/egQuw==
X-Received: by 2002:a05:600c:4451:b0:477:9fcf:3ff9 with SMTP id 5b1f17b1804b1-47a8f90f54bmr59911715e9.27.1765667376838;
        Sat, 13 Dec 2025 15:09:36 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f4f4150sm106040995e9.11.2025.12.13.15.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 15:09:36 -0800 (PST)
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
Subject: [PATCH v2 6/6] arm64: dts: imx8mp-var-som: Add support for ADS7846 touchscreen
Date: Sun, 14 Dec 2025 00:09:06 +0100
Message-ID: <20251213230909.16810-7-stefano.r@variscite.com>
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

The VAR-SOM-MX8MP integrates an ADS7846 resistive touchscreen controller.
The controller is physically located on the SOM, and its signals are
routed to the SOM pins, allowing carrier boards to make use of it.

This patch adds the ADS7846 node and the appropriate SPI controller.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../boot/dts/freescale/imx8mp-var-som.dtsi    | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
index 169fc6a9c8cb..ebe615a84150 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
@@ -101,6 +101,37 @@ &A53_3 {
 	cpu-supply = <&buck2>;
 };
 
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	cs-gpios = <&gpio5 17 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	/* Resistive touch controller */
+	ads7846: touchscreen@0 {
+		compatible = "ti,ads7846";
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
@@ -348,6 +379,15 @@ MX8MP_IOMUXC_SD1_RESET_B__GPIO2_IO10                            0xc0
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
@@ -382,6 +422,12 @@ MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04				0x1c0
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


