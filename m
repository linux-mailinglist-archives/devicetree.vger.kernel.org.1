Return-Path: <devicetree+bounces-40693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3B8851364
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 13:17:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5394B1C2135B
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 12:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EF8539FE1;
	Mon, 12 Feb 2024 12:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YsyxWc8Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E3839AD1
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 12:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707740221; cv=none; b=TNCvJQAdYUc5H8FobH4jfzLb8/tBWU42x64HhKZfBm8HSJsv0S6x7ZdJ0sIfpdSmeaPaKUdMahUjjnW4+S596qzsHybwYPBCPZmMucFhn7MIrZnrV8IxPgZLvJC0KF5MVaTnU0fxtyc0zhSTPabXDm1Riq3C2AWvutqCOv/l990=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707740221; c=relaxed/simple;
	bh=not+3YrIcvUhzkl+6pMmQ1dVnoN27ulN6anni8A2cg0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ovQ8oRTS1uEjbbR62q3ay+uZvfDmWcHfQz0vxSHtT3S5ul1KAEKUge1UkutGXq3/zyifq8SPJdPEMxsrozA+jQau0M1B7XipnDXnXXsbHN4Zxyy7QM6I7rmdMixpGXiapvf785kEIlhpJ9Hh+LLjkRTOfd1tGEUTJj61wwtu3jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YsyxWc8Y; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5600c43caddso3722468a12.2
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 04:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707740218; x=1708345018; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BXgBeJ/zS0L0k9t0dD78NVfQ3/+/ikaDrZipKP3SKjI=;
        b=YsyxWc8YEU46FBDAk8NXNAuzZgV4xcTQOZfwkW4xB8foAo0UiTaLm/kSlUc/JMHaLm
         V3Z6t2l2+NhbFfTNcrU8eTj1QDeUskZ+Mzz69lsgL3a5bG0W6TXKdR6Q/n97b8RnTvHI
         gil8Pd4FNwXKqdgB2GRX+2n+PZ3rzCHlUZ2CZ6Vp6PGLXeSJ9D9qQgaDAGcrWC+odPC5
         sTsD9jvBorCY9fd9+bU0ahzvqcbKFTiufhK+5OqwQl8hwSRImvkzLzO18wQkwkyMVMo4
         m6Yzc0wHRrqvZcfBGba56EBj3uwM1ZxThZ/QYJmM+AHN2pIBLZu2/F42Ld87OcknU4v/
         9y5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707740218; x=1708345018;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BXgBeJ/zS0L0k9t0dD78NVfQ3/+/ikaDrZipKP3SKjI=;
        b=Orm6gmioys6D8eB76ibReAGlTBnxXMsCqPvywTSqFOZ1qpBumhwZhIcSRO9Pm9f2Lq
         n2En+ay047KTenoEMyYas17UjZHklwRvZcCXzbEHvJwpR2rJwDGIQS5EBLMvABhiqVCw
         OhGMs1r1scTinsKjbg+ztz5To+j2/Dy/itnwS4y97gfiCkk3qSS7B64q9NOWSmeH4OE4
         zDZOBDRwyH3BbMYtluQx82PgGixFyx8qiFXnuURwpHMLGZ/20dfqajHxBL8ropD0YfjS
         pG3rZGQw37Mm0/ZeRIgp793SBn/4PX7PEBGQwFVEhPOKN1gs1JDKB5wZbzhJL+wPvteo
         7kRg==
X-Gm-Message-State: AOJu0YzwYSrFuhtM4o/RxclV0QmFb/spQtTJtsxdvdtc69vlWgpq/9c5
	eYsNAbyE5m4eBq/peuL2AUeK49wnBz7VukLmjqljYcuZ0z2ocTaXDB0YzQ9+
X-Google-Smtp-Source: AGHT+IG0bmACKBZt+rsKUFnfLFoMc5TlIBN7CJQ5wcr+iac/2NWf5fEY1ZGbLqIDT3F/rdOD+om1CA==
X-Received: by 2002:a17:906:7c55:b0:a3b:f7cf:6616 with SMTP id g21-20020a1709067c5500b00a3bf7cf6616mr4518736ejp.18.1707740217711;
        Mon, 12 Feb 2024 04:16:57 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXba1TtBmqJyOtVRFS1fmxYDIct4BqQiofpW2EQj/eLrWvFqbUFV2lEVwJm/1DgBSdWKdmfb6Oq9dN6heDMPKY0OAiS5xrNYWcLnF9ExxHaHCAb107x1sS7NlRkW9Uxb2Tc+aJ8ALsGKFdGtIwNTgHkRh4zbjLD66l7uNTubd6lVX85rbVuy3EFQvFwFfHwZVOTA79b29DbSDgq6LPINHMmjPEU1GCy90ZtRvUBXQsl0isQb47g/ODJ2XOYxh64x8c3ImDwB5FuVc1syarDEeQ3sVHg1RCUpXvafff8y4KiKKW/iONKjA6GJQpW/olF2Ge27rl5PQwaSC1Km37u4KSSPz8bTDYYkw==
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id lu1-20020a170906fac100b00a3c97e49bc9sm147850ejb.218.2024.02.12.04.16.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 04:16:57 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH REBASED 2/2] arm64: dts: mediatek: mt7986: reorder nodes
Date: Mon, 12 Feb 2024 13:16:20 +0100
Message-Id: <20240212121620.15035-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240212121620.15035-1-zajec5@gmail.com>
References: <20240212121620.15035-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Use order described as preferred in DTS Coding Style:
1. Sort bus nodes by unit address
2. Use alpha-numerical order for the rest

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/mediatek/mt7986a.dtsi | 116 +++++++++++-----------
 1 file changed, 58 insertions(+), 58 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
index eba5e27a1bbe..b3f416b9a7a4 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
@@ -16,13 +16,6 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
-	clk40m: oscillator-40m {
-		compatible = "fixed-clock";
-		clock-frequency = <40000000>;
-		#clock-cells = <0>;
-		clock-output-names = "clkxtal";
-	};
-
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -59,6 +52,13 @@ cpu3: cpu@3 {
 		};
 	};
 
+	clk40m: oscillator-40m {
+		compatible = "fixed-clock";
+		clock-frequency = <40000000>;
+		#clock-cells = <0>;
+		clock-output-names = "clkxtal";
+	};
+
 	psci {
 		compatible = "arm,psci-0.2";
 		method = "smc";
@@ -121,15 +121,6 @@ wo_boot: wo-boot@15194000 {
 
 	};
 
-	timer {
-		compatible = "arm,armv8-timer";
-		interrupt-parent = <&gic>;
-		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
-			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
-			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
-			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
-	};
-
 	soc {
 		compatible = "simple-bus";
 		ranges;
@@ -203,6 +194,19 @@ pio: pinctrl@1001f000 {
 			#interrupt-cells = <2>;
 		};
 
+		pwm: pwm@10048000 {
+			compatible = "mediatek,mt7986-pwm";
+			reg = <0 0x10048000 0 0x1000>;
+			#pwm-cells = <2>;
+			interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&topckgen CLK_TOP_PWM_SEL>,
+				 <&infracfg CLK_INFRA_PWM_STA>,
+				 <&infracfg CLK_INFRA_PWM1_CK>,
+				 <&infracfg CLK_INFRA_PWM2_CK>;
+			clock-names = "top", "main", "pwm1", "pwm2";
+			status = "disabled";
+		};
+
 		sgmiisys0: syscon@10060000 {
 			compatible = "mediatek,mt7986-sgmiisys_0",
 				     "syscon";
@@ -240,19 +244,6 @@ crypto: crypto@10320000 {
 			status = "disabled";
 		};
 
-		pwm: pwm@10048000 {
-			compatible = "mediatek,mt7986-pwm";
-			reg = <0 0x10048000 0 0x1000>;
-			#pwm-cells = <2>;
-			interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&topckgen CLK_TOP_PWM_SEL>,
-				 <&infracfg CLK_INFRA_PWM_STA>,
-				 <&infracfg CLK_INFRA_PWM1_CK>,
-				 <&infracfg CLK_INFRA_PWM2_CK>;
-			clock-names = "top", "main", "pwm1", "pwm2";
-			status = "disabled";
-		};
-
 		uart0: serial@11002000 {
 			compatible = "mediatek,mt7986-uart",
 				     "mediatek,mt6577-uart";
@@ -336,6 +327,21 @@ spi1: spi@1100b000 {
 			status = "disabled";
 		};
 
+		thermal: thermal@1100c800 {
+			compatible = "mediatek,mt7986-thermal";
+			reg = <0 0x1100c800 0 0x800>;
+			interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&infracfg CLK_INFRA_THERM_CK>,
+				 <&infracfg CLK_INFRA_ADC_26M_CK>,
+				 <&infracfg CLK_INFRA_ADC_FRC_CK>;
+			clock-names = "therm", "auxadc", "adc_32k";
+			nvmem-cells = <&thermal_calibration>;
+			nvmem-cell-names = "calibration-data";
+			#thermal-sensor-cells = <1>;
+			mediatek,auxadc = <&auxadc>;
+			mediatek,apmixedsys = <&apmixedsys>;
+		};
+
 		auxadc: adc@1100d000 {
 			compatible = "mediatek,mt7986-auxadc";
 			reg = <0 0x1100d000 0 0x1000>;
@@ -387,21 +393,6 @@ mmc0: mmc@11230000 {
 			status = "disabled";
 		};
 
-		thermal: thermal@1100c800 {
-			compatible = "mediatek,mt7986-thermal";
-			reg = <0 0x1100c800 0 0x800>;
-			interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&infracfg CLK_INFRA_THERM_CK>,
-				 <&infracfg CLK_INFRA_ADC_26M_CK>,
-				 <&infracfg CLK_INFRA_ADC_FRC_CK>;
-			clock-names = "therm", "auxadc", "adc_32k";
-			nvmem-cells = <&thermal_calibration>;
-			nvmem-cell-names = "calibration-data";
-			#thermal-sensor-cells = <1>;
-			mediatek,auxadc = <&auxadc>;
-			mediatek,apmixedsys = <&apmixedsys>;
-		};
-
 		pcie: pcie@11280000 {
 			compatible = "mediatek,mt7986-pcie",
 				     "mediatek,mt8192-pcie";
@@ -533,20 +524,6 @@ wed1: wed@15011000 {
 			mediatek,wo-ccif = <&wo_ccif1>;
 		};
 
-		wo_ccif0: syscon@151a5000 {
-			compatible = "mediatek,mt7986-wo-ccif", "syscon";
-			reg = <0 0x151a5000 0 0x1000>;
-			interrupt-parent = <&gic>;
-			interrupts = <GIC_SPI 211 IRQ_TYPE_LEVEL_HIGH>;
-		};
-
-		wo_ccif1: syscon@151ad000 {
-			compatible = "mediatek,mt7986-wo-ccif", "syscon";
-			reg = <0 0x151ad000 0 0x1000>;
-			interrupt-parent = <&gic>;
-			interrupts = <GIC_SPI 212 IRQ_TYPE_LEVEL_HIGH>;
-		};
-
 		eth: ethernet@15100000 {
 			compatible = "mediatek,mt7986-eth";
 			reg = <0 0x15100000 0 0x80000>;
@@ -589,6 +566,20 @@ eth: ethernet@15100000 {
 			status = "disabled";
 		};
 
+		wo_ccif0: syscon@151a5000 {
+			compatible = "mediatek,mt7986-wo-ccif", "syscon";
+			reg = <0 0x151a5000 0 0x1000>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 211 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		wo_ccif1: syscon@151ad000 {
+			compatible = "mediatek,mt7986-wo-ccif", "syscon";
+			reg = <0 0x151ad000 0 0x1000>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 212 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		wifi: wifi@18000000 {
 			compatible = "mediatek,mt7986-wmac";
 			reg = <0 0x18000000 0 0x1000000>,
@@ -646,4 +637,13 @@ cpu_trip_active_low: active-low {
 			};
 		};
 	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
+	};
 };
-- 
2.35.3


