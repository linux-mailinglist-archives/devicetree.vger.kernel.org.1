Return-Path: <devicetree+bounces-138892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0436A12D8A
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 22:17:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 554AE3A1881
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 21:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80FE71DA313;
	Wed, 15 Jan 2025 21:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gPITZTgE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739D01D6DC8
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 21:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736975843; cv=none; b=az8bw9+hdMeZAw3ymtTZJkky0bRKmVn2tB3CKcpY1HlJ3j0vt8v+J9vktZPDaPXEK+4fXvhjSyEqVDB8In4Ejb+mZT0yO9/YRmYFckUZC2uVlzFa2Q6NEr7am1qP1ZM3ZtWv86Tao3MHPqAwcgPB+hU1V/XdHUDzt8FeXULBPJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736975843; c=relaxed/simple;
	bh=vIzUssoIUfyQlTtL+527jjnnB+mj21XpNfI5YrGM3fs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SyZtZ6bxCIB2cSwi/bycLenRYxdByq2U126LHZ+I6dO8odOYv0sxVxVQYnscehJx8FYkMiLQlQlHBa1spchQivP47uWEWjR6bWGL0TaNuo/aJD2ASpBmCVQXSY5jtkHcwAuX/JO3FbdwqXdGV/LWZqmS7pnFkQqrUPs+6XkqcVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gPITZTgE; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4363298fff2so111315e9.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736975840; x=1737580640; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JQMnSAQs/DfAerBp3+zcKAyWRIxi6uBFpL3aqUnYuSI=;
        b=gPITZTgEz5Lfjc68rc1amoX+QjYBSu0EWmK/RTpYebciOt5lyXc2AAn5+biWIT2avD
         n+EekPFHnE+W8SxggvjmBUfE7KIF3K+No8bi3hENWQYQEIcpR9ECRhW+OflXcGdlMYin
         kYWU7D1zm6mNXZVvDbS6us55Q7GhHXUgOlADvYye3DGPwEKTAzx+Tht1XnQ24RApl1eQ
         FhNHwR3NWL+H5LFuZyhz+EHKDQ7Bve8qR8oZFy0T7ZueuCtU7pVWD/9yfM15gzQo9iFx
         Hi34JQcQDYtPSdjmP3RbzIAW8mURf39uPuSGW8jil1LXeo/aQoAU1bpB+NdyqFxZV7Vh
         yUaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736975840; x=1737580640;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JQMnSAQs/DfAerBp3+zcKAyWRIxi6uBFpL3aqUnYuSI=;
        b=g45stOdLGkezBI8mqmwAtFUrV450Y3l/2duHAoSzInU5fgWrwY/OoCkYSZT63QnLcO
         lozaglL+LIIBAG/t8E7SJyd+FVzTSLhU9EJnJijQOw/XtRlerj70EWgJvE6bQJVj+f42
         SanR+GlNXdKe00iF8pWS1NIWtcAXy+uVyeS6b/SgAb6/ePDml7ht8e/4xmZLezbMHHnR
         zUOQjqmeRMqXD/0Kmec/Zg7JEnr8i3XwYKUBhDxTIecoYcMsGUNFCslNEnBHNgZoCKFB
         +l1qq5vIun/4Lpd70wY9tosglX9cbv0erkisK/P4XaWeV2dG76yElxRPh5gt+zQUByME
         AgLg==
X-Forwarded-Encrypted: i=1; AJvYcCWITGDs6aR0/wFZnUUmU6A5DFSkIGgkPIcN575Ralvq3tXnWBAgeA3grBqUjKlhvpI2Z8fqkxNVwmDm@vger.kernel.org
X-Gm-Message-State: AOJu0YzxSw+VIfNgxb8T2orAIWUuo/r27qYFcB67p/Jm+wgrM04aQwxx
	JhCqmWvXWS5i7ANuc4vmqi0HNAafJ4FbBzmT4tUaVpw1AGMt7bU/WEP3vNHVJ4M=
X-Gm-Gg: ASbGncsGzIpUMHGTSismkYH0Sx/peqAvxiD8vJZDoaqnlVhAW4hpwBfYHtvnOkjBRCT
	sxlLA90pGQm1PzpURD91NQZCrJFB2Z8XtXcV1LfpQzPxNEfLgpNq3zGM3Th9W+W+5HahEisN4nn
	+nBCScokSQy6Vdkw0ux8kpbAREXcQNxhk98akGuPrp8blsbNgtE64p1TpUB0QPNRs2vy64tDykJ
	llK9yNRTGozcpHOxK3LgEwseqqUp22ZYUPVLZeujrK3Gwyj/gYxx6tM3/G4rsdsqA8cSF4=
X-Google-Smtp-Source: AGHT+IHAKrur/3orUKfFFj1tKtXO1vASMo7ZEdg9PA7uS4PdVEBXWlgKup5zVSIB+F64a4YMCKKJHw==
X-Received: by 2002:a05:600c:6c88:b0:436:fb10:d595 with SMTP id 5b1f17b1804b1-436fb10d8f1mr58194855e9.1.1736975839608;
        Wed, 15 Jan 2025 13:17:19 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c7499932sm35723725e9.7.2025.01.15.13.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 13:17:19 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Avi Fishman <avifishman70@gmail.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Tali Perry <tali.perry1@gmail.com>,
	Patrick Venture <venture@google.com>,
	Nancy Yuen <yuenn@google.com>,
	Benjamin Fair <benjaminfair@google.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: nuvoton: Align GPIO hog name with bindings
Date: Wed, 15 Jan 2025 22:17:16 +0100
Message-ID: <20250115211716.194109-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
to fix dtbs_check warning:

  nuvoton-npcm750-runbmc-olympus.dtb: G1A_P0_0: $nodename:0: 'G1A_P0_0' does not match '^.+-hog(-[0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../boot/dts/nuvoton/nuvoton-npcm730-gbs.dts  | 12 ++--
 .../nuvoton-npcm750-runbmc-olympus.dts        | 60 +++++++++----------
 2 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-npcm730-gbs.dts b/arch/arm/boot/dts/nuvoton/nuvoton-npcm730-gbs.dts
index c3501786d600..231228842e63 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-npcm730-gbs.dts
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-npcm730-gbs.dts
@@ -1050,19 +1050,19 @@ gpio1: gpio@f0011000 {
 		"","","","SIO_POWER_GOOD","","","","";
 	};
 	gpio2: gpio@f0012000 {
-		bmc_usb_mux_oe_n {
+		bmc-usb-mux-oe-n-hog {
 			gpio-hog;
 			gpios = <25 GPIO_ACTIVE_HIGH>;
 			output-low;
 			line-name = "bmc-usb-mux-oe-n";
 		};
-		bmc_usb_mux_sel {
+		bmc-usb-mux-sel-hog {
 			gpio-hog;
 			gpios = <26 GPIO_ACTIVE_HIGH>;
 			output-low;
 			line-name = "bmc-usb-mux-sel";
 		};
-		bmc_usb2517_reset_n {
+		bmc-usb2517-reset-n-hog {
 			gpio-hog;
 			gpios = <27 GPIO_ACTIVE_LOW>;
 			output-low;
@@ -1070,19 +1070,19 @@ bmc_usb2517_reset_n {
 		};
 	};
 	gpio3: gpio@f0013000 {
-		assert_cpu0_reset {
+		assert-cpu0-reset-hog {
 			gpio-hog;
 			gpios = <14 GPIO_ACTIVE_HIGH>;
 			output-low;
 			line-name = "assert-cpu0-reset";
 		};
-		assert_pwrok_cpu0_n {
+		assert-pwrok-cpu0-n-hog {
 			gpio-hog;
 			gpios = <15 GPIO_ACTIVE_HIGH>;
 			output-low;
 			line-name = "assert-pwrok-cpu0-n";
 		};
-		assert_cpu0_prochot {
+		assert-cpu0-prochot-hog {
 			gpio-hog;
 			gpios = <16 GPIO_ACTIVE_HIGH>;
 			output-low;
diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-npcm750-runbmc-olympus.dts b/arch/arm/boot/dts/nuvoton/nuvoton-npcm750-runbmc-olympus.dts
index f67ede148209..b5df452dd958 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-npcm750-runbmc-olympus.dts
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-npcm750-runbmc-olympus.dts
@@ -427,91 +427,91 @@ pca9539_g1a: pca9539-g1a@74 {
 		gpio-controller;
 		#gpio-cells = <2>;
 		reset-gpios = <&gpio7 4 GPIO_ACTIVE_LOW>;
-		G1A_P0_0 {
+		g1a-p0-0-hog {
 			gpio-hog;
 			gpios = <0 0>;
 			output-high;
 			line-name = "TPM_BMC_ALERT_N";
 		};
-		G1A_P0_1 {
+		g1a-p0-1-hog {
 			gpio-hog;
 			gpios = <1 0>;
 			input;
 			line-name = "FM_BIOS_TOP_SWAP";
 		};
-		G1A_P0_2 {
+		g1a-p0-2-hog {
 			gpio-hog;
 			gpios = <2 0>;
 			input;
 			line-name = "FM_BIOS_PREFRB2_GOOD";
 		};
-		G1A_P0_3 {
+		g1a-p0-3-hog {
 			gpio-hog;
 			gpios = <3 0>;
 			input;
 			line-name = "BMC_SATAXPCIE_0TO3_SEL";
 		};
-		G1A_P0_4 {
+		g1a-p0-4-hog {
 			gpio-hog;
 			gpios = <4 0>;
 			input;
 			line-name = "BMC_SATAXPCIE_4TO7_SEL";
 		};
-		G1A_P0_5 {
+		g1a-p0-5-hog {
 			gpio-hog;
 			gpios = <5 0>;
 			output-low;
 			line-name = "FM_UV_ADR_TRIGGER_EN_N";
 		};
-		G1A_P0_6 {
+		g1a-p0-6-hog {
 			gpio-hog;
 			gpios = <6 0>;
 			input;
 			line-name = "RM_THROTTLE_EN_N";
 		};
-		G1A_P1_0 {
+		g1a-p1-0-hog {
 			gpio-hog;
 			gpios = <8 0>;
 			input;
 			line-name = "FM_BMC_TPM_PRES_N";
 		};
-		G1A_P1_1 {
+		g1a-p1-1-hog {
 			gpio-hog;
 			gpios = <9 0>;
 			input;
 			line-name = "FM_CPU0_SKTOCC_LVT3_N";
 		};
-		G1A_P1_2 {
+		g1a-p1-2-hog {
 			gpio-hog;
 			gpios = <10 0>;
 			input;
 			line-name = "FM_CPU1_SKTOCC_LVT3_N";
 		};
-		G1A_P1_3 {
+		g1a-p1-3-hog {
 			gpio-hog;
 			gpios = <11 0>;
 			input;
 			line-name = "PSU1_ALERT_N";
 		};
-		G1A_P1_4 {
+		g1a-p1-4-hog {
 			gpio-hog;
 			gpios = <12 0>;
 			input;
 			line-name = "PSU2_ALERT_N";
 		};
-		G1A_P1_5 {
+		g1a-p1-5-hog {
 			gpio-hog;
 			gpios = <13 0>;
 			input;
 			line-name = "H_CPU0_FAST_WAKE_LVT3_N";
 		};
-		G1A_P1_6 {
+		g1a-p1-6-hog {
 			gpio-hog;
 			gpios = <14 0>;
 			output-high;
 			line-name = "I2C_MUX1_RESET_N";
 		};
-		G1A_P1_7 {
+		g1a-p1-7-hog {
 			gpio-hog;
 			gpios = <15 0>;
 			input;
@@ -524,91 +524,91 @@ pca9539_g1b: pca9539-g1b@75 {
 		reg = <0x75>;
 		gpio-controller;
 		#gpio-cells = <2>;
-		G1B_P0_0 {
+		g1b-p0-0-hog {
 			gpio-hog;
 			gpios = <0 0>;
 			input;
 			line-name = "PVDDQ_ABC_PINALERT_N";
 		};
-		G1B_P0_1 {
+		g1b-p0-1-hog {
 			gpio-hog;
 			gpios = <1 0>;
 			input;
 			line-name = "PVDDQ_DEF_PINALERT_N";
 		};
-		G1B_P0_2 {
+		g1b-p0-2-hog {
 			gpio-hog;
 			gpios = <2 0>;
 			input;
 			line-name = "PVDDQ_GHJ_PINALERT_N";
 		};
-		G1B_P0_3 {
+		g1b-p0-3-hog {
 			gpio-hog;
 			gpios = <3 0>;
 			input;
 			line-name = "PVDDQ_KLM_PINALERT_N";
 		};
-		G1B_P0_5 {
+		g1b-p0-5-hog {
 			gpio-hog;
 			gpios = <5 0>;
 			input;
 			line-name = "FM_BOARD_REV_ID0";
 		};
-		G1B_P0_6 {
+		g1b-p0-6-hog {
 			gpio-hog;
 			gpios = <6 0>;
 			input;
 			line-name = "FM_BOARD_REV_ID1";
 		};
-		G1B_P0_7 {
+		g1b-p0-7-hog {
 			gpio-hog;
 			gpios = <7 0>;
 			input;
 			line-name = "FM_BOARD_REV_ID2";
 		};
-		G1B_P1_0 {
+		g1b-p1-0-hog {
 			gpio-hog;
 			gpios = <8 0>;
 			input;
 			line-name = "FM_OC_DETECT_EN_N";
 		};
-		G1B_P1_1 {
+		g1b-p1-1-hog {
 			gpio-hog;
 			gpios = <9 0>;
 			input;
 			line-name = "FM_FLASH_DESC_OVERRIDE";
 		};
-		G1B_P1_2 {
+		g1b-p1-2-hog {
 			gpio-hog;
 			gpios = <10 0>;
 			output-low;
 			line-name = "FP_PWR_ID_LED_N";
 		};
-		G1B_P1_3 {
+		g1b-p1-3-hog {
 			gpio-hog;
 			gpios = <11 0>;
 			output-low;
 			line-name = "BMC_LED_PWR_GRN";
 		};
-		G1B_P1_4 {
+		g1b-p1-4-hog {
 			gpio-hog;
 			gpios = <12 0>;
 			output-low;
 			line-name = "BMC_LED_PWR_AMBER";
 		};
-		G1B_P1_5 {
+		g1b-p1-5-hog {
 			gpio-hog;
 			gpios = <13 0>;
 			output-high;
 			line-name = "FM_BMC_FAULT_LED_N";
 		};
-		G1B_P1_6 {
+		g1b-p1-6-hog {
 			gpio-hog;
 			gpios = <14 0>;
 			output-high;
 			line-name = "FM_CPLD_BMC_PWRDN_N";
 		};
-		G1B_P1_7 {
+		g1b-p1-7-hog {
 			gpio-hog;
 			gpios = <15 0>;
 			output-high;
-- 
2.43.0


