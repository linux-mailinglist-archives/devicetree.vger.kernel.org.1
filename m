Return-Path: <devicetree+bounces-20365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C367FEF15
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 13:26:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 221EA281DB5
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 12:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F3124776B;
	Thu, 30 Nov 2023 12:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="kIqCIM+g"
X-Original-To: devicetree@vger.kernel.org
Received: from m12.mail.163.com (m12.mail.163.com [220.181.12.215])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2712D1984;
	Thu, 30 Nov 2023 04:26:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=i9xa9
	aCDAkBMKK67f0gLMaaLWyhe8bqdqGFu4/oZZB8=; b=kIqCIM+ghJX1SLepMugbE
	W6+/1VKc/P9a5lQGPo2SI9xmWDyGtLTVyD7ZA5q8IKnVFaAOG7kYyCRflZiVj1pc
	lEd/TOv9exVZ1NRzQksS8wAuSBnvwcguVytk80XIqqKXNPwi9/8d3Xg5JHBCccPu
	gSBVdOjRH7TeKy0jBfd/+Y=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g3-4 (Coremail) with SMTP id _____wBHj0Aof2hl1OFtBQ--.51870S2;
	Thu, 30 Nov 2023 20:25:15 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 14/14] arm64: dts: rockchip: Add vop on rk3588
Date: Thu, 30 Nov 2023 20:25:11 +0800
Message-Id: <20231130122511.13552-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130122001.12474-1-andyshrk@163.com>
References: <20231130122001.12474-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wBHj0Aof2hl1OFtBQ--.51870S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxAFWfAr4kKw17GFyfJF1UJrb_yoW5ZF1kpa
	sruFW8Jr4kuF1Iqan8KrWvgrWkJanYka1kGwn3AFy0yr1SvryDKFWfur1fJasrXr4xAanr
	tFsFyry8trsxX3DanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jD-BNUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqA84XmVOAquXzwAAsb

From: Andy Yan <andy.yan@rock-chips.com>

Add vop dt node for rk3588.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 96 +++++++++++++++++++++++
 1 file changed, 96 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 7064c0e9179f..a9810ca78dc4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -362,6 +362,11 @@ spll: clock-0 {
 		#clock-cells = <0>;
 	};
 
+	display_subsystem: display-subsystem {
+		compatible = "rockchip,display-subsystem";
+		ports = <&vop_out>;
+	};
+
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_HIGH 0>,
@@ -474,6 +479,16 @@ sys_grf: syscon@fd58c000 {
 		reg = <0x0 0xfd58c000 0x0 0x1000>;
 	};
 
+	vop_grf: syscon@fd5a4000 {
+		compatible = "rockchip,rk3588-vop-grf", "syscon";
+		reg = <0x0 0xfd5a4000 0x0 0x2000>;
+	};
+
+	vo1_grf: syscon@fd5a8000 {
+		compatible = "rockchip,rk3588-vo-grf", "syscon";
+		reg = <0x0 0xfd5a8000 0x0 0x100>;
+	};
+
 	php_grf: syscon@fd5b0000 {
 		compatible = "rockchip,rk3588-php-grf", "syscon";
 		reg = <0x0 0xfd5b0000 0x0 0x1000>;
@@ -593,6 +608,87 @@ i2c0: i2c@fd880000 {
 		status = "disabled";
 	};
 
+	vop: vop@fdd90000 {
+		compatible = "rockchip,rk3588-vop";
+		reg = <0x0 0xfdd90000 0x0 0x4200>, <0x0 0xfdd95000 0x0 0x1000>;
+		reg-names = "vop", "gamma_lut";
+		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_VOP>,
+			 <&cru HCLK_VOP>,
+			 <&cru DCLK_VOP0>,
+			 <&cru DCLK_VOP1>,
+			 <&cru DCLK_VOP2>,
+			 <&cru DCLK_VOP3>,
+			 <&cru PCLK_VOP_ROOT>;
+		clock-names = "aclk",
+			      "hclk",
+			      "dclk_vp0",
+			      "dclk_vp1",
+			      "dclk_vp2",
+			      "dclk_vp3",
+			      "pclk_vop";
+		resets = <&cru SRST_A_VOP>,
+			 <&cru SRST_H_VOP>,
+			 <&cru SRST_D_VOP0>,
+			 <&cru SRST_D_VOP1>,
+			 <&cru SRST_D_VOP2>,
+			 <&cru SRST_D_VOP3>;
+		reset-names = "axi",
+			      "ahb",
+			      "dclk_vp0",
+			      "dclk_vp1",
+			      "dclk_vp2",
+			      "dclk_vp3";
+		iommus = <&vop_mmu>;
+		power-domains = <&power RK3588_PD_VOP>;
+		rockchip,grf = <&sys_grf>;
+		rockchip,vop-grf = <&vop_grf>;
+		rockchip,vo1-grf = <&vo1_grf>;
+		rockchip,pmu = <&pmu>;
+
+		status = "disabled";
+		vop_out: ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			vp0: port@0 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0>;
+			};
+
+			vp1: port@1 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <1>;
+			};
+
+			vp2: port@2 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <2>;
+			};
+
+			vp3: port@3 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <3>;
+			};
+		};
+	};
+
+	vop_mmu: iommu@fdd97e00 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdd97e00 0x0 0x100>, <0x0 0xfdd97f00 0x0 0x100>;
+		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vop_mmu";
+		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
+		clock-names = "aclk", "iface";
+		#iommu-cells = <0>;
+		power-domains = <&power RK3588_PD_VOP>;
+		status = "disabled";
+	};
+
 	uart0: serial@fd890000 {
 		compatible = "rockchip,rk3588-uart", "snps,dw-apb-uart";
 		reg = <0x0 0xfd890000 0x0 0x100>;
-- 
2.34.1


