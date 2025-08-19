Return-Path: <devicetree+bounces-206461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7B1B2C561
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:24:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F75C6257E8
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73F1F342CAF;
	Tue, 19 Aug 2025 13:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jnVY4+z5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD5F33EAE2
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609473; cv=none; b=WlVU7SiKOpRIBTU8V/z5/65j4jbsBVgaUxjJZTRLF+EhE5iDBjecTkVY0z52OUJpCBDcSTSezD4AsQashLZ7pxj/q9WC3oSj+THXAx9WeFIZYP3O1W+ZaO/flFqXcVxZ+mrBIJYHoV7eR1qxqeCfC+Rdpf5NQBwKF/urbKpmO1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609473; c=relaxed/simple;
	bh=J/hsPKtt4JbGzEI1pCl4hW7h1QPoxR3/5npoimUrZNQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Fd1nXBjusIc2xUorlEMFOP5foZyvcSXjPnIQBeph2tzvFtqEpWQ40YUx/Iw2SpwaD9Eln7P3lsG8eD4YU9I1bTBcewQqr2pUNH94urk//O5QviO/6E/Rl8/NX6ZdLzVxFL8etobhULnwjjBV9x39curYCCOgyNfh+ZBB2H6GaeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jnVY4+z5; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-afcb736dc8cso69773466b.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609470; x=1756214270; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yX8jqUNVoaT/pP/QBlusgZO8WrcJpEh11O3LQ2VZcys=;
        b=jnVY4+z5A97S9kzlzG3lujmIf3k06SSV5KoIJia4jSLNwdt84Eqf9P2iDHkl7LNLE+
         ljBkvXakVvYalcT2wixRssYrW+SrKclL4lxbxgQaC6AaE0BQ4socNJng330+ovJifwmu
         l7zXygTTu0TTPfRnZzFrhnSQGBLh4c0WJCJ+ZJYyW7ImwVdOKaWfx+RHMHjRzoTosYMO
         EgHj0d28kHw6TYuJITwW7uXDJ1eKIkdklEUMdNrGTZ9gQl6lSk8n2qCpHW4Fy/1gOlXx
         g2j0q98RrE05Li7mvzQTAZaMIJAHOEonMn+tyUINa1q7sahwAXOltSw40XQeXpKKgcks
         RZdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609470; x=1756214270;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yX8jqUNVoaT/pP/QBlusgZO8WrcJpEh11O3LQ2VZcys=;
        b=dJLJL0FGEu3VPir75lpFX+sw6gdn3eGgPJho1HkbGbxZZP6k/AKvh74DenBuQBPDNA
         rA7W9hphdtrjR3+Xi6cL0UgSzUUzuXd285QTwbTaw/OyJ46FS1jfMRRzXKVzImAmHkVH
         vpR8RO/Z7jLBr+gw+Xq0m9ajurVdE5pMRyyUdlCSJFeBvq/Z75EqXH5d2wNwfLtgcLsK
         0lxxKkbdb6LkA72HttdKnensF1KTq9UEToQW6sWzvNqCLpSGjOfPNXtxRlA5sAekh1xG
         lQLVb2Lv9rTI3iE5ORQDu/sHZ9bQGIwUd7Y5ogVSoyvcRIW03Xbof9+qjPqEMquE/yi9
         eonA==
X-Forwarded-Encrypted: i=1; AJvYcCV/jb7Rq5+G26OO6wc4OaUR9Djm7QzxrU4dc6iJK9hNMqgN65M+D4+PgldD3wSlqDMCtVnL3KqOQxe0@vger.kernel.org
X-Gm-Message-State: AOJu0Yx17CLkHtHYcOeefwnNAMQvljJLRQcEdvsuafyQNqY+T01AOZX/
	RDj+qGWC/t3WpuFkuSJw7HTsQcRVXhocAgbx+idGJX2wIM6xmFjqIm00Ep8t7TwZ4LA=
X-Gm-Gg: ASbGncvXm1YrP3O/f26VxVRM6K0sq49mdv8TY0BPmu5e9X1nUHrK0s6xCdEC4WiopkH
	Zzcs89D1muRRzrusOyuHIsdqqx88NiULLrWWbYPrrUVY955EIHqvoI83+xNOjH9GHDGYJMNttji
	O5LjMwRMkPbKpQOX7riG5RM2p/qUekwXRP7wMGrZHsodn9cG9qio2Knp/Mn2R3Vy+O5OQGlykLy
	ck1G4fPhUYk8WrJiKwpL8VtKbjui0xn5hYBPIvZlOg0N8MlUSSVprclb9t8HSt5ZZhJtpT+1to2
	24YDVCyyVew9Blujg7Z3MS1wY1uxBBe9d6ZpePtsSzojdd7YOEvoIYyDXZubToADCLF48C1ljUm
	kzYdGoJmbMwokBNusKIUcAJlrQoPAoMRoSc0fQWOdLJP4
X-Google-Smtp-Source: AGHT+IHRYPCS3CIXpz9ep32Qtx6spFR8eE7gvHlEe/afYX4onbStKp+kGa6meEY3YtnW6Pv8oWVyMQ==
X-Received: by 2002:a17:907:968a:b0:ad8:a2b3:66fb with SMTP id a640c23a62f3a-afddcbadb07mr124772066b.3.1755609469701;
        Tue, 19 Aug 2025 06:17:49 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdce53f49sm1007251066b.7.2025.08.19.06.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 06:17:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: aspeed: Minor whitespace cleanup
Date: Tue, 19 Aug 2025 15:17:44 +0200
Message-ID: <20250819131743.86905-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=9010; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=J/hsPKtt4JbGzEI1pCl4hW7h1QPoxR3/5npoimUrZNQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopHl3mN1BKV6PxXk7jlrwxP7edMkWFv03fc9Q3
 tA7yxN2kDqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKR5dwAKCRDBN2bmhouD
 12wrEACF0czF4yiRZj5xxAq/TmjYthxtMYW9SNh1wmjiPXvf5M2AiAzTIli8cRpczKhhvWN3qEJ
 qH3aARLi0lTJXzcnGDcI+CpxdRvuLpLG+UlM0C0TEMzIXZJLf1bKy+R8zpmdKCZI1cb1iOieubr
 65DQZUfVUCVwfIy36b/tG35fgcBgf59x5kisxw5jKNj98ZqTK95UrSGkmwMY8BztU8USV8TABG4
 WtZeGUwdrbgZjBfDv7OqrCaR04NUCHpZB51V6MtiRYTAecUGg40DtQSWwLIIN7oL4AcyEEwdlIX
 v/ZBmJ3OdXAfkVWlg5GVlQzHUEZeuFa4y+kIT//k/Vuna/VObLIs5tg60vINmhq14AE030krBKG
 hYZpeiA3Y3wRJYlmEdIY7/SUuhqQ6rGh4KRpjtQHufKF/NPJOlduxebYKS1ZtesZSs5Dj4EpApI
 RgnH47VCBru9xdUvn6CWk+ZpTbzz+Rub3K+7+8TdT8sK1ZVXKr+OZTwaf53JAsbWXN+xGLk3Cdu
 7Uhnu/dxC2YW4tu/urgD2b01L4SyvhXHHXBcTtsxWInt4Bs2Qe+YLx5FKy6kuBsBt9Erf5x/zBw
 6B3ujHdYTjMA1xcncq9EuwQQEv/UW2PyYxmswjbb6eO2VQjo6sBvr+1AbMYmCP56E+nYkmka0uy Bno9k6UHwpW/itg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '=' or '{'
characters.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../dts/aspeed/aspeed-bmc-ampere-mtjefferson.dts     |  2 +-
 .../boot/dts/aspeed/aspeed-bmc-facebook-catalina.dts |  4 ++--
 .../boot/dts/aspeed/aspeed-bmc-facebook-harma.dts    |  4 ++--
 .../boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts  | 12 ++++++------
 .../dts/aspeed/aspeed-bmc-facebook-santabarbara.dts  |  2 +-
 .../dts/aspeed/aspeed-bmc-facebook-yosemite4.dts     | 12 ++++++------
 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dts  |  2 +-
 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dts     |  8 ++++----
 .../boot/dts/aspeed/aspeed-bmc-lenovo-hr855xg2.dts   |  2 +-
 .../dts/aspeed/aspeed-bmc-nvidia-gb200nvl-bmc.dts    |  2 +-
 arch/arm/boot/dts/aspeed/aspeed-bmc-opp-zaius.dts    |  2 +-
 arch/arm/boot/dts/aspeed/aspeed-bmc-vegman.dtsi      |  2 +-
 12 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtjefferson.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtjefferson.dts
index c435359a4bd9..53b4372f1a08 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtjefferson.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtjefferson.dts
@@ -243,7 +243,7 @@ temperature-sensor@49 {
 				compatible = "ti,tmp75";
 				reg = <0x49>;
 			};
-			temperature-sensor@4a{
+			temperature-sensor@4a {
 				compatible = "ti,tmp75";
 				reg = <0x4a>;
 			};
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dts
index 8d786510167f..14dd0ab64130 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dts
@@ -526,11 +526,11 @@ fan-3 {
 					tach-ch = /bits/ 8 <0x03>;
 				};
 			};
-			fanctl0: fan-controller@21{
+			fanctl0: fan-controller@21 {
 				compatible = "maxim,max31790";
 				reg = <0x21>;
 			};
-			fanctl1: fan-controller@27{
+			fanctl1: fan-controller@27 {
 				compatible = "maxim,max31790";
 				reg = <0x27>;
 			};
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
index b9a93f23bd0a..59249e5f2fce 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
@@ -183,7 +183,7 @@ &kcs3 {
 &i2c0 {
 	status = "okay";
 
-	pwm@5e{
+	pwm@5e {
 		compatible = "max31790";
 		reg = <0x5e>;
 		#address-cells = <1>;
@@ -257,7 +257,7 @@ eeprom@50 {
 &i2c2 {
 	status = "okay";
 
-	pwm@5e{
+	pwm@5e {
 		compatible = "max31790";
 		reg = <0x5e>;
 		#address-cells = <1>;
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
index ef96b17becb2..399e244bcd79 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
@@ -312,7 +312,7 @@ eeprom@50 {
 				reg = <0x50>;
 			};
 
-			pwm@5e{
+			pwm@5e {
 				compatible = "max31790";
 				reg = <0x5e>;
 				#address-cells = <1>;
@@ -435,7 +435,7 @@ eeprom@50 {
 				reg = <0x50>;
 			};
 
-			pwm@5e{
+			pwm@5e {
 				compatible = "max31790";
 				reg = <0x5e>;
 				#address-cells = <1>;
@@ -558,7 +558,7 @@ eeprom@50 {
 				reg = <0x50>;
 			};
 
-			pwm@5e{
+			pwm@5e {
 				compatible = "max31790";
 				reg = <0x5e>;
 				#address-cells = <1>;
@@ -681,7 +681,7 @@ eeprom@50 {
 				reg = <0x50>;
 			};
 
-			pwm@5e{
+			pwm@5e {
 				compatible = "max31790";
 				reg = <0x5e>;
 				#address-cells = <1>;
@@ -804,7 +804,7 @@ eeprom@50 {
 				reg = <0x50>;
 			};
 
-			pwm@5e{
+			pwm@5e {
 				compatible = "max31790";
 				reg = <0x5e>;
 				#address-cells = <1>;
@@ -926,7 +926,7 @@ eeprom@50 {
 				reg = <0x50>;
 			};
 
-			pwm@5e{
+			pwm@5e {
 				compatible = "max31790";
 				reg = <0x5e>;
 				#address-cells = <1>;
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
index ee93a971c500..72c84f31bdf6 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
@@ -233,7 +233,7 @@ gpio@20 {
 			"FM_NIC_PPS_IN_S0_R","FM_NIC_PPS_IN_S1_R";
 	};
 
-	fan-controller@21{
+	fan-controller@21 {
 		compatible = "maxim,max31790";
 		reg = <0x21>;
 	};
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
index aae789854c52..60b98d602e80 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
@@ -1186,19 +1186,19 @@ adc@1f {
 				ti,mode = /bits/ 8 <1>;
 			};
 
-			pwm@20{
+			pwm@20 {
 				compatible = "maxim,max31790";
 				reg = <0x20>;
 			};
 
-			gpio@22{
+			gpio@22 {
 				compatible = "ti,tca6424";
 				reg = <0x22>;
 				gpio-controller;
 				#gpio-cells = <2>;
 			};
 
-			pwm@2f{
+			pwm@2f {
 				compatible = "maxim,max31790";
 				reg = <0x2f>;
 			};
@@ -1234,19 +1234,19 @@ adc@1f {
 				ti,mode = /bits/ 8 <1>;
 			};
 
-			pwm@20{
+			pwm@20 {
 				compatible = "maxim,max31790";
 				reg = <0x20>;
 			};
 
-			gpio@22{
+			gpio@22 {
 				compatible = "ti,tca6424";
 				reg = <0x22>;
 				gpio-controller;
 				#gpio-cells = <2>;
 			};
 
-			pwm@2f{
+			pwm@2f {
 				compatible = "maxim,max31790";
 				reg = <0x2f>;
 			};
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dts
index 757421bc3605..c5fb5d410001 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dts
@@ -263,7 +263,7 @@ eeprom@51 {
 		reg = <0x51>;
 	};
 
-	tca_pres1: tca9554@20{
+	tca_pres1: tca9554@20 {
 		compatible = "ti,tca9554";
 		reg = <0x20>;
 		#address-cells = <1>;
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dts
index 8d98be3d5f2e..dbadba8eb698 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dts
@@ -3778,10 +3778,10 @@ smb_svc_pex_rssd01_16: pinctrl@20 {
 			pinctrl-0 = <&U65200_pins>;
 			pinctrl-names = "default";
 			U65200_pins: cfg-pins {
-				pins =  "gp60", "gp61", "gp62",
-				"gp63", "gp64", "gp65", "gp66",
-				"gp67", "gp70", "gp71", "gp72",
-				"gp73", "gp74", "gp75", "gp76", "gp77";
+				pins = "gp60", "gp61", "gp62", "gp63", "gp64",
+				       "gp65", "gp66", "gp67", "gp70", "gp71",
+				       "gp72", "gp73", "gp74", "gp75", "gp76",
+				       "gp77";
 				function = "gpio";
 				input-enable;
 				bias-pull-up;
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-lenovo-hr855xg2.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-lenovo-hr855xg2.dts
index de61eac54585..c63f0b43090e 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-lenovo-hr855xg2.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-lenovo-hr855xg2.dts
@@ -151,7 +151,7 @@ &mac1 {
 	pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
 };
 
-&adc{
+&adc {
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_adc0_default
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-gb200nvl-bmc.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-gb200nvl-bmc.dts
index 72dafebc080d..4de38613b0ea 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-gb200nvl-bmc.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-gb200nvl-bmc.dts
@@ -282,7 +282,7 @@ &uhci {
 };
 
 &sgpiom0 {
-	status="okay";
+	status = "okay";
 	ngpios = <128>;
 	gpio-line-names =
 		"","",
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-opp-zaius.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-opp-zaius.dts
index 627c91f178e6..af3a9d39d277 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-opp-zaius.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-opp-zaius.dts
@@ -64,7 +64,7 @@ event-checkstop {
 			linux,code = <ASPEED_GPIO(F, 7)>;
 		};
 
-		event-pcie-e2b-present{
+		event-pcie-e2b-present {
 			label = "pcie-e2b-present";
 			gpios = <&gpio ASPEED_GPIO(E, 7) GPIO_ACTIVE_LOW>;
 			linux,code = <ASPEED_GPIO(E, 7)>;
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-vegman.dtsi b/arch/arm/boot/dts/aspeed/aspeed-bmc-vegman.dtsi
index 16815eede710..8c953e3a1d41 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-vegman.dtsi
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-vegman.dtsi
@@ -30,7 +30,7 @@ video_engine_memory: jpegbuffer {
 			reusable;
 		};
 
-		ramoops@9eff0000{
+		ramoops@9eff0000 {
 			compatible = "ramoops";
 			reg = <0x9eff0000 0x10000>;
 			record-size = <0x2000>;
-- 
2.48.1


