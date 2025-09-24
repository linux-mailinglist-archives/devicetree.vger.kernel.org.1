Return-Path: <devicetree+bounces-220749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9947B99FA1
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 15:08:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F28A31B25AF5
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 13:08:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C99D303A00;
	Wed, 24 Sep 2025 13:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="k4jBBEwP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E06E430275B
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 13:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758719278; cv=none; b=a1QbwQRsC+a7L1z192kb/7vs8bQHWxyHVb2L78KzvkNDkoOtflBlXqRcUR1oTNVej3v+Sm/V8k249+Y7JsDEpoMj5e4GSXcg9LH4JF7gXYuiFIL6cXucYJeriFvpgDXUx/ectluy2Bn+UzCLjHUsPX+TAVhKibEKWJ8bTAhe0FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758719278; c=relaxed/simple;
	bh=QdVtGcIHzrV0fUtoLR0+CcnCf0mmDqhn9O0HeNGf39c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DV0kSQBXp9HvSv1j7yKc8LmE2L6y46QofsHVmyH66/xV8yZrSCtvPcNXDKgqfRZiexPtlNuXP6YdcqlxLgnDqC2Y1Mu0EnQKqrnty4D0o72a/jtRzX8ej6fRrpb9kMZKF+V8jwokPRhU/1wrESmiVx61PfgshzokGw/yhZFzlg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=k4jBBEwP; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b33d785db6fso78205966b.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 06:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758719274; x=1759324074; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=APo2jYD1PxrHJsECEd/93gcKH2/sr0pgqf5id/Ryl2g=;
        b=k4jBBEwPKBAGNkEj/4toGW5EWNlhweFXitN/V5E/hBZqPJ8JAACcom1AzUm9oBL57y
         eNa1xy/5JpK2ZuQqyxO/LNE9AoA91yKzBuFeRkDoAuraA6ikXppClZC0tsHzCqesQF5s
         ur1gEM7DzyjRXNVbuu46Wn3YG5zymnkiprx0g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758719274; x=1759324074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=APo2jYD1PxrHJsECEd/93gcKH2/sr0pgqf5id/Ryl2g=;
        b=jw+n1dMVptf8b1HlSzAEQdw/J71uQxEGCpiCU9t/3Zs0hZaxKNvHUA0ZH03DSaXxCq
         NIm/+ou1/PKaYS0bF+yYJkGswFThB545j2yQ66JMRrohXph5sfP0vzcMo3NEK8IyilFR
         vtGaDN1ODJxHqZX9AsnhsyWFyp4n8+TcrMB+5GGp/n5PZiy6DK0N447Rtv3tFvClzB5F
         i/6Vq7AL3kOWvTUu7a5ghg5I7cM0XhbOxNS+1r2SGygSmLRJvvwhHfw2ANRf8XJIPq1j
         rVDsMyyHVC6AG60o/T4QJfGobPcOQBKlIMiTNzClP72mSXBuYCRacy/X+XBGHZ9xTe6Z
         LfLg==
X-Forwarded-Encrypted: i=1; AJvYcCUTTR7V95UhOikCfYahQDI6wZZoNULEJyoRi3WbwFlsk4K5H7RErnH+YHN4g733s6Xrr773Cs8Sp9jH@vger.kernel.org
X-Gm-Message-State: AOJu0YxcxMvoBMmEQgRP7O/T1bcbLczyOHhAfOs6Um5fEciHI5Y4JEFh
	Y41iOmJWc9TE1NvuoUfaY43KPukXxx1zbIjkH/lur0f7ou8DtCAwO1o7QV3jzEmhFF0=
X-Gm-Gg: ASbGncsNdOZLZxE23JDaTMQwp7uGWWW+gUwEmM2bUzyWdBgPFQQ/BGYkDRboXdFVVEg
	2V8A7Q2u2ObK2pmQXEfMaBJvo/6+P8CXPni4v2WA7WkKOFlV4Avx19UDfbqjT3FWPVUflQpZvZ1
	Yr3wMAXMsQL1nHiynmyt3DCUNR6BQc2pms8oom2ah1MrElZwYnvEDfuGbqp4XKjman4+5ZVEDVD
	vtKflbUWeqDLpLO0F4YGtQeHZsSS0KtXXp0+um5pjgu6DWyrRffOayD2gjAIiPP/NMDaVj4VFdZ
	jhMAj/1JvGOGCvrHZp30C82Ftkvv93grmwfhtRww/7nJiC/1lqlCpa6Hmr0R0ycRVJuifDauT1P
	+tcVTvb/+08Samyr2Q8wI/pCDAX8ECa1ocrOUoHNZYd3UfRsw1NwApu4+aAC1DoMbp7wkx+lyhA
	Caz15PQGGc9dl0GuaEjpJz7qXwPxGL0uca/u3tSSqNixlYeSs+MtB5Aw95hhk=
X-Google-Smtp-Source: AGHT+IF67mD/mI0gnp/TuaWCgcn+3WEoNIAZH9oCfonzva0RaGE9yWAfNCRhfJo9YzLJalRUTsq/KQ==
X-Received: by 2002:a17:907:6e90:b0:b04:25e6:2dbe with SMTP id a640c23a62f3a-b302c1fff60mr622859266b.63.1758719273947;
        Wed, 24 Sep 2025 06:07:53 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fc5f382b0sm1574379866b.2.2025.09.24.06.07.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 06:07:53 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Michael Trimarchi <michael@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [RESEND PATCH 2/3] ARM: dts: imx28-amarula-rmm: add I2S audio
Date: Wed, 24 Sep 2025 15:07:45 +0200
Message-ID: <20250924130749.3012071-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250924130749.3012071-1-dario.binacchi@amarulasolutions.com>
References: <20250924130749.3012071-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for I2S audio on Amarula rmm board. Audio codec
TLV320AIC3X is connected as slave to SAIF0, which provides
bitclock, frame and MCLK.

Co-developed-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 .../boot/dts/nxp/mxs/imx28-amarula-rmm.dts    | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-amarula-rmm.dts b/arch/arm/boot/dts/nxp/mxs/imx28-amarula-rmm.dts
index af59211842fb..0c5b52f67178 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28-amarula-rmm.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx28-amarula-rmm.dts
@@ -112,6 +112,29 @@ reg_usb1_vbus: regulator-usb1-vbus {
 		enable-active-high;
 		regulator-always-on;
 	};
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "imx28-mrmmi-tlv320aic3x-audio";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&cpu_dai>;
+		simple-audio-card,frame-master = <&cpu_dai>;
+		simple-audio-card,widgets =
+			"Headphone", "Headphone Jack";
+		simple-audio-card,routing =
+			"Headphone Jack", "HPROUT",
+			"Headphone Jack", "HPRCOM";
+		simple-audio-card,mclk-fs = <512>;
+
+		cpu_dai: simple-audio-card,cpu {
+			sound-dai = <&saif0>;
+			clocks = <&saif0>;
+		};
+
+		codec_dai: simple-audio-card,codec {
+			sound-dai = <&tlv320aic3x>;
+		};
+	};
 };
 
 &auart0 {
@@ -154,6 +177,20 @@ &i2c0 {
 	pinctrl-0 = <&i2c0_pins_a>;
 	status = "okay";
 
+	tlv320aic3x: tlv320aic3x@18 {
+		compatible = "ti,tlv320aic3x";
+		pinctrl-names = "default";
+		pinctrl-0 = <&tlv320aic3x_pins>;
+		reg = <0x18>;
+		reset-gpios = <&gpio2 4 GPIO_ACTIVE_LOW>;
+		#sound-dai-cells = <0>;
+
+		DVDD-supply = <&reg_1v8>;
+		IOVDD-supply = <&reg_3v3>;
+		AVDD-supply = <&reg_3v3>;
+		DRVDD-supply = <&reg_3v3>;
+	};
+
 	touchscreen: touchscreen@38 {
 		compatible = "edt,edt-ft5306";
 		reg = <0x38>;
@@ -246,6 +283,14 @@ MX28_PAD_PWM1__GPIO_3_17
 		fsl,voltage = <MXS_VOLTAGE_HIGH>;
 	};
 
+	tlv320aic3x_pins: tlv320aic3x-pins@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <MX28_PAD_SSP0_DATA4__GPIO_2_4>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,pull-up = <MXS_PULL_ENABLE>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+	};
+
 	usb0_vbus_enable_pin: usb0-vbus-enable@0 {
 		reg = <0>;
 		fsl,pinmux-ids = <MX28_PAD_SSP0_DATA5__GPIO_2_5>;
@@ -269,6 +314,12 @@ &pwm {
 	status = "okay";
 };
 
+&saif0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&saif0_pins_a>;
+	status = "okay";
+};
+
 /* microSD */
 &ssp0 {
 	compatible = "fsl,imx28-mmc";
-- 
2.43.0

base-commit: cec1e6e5d1ab33403b809f79cd20d6aff124ccfe
branch: microgea-rmm-audio

