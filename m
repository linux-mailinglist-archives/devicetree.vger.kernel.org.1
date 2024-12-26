Return-Path: <devicetree+bounces-134130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 607949FCC7C
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 18:35:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB142162486
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 17:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4175A82D66;
	Thu, 26 Dec 2024 17:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="NPO/7X2H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA770182CD
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 17:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735234547; cv=none; b=YumhWsGEYsxURObwEN8TLip9K6bVJeFPLzjgCDRchqU940WYAuc6EIjQVH+9qmpJ1RaIoUXNx+utNUJof0kiuM/wlwc8V/qPmFy8KJK1lWv2s7/K/z2R2db1YLMGTFz+TA/Follm1b7LPNj35zlolLxxeE2FH49/VbOiCnJblzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735234547; c=relaxed/simple;
	bh=UJt6E4jjr2RjmIgAcBGPUEOamnVldWr/p98B77Px2S8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aew8h6ND9IZ/rY7kzyEjMhd6cnZV4SZLdcgllvZVuLj2uBAS/Xp0MDIYjaYGubrlLd2LMnyRCFCZQywOqy8RBttaAQaT6NUzB/3cWN2TLqjP8uCKhW7uQ7urmAKOihhOk3GECrd72MCucisnhNHUYBovkA733Y1mDt9jusvaXbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai; spf=none smtp.mailfrom=edgeble.ai; dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b=NPO/7X2H; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=edgeble.ai
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2163bd70069so76747135ad.0
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 09:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735234545; x=1735839345; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X1dTeAMm/wW0dtPQtk6JGdAaI2aq0m9euZXSH3QbeHI=;
        b=NPO/7X2HNJdFQ9sCULnGqPgIwsP+YXbCudxJcuL3NEttLBbizLFoFneiCGrr1gjpuO
         dDp3CQq1BaMEDX+7LoKuaS0IXuAMil9YL3Sw5A4CX2ZGmqbNbJxBvBuiI4k58h3Iix1S
         stO3Fz/mA9/jxJysJ0NtEB9mFYtRL69uq9GF1JI7PsHd5lHVGreFfK0X/xThesPalyOr
         qkRjIYTr8Xf+4xuUExY4gzYXPBVvcCvut1dmOcA1rMEVHv3Mj0YcJkh33U0vpgxpZTq/
         jO/KWApYhT3MPtHDGL4ybt5HgGpSbMkvQAAdEKP8PYqVAgsYXwQ6KhFKNQu9eiVHsuqs
         VT4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735234545; x=1735839345;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X1dTeAMm/wW0dtPQtk6JGdAaI2aq0m9euZXSH3QbeHI=;
        b=AzKkCmZFHTtr+N8zJuCGpOoC+ifOy9oKsSiBi9aJJwc+jtqrlKcOKjJqNA/wUwP4NP
         RQ5IPn8IrPQT6QceNsE0144CLigU/yy6ePmDzvWT+IwV8g/e75mBWFPldOX65G2GVDjZ
         3zNdaionBNWE9SUu0jGjSqKy5VaxAyEJeErHABOJKZIT7RDT1lnzC50zfkQSBq1GnF6o
         Fuo8Q4tKqa+EhKd3msiP9XRxflLokz6S6qKtjB3STwJx31UpQHpkZUQw8HGs6N5H8MTS
         JFuUgP/kEZw3nW8ENDm8ZQfbCIOc+4Dmn/fcNRuYL4y9Vn8pFxAZmmFRZ3MNsyieIVfj
         ImGA==
X-Forwarded-Encrypted: i=1; AJvYcCXB030Qcrs+rCFNLCChop/WmQxMoQoi01bNfekW+p80YUVqoyYG6yyqS4W+xWB5tEglSVEk+NMygYOD@vger.kernel.org
X-Gm-Message-State: AOJu0YzS351csA5tH61PZbem3aRsLic6cNC9pVBAmwWpl5Pt3uhiDCom
	iDpPICq++zvtqEztulps8LOWUk0D658eXcmLhRwdygB1uA0nEoYtHxw48NAsk+U=
X-Gm-Gg: ASbGncu5suvmNtqjK+FDf4rEYP390YCMi8Lt++jEr1sBkJdgZCBvqT6DW1lFH8xl+rm
	n5QRMEOeX+JgZCu5Ms5wYBjy5ZVWqN4tqVbApiIl3VPtso41elyLJw6zI4ewSjTmTIQ20/GqHCi
	vBPrfDSq1CC2AMhWE3WGJR57PVoe22gKgIr+d3YHycgWVLNN9mbovq9AGzjtyXNmmahwXoHDmj4
	M9AZkYEtUH7LrpEvOKH2PXJ9zkSL5vX/8/N/TYCwuryu+xJU1UY+KK0fj2x7mtwIYgHNeZ/
X-Google-Smtp-Source: AGHT+IEIRjkv8xpdBRFHNmeOGEm+9+EQ5icIZIC9cV5XUaKkB1G4eZT7R8atLlQBaeefj8JDRZndLQ==
X-Received: by 2002:a17:902:ef12:b0:216:52a5:dd41 with SMTP id d9443c01a7336-219e6ec13bcmr374141345ad.31.1735234544922;
        Thu, 26 Dec 2024 09:35:44 -0800 (PST)
Received: from tops-ThinkPad-E14-Gen-5.. ([2405:201:c00a:a918:ba33:f9a0:ac68:19f])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f4477c8461sm14281147a91.13.2024.12.26.09.35.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 09:35:44 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 1/2] arm64: dts: rockchip: Add HDMI1 node to rk3588
Date: Thu, 26 Dec 2024 23:05:29 +0530
Message-Id: <20241226173530.37037-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

HDMI1 Output is available RK3588 (not for RK3588S).

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Note: As of 1080p display is working

 .../arm64/boot/dts/rockchip/rk3588-extra.dtsi | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
index ead151941e84..66bf5e780382 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
@@ -67,6 +67,11 @@ u2phy1_otg: otg-port {
 		};
 	};
 
+	hdptxphy1_grf: syscon@fd5e4000 {
+		compatible = "rockchip,rk3588-hdptxphy-grf", "syscon";
+		reg = <0x0 0xfd5e4000 0x0 0x100>;
+	};
+
 	i2s8_8ch: i2s@fddc8000 {
 		compatible = "rockchip,rk3588-i2s-tdm";
 		reg = <0x0 0xfddc8000 0x0 0x1000>;
@@ -135,6 +140,47 @@ i2s10_8ch: i2s@fde00000 {
 		status = "disabled";
 	};
 
+	hdmi1: hdmi@fdea0000 {
+		compatible = "rockchip,rk3588-dw-hdmi-qp";
+		reg = <0x0 0xfdea0000 0x0 0x20000>;
+		clocks = <&cru PCLK_HDMITX1>,
+			 <&cru CLK_HDMITX1_EARC>,
+			 <&cru CLK_HDMITX1_REF>,
+			 <&cru MCLK_I2S6_8CH_TX>,
+			 <&cru CLK_HDMIHDP1>,
+			 <&cru HCLK_VO1>;
+		clock-names = "pclk", "earc", "ref", "aud", "hdp", "hclk_vo1";
+		interrupts = <GIC_SPI 173 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 175 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 361 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "avp", "cec", "earc", "main", "hpd";
+		phys = <&hdptxphy_hdmi1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdmim2_tx1_cec &hdmim0_tx1_hpd
+			     &hdmim1_tx1_scl &hdmim1_tx1_sda>;
+		power-domains = <&power RK3588_PD_VO1>;
+		resets = <&cru SRST_HDMITX1_REF>, <&cru SRST_HDMIHDP1>;
+		reset-names = "ref", "hdp";
+		rockchip,grf = <&sys_grf>;
+		rockchip,vo-grf = <&vo1_grf>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi1_in: port@0 {
+				reg = <0>;
+			};
+
+			hdmi1_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
 	pcie3x4: pcie@fe150000 {
 		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
 		#address-cells = <3>;
@@ -400,6 +446,22 @@ sata-port@0 {
 		};
 	};
 
+	hdptxphy_hdmi1: phy@fed70000 {
+		compatible = "rockchip,rk3588-hdptx-phy";
+		reg = <0x0 0xfed70000 0x0 0x2000>;
+		clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>, <&cru PCLK_HDPTX1>;
+		clock-names = "ref", "apb";
+		#phy-cells = <0>;
+		resets = <&cru SRST_HDPTX1>, <&cru SRST_P_HDPTX1>,
+			 <&cru SRST_HDPTX1_INIT>, <&cru SRST_HDPTX1_CMN>,
+			 <&cru SRST_HDPTX1_LANE>, <&cru SRST_HDPTX1_ROPLL>,
+			 <&cru SRST_HDPTX1_LCPLL>;
+		reset-names = "phy", "apb", "init", "cmn", "lane", "ropll",
+			      "lcpll";
+		rockchip,grf = <&hdptxphy1_grf>;
+		status = "disabled";
+	};
+
 	usbdp_phy1: phy@fed90000 {
 		compatible = "rockchip,rk3588-usbdp-phy";
 		reg = <0x0 0xfed90000 0x0 0x10000>;
-- 
2.34.1


