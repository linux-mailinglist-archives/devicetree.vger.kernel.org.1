Return-Path: <devicetree+bounces-233477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 88621C22B88
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 00:39:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6A3704E1A7C
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 23:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFA7133E346;
	Thu, 30 Oct 2025 23:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AIv7OXs3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7FDC2BD590
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 23:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761867540; cv=none; b=Nlu37SEQyGehDEx2N37gwEvukznd/nhHHaNtQ1NsFdOC328HkIWwD37ia2mLGpV1Jhk5EsFy/8nqH+pD9ED45tfpFHTV+kBPZQAh9tpL7R4yRCq6X1oaS3uz0FI9L735eVzjqz4jy7ZSj8pJwjKeVEQbbOCwrW/CKw4hQk+JBl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761867540; c=relaxed/simple;
	bh=9K3g1fCDQB00UZtMahu41xV/73v3J4bRn59WZiFPp0s=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=bHsplhZNuYkDSEWgHo+nwQH38+ghaKcOZ7LG5oiLUyZok9YQVrmVk++pN/KTk26zur8IjAUjnz0oY/6sMg5aJwI46LyamZQeo8RuTzcNom2CmmVJJmNrDOm4p235S7NHI7kMuYe0h/ZsO4Qz4wCr+HwoZN02I6mkr6h1+s6wMRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AIv7OXs3; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b3c82276592so28400966b.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 16:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761867537; x=1762472337; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QW/G35MOi1nbpenKn0jGc/i9ZxGqUMDCw5SmHmcN3xo=;
        b=AIv7OXs3jIaoA1ELEKzQBBso9E50TXsIF8n66R+00B/b90uKTfCxXqbq8jmIcH0r/E
         g+4RTRMQqoJMH6FZyNks/tkvrUDETxFBVEUpOVsJ/bBRF+Mul638jCfomoqdxEP3OIwb
         q/yawL/Tj70i6aKfzEcUQtq0yFKgtV54ra/c6NfmQ1WYjIUX0uYUB1HX1XHHzzwKdD0t
         ar9iRoZCblQK9LgSrBDXfQYViAYaKHPZUalfd7xZknO3M1vwwKtqOeSfxo1vJcCk6cmO
         fZl6KigArMaSCpa2VUl7RHKp2KBtrAgNQGEAj2i2SXZ+JN7aaSfLaENqIgNVviRnid42
         jY1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761867537; x=1762472337;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QW/G35MOi1nbpenKn0jGc/i9ZxGqUMDCw5SmHmcN3xo=;
        b=owSln8WKZD6XZeo3Tij0xCxXpIbVLEkDm53CTevSx6nQ4dvUDqo4btOFXlc01+J8//
         L+c1NxTnOeberJ2UOnj/XTCgwc68Z7O1tBy4kIqskO6WpCJkFT7nwvSvO5Jvl0/Og7kx
         oNN1N7OtGPgziR85JhR8FnB83LYjuWWRCds4hSGhjzAjARLfmpLPHv+QgcHKPOrv+vK4
         HIMS42UTyvKJOHOa5TBHH8B3QVhIVA61REQqNovEzu8P9YYuKQvzty9e7YOqM6ibOEZn
         g7DAIRhXwuGB19t4iTaQZ8ED8r/965x20QtYryqwsMiThnx7r+kSStqDwT9y0mZ+NbQL
         mCzw==
X-Forwarded-Encrypted: i=1; AJvYcCVcWcStgIQMPdg2MxeOoVHzfpTzlMAn3JUuR58vZiRnrglh5NeNEuVtOiIXtjYAQ1LnGuzRSE2tMsI2@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe1JTGVefZj/NYan6leA61cIbzvvJnrGCLrgdTQXakfb4VTc/P
	6vV5oMyf3vfOAdlkP+hpeLIFUrWRaPIr9RjhS354shymzHDctE8xLpKM
X-Gm-Gg: ASbGnctJ/nGXahgVgk8w0CdTDrr0LtLxPXfky3yM8TOb3fALEX4qTxMgucIHUN7WfLV
	3TVb6Ncm8pR0GNY+zqndOM8kw8eAAdH+5Q5UKbYSk9idVQE3QV4ByWHHqqNttx2+uc/euNxppOC
	pPK35UovRfnWuPlQSDSK1k7Ul3gy1s1/PMfjQVzSOIJ3YMvELLPpXkjKYI0C92vDq+MauRxfwsN
	qG5j/jeknq+1NKStg1Z6B36petjjq6shT77eK1FR1amqxnPoJUE/7K1jDyjkZhNKg6sdgmB04oh
	RfQQ13osGJ0s/EkvWDnqXJIFEMZiAGXD0WRynOZGBpS715RfekfQw3pcf4JK+tYqCr3MtOxeVLT
	0whyjnp9ocLXAlK8f3DSCKs5zn332MKriXTOdNyciJAZntjWQFF9FO99viciaDjF/kPOCtSbTys
	PwBiweOS+DBL5en+asRCOonZzqbGdzWRxqkeA0PljKAsoobLqxow==
X-Google-Smtp-Source: AGHT+IFu52Lv7EHZGXKUGlAUADqfNrD4YHhFGg0CHcltbEW9aIgyfK1tlwF8IrE/Dn5an5+ltyyBEw==
X-Received: by 2002:a17:907:3c8c:b0:b4e:e4c4:4245 with SMTP id a640c23a62f3a-b70701891d9mr74782666b.3.1761867536930;
        Thu, 30 Oct 2025 16:38:56 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7077c3dbeesm11779266b.44.2025.10.30.16.38.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 16:38:56 -0700 (PDT)
Message-ID: <b3d05df4-a916-48e1-8d9e-590782806bd5@gmail.com>
Date: Fri, 31 Oct 2025 00:38:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] arm: dts: rockchip: fix tps65910 nodes
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

The binding for tps65910 is converted to yaml and they have
changed the regulator nodename layout and added some required
properties. Fix the tps65910 nodes on Rockchip boards.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../boot/dts/rockchip/rk3066a-bqcurie2.dts    | 34 ++++++++++--------
 .../boot/dts/rockchip/rk3066a-marsboard.dts   | 34 ++++++++++--------
 .../boot/dts/rockchip/rk3066a-rayeager.dts    | 35 +++++++++++--------
 3 files changed, 59 insertions(+), 44 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3066a-bqcurie2.dts b/arch/arm/boot/dts/rockchip/rk3066a-bqcurie2.dts
index c227691013ea..65f8bc804d21 100644
--- a/arch/arm/boot/dts/rockchip/rk3066a-bqcurie2.dts
+++ b/arch/arm/boot/dts/rockchip/rk3066a-bqcurie2.dts
@@ -80,26 +80,33 @@ &i2c1 {
 	clock-frequency = <400000>;

 	tps: tps@2d {
+		compatible = "ti,tps65910";
 		reg = <0x2d>;

+		gpio-controller;
+		#gpio-cells = <2>;
+
 		interrupt-parent = <&gpio6>;
 		interrupts = <RK_PA6 IRQ_TYPE_LEVEL_LOW>;

+		interrupt-controller;
+		#interrupt-cells = <2>;
+
 		vcc5-supply = <&vcc_io>;
 		vcc6-supply = <&vcc_io>;

 		regulators {
-			vcc_rtc: regulator@0 {
+			vcc_rtc: vrtc {
 				regulator-name = "vcc_rtc";
 				regulator-always-on;
 			};

-			vcc_io: regulator@1 {
+			vcc_io: vio {
 				regulator-name = "vcc_io";
 				regulator-always-on;
 			};

-			vdd_arm: regulator@2 {
+			vdd_arm: vdd1 {
 				regulator-name = "vdd_arm";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <1500000>;
@@ -107,7 +114,7 @@ vdd_arm: regulator@2 {
 				regulator-always-on;
 			};

-			vcc_ddr: regulator@3 {
+			vcc_ddr: vdd2 {
 				regulator-name = "vcc_ddr";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <1500000>;
@@ -115,42 +122,42 @@ vcc_ddr: regulator@3 {
 				regulator-always-on;
 			};

-			vcc18_cif: regulator@5 {
+			vcc18_cif: vdig1 {
 				regulator-name = "vcc18_cif";
 				regulator-always-on;
 			};

-			vdd_11: regulator@6 {
+			vdd_11: vdig2 {
 				regulator-name = "vdd_11";
 				regulator-always-on;
 			};

-			vcc_25: regulator@7 {
+			vcc_25: vpll {
 				regulator-name = "vcc_25";
 				regulator-always-on;
 			};

-			vcc_18: regulator@8 {
+			vcc_18: vdac {
 				regulator-name = "vcc_18";
 				regulator-always-on;
 			};

-			vcc25_hdmi: regulator@9 {
+			vcc25_hdmi: vaux1 {
 				regulator-name = "vcc25_hdmi";
 				regulator-always-on;
 			};

-			vcca_33: regulator@10 {
+			vcca_33: vaux2 {
 				regulator-name = "vcca_33";
 				regulator-always-on;
 			};

-			vcc_tp: regulator@11 {
+			vcc_tp: vaux33 {
 				regulator-name = "vcc_tp";
 				regulator-always-on;
 			};

-			vcc28_cif: regulator@12 {
+			vcc28_cif: vmmc {
 				regulator-name = "vcc28_cif";
 				regulator-always-on;
 			};
@@ -158,9 +165,6 @@ vcc28_cif: regulator@12 {
 	};
 };

-/* must be included after &tps gets defined */
-#include "../tps65910.dtsi"
-
 &mmc0 { /* sdmmc */
 	status = "okay";
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts b/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts
index de42d1855121..15dbe1677e30 100644
--- a/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts
+++ b/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts
@@ -96,11 +96,18 @@ &i2c1 {
 	clock-frequency = <400000>;

 	tps: tps@2d {
+		compatible = "ti,tps65910";
 		reg = <0x2d>;

+		gpio-controller;
+		#gpio-cells = <2>;
+
 		interrupt-parent = <&gpio6>;
 		interrupts = <RK_PA4 IRQ_TYPE_LEVEL_LOW>;

+		interrupt-controller;
+		#interrupt-cells = <2>;
+
 		vcc1-supply = <&vsys>;
 		vcc2-supply = <&vsys>;
 		vcc3-supply = <&vsys>;
@@ -111,17 +118,17 @@ tps: tps@2d {
 		vccio-supply = <&vsys>;

 		regulators {
-			vcc_rtc: regulator@0 {
+			vcc_rtc: vrtc {
 				regulator-name = "vcc_rtc";
 				regulator-always-on;
 			};

-			vcc_io: regulator@1 {
+			vcc_io: vio {
 				regulator-name = "vcc_io";
 				regulator-always-on;
 			};

-			vdd_arm: regulator@2 {
+			vdd_arm: vdd1 {
 				regulator-name = "vdd_arm";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <1500000>;
@@ -129,7 +136,7 @@ vdd_arm: regulator@2 {
 				regulator-always-on;
 			};

-			vcc_ddr: regulator@3 {
+			vcc_ddr: vdd2 {
 				regulator-name = "vcc_ddr";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <1500000>;
@@ -137,41 +144,41 @@ vcc_ddr: regulator@3 {
 				regulator-always-on;
 			};

-			vcc18_cif: regulator@5 {
+			vcc18_cif: vdig1 {
 				regulator-name = "vcc18_cif";
 				regulator-always-on;
 			};

-			vdd_11: regulator@6 {
+			vdd_11: vdig2 {
 				regulator-name = "vdd_11";
 				regulator-always-on;
 			};

-			vcc_25: regulator@7 {
+			vcc_25: vpll {
 				regulator-name = "vcc_25";
 				regulator-always-on;
 			};

-			vcc_18: regulator@8 {
+			vcc_18: vdac {
 				regulator-name = "vcc_18";
 				regulator-always-on;
 			};

-			vcc25_hdmi: regulator@9 {
+			vcc25_hdmi: vaux1 {
 				regulator-name = "vcc25_hdmi";
 				regulator-always-on;
 			};

-			vcca_33: regulator@10 {
+			vcca_33: vaux2 {
 				regulator-name = "vcca_33";
 				regulator-always-on;
 			};

-			vcc_rmii: regulator@11 {
+			vcc_rmii: vaux33 {
 				regulator-name = "vcc_rmii";
 			};

-			vcc28_cif: regulator@12 {
+			vcc28_cif: vmmc {
 				regulator-name = "vcc28_cif";
 				regulator-always-on;
 			};
@@ -179,9 +186,6 @@ vcc28_cif: regulator@12 {
 	};
 };

-/* must be included after &tps gets defined */
-#include "../tps65910.dtsi"
-
 &emac {
 	phy = <&phy0>;
 	phy-supply = <&vcc_rmii>;
diff --git a/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts b/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts
index b0b029f14643..07c03ed6fac6 100644
--- a/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts
+++ b/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts
@@ -198,9 +198,18 @@ &i2c1 {
 	status = "okay";

 	tps: tps@2d {
+		compatible = "ti,tps65910";
 		reg = <0x2d>;
+
+		gpio-controller;
+		#gpio-cells = <2>;
+
 		interrupt-parent = <&gpio6>;
 		interrupts = <RK_PA4 IRQ_TYPE_EDGE_RISING>;
+
+		interrupt-controller;
+		#interrupt-cells = <2>;
+
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>, <&pwr_hold>;

@@ -214,19 +223,19 @@ tps: tps@2d {
 		vccio-supply = <&vsys>;

 		regulators {
-			vcc_rtc: regulator@0 {
+			vcc_rtc: vrtc {
 				regulator-name = "vcc_rtc";
 				regulator-always-on;
 			};

-			vcc_io: regulator@1 {
+			vcc_io: vio {
 				regulator-name = "vcc_io";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-always-on;
 			};

-			vdd_arm: regulator@2 {
+			vdd_arm: vdd1 {
 				regulator-name = "vdd_arm";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <1500000>;
@@ -234,7 +243,7 @@ vdd_arm: regulator@2 {
 				regulator-boot-on;
 			};

-			vcc_ddr: regulator@3 {
+			vcc_ddr: vdd2 {
 				regulator-name = "vcc_ddr";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <1500000>;
@@ -242,52 +251,52 @@ vcc_ddr: regulator@3 {
 				regulator-boot-on;
 			};

-			vcc18: regulator@5 {
+			vcc18: vdig1 {
 				regulator-name = "vcc18";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 				regulator-always-on;
 			};

-			vdd_11: regulator@6 {
+			vdd_11: vdig2 {
 				regulator-name = "vdd_11";
 				regulator-min-microvolt = <1100000>;
 				regulator-max-microvolt = <1100000>;
 				regulator-always-on;
 			};

-			vcc_25: regulator@7 {
+			vcc_25: vpll {
 				regulator-name = "vcc_25";
 				regulator-min-microvolt = <2500000>;
 				regulator-max-microvolt = <2500000>;
 				regulator-always-on;
 			};

-			vccio_wl: regulator@8 {
+			vccio_wl: vdac {
 				regulator-name = "vccio_wl";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 			};

-			vcc25_hdmi: regulator@9 {
+			vcc25_hdmi: vaux1 {
 				regulator-name = "vcc25_hdmi";
 				regulator-min-microvolt = <2500000>;
 				regulator-max-microvolt = <2500000>;
 			};

-			vcca_33: regulator@10 {
+			vcca_33: vaux2 {
 				regulator-name = "vcca_33";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
 			};

-			vcc_rmii: regulator@11 {
+			vcc_rmii: vaux33 {
 				regulator-name = "vcc_rmii";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
 			};

-			vcc28_cif: regulator@12 {
+			vcc28_cif: vmmc {
 				regulator-name = "vcc28_cif";
 				regulator-min-microvolt = <2800000>;
 				regulator-max-microvolt = <2800000>;
@@ -296,8 +305,6 @@ vcc28_cif: regulator@12 {
 	};
 };

-#include "../tps65910.dtsi"
-
 &i2c2 {
 	status = "okay";
 };
--
2.39.5


