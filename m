Return-Path: <devicetree+bounces-16663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B227EF32F
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 13:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49D34281297
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 12:59:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F99130FA5;
	Fri, 17 Nov 2023 12:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="FEyHZUob"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 410E5D5C
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 04:59:38 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4079ed65471so15992925e9.1
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 04:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700225976; x=1700830776; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=92KaagYK4Q6I8Q+kS3VXik470FxeSDcwqV61XGzdHMc=;
        b=FEyHZUobpTzduown+ZTLLesLoO7er3ohSmnSGW++hK1VvFdjs9Hlw6wnrsv0BVJvZj
         BRkHdiodRV6E2wh/1ufBVOh4v8WK7++lfrJ1F9SFxvJpfxZM3UwrcwpnIB61tN4cEKG2
         2hqKaU6u44NtRGMi/D9+knHG17q3gDEU5WE3xMSXBi4J6ySnnAzNYiDnaggggWjfRxlE
         +R/Xn5j86N8v9KwgQuUyh7q/nFXpornDCxdOZmFsOFF8HbYq0jGJDjMgnpXm4G68P+/I
         0zkLKGGNeiJr3qn03Y1nIc7NQD04olXfIM0Q8k4qjPMyPk2bnY+phURakArauPyeA69u
         wxiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700225976; x=1700830776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=92KaagYK4Q6I8Q+kS3VXik470FxeSDcwqV61XGzdHMc=;
        b=V5cO7XvLzGYW7rjA/6nL5ZISm6qiGCFL3X/NnStIncT1xiwsLxzAG+MlabyIKHb7/e
         oFwPMcIDMwTtsED/i1FF6SWCiPIUcvVH+uZjJcHiVFXVJGNPfTNQIXn+/UWHy+NzjWkC
         s5Ou5BCnkaKwb+01T6gq+Oml7M50KryZZB4txTnJMYJqHCJFPt29RLVtQyzkPwAEbJ6b
         dtVPTNKAVl97LLirdgVnAMGXnENWXs4uMMKqOT1//1uYiu0D9ePeys0kH6x8M+CI5oAy
         J9NGh5WxGf1Ir0ITfqp5y2V4jAcxgStyJPXXptaQUasAzZPW5fb87A2hwwfjSl65h6Ax
         /8nA==
X-Gm-Message-State: AOJu0YxPbx7GxRw0hlO7F5g2PZUmiFNmaUFA0RvU0cCxAO18Mfv49PFm
	3KER2kx3c14/xKJiC5fy8UIzmQ==
X-Google-Smtp-Source: AGHT+IHJarfDKVM02/KEz4vsEFlQsu9jRbie2N/lyjCIFyQbFZsbgK7Bpgp8NaxTDgyBN/qVE/f4NQ==
X-Received: by 2002:a05:600c:3c9b:b0:401:2ee0:7558 with SMTP id bg27-20020a05600c3c9b00b004012ee07558mr4340885wmb.32.1700225976737;
        Fri, 17 Nov 2023 04:59:36 -0800 (PST)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:8196:e423:38cb:9a09])
        by smtp.googlemail.com with ESMTPSA id k21-20020a05600c1c9500b0040a487758dcsm2671343wms.6.2023.11.17.04.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 04:59:36 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	JunYi Zhao <junyi.zhao@amlogic.com>
Subject: [PATCH v2 5/6] arm: dts: amlogic: migrate pwms to new meson8 v2 binding
Date: Fri, 17 Nov 2023 13:59:15 +0100
Message-ID: <20231117125919.1696980-6-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231117125919.1696980-1-jbrunet@baylibre.com>
References: <20231117125919.1696980-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

Update Amlogic based SoC PWMs to meson8-pwm-v2 compatible

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm/boot/dts/amlogic/meson.dtsi           |  4 ++--
 arch/arm/boot/dts/amlogic/meson8.dtsi          | 16 +++++++++++++---
 arch/arm/boot/dts/amlogic/meson8b-ec100.dts    |  2 --
 arch/arm/boot/dts/amlogic/meson8b-mxq.dts      |  2 --
 arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts |  2 --
 arch/arm/boot/dts/amlogic/meson8b.dtsi         | 16 +++++++++++++---
 6 files changed, 28 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/amlogic/meson.dtsi b/arch/arm/boot/dts/amlogic/meson.dtsi
index 8e3860d5d916..80cc004ad5fe 100644
--- a/arch/arm/boot/dts/amlogic/meson.dtsi
+++ b/arch/arm/boot/dts/amlogic/meson.dtsi
@@ -83,14 +83,14 @@ i2c_A: i2c@8500 {
 			};
 
 			pwm_ab: pwm@8550 {
-				compatible = "amlogic,meson-pwm";
+				compatible = "amlogic,meson8-pwm-v2";
 				reg = <0x8550 0x10>;
 				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
 			pwm_cd: pwm@8650 {
-				compatible = "amlogic,meson-pwm";
+				compatible = "amlogic,meson8-pwm-v2";
 				reg = <0x8650 0x10>;
 				#pwm-cells = <3>;
 				status = "disabled";
diff --git a/arch/arm/boot/dts/amlogic/meson8.dtsi b/arch/arm/boot/dts/amlogic/meson8.dtsi
index 59932fbfd5d5..153b8fe9c506 100644
--- a/arch/arm/boot/dts/amlogic/meson8.dtsi
+++ b/arch/arm/boot/dts/amlogic/meson8.dtsi
@@ -450,10 +450,14 @@ analog_top: analog-top@81a8 {
 	};
 
 	pwm_ef: pwm@86c0 {
-		compatible = "amlogic,meson8-pwm", "amlogic,meson8b-pwm";
+		compatible = "amlogic,meson8-pwm-v2";
 		reg = <0x86c0 0x10>;
 		#pwm-cells = <3>;
 		status = "disabled";
+		clocks = <&xtal>,
+			 <0>,
+			 <&clkc CLKID_FCLK_DIV4>,
+			 <&clkc CLKID_FCLK_DIV3>;
 	};
 
 	clock-measure@8758 {
@@ -702,11 +706,17 @@ timer@600 {
 };
 
 &pwm_ab {
-	compatible = "amlogic,meson8-pwm", "amlogic,meson8b-pwm";
+	clocks = <&xtal>,
+		 <0>,
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
 };
 
 &pwm_cd {
-	compatible = "amlogic,meson8-pwm", "amlogic,meson8b-pwm";
+	clocks = <&xtal>,
+		 <0>,
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
 };
 
 &rtc {
diff --git a/arch/arm/boot/dts/amlogic/meson8b-ec100.dts b/arch/arm/boot/dts/amlogic/meson8b-ec100.dts
index 3da47349eaaf..cdd7d04db256 100644
--- a/arch/arm/boot/dts/amlogic/meson8b-ec100.dts
+++ b/arch/arm/boot/dts/amlogic/meson8b-ec100.dts
@@ -441,8 +441,6 @@ &pwm_cd {
 	status = "okay";
 	pinctrl-0 = <&pwm_c1_pins>, <&pwm_d_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>, <&xtal>;
-	clock-names = "clkin0", "clkin1";
 };
 
 &rtc {
diff --git a/arch/arm/boot/dts/amlogic/meson8b-mxq.dts b/arch/arm/boot/dts/amlogic/meson8b-mxq.dts
index 7adedd3258c3..68f4f70f4f03 100644
--- a/arch/arm/boot/dts/amlogic/meson8b-mxq.dts
+++ b/arch/arm/boot/dts/amlogic/meson8b-mxq.dts
@@ -162,8 +162,6 @@ &pwm_cd {
 	status = "okay";
 	pinctrl-0 = <&pwm_c1_pins>, <&pwm_d_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>, <&xtal>;
-	clock-names = "clkin0", "clkin1";
 };
 
 &uart_AO {
diff --git a/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts b/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts
index 941682844faf..ff955b960688 100644
--- a/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts
+++ b/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts
@@ -347,8 +347,6 @@ &pwm_cd {
 	status = "okay";
 	pinctrl-0 = <&pwm_c1_pins>, <&pwm_d_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>, <&xtal>;
-	clock-names = "clkin0", "clkin1";
 };
 
 &rtc {
diff --git a/arch/arm/boot/dts/amlogic/meson8b.dtsi b/arch/arm/boot/dts/amlogic/meson8b.dtsi
index 5198f5177c2c..6c91eda92e8b 100644
--- a/arch/arm/boot/dts/amlogic/meson8b.dtsi
+++ b/arch/arm/boot/dts/amlogic/meson8b.dtsi
@@ -404,10 +404,14 @@ analog_top: analog-top@81a8 {
 	};
 
 	pwm_ef: pwm@86c0 {
-		compatible = "amlogic,meson8b-pwm";
+		compatible = "amlogic,meson8-pwm-v2";
 		reg = <0x86c0 0x10>;
 		#pwm-cells = <3>;
 		status = "disabled";
+		clocks = <&xtal>,
+			 <0>,
+			 <&clkc CLKID_FCLK_DIV4>,
+			 <&clkc CLKID_FCLK_DIV3>;
 	};
 
 	clock-measure@8758 {
@@ -677,11 +681,17 @@ timer@600 {
 };
 
 &pwm_ab {
-	compatible = "amlogic,meson8b-pwm";
+	clocks = <&xtal>,
+		 <0>,
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
 };
 
 &pwm_cd {
-	compatible = "amlogic,meson8b-pwm";
+	clocks = <&xtal>,
+		 <0>,
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
 };
 
 &rtc {
-- 
2.42.0


