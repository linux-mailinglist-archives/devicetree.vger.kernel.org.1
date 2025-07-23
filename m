Return-Path: <devicetree+bounces-199043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B475B0F22E
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 14:25:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FBE51C21EBE
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 12:25:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2BF72E765B;
	Wed, 23 Jul 2025 12:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="AMdyYPNl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2832D2E62A7
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 12:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753273447; cv=none; b=EY0Y+/7KNY1R5G8Mq0wOKtkGEfe62d2NfW7s/Zu5szqwHnMz1Tiwxr8p7/rVzynTlqgcLscTiJV/a4O3DGDTIu1FSByrp0c0LwwUDE6chbUgJKLaKm2s0xGcZZzQ94P4uUYScpBJOl46JY8F+F8UH5JnLQOim153veJq4NNZPh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753273447; c=relaxed/simple;
	bh=2Jya7pUfKAWJ/U8l3GPpaZEcvhIGMg4t5jrBtXKZZtU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZwisC2V6QrB0BjWX1P6OaOztBi52I0AoX7cUoF/hNuk/t9KpIOgwvqOMxNaJnEg22h/ZOfukC7waFjFdB8aKE/hLVbK+c1MU0r7fMfXjPYyim90/d0j9csREyARi6YjELfV9Ynh1epb1azg6bv8biIuaS8tB+BT2l0R1ITL6TcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=AMdyYPNl; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753273445; bh=qM2kjDv8yiHdNanOkkqrr4uaRt3f/qugOPAoj2T+6O4=;
 b=AMdyYPNlx1ubu2sWh6v8INEdsTNCH0Bf2frCR0yZ7HgQTAoIWfv3RhvetDzmo1tXrcL/5ghMd
 fGxfMoyGCmfQ4o65WjLZm2YDtN8VxcbI7JUg48XTmOcVuXlNBiReMR+pzHRKfV/l9PKPO6jX/WH
 H1MGmOxyq+Lx+dnlMmjyOlvJ70FLe+QG8AEuq6bOw/OwpK6hWPNZ/gqKkEhsQhBwqWbI7rX1rTD
 Zv9kHzgO7YPEeUxJIBDAcazGM3evFJ+Yfqt1Farp0DqbUOZwpMETfJHb5hwrNRo7hZ/velHqiyq
 U3BIlCyOlbSTTb9pTmcIMAwzivGes5Ol6RFgfP4blBQw==
X-Forward-Email-ID: 6880d460cb0ee86f9731a0f5
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 07/11] arm64: dts: rockchip: Add USB nodes for RK3528
Date: Wed, 23 Jul 2025 12:23:05 +0000
Message-ID: <20250723122323.2344916-8-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250723122323.2344916-1-jonas@kwiboo.se>
References: <20250723122323.2344916-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rockchip RK3528 has one USB 3.0 DWC3 controller, a USB 2.0 EHCI/OHCI
controller and uses a USB2PHY for USB 2.0. The DWC3 controller may also
use the Naneng Combo PHY for USB3.

Add device tree nodes to describe these USB controllers along with the
USB 2.0 PHYs.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
The DWC3 node does not contain any default phys because out of current
and pending supported boards only one board, ROCK 2A, can use USB3.
Remaining boards use the Naneng Combo PHY for PCIe instead of USB3.
---
 arch/arm64/boot/dts/rockchip/rk3528.dtsi | 76 ++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
index 85bc3f5aa2c7..3e51a3f51e05 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
@@ -243,6 +243,29 @@ soc {
 		#address-cells = <2>;
 		#size-cells = <2>;
 
+		usb_host0_xhci: usb@fe500000 {
+			compatible = "rockchip,rk3528-dwc3", "snps,dwc3";
+			reg = <0x0 0xfe500000 0x0 0x400000>;
+			clocks = <&cru CLK_REF_USB3OTG>,
+				 <&cru CLK_SUSPEND_USB3OTG>,
+				 <&cru ACLK_USB3OTG>;
+			clock-names = "ref_clk", "suspend_clk", "bus_clk";
+			interrupts = <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>;
+			power-domains = <&power RK3528_PD_VPU>;
+			resets = <&cru SRST_A_USB3OTG>;
+			dr_mode = "otg";
+			phy_type = "utmi_wide";
+			snps,dis_enblslpm_quirk;
+			snps,dis-del-phy-power-chg-quirk;
+			snps,dis-tx-ipgap-linecheck-quirk;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			snps,dis-u2-freeclk-exists-quirk;
+			snps,parkmode-disable-hs-quirk;
+			snps,parkmode-disable-ss-quirk;
+			status = "disabled";
+		};
+
 		gic: interrupt-controller@fed01000 {
 			compatible = "arm,gic-400";
 			reg = <0x0 0xfed01000 0 0x1000>,
@@ -256,6 +279,30 @@ gic: interrupt-controller@fed01000 {
 			#interrupt-cells = <3>;
 		};
 
+		usb_host0_ehci: usb@ff100000 {
+			compatible = "generic-ehci";
+			reg = <0x0 0xff100000 0x0 0x40000>;
+			clocks = <&cru HCLK_USBHOST>, <&cru HCLK_USBHOST_ARB>,
+				 <&u2phy>;
+			interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&u2phy_host>;
+			phy-names = "usb";
+			power-domains = <&power RK3528_PD_VO>;
+			status = "disabled";
+		};
+
+		usb_host0_ohci: usb@ff140000 {
+			compatible = "generic-ohci";
+			reg = <0x0 0xff140000 0x0 0x40000>;
+			clocks = <&cru HCLK_USBHOST>, <&cru HCLK_USBHOST_ARB>,
+				 <&u2phy>;
+			interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&u2phy_host>;
+			phy-names = "usb";
+			power-domains = <&power RK3528_PD_VO>;
+			status = "disabled";
+		};
+
 		qos_crypto_a: qos@ff200000 {
 			compatible = "rockchip,rk3528-qos", "syscon";
 			reg = <0x0 0xff200000 0x0 0x20>;
@@ -1109,6 +1156,35 @@ dmac: dma-controller@ffd60000 {
 			#dma-cells = <1>;
 			arm,pl330-periph-burst;
 		};
+
+		u2phy: usb2phy@ffdf0000 {
+			compatible = "rockchip,rk3528-usb2phy";
+			reg = <0x0 0xffdf0000 0x0 0x10000>;
+			clocks = <&cru CLK_REF_USBPHY>, <&cru PCLK_USBPHY>;
+			clock-names = "phyclk", "pclk";
+			#clock-cells = <0>;
+			clock-output-names = "clk_usbphy_480m";
+			power-domains = <&power RK3528_PD_VO>;
+			rockchip,usbgrf = <&vo_grf>;
+			status = "disabled";
+
+			u2phy_otg: otg-port {
+				interrupts = <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "otg-bvalid", "otg-id",
+						  "linestate";
+				#phy-cells = <0>;
+				status = "disabled";
+			};
+
+			u2phy_host: host-port {
+				interrupts = <GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "linestate";
+				#phy-cells = <0>;
+				status = "disabled";
+			};
+		};
 	};
 };
 
-- 
2.50.1


