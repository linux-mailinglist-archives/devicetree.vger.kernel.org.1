Return-Path: <devicetree+bounces-142342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA9EA25066
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 23:46:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89129163905
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 22:46:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA0BC21480C;
	Sun,  2 Feb 2025 22:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="wQqwNU+T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E023A1FECC0
	for <devicetree@vger.kernel.org>; Sun,  2 Feb 2025 22:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738536373; cv=none; b=EX+ocyB+2KBYwX1zJUcJlnlZa1+3ArMH7YyKEPpC1pVJEdUxrEV61zTkdFZjAg3ZRC14rLBVauao3UVIVlbWM464950gs63rej7PmYhvNgtiY1RD6CXcGpnDc1JKl44E79ddtuKX97OxIpCl+enfYvjCe7dZvJ1LUh+Mb3z7wDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738536373; c=relaxed/simple;
	bh=T98S+pGzdNbmV42AhYuKYRj743FzmMjwgcSboUSxCBw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rb1Shx/GDAr0bbmVKtzD1mYCZXFjlZQnIoag1vaUC46QTUIemaiqMw935nNyYSLf8eB6qFzHEusCa1nVmCO7la6C47rVfb+HfnadvIUdBa0XIA8Kd2iB61bwIeuzLJLIqBuQ07jGcGU4XEbs28ZfMb9qJHH1Jky78AP178n8EZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=wQqwNU+T; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43622267b2eso38224165e9.0
        for <devicetree@vger.kernel.org>; Sun, 02 Feb 2025 14:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1738536370; x=1739141170; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F5vcQu/1K5FdqOrNwmQFEJLgitsrpGAB1g81pZv85Gk=;
        b=wQqwNU+TOXYabLH7TgAEL8TtA+fi3G22fxKiMtiWTEP48J7mTBoDWBeACCrUzYUEdL
         RlOKXtyOVV2S/Ydn5uj3hTpC0SDiAQdMY3OEcT1RfYQ3lCQlaJ8p6MAm3gx/Q5wD+OeU
         m01ltsvgjOMbeXzkCY3JFHePZF+Yut0JMLhHNvC+jaXR05O5Nqg/1MBHD/TY/QMsrLnQ
         5HQIcVwOIXPYbkUhS9+xv5Wbe+5A2GB5LOoCxtnrHr8wJGpKvnK7xlcI3qRFwKc5jmXg
         JEDM35u1eGX5yHIV55Oetiv6MI7/jLS3l4Ooy8iAS+sEILFIG9mtzpmBw5IDUVyQ7hcP
         kYvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738536370; x=1739141170;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F5vcQu/1K5FdqOrNwmQFEJLgitsrpGAB1g81pZv85Gk=;
        b=j5U9RaIGOAvx4qrslWHwIaPWoMTL2YV6wQuEybTTmBeeLun+6mGkiyJ6gAV8AYsvPL
         viL4Gu80qtnMux54ygcVIS7w/yKXWC8IRqMRfD0N/QJ8ydWatuIhzGMoGzPNryp2vDlZ
         SYBz3+aP4U8gZ+AqcSsYEn7hht30+8/2CZbM1exNWgJXwZO7/3xRqDq4cx+ufTOQyoYh
         /By19Zf525gA7QW+7eKQCLSBTn4dgQ8qy3qVpmLIIB3HCv9J6yQnLpovD3D835ki6lLe
         1j/S1CnEvbgI9poX8xmcM6eDWyg0tHh57vmhQtodLELkl1YS7JaieUs7QZNa9to+pDme
         /wyA==
X-Forwarded-Encrypted: i=1; AJvYcCX9IJ3938Ra2ucDi8B1wsaYxEbWrS5bRTmoNuxsItVE5dzVELNqpwqDES3Gd3jWfJGzHO099L1pAotA@vger.kernel.org
X-Gm-Message-State: AOJu0YwpU2wNUPMFzp1Y8HXakPd/qSwai27QPZVBWBCPR/5iJBw+Bcl9
	YQoFGs98K+xJJUDJxvWrFm/7Tr14c3nFRZaddNt8Zmicl7wVts8vQnkVtBThk8FtM4RpJ+8LDq2
	Y
X-Gm-Gg: ASbGncus+WURmzooevUqkJU/B2bHn79qLeJGC6dMtdTVICcQXy3xVQFsLbTgPiL3Wsu
	XaGlMUwLw8kuxxgLzdWZJPBLWjz7Q261WWRAsTOQQu2m9KDxAyx7NqD/mHLsiN4lX5zT0c/67aI
	xtWnZpwmFrNMTAFK2JzXH9JKlClV7jxV5Ik2CQJ50k4LjP3ilzJUGxzyael3ffgUh7H4pHPmFim
	uAo29ShdQPubRJYq5wRlEmxtm0XoirE27JMBww7z+0VXVeH9YLDPiGLGV9mXc5KaZMadIkjMlS6
	U7B2M78apXcvgWHvMTlNUVLQLvo=
X-Google-Smtp-Source: AGHT+IEOcyz26yEYEBloIAD/eX91w98+oR2t4ySWYh7FM1CTMSxD5pq38//Ho8iKHeR37e70liW4RA==
X-Received: by 2002:a05:600c:1c1e:b0:432:7c08:d0ff with SMTP id 5b1f17b1804b1-438dc40b8e6mr154115045e9.23.1738536370155;
        Sun, 02 Feb 2025 14:46:10 -0800 (PST)
Received: from [100.64.0.4] ([2a02:a03f:6bc3:6b01:62c7:350e:556e:d0f0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438dcc80e61sm170849605e9.34.2025.02.02.14.46.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2025 14:46:09 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Sun, 02 Feb 2025 23:45:51 +0100
Subject: [PATCH 1/2] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable
 display
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250202-fp5-display-v1-1-f52bf546e38f@fairphone.com>
References: <20250202-fp5-display-v1-0-f52bf546e38f@fairphone.com>
In-Reply-To: <20250202-fp5-display-v1-0-f52bf546e38f@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Configure the MDSS nodes for the phone and add the panel node.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 94 ++++++++++++++++++++--
 1 file changed, 89 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 389eca9b9e68187980e92ac921a77a3c3b54f6a5..965e32473a58ae4748e4cb748980fad1d2b06ab6 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -138,6 +138,34 @@ vreg_ois_dvdd_1p1: regulator-ois-dvdd-1p1 {
 		vin-supply = <&vreg_s8b>;
 	};
 
+	vreg_oled_dvdd: regulator-oled-dvdd {
+		compatible = "regulator-fixed";
+		regulator-name = "oled_dvdd";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+
+		gpio = <&tlmm 51 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		vin-supply = <&vreg_s1b>;
+
+		regulator-boot-on;
+	};
+
+	vreg_oled_vci: regulator-oled-vci {
+		compatible = "regulator-fixed";
+		regulator-name = "oled_vci";
+		regulator-min-microvolt = <3000000>;
+		regulator-max-microvolt = <3000000>;
+
+		gpio = <&pm8350c_gpios 7 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		vin-supply = <&vreg_l13c>;
+
+		regulator-boot-on;
+	};
+
 	reserved-memory {
 		cont_splash_mem: cont-splash@e1000000 {
 			reg = <0x0 0xe1000000 0x0 0x2300000>;
@@ -597,11 +625,6 @@ eeprom@51 {
 	};
 };
 
-&dispcc {
-	/* Disable for now so simple-framebuffer continues working */
-	status = "disabled";
-};
-
 &gcc {
 	protected-clocks = <GCC_CFG_NOC_LPASS_CLK>,
 			   <GCC_EDP_CLKREF_EN>,
@@ -733,6 +756,46 @@ &ipa {
 	status = "okay";
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi {
+	vdda-supply = <&vreg_l6b>;
+	status = "okay";
+
+	panel@0 {
+		compatible = "fairphone,fp5-rm692e5-boe", "raydium,rm692e5";
+		reg = <0>;
+
+		reset-gpios = <&tlmm 44 GPIO_ACTIVE_LOW>;
+
+		vci-supply = <&vreg_oled_vci>;
+		vddio-supply = <&vreg_l12c>;
+		dvdd-supply = <&vreg_oled_dvdd>;
+
+		pinctrl-0 = <&disp_reset_n_active>, <&mdp_vsync>;
+		pinctrl-1 = <&disp_reset_n_suspend>, <&mdp_vsync>;
+		pinctrl-names = "default", "sleep";
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&mdss_dsi0_out>;
+			};
+		};
+	};
+};
+
+&mdss_dsi0_out {
+	data-lanes = <0 1 2 3>;
+	remote-endpoint = <&panel_in>;
+};
+
+&mdss_dsi_phy {
+	vdds-supply = <&vreg_l10c>;
+	status = "okay";
+};
+
 &pm7250b_adc {
 	pinctrl-0 = <&pm7250b_adc_default>;
 	pinctrl-names = "default";
@@ -1026,6 +1089,20 @@ bluetooth_enable_default: bluetooth-enable-default-state {
 		bias-disable;
 	};
 
+	disp_reset_n_active: disp-reset-n-active-state {
+		pins = "gpio44";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-disable;
+	};
+
+	disp_reset_n_suspend: disp-reset-n-suspend-state {
+		pins = "gpio44";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
 	hall_sensor_default: hall-sensor-default-state {
 		pins = "gpio155";
 		function = "gpio";
@@ -1033,6 +1110,13 @@ hall_sensor_default: hall-sensor-default-state {
 		bias-pull-up;
 	};
 
+	mdp_vsync: mdp-vsync-state {
+		pins = "gpio80";
+		function = "mdp_vsync";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
 	pm8008_int_default: pm8008-int-default-state {
 		pins = "gpio25";
 		function = "gpio";

-- 
2.48.1


