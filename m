Return-Path: <devicetree+bounces-134455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C08499FD7DC
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 22:26:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D1DA87A24BC
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 21:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 666901F943D;
	Fri, 27 Dec 2024 21:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="A+N6lGan"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA801F9425;
	Fri, 27 Dec 2024 21:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735334750; cv=none; b=PAQf/Ni/8QO5y9gQsnNf4Fzwza4hP13EN/4VH9IEvauEgJ/fVQQtdQ3LnjKC7jr/RsDGc3mwco05SRQuTHKrfXzCKhp47UiIDKCTUvn2RjfupgDhNGGE4TtzXIEk7sDuXQAO7bUyupiOVdbahsfcL/63bW8/go0Vu1ngdT6w+aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735334750; c=relaxed/simple;
	bh=8e36OEl8kPP1IBH4MXmd05Ah7BRA4IKZcK3NEjorO/4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X1GIBH89NNVhhEufT1GulxDCWAPOagya4aoAQpf3jOrKTd2nS35gvxQozomPwW95wXMDLnqiGFIf7zVZ3/7WyEaCJ5rrkAeMiRP45/yBMdCDVdajTF+kUj0iHMRzDoHefWMSCezybql1cJOs57X90yAFdr+acrwi2b46KmrEKi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=A+N6lGan; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5d0d32cd31aso10641248a12.0;
        Fri, 27 Dec 2024 13:25:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1735334746; x=1735939546; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cPy7o890B1hnetKOjzEFvvu1NGrPASXvtZeeRfzkmm0=;
        b=A+N6lGanuwY8sWjXNBWDJnSAgJN1HtZilFU61COx5qaVD/kECrAUTy/VwNilfx3ZSC
         fa61SWO2Ko+7Q2PVMEzZZLqlLvq7k9wkyWeIuFFGBvmUMlmZZpG5hrukD3Noqcr3tvNQ
         cvpC6ZFxs8Rzv8OgxSn4iL0ysqGglyMIDHn4Rg2uePK6yScMVz1eMwqeylRcWoCjI2m9
         w/6zz7mPxrF60H8relIMEGobkBStcI4tu4vOhy3Hp/53n5iGlGohbKPJHkD5hjGKWHSi
         dsS+0+kY6kE8DfO4cagBarTzlzFK5mJMiUQ0nVh3rpxu+Va9fND6IZnyVfMiIB7Du+z1
         YgbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735334746; x=1735939546;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cPy7o890B1hnetKOjzEFvvu1NGrPASXvtZeeRfzkmm0=;
        b=m57mHaPxrWzDYpzWSkpfi+iTaTGwPfHFiJd6y7/SZrvNLUuZz20HmGOVkU5JY7RYnw
         H+C19ovYvCQlKWqRNPzXNSQrxUlXXTzE2dTXfWzRbpgSo/6lp/YGma1gehGJvZvCrcSP
         2ycxGBVSupek6PigADEoSzYBLXcH3QFR/rWlhLVjTFLZZMArP9zdm1qjn+NlRGsNs57U
         QUIWIo/Gr9ec2ZO1QAGYGfsH/CTmigF6BPJUXo0B03KpgsS7C4IyjPDT+g+2MS32+xkp
         XMLmhrFPGLxQoS0taPBn2RAqaheP7itI1c57241xqw2m3WZxXVShW9WavvJaHibLCny+
         fkUg==
X-Forwarded-Encrypted: i=1; AJvYcCXQj1iEnyp1a8sOxKo8SiaD6Vks96Ga11YSiRTZrRoLh9g1SUbowD6wCnWEE9+WvBqLOvWoUsgGq5yj@vger.kernel.org, AJvYcCXwAJEZD3FEgutYO1M+OPO3gyWudfATQHI1aDPu45wgnlOiXvV0dPrDbcyCTHB0HOX1iFCnHxmVoXp8z2eC@vger.kernel.org
X-Gm-Message-State: AOJu0YyOfT3NQZLKAz5yAmJsKCR1Z1tTjyTExfk6yQsPW0I6u9CQJ2Xm
	4kKdqXTM7COfMSzOqzADN/WQ27CTDpNXcpXwAvliAKHoYA5X9zKy
X-Gm-Gg: ASbGncsYqNHRtCo8rQDo9Q5ZtuXaTKjvi/3FXFZibpGqaettVChdgJJox5tJXRulFe2
	niMx7WRc0ODT7ge9DNpGvPqYdFDqW3m+O18XPOD40YpwBDQvNOGrGJHShUp8FzDtLYvuh1FUAZl
	WQRXuT8jvSjD3GJQtERHstW5kozaoXJqKnVTqxSA6YVVBS/CoCXZHes2iFhQkzE3I+SshO83Xxm
	E16H0SwUjz1gh7LdhIIyD6BKIMiy/gP24iim5jmoAyHLHVJP1KJYA+n9x0RqlQpbtKT6KHkgW6w
	8VZxEoif5iaJH9UqT+T3jrE8yF4NHsh2QWKpHWiRNDpRKDoSkpUviZ958y4dpE82wLOWEjx3FBB
	4bODOKkYUA2Z6PM2gYRwtYUpOTw==
X-Google-Smtp-Source: AGHT+IGwvkeINNYEAGKLq0cWzHRLbP1E84zmmITYv95ShFIlDCkszjudHI/QU5ZyJkd2tqERiNT0Uw==
X-Received: by 2002:a05:6402:2345:b0:5d0:d491:2d5e with SMTP id 4fb4d7f45d1cf-5d81dd83ad1mr56585606a12.7.1735334746094;
        Fri, 27 Dec 2024 13:25:46 -0800 (PST)
Received: from localhost.localdomain (dynamic-2a02-3100-b2be-ba00-1e86-0bff-fe2f-57b7.310.pool.telefonica.de. [2a02:3100:b2be:ba00:1e86:bff:fe2f:57b7])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-5d806fedbc5sm11627950a12.60.2024.12.27.13.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 13:25:44 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	jbrunet@baylibre.com,
	neil.armstrong@linaro.org,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH 3/5] arm64: dts: amlogic: gx: switch to the new PWM controller binding
Date: Fri, 27 Dec 2024 22:25:12 +0100
Message-ID: <20241227212514.1376682-4-martin.blumenstingl@googlemail.com>
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
 .../dts/amlogic/meson-gx-libretech-pc.dtsi    |  6 -----
 .../boot/dts/amlogic/meson-gx-p23x-q20x.dtsi  |  2 --
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi     |  8 +++---
 .../boot/dts/amlogic/meson-gxbb-nanopi-k2.dts |  2 --
 .../dts/amlogic/meson-gxbb-nexbox-a95x.dts    |  2 --
 .../boot/dts/amlogic/meson-gxbb-p20x.dtsi     |  2 --
 .../boot/dts/amlogic/meson-gxbb-vega-s95.dtsi |  2 --
 .../boot/dts/amlogic/meson-gxbb-wetek.dtsi    |  2 --
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi   | 25 +++++++++++++++++++
 .../boot/dts/amlogic/meson-gxl-s805x-p241.dts |  2 --
 .../meson-gxl-s905w-jethome-jethub-j80.dts    |  2 --
 .../meson-gxl-s905x-hwacom-amazetv.dts        |  2 --
 .../amlogic/meson-gxl-s905x-khadas-vim.dts    |  2 --
 .../amlogic/meson-gxl-s905x-nexbox-a95x.dts   |  2 --
 .../dts/amlogic/meson-gxl-s905x-p212.dtsi     |  2 --
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    | 25 +++++++++++++++++++
 .../dts/amlogic/meson-gxm-khadas-vim2.dts     |  4 ---
 .../boot/dts/amlogic/meson-gxm-rbox-pro.dts   |  2 --
 18 files changed, 54 insertions(+), 40 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
index d38c3a224fbe..2da49cfbde77 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
@@ -345,24 +345,18 @@ rtc: rtc@51 {
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
index 45ccddd1aaf0..6da1316d97c6 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
@@ -240,8 +240,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 &saradc {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 2673f0dbafe7..7d99ca44e660 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -329,14 +329,14 @@ i2c_A: i2c@8500 {
 			};
 
 			pwm_ab: pwm@8550 {
-				compatible = "amlogic,meson-gx-pwm", "amlogic,meson-gxbb-pwm";
+				compatible = "amlogic,meson-gxbb-pwm-v2", "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x08550 0x0 0x10>;
 				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
 			pwm_cd: pwm@8650 {
-				compatible = "amlogic,meson-gx-pwm", "amlogic,meson-gxbb-pwm";
+				compatible = "amlogic,meson-gxbb-pwm-v2", "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x08650 0x0 0x10>;
 				#pwm-cells = <3>;
 				status = "disabled";
@@ -351,7 +351,7 @@ saradc: adc@8680 {
 			};
 
 			pwm_ef: pwm@86c0 {
-				compatible = "amlogic,meson-gx-pwm", "amlogic,meson-gxbb-pwm";
+				compatible = "amlogic,meson-gxbb-pwm-v2", "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x086c0 0x0 0x10>;
 				#pwm-cells = <3>;
 				status = "disabled";
@@ -498,7 +498,7 @@ i2c_AO: i2c@500 {
 			};
 
 			pwm_AO_ab: pwm@550 {
-				compatible = "amlogic,meson-gx-ao-pwm", "amlogic,meson-gxbb-ao-pwm";
+				compatible = "amlogic,meson-gxbb-pwm-v2", "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x00550 0x0 0x10>;
 				#pwm-cells = <3>;
 				status = "disabled";
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
index cf2e2ef81680..2ecc6ebd5a43 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
@@ -298,8 +298,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 &saradc {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
index 7d7dde93fff3..c09da40ff7b0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
@@ -241,8 +241,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 /* Wireless SDIO Module */
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi
index 52d57773a77f..b463d03c3ed9 100644
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
index 3807a184810b..6ff567225fee 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
@@ -222,8 +222,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 &saradc {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
index deb295227189..bfedfc1472ec 100644
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
index ed00e67e6923..8ebce7114a60 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
@@ -739,6 +739,31 @@ mux {
 	};
 };
 
+&pwm_ab {
+	clocks = <&xtal>,
+		 <>, /* unknown/untested, the datasheet calls it "vid_pll" */
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
+};
+
+&pwm_AO_ab {
+	clocks = <&xtal>, <&clkc CLKID_CLK81>;
+};
+
+&pwm_cd {
+	clocks = <&xtal>,
+		 <>, /* unknown/untested, the datasheet calls it "vid_pll" */
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
+};
+
+&pwm_ef {
+	clocks = <&xtal>,
+		 <>, /* unknown/untested, the datasheet calls it "vid_pll" */
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
+};
+
 &pwrc {
 	resets = <&reset RESET_VIU>,
 		 <&reset RESET_VENC>,
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
index c5e2306ad7a4..ca7c4e8e7cac 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
@@ -280,8 +280,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 /* This is connected to the Bluetooth module: */
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-jethome-jethub-j80.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-jethome-jethub-j80.dts
index 2b94b6e5285e..4ca90ac947b7 100644
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
index 89fe5110f7a2..62a2da766a00 100644
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
index a80f0ea2773b..4e89d6f6bb57 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
@@ -211,8 +211,6 @@ &pwm_AO_ab {
 	status = "okay";
 	pinctrl-0 = <&pwm_ao_a_3_pins>, <&pwm_ao_b_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal> , <&xtal>;
-	clock-names = "clkin0", "clkin1" ;
 };
 
 &pwm_ef {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts
index c79f9f2099bf..236cedec9f19 100644
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
index 7e7dc87ede2d..b295f97021de 100644
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
index f58d1790de1c..2dc2fdaecf9f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -809,6 +809,31 @@ internal_phy: ethernet-phy@8 {
 	};
 };
 
+&pwm_ab {
+	clocks = <&xtal>,
+		 <>, /* unknown/untested, the datasheet calls it "vid_pll" */
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
+};
+
+&pwm_AO_ab {
+	clocks = <&xtal>, <&clkc CLKID_CLK81>;
+};
+
+&pwm_cd {
+	clocks = <&xtal>,
+		 <>, /* unknown/untested, the datasheet calls it "vid_pll" */
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
+};
+
+&pwm_ef {
+	clocks = <&xtal>,
+		 <>, /* unknown/untested, the datasheet calls it "vid_pll" */
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
+};
+
 &pwrc {
 	resets = <&reset RESET_VIU>,
 		 <&reset RESET_VENC>,
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
index 96a3dd2d8a99..2a09b3d550e2 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
@@ -289,16 +289,12 @@ &pwm_AO_ab {
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
index 7356d3b628b1..ecaf678b23dd 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
@@ -192,8 +192,6 @@ &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_FCLK_DIV4>;
-	clock-names = "clkin0";
 };
 
 /* Wireless SDIO Module */
-- 
2.47.1


