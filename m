Return-Path: <devicetree+bounces-41338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A868385337D
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 15:46:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CCF4B1C26FB2
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 14:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B43657897;
	Tue, 13 Feb 2024 14:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lF4rLZMM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E53855C39
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 14:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707835594; cv=none; b=Ubms6OmmIB1mgDNz55TGoEm1gs53ziBBrpV02mxIPjy+JLOnIGe7g/spGPtPSCKzUa3qWnGwHh3xFTe5XYhJtw6MF0y69rJH4VvOxUVVv9DHWJZOeEMdAnjhheHq/qZAW7OXrZa0yEKhlaNZedSK6CUWCWPcqlQTwlqCqaDF5U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707835594; c=relaxed/simple;
	bh=ePaWWo0X1KJfDvze9zIfhVaXyroDIwjH96sUmRPDFcI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=rS9G3Fh1doJSD2MZcuSrI35a7y/Dnhzywj8h4HXesqJqAXY5oRdUnbIYLNDA3Lm3ey3QBu/qFbzMynmT/NruYCSxnrAIs6qXA5o2kG4jecSrHYeS9kLaVnCWVRCqCwf41R8GA5BgIIkNsqdUsjF8H71YfWNzz80ZJyciFmpR7d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lF4rLZMM; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d10ad265d5so7266701fa.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 06:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707835589; x=1708440389; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XJGFFpyBzNQW6CoIQ52XwyrDz+SQ9l0tl8UYT3Gzx48=;
        b=lF4rLZMMotL05HK/lIHwgmLqafb+EjPARb+hVByLbxlUyGs9tFxzt4ZJQrnBz05y/a
         1zbOm07UEXPxQTilcECxm+Mr3yy7Mda/KUO62Khe+JMmnfveNT/8a55XClvry0BAwwE5
         agUjQqJ7TObzkOiMUpqpZA2kszXEAkzPI7qZsWwCU/ZyTH9JUl2m8m+qLtXxTprZYMKA
         V6zcVrHK7Q0h4bR9iRmVS3um8ztGQp7WnHtmdzdJb7w4UzbmPUNRoem9tJgcsShQSBsV
         TlkfIAyVbi1tQKvV60b/ltTNS+NSxmWk9vA+/UrtErhYfo/aZe2Iev9IF/A1JpBxh9s+
         2Kzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707835589; x=1708440389;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XJGFFpyBzNQW6CoIQ52XwyrDz+SQ9l0tl8UYT3Gzx48=;
        b=fm7zgQduBZ7HJ+SrRRs2jAEn6hzad+EIpUCiq0HFolRMscRNM581Ktgx+VwTYBIaSl
         rq9GKCzlUkMJzcZv6MTa1hFqcUebWrQsur4xxeGfAuab/D7F2WBMxtYTlViE8CQMI/Gj
         fDKJVUn0b50uROTIMaemcUk86dR/+7wOnCjsi93XJGeyeJeQNMEyXdINKzfeJnUGAIwe
         3zrutNbMqvNA97/Ue0XdSV92Tkh8VKNyur3NK95qG/EeV9OBWAOifkYmeaKFQntqtIkP
         Fi/lXZ5BWxus7nCC4GmeuDWFrC80PCr/XZlY2VateePTuKgfz/6rOfSrB6YwWV3XMjVV
         P6XQ==
X-Gm-Message-State: AOJu0Yypp6dQjKvWU4NAzMOFMOnNo3722CqOMxRTXkO0GAbR553BRhZc
	8Sdfp79sN+IdEZpD+5ftRkYw+JyCerjq4jdAwOOaDow7DUsA1f5xLRQKbr6a1hk=
X-Google-Smtp-Source: AGHT+IEw8a0U2ScUAR1Kwbgr0ZeQ/OOzbh+dcPNcy6tFAbwRUP8ubzqTERTayNc0nA5pBEeOUcp7yg==
X-Received: by 2002:a2e:914b:0:b0:2d0:d9a7:60cc with SMTP id q11-20020a2e914b000000b002d0d9a760ccmr6422089ljg.23.1707835589451;
        Tue, 13 Feb 2024 06:46:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUXNgKlR75DDD6TXU3t0ao6cBbnfYFC/+/yWc/VQtkfrF2Lj9aC51pV9x9IWGa1qCZNvizFnKhbERMVrpU1dvsARq0MuCGrqCMYx56x7evXBgVoOCEcDA4bVl1ydWeq4td8mezqK5JVg5sTZDSj5t/Q7GqkBUV9DrW9YtG5D/ZbLOaQYbaOX4kvNiQfXnJLxw6hfnQCY0iQRmVZBaAvyMVWWvy9Wuqm4o+a2iTdEyNKonMCN+a8M7CKV8Y9Or+E4YdmMH/8iJrAKWQ+HpGj1ZFM00Slxg+2uEig59r0HzGADj3EgQB/q/vuEiLairj19JdrzawqOC1acivgyPCAeRjjSWGIMX5mtLw=
Received: from krzk-bin.. ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id bg10-20020a05600c3c8a00b0040fd3121c4asm12054253wmb.46.2024.02.13.06.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 06:46:29 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: mediatek: replace underscores in node names
Date: Tue, 13 Feb 2024 15:46:26 +0100
Message-Id: <20240213144626.341463-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Underscores should not be used in node names (dtc with W=2 warns about
them), so replace them with hyphens.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/mediatek/mt2712e.dtsi              |  2 +-
 arch/arm64/boot/dts/mediatek/mt6797.dtsi               |  8 ++++----
 .../dts/mediatek/mt7986a-bananapi-bpi-r3-nand.dtso     |  2 +-
 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts  |  2 +-
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi           |  2 +-
 arch/arm64/boot/dts/mediatek/mt8173.dtsi               | 10 +++++-----
 arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts        |  2 +-
 arch/arm64/boot/dts/mediatek/mt8183.dtsi               |  2 +-
 8 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
index ed1a9d319415..6d218caa198c 100644
--- a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
@@ -261,7 +261,7 @@ pericfg: syscon@10003000 {
 		#clock-cells = <1>;
 	};
 
-	syscfg_pctl_a: syscfg_pctl_a@10005000 {
+	syscfg_pctl_a: syscon@10005000 {
 		compatible = "mediatek,mt2712-pctl-a-syscfg", "syscon";
 		reg = <0 0x10005000 0 0x1000>;
 	};
diff --git a/arch/arm64/boot/dts/mediatek/mt6797.dtsi b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
index c3677d77e0a4..0e9d11b4585b 100644
--- a/arch/arm64/boot/dts/mediatek/mt6797.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
@@ -117,7 +117,7 @@ topckgen: topckgen@10000000 {
 		#clock-cells = <1>;
 	};
 
-	infrasys: infracfg_ao@10001000 {
+	infrasys: syscon@10001000 {
 		compatible = "mediatek,mt6797-infracfg", "syscon";
 		reg = <0 0x10001000 0 0x1000>;
 		#clock-cells = <1>;
@@ -452,19 +452,19 @@ mmsys: syscon@14000000 {
 		#clock-cells = <1>;
 	};
 
-	imgsys: imgsys_config@15000000  {
+	imgsys: syscon@15000000  {
 		compatible = "mediatek,mt6797-imgsys", "syscon";
 		reg = <0 0x15000000 0 0x1000>;
 		#clock-cells = <1>;
 	};
 
-	vdecsys: vdec_gcon@16000000 {
+	vdecsys: syscon@16000000 {
 		compatible = "mediatek,mt6797-vdecsys", "syscon";
 		reg = <0 0x16000000 0 0x10000>;
 		#clock-cells = <1>;
 	};
 
-	vencsys: venc_gcon@17000000 {
+	vencsys: syscon@17000000 {
 		compatible = "mediatek,mt6797-vencsys", "syscon";
 		reg = <0 0x17000000 0 0x1000>;
 		#clock-cells = <1>;
diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nand.dtso b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nand.dtso
index 543c13385d6e..7b97c5c91bd0 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nand.dtso
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nand.dtso
@@ -15,7 +15,7 @@ fragment@0 {
 		__overlay__ {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			spi_nand: spi_nand@0 {
+			spi_nand: flash@0 {
 				compatible = "spi-nand";
 				reg = <0>;
 				spi-max-frequency = <10000000>;
diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
index 256f245ac01d..1c9fc791bdfc 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
@@ -14,7 +14,7 @@ / {
 
 &cpu_thermal {
 	trips {
-		cpu_crit: cpu_crit0 {
+		cpu_crit: cpu-crit0 {
 			temperature = <100000>;
 			type = "critical";
 		};
diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index 335aed42dc9e..6d962d437e02 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -1135,7 +1135,7 @@ rtc: mt6397rtc {
 			compatible = "mediatek,mt6397-rtc";
 		};
 
-		syscfg_pctl_pmic: syscfg_pctl_pmic@c000 {
+		syscfg_pctl_pmic: syscon@c000 {
 			compatible = "mediatek,mt6397-pctl-pmic-syscfg",
 				     "syscon";
 			reg = <0 0x0000c000 0 0x0108>;
diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index fe572a2f8f79..3458be7f7f61 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -222,14 +222,14 @@ CPU_SLEEP_0: cpu-sleep-0 {
 		};
 	};
 
-	pmu_a53 {
+	pmu-a53 {
 		compatible = "arm,cortex-a53-pmu";
 		interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_LOW>,
 			     <GIC_SPI 9 IRQ_TYPE_LEVEL_LOW>;
 		interrupt-affinity = <&cpu0>, <&cpu1>;
 	};
 
-	pmu_a72 {
+	pmu-a72 {
 		compatible = "arm,cortex-a72-pmu";
 		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_LOW>,
 			     <GIC_SPI 13 IRQ_TYPE_LEVEL_LOW>;
@@ -286,7 +286,7 @@ target: trip-point1 {
 					type = "passive";
 				};
 
-				cpu_crit: cpu_crit0 {
+				cpu_crit: cpu-crit0 {
 					temperature = <115000>;
 					hysteresis = <2000>;
 					type = "critical";
@@ -318,7 +318,7 @@ reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
 		ranges;
-		vpu_dma_reserved: vpu_dma_mem_region@b7000000 {
+		vpu_dma_reserved: vpu-dma-mem@b7000000 {
 			compatible = "shared-dma-pool";
 			reg = <0 0xb7000000 0 0x500000>;
 			alignment = <0x1000>;
@@ -366,7 +366,7 @@ pericfg: power-controller@10003000 {
 			#reset-cells = <1>;
 		};
 
-		syscfg_pctl_a: syscfg_pctl_a@10005000 {
+		syscfg_pctl_a: syscon@10005000 {
 			compatible = "mediatek,mt8173-pctl-a-syscfg", "syscon";
 			reg = <0 0x10005000 0 0x1000>;
 		};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
index 76449b4cf236..333c516af490 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
@@ -33,7 +33,7 @@ reserved-memory {
 		#size-cells = <2>;
 		ranges;
 
-		scp_mem_reserved: scp_mem_region@50000000 {
+		scp_mem_reserved: scp-mem@50000000 {
 			compatible = "shared-dma-pool";
 			reg = <0 0x50000000 0 0x2900000>;
 			no-map;
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index cdc8d86cb432..93dfbf130231 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1964,7 +1964,7 @@ larb4: larb@17010000 {
 			power-domains = <&spm MT8183_POWER_DOMAIN_VENC>;
 		};
 
-		venc_jpg: venc_jpg@17030000 {
+		venc_jpg: jpeg-encoder@17030000 {
 			compatible = "mediatek,mt8183-jpgenc", "mediatek,mtk-jpgenc";
 			reg = <0 0x17030000 0 0x1000>;
 			interrupts = <GIC_SPI 249 IRQ_TYPE_LEVEL_LOW>;
-- 
2.34.1


