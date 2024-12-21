Return-Path: <devicetree+bounces-133256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C057C9FA149
	for <lists+devicetree@lfdr.de>; Sat, 21 Dec 2024 16:18:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CF6516939C
	for <lists+devicetree@lfdr.de>; Sat, 21 Dec 2024 15:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 032701BCA0F;
	Sat, 21 Dec 2024 15:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="sElu2JSO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEBC1FC0F4
	for <devicetree@vger.kernel.org>; Sat, 21 Dec 2024 15:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734794289; cv=none; b=jrugWUvK0rZ/TH8wg+UOh2KbupOu8eyR8rGIFRMeDpalyQjOe2hykrReb2CO7KdxVrX3h3hzByLWsD5F04xvs/T+MOeLUL8crZQ+AL35SvFek8M6rAuszDcoA05C8WEFhWrK6+fF0brTcuP7IH28YK+7ezNJAbCkSCAqQ8M6fyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734794289; c=relaxed/simple;
	bh=S8t7lDXUh68YdGT7nRMTtHKmcqRZjrf5V/ri56kn+XI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UcI86e84dVdMId1lk3dtBCcKpzPbhZXyqKSsTB4qZLm9KctMcEv5mXp0vNvX4ypFM+XaDwfGwchGyp4pv1O49OzVAMJsgav3c2nTsJT/zuxuYt9J6q+VSPOcsRM1ykHCn29LHaCFFebVaIInrRW7rrAOJOciKqbIO6/ccyjZ/vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai; spf=none smtp.mailfrom=edgeble.ai; dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b=sElu2JSO; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=edgeble.ai
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-728ea1573c0so2467848b3a.0
        for <devicetree@vger.kernel.org>; Sat, 21 Dec 2024 07:18:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1734794287; x=1735399087; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bl4pEkJ+Bsnqat0NylNt98XfhDmcqD+zuY6vbF8ltmo=;
        b=sElu2JSO86zrLoU9fsFY+8z5EUaY6NEkmVmxNUUXhBc7FLvRgMA8U3TZnd3QclTVTk
         eifuH5YNc53nsgdT3QAUJ5s/i9rBX1ivwMKSYA+z8Yxeze3jspUZYjPknnHJs8h7R2DO
         2nWMKmORiiP/M1/3nIxjzamHnz4ao4QSIAkpEznYB62vGHgNQXglAmYBCvulwUnCVy2U
         uz6sHo/aljDJRU2blhlCrgjF/C6MCqZmdGfr/qH+pdvplkClFAeXKes1J1GqpYD5uML4
         t7/e1IYjbmrhK4U6/SRY9dPcOSoBW0AklKO5FXnS0hWBq49Mr+alAdJzcvqrhgKBtduo
         yRvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734794287; x=1735399087;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bl4pEkJ+Bsnqat0NylNt98XfhDmcqD+zuY6vbF8ltmo=;
        b=YqpHSPfgu48EKwSnWamUYT6rbYZgmNq4Cc3aCjRoEqjelRVXYi0Wc7HAf8cfwpgXPz
         42nW/iZtrvDSlLb+BIAluptaeGC5O4ZjsOnlT7Jz7RYIf/pvSjfFsAX0zEPMxa8bUvjM
         +hZ93EqQ+R4DVHzPS/qrwxv24kXCq8bi9K1/WUbOP+reXDPMaouGVA1AzghsMLxZ8cH4
         2drbQAED0mkMn9l0j+uYeLjQmEea7G9h0vB5Xs3hXvAtL7f/61hxpPNNbjBSfjesDALE
         V+NArAg7POgGdBeYrmxNPEu3sN4IclVRD3nAjIyAicRMJ7bCI/r4tqA8ssEA2sNz4OFh
         8CNw==
X-Forwarded-Encrypted: i=1; AJvYcCVvX3uUaS2v4ie7V07fh9qWUASdXw9DiuuJ/Iwv8NdgjeY5zE/QCxOUycNsTcks7yrxJTTE2YL7pyOx@vger.kernel.org
X-Gm-Message-State: AOJu0YxFKinBLOePEkGPFdCuT2AiURdFFkPxUC1DNjiT4UFyWAYGoBpA
	R8FEE5sZhAy2dkRT90M7usSeFk+uYKqX99Iab21jifGO3xi0i6+m3msRfJ5xXtY=
X-Gm-Gg: ASbGncunaVT35Le81ahIWGLnJgGBrNNjwnf0LptopRnIDQ9aLo1u8ae06wJ0n8PE4yq
	VYUavrd3QHbIcPzIpZKryHrnc+6t8tmRvv/aIzC1n2RvF+K1hwgFNzIIWG/dqEPPOTfvriP5QNQ
	XO+Ycs21Oegx8hPW5e5ZW5q6hi9RfQRx7pVD0EXqB2BNWDBWaaszCcZhltCOM3yU8+zQ4AR+LLQ
	f3DmptlGtTiot8ocDWVZnxaY5LHp0+Fxo+hLtYUsipQux5DpS7QwVCmoikCLDymDfj6
X-Google-Smtp-Source: AGHT+IHaN8Ws7cNJxi+W+zqLPd3EnDfDJJBxBjqb4+tAZwpMW1/iij7gkAWdz4uBBQP31s/KRu8lVg==
X-Received: by 2002:a05:6a00:1411:b0:725:f376:f4f4 with SMTP id d2e1a72fcca58-72abde01aa8mr9248366b3a.13.1734794287425;
        Sat, 21 Dec 2024 07:18:07 -0800 (PST)
Received: from tops-ThinkPad-E14-Gen-5.. ([183.82.41.52])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad90b949sm4877522b3a.176.2024.12.21.07.18.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Dec 2024 07:18:07 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Mitchell Ma <machuang@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: Fix PCIe3 handling for Edgeble-6TOPS Modules
Date: Sat, 21 Dec 2024 20:47:58 +0530
Message-Id: <20241221151758.345257-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Edgeble 6TOPS modules has configured the PCIe3.0 with
- 2 lanes on Port1 of pcie3x2 controller for M.2 M-Key
- 2 lanes on Port0 of pcie3x4 controller for B and E-Key

The, current DT uses opposite controller nodes that indeed uses
incorrect reset, regulator nodes.

The configuration also uses refclk oscillator that need to enable
explicitly in DT to avoid the probe hang on while reading DBI.

So, this patch fixes all these essential issues and make this PCIe work
properly.

Issues fixed are,
- Fix the associate controller nodes for M and B, E-Key
- Fix the reset gpio handlings
- Fix the regulator handlings and naming convensions
- Support pcie_refclk oscillator

Fixes: 92eaee21abbd ("arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2
B-Key, E-Key")
Fixes: 5d85d4c7e03b ("arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2
M-Key")
Reported-by: Mitchell Ma <machuang@radxa.com>
Co-developed-by: Mitchell Ma <machuang@radxa.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 81 ++++++++++++++-----
 1 file changed, 59 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 05ae9bdcfbbd..7125790bbed2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -10,6 +10,15 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	/* Unnamed gated oscillator: 100MHz,3.3V,3225 */
+	pcie30_port0_refclk: pcie30_port1_refclk: pcie-oscillator {
+		compatible = "gated-fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+		clock-output-names = "pcie30_refclk";
+		vdd-supply = <&vcc3v3_pi6c_05>;
+	};
+
 	vcc3v3_pcie2x1l0: regulator-vcc3v3-pcie2x1l0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_pcie2x1l0";
@@ -19,26 +28,26 @@ vcc3v3_pcie2x1l0: regulator-vcc3v3-pcie2x1l0 {
 		vin-supply = <&vcc_3v3_s3>;
 	};
 
-	vcc3v3_pcie3x2: regulator-vcc3v3-pcie3x2 {
+	vcc3v3_bkey: regulator-vcc3v3-bkey {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpios = <&gpio2 RK_PC4 GPIO_ACTIVE_HIGH>; /* PCIE_4G_PWEN */
 		pinctrl-names = "default";
-		pinctrl-0 = <&pcie3x2_vcc3v3_en>;
-		regulator-name = "vcc3v3_pcie3x2";
+		pinctrl-0 = <&pcie_4g_pwen>;
+		regulator-name = "vcc3v3_bkey";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		startup-delay-us = <5000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc3v3_pcie3x4: regulator-vcc3v3-pcie3x4 {
+	vcc3v3_pcie30: vcc3v3_pi6c_05: regulator-vcc3v3-pi6c-05 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpios = <&gpio2 RK_PC5 GPIO_ACTIVE_HIGH>; /* PCIE30x4_PWREN_H */
 		pinctrl-names = "default";
-		pinctrl-0 = <&pcie3x4_vcc3v3_en>;
-		regulator-name = "vcc3v3_pcie3x4";
+		pinctrl-0 = <&pcie30x4_pwren_h>;
+		regulator-name = "vcc3v3_pcie30";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		startup-delay-us = <5000>;
@@ -98,24 +107,52 @@ &pcie2x1l0 {
 };
 
 &pcie30phy {
+	data-lanes = <1 1 2 2>;
+	/* separate clock lines from the clock generator to phy and devices */
+	rockchip,rx-common-refclk-mode = <0 0 0 0>;
 	status = "okay";
 };
 
-/* B-Key and E-Key */
+/* M-Key */
 &pcie3x2 {
+	/*
+	 * The board has a "pcie_refclk" oscillator that needs enabling,
+	 * so add it to the list of clocks.
+	 */
+	clocks = <&cru ACLK_PCIE_2L_MSTR>, <&cru ACLK_PCIE_2L_SLV>,
+		 <&cru ACLK_PCIE_2L_DBI>, <&cru PCLK_PCIE_2L>,
+		 <&cru CLK_PCIE_AUX1>, <&cru CLK_PCIE2L_PIPE>,
+		 <&pcie30_port1_refclk>;
+	clock-names = "aclk_mst", "aclk_slv",
+		      "aclk_dbi", "pclk",
+		      "aux", "pipe",
+		      "ref";
+	num-lanes = <2>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3x2_rst>;
-	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>; /* PCIE30X4_PERSTn_M1_L */
-	vpcie3v3-supply = <&vcc3v3_pcie3x2>;
+	pinctrl-0 = <&pcie30x2_perstn_m1_l>;
+	reset-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>; /* PCIE30X2_PERSTn_M1_L */
+	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
 };
 
-/* M-Key */
+/* B-Key and E-Key */
 &pcie3x4 {
+	/*
+	 * The board has a "pcie_refclk" oscillator that needs enabling,
+	 * so add it to the list of clocks.
+	 */
+	clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
+		 <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
+		 <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>,
+		 <&pcie30_port0_refclk>;
+	clock-names = "aclk_mst", "aclk_slv",
+		      "aclk_dbi", "pclk",
+		      "aux", "pipe",
+		      "ref";
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3x4_rst>;
-	reset-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>; /* PCIE30X2_PERSTn_M1_L */
-	vpcie3v3-supply = <&vcc3v3_pcie3x4>;
+	pinctrl-0 = <&pcie30x4_perstn_m1_l>;
+	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>; /* PCIE30X4_PERSTn_M1_L */
+	vpcie3v3-supply = <&vcc3v3_bkey>;
 	status = "okay";
 };
 
@@ -127,20 +164,20 @@ pcie2_0_rst: pcie2-0-rst {
 	};
 
 	pcie3 {
-		pcie3x2_rst: pcie3x2-rst {
-			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie30x2_perstn_m1_l: pcie30x2-perstn-m1-l {
+			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		pcie3x2_vcc3v3_en: pcie3x2-vcc3v3-en {
-			rockchip,pins = <2 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie_4g_pwen: pcie-4g-pwen {
+			rockchip,pins = <2 RK_PC4 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 
-		pcie3x4_rst: pcie3x4-rst {
-			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie30x4_perstn_m1_l: pcie30x4-perstn-m1-l {
+			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		pcie3x4_vcc3v3_en: pcie3x4-vcc3v3-en {
-			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie30x4_pwren_h: pcie30x4-pwren-h {
+			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
 
-- 
2.34.1


