Return-Path: <devicetree+bounces-136987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 89092A0731D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:28:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 097D4188AED2
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:28:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 606B72163AF;
	Thu,  9 Jan 2025 10:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="3ukDMM+w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A64F215F67
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 10:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736418397; cv=none; b=cWNlOURnVOV3Bw50f/nctAIGGWArfRcLP6fWpl55eS3fhUx8LZCRwytMolI5bGn5X9ddZT0SA2WQmccPmZkTSt505JJUB9OWheDKNm0XZTA3+Rd3UsqCkAerzyLN7NfJd1qQLrrrXYN0lKs2mYo5dYKWehmxPdCgbK/prUSrO2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736418397; c=relaxed/simple;
	bh=N4hG2O/j09Xx3Nj0M0PsMjia1Kwl+0q18IW4bbDNT34=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BRNjayN+hebku1TBUgIJJn0nHGbXHiZG0ZRQXji0KI2+hB1gn4x6zyATau+OSlscmOTFlwT0a1DQXRnQnC+m/znwymwv2RZ32q3s8FlIfQbgvzLsV6POPN4P8TWS7gXNevpsRnHJ8paY54o72Dq+dhTpqArjEJF5+2COSnDzxzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=3ukDMM+w; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-38789e5b6a7so383016f8f.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 02:26:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1736418392; x=1737023192; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kcmE5GvhTGMA/T7rAigI/c+hEubQsDNBvymq6rCl2mw=;
        b=3ukDMM+wCPzu5cdNAaIDEuinCL11Z9zxWyRFQJ5kXkT3BjnHWf/2XvIu2UbPAXLbMq
         GqiPaGQvueh1izM1pRSH5NceDLpvkjW5+sDxK8U+wnG13vqoG3G/AzZLT9HNxSOPz0TY
         NjswPNVerYDY5fsZci9cqBLx9fAXM/kmSYfuc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736418392; x=1737023192;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kcmE5GvhTGMA/T7rAigI/c+hEubQsDNBvymq6rCl2mw=;
        b=TdiiI/QwH95hPVdr78QPRp/0gOZsV1QQBJcFptKkmgf2+1CVIKAYA9cak5QjufOS0v
         qyQCuFuUd+2Mp0vVwhBwy0y9bUBjgPBnviLZYOx/LVq1iuQ9HjstPILvJhzbMOXLup3K
         9SXmyVya6eeQiu2x3UhpoKqozQCVgCmecg1fOZT1Dze+0mgT8Ec8iHlmgq3cyI9Tjw51
         BrJjUlvPu878utEfhqWjXSCxKT97FmGlZHRGkQbwBicP4lv3hYe7tuCoin4/Vexp/uvs
         BVCaiUbF3vWj/0gK93j9AUH0VJjVDtflGoz5O51/Pw6/25LHTLADBCYWjI2kQR3X1Gld
         MUHA==
X-Gm-Message-State: AOJu0YxtrIP0kk/TgahVltSW/EhhyYecGeW1aLYR3C5knFUsiuG4pbas
	CjNlTXW9vp5venci+4k0vDLbzKC00ZTzieLovupCRx4p7xOjJ3gmr+GcAZfsw1nDxePq98REvAo
	W
X-Gm-Gg: ASbGncvKvB797NLVWtAWZzU+2Iix7GLoooZL2thaIF0G5P0NKdYTH912Hebgd3Zcp5X
	pfVVEqBOpO25qi4k5NT+IWKDGffk9NbVwCh0UopcA0i+YlLZPDnCephyNM4Imm7VdOOHEQU7B2d
	8/D71vGz6QJurEqMGfe+WLhPKy3ID0GuS5086BhPn8Eu6TnZ1L7GzcgZiikseVdG1WtV3Gbknm/
	muwSMHRKLNl/Ek053917ZvtptzuYNUNAZGud/AQq/AIkO+sWLZcA9o0/TSQYINUHZPgw0breRL7
	nJmSe0rm7ZsEagHLXg12oKOot7d2Ja4zvG3xrHwufjXjWdNDWae4rg==
X-Google-Smtp-Source: AGHT+IGSz7Xtig7cG6CqnUAJvaP//2B3UQME42+mHs8l4qIfBd/THTZ51cBpS4XC0BRBoLcZZmnbjA==
X-Received: by 2002:a05:6000:4607:b0:386:380d:2cac with SMTP id ffacd0b85a97d-38a8730a7bdmr4758466f8f.26.1736418392520;
        Thu, 09 Jan 2025 02:26:32 -0800 (PST)
Received: from P-NTS-Evian.home (2a01cb05949d5800e3ef2d7a4131071f.ipv6.abo.wanadoo.fr. [2a01:cb05:949d:5800:e3ef:2d7a:4131:71f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e38d013sm1435595f8f.58.2025.01.09.02.26.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 02:26:32 -0800 (PST)
From: Romain Naour <romain.naour@smile.fr>
To: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-omap@vger.kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kristo@kernel.org,
	vigneshr@ti.com,
	nm@ti.com,
	afd@ti.com,
	Romain Naour <romain.naour@skf.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>
Subject: [PATCH v4 2/2] arm64: dts: ti: k3-j721e-beagleboneai64: Enable ACSPCIE output for PCIe1
Date: Thu,  9 Jan 2025 11:26:27 +0100
Message-ID: <20250109102627.1366753-2-romain.naour@smile.fr>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250109102627.1366753-1-romain.naour@smile.fr>
References: <20250109102627.1366753-1-romain.naour@smile.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Romain Naour <romain.naour@skf.com>

Unlike the SK-TDA4VM (k3-j721e-sk) board, there is no clock generator
(CDCI6214RGET) on the BeagleBone AI-64 (k3-j721e-beagleboneai64) to
provide PCIe refclk signal to PCIe Endponts. So the ACSPCIE module must
provide refclk through PCIe_REFCLK pins.

Use the new "ti,syscon-acspcie-proxy-ctrl" property to enable ACSPCIE
module's PAD IO Buffers.

Cc: Siddharth Vadapalli <s-vadapalli@ti.com>
Signed-off-by: Romain Naour <romain.naour@skf.com>
---
With this patch, we can remove "HACK: Sierra: Drive clock out" patch
applied on vendor kernel for BeagleBone AI-64:
https://openbeagle.org/beagleboard/linux/-/commit/ad65d7ef675966cdbc5d75f2bd545fad1914ba9b

v4: no change

v3:
 - update "acspcie0_proxy_ctrl" compatible to "ti,j721e-acspcie-proxy-ctrl"
   since this property is specific to j721e variant.

v2:
 - use generic style comments
 - use "syscon" as generic node name for "acspcie0_proxy_ctrl" node
 - Keep the compatible "ti,j784s4-acspcie-proxy-ctrl" since the
   ACSPCIE buffer and its functionality is the same across all K3 SoCs.
   (Siddharth Vadapalli)

   "The compatible "ti,j784s4-acspcie-pcie-ctrl" should be reused for
   J721E and all other K3 SoCs.
   For example, see:
   https://lore.kernel.org/r/20240402105708.4114146-1-s-vadapalli@ti.com/
   which introduced "ti,am62p-cpsw-mac-efuse" compatible.

   The same compatible is reused across all K3 SoCs:
   https://lore.kernel.org/r/20240628151518.40100-1-afd@ti.com/ "
---
 arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts |  5 +++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi          | 10 ++++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
index fb899c99753e..741ad2ba6fdb 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
@@ -859,6 +859,11 @@ &pcie1_rc {
 	num-lanes = <2>;
 	max-link-speed = <3>;
 	reset-gpios = <&main_gpio0 22 GPIO_ACTIVE_HIGH>;
+	/*
+	 * There is no on-board or external reference clock generators,
+	 * use refclk from the ACSPCIE module's PAD IO Buffers.
+	 */
+	ti,syscon-acspcie-proxy-ctrl = <&acspcie0_proxy_ctrl 0x3>;
 };
 
 &ufs_wrapper {
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index af3d730154ac..32a232a90100 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -5,6 +5,7 @@
  * Copyright (C) 2016-2024 Texas Instruments Incorporated - https://www.ti.com/
  */
 #include <dt-bindings/phy/phy.h>
+#include <dt-bindings/phy/phy-cadence.h>
 #include <dt-bindings/phy/phy-ti.h>
 #include <dt-bindings/mux/mux.h>
 
@@ -82,6 +83,11 @@ ehrpwm_tbclk: clock-controller@4140 {
 			reg = <0x4140 0x18>;
 			#clock-cells = <1>;
 		};
+
+		acspcie0_proxy_ctrl: syscon@18090 {
+			compatible = "ti,j721e-acspcie-proxy-ctrl", "syscon";
+			reg = <0x18090 0x4>;
+		};
 	};
 
 	main_ehrpwm0: pwm@3000000 {
@@ -979,8 +985,8 @@ pcie1_rc: pcie@2910000 {
 		max-link-speed = <3>;
 		num-lanes = <2>;
 		power-domains = <&k3_pds 240 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 240 1>;
-		clock-names = "fck";
+		clocks = <&k3_clks 240 1>, <&serdes1 CDNS_SIERRA_DERIVED_REFCLK>;
+		clock-names = "fck", "pcie_refclk";
 		#address-cells = <3>;
 		#size-cells = <2>;
 		bus-range = <0x0 0xff>;
-- 
2.47.1


