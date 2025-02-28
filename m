Return-Path: <devicetree+bounces-152501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB80A493C6
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 09:40:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32B263AAAF5
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 08:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D08D253B7E;
	Fri, 28 Feb 2025 08:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WFIrQi++"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6F1250C0F
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 08:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740732035; cv=none; b=SgdZ9RRWPuO4hmpFWvXQEUiBPeDY21JIA15WuEj8G3a4nZGXP26aLSC+pHuFPul0ao+N//qRCKMDF2DPpKHrsMI0zb8l2/XVBKk+eFspATM49aiz7iZngskOfRZY6S4bydGz8hAAYhHWW1g2hUcjmqNYSUAVocmLhtmV6nZ7+FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740732035; c=relaxed/simple;
	bh=5J7wd85IP7pm+/buidIyd1GnrlW0Ab/Z6v7lbjPXFP0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nF6A1ML08Hi5JdXyvta5WtF2pJXQ/WlNItZwBr8WxxHtp8/Iygj7yl7VNmQ4GRWSZEQa1AnLFKVgaSx+QOfWeFq13R+ta1ONmy1iOnmKjZuxsAbCIhiaFJ5McitB6X97oZs3y4trik1anYgSs15WW6MlLOm1cjRw/RimjI/EFWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WFIrQi++; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-439a331d981so16944745e9.3
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 00:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740732030; x=1741336830; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9amc8KE3JG4XF4ij8RmABDhXLHAiGTEVaNDKN3GBowU=;
        b=WFIrQi++Sli0P331uYSRWUp7UOhWBrXoXgRVERXa7LK85zctoSS2teSqXJSrmDdnPr
         Xov6Sp6nPaglVz0FxuYi6AlL/9/w19+pl/ezCYDKGBSh7Ze5ttPstIkZzL0n/GUW9Yip
         GcbjcmE7P2qwVYm40rtVJTOD4otFaUZvDOrYFi1Nzbw9kTX/Kl0lDo1Kb07mpsmM2nJV
         taEqkSy9twGP5GYDf0e3ns7sxTn+Tue5J2XOMCCLy3Rw4ItHU//j2NcnMtEAojOS7dNL
         J1PyiQrLRfg69rpzmH/Rk9sZIvwtpm9zyeGZXIbwprF3lAPTKaHFveqZNHwJif7EcRj2
         ON2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740732030; x=1741336830;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9amc8KE3JG4XF4ij8RmABDhXLHAiGTEVaNDKN3GBowU=;
        b=BZOjZScHg8b+xewXHZX+BDYgcaNm1i1jGm/hj3IiAO10NgBCS6lo+ZHcSE00p+YB49
         yz3hKff5e6Vgpdw9G2gX4B4pvMnYUYwbYnQeE8He+xNTxHxYcCGvrnCn21PztmiWLAzk
         ZTtXAf7XnU/ukh5LODYa2koCTxpyx4qQPSrXtXdbBuZMKKIahgvRlEYPq2CcmktvNNB/
         rdGGICLGuGh7uCRxN8kPIWqBTCIgmRV90El8rq3HGnrNevhGOeXc0SKCNQNz7Ohl5OOY
         HaOYBSoo/g+CCS4bohuA+TzocQXpOiNMv9EA2M1YwI5EbS7BGwg3IeSBMJROdvaQFe6J
         jwJA==
X-Forwarded-Encrypted: i=1; AJvYcCXP0PP5FmfIIGUIiiVul8Vp/DFxIu5SlaU/wuq4hLWbTb1CqbiOLbDIgb+aCqV9qAjZDsRFJIwSieh1@vger.kernel.org
X-Gm-Message-State: AOJu0YylLm32RmNua7vrDFLd8GTSl/GS0FbmMYIY28DMA/8HwgtVV64f
	vFHA/6OCsEdw118F0V/cvC5yiTpcY/rvx1pCgHb0woyTP+V5QQ4TEdZ7R8ZodUE=
X-Gm-Gg: ASbGncvWx/aLhuVprdyrEXQUPFicsSaM0feDNLPrHdkegPjwqbsJg50+3eJBeFqiNSz
	vOaae8I9+55av+Mhbb1b3MUIHN8FbZV6M4yxCLmEj3bEQBJAVWVLjHurQOtLZguju36Pf0tPT1l
	/ZeFNATl7OpRp8L7vIm1Fcs50cgndUCIVQSI5qeT8myDiqMSDjd1KpcSx0RzNaVDBk2QUE/Sbog
	x3HCat5NY+mhxMA9D6cOgilHPwonEEyvlmTBoYBA60l1a1VWzralefmTMyLdzdOE8YPo/nMpPM1
	8TLT+zcQrNB+HOK09Sr4fRnucbY3NMURKhs/VP7MYky72Nw=
X-Google-Smtp-Source: AGHT+IGpY4UQYx9oHvErPYDFHelKhVcOaZI75RYWwe29dYR87RsfM/84Y5RkCUA9Gfq2to9w9XqZ3A==
X-Received: by 2002:a05:600c:4e8b:b0:43a:b8ef:4dce with SMTP id 5b1f17b1804b1-43ba67041bamr19860955e9.11.1740732030415;
        Fri, 28 Feb 2025 00:40:30 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43b7a27aa85sm48096605e9.28.2025.02.28.00.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 00:40:30 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 28 Feb 2025 09:40:25 +0100
Subject: [PATCH v4 1/2] arm64: dts: qcom: sm8650: switch to interrupt-cells
 4 to add PPI partitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250228-topic-sm8650-pmu-ppi-partition-v4-1-78cffd35c73d@linaro.org>
References: <20250228-topic-sm8650-pmu-ppi-partition-v4-0-78cffd35c73d@linaro.org>
In-Reply-To: <20250228-topic-sm8650-pmu-ppi-partition-v4-0-78cffd35c73d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=45466;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=5J7wd85IP7pm+/buidIyd1GnrlW0Ab/Z6v7lbjPXFP0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnwXZ8PvvhJM9jPJYS8Y3BR7RFxYZTJ16x1ceuim5K
 vQGxRj6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ8F2fAAKCRB33NvayMhJ0b0tEA
 CoRX/xm8gTZzC6WHxfkmU1VyZtOCCW46SD9+78JwjOxJkwBCM9rkbrf1/IalDLklBl/97ZVaY0G3qa
 ts5MTp5olazgSBrykTGHRc7YwYW9ez7P8Kqt5BaXzI8ipbo0hzpPwiKMxb81sDwCFzl2qNeToR5mMw
 8LAM9/DFXOWpBNKg8OIUfnYAEOLelN9iNjep1UUBuHy1e+n9dPGF+GhOeS9qEU8hiKjEUFjRmkh1ux
 ZtaEy14NYlCC8Ue56Yjhd+xbtUIjuL9SK3M4qGCiDa2mAHizc62kb1Kq0iVC8HiOeZ1e8S3BuJuSzp
 4bz4F4n4/B2y6C4Z8ctbq5aDM1UqU+roXR+cVYZ0aPibxDZa/MoV3M2fA3pmDRItwpkS7gGuzmVS9b
 bSeN6zLfIv9LKualsJk2vYqDr9VQM2NnhC2xQHKwvWBTvgZQXBP83694JZo1VTTSKvT6P5do4Xvt2y
 f12OY/dqc5opNWxBzHRY0Gj4FPianYHtPIclwPuSN5DoPdpOQaCVyQUfr6IknMEZK8vM64cwzBxjLb
 4kKt7px7jBBCFbE2Ri2E/uZK+y/QaE+Jy5To8v6SY7kDPscBoejJKApfW27/h2HIX2dyhLrGMRRbDq
 eOSHKfu8/mTRU/OYj3clzU2YsRcClZ3K++lq8/yb75Nqkjvx7NpllUOTVgvA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The ARM PMUs shares the same per-cpu (PPI) interrupt, so we need to switch
to interrupt-cells = <4> in the GIC node to allow adding an interrupt
partition map phandle as the 4th cell value for GIC_PPI interrupts.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 542 +++++++++++++++++------------------
 1 file changed, 271 insertions(+), 271 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index de960bcaf3ccf6e2be47bf63a02effbfb75241bf..982579d0af4684f07d5620e03d0cba20e58acd2e 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -1417,17 +1417,17 @@ opp-3302400000 {
 
 	pmu-a520 {
 		compatible = "arm,cortex-a520-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW 0>;
 	};
 
 	pmu-a720 {
 		compatible = "arm,cortex-a720-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW 0>;
 	};
 
 	pmu-x4 {
 		compatible = "arm,cortex-x4-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW 0>;
 	};
 
 	psci {
@@ -1805,7 +1805,7 @@ ipcc: mailbox@406000 {
 			compatible = "qcom,sm8650-ipcc", "qcom,ipcc";
 			reg = <0 0x00406000 0 0x1000>;
 
-			interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-controller;
 			#interrupt-cells = <3>;
 
@@ -1816,18 +1816,18 @@ gpi_dma2: dma-controller@800000 {
 			compatible = "qcom,sm8650-gpi-dma", "qcom,sm6350-gpi-dma";
 			reg = <0 0x00800000 0 0x60000>;
 
-			interrupts = <GIC_SPI 588 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 589 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 590 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 593 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 596 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 599 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 588 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 589 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 590 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 593 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 596 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 599 IRQ_TYPE_LEVEL_HIGH 0>;
 
 			dma-channels = <12>;
 			dma-channel-mask = <0x3f>;
@@ -1863,7 +1863,7 @@ i2c8: i2c@880000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00880000 0 0x4000>;
 
-				interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP2_S0_CLK>;
 				clock-names = "se";
@@ -1900,7 +1900,7 @@ spi8: spi@880000 {
 				compatible = "qcom,geni-spi";
 				reg = <0 0x00880000 0 0x4000>;
 
-				interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP2_S0_CLK>;
 				clock-names = "se";
@@ -1937,7 +1937,7 @@ i2c9: i2c@884000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00884000 0 0x4000>;
 
-				interrupts = <GIC_SPI 583 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 583 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP2_S1_CLK>;
 				clock-names = "se";
@@ -1974,7 +1974,7 @@ spi9: spi@884000 {
 				compatible = "qcom,geni-spi";
 				reg = <0 0x00884000 0 0x4000>;
 
-				interrupts = <GIC_SPI 583 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 583 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP2_S1_CLK>;
 				clock-names = "se";
@@ -2011,7 +2011,7 @@ i2c10: i2c@888000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00888000 0 0x4000>;
 
-				interrupts = <GIC_SPI 584 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 584 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP2_S2_CLK>;
 				clock-names = "se";
@@ -2048,7 +2048,7 @@ spi10: spi@888000 {
 				compatible = "qcom,geni-spi";
 				reg = <0 0x00888000 0 0x4000>;
 
-				interrupts = <GIC_SPI 584 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 584 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP2_S2_CLK>;
 				clock-names = "se";
@@ -2085,7 +2085,7 @@ i2c11: i2c@88c000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x0088c000 0 0x4000>;
 
-				interrupts = <GIC_SPI 585 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 585 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP2_S3_CLK>;
 				clock-names = "se";
@@ -2122,7 +2122,7 @@ spi11: spi@88c000 {
 				compatible = "qcom,geni-spi";
 				reg = <0 0x0088c000 0 0x4000>;
 
-				interrupts = <GIC_SPI 585 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 585 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP2_S3_CLK>;
 				clock-names = "se";
@@ -2159,7 +2159,7 @@ i2c12: i2c@890000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00890000 0 0x4000>;
 
-				interrupts = <GIC_SPI 586 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 586 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP2_S4_CLK>;
 				clock-names = "se";
@@ -2196,7 +2196,7 @@ spi12: spi@890000 {
 				compatible = "qcom,geni-spi";
 				reg = <0 0x00890000 0 0x4000>;
 
-				interrupts = <GIC_SPI 586 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 586 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP2_S4_CLK>;
 				clock-names = "se";
@@ -2233,7 +2233,7 @@ i2c13: i2c@894000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00894000 0 0x4000>;
 
-				interrupts = <GIC_SPI 587 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 587 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP2_S5_CLK>;
 				clock-names = "se";
@@ -2270,7 +2270,7 @@ spi13: spi@894000 {
 				compatible = "qcom,geni-spi";
 				reg = <0 0x00894000 0 0x4000>;
 
-				interrupts = <GIC_SPI 587 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 587 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP2_S5_CLK>;
 				clock-names = "se";
@@ -2307,7 +2307,7 @@ uart14: serial@898000 {
 				compatible = "qcom,geni-uart";
 				reg = <0 0x00898000 0 0x4000>;
 
-				interrupts = <GIC_SPI 461 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 461 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP2_S6_CLK>;
 				clock-names = "se";
@@ -2333,7 +2333,7 @@ uart15: serial@89c000 {
 				compatible = "qcom,geni-debug-uart";
 				reg = <0 0x0089c000 0 0x4000>;
 
-				interrupts = <GIC_SPI 462 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 462 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP2_S7_CLK>;
 				clock-names = "se";
@@ -2373,7 +2373,7 @@ i2c_hub_0: i2c@980000 {
 				compatible = "qcom,geni-i2c-master-hub";
 				reg = <0 0x00980000 0 0x4000>;
 
-				interrupts = <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_I2C_S0_CLK>,
 					 <&gcc GCC_QUPV3_I2C_CORE_CLK>;
@@ -2404,7 +2404,7 @@ i2c_hub_1: i2c@984000 {
 				compatible = "qcom,geni-i2c-master-hub";
 				reg = <0 0x00984000 0 0x4000>;
 
-				interrupts = <GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_I2C_S1_CLK>,
 					 <&gcc GCC_QUPV3_I2C_CORE_CLK>;
@@ -2435,7 +2435,7 @@ i2c_hub_2: i2c@988000 {
 				compatible = "qcom,geni-i2c-master-hub";
 				reg = <0 0x00988000 0 0x4000>;
 
-				interrupts = <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_I2C_S2_CLK>,
 					 <&gcc GCC_QUPV3_I2C_CORE_CLK>;
@@ -2466,7 +2466,7 @@ i2c_hub_3: i2c@98c000 {
 				compatible = "qcom,geni-i2c-master-hub";
 				reg = <0 0x0098c000 0 0x4000>;
 
-				interrupts = <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_I2C_S3_CLK>,
 					 <&gcc GCC_QUPV3_I2C_CORE_CLK>;
@@ -2497,7 +2497,7 @@ i2c_hub_4: i2c@990000 {
 				compatible = "qcom,geni-i2c-master-hub";
 				reg = <0 0x00990000 0 0x4000>;
 
-				interrupts = <GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_I2C_S4_CLK>,
 					 <&gcc GCC_QUPV3_I2C_CORE_CLK>;
@@ -2528,7 +2528,7 @@ i2c_hub_5: i2c@994000 {
 				compatible = "qcom,geni-i2c-master-hub";
 				reg = <0 0x00994000 0 0x4000>;
 
-				interrupts = <GIC_SPI 469 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 469 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_I2C_S5_CLK>,
 					 <&gcc GCC_QUPV3_I2C_CORE_CLK>;
@@ -2559,7 +2559,7 @@ i2c_hub_6: i2c@998000 {
 				compatible = "qcom,geni-i2c-master-hub";
 				reg = <0 0x00998000 0 0x4000>;
 
-				interrupts = <GIC_SPI 470 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 470 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_I2C_S6_CLK>,
 					 <&gcc GCC_QUPV3_I2C_CORE_CLK>;
@@ -2590,7 +2590,7 @@ i2c_hub_7: i2c@99c000 {
 				compatible = "qcom,geni-i2c-master-hub";
 				reg = <0 0x0099c000 0 0x4000>;
 
-				interrupts = <GIC_SPI 471 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 471 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_I2C_S7_CLK>,
 					 <&gcc GCC_QUPV3_I2C_CORE_CLK>;
@@ -2621,7 +2621,7 @@ i2c_hub_8: i2c@9a0000 {
 				compatible = "qcom,geni-i2c-master-hub";
 				reg = <0 0x009a0000 0 0x4000>;
 
-				interrupts = <GIC_SPI 472 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 472 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_I2C_S8_CLK>,
 					 <&gcc GCC_QUPV3_I2C_CORE_CLK>;
@@ -2652,7 +2652,7 @@ i2c_hub_9: i2c@9a4000 {
 				compatible = "qcom,geni-i2c-master-hub";
 				reg = <0 0x009a4000 0 0x4000>;
 
-				interrupts = <GIC_SPI 473 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 473 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_I2C_S9_CLK>,
 					 <&gcc GCC_QUPV3_I2C_CORE_CLK>;
@@ -2684,18 +2684,18 @@ gpi_dma1: dma-controller@a00000 {
 			compatible = "qcom,sm8650-gpi-dma", "qcom,sm6350-gpi-dma";
 			reg = <0 0x00a00000 0 0x60000>;
 
-			interrupts = <GIC_SPI 279 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 280 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 284 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 293 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 294 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 295 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 296 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 297 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 298 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 279 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 280 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 284 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 293 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 294 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 295 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 296 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 297 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 298 IRQ_TYPE_LEVEL_HIGH 0>;
 
 			dma-channels = <12>;
 			dma-channel-mask = <0xc>;
@@ -2734,7 +2734,7 @@ i2c0: i2c@a80000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00a80000 0 0x4000>;
 
-				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S0_CLK>;
 				clock-names = "se";
@@ -2771,7 +2771,7 @@ spi0: spi@a80000 {
 				compatible = "qcom,geni-spi";
 				reg = <0 0x00a80000 0 0x4000>;
 
-				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S0_CLK>;
 				clock-names = "se";
@@ -2808,7 +2808,7 @@ i2c1: i2c@a84000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00a84000 0 0x4000>;
 
-				interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S1_CLK>;
 				clock-names = "se";
@@ -2845,7 +2845,7 @@ spi1: spi@a84000 {
 				compatible = "qcom,geni-spi";
 				reg = <0 0x00a84000 0 0x4000>;
 
-				interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S1_CLK>;
 				clock-names = "se";
@@ -2882,7 +2882,7 @@ i2c2: i2c@a88000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00a88000 0 0x4000>;
 
-				interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S2_CLK>;
 				clock-names = "se";
@@ -2919,7 +2919,7 @@ spi2: spi@a88000 {
 				compatible = "qcom,geni-spi";
 				reg = <0 0x00a88000 0 0x4000>;
 
-				interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S2_CLK>;
 				clock-names = "se";
@@ -2956,7 +2956,7 @@ i2c3: i2c@a8c000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00a8c000 0 0x4000>;
 
-				interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S3_CLK>;
 				clock-names = "se";
@@ -2993,7 +2993,7 @@ spi3: spi@a8c000 {
 				compatible = "qcom,geni-spi";
 				reg = <0 0x00a8c000 0 0x4000>;
 
-				interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S3_CLK>;
 				clock-names = "se";
@@ -3030,7 +3030,7 @@ i2c4: i2c@a90000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00a90000 0 0x4000>;
 
-				interrupts = <GIC_SPI 357 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 357 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S4_CLK>;
 				clock-names = "se";
@@ -3067,7 +3067,7 @@ spi4: spi@a90000 {
 				compatible = "qcom,geni-spi";
 				reg = <0 0x00a90000 0 0x4000>;
 
-				interrupts = <GIC_SPI 357 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 357 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S4_CLK>;
 				clock-names = "se";
@@ -3104,7 +3104,7 @@ i2c5: i2c@a94000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00a94000 0 0x4000>;
 
-				interrupts = <GIC_SPI 358 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 358 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S5_CLK>;
 				clock-names = "se";
@@ -3141,7 +3141,7 @@ spi5: spi@a94000 {
 				compatible = "qcom,geni-spi";
 				reg = <0 0x00a94000 0 0x4000>;
 
-				interrupts = <GIC_SPI 358 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 358 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S5_CLK>;
 				clock-names = "se";
@@ -3178,7 +3178,7 @@ i2c6: i2c@a98000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00a98000 0 0x4000>;
 
-				interrupts = <GIC_SPI 363 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 363 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S6_CLK>;
 				clock-names = "se";
@@ -3215,7 +3215,7 @@ spi6: spi@a98000 {
 				compatible = "qcom,geni-spi";
 				reg = <0 0x00a98000 0 0x4000>;
 
-				interrupts = <GIC_SPI 363 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 363 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S6_CLK>;
 				clock-names = "se";
@@ -3252,7 +3252,7 @@ i2c7: i2c@a9c000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00a9c000 0 0x4000>;
 
-				interrupts = <GIC_SPI 579 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 579 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S7_CLK>;
 				clock-names = "se";
@@ -3289,7 +3289,7 @@ spi7: spi@a9c000 {
 				compatible = "qcom,geni-spi";
 				reg = <0 0x00a9c000 0 0x4000>;
 
-				interrupts = <GIC_SPI 579 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 579 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				clocks = <&gcc GCC_QUPV3_WRAP1_S7_CLK>;
 				clock-names = "se";
@@ -3409,15 +3409,15 @@ pcie0: pcie@1c00000 {
 			      <0 0x60100000 0 0x100000>;
 			reg-names = "parf", "dbi", "elbi", "atu", "config";
 
-			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-names = "msi0",
 					  "msi1",
 					  "msi2",
@@ -3462,10 +3462,10 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			iommu-map = <0     &apps_smmu 0x1400 0x1>,
 				    <0x100 &apps_smmu 0x1401 0x1>;
 
-			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH 0>,
+					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH 0>,
+					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH 0>,
+					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-map-mask = <0 0 0 0x7>;
 			#interrupt-cells = <1>;
 
@@ -3584,15 +3584,15 @@ pcie1: pcie@1c08000 {
 				    "atu",
 				    "config";
 
-			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 312 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 313 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 312 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 313 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-names = "msi0",
 					  "msi1",
 					  "msi2",
@@ -3642,10 +3642,10 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			iommu-map = <0     &apps_smmu 0x1480 0x1>,
 				    <0x100 &apps_smmu 0x1481 0x1>;
 
-			interrupt-map = <0 0 0 1 &intc 0 0 0 434 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 2 &intc 0 0 0 435 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 3 &intc 0 0 0 438 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 4 &intc 0 0 0 439 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map = <0 0 0 1 &intc 0 0 0 434 IRQ_TYPE_LEVEL_HIGH 0>,
+					<0 0 0 2 &intc 0 0 0 435 IRQ_TYPE_LEVEL_HIGH 0>,
+					<0 0 0 3 &intc 0 0 0 438 IRQ_TYPE_LEVEL_HIGH 0>,
+					<0 0 0 4 &intc 0 0 0 439 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-map-mask = <0 0 0 0x7>;
 			#interrupt-cells = <1>;
 
@@ -3763,7 +3763,7 @@ cryptobam: dma-controller@1dc4000 {
 			compatible = "qcom,bam-v1.7.0";
 			reg = <0 0x01dc4000 0 0x28000>;
 
-			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH 0>;
 
 			#dma-cells = <1>;
 
@@ -3815,7 +3815,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			compatible = "qcom,sm8650-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
 			reg = <0 0x01d84000 0 0x3000>;
 
-			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH 0>;
 
 			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
 				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
@@ -3936,7 +3936,7 @@ gpu: gpu@3d00000 {
 				    "cx_mem",
 				    "cx_dbgc";
 
-			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH 0>;
 
 			iommus = <&adreno_smmu 0 0x0>,
 				 <&adreno_smmu 1 0x0>;
@@ -4035,8 +4035,8 @@ gmu: gmu@3d6a000 {
 			      <0x0 0x0b280000 0x0 0x10000>;
 			reg-names = "gmu", "rscc", "gmu_pdc";
 
-			interrupts = <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-names = "hfi", "gmu";
 
 			clocks = <&gpucc GPU_CC_AHB_CLK>,
@@ -4099,32 +4099,32 @@ adreno_smmu: iommu@3da0000 {
 			reg = <0x0 0x03da0000 0x0 0x40000>;
 			#iommu-cells = <2>;
 			#global-interrupts = <1>;
-			interrupts = <GIC_SPI 673 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 677 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 678 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 679 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 680 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 681 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 682 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 683 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 684 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 685 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 686 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 687 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 476 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 574 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 575 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 576 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 577 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 659 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 661 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 664 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 665 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 666 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 668 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 669 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 699 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 673 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 677 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 678 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 679 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 680 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 681 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 682 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 683 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 684 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 685 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 686 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 687 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 476 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 574 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 575 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 576 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 577 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 659 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 661 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 664 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 665 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 666 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 668 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 669 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 699 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>,
 				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
 				 <&gcc GCC_GPU_SNOC_DVM_GFX_CLK>,
@@ -4149,8 +4149,8 @@ ipa: ipa@3f40000 {
 				    "ipa-shared",
 				    "gsi";
 
-			interrupts-extended = <&intc GIC_SPI 654 IRQ_TYPE_EDGE_RISING>,
-					      <&intc GIC_SPI 432 IRQ_TYPE_LEVEL_HIGH>,
+			interrupts-extended = <&intc GIC_SPI 654 IRQ_TYPE_EDGE_RISING 0>,
+					      <&intc GIC_SPI 432 IRQ_TYPE_LEVEL_HIGH 0>,
 					      <&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
 					      <&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "ipa",
@@ -4182,7 +4182,7 @@ remoteproc_mpss: remoteproc@4080000 {
 			compatible = "qcom,sm8650-mpss-pas";
 			reg = <0x0 0x04080000 0x0 0x10000>;
 
-			interrupts-extended = <&intc GIC_SPI 264 IRQ_TYPE_EDGE_RISING>,
+			interrupts-extended = <&intc GIC_SPI 264 IRQ_TYPE_EDGE_RISING 0>,
 					      <&smp2p_modem_in 0 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_modem_in 1 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_modem_in 2 IRQ_TYPE_EDGE_RISING>,
@@ -4399,7 +4399,7 @@ lpass_wsa2macro: codec@6aa0000 {
 		swr3: soundwire@6ab0000 {
 			compatible = "qcom,soundwire-v2.0.0";
 			reg = <0 0x06ab0000 0 0x10000>;
-			interrupts = <GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&lpass_wsa2macro>;
 			clock-names = "iface";
 			label = "WSA2";
@@ -4446,7 +4446,7 @@ lpass_rxmacro: codec@6ac0000 {
 		swr1: soundwire@6ad0000 {
 			compatible = "qcom,soundwire-v2.0.0";
 			reg = <0 0x06ad0000 0 0x10000>;
-			interrupts = <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&lpass_rxmacro>;
 			clock-names = "iface";
 			label = "RX";
@@ -4510,7 +4510,7 @@ lpass_wsamacro: codec@6b00000 {
 		swr0: soundwire@6b10000 {
 			compatible = "qcom,soundwire-v2.0.0";
 			reg = <0 0x06b10000 0 0x10000>;
-			interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&lpass_wsamacro>;
 			clock-names = "iface";
 			label = "WSA";
@@ -4540,8 +4540,8 @@ swr0: soundwire@6b10000 {
 		swr2: soundwire@6d30000 {
 			compatible = "qcom,soundwire-v2.0.0";
 			reg = <0 0x06d30000 0 0x10000>;
-			interrupts = <GIC_SPI 496 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 520 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 496 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 520 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-names = "core", "wakeup";
 			clocks = <&lpass_txmacro>;
 			clock-names = "iface";
@@ -4732,8 +4732,8 @@ sdhc_2: mmc@8804000 {
 			compatible = "qcom,sm8650-sdhci", "qcom,sdhci-msm-v5";
 			reg = <0 0x08804000 0 0x1000>;
 
-			interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-names = "hc_irq",
 					  "pwr_irq";
 
@@ -4807,7 +4807,7 @@ videocc: clock-controller@aaf0000 {
 		cci0: cci@ac15000 {
 			compatible = "qcom,sm8650-cci", "qcom,msm8996-cci";
 			reg = <0 0x0ac15000 0 0x1000>;
-			interrupts = <GIC_SPI 426 IRQ_TYPE_EDGE_RISING>;
+			interrupts = <GIC_SPI 426 IRQ_TYPE_EDGE_RISING 0>;
 			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
 			clocks = <&camcc CAM_CC_CAMNOC_AXI_NRT_CLK>,
 				 <&camcc CAM_CC_CPAS_AHB_CLK>,
@@ -4840,7 +4840,7 @@ cci0_i2c1: i2c-bus@1 {
 		cci1: cci@ac16000 {
 			compatible = "qcom,sm8650-cci", "qcom,msm8996-cci";
 			reg = <0 0x0ac16000 0 0x1000>;
-			interrupts = <GIC_SPI 427 IRQ_TYPE_EDGE_RISING>;
+			interrupts = <GIC_SPI 427 IRQ_TYPE_EDGE_RISING 0>;
 			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
 			clocks = <&camcc CAM_CC_CAMNOC_AXI_NRT_CLK>,
 				 <&camcc CAM_CC_CPAS_AHB_CLK>,
@@ -4873,7 +4873,7 @@ cci1_i2c1: i2c-bus@1 {
 		cci2: cci@ac17000 {
 			compatible = "qcom,sm8650-cci", "qcom,msm8996-cci";
 			reg = <0 0x0ac17000 0 0x1000>;
-			interrupts = <GIC_SPI 428 IRQ_TYPE_EDGE_RISING>;
+			interrupts = <GIC_SPI 428 IRQ_TYPE_EDGE_RISING 0>;
 			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
 			clocks = <&camcc CAM_CC_CAMNOC_AXI_NRT_CLK>,
 				 <&camcc CAM_CC_CPAS_AHB_CLK>,
@@ -4921,7 +4921,7 @@ mdss: display-subsystem@ae00000 {
 			reg = <0 0x0ae00000 0 0x1000>;
 			reg-names = "mdss";
 
-			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH 0>;
 
 			clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
 				 <&gcc GCC_DISP_HF_AXI_CLK>,
@@ -5390,8 +5390,8 @@ usb_1: usb@a6f8800 {
 			compatible = "qcom,sm8650-dwc3", "qcom,dwc3";
 			reg = <0 0x0a6f8800 0 0x400>;
 
-			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
-					      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
+			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH 0>,
+					      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH 0>,
 					      <&pdc 14 IRQ_TYPE_EDGE_RISING>,
 					      <&pdc 15 IRQ_TYPE_EDGE_RISING>,
 					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
@@ -5440,7 +5440,7 @@ usb_1_dwc3: usb@a600000 {
 				compatible = "snps,dwc3";
 				reg = <0 0x0a600000 0 0xcd00>;
 
-				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				iommus = <&apps_smmu 0x40 0>;
 
@@ -5504,8 +5504,8 @@ tsens0: thermal-sensor@c228000 {
 			reg = <0 0x0c228000 0 0x1000>, /* TM */
 			      <0 0x0c222000 0 0x1000>; /* SROT */
 
-			interrupts = <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 640 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 640 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-names = "uplow",
 					  "critical";
 
@@ -5519,8 +5519,8 @@ tsens1: thermal-sensor@c229000 {
 			reg = <0 0x0c229000 0 0x1000>, /* TM */
 			      <0 0x0c223000 0 0x1000>; /* SROT */
 
-			interrupts = <GIC_SPI 507 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 507 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-names = "uplow",
 					  "critical";
 
@@ -5534,8 +5534,8 @@ tsens2: thermal-sensor@c22a000 {
 			reg = <0 0x0c22a000 0 0x1000>, /* TM */
 			      <0 0x0c224000 0 0x1000>; /* SROT */
 
-			interrupts = <GIC_SPI 508 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 642 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 508 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 642 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-names = "uplow",
 					  "critical";
 
@@ -5593,7 +5593,7 @@ tlmm: pinctrl@f100000 {
 			compatible = "qcom,sm8650-tlmm";
 			reg = <0 0x0f100000 0 0x300000>;
 
-			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH 0>;
 
 			gpio-controller;
 			#gpio-cells = <2>;
@@ -6469,103 +6469,103 @@ apps_smmu: iommu@15000000 {
 			compatible = "qcom,sm8650-smmu-500", "qcom,smmu-500", "arm,mmu-500";
 			reg = <0 0x15000000 0 0x100000>;
 
-			interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 317 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 319 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 320 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 321 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 322 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 323 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 324 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 325 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 326 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 327 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 328 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 329 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 331 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 332 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 333 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 334 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 335 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 336 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 337 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 338 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 340 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 341 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 342 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 343 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 344 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 345 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 395 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 396 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 397 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 398 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 399 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 401 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 402 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 403 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 404 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 405 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 406 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 407 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 408 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 409 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 412 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 706 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 689 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 690 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 691 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 692 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 693 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 694 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 695 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 696 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 317 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 319 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 320 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 321 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 322 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 323 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 324 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 325 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 326 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 327 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 328 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 329 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 331 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 332 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 333 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 334 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 335 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 336 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 337 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 338 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 340 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 341 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 342 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 343 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 344 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 345 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 395 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 396 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 397 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 398 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 399 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 401 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 402 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 403 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 404 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 405 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 406 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 407 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 408 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 409 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 412 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 706 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 689 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 690 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 691 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 692 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 693 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 694 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 695 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 696 IRQ_TYPE_LEVEL_HIGH 0>;
 
 			#iommu-cells = <2>;
 			#global-interrupts = <1>;
@@ -6578,9 +6578,9 @@ intc: interrupt-controller@17100000 {
 			reg = <0 0x17100000 0 0x10000>,		/* GICD */
 			      <0 0x17180000 0 0x200000>;	/* GICR * 8 */
 
-			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW 0>;
 
-			#interrupt-cells = <3>;
+			#interrupt-cells = <4>;
 			interrupt-controller;
 
 			#redistributor-regions = <1>;
@@ -6611,8 +6611,8 @@ frame@17421000 {
 				reg = <0x17421000 0x1000>,
 				      <0x17422000 0x1000>;
 
-				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
-					     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH 0>,
+					     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				frame-number = <0>;
 			};
@@ -6620,7 +6620,7 @@ frame@17421000 {
 			frame@17423000 {
 				reg = <0x17423000 0x1000>;
 
-				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				frame-number = <1>;
 
@@ -6630,7 +6630,7 @@ frame@17423000 {
 			frame@17425000 {
 				reg = <0x17425000 0x1000>;
 
-				interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				frame-number = <2>;
 
@@ -6640,7 +6640,7 @@ frame@17425000 {
 			frame@17427000 {
 				reg = <0x17427000 0x1000>;
 
-				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				frame-number = <3>;
 
@@ -6650,7 +6650,7 @@ frame@17427000 {
 			frame@17429000 {
 				reg = <0x17429000 0x1000>;
 
-				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				frame-number = <4>;
 
@@ -6660,7 +6660,7 @@ frame@17429000 {
 			frame@1742b000 {
 				reg = <0x1742b000 0x1000>;
 
-				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				frame-number = <5>;
 
@@ -6670,7 +6670,7 @@ frame@1742b000 {
 			frame@1742d000 {
 				reg = <0x1742d000 0x1000>;
 
-				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				frame-number = <6>;
 
@@ -6688,9 +6688,9 @@ apps_rsc: rsc@17a00000 {
 				    "drv-1",
 				    "drv-2";
 
-			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH 0>;
 
 			power-domains = <&cluster_pd>;
 
@@ -6808,10 +6808,10 @@ cpufreq_hw: cpufreq@17d91000 {
 				    "freq-domain2",
 				    "freq-domain3";
 
-			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 738 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 738 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-names = "dcvsh-irq-0",
 					  "dcvsh-irq-1",
 					  "dcvsh-irq-2",
@@ -6828,7 +6828,7 @@ pmu@24091000 {
 			compatible = "qcom,sm8650-llcc-bwmon", "qcom,sc7280-llcc-bwmon";
 			reg = <0 0x24091000 0 0x1000>;
 
-			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH 0>;
 
 			interconnects = <&mc_virt MASTER_LLCC QCOM_ICC_TAG_ACTIVE_ONLY
 					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>;
@@ -6880,7 +6880,7 @@ pmu@240b7400 {
 			compatible = "qcom,sm8650-cpu-bwmon", "qcom,sdm845-bwmon";
 			reg = <0 0x240b7400 0 0x600>;
 
-			interrupts = <GIC_SPI 581 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 581 IRQ_TYPE_LEVEL_HIGH 0>;
 
 			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
 					 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ACTIVE_ONLY>;
@@ -6940,7 +6940,7 @@ system-cache-controller@25000000 {
 				    "llcc_broadcast_base",
 				    "llcc_broadcast_and_base";
 
-			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 
 		nsp_noc: interconnect@320c0000 {
@@ -6956,7 +6956,7 @@ remoteproc_cdsp: remoteproc@32300000 {
 			compatible = "qcom,sm8650-cdsp-pas";
 			reg = <0x0 0x32300000 0x0 0x10000>;
 
-			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING>,
+			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING 0>,
 					      <&smp2p_cdsp_in 0 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_cdsp_in 1 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_cdsp_in 2 IRQ_TYPE_EDGE_RISING>,
@@ -7956,9 +7956,9 @@ modem3-critical {
 	timer {
 		compatible = "arm,armv8-timer";
 
-		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
-			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
-			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
-			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW 0>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW 0>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW 0>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW 0>;
 	};
 };

-- 
2.34.1


