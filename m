Return-Path: <devicetree+bounces-138958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C236A135FC
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 10:01:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4DF25167731
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 09:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 568FD1D63C8;
	Thu, 16 Jan 2025 09:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s47nF2ov"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2CF18E76B
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 09:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737018055; cv=none; b=HKn+Unf/8T+O/4GBbXoysDUyUFgESlRx7JLzCP+gjuEtlF3dQfnFitQJYsniSJ2V+bEYvQNsCLiqOGV6rs3eq0QyxWRXF25iLecKP/DPFMByZh6qXD74zClokCmtWT87pLHun+KT1daAacm2pczUC1uNjvZ0GIL9yQTtAaJOF9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737018055; c=relaxed/simple;
	bh=OCFYYgPJ6XaZBC7bCVR/RY8PL7azVC4BDIDaVhne5fQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uTpZ4NBJAhkG0IGiH6RhepX4DeCgOJLcnulbO40NnoghNO4R2w8jxu8+YVT9N+/chP+iNpCFtezsp4ZVMsGDRRaKyQrQohBUPNmjcBut97skUoZA7Gruz3GVx/nEzmUMvZmPBL5VY9XnrDZhsTq4FDxgTo3dQeacVx2BSqhUy0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s47nF2ov; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43658c452f5so867115e9.0
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 01:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737018051; x=1737622851; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8U8PSE+JVRg8hlgWCdgriQWufbxUR96ZGzqA6Q35Ljk=;
        b=s47nF2ov4d8MNHM/Tihzjj710/l2x68tj+d1aX5lCqOsYAXT+PD9DlfopHNr3/5Rg2
         37w/gItigMt9Xd7mZAwxB3rSK1pVvSGsgg4wN7/kxLEjeXRcoSsnBjQDEhh0qtPfXuMr
         6JjO+EzCJLsGs7gJFlMMOZaT1HCrPIR6qA+0HlHJ+AiA64xkRIXEB6+vyp+dCYSZiMN7
         EwN/rjykwNIo1hrCsRhNyu6WAJYPwQ652gI5SwJhrykCKoA6DdAglwWgdSHaFe2jHuVG
         qsLCM/J7taDjXVPJ0UNadheH3bMrSoEjHxiQBhu2K7vMOaWCjf3C9AFHZUhbapwDRcNd
         yk3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737018051; x=1737622851;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8U8PSE+JVRg8hlgWCdgriQWufbxUR96ZGzqA6Q35Ljk=;
        b=YNtUwgMZyZ+axNwBRPzoW2XiZePaocVrpJlhXs1hdLfvgM+KGbdeS1sm5Wa0E4TXU4
         sSSq/E3mXYX1Hv71rmaHBvhcPdXEeb/dS6BZDIp7MV1vwVE5EOGjNj+IjkmwH4PWMy26
         e7ZSU5BkBREPj6qt96F3wE+F4Fl2WQLmzdZ/1qfSBFwXHi6wnidCaxDGq8c1YU1sDuF3
         boW4A7CEUy4CQCfxxlJxpYwUm/hA9nNeIDxZPa3uEONu0/ECeQ2vBpKJjdFWW3udYYs9
         waVI8GLk9nf5fn5cjzO+6qyJXS+Q3q1xChMild5YakRBK0pnJjMlNAA69cF/+0Sv0QZX
         gBVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjWsN8tKgH+5lGiLDPuhgfDqRvpT0ckx3HYjfbGR+hMWpgzTmYVphWxlyJuvipMOVDjdjjKqujsZa6@vger.kernel.org
X-Gm-Message-State: AOJu0YxR8vnP5OX/01OiyyblQ4nIxpuqQ1Q225YglWf4jcoGCP+PpBWx
	xBkvqUU/mkA45dSRQp3MLLRKUMh9UtM6gu9f4787BRxorBtrEME4QU9axg/Mljg=
X-Gm-Gg: ASbGncsdRjlPCmqo8DTAHqu+QWuKV0JH/tgz843yoFz7HKz9+ATEa0SqmGfhC3Mj9Rt
	ZqU2Ti8fgl5DE406i7iwrmX0RfKgCoDstecSkkbi9xe+zIqeIrvObraW1cbwSawiqLME6btPO4A
	SbVWC2ZjZn1QaN3I10T03B7OUzADJMWzfNxk2RDbSsLMuvRPmiKpuQOyP6dIg3aM1NKRMudOdcY
	+aRc6vyOxOOM5aCt1jAPw81h2tg9Xd3LRXGK27niIGdFqJRmxtX2EN52nwkArYJS4OQX3Y=
X-Google-Smtp-Source: AGHT+IEFBHk8ldOnEU3jlQqnX7KqsLUeoe2YYBLIHC7UFxoaF/Ly/BxeOBTjPw/aK0Savo2dKVf/GA==
X-Received: by 2002:adf:e28b:0:b0:38a:87cc:f9bb with SMTP id ffacd0b85a97d-38a87ccfadamr7967183f8f.6.1737018049751;
        Thu, 16 Jan 2025 01:00:49 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c16640bcsm49557995e9.1.2025.01.16.01.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 01:00:49 -0800 (PST)
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
Subject: [PATCH v2] ARM: dts: nuvoton: Align GPIO hog name with bindings
Date: Thu, 16 Jan 2025 10:00:47 +0100
Message-ID: <20250116090047.87499-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
to fix dtbs_check warnings like:

  nuvoton-npcm750-runbmc-olympus.dtb: G1A_P0_0: $nodename:0: 'G1A_P0_0' does not match '^.+-hog(-[0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Rename rest of the nodes I missed.
---
 .../boot/dts/nuvoton/nuvoton-npcm730-gbs.dts  |  12 +-
 .../nuvoton-npcm750-runbmc-olympus.dts        | 120 +++++++++---------
 2 files changed, 66 insertions(+), 66 deletions(-)

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
index f67ede148209..0c94e14d40e8 100644
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
@@ -626,91 +626,91 @@ pca9539_g2a: pca9539-g2a@74 {
 		gpio-controller;
 		#gpio-cells = <2>;
 		reset-gpios = <&gpio5 28 GPIO_ACTIVE_LOW>;
-		G2A_P0_0 {
+		g2a-p0-0-hog {
 			gpio-hog;
 			gpios = <0 0>;
 			output-high;
 			line-name = "BMC_PON_RST_REQ_N";
 		};
-		G2A_P0_1 {
+		g2a-p0-1-hog {
 			gpio-hog;
 			gpios = <1 0>;
 			output-high;
 			line-name = "BMC_RST_IND_REQ_N";
 		};
-		G2A_P0_2 {
+		g2a-p0-2-hog {
 			gpio-hog;
 			gpios = <2 0>;
 			input;
 			line-name = "RST_BMC_RTCRST";
 		};
-		G2A_P0_3 {
+		g2a-p0-3-hog {
 			gpio-hog;
 			gpios = <3 0>;
 			output-high;
 			line-name = "FM_BMC_PWRBTN_OUT_N";
 		};
-		G2A_P0_4 {
+		g2a-p0-4-hog {
 			gpio-hog;
 			gpios = <4 0>;
 			output-high;
 			line-name = "RST_BMC_SYSRST_BTN_OUT_N";
 		};
-		G2A_P0_5 {
+		g2a-p0-5-hog {
 			gpio-hog;
 			gpios = <5 0>;
 			output-high;
 			line-name = "FM_BATTERY_SENSE_EN_N";
 		};
-		G2A_P0_6 {
+		g2a-p0-6-hog {
 			gpio-hog;
 			gpios = <6 0>;
 			output-high;
 			line-name = "FM_BMC_READY_N";
 		};
-		G2A_P0_7 {
+		g2a-p0-7-hog {
 			gpio-hog;
 			gpios = <7 0>;
 			input;
 			line-name = "IRQ_BMC_PCH_SMI_LPC_N";
 		};
-		G2A_P1_0 {
+		g2a-p1-0-hog {
 			gpio-hog;
 			gpios = <8 0>;
 			input;
 			line-name = "FM_SLOT4_CFG0";
 		};
-		G2A_P1_1 {
+		g2a-p1-1-hog {
 			gpio-hog;
 			gpios = <9 0>;
 			input;
 			line-name = "FM_SLOT4_CFG1";
 		};
-		G2A_P1_2 {
+		g2a-p1-2-hog {
 			gpio-hog;
 			gpios = <10 0>;
 			input;
 			line-name = "FM_NVDIMM_EVENT_N";
 		};
-		G2A_P1_3 {
+		g2a-p1-3-hog {
 			gpio-hog;
 			gpios = <11 0>;
 			input;
 			line-name = "PSU1_BLADE_EN_N";
 		};
-		G2A_P1_4 {
+		g2a-p1-4-hog {
 			gpio-hog;
 			gpios = <12 0>;
 			input;
 			line-name = "BMC_PCH_FNM";
 		};
-		G2A_P1_5 {
+		g2a-p1-5-hog {
 			gpio-hog;
 			gpios = <13 0>;
 			input;
 			line-name = "FM_SOL_UART_CH_SEL";
 		};
-		G2A_P1_6 {
+		g2a-p1-6-hog {
 			gpio-hog;
 			gpios = <14 0>;
 			input;
@@ -723,91 +723,91 @@ pca9539_g2b: pca9539-g2b@75 {
 		reg = <0x75>;
 		gpio-controller;
 		#gpio-cells = <2>;
-		G2B_P0_0 {
+		g2b-p0-0-hog {
 			gpio-hog;
 			gpios = <0 0>;
 			input;
 			line-name = "FM_CPU_MSMI_LVT3_N";
 		};
-		G2B_P0_1 {
+		g2b-p0-1-hog {
 			gpio-hog;
 			gpios = <1 0>;
 			input;
 			line-name = "FM_BIOS_MRC_DEBUG_MSG_DIS";
 		};
-		G2B_P0_2 {
+		g2b-p0-2-hog {
 			gpio-hog;
 			gpios = <2 0>;
 			input;
 			line-name = "FM_CPU1_DISABLE_BMC_N";
 		};
-		G2B_P0_3 {
+		g2b-p0-3-hog {
 			gpio-hog;
 			gpios = <3 0>;
 			output-low;
 			line-name = "BMC_JTAG_SELECT";
 		};
-		G2B_P0_4 {
+		g2b-p0-4-hog {
 			gpio-hog;
 			gpios = <4 0>;
 			output-high;
 			line-name = "PECI_MUX_SELECT";
 		};
-		G2B_P0_5 {
+		g2b-p0-5-hog {
 			gpio-hog;
 			gpios = <5 0>;
 			output-high;
 			line-name = "I2C_MUX2_RESET_N";
 		};
-		G2B_P0_6 {
+		g2b-p0-6-hog {
 			gpio-hog;
 			gpios = <6 0>;
 			input;
 			line-name = "FM_BMC_CPLD_PSU2_ON";
 		};
-		G2B_P0_7 {
+		g2b-p0-7-hog {
 			gpio-hog;
 			gpios = <7 0>;
 			output-high;
 			line-name = "PSU2_ALERT_EN_N";
 		};
-		G2B_P1_0 {
+		g2b-p1-0-hog {
 			gpio-hog;
 			gpios = <8 0>;
 			output-high;
 			line-name = "FM_CPU_BMC_INIT";
 		};
-		G2B_P1_1 {
+		g2b-p1-1-hog {
 			gpio-hog;
 			gpios = <9 0>;
 			output-high;
 			line-name = "IRQ_BMC_PCH_SCI_LPC_N";
 		};
-		G2B_P1_2 {
+		g2b-p1-2-hog {
 			gpio-hog;
 			gpios = <10 0>;
 			output-low;
 			line-name = "PMB_ALERT_EN_N";
 		};
-		G2B_P1_3 {
+		g2b-p1-3-hog {
 			gpio-hog;
 			gpios = <11 0>;
 			output-high;
 			line-name = "FM_FAST_PROCHOT_EN_N";
 		};
-		G2B_P1_4 {
+		g2b-p1-4-hog {
 			gpio-hog;
 			gpios = <12 0>;
 			output-high;
 			line-name = "BMC_NVDIMM_PRSNT_N";
 		};
-		G2B_P1_5 {
+		g2b-p1-5-hog {
 			gpio-hog;
 			gpios = <13 0>;
 			output-low;
 			line-name = "FM_BACKUP_BIOS_SEL_H_BMC";
 		};
-		G2B_P1_6 {
+		g2b-p1-6-hog {
 			gpio-hog;
 			gpios = <14 0>;
 			output-high;
-- 
2.43.0


