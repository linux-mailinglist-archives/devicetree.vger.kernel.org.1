Return-Path: <devicetree+bounces-64530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5B68B99CD
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 13:10:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 951AF287D5C
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 11:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA4736026A;
	Thu,  2 May 2024 11:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="KovtREGb"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CCC60263
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 11:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714648254; cv=none; b=u7EdsoqETl86DFg1YLmwqQjaISVlv/Tum9vjw18mxsq6cNFCs+aRmEHk0MEiuqKptL5i4/JlrtXHDkJX4PBPzr4faQ4eb0SGRq1kJbGIHvABG1JkT8TkSJyOXujoQt9TlSMyTrFQN3PgHY5QCCQm6WzQDmC/D2aqDtbpFjGpuR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714648254; c=relaxed/simple;
	bh=0fOGPd3mWRtHtPySwf5oXwkKNAj6/zxymWFs3abo9i4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FJZ6tkLuNy4o2aPCciZLWN37pLwJEyFCgVjsMRDT/MDAJCZRQj58bPtN6o1t3C6veJ7W3bSu8azWFt35x3740mFluPRAP5YMAvdKLx+L0y2+KQAn3y9PROwSppQpa8tFKkURoCHRcadoRAmhetEiBMS8mBjbSfKQpAlTlR/OJyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=KovtREGb; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
Received: by codeconstruct.com.au (Postfix, from userid 10000)
	id 5882D20179; Thu,  2 May 2024 19:10:51 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1714648251;
	bh=pzjwr6sAiFLElksw1HzusJ+TA1ufzUQRI7ekIHV8muw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=KovtREGb7H/zxtM7ce2TSigrTq7su7V5xR+JwqxVir0h0WsZOOmY0K5HOkjcFARqs
	 s0N0HodhVKtlgNVX1i5Q01Uhu0ol9DiVmjSy1DyIWqoyrSSJ4p0+9X5g7rIgOdtig+
	 YFRVDFmYv97WrJRxgvj2gH+XydhDZVU0kCBMMrf6xrvqP7bwnHDUS5KWZrOnNE2f/M
	 XRdx5/DfwoPrfAdh5Kq5fosS8TBaEvKwxWCNbp7hfhnqRGZP1hGPw+eQkKVMNT8tPb
	 hWQCLfNtiN9U1z+F9OII50xpq7IiQhiVkr0UlbMGjWUlSaMP/b9fwH4is9f9st7UGx
	 SxqRo7klnVzQQ==
From: Jeremy Kerr <jk@codeconstruct.com.au>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Joel Stanley <joel@jms.id.au>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: [PATCH v2 2/2] arm: dts: aspeed-g6: Add nodes for i3c controllers
Date: Thu,  2 May 2024 19:10:25 +0800
Message-Id: <85fa87f3b75eb1d0796925f2f4b92ddef7464971.1714647917.git.jk@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <9d8c03d742fa9767f30e23d75ddf0baf4296c88e.1714647917.git.jk@codeconstruct.com.au>
References: <9d8c03d742fa9767f30e23d75ddf0baf4296c88e.1714647917.git.jk@codeconstruct.com.au>
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

--
v2:
 - use inline bus representation, without the i3c: label
---
 arch/arm/boot/dts/aspeed/aspeed-g6.dtsi | 94 +++++++++++++++++++++++++
 1 file changed, 94 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
index 96ceb08cf0cb..5d8f4e752912 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
@@ -1092,6 +1092,100 @@ i2c15: i2c-bus@800 {
 				};
 			};
 
+			/* i3c mapping, containing global & per-controller
+			 * register sets */
+			bus@1e7a0000 {
+				compatible = "simple-bus";
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0 0x1e7a0000 0x8000>;
+
+				i3c_global: i3c-global {
+					compatible = "aspeed,ast2600-i3c-global",
+						   "syscon", "simple-mfd";
+					reg = <0x0 0x1000>;
+					resets = <&syscon ASPEED_RESET_I3C_DMA>;
+				};
+
+				i3c0: i3c@2000 {
+					compatible = "aspeed,ast2600-i3c";
+					reg = <0x2000 0x1000>;
+					#address-cells = <3>;
+					#size-cells = <0>;
+					clocks = <&syscon ASPEED_CLK_GATE_I3C0CLK>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i3c1_default>;
+					interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
+					aspeed,global-regs = <&i3c_global 0>;
+					status = "disabled";
+				};
+
+				i3c1: i3c@3000 {
+					compatible = "aspeed,ast2600-i3c";
+					reg = <0x3000 0x1000>;
+					#address-cells = <3>;
+					#size-cells = <0>;
+					clocks = <&syscon ASPEED_CLK_GATE_I3C1CLK>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i3c2_default>;
+					interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
+					aspeed,global-regs = <&i3c_global 1>;
+					status = "disabled";
+				};
+
+				i3c2: i3c@4000 {
+					compatible = "aspeed,ast2600-i3c";
+					reg = <0x4000 0x1000>;
+					#address-cells = <3>;
+					#size-cells = <0>;
+					clocks = <&syscon ASPEED_CLK_GATE_I3C2CLK>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i3c3_default>;
+					interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>;
+					aspeed,global-regs = <&i3c_global 2>;
+					status = "disabled";
+				};
+
+				i3c3: i3c@5000 {
+					compatible = "aspeed,ast2600-i3c";
+					reg = <0x5000 0x1000>;
+					#address-cells = <3>;
+					#size-cells = <0>;
+					clocks = <&syscon ASPEED_CLK_GATE_I3C3CLK>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i3c4_default>;
+					interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
+					aspeed,global-regs = <&i3c_global 3>;
+					status = "disabled";
+				};
+
+				i3c4: i3c@6000 {
+					compatible = "aspeed,ast2600-i3c";
+					reg = <0x6000 0x1000>;
+					#address-cells = <3>;
+					#size-cells = <0>;
+					clocks = <&syscon ASPEED_CLK_GATE_I3C4CLK>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i3c5_default>;
+					interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+					aspeed,global-regs = <&i3c_global 4>;
+					status = "disabled";
+				};
+
+				i3c5: i3c@7000 {
+					compatible = "aspeed,ast2600-i3c";
+					reg = <0x7000 0x1000>;
+					#address-cells = <3>;
+					#size-cells = <0>;
+					clocks = <&syscon ASPEED_CLK_GATE_I3C5CLK>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i3c6_default>;
+					interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
+					aspeed,global-regs = <&i3c_global 5>;
+					status = "disabled";
+				};
+			};
+
 			fsim0: fsi@1e79b000 {
 				compatible = "aspeed,ast2600-fsi-master", "fsi-master";
 				reg = <0x1e79b000 0x94>;
-- 
2.39.2


