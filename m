Return-Path: <devicetree+bounces-134457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E33C9FD7DF
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 22:26:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB90E3A2699
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 21:26:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 313B51F9AB9;
	Fri, 27 Dec 2024 21:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="JBTckvef"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14321F9A92;
	Fri, 27 Dec 2024 21:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735334754; cv=none; b=rPpOIl/SAA2oChYv56gzQoBc9F2GWoLquQrSLb5wMUdoHtxFlvAmAADop2apHEiTqGKDiArEAq12dhT+HIjtYdEde6x53gAtvHDsUM13i5w3fsacvYEJNhN3eJOEfkGda7z0rOtgnYqYXZK6ooo/NckXJA9hvbaiqWaJeCorVPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735334754; c=relaxed/simple;
	bh=68CQAuo2WOgiQ4X6etZ5iP4MlC9W3jyojls49bi3+3Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LyhmOpqX5AqOGe5dU+GmHh2YYG3ErR2CJ6QUKAtonuyE1p5IuJJ6a4XJyImhq2el9jCTcAKCEV/hLKB+K2jEPOPZY/Ch0JJZUsbHr9kLdSgUplkGY6+Foi8zfWc+6a4sohMjpTFjyeC1KAAsmROGWfIw5KwGwNfLHtpnyvAXmWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=JBTckvef; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5d437235769so6771871a12.2;
        Fri, 27 Dec 2024 13:25:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1735334750; x=1735939550; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P/YsWsOqAMtNvIu897gqcQnKG+shOLRHZK6FrlkT4Sg=;
        b=JBTckvefM9aPnn+fWUTzPdHBiHBVzwsVpwBEtfJ1rptSwz/DQi1sQlDDc3UEqc3X5e
         eY2mS7X9pMgAUHeEKLdSbrCcLb+VgS6KLm10zXBYmjDvW9LrqVjw2hUNA9R9tVBcMow3
         lhNOpRMNXviHu1wScxrNtgu0Wo3vypKsMfp9b812xOdV4Gol5htqv0/s0fNI/6Bcujv/
         fwEA1Y+7uiGItNpqJ4f1UsYIgGbwAvUdskMpiKAoOjHk6p/jy07L/uGykvdIxzRrY4sV
         9aggBXKskQI4pPrsnofzxw1Ft/FKMca03DRfD988kVDwf/eVrfYzZriALLu+0iUGKWjK
         kSBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735334750; x=1735939550;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P/YsWsOqAMtNvIu897gqcQnKG+shOLRHZK6FrlkT4Sg=;
        b=w/7NmMpOSA9OTobPdmxRlt6x9rGKngXCYTQupTUFViDOQQddJ+FJr5sEce8bcNxRqs
         lUNCbOsCJCjmuUOHkqweaajepgPzUJ1zig30HtyxP11Gr7oIXAIxWcLdTnn7Uys9PK48
         lhkRsK7zFb03nKS63Gq2lC4rA2h0l7ggr+Y38bF1xm/3cpjmYEgF5kjJ7N8TwunaCKJj
         by6hABNFcpD5e1pCgZsqr1/UBufmd2BHqwTgnPuyYOvSUIqeGhecmbBJHgB2J3MBWX3k
         ejT5VckU4FGvEjbXXWdn9tFRn/9WsoWy9JRy6YH3WXHeya0xutnVccdJirN1R2fJ2r+M
         Te2w==
X-Forwarded-Encrypted: i=1; AJvYcCVnv7o7TkSM0/Aly/F8/y+p0q8pUAsgmAZm62KY/TNX+5GG2JT7tbZposuZYYNmtkW1GTxuQ+Yo0HPU@vger.kernel.org, AJvYcCVvYHNyt27TqtW7TIl0qzqqNx857aXkHCbOShLOw6cC3DyD8ZiddxxcU2d+tLV9CN6q9UpvBX6wxRCk8hO6@vger.kernel.org
X-Gm-Message-State: AOJu0YyKVrg4htFK3VTmFov6rP9vlykzJp41x8QUguWWRtFMGsO4AgfF
	TiQlXXv+msqlhlSimLfkF4nXLqf9c797J0A34TFC3QKGJw+Su45n
X-Gm-Gg: ASbGncsu3AU/fSGWsGlpXCbXY7J83QM3X93PxhDb6wyia+v/OVZn3QkaCu6oP8H6N1/
	GEpy8pM3oS8II4meHxKhMPhtkY1qSY2LimInNXpKGz0qRgrR2bE9VqwHYXTmfvBq8QV3i6dE9lo
	O/Ps7tL4V4+vortrkfefayZ4K2ljW2AMGXQg9U8o7CdWP5KS+65pFGBtdqJSpJCWij0mGdwDlAN
	vV6nSUM8bkgnGUeq6VS3Hf7+bCHOkoBAEcl5Yg9N+OQdeXD9x04lVBdsFDeSZa7wKW1zkaxCdIC
	i5lAjNBCy4TDJ0IlnJhZNuUFLPrj7XgCBIquybjZ8eRUo/lfysmdK8wHB5eLajkn+pS9di0mlfK
	rLE0WrLlqevprRH33HytNRlcTrA==
X-Google-Smtp-Source: AGHT+IGS35CBFfUkjXBJVTZ2CH8LPXiRMhje99tYL6BMtvITy8TeGIghmB+xfrmEI5V9RHl31jOL2g==
X-Received: by 2002:a05:6402:278c:b0:5d0:214b:9d15 with SMTP id 4fb4d7f45d1cf-5d81dd54620mr22041877a12.5.1735334749863;
        Fri, 27 Dec 2024 13:25:49 -0800 (PST)
Received: from localhost.localdomain (dynamic-2a02-3100-b2be-ba00-1e86-0bff-fe2f-57b7.310.pool.telefonica.de. [2a02:3100:b2be:ba00:1e86:bff:fe2f:57b7])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-5d806fedbc5sm11627950a12.60.2024.12.27.13.25.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 13:25:48 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	jbrunet@baylibre.com,
	neil.armstrong@linaro.org,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH 5/5] arm64: dts: amlogic: g12: switch to the new PWM controller binding
Date: Fri, 27 Dec 2024 22:25:14 +0100
Message-ID: <20241227212514.1376682-6-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241227212514.1376682-1-martin.blumenstingl@googlemail.com>
References: <20241227212514.1376682-1-martin.blumenstingl@googlemail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use the new PWM controller binding which now relies on passing all
clock inputs available on the SoC (instead of passing the "wanted"
clock input for a given board).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 33 ++++++++++++++++---
 .../boot/dts/amlogic/meson-g12a-fbx8am.dts    |  4 ---
 .../dts/amlogic/meson-g12a-radxa-zero.dts     |  4 ---
 .../boot/dts/amlogic/meson-g12a-sei510.dts    |  4 ---
 .../boot/dts/amlogic/meson-g12a-u200.dts      |  2 --
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   |  4 ---
 .../amlogic/meson-g12b-a311d-libretech-cc.dts |  2 --
 .../dts/amlogic/meson-g12b-bananapi-cm4.dtsi  |  4 ---
 .../boot/dts/amlogic/meson-g12b-bananapi.dtsi |  4 ---
 .../dts/amlogic/meson-g12b-khadas-vim3.dtsi   |  4 ---
 .../boot/dts/amlogic/meson-g12b-odroid.dtsi   |  4 ---
 .../dts/amlogic/meson-g12b-radxa-zero2.dts    |  8 -----
 .../boot/dts/amlogic/meson-g12b-w400.dtsi     |  6 ----
 .../amlogic/meson-libretech-cottonwood.dtsi   |  6 ----
 .../boot/dts/amlogic/meson-sm1-ac2xx.dtsi     |  6 ----
 .../boot/dts/amlogic/meson-sm1-bananapi.dtsi  |  2 --
 .../dts/amlogic/meson-sm1-khadas-vim3l.dts    |  2 --
 .../boot/dts/amlogic/meson-sm1-odroid.dtsi    |  2 --
 .../boot/dts/amlogic/meson-sm1-sei610.dts     |  6 ----
 19 files changed, 28 insertions(+), 79 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 49b51c54013f..ab2b3f15ef19 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2060,8 +2060,11 @@ cecb_AO: cec@280 {
 			};
 
 			pwm_AO_cd: pwm@2000 {
-				compatible = "amlogic,meson-g12a-ao-pwm-cd";
+				compatible = "amlogic,meson-g12-pwm-v2",
+					     "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x2000 0x0 0x20>;
+				clocks = <&xtal>,
+					 <&clkc_AO CLKID_AO_CLK81>;
 				#pwm-cells = <3>;
 				status = "disabled";
 			};
@@ -2099,8 +2102,13 @@ i2c_AO: i2c@5000 {
 			};
 
 			pwm_AO_ab: pwm@7000 {
-				compatible = "amlogic,meson-g12a-ao-pwm-ab";
+				compatible = "amlogic,meson-g12-pwm-v2",
+					     "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x7000 0x0 0x20>;
+				clocks = <&xtal>,
+					 <&clkc_AO CLKID_AO_CLK81>,
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV5>;
 				#pwm-cells = <3>;
 				status = "disabled";
 			};
@@ -2301,22 +2309,37 @@ spifc: spi@14000 {
 			};
 
 			pwm_ef: pwm@19000 {
-				compatible = "amlogic,meson-g12a-ee-pwm";
+				compatible = "amlogic,meson-g12-pwm-v2",
+					     "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x19000 0x0 0x20>;
+				clocks = <&xtal>,
+					 <>, /* unknown/untested, the datasheet calls it "vid_pll" */
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV3>;
 				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
 			pwm_cd: pwm@1a000 {
-				compatible = "amlogic,meson-g12a-ee-pwm";
+				compatible = "amlogic,meson-g12-pwm-v2",
+					     "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x1a000 0x0 0x20>;
+				clocks = <&xtal>,
+					 <>, /* unknown/untested, the datasheet calls it "vid_pll" */
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV3>;
 				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
 			pwm_ab: pwm@1b000 {
-				compatible = "amlogic,meson-g12a-ee-pwm";
+				compatible = "amlogic,meson-g12-pwm-v2",
+					     "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x1b000 0x0 0x20>;
+				clocks = <&xtal>,
+					 <>, /* unknown/untested, the datasheet calls it "vid_pll" */
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV3>;
 				#pwm-cells = <3>;
 				status = "disabled";
 			};
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
index a457b3f4397b..9aa36f17ffa2 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
@@ -346,8 +346,6 @@ &ir {
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
@@ -355,8 +353,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 };
 
 &pdm {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
index c779a5da7d1e..952b8d02e5c2 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
@@ -284,8 +284,6 @@ &ir {
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
@@ -293,8 +291,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 };
 
 &saradc {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index ea51341f031b..52fbc5103e45 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -389,8 +389,6 @@ &ir {
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
@@ -398,8 +396,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 };
 
 &pdm {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
index f70a46967e2b..5407049d2647 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
@@ -502,8 +502,6 @@ &i2c3 {
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 32f98a192494..01da83658ae3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -328,8 +328,6 @@ &ir {
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
@@ -363,8 +361,6 @@ &pwm_ef {
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
index 08c33ec7e9f1..92e8b26ecccc 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi
@@ -257,8 +257,6 @@ &pcie {
 &pwm_ab {
 	pinctrl-0 = <&pwm_a_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 
 	status = "okay";
 };
@@ -273,8 +271,6 @@ &pwm_ef {
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
index d4e1990b5f26..54663c55a20e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
@@ -367,8 +367,6 @@ &pwm_ab {
 	status = "okay";
 	pinctrl-0 = <&pwm_a_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 };
 
 &pwm_ef {
@@ -380,8 +378,6 @@ &pwm_ef {
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
index 09d959aefb18..7e8964bacfce 100644
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
index 39feba7f2d08..fc05ecf90714 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
@@ -379,32 +379,24 @@ &ir {
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
index 4cb6930ffb19..a7a0fc264cdc 100644
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
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
index 929e4720ae76..ac9c4c2673b1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
@@ -458,24 +458,18 @@ &pwm_AO_cd {
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
index d1fa8b8bf795..a3463149db3d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-ac2xx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-ac2xx.dtsi
@@ -199,15 +199,11 @@ &pwm_AO_ab {
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
 
@@ -215,8 +211,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 };
 
 &saradc {
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi
index 81dce862902a..40db95f64636 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi
@@ -367,8 +367,6 @@ &ir {
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
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
index 7b0e9817a615..ad8d07883760 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
@@ -392,8 +392,6 @@ &ir {
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index 2e3397e55da2..37d7f64b6d5d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -435,15 +435,11 @@ &pwm_AO_ab {
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
 
@@ -451,8 +447,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
 };
 
 &saradc {
-- 
2.47.1


