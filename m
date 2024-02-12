Return-Path: <devicetree+bounces-40692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7480D851362
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 13:17:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE7571F21650
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 12:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B882E39AE6;
	Mon, 12 Feb 2024 12:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ncAPfn1J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB07139AE1
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 12:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707740219; cv=none; b=X5yYKC4R4x031RupeR1+jxHQ/iQt/L6J8BXjeu4otnqVI85MFPQ7g8Ge8yRgxGIeuTZUdB56SvrbVQIjZt4siQscJdPDh0JKsJ2mlQeSb8aZaeRY0LkiMJlafRGOWbpM4lSj3pIIa8tSRR1QJmwMmUHc1PIEmWQ9NA5wcyIi8n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707740219; c=relaxed/simple;
	bh=fIchodPFNNuRrH0bWljQWJ4wETT12zq/0OaHMiiCu6c=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=ppy22ZiPaEY8MapR4v7JED9CMKOTJbNo23094bYnZynlE8ocncETze3N0tJfFwyiUH0VsCy7qOOXl4nCWt3yhxi6NtBQa8H3QkSAYYZSJqYKoiZX657JCvA7uD91nDkYwpBVIXNkospXXqOevmcbfSpa7L2pWT3RUZmNpKDx1bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ncAPfn1J; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a28a6cef709so415696266b.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 04:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707740216; x=1708345016; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2IaPhTAEYUwdytg2N6Sa0MXZmbVZReaezPPENwmQqlE=;
        b=ncAPfn1JSXNjhogn7RIx1Ca7pBub8IZRLw+kgeYQX62aIP4OrjBYncr6yyy9PYAvQT
         XBtpwqNGeGX7UC7Hs1n/Obt18/C0Ubw89ybvenTzQgqy7AsKFWAI1AdY2PTDujraFHpe
         SQyh1ZrY7Ph+TJXjCX2whhJ5IcLpFKcgb/2k5uuMI5vc9rT1M/zv6Hg5vTISKbbvnyJ3
         EBX8Ux4Ph4t6TqrGvssZVT0vWZHE99PJXJ9Na85xffmNcV6cz7f6vDKiA7gEnJcoCYv4
         nG7ve5tXa4+fNbBa+VsuItHgtlAk/EZQYwrupYZmxjvl1FVbp/Z7CScNk6Nfah0dIjPB
         KxSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707740216; x=1708345016;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2IaPhTAEYUwdytg2N6Sa0MXZmbVZReaezPPENwmQqlE=;
        b=cJL+F4y0WZjaHNpKuTRVY8x7Lh20tf0qoKrSQj7SRX/pPr2l5Ijsekg6unljmqXphc
         AOC0zoPDbGpdCECu43I6tJsXT/niidhOfInFfJQJ6HLwrixuMI/ygrmpLcWlczUDhwiZ
         34bpeTW7f6TEzM/xqjnbdljmg624K2I1NaPaYiLqRjS+lMu2wJ01wpVl4q5K7O4ea1ii
         LtTv+Q+yRKwpY2rJzNbQW/9BRTzyOr41M/yB1s72l2amNcbhfZX/a9ayw8KBZmCTaalq
         eqEyT4+W3lGDiG01q/ZVNN3ZzwEMKaZDEvVur2LaqH0jt6xS3QkgLg60QLgGiDA44LRO
         zibA==
X-Forwarded-Encrypted: i=1; AJvYcCUG8cs4c8LRfq/UHKfh+iBigks3MpkIaQLI5lqsScXoPvIRNsz0XCCsUNDSE8QQAoAn3E3qakRFzeX/P52ZLflV28Bp3AiasHvjZA==
X-Gm-Message-State: AOJu0YxhenFN7YaSh4HZHahp0cqnXCwfensK3tur3bgOkkbBCmNdh6oo
	5riuAhiqbKri8Fb0VcFMGeqiqIvIp4zLrswksJ+FqbXfBXdWtTL/
X-Google-Smtp-Source: AGHT+IFTYempM7Llg0ES1sfr764RUYvl6IJ/3B9RjZklli4cu2kA60IZeQFuOhSpINiVoL+uXeU7LA==
X-Received: by 2002:a17:906:a3c5:b0:a3c:c980:5936 with SMTP id ca5-20020a170906a3c500b00a3cc9805936mr983262ejb.24.1707740215771;
        Mon, 12 Feb 2024 04:16:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVOmnULA95O1M00mJG4OJhDdKkHROKCiWco/KyAfP1fR5XQuGe6aAIJBcZiKKbvIbgKBQ2xasPQuJXnXXgS0vQPHPKDEUyc2GdOLvynRPzPuSR09LSz7zrmu7AANX6seN6s58J08AmGX/QTixOkrdquNqZ8SGEFZw1/stE+D8vG7zPRaXfpzZ9gMVPaK2g1P+ZhO99Viq1Q9Ci/VuESvNEQlliTfktF8phE9wCLve5X76n2gafNA46+TDsfoao4YNz9WqNfcsOUOIxaH5NFpnCYtRFfaA64YSF34s+Lkc1mzZtZ2+PXktnEpHr2yljiaWerQ181CxQhwhqW11VcJe2PSVG0MmAeWg==
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id lu1-20020a170906fac100b00a3c97e49bc9sm147850ejb.218.2024.02.12.04.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 04:16:55 -0800 (PST)
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
Subject: [PATCH REBASED 1/2] arm64: dts: mediatek: mt7986: reorder properties
Date: Mon, 12 Feb 2024 13:16:19 +0100
Message-Id: <20240212121620.15035-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Use order described as preferred in DTS Coding Style. Mostly just move
"compatible", "reg" and "ranges" properties. In two nodes also move
vendor-prefixed props down.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/mediatek/mt7986a.dtsi | 67 ++++++++++++-----------
 1 file changed, 34 insertions(+), 33 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
index d974739eae1c..eba5e27a1bbe 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
@@ -27,34 +27,34 @@ cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
 		cpu0: cpu@0 {
-			device_type = "cpu";
 			compatible = "arm,cortex-a53";
-			enable-method = "psci";
 			reg = <0x0>;
+			device_type = "cpu";
+			enable-method = "psci";
 			#cooling-cells = <2>;
 		};
 
 		cpu1: cpu@1 {
-			device_type = "cpu";
 			compatible = "arm,cortex-a53";
-			enable-method = "psci";
 			reg = <0x1>;
+			device_type = "cpu";
+			enable-method = "psci";
 			#cooling-cells = <2>;
 		};
 
 		cpu2: cpu@2 {
-			device_type = "cpu";
 			compatible = "arm,cortex-a53";
-			enable-method = "psci";
 			reg = <0x2>;
+			device_type = "cpu";
+			enable-method = "psci";
 			#cooling-cells = <2>;
 		};
 
 		cpu3: cpu@3 {
-			device_type = "cpu";
-			enable-method = "psci";
 			compatible = "arm,cortex-a53";
 			reg = <0x3>;
+			device_type = "cpu";
+			enable-method = "psci";
 			#cooling-cells = <2>;
 		};
 	};
@@ -131,22 +131,22 @@ timer {
 	};
 
 	soc {
-		#address-cells = <2>;
-		#size-cells = <2>;
 		compatible = "simple-bus";
 		ranges;
+		#address-cells = <2>;
+		#size-cells = <2>;
 
 		gic: interrupt-controller@c000000 {
 			compatible = "arm,gic-v3";
-			#interrupt-cells = <3>;
-			interrupt-parent = <&gic>;
-			interrupt-controller;
 			reg = <0 0x0c000000 0 0x10000>,  /* GICD */
 			      <0 0x0c080000 0 0x80000>,  /* GICR */
 			      <0 0x0c400000 0 0x2000>,   /* GICC */
 			      <0 0x0c410000 0 0x1000>,   /* GICH */
 			      <0 0x0c420000 0 0x2000>;   /* GICV */
+			interrupt-parent = <&gic>;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
 		};
 
 		infracfg: infracfg@10001000 {
@@ -310,9 +310,9 @@ i2c0: i2c@11008000 {
 
 		spi0: spi@1100a000 {
 			compatible = "mediatek,mt7986-spi-ipm", "mediatek,spi-ipm";
+			reg = <0 0x1100a000 0 0x100>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-			reg = <0 0x1100a000 0 0x100>;
 			interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&topckgen CLK_TOP_MPLL_D2>,
 				 <&topckgen CLK_TOP_SPI_SEL>,
@@ -324,9 +324,9 @@ spi0: spi@1100a000 {
 
 		spi1: spi@1100b000 {
 			compatible = "mediatek,mt7986-spi-ipm", "mediatek,spi-ipm";
+			reg = <0 0x1100b000 0 0x100>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-			reg = <0 0x1100b000 0 0x100>;
 			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&topckgen CLK_TOP_MPLL_D2>,
 				 <&topckgen CLK_TOP_SPIM_MST_SEL>,
@@ -388,7 +388,6 @@ mmc0: mmc@11230000 {
 		};
 
 		thermal: thermal@1100c800 {
-			#thermal-sensor-cells = <1>;
 			compatible = "mediatek,mt7986-thermal";
 			reg = <0 0x1100c800 0 0x800>;
 			interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
@@ -396,30 +395,30 @@ thermal: thermal@1100c800 {
 				 <&infracfg CLK_INFRA_ADC_26M_CK>,
 				 <&infracfg CLK_INFRA_ADC_FRC_CK>;
 			clock-names = "therm", "auxadc", "adc_32k";
-			mediatek,auxadc = <&auxadc>;
-			mediatek,apmixedsys = <&apmixedsys>;
 			nvmem-cells = <&thermal_calibration>;
 			nvmem-cell-names = "calibration-data";
+			#thermal-sensor-cells = <1>;
+			mediatek,auxadc = <&auxadc>;
+			mediatek,apmixedsys = <&apmixedsys>;
 		};
 
 		pcie: pcie@11280000 {
 			compatible = "mediatek,mt7986-pcie",
 				     "mediatek,mt8192-pcie";
+			reg = <0x00 0x11280000 0x00 0x4000>;
+			reg-names = "pcie-mac";
+			ranges = <0x82000000 0x00 0x20000000 0x00
+				  0x20000000 0x00 0x10000000>;
 			device_type = "pci";
 			#address-cells = <3>;
 			#size-cells = <2>;
-			reg = <0x00 0x11280000 0x00 0x4000>;
-			reg-names = "pcie-mac";
 			interrupts = <GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>;
 			bus-range = <0x00 0xff>;
-			ranges = <0x82000000 0x00 0x20000000 0x00
-				  0x20000000 0x00 0x10000000>;
 			clocks = <&infracfg CLK_INFRA_IPCIE_PIPE_CK>,
 				 <&infracfg CLK_INFRA_IPCIE_CK>,
 				 <&infracfg CLK_INFRA_IPCIER_CK>,
 				 <&infracfg CLK_INFRA_IPCIEB_CK>;
 			clock-names = "pl_250m", "tl_26m", "peri_26m", "top_133m";
-			status = "disabled";
 
 			phys = <&pcie_port PHY_TYPE_PCIE>;
 			phy-names = "pcie-phy";
@@ -430,6 +429,8 @@ pcie: pcie@11280000 {
 					<0 0 0 2 &pcie_intc 1>,
 					<0 0 0 3 &pcie_intc 2>,
 					<0 0 0 4 &pcie_intc 3>;
+			status = "disabled";
+
 			pcie_intc: interrupt-controller {
 				#address-cells = <0>;
 				#interrupt-cells = <1>;
@@ -440,9 +441,9 @@ pcie_intc: interrupt-controller {
 		pcie_phy: t-phy {
 			compatible = "mediatek,mt7986-tphy",
 				     "mediatek,generic-tphy-v2";
+			ranges;
 			#address-cells = <2>;
 			#size-cells = <2>;
-			ranges;
 			status = "disabled";
 
 			pcie_port: pcie-phy@11c00000 {
@@ -467,9 +468,9 @@ thermal_calibration: calib@274 {
 		usb_phy: t-phy@11e10000 {
 			compatible = "mediatek,mt7986-tphy",
 				     "mediatek,generic-tphy-v2";
+			ranges = <0 0 0x11e10000 0x1700>;
 			#address-cells = <1>;
 			#size-cells = <1>;
-			ranges = <0 0 0x11e10000 0x1700>;
 			status = "disabled";
 
 			u2port0: usb-phy@0 {
@@ -497,11 +498,11 @@ u2port1: usb-phy@1000 {
 		};
 
 		ethsys: syscon@15000000 {
-			 #address-cells = <1>;
-			 #size-cells = <1>;
 			 compatible = "mediatek,mt7986-ethsys",
 				      "syscon";
 			 reg = <0 0x15000000 0 0x1000>;
+			 #address-cells = <1>;
+			 #size-cells = <1>;
 			 #clock-cells = <1>;
 			 #reset-cells = <1>;
 		};
@@ -578,26 +579,26 @@ eth: ethernet@15100000 {
 					  <&topckgen CLK_TOP_SGM_325M_SEL>;
 			assigned-clock-parents = <&apmixedsys CLK_APMIXED_NET2PLL>,
 						 <&apmixedsys CLK_APMIXED_SGMPLL>;
+			#reset-cells = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			mediatek,ethsys = <&ethsys>;
 			mediatek,sgmiisys = <&sgmiisys0>, <&sgmiisys1>;
 			mediatek,wed-pcie = <&wed_pcie>;
 			mediatek,wed = <&wed0>, <&wed1>;
-			#reset-cells = <1>;
-			#address-cells = <1>;
-			#size-cells = <0>;
 			status = "disabled";
 		};
 
 		wifi: wifi@18000000 {
 			compatible = "mediatek,mt7986-wmac";
+			reg = <0 0x18000000 0 0x1000000>,
+			      <0 0x10003000 0 0x1000>,
+			      <0 0x11d10000 0 0x1000>;
 			resets = <&watchdog MT7986_TOPRGU_CONSYS_SW_RST>;
 			reset-names = "consys";
 			clocks = <&topckgen CLK_TOP_CONN_MCUSYS_SEL>,
 				 <&topckgen CLK_TOP_AP2CNN_HOST_SEL>;
 			clock-names = "mcu", "ap2conn";
-			reg = <0 0x18000000 0 0x1000000>,
-			      <0 0x10003000 0 0x1000>,
-			      <0 0x11d10000 0 0x1000>;
 			interrupts = <GIC_SPI 213 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 214 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 215 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.35.3


