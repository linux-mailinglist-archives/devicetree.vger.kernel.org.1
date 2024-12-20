Return-Path: <devicetree+bounces-133135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 377B29F95E9
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 16:58:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89594162070
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D893218E9F;
	Fri, 20 Dec 2024 15:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="UuUXm0VH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15591.qiye.163.com (mail-m15591.qiye.163.com [101.71.155.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279951CAAC;
	Fri, 20 Dec 2024 15:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734710331; cv=none; b=TWoOJUNHU4+BcW2nKQY+c04BjahMoYizRXCUjAmpWq0rOvK4AsDX6I9i1Fbxk/j9nX/K+n0l9phdpviJngTBYGhQ/1L3xt4Aipzb7/7MWI+fL2nNvrLREJt8o/Aw7zJnlmuai+byZyecGSD5YVTmJkQQM35xUBp6otZCEcW4cI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734710331; c=relaxed/simple;
	bh=BAV0hkgdzA//+bJdTGreuzbdz2rfu+SBNmFUWSWM40g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cCtmCYIIYfaD0tgXDIAsfRluKEEBnI5YPJ0jgSWlC8tCfzxaKf3V/3EIh/UNdmCOGR4DgWp95bRv1NFBeXL4FoXAJGSSHJEx4DEElgI51wyGETCef73EoFtAijNiyDPmje/eUK8hiwXP1560zbsEW4duSJ2TzLQEJv9O6pFqNRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=UuUXm0VH; arc=none smtp.client-ip=101.71.155.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 655ee90c;
	Fri, 20 Dec 2024 18:15:57 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Liang Chen <cl@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/7] dts: arm64: rockchip: Add rk3576 pcie nodes
Date: Fri, 20 Dec 2024 18:15:47 +0800
Message-Id: <20241220101551.3505917-4-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220101551.3505917-1-kever.yang@rock-chips.com>
References: <20241220101551.3505917-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh8fGlZLHklCHUJKGkxMGk1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3911acb03afkunm655ee90c
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6KzI6Phw6QzIRKggOTzwWMjBJ
	PxYwCRhVSlVKTEhPTUNCTE5CSk9MVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFPQ0hLNwY+
DKIM-Signature:a=rsa-sha256;
	b=UuUXm0VHRX58wbRL2GMiz2F0mB4MMiJHHx3JiuJcvm1SB/BDEqTo/drGUK2vRDS3Ur9OUJXTb+kSGeVqNk2PKWY1eELLWgxHapx0MSE6ISOtS1KNAI6jPnIxNEsrgJCbg/oZtA3B1ZyJCUR2izJ1RNGpgUrEZFm32fehs1/9nM0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=LiK/7LmrX6YsTFgcLOIvXOOrUibwxlBrBEtzpgtsI6c=;
	h=date:mime-version:subject:message-id:from;

rk3576 has two pcie controller, both are pcie2x1 used with
naneng-combphy.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v2:
- Update clock and reset names and sequence to pass DTB check

 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 109 +++++++++++++++++++++++
 1 file changed, 109 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index a147879da501..df7dfe702221 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1016,6 +1016,115 @@ qos_npu_m1ro: qos@27f22100 {
 			reg = <0x0 0x27f22100 0x0 0x20>;
 		};
 
+		pcie0: pcie@2a200000 {
+			compatible = "rockchip,rk3576-pcie", "rockchip,rk3568-pcie";
+			bus-range = <0x0 0xf>;
+			clocks = <&cru ACLK_PCIE0_MST>, <&cru ACLK_PCIE0_SLV>,
+				 <&cru ACLK_PCIE0_DBI>, <&cru PCLK_PCIE0>,
+				 <&cru CLK_PCIE0_AUX>;
+
+			clock-names = "aclk_mst", "aclk_slv",
+				      "aclk_dbi", "pclk",
+				      "aux";
+			device_type = "pci";
+			interrupts = <GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 279 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 280 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 278 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "sys", "pmc", "msg", "legacy", "err", "msi";
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0 0 0 1 &pcie0_intc 0>,
+					<0 0 0 2 &pcie0_intc 1>,
+					<0 0 0 3 &pcie0_intc 2>,
+					<0 0 0 4 &pcie0_intc 3>;
+			linux,pci-domain = <0>;
+			num-ib-windows = <8>;
+			num-viewport = <8>;
+			num-ob-windows = <2>;
+			max-link-speed = <2>;
+			num-lanes = <1>;
+			phys = <&combphy0_ps PHY_TYPE_PCIE>;
+			phy-names = "pcie-phy";
+			power-domains = <&power RK3576_PD_PHP>;
+			ranges = <0x01000000 0x0 0x20100000 0x0 0x20100000 0x0 0x00100000
+				  0x02000000 0x0 0x20200000 0x0 0x20200000 0x0 0x00e00000
+				  0x03000000 0x9 0x00000000 0x9 0x00000000 0x0 0x80000000>;
+			reg = <0x0 0x22000000 0x0 0x00400000>,
+			      <0x0 0x2a200000 0x0 0x00010000>,
+			      <0x0 0x20000000 0x0 0x00100000>;
+			reg-names = "dbi", "apb", "config";
+			resets = <&cru SRST_PCIE0_POWER_UP>, <&cru SRST_P_PCIE0>;
+			reset-names = "pwr", "pipe";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			status = "disabled";
+
+			pcie0_intc: legacy-interrupt-controller {
+				interrupt-controller;
+				#address-cells = <0>;
+				#interrupt-cells = <1>;
+				interrupt-parent = <&gic>;
+				interrupts = <GIC_SPI 280 IRQ_TYPE_EDGE_RISING>;
+			};
+		};
+
+		pcie1: pcie@2a210000 {
+			compatible = "rockchip,rk3576-pcie", "rockchip,rk3568-pcie";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			bus-range = <0x20 0x2f>;
+			clocks = <&cru ACLK_PCIE1_MST>, <&cru ACLK_PCIE1_SLV>,
+				 <&cru ACLK_PCIE1_DBI>, <&cru PCLK_PCIE1>,
+				 <&cru CLK_PCIE1_AUX>;
+			clock-names = "aclk_mst", "aclk_slv",
+				      "aclk_dbi", "pclk",
+				      "aux";
+			device_type = "pci";
+			interrupts = <GIC_SPI 267 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 264 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "sys", "pmc", "msg", "legacy", "err", "msi";
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0 0 0 1 &pcie1_intc 0>,
+					<0 0 0 2 &pcie1_intc 1>,
+					<0 0 0 3 &pcie1_intc 2>,
+					<0 0 0 4 &pcie1_intc 3>;
+			linux,pci-domain = <0>;
+			num-ib-windows = <8>;
+			num-viewport = <8>;
+			num-ob-windows = <2>;
+			max-link-speed = <2>;
+			num-lanes = <1>;
+			phys = <&combphy1_psu PHY_TYPE_PCIE>;
+			phy-names = "pcie-phy";
+			power-domains = <&power RK3576_PD_SUBPHP>;
+			ranges = <0x01000000 0x0 0x21100000 0x0 0x21100000 0x0 0x00100000
+				  0x02000000 0x0 0x21200000 0x0 0x21200000 0x0 0x00e00000
+				  0x03000000 0x9 0x80000000 0x9 0x80000000 0x0 0x80000000>;
+			reg = <0x0 0x22400000 0x0 0x00400000>,
+			      <0x0 0x2a210000 0x0 0x00010000>,
+			      <0x0 0x21000000 0x0 0x00100000>;
+			reg-names = "dbi", "apb", "config";
+			resets = <&cru SRST_PCIE1_POWER_UP>, <&cru SRST_P_PCIE1>;
+			reset-names = "pwr", "pipe";
+			status = "disabled";
+
+			pcie1_intc: legacy-interrupt-controller {
+				interrupt-controller;
+				#address-cells = <0>;
+				#interrupt-cells = <1>;
+				interrupt-parent = <&gic>;
+				interrupts = <GIC_SPI 266 IRQ_TYPE_EDGE_RISING>;
+			};
+		};
+
 		gmac0: ethernet@2a220000 {
 			compatible = "rockchip,rk3576-gmac", "snps,dwmac-4.20a";
 			reg = <0x0 0x2a220000 0x0 0x10000>;
-- 
2.25.1


