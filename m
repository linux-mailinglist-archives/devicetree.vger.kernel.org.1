Return-Path: <devicetree+bounces-14069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5C67E1E6E
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 11:33:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 810C61C20A36
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 10:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA35370;
	Mon,  6 Nov 2023 10:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZF7fy3Rw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A55F1803A
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 10:33:33 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EAFEDB
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 02:33:27 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-507a98517f3so5300578e87.0
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 02:33:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699266805; x=1699871605; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=reA447aIIFYxN1xjv7yfL7bp0YsvVXcmKVyS5O3JwPw=;
        b=ZF7fy3RwnZM007n1gGoMAncyeGRvbq4FWon5hDx+7UoyVwaQLBVtz5H1xjeTMfWvVS
         ouhui4MIMUUE2m0pyDnwmSVgp+Fx2V7AtC/iJC2fUqWYq3RpRZKv7vG3yFAB9vK5rcCF
         xlSpTEU6y37ie40RUqMNt+MrkHSAaZBsc+xr5HzeH6X1ljGEO23qer+LW5vlJgj9/XjA
         0OZokxG3Ql1uEVPABXfSE2sUi+pvwcxMNI4as5osU/f5tJZHMmAglvjoiieE9mWdOWu+
         duXflIbG+QAZ+24x1EMyYbImMWxht5PD7taKJmShaxyhETo6L5Hoq6rhpm/ObCxdDQPF
         qzsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699266805; x=1699871605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=reA447aIIFYxN1xjv7yfL7bp0YsvVXcmKVyS5O3JwPw=;
        b=TvJgV5tDCf7i8bn5Zi/2+s4Rfi7vKqjPiQQfuL+PGOfW1VVUFscRsEK4RUoM+Pwkpz
         9RlQ5ExPzGbQZJKi4lJz/b891+qPBCCyXKMZnuN5RFA0PWLYQHr/FwpxFUV9QJOFzY2q
         I1lnkWpUlQjAjUfwmFl5jm2wCGxPVS3Guh8zka5IjKE58IJXpqRYNnazobQuT0++tAcn
         3GJ1cOL/QjvYFFIRnq1tZwwAd0I3NTTFLSVyss1lFg3z0iDVCyOp3cacYUc2m41jTbDS
         PFQdiAYdry/YAW/lo79MBlUPSnzdtFP64RU8tPCT4/vdi/46V3bUzl9Jz73C5bOGhEbk
         iBTg==
X-Gm-Message-State: AOJu0YyvMTEe1sJ3xCgotWuJjpvR7IwDkciJxvDssEpIO8GLys2nNM1E
	BY4gGaE6RuDIEkCTPVnTkyJFxw==
X-Google-Smtp-Source: AGHT+IEpIkswr5nLkaLCH2i7caOXfdN94iUg5sFhVwqG9VezeezD3Fzak0LQrIDiKZDLQYGEDEuPHg==
X-Received: by 2002:a05:6512:e93:b0:509:dec:9f3c with SMTP id bi19-20020a0565120e9300b005090dec9f3cmr21793967lfb.50.1699266805210;
        Mon, 06 Nov 2023 02:33:25 -0800 (PST)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:fabf:ec8c:b644:5d3])
        by smtp.googlemail.com with ESMTPSA id d1-20020a056000114100b0032415213a6fsm9033602wrx.87.2023.11.06.02.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 02:33:24 -0800 (PST)
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
Subject: [PATCH 6/6] arm64: dts: amlogic: migrate pwms to new meson8 v2 binding
Date: Mon,  6 Nov 2023 11:32:53 +0100
Message-ID: <20231106103259.703417-7-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231106103259.703417-1-jbrunet@baylibre.com>
References: <20231106103259.703417-1-jbrunet@baylibre.com>
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
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi    | 24 +++++++++++++---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 28 +++++++++++++++----
 .../dts/amlogic/meson-g12a-radxa-zero.dts     |  4 ---
 .../boot/dts/amlogic/meson-g12a-sei510.dts    |  4 ---
 .../boot/dts/amlogic/meson-g12a-u200.dts      |  2 --
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   |  4 ---
 .../amlogic/meson-g12b-a311d-libretech-cc.dts |  2 --
 .../dts/amlogic/meson-g12b-bananapi-cm4.dtsi  |  7 -----
 .../boot/dts/amlogic/meson-g12b-bananapi.dtsi |  4 ---
 .../dts/amlogic/meson-g12b-khadas-vim3.dtsi   |  4 ---
 .../boot/dts/amlogic/meson-g12b-odroid.dtsi   |  4 ---
 .../dts/amlogic/meson-g12b-radxa-zero2.dts    |  8 ------
 .../boot/dts/amlogic/meson-g12b-w400.dtsi     |  6 ----
 .../dts/amlogic/meson-gx-libretech-pc.dtsi    |  6 ----
 .../boot/dts/amlogic/meson-gx-p23x-q20x.dtsi  |  2 --
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi     |  8 +++---
 .../boot/dts/amlogic/meson-gxbb-nanopi-k2.dts |  2 --
 .../dts/amlogic/meson-gxbb-nexbox-a95x.dts    |  2 --
 .../boot/dts/amlogic/meson-gxbb-p20x.dtsi     |  2 --
 .../boot/dts/amlogic/meson-gxbb-vega-s95.dtsi |  2 --
 .../boot/dts/amlogic/meson-gxbb-wetek.dtsi    |  2 --
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi   | 26 +++++++++++++++++
 .../boot/dts/amlogic/meson-gxl-s805x-p241.dts |  2 --
 .../meson-gxl-s905w-jethome-jethub-j80.dts    |  2 --
 .../meson-gxl-s905x-hwacom-amazetv.dts        |  2 --
 .../amlogic/meson-gxl-s905x-khadas-vim.dts    |  2 --
 .../amlogic/meson-gxl-s905x-nexbox-a95x.dts   |  2 --
 .../dts/amlogic/meson-gxl-s905x-p212.dtsi     |  2 --
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    | 26 +++++++++++++++++
 .../dts/amlogic/meson-gxm-khadas-vim2.dts     |  4 ---
 .../boot/dts/amlogic/meson-gxm-rbox-pro.dts   |  2 --
 .../amlogic/meson-libretech-cottonwood.dtsi   |  6 ----
 .../boot/dts/amlogic/meson-sm1-ac2xx.dtsi     |  6 ----
 .../dts/amlogic/meson-sm1-khadas-vim3l.dts    |  2 --
 .../boot/dts/amlogic/meson-sm1-odroid.dtsi    |  2 --
 .../boot/dts/amlogic/meson-sm1-sei610.dts     |  6 ----
 36 files changed, 99 insertions(+), 120 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index a49aa62e3f9f..2cb68f95bcf9 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -1664,10 +1664,14 @@ sec_AO: ao-secure@140 {
 			};
 
 			pwm_AO_cd: pwm@2000 {
-				compatible = "amlogic,meson-axg-ao-pwm";
+				compatible = "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x02000  0x0 0x20>;
 				#pwm-cells = <3>;
 				status = "disabled";
+				clocks = <&xtal>,
+					 <&clkc_AO CLKID_AO_CLK81>,
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV5>;
 			};
 
 			uart_AO: serial@3000 {
@@ -1699,10 +1703,14 @@ i2c_AO: i2c@5000 {
 			};
 
 			pwm_AO_ab: pwm@7000 {
-				compatible = "amlogic,meson-axg-ao-pwm";
+				compatible = "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x07000 0x0 0x20>;
 				#pwm-cells = <3>;
 				status = "disabled";
+				clocks = <&xtal>,
+					 <&clkc_AO CLKID_AO_CLK81>,
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV5>;
 			};
 
 			ir: ir@8000 {
@@ -1777,17 +1785,25 @@ watchdog@f0d0 {
 			};
 
 			pwm_ab: pwm@1b000 {
-				compatible = "amlogic,meson-axg-ee-pwm";
+				compatible = "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x1b000 0x0 0x20>;
 				#pwm-cells = <3>;
 				status = "disabled";
+				clocks = <&xtal>,
+					 <&clkc CLKID_FCLK_DIV5>,
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV3>;
 			};
 
 			pwm_cd: pwm@1a000 {
-				compatible = "amlogic,meson-axg-ee-pwm";
+				compatible = "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x1a000 0x0 0x20>;
 				#pwm-cells = <3>;
 				status = "disabled";
+				clocks = <&xtal>,
+					 <&clkc CLKID_FCLK_DIV5>,
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV3>;
 			};
 
 			spicc0: spi@13000 {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index ff68b911b729..7bd8c4ddfb3e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2039,10 +2039,12 @@ cecb_AO: cec@280 {
 			};
 
 			pwm_AO_cd: pwm@2000 {
-				compatible = "amlogic,meson-g12a-ao-pwm-cd";
+				compatible = "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x2000 0x0 0x20>;
 				#pwm-cells = <3>;
 				status = "disabled";
+				clocks = <&xtal>,
+					 <&clkc_AO CLKID_AO_CLK81>;
 			};
 
 			uart_AO: serial@3000 {
@@ -2078,10 +2080,14 @@ i2c_AO: i2c@5000 {
 			};
 
 			pwm_AO_ab: pwm@7000 {
-				compatible = "amlogic,meson-g12a-ao-pwm-ab";
+				compatible = "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x7000 0x0 0x20>;
 				#pwm-cells = <3>;
 				status = "disabled";
+				clocks = <&xtal>,
+					 <&clkc_AO CLKID_AO_CLK81>,
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV5>;
 			};
 
 			ir: ir@8000 {
@@ -2229,24 +2235,36 @@ spifc: spi@14000 {
 			};
 
 			pwm_ef: pwm@19000 {
-				compatible = "amlogic,meson-g12a-ee-pwm";
+				compatible = "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x19000 0x0 0x20>;
 				#pwm-cells = <3>;
 				status = "disabled";
+				clocks = <&xtal>,
+					 <0>,
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV3>;
 			};
 
 			pwm_cd: pwm@1a000 {
-				compatible = "amlogic,meson-g12a-ee-pwm";
+				compatible = "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x1a000 0x0 0x20>;
 				#pwm-cells = <3>;
 				status = "disabled";
+				clocks = <&xtal>,
+					 <0>,
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV3>;
 			};
 
 			pwm_ab: pwm@1b000 {
-				compatible = "amlogic,meson-g12a-ee-pwm";
+				compatible = "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x1b000 0x0 0x20>;
 				#pwm-cells = <3>;
 				status = "disabled";
+				clocks = <&xtal>,
+					 <0>,
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV3>;
 			};
 
 			i2c3: i2c@1c000 {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
index fcd7e1d8e16f..c83298c050c3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
@@ -280,8 +280,6 @@ &ir {
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
@@ -289,8 +287,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 };
 
 &saradc {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index 0ad0c2b7dfef..c32365412572 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -386,8 +386,6 @@ &ir {
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
@@ -395,8 +393,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 };
 
 &pdm {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
index 8355ddd7e9ae..161f00d371fa 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
@@ -498,8 +498,6 @@ &i2c3 {
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 4969a76460fa..f2a730367d59 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -325,8 +325,6 @@ &ir {
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
@@ -360,8 +358,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 };
 
 &uart_A {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts
index 65b963d794cd..adedc1340c78 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts
@@ -116,6 +116,4 @@ &cpu103 {
 
 &pwm_ab {
 	pinctrl-0 = <&pwm_a_e_pins>, <&pwm_b_x7_pins>;
-	clocks = <&xtal>, <&xtal>;
-	clock-names = "clkin0", "clkin1";
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi
index 995ce10d5c81..ef09a233ca04 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi
@@ -257,25 +257,18 @@ &pcie {
 &pwm_ab {
 	pinctrl-0 = <&pwm_a_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
-
 	status = "okay";
 };
 
 &pwm_ef {
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-
 	status = "okay";
 };
 
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
-
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
index 0a6a12808568..5aba1968cb93 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
@@ -370,8 +370,6 @@ &pwm_ab {
 	status = "okay";
 	pinctrl-0 = <&pwm_a_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 };
 
 &pwm_cd {
@@ -390,8 +388,6 @@ &pwm_ef {
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
index 16dd409051b4..48650bad230d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
@@ -92,16 +92,12 @@ &cpu103 {
 &pwm_ab {
 	pinctrl-0 = <&pwm_a_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 	status = "okay";
 };
 
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid.dtsi
index 9e12a34b2840..6ed01744f937 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid.dtsi
@@ -327,16 +327,12 @@ hdmi_tx_tmds_out: endpoint {
 &pwm_ab {
 	pinctrl-0 = <&pwm_a_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 	status = "okay";
 };
 
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
index 890f5bfebb03..44d74f22bec5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
@@ -351,32 +351,24 @@ &ir {
 &pwm_ab {
 	pinctrl-0 = <&pwm_a_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 	status = "okay";
 };
 
 &pwm_ef {
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 	status = "okay";
 };
 
 &pwm_AO_ab {
 	pinctrl-0 = <&pwm_ao_a_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 	status = "okay";
 };
 
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi
index ac8b7178257e..fa9f510332f7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi
@@ -304,24 +304,18 @@ &ir {
 &pwm_ab {
 	pinctrl-0 = <&pwm_a_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 	status = "okay";
 };
 
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
 &pwm_ef {
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
index 5e7b9273b062..2b79560ea386 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
@@ -341,24 +341,18 @@ rtc: rtc@51 {
 &pwm_AO_ab {
 	pinctrl-0 = <&pwm_ao_a_3_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 	status = "okay";
 };
 
 &pwm_ab {
 	pinctrl-0 = <&pwm_b_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 	status = "okay";
 };
 
 &pwm_ef {
 	pinctrl-0 = <&pwm_e_pins>, <&pwm_f_clk_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
index 18f7b730289e..690552e5a104 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
@@ -237,8 +237,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 &saradc {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 2673f0dbafe7..bf00672b9009 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -329,14 +329,14 @@ i2c_A: i2c@8500 {
 			};
 
 			pwm_ab: pwm@8550 {
-				compatible = "amlogic,meson-gx-pwm", "amlogic,meson-gxbb-pwm";
+				compatible = "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x08550 0x0 0x10>;
 				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
 			pwm_cd: pwm@8650 {
-				compatible = "amlogic,meson-gx-pwm", "amlogic,meson-gxbb-pwm";
+				compatible = "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x08650 0x0 0x10>;
 				#pwm-cells = <3>;
 				status = "disabled";
@@ -351,7 +351,7 @@ saradc: adc@8680 {
 			};
 
 			pwm_ef: pwm@86c0 {
-				compatible = "amlogic,meson-gx-pwm", "amlogic,meson-gxbb-pwm";
+				compatible = "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x086c0 0x0 0x10>;
 				#pwm-cells = <3>;
 				status = "disabled";
@@ -498,7 +498,7 @@ i2c_AO: i2c@500 {
 			};
 
 			pwm_AO_ab: pwm@550 {
-				compatible = "amlogic,meson-gx-ao-pwm", "amlogic,meson-gxbb-ao-pwm";
+				compatible = "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x00550 0x0 0x10>;
 				#pwm-cells = <3>;
 				status = "disabled";
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
index 1fd2e56e6b08..373451691090 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
@@ -294,8 +294,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 &saradc {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
index 4aab1ab705b4..55d0353d0997 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
@@ -237,8 +237,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 /* Wireless SDIO Module */
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi
index e803a466fe4e..730a5e6dfff7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi
@@ -150,8 +150,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 /* Wireless SDIO Module */
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
index e8303089bff6..dde812ed8a5c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
@@ -219,8 +219,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 &saradc {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
index 94dafb955301..20a501586431 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
@@ -185,8 +185,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 &saradc {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
index 12ef6e81c8bd..a00d2e29da43 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
@@ -733,6 +733,32 @@ mux {
 	};
 };
 
+&pwm_ab {
+	clocks = <&xtal>,
+		 <0>,
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
+};
+
+&pwm_cd {
+	clocks = <&xtal>,
+		 <0>,
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
+};
+
+&pwm_ef {
+	clocks = <&xtal>,
+		 <0>,
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
+};
+
+&pwm_AO_ab {
+	clocks = <&xtal>,
+		 <&clkc CLKID_CLK81>;
+};
+
 &pwrc {
 	resets = <&reset RESET_VIU>,
 		 <&reset RESET_VENC>,
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
index c0d6eb55100a..62d58fef220e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
@@ -276,8 +276,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 /* This is connected to the Bluetooth module: */
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-jethome-jethub-j80.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-jethome-jethub-j80.dts
index a18d6d241a5a..0afc5a3e8d24 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-jethome-jethub-j80.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-jethome-jethub-j80.dts
@@ -116,8 +116,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 &saradc {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-hwacom-amazetv.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-hwacom-amazetv.dts
index c8d74e61dec1..3f46b5a7bba5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-hwacom-amazetv.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-hwacom-amazetv.dts
@@ -115,8 +115,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 /* SD card */
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
index fea65f20523a..20eb509ba063 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
@@ -207,8 +207,6 @@ &pwm_AO_ab {
 	status = "okay";
 	pinctrl-0 = <&pwm_ao_a_3_pins>, <&pwm_ao_b_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal> , <&xtal>;
-	clock-names = "clkin0", "clkin1" ;
 };
 
 &pwm_ef {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts
index f1acca5c4434..0fe8dcbfd11b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts
@@ -145,8 +145,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 /* Wireless SDIO Module */
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
index a150cc0e18ff..e04863294b64 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
@@ -101,8 +101,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 &saradc {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index 17bcfa4702e1..f9a9b12abec8 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -803,6 +803,32 @@ internal_phy: ethernet-phy@8 {
 	};
 };
 
+&pwm_ab {
+	clocks = <&xtal>,
+		 <0>,
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
+};
+
+&pwm_cd {
+	clocks = <&xtal>,
+		 <0>,
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
+};
+
+&pwm_ef {
+	clocks = <&xtal>,
+		 <0>,
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
+};
+
+&pwm_AO_ab {
+	clocks = <&xtal>,
+		 <&clkc CLKID_CLK81>;
+};
+
 &pwrc {
 	resets = <&reset RESET_VIU>,
 		 <&reset RESET_VENC>,
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
index 860f307494c5..ae7e2c8a06e4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
@@ -285,16 +285,12 @@ &pwm_AO_ab {
 	status = "okay";
 	pinctrl-0 = <&pwm_ao_a_3_pins>, <&pwm_ao_b_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>, <&pwm_f_clk_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 &sd_emmc_a {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
index 50d49aec41bd..70d65379b719 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
@@ -189,8 +189,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 /* Wireless SDIO Module */
diff --git a/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
index 35e8f5bae990..9660a4abcc6a 100644
--- a/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
@@ -454,24 +454,18 @@ &pwm_AO_cd {
 	status = "okay";
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 };
 
 &pwm_ab {
 	status = "okay";
 	pinctrl-0 = <&pwm_b_x7_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 };
 
 &pwm_cd {
 	status = "okay";
 	pinctrl-0 = <&pwm_d_x3_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 };
 
 &saradc {
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-ac2xx.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-ac2xx.dtsi
index 46a34731f7e2..5fd657f4934e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-ac2xx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-ac2xx.dtsi
@@ -199,24 +199,18 @@ &pwm_AO_ab {
 	status = "okay";
 	pinctrl-0 = <&pwm_ao_a_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 };
 
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
 	clocks = <&xtal>;
-	clock-names = "clkin1";
-	status = "okay";
 };
 
 &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 };
 
 &saradc {
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
index 9c0b544e2209..5d75ad3f3e46 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
@@ -78,8 +78,6 @@ &cpu3 {
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
index 1db2327bbd13..b9c8a037fe63 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
@@ -388,8 +388,6 @@ &ir {
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index 095579c55f18..e24e2dab3c7c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -432,15 +432,11 @@ &pwm_AO_ab {
 	status = "okay";
 	pinctrl-0 = <&pwm_ao_a_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 };
 
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
@@ -448,8 +444,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 };
 
 &saradc {
-- 
2.42.0


