Return-Path: <devicetree+bounces-220651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 241AFB99009
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 10:57:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 25425189979E
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 08:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26C0A280014;
	Wed, 24 Sep 2025 08:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jz6U1BwB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4074B2557A
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 08:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758704240; cv=none; b=qmbdgg9fcel4NNWWFLEC2jyJBs8KdlkusgyGAN05R4f8QenwOf1RVoSwA2nLpRo6BDwnXA2qZ0Gkuw/9j1o2mEZKrmODvcU7ACVXf9yN5O7ehRvAxJ0ktScMQROZJR2MiXeaUHqlLl6Z3VfYL9OT1YNZWIKgN+Qhg3v6vSU4W6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758704240; c=relaxed/simple;
	bh=DIKbNpnK7q4RS/XBb4XBFGTsl22nIiTPd0hpMkgOXIU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uam0LsI8SoYom9HtY8kLfwrZavieuXU1pSxet0sz4D713aNc76C3gLqC97pF9qcdplGzbtvwtInxxiPGW2okp6mNZc8L42tQefGkqAUDfIQ3laph/UhJi5cG24uISOwxlAp0gut8v4/y6M+VGvnd1trp8Tg/GyA0nBk8tPC342s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jz6U1BwB; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3ee13baf2e1so4899626f8f.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 01:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758704236; x=1759309036; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eZQABsAhaZWnP99sKJ2d/XVXhqpQHgXWFC6THB6jVzE=;
        b=jz6U1BwBPwgcarsABMuKfUfso4+G6onVdbkAOTbDJYA2m2IVNpDuicussExmOiTLSi
         vaQbervaB/Xye+7qY/P468J0/Mt/iEF/iSGL+pY2ys2SKohnkjV+mXBAd35CAb2xTUtw
         72cgyXfAGpHjZXsyLbnr21m93SEu+K7eB1YchGjRT2xO+9YgEC9EvzqT/iP4cwiV+fWN
         sGysK/4O1G4xmnY7xB1NhRIQOOBFA3pIIfyb7ml1YZPVMNHj2vB3fby2kmUATEimW9Kg
         MTA9rNEmfaw4EXFyENNce5Adva8O0yRdYB3BxkvAN35tQCnmiHowZSKpt3ZDq1rdYt7q
         zAcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758704236; x=1759309036;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eZQABsAhaZWnP99sKJ2d/XVXhqpQHgXWFC6THB6jVzE=;
        b=dru1kjrDiYLr3T5G6UO4PAm13YevDssCemA7e4wLTBxtz/eEFmR9qPkAUgSMjmJQ0J
         DDtSEe4z7gjDbrJvxukTIG9Whv+2Ff0Vahr4wSQba3nyRIc9syET1FlqhsUPMWoBwnl2
         Z09x2e/iDEUYGJT4Jp0hb2DSmgIAj5EEfQC8r+INxXFlRLsMmS9wx21qyk3wp+JBTu4A
         zX5TWqakx8wM+mxcjcZ58Sec5hZB2kCMRb5UEg4QenrqvgbANpbuXSva9KY3fw1P2wYZ
         VPTtSCVRXqFchOKcdSEYJUF4Pci1t6i0ax/bFaykC40U1DXUG0otgtnqus1fN6uP40zu
         ZS+g==
X-Forwarded-Encrypted: i=1; AJvYcCU6fTzFSvCmahhM19MBRwa/6oLrhnJ9VdCA4/KktTXFrlumGG69GcAD6nfTwS+MljzVX36NptTRhvLR@vger.kernel.org
X-Gm-Message-State: AOJu0YyBT38+YBGG98sHh4DB3a/nuFm31yr+sxLTCODWZt344zlkttEw
	9U/2HF977JxkDBrc8m4BZLVX2fHPmuP5TCPuon1qYQuAl7avzZnURO2/
X-Gm-Gg: ASbGncs4LRM7hae0uUzAaEbq/1xA90yQ6paERLk/Hutze+JYY02Xf+dHsqXFUjqTCp6
	uiIp/qBfVZbj62gRBz2G9kYb5knmaHLo3MLfTGaoLKUR8/BNCY+DSwtgXF3nGFqQJV/iT41RGiO
	7kLS6W1RUl9i3YBhKjvZeLtAPLnqQuHz9BShPUBiVcJk5nlNJ7xjPw5fjTweRE3dgxTV79YLIPm
	NEm8PRH0rBVWGdSZz1C4lTV4swrVvD4zQMxwtS9jwl4dNnjrU+2B69PdN69qB76NPo9KyaLUNZD
	xGVSqlShSITfGr9xUu1IzORwWTbWZTWojvKiRPcjKQFQxcgU/fKB0L3Ddo2lmM60QfYDQ4uFavG
	ZSTbwCaAgoZNx1Se7uBLht5QrLvBwTovOOpUgxCvQLSZGdAz0GA58MXvEDvVCUZrtiuCFLbWxQr
	g=
X-Google-Smtp-Source: AGHT+IFAQVVTJqXg5yQs/+ThozMRcqlcagwTBEK9LUVVXAD4FsHijd48Q5FjgS30xwZwFRzrUjXWUA==
X-Received: by 2002:a05:6000:2c02:b0:401:8707:8a57 with SMTP id ffacd0b85a97d-405cb3e5b79mr4129430f8f.55.1758704236275;
        Wed, 24 Sep 2025 01:57:16 -0700 (PDT)
Received: from cypher.home.roving-it.com (82-132-239-193.dab.02.net. [82.132.239.193])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3ee07407cffsm26997622f8f.16.2025.09.24.01.57.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 01:57:15 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	Phil Elwell <phil@raspberrypi.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: broadcom: bcm2712: adjust display status
Date: Wed, 24 Sep 2025 09:57:02 +0100
Message-ID: <20250924085712.1040284-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Typically non critical IP in a SoC are disabled by
default in the SoC .dtsi and enabled on board specific
configs. There are usecases, such as some CM5 carrier
boards, where display output may not be desired or
connected. So disable them on the SoC .dtsi and enable
them on the RPi5 board.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: Andrea della Porta <andrea.porta@suse.com>
Fixes: 25d77bdd7df2 ("arm64: dts: broadcom: Add display pipeline support to BCM2712")
---
 .../dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts  | 31 +++++++++++++++++++
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi     | 11 +++++++
 2 files changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
index 6ea3c102e0d67..359c262b8d956 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
@@ -97,19 +97,42 @@ power: power {
 	};
 };
 
+&ddc0 {
+	status = "okay";
+};
+
+&ddc1 {
+	status = "okay";
+};
+
+&disp_intr {
+	status = "okay";
+};
+
 &hvs {
 	clocks = <&firmware_clocks 4>, <&firmware_clocks 16>;
 	clock-names = "core", "disp";
+	status = "okay";
 };
 
 &hdmi0 {
 	clocks = <&firmware_clocks 13>, <&firmware_clocks 14>, <&dvp 0>, <&clk_27MHz>;
 	clock-names = "hdmi", "bvb", "audio", "cec";
+	status = "okay";
 };
 
 &hdmi1 {
 	clocks = <&firmware_clocks 13>, <&firmware_clocks 14>, <&dvp 1>, <&clk_27MHz>;
 	clock-names = "hdmi", "bvb", "audio", "cec";
+	status = "okay";
+};
+
+&mop {
+	status = "okay";
+};
+
+&moplet {
+	status = "okay";
 };
 
 &pcie1 {
@@ -119,3 +142,11 @@ &pcie1 {
 &pcie2 {
 	status = "okay";
 };
+
+&pixelvalve0 {
+	status = "okay";
+};
+
+&pixelvalve1 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 4cae17c04b50a..4cd51d80d40d0 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -287,12 +287,14 @@ pixelvalve0: pixelvalve@7c410000 {
 			compatible = "brcm,bcm2712-pixelvalve0";
 			reg = <0x7c410000 0x100>;
 			interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
 		};
 
 		pixelvalve1: pixelvalve@7c411000 {
 			compatible = "brcm,bcm2712-pixelvalve1";
 			reg = <0x7c411000 0x100>;
 			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
 		};
 
 		mop: mop@7c500000 {
@@ -300,6 +302,7 @@ mop: mop@7c500000 {
 			reg = <0x7c500000 0x28>;
 			interrupt-parent = <&disp_intr>;
 			interrupts = <1>;
+			status = "disabled";
 		};
 
 		moplet: moplet@7c501000 {
@@ -307,6 +310,7 @@ moplet: moplet@7c501000 {
 			reg = <0x7c501000 0x20>;
 			interrupt-parent = <&disp_intr>;
 			interrupts = <0>;
+			status = "disabled";
 		};
 
 		disp_intr: interrupt-controller@7c502000 {
@@ -315,6 +319,7 @@ disp_intr: interrupt-controller@7c502000 {
 			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-controller;
 			#interrupt-cells = <1>;
+			status = "disabled";
 		};
 
 		dvp: clock@7c700000 {
@@ -333,6 +338,7 @@ ddc0: i2c@7d508200 {
 			clock-frequency = <97500>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			status = "disabled";
 		};
 
 		ddc1: i2c@7d508280 {
@@ -343,6 +349,7 @@ ddc1: i2c@7d508280 {
 			clock-frequency = <97500>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			status = "disabled";
 		};
 
 		bsc_irq: interrupt-controller@7d508380 {
@@ -388,6 +395,7 @@ hdmi0: hdmi@7c701400 {
 			interrupt-names = "cec-tx", "cec-rx", "cec-low",
 					  "hpd-connected", "hpd-removed";
 			ddc = <&ddc0>;
+			status = "disabled";
 		};
 
 		hdmi1: hdmi@7c706400 {
@@ -417,6 +425,7 @@ hdmi1: hdmi@7c706400 {
 			interrupt-names = "cec-tx", "cec-rx", "cec-low",
 					  "hpd-connected", "hpd-removed";
 			ddc = <&ddc1>;
+			status = "disabled";
 		};
 	};
 
@@ -439,6 +448,7 @@ axi: axi {
 
 		vc4: gpu {
 			compatible = "brcm,bcm2712-vc6";
+			status = "disabled";
 		};
 
 		pcie0: pcie@1000100000 {
@@ -611,5 +621,6 @@ hvs: hvs@107c580000 {
 		interrupt-parent = <&disp_intr>;
 		interrupts = <2>, <9>, <16>;
 		interrupt-names = "ch0-eof", "ch1-eof", "ch2-eof";
+		status = "disabled";
 	};
 };
-- 
2.51.0


