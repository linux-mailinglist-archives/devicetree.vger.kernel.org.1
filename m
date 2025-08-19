Return-Path: <devicetree+bounces-206454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B330B2C557
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:23:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 21BFD16BA2F
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44106343D94;
	Tue, 19 Aug 2025 13:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S9y7A+2k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84EE5340DAE
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609436; cv=none; b=ljt/YtViF2MJGY87aggzJz0eIGH/MM3efMtQvb3/0cT+4CT1w88A4Rd+AWF+pn8FCHjy7kgHQKEdk3FbrCIwjg5OmpSvyL6A/YG8SieK9gCDeKHNR5SN/xPtOwrxnT9zeXQzjFSTquGboi5DKnSdHLvOiIS9HzLldNyVPaO8zxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609436; c=relaxed/simple;
	bh=B3zj8kIxlI6NNxjczKCH38wkItfXZHU2cc6N45nCziM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qHgvhCF3/HHZ607JGczuC0HcSJkV+GPemsdPRxw/Qt66+vMncFkxfREhRiCvXv4DUewV/g22WCmWKfmz8E2hel0mZHWe6WPM1VcgIzC7x5u52655WOOgA03GXsLQm78epuvGrRnbApc2yTMf4zeKkQzAch1L3Ex2bcXGPJkaLZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S9y7A+2k; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-afcb731ca55so71908866b.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609433; x=1756214233; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JKZOwRgVgk/u0KdrUt1cAkiGVJS+RKkMWzXrX75b1m0=;
        b=S9y7A+2khAAmcHXfpA07aS2nU5j/JXECTWVI0FWyhHwHkPOet9P+b5YmD4m0oVDwX9
         PGAxoKjZ/FyDtQIIHWdOUcziIhaM4A4HWoKsawi2F8D4qwaUaG3d+PcwGeROPG9niNmM
         V+k73dPCTN9vTIeyqPZ9JIB9h5ArfJ5aYrYqFa8ylTpb0GX7wiKcRmhRBmgYUzehqxdR
         lGhagwk8X0dUlhjszA5qgQvU+9FVdVIFbC9F2OMvxdLudnhFjSEZvY3533XUjVoEhoDT
         5f+SmAdq6TnDPmFS6tlrWXgeYU7Ea54IiDyGbQpBgwd1u2k9mYnGjoW8Q9f+TX/oyM4y
         SUXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609433; x=1756214233;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JKZOwRgVgk/u0KdrUt1cAkiGVJS+RKkMWzXrX75b1m0=;
        b=qoLJ3DaIMbpIcc2kYMTcOGk+TT24NNKphL3077hpHzEui2Ur/xTms4GXDKgOMyttcn
         MPPMIj8cnsyxZ6e566LnfxXj8w9IGtliWt6nHrVs6ONOVtAdbCsn+3Y1bJxXkS4qc29+
         U2D7pivtDpqPswOMWuosbteOcUjNnbt1Lka/P+8Hws1NUkXxLiw9mNf2aIsjIZ76uySO
         kuk0FlxJBkO6j0maGmQEHAaoEp5t+nczf6lxMFostQOkT0l7+kHFGxj+dCSUPs2/FDYV
         5TFN+DVIM7fPlWhEilSBPYXlUlrREL+EftgsSREJnYK5aGKxsJm0fPlsmxKkLpbPX8IL
         DmtA==
X-Forwarded-Encrypted: i=1; AJvYcCWAcILPQMCWdabM/1NXP7TjwFau7Ejv5Y0Nse+uU9I3TnTaRY/81zjsjG5578OAw3KfgOVG0X5EpaFR@vger.kernel.org
X-Gm-Message-State: AOJu0YzLC/pxGqPdMG/lXlPPV422ET7NV7fqcWCQS7EeSiz/R7wYho0J
	21eMh0IT+Ka9kCi+NWhpkJGUsrrB/0YVs6LcXi0rd6O2STmNAsvN7uwjmrEHr4uxqeZSxwQzgXt
	z1DiN
X-Gm-Gg: ASbGncvkWU0U/emUlbdpn4kWbHykbv1ZlaA22T6tw9ytlEFvaJceM4xdxnsirxepoNS
	WBjOnQbdppe70wHKtTJLllbbZ1SCtzfEBnV4WdSwBrQl5DTKNR7PDGwtiv71zMbFSm9ZT3mbBVu
	OMZJO575jxI8UKOEtSN2Ib0oR2iYxpZA7UNDc423Yphh+q0GII+YG4GqNN6azGHCNR9ud3lfnqQ
	3GRS2+Yhe6ZTxVZ6A/iGXW75uHk8BkJS0IwYCjL/n0O7+XP5cjSTGTUEAAQ9ah9xn4hYpg4XViS
	A3AEIBjUnYNSk22f2zAVwdh6q7jQXpc5YLTp+ixUW+2fKxuDwJwfmHhfKlc8UcrDngLrFrjjVO9
	FDQid7ZxOmMy8ad1dzOZTav5xR3dSBDPc+g==
X-Google-Smtp-Source: AGHT+IE/vAUGvaFZ7UmmcB7vUKiiYyvdlgsGn3EINffXwUbDoJ0n2eu7BMJecMYq+4729BjHVfjv/w==
X-Received: by 2002:a05:6402:13c7:b0:612:e258:33e2 with SMTP id 4fb4d7f45d1cf-61a7e768851mr1075178a12.4.1755609432667;
        Tue, 19 Aug 2025 06:17:12 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a92678f45sm129674a12.18.2025.08.19.06.17.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 06:17:12 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	=?UTF-8?q?Goran=20Ra=C4=91enovi=C4=87?= <goran.radni@gmail.com>,
	=?UTF-8?q?B=C3=B6rge=20Str=C3=BCmpfel?= <boerge.struempfel@gmail.com>,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] ARM: dts: stm32: Minor whitespace cleanup
Date: Tue, 19 Aug 2025 15:17:08 +0200
Message-ID: <20250819131707.86657-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1895; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=B3zj8kIxlI6NNxjczKCH38wkItfXZHU2cc6N45nCziM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopHlTkXi33JJKHIMfKBoPhPxIx908F+l6S81a7
 m1fzcytzaeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKR5UwAKCRDBN2bmhouD
 1346EACYQWFZHMhc9Q28PrXrM2zH4iKyydMy43eCV8WTv37Msn65uyxgguJ7kyC7hc5MaL4HKOa
 d0JKgl4tyaTwoIkCHUvT5ZewBrP+RHxyq7mTQqTfVHCIwKXtFf8liWHQ1noXqVcWnsy0I1sbcw5
 MMU25nXzXQvz4Aqiv/BIDN0C5N2e4znVVzQcaoHiSjB2Fzdrgi4d3UKDrMCK5gZKfDE8cbFVIbf
 GksfXa95bREav2g46bo/xcVRDYQhRp5Hfk1zyG2Dr3ck7eqQ3AVOxp4tVT9/Hwxgz0bykWSIxCV
 qA0chuos9BWz/JF2cwNxHR27T+R9ezSXbSjMoVf6tjFnZkJXuXKlrRWa3WZ57CRAPFZnnSNH/d5
 lPVdiZiTTBEEw1oySG4+ukrMqs6VEJdNa6ZnSeFclm1PGWhmRyfrRGCJWOf+SZ0YF6tkbbSJUmU
 0sHwyexaVYtKSrY3polDkTaDIU8gPZkHYBIfW7dwPd8bojdX5ghigh+k14+ZGDnSINFI4dJZVKy
 kITbrPn1Udz5I2aRC2GSFK4c75IxREqD4ZxqgKjgakZoc2eY8zLdzJNgY+ps4sHu6GWPhxaam1f
 VRpB5DfQ4FaAdxO7awxj+qtl9dsqEsRQBSoMxHLrpuW7ZYfe+kBEy4aEquCc7+hIY3redt+aRdS E6E7i24wVw2SGxA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '=' or '{'
characters.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/st/stm32mp151c-plyaqm.dts        | 2 +-
 arch/arm/boot/dts/st/stm32mp157c-ultra-fly-sbc.dts | 2 +-
 arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp151c-plyaqm.dts b/arch/arm/boot/dts/st/stm32mp151c-plyaqm.dts
index 39a3211c6133..b886aa91bb86 100644
--- a/arch/arm/boot/dts/st/stm32mp151c-plyaqm.dts
+++ b/arch/arm/boot/dts/st/stm32mp151c-plyaqm.dts
@@ -255,7 +255,7 @@ &m4_rproc {
 	/delete-property/ st,syscfg-holdboot;
 	resets = <&scmi_reset RST_SCMI_MCU>,
 		 <&scmi_reset RST_SCMI_MCU_HOLD_BOOT>;
-	reset-names =  "mcu_rst", "hold_boot";
+	reset-names = "mcu_rst", "hold_boot";
 };
 
 &mdma1 {
diff --git a/arch/arm/boot/dts/st/stm32mp157c-ultra-fly-sbc.dts b/arch/arm/boot/dts/st/stm32mp157c-ultra-fly-sbc.dts
index ac42d462d449..2531f4bc8ca4 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-ultra-fly-sbc.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-ultra-fly-sbc.dts
@@ -92,7 +92,7 @@ gpu_reserved: gpu@f8000000 {
 	leds: leds {
 		compatible = "gpio-leds";
 
-		led0{
+		led0 {
 			label = "buzzer";
 			gpios = <&gpiof 2 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
diff --git a/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi b/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
index be0c355d3105..154698f87b0e 100644
--- a/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
@@ -262,7 +262,7 @@ &i2c5 {
 	status = "okay";
 
 	usbhub: usbhub@2c {
-		compatible ="microchip,usb2514b";
+		compatible = "microchip,usb2514b";
 		reg = <0x2c>;
 		vdd-supply = <&v3v3>;
 		reset-gpios = <&gpiob 6 GPIO_ACTIVE_LOW>;
-- 
2.48.1


