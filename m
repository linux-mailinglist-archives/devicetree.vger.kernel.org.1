Return-Path: <devicetree+bounces-79657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC03E916433
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 11:55:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF6391C2108B
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 09:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94F1414A4DB;
	Tue, 25 Jun 2024 09:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZDROzvCT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C821149C41
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 09:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719309288; cv=none; b=JDRKTJ+fiCnVSj+VpndGvZYEz7GXETrxuUo/H0mrVtbxlCQqKfuQScc46rsToab4DsJe57kOV/gT6obpRGMfzzK+VqE3mwdJ/Ve1V7z45arwuRTmIJOHfmjKISuDhUvFOiCloL1le4ZItuEspXUfk/xEEDGnWlTdBWHTqvlJ8Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719309288; c=relaxed/simple;
	bh=F2TBDSZ8k1FqFBVOT3iU4+2Ss5mw37wLotRpUvkzFiA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JHnsINe600YG5q0+DFnJVV/2XJaNRhlyA76LSBkQvCqLYXcOGh5+0qMe7xK4VRNt1oFvLyC/4ygkkL2A5HnJyaInC4ge+i3jiO4XgWMm68L/gzP7bIKYE8dersVnaKGrr31HkmebSE7mBzofeXAhh5Xbo5J+yzsF7wdNGjePdso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZDROzvCT; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-70677422857so1463895b3a.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 02:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1719309286; x=1719914086; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QckC6gjfMonIYwuSOvK7TGa+d6/Qqazmh3+ZmkkxyWM=;
        b=ZDROzvCTM2GUzgnNEYXgKMgiGnTz6TzCU89cYJpklRtrSMT8UORWllBzpRLBe7HDZV
         D2/KcVGWEav7KuT9klycVOovo1mkcIlGAGeESog4G2KF08EMza3iujAXvn8ASSrfzMH5
         0z5NjHna19MZ482iWOynL62dGl+CWPM3QFfyU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719309286; x=1719914086;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QckC6gjfMonIYwuSOvK7TGa+d6/Qqazmh3+ZmkkxyWM=;
        b=Ob++yGk4Oz2qz1o08YAGxdUv5bSD6scX1UHk2+JPgfEwm5f9T8EVT9Sw23x+dxUM2t
         upxOG5lSEjC//jsu8vfrlwcMOPpgsvZnGL3L3lv7om6dE7FpMd6HB0MR78uTZTPk979Z
         Nq9mfuZWGdMp5/brIQncZHWJN6BMDCL5+b7l0LbjCL+0/TJKuyeJikAkm+kuJlrITpuS
         r2aKvvE3s5nVDa9SSjC+ntyjaBKxXevAJP8zj8dY6SDz6pUTf673GRJmMIoOk0ENvyvM
         Fm9pFS7NkPspZAW9NmHvXGlF2NjBVwvst62qrrldV1gMr5MH3V1MGGrqMdXKxL+9vGLP
         9AYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxQzDVM84vawl23cs2VFAbblpn12RaGJ1zgO/i3p7U3P9mkDX592YDx7zZvOv54F+Irq7nHKw2pHmPIEEgmUnZjAnixdOvET2uHA==
X-Gm-Message-State: AOJu0YxnYlgUygc+pYo1M+Sv3QDMuEU41Fzb+2STd6dI5PoyMXzubDZM
	9UkbX8Pw4of5M0gKVgJKf63PVSjlvyGC8y2bEB0czfxUcowDWkxoOG3XHgN7yg==
X-Google-Smtp-Source: AGHT+IFKN9C95q1Ki5Q76MKs7sOPj07I0lD5UA8cTwdJwE3Zz3ZT22U72tlalk92pRM7lhXvwJPtPg==
X-Received: by 2002:aa7:92c2:0:b0:705:c029:c9a7 with SMTP id d2e1a72fcca58-706745b6d61mr6257366b3a.15.1719309286177;
        Tue, 25 Jun 2024 02:54:46 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:ea5a:67dd:bd1e:edef])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70691ef0c7bsm1747683b3a.4.2024.06.25.02.54.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 02:54:45 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: mt8183-kukui: clean up regulator tree
Date: Tue, 25 Jun 2024 17:54:38 +0800
Message-ID: <20240625095441.3474194-1-wenst@chromium.org>
X-Mailer: git-send-email 2.45.2.741.gdbec12cfda-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some regulators in the kukui device tree are modeled incorrectly. Some
are missing supplies and some switches are incorrectly modeled as
voltage regulators. A pass-through was incorrectly modeled as a
regulator.

Add supplies where missing, remove voltage constraints for "switches",
and drop the "bl_pp5000" pass-through.

This depends on commit 2a99858c172e ("arm64: dts: mediatek: mt8183-kukui:
Add PMIC regulator supplies") for reg_vsys.

Fixes: cd894e274b74 ("arm64: dts: mt8183: Add krane-sku176 board")
Fixes: f15722c0fef0 ("arm64: dts: mt8183: Add pwm and backlight node")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 22 +++++--------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 64b3389028e9..57d962e94af7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -24,7 +24,7 @@ chosen {
 	backlight_lcd0: backlight_lcd0 {
 		compatible = "pwm-backlight";
 		pwms = <&pwm0 0 500000>;
-		power-supply = <&bl_pp5000>;
+		power-supply = <&reg_vsys>;
 		enable-gpios = <&pio 176 0>;
 		brightness-levels = <0 1023>;
 		num-interpolated-steps = <1023>;
@@ -47,10 +47,9 @@ clk32k: oscillator1 {
 	it6505_pp18_reg: regulator0 {
 		compatible = "regulator-fixed";
 		regulator-name = "it6505_pp18";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
 		gpio = <&pio 178 0>;
 		enable-active-high;
+		vin-supply = <&pp1800_alw>;
 	};
 
 	lcd_pp3300: regulator1 {
@@ -62,27 +61,16 @@ lcd_pp3300: regulator1 {
 		regulator-boot-on;
 	};
 
-	bl_pp5000: regulator2 {
-		compatible = "regulator-fixed";
-		regulator-name = "bl_pp5000";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		regulator-always-on;
-		regulator-boot-on;
-	};
-
 	mmc1_fixed_power: regulator3 {
 		compatible = "regulator-fixed";
 		regulator-name = "mmc1_power";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
+		vin-supply = <&pp3300_alw>;
 	};
 
 	mmc1_fixed_io: regulator4 {
 		compatible = "regulator-fixed";
 		regulator-name = "mmc1_io";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
+		vin-supply = <&pp1800_alw>;
 	};
 
 	pp1800_alw: regulator5 {
@@ -92,6 +80,7 @@ pp1800_alw: regulator5 {
 		regulator-boot-on;
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <1800000>;
+		vin-supply = <&reg_vsys>;
 	};
 
 	pp3300_alw: regulator6 {
@@ -101,6 +90,7 @@ pp3300_alw: regulator6 {
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
+		vin-supply = <&reg_vsys>;
 	};
 
 	/* system wide semi-regulated power rail from charger */
-- 
2.45.2.741.gdbec12cfda-goog


