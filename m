Return-Path: <devicetree+bounces-250389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E20ABCE8C22
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 06:59:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F2D13026299
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 05:58:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 463B72E88BD;
	Tue, 30 Dec 2025 05:58:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C8B2F1FE7;
	Tue, 30 Dec 2025 05:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767074294; cv=none; b=qofCJyldj7wZ2Gnz46Uad8mBFBURamVl/ymWcXV2xxPxpyqWM/vqDR5awd40FJzeJjRv0EaaOJwGJpzFK8xsyyah+75L8EHyMVvlnik2+Okhq54SdlgPpMbGN4Dk3FxJ9/Bcl0T0GIkrp2Vd8VLfxJK9AI7W6Sm+Tkqjidv5Bi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767074294; c=relaxed/simple;
	bh=WucACgBEVr41rzAvQJGKyFXe0ozjjV/dKi/l/xqeoAY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=vFNFjHBkiFj584a85peJt9MmgE2aOzpQeIwldFdT8V6Y+EcCPvlDb2OPWv153LH4VRVe9tN5DHy5aJZckXTBVoXEa6DCfw0mhA2b8Y7Nq9OWF10ektbsOPFIC/3kvx8udrRptxK02KO+ii+t0BsnNhREG/2rLtPZvnadiZ/iACU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Tue, 30 Dec
 2025 13:57:59 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Tue, 30 Dec 2025 13:57:59 +0800
From: Jacky Chou <jacky_chou@aspeedtech.com>
Date: Tue, 30 Dec 2025 13:57:59 +0800
Subject: [PATCH v8 2/4] ARM: dts: aspeed-g6: Add PCIe RC and PCIe PHY node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20251230-upstream_pcie_rc-v8-2-03598cdd80cd@aspeedtech.com>
References: <20251230-upstream_pcie_rc-v8-0-03598cdd80cd@aspeedtech.com>
In-Reply-To: <20251230-upstream_pcie_rc-v8-0-03598cdd80cd@aspeedtech.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@codeconstruct.com.au>
CC: <linux-aspeed@lists.ozlabs.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Jacky Chou <jacky_chou@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767074279; l=2703;
 i=jacky_chou@aspeedtech.com; s=20251031; h=from:subject:message-id;
 bh=WucACgBEVr41rzAvQJGKyFXe0ozjjV/dKi/l/xqeoAY=;
 b=kMjFtp+Py35zDp/DX+PpOXplj8HWq9l1/yvPv0El7FhbP40YOMNnVlm6AOBjZ5NvFv5xxR/uu
 d191xsJz2QIBSerQUXnCo6ylSCWgMgxAhJ451I6vNVOSCfWAvQyC16s
X-Developer-Key: i=jacky_chou@aspeedtech.com; a=ed25519;
 pk=8XBx7KFM1drEsfCXTH9QC2lbMlGU4XwJTA6Jt9Mabdo=

The AST2600 has one PCIe RC and add the PCIe PHY for RC.
And add pinctrl support for PCIe RC PERST#.

Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>
---
 arch/arm/boot/dts/aspeed/aspeed-g6-pinctrl.dtsi |  5 +++
 arch/arm/boot/dts/aspeed/aspeed-g6.dtsi         | 53 +++++++++++++++++++++++++
 2 files changed, 58 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-g6-pinctrl.dtsi b/arch/arm/boot/dts/aspeed/aspeed-g6-pinctrl.dtsi
index e87c4b58994a..d46f2047135c 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-g6-pinctrl.dtsi
+++ b/arch/arm/boot/dts/aspeed/aspeed-g6-pinctrl.dtsi
@@ -2,6 +2,11 @@
 // Copyright 2019 IBM Corp.
 
 &pinctrl {
+	pinctrl_pcierc1_default: pcierc1-default {
+		function = "PCIERC1";
+		groups = "PCIERC1";
+	};
+
 	pinctrl_adc0_default: adc0_default {
 		function = "ADC0";
 		groups = "ADC0";
diff --git a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
index f8662c8ac089..dde8f87db2e3 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
@@ -379,6 +379,59 @@ rng: hwrng@1e6e2524 {
 				quality = <100>;
 			};
 
+			pcie_phy1: phy@1e6ed200 {
+				compatible = "aspeed,ast2600-pcie-phy";
+				reg = <0x1e6ed200 0x100>;
+				#phy-cells = <0>;
+
+				status = "disabled";
+			};
+
+			pcie0: pcie@1e770000 {
+				compatible = "aspeed,ast2600-pcie";
+				device_type = "pci";
+				reg = <0x1e770000 0x100>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				interrupts = <GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>;
+				bus-range = <0x00 0xff>;
+
+				ranges = <0x01000000 0x0 0x00018000 0x00018000 0x0 0x00008000
+					  0x02000000 0x0 0x60000000 0x60000000 0x0 0x20000000>;
+
+				status = "disabled";
+
+				resets = <&syscon ASPEED_RESET_H2X>;
+				reset-names = "h2x";
+
+				#interrupt-cells = <1>;
+				msi-controller;
+
+				aspeed,ahbc = <&ahbc>;
+
+				interrupt-controller;
+				interrupt-map-mask = <0 0 0 7>;
+				interrupt-map = <0 0 0 1 &pcie0 0>,
+						<0 0 0 2 &pcie0 1>,
+						<0 0 0 3 &pcie0 2>,
+						<0 0 0 4 &pcie0 3>;
+
+				pcie@8,0 {
+					compatible = "pciclass,0604";
+					reg = <0x00004000 0 0 0 0>;
+					#address-cells = <3>;
+					#size-cells = <2>;
+					device_type = "pci";
+					resets = <&syscon ASPEED_RESET_PCIE_RC_O>;
+					reset-names = "perst";
+					clocks = <&syscon ASPEED_CLK_GATE_BCLK>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_pcierc1_default>;
+					phys = <&pcie_phy1>;
+					ranges;
+				};
+			};
+
 			gfx: display@1e6e6000 {
 				compatible = "aspeed,ast2600-gfx", "syscon";
 				reg = <0x1e6e6000 0x1000>;

-- 
2.34.1


