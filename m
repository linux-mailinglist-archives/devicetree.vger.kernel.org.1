Return-Path: <devicetree+bounces-64167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A22428B8480
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 05:39:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 619D6283C4B
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 03:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74AF022097;
	Wed,  1 May 2024 03:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="YQ1KQucJ"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9451433E1
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 03:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714534755; cv=none; b=hoJablHE538lnQ7R0yF5f8av1pj4EoN83BwGnc9TGliCRgeQu+JTrSTReYZZOssBMoOeIgkW2T7YWYiavii4Um+i19wlf4CbcUb1TqJBfHT/9hA57u3wryntNXdt7iu2UE+IRanFLVvjqSpBZlYK9UR0L8+O8ybhzIFy5G8hvuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714534755; c=relaxed/simple;
	bh=dvhBjKBcPUz269brIvkZDthuqZA64s8rx8FCG1g1cQ4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=iXeE9ZD7apEVMtXSHwyRqngRyXdonFxhQ3+VoYWqaXyRR2Fv7I/fzCB9hVsgQT4iS8NuGFB4t2oPHURwPXMXTDo1IB4+VcdSo0BTpHEjIknGaXO0AuICmGTf3fmRMr7JkHO1mmIIK4ovd29XssIEB3RtbShFSwnxOowf1m0h4MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=YQ1KQucJ; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
Received: by codeconstruct.com.au (Postfix, from userid 10000)
	id E5A252019F; Wed,  1 May 2024 11:39:10 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1714534750;
	bh=7oapRTJqY1YXZtznldlbQ7h2355L4bGDZc4nRiSauP4=;
	h=From:To:Cc:Subject:Date;
	b=YQ1KQucJ/pFDSVQg0EWK5MfNJughorP+ElJ/JSXhdug4zwo6gSF8d1ZkzUghrb1/G
	 wfzbmCRrG9Ywsy5Ie41m9HZNNIvh+SrOi0CWf4BleYMQLId5nHz30qySVg8e877IrD
	 TNhfHcXkWN93W7GrzisnYZpQTr74rWJYfGxuz3TYxtzAC4+ZpvqO05tAPl88g64kNE
	 pvQMJrfnZvRAj1vo4qWKDAVcWxahyImYIof9EoSMqLeKox7G54/W7yjsxtblKH+szt
	 hQaiXmbPxS8na+fz9hf8BJ2FMLB+LjoH5IUvuDGNrOl5ZczV0H7J4xszmLvb7G1dhK
	 6lT90XSMp3XVw==
From: Jeremy Kerr <jk@codeconstruct.com.au>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Joel Stanley <joel@jms.id.au>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: [PATCH] ARM: dts: aspeed-g6: Add nodes for i3c controllers
Date: Wed,  1 May 2024 11:38:32 +0800
Message-Id: <20240501033832.1529340-1-jk@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the i3c controller devices to the ast2600 g6 common dts. We add all
6 busses to the common g6 definition, but leave disabled through the
status property, to be enabled per-platform.

Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
---
 arch/arm/boot/dts/aspeed/aspeed-g6.dtsi | 93 +++++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
index 29f94696d8b1..f9d01599a965 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
@@ -866,6 +866,13 @@ i2c: bus@1e78a000 {
 				ranges = <0 0x1e78a000 0x1000>;
 			};
 
+			i3c: bus@1e7a0000 {
+				compatible = "simple-bus";
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0 0x1e7a0000 0x8000>;
+			};
+
 			fsim0: fsi@1e79b000 {
 				compatible = "aspeed,ast2600-fsi-master", "fsi-master";
 				reg = <0x1e79b000 0x94>;
@@ -1125,3 +1132,89 @@ i2c15: i2c-bus@800 {
 		status = "disabled";
 	};
 };
+
+&i3c {
+	i3c_global: i3c-global {
+		compatible = "aspeed,ast2600-i3c-global", "syscon", "simple-mfd";
+		reg = <0x0 0x1000>;
+		resets = <&syscon ASPEED_RESET_I3C_DMA>;
+	};
+
+	i3c0: i3c@2000 {
+		compatible = "aspeed,ast2600-i3c";
+		reg = <0x2000 0x1000>;
+		#address-cells = <3>;
+		#size-cells = <0>;
+		clocks = <&syscon ASPEED_CLK_GATE_I3C0CLK>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_i3c1_default>;
+		interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
+		aspeed,global-regs = <&i3c_global 0>;
+		status = "disabled";
+	};
+
+	i3c1: i3c@3000 {
+		compatible = "aspeed,ast2600-i3c";
+		reg = <0x3000 0x1000>;
+		#address-cells = <3>;
+		#size-cells = <0>;
+		clocks = <&syscon ASPEED_CLK_GATE_I3C1CLK>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_i3c2_default>;
+		interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
+		aspeed,global-regs = <&i3c_global 1>;
+		status = "disabled";
+	};
+
+	i3c2: i3c@4000 {
+		compatible = "aspeed,ast2600-i3c";
+		reg = <0x4000 0x1000>;
+		#address-cells = <3>;
+		#size-cells = <0>;
+		clocks = <&syscon ASPEED_CLK_GATE_I3C2CLK>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_i3c3_default>;
+		interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>;
+		aspeed,global-regs = <&i3c_global 2>;
+		status = "disabled";
+	};
+
+	i3c3: i3c@5000 {
+		compatible = "aspeed,ast2600-i3c";
+		reg = <0x5000 0x1000>;
+		#address-cells = <3>;
+		#size-cells = <0>;
+		clocks = <&syscon ASPEED_CLK_GATE_I3C3CLK>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_i3c4_default>;
+		interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
+		aspeed,global-regs = <&i3c_global 3>;
+		status = "disabled";
+	};
+
+	i3c4: i3c@6000 {
+		compatible = "aspeed,ast2600-i3c";
+		reg = <0x6000 0x1000>;
+		#address-cells = <3>;
+		#size-cells = <0>;
+		clocks = <&syscon ASPEED_CLK_GATE_I3C4CLK>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_i3c5_default>;
+		interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+		aspeed,global-regs = <&i3c_global 4>;
+		status = "disabled";
+	};
+
+	i3c5: i3c@7000 {
+		compatible = "aspeed,ast2600-i3c";
+		reg = <0x7000 0x1000>;
+		#address-cells = <3>;
+		#size-cells = <0>;
+		clocks = <&syscon ASPEED_CLK_GATE_I3C5CLK>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_i3c6_default>;
+		interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
+		aspeed,global-regs = <&i3c_global 5>;
+		status = "disabled";
+	};
+};
-- 
2.39.2


