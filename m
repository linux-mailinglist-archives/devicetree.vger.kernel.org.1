Return-Path: <devicetree+bounces-237763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B39C1C53CF4
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 18:56:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C99D45043BF
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 17:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8C9C345CAE;
	Wed, 12 Nov 2025 17:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="YLA/+EdJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5134343D79
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762967912; cv=none; b=VGTouqGir9lhXE3dUN0B9TFuIf1DgdfTqIbi6+Lphl1Zu1kA3ihMEyTczyPS81KGJbtQK8Lh4bYFjQnhGUmQBSzSh2R0nUB9IHpXBPmgJJf6BefjYV8ZrVrhaH43Wcg7srl6THllATtOdW7XvBi6MTxDy3p5bR/KRrHn3gW/FzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762967912; c=relaxed/simple;
	bh=ks+sEAj6GQVaXnYu8XaFbXtzxs88Lg0JjUVI5fWnGOE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cRIjQG0mA49aAGdvaFc+2bjFIwRLd+aTyO8vCtruq/1N23yTYL43HFQCJK5c3QYzdeEadKIhm2GXDcBpRDlts8/sCaHwg2x0dZTyBPQeLfF+yatzDfrRH8spp7lGP6vuiB9nz1w9yYPZvvSSEqQdW5nhbCZmQPA9ydJ60KrzZKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=YLA/+EdJ; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-64149f78c0dso1805067a12.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:18:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1762967909; x=1763572709; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5BwUXFYlbD6N53XtEJgB9mVWjzWl6gDwebbOYaZsPHA=;
        b=YLA/+EdJVvYgrdtPoXSvu0FA7rDh57Q+Nsdr5LGJ0h16BfAivyzZQw2arCnsIEZ15d
         qeEcoG28Zvs69rsGA+yIpG4oP8pZ4Ds2mFW4aG8AZ2mgCYaiL1URDRi6N/RxNCXHfHAL
         o8wvp/MY7D/HfEHF3HKdlhUVT4Sy1hVpjjwEo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762967909; x=1763572709;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5BwUXFYlbD6N53XtEJgB9mVWjzWl6gDwebbOYaZsPHA=;
        b=H4Jxy52A/31Aqg24Iuqq5xOeyRRaBfTnlN+cNKs+f9EXccD3beTyo7taDPfBojicJr
         tLAagWSwV/O2kJWFsSxMzSYyYwRPVsexTeIezCnS3zcbFAJM9KBFvaioMhB1zsFsy1tX
         IubPUrDIYzypPxOX/a4OQduOhaItkMhwqCr1m5BQiLXYxnQrxov0b74keO6JUcMzXDm3
         77Z6yHz1JmNOPh2v8bFUx8XaFivtPYnSsxR5T79wyLWWKpeEQZnhrOQhJhDIIg1HTMR5
         xbN876XR0sowbzU7/orG1P7j48FhOOZC1m4veggp68pEVRH8lhy2Bl7xyzZLWYhgzPvd
         vkGg==
X-Forwarded-Encrypted: i=1; AJvYcCWwfhZGGheM+NjJpLdwOHFnHl0bulh7GCgi7Qz3+pP9t7p47oiCRQ4qEn0fbgjh3RTKMUqBnOtfNflW@vger.kernel.org
X-Gm-Message-State: AOJu0Yws6fwK5mvLCeGixLYTwgkquyDLhhMF+nU9lNV8zw9+9TPqfyq2
	OlxkG9bzUvbMB6GfnhLBcM+L73iTH3AWCzaVHsgYefUIP5fGQATKaIP0y93Ujg0ezgs=
X-Gm-Gg: ASbGnctJ9uEjYe2LtPX2kfUdKgrpquS9Y1pxd6w/+upcithsGfRN7+npnslDbNcxi98
	0DNbYUgGdmjDAMAUchZZLx0A51XuQI61XRyztKoJC5YJtWYQowvAgQS/nLbt3RddLCW9SGMBmyC
	XLYQM/2hSP6/9nxl5NTq8yRat/yHNRELXn1FIFYPh8hu/Feat4ro+TEMnpViI/mWL9nODLyi30Q
	GsmSwR+wyr0XswpEnDbLQQH5Sjvbf022EdgBb47OGOhmLHpyuT0o5T3/A02z5iXnXwXkO+m3jP2
	1PQ2qOghEXWoZh+DGbiLpux8ZgUS6EEJFcni+PMhyclxlF4s23GnQQSZ4t6sqpK4JTYkXkUBrB6
	4YdMg+4p/PVuCewG22MI/lsz8wYrXSVqLkyFtv6+eriYhnH/TPyqLqG1x82TGQBkYXbopd2EJxV
	h8xvmzRaZU9bpHW30EnLKL1mdjKXmyXBTMwymOWicABljIDUFPlC0/FlCp0JC7IUT2Lv7g9VR1t
	mBtrmrmTLURYZ7G+Jz6RFBk2lOjkZpBvh1xNFEhdbw/
X-Google-Smtp-Source: AGHT+IGY2/902SKJFzIS3Gu24NoIxJSLCSqdXyB/GpWGp3CPdaOhQYc9wwsjQIgb8wLhfnUpqSpx5w==
X-Received: by 2002:a17:907:6d0d:b0:b70:b5b9:1f82 with SMTP id a640c23a62f3a-b7331a6ef31mr445484266b.31.1762967909196;
        Wed, 12 Nov 2025 09:18:29 -0800 (PST)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-79-54-71-163.retail.telecomitalia.it. [79.54.71.163])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73381dd3besm180731866b.43.2025.11.12.09.18.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 09:18:28 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Mark Brown <broonie@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	linux-amarula@amarulasolutions.com,
	Frank Li <Frank.Li@nxp.com>,
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
Subject: [RESEND PATCH v2 1/2] ARM: dts: imx28-amarula-rmm: add I2S audio
Date: Wed, 12 Nov 2025 18:17:12 +0100
Message-ID: <20251112171820.4046537-1-dario.binacchi@amarulasolutions.com>
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

base-commit: 24172e0d79900908cf5ebf366600616d29c9b417
branch: imx28-amarula-rmm-audio

