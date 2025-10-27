Return-Path: <devicetree+bounces-231639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E79EC0F2F1
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 17:11:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA78C188F212
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 16:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B9AD30FC25;
	Mon, 27 Oct 2025 16:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="rHXjaTS6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA2630F92F
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 16:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761581452; cv=none; b=ZJ5EzYgyNyoex99wPsXvrgWOWiGlcDWeFpnKCxqpJXBjTVIOKsoCeDbY1cMLNgf9xRD1P/BcAfJ5q4ZdqBqUg/zy3TMWCHyTy00cD4xp9TWI0tILfRh47S4o806mZ9YDrHZAnFUwug8jNMgyEL6fr1cPBQQyTpbZNDE8IHCIQtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761581452; c=relaxed/simple;
	bh=q0KsMgAElv0vgdV5eooiTkRZl79F0ej2oBY71GeUUCI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bx0kibdUdkO/deaH13ebrEI67/bi4JXJ4NTW684piNb807pendmq8i5U+TKwb7bk1eugy0F3WCHJoHizUhtUNTaOtQiwic18XEIJE9MxRNus6C3xqzO4hkVbnqPxLmeU1pTasBvrg322z0bRiHuOZFA9hlA+Qbz1wCLintMm3CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=rHXjaTS6; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b4f323cf89bso1157778466b.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 09:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1761581449; x=1762186249; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Veu3Rsq4FjpOJipbhAFeCCYDWDFK0CBkfMfLFx9DhXQ=;
        b=rHXjaTS6zBnOuruVi35Mn64k5VsG+F8CFgdToVCwCpzU4gcRfvG5h8yrxIA0kjlU9u
         bxyJd4SsusfOPO4Z+/du4tWDBGAemSyPp1zsOTPHf6teTCReg1vQV0wOsLYn46M+GQdF
         5NWw7+sMg/TLv7RHD1O6ooRJNoIPCCu+3c0o8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761581449; x=1762186249;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Veu3Rsq4FjpOJipbhAFeCCYDWDFK0CBkfMfLFx9DhXQ=;
        b=DTjMnROdfqeJ32ccGr6SamLm4dkVkWJM6eCWWtFyA0T1DPwT5MvCY9SK3atTAtDqiD
         3CnKLsvxXAo2GWoWFoJDoffGTClT5MbIMRDdfeXHDQ1Y5SW/ywcNc10vd2x+3820ldGP
         4eA+Q3ncSULKWlKzYYdlvSv/zwSvLLW88XW+9TtNvxBVMDPMJzCYRBBBql1aw7nZoFkP
         XSL+A5x7WdLoNmDESreKwl0bX1KW7/uv1q/aGMIUji5v/h8I+n2ZEkV47mt6/aitx9jm
         ozPhe32V3g7dXR65oqJST4DTrRB5T5LdCYIafW0KQQZhatRQxDiEP5EkZWpdEtT8l8Mk
         jVUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPmr8CgoWulpXA8ozlVI2jc1SzUWdxbl+1IU1bUSu2JOJ2gt6pq8IyLCNZk5we4P/v1UDaus6/00yg@vger.kernel.org
X-Gm-Message-State: AOJu0YwATqy3EwVshfE/lUf4J6dA8eztMF8M+Bf2UTP8WKkCcWjekvl7
	+XbJLyTRfzB+6IDHyxUPn0pNyz2U5H2cnTHn5nCgIq2Sn9FB80gCQhI5ogg8tEIpoPI=
X-Gm-Gg: ASbGncskJtD+WxM3/XySsrhYMV6fWf7psafwEikqt+wJh9ZJ7tqXZWMJ3JqPWtXh76Y
	ogyI7dR0PDLXxPDuOE4PsZNnTyT2v2bRvemLTVSFrMcgfgef2zruxFgWqHBN0dwKutlAePDot5S
	rIV6zKuRukghQXCLocaKaM7IF1dSqV+5Xlm/3ik7kpEn5DgDFAkcWrtdM0F6LEwmaUuwZsVifJe
	u0V7AuUbAQVdea4Npx3TnNMtKXA/dIDGW7FBqT/M3J9Rdf3sQxXKCQRYIy/HfLJumJhObAcim9J
	BIbzz725/j2rMcSv1ZiNb+YcTqib9mm5aSwDHYpiwcaFs19hEHrtpGTSYofKMmVNQ7wzsea+xQU
	W0YIchb3+nJYmUd1brq6FdZdqS0KNDccuOb5hoQAKPjMG4fNEy/KQq9HwLIvFE0bPchpCGTFleE
	mOTIzI4Uhk1bwex1UDfSAmJOoPp3QNagA8lNn8vIn1Q5Ys1QSMopjjQeDGaHBClED/6O4rRGtfn
	IujlmSRKpvgVVa6b3aZ/dmBmRdeKD4LZKn7Nc3Ut+rdlphRDiI3Jl8=
X-Google-Smtp-Source: AGHT+IHNVBcPF4r1uhIP+zj56hLjLDUq4AexzJeI5WwqZEYSfzmRjyop2h3ZCez24VELoNyVU95XiQ==
X-Received: by 2002:a17:907:86a0:b0:b0b:f228:25a with SMTP id a640c23a62f3a-b6dba5f0b7cmr39405266b.64.1761581448554;
        Mon, 27 Oct 2025 09:10:48 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-82-50-34-170.retail.telecomitalia.it. [82.50.34.170])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8ceeaffasm742437466b.45.2025.10.27.09.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 09:10:48 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>,
	linux-amarula@amarulasolutions.com,
	Mark Brown <broonie@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
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
Subject: [PATCH v2 1/2] ARM: dts: imx28-amarula-rmm: add I2S audio
Date: Mon, 27 Oct 2025 17:10:23 +0100
Message-ID: <20251027161040.2020623-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
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

Changes in v2:
- Rename the codec node to audio-codec@18
- Drop an unnecessary newline

 .../boot/dts/nxp/mxs/imx28-amarula-rmm.dts    | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-amarula-rmm.dts b/arch/arm/boot/dts/nxp/mxs/imx28-amarula-rmm.dts
index af59211842fb..ddb64f3d0471 100644
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
@@ -154,6 +177,19 @@ &i2c0 {
 	pinctrl-0 = <&i2c0_pins_a>;
 	status = "okay";
 
+	tlv320aic3x: audio-codec@18 {
+		compatible = "ti,tlv320aic3x";
+		pinctrl-names = "default";
+		pinctrl-0 = <&tlv320aic3x_pins>;
+		reg = <0x18>;
+		reset-gpios = <&gpio2 4 GPIO_ACTIVE_LOW>;
+		#sound-dai-cells = <0>;
+		DVDD-supply = <&reg_1v8>;
+		IOVDD-supply = <&reg_3v3>;
+		AVDD-supply = <&reg_3v3>;
+		DRVDD-supply = <&reg_3v3>;
+	};
+
 	touchscreen: touchscreen@38 {
 		compatible = "edt,edt-ft5306";
 		reg = <0x38>;
@@ -246,6 +282,14 @@ MX28_PAD_PWM1__GPIO_3_17
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
@@ -269,6 +313,12 @@ &pwm {
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

base-commit: dcb6fa37fd7bc9c3d2b066329b0d27dedf8becaa
branch: imx28-amarula-rmm-audio

