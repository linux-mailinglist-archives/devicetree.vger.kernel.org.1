Return-Path: <devicetree+bounces-134501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 338D19FDA82
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 13:23:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2B863A13AD
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 12:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25EF5176ABA;
	Sat, 28 Dec 2024 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="HYDS1cyT"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.3])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F68215B984;
	Sat, 28 Dec 2024 12:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735388573; cv=none; b=b2m3jTLl+CI3bNoZZEgQNTeqEQdNpHvV8mMEAZKyQ2T4zNVNbMKQONtgYXFmGshy90qJ6w1IFJ2tulzMMV92zVKlDpfwshGW2Ge03NEBLoz1mzWRDGvDvyD7rBxqsn63YmIsKtyEB8m5xu1PFt/XYaAZZ57l6uDbF2XcqZn11DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735388573; c=relaxed/simple;
	bh=NuQZgT2E2kjwMSQpPKEZ71g5Fxiw1Vc0q9hWAqrNdfc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Fc9afLqUAYHoLHr3PFx3VYL7W6JiEjwofqQFVNSMx5Vwli3BzWeqXR4LaEZFXXsRlSTPpcpC3thtZL8tpUFDIsuhos/q6WEGa3Zy7etZTEoW5cE3sXPDQqz1RNqC2piv6bUj8mv58vg4eXJnFk2X5NiC2EVnl6O0fPrJLYGPKQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=HYDS1cyT; arc=none smtp.client-ip=220.197.31.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=5EpTE
	79/6drSRRiwOZ9rtrjeU7y9GmdVcMImOalthfk=; b=HYDS1cyTZ4/oL9yISMplu
	vLrB3ZQh4PVMJVLe2U0TEDoT/6F1pXPpZJBI/IsmGS+Sl9IvpmnqFilCgLtzRK8o
	7CDKL7JYJTodSXNR3CPH5meLf5JnHG2VdAyA84GJeb5UKnud4IKJzHcK8OR+9OUJ
	tZiaiDAjVU/qyb70QyuUmc=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wD3t0tl7W9nUxdCCQ--.1009S8;
	Sat, 28 Dec 2024 20:22:08 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	krzk+dt@kernel.org,
	joro@8bytes.org
Cc: cl@rock-chips.com,
	robh@kernel.org,
	hjc@rock-chips.com,
	vkoul@kernel.org,
	devicetree@vger.kernel.org,
	detlev.casanova@collabora.com,
	cristian.ciocaltea@collabora.com,
	dri-devel@lists.freedesktop.org,
	iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 6/8] arm64: dts: rockchip: Add vop for rk3576
Date: Sat, 28 Dec 2024 20:21:49 +0800
Message-ID: <20241228122155.646957-7-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241228122155.646957-1-andyshrk@163.com>
References: <20241228122155.646957-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3t0tl7W9nUxdCCQ--.1009S8
X-Coremail-Antispam: 1Uf129KBjvJXoW7CFyrXFy5WF4Uuw1UKFy8Xwb_yoW8KFyxp3
	ZrCrW8JrW8uF12qa9xKFyvyrZ5Jan5Can3KwnxAF18Kr1Skr9rKryfKr93A3ZrJFW8Xa12
	qFs2kry8KFnxXw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jgNVkUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hHDXmdv5N-vSgAAsI

From: Andy Yan <andy.yan@rock-chips.com>

Add VOP and VOP_MMU found on rk3576.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 68 ++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 436232ffe4d1..130d11a2cc89 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -393,6 +393,11 @@ opp-950000000 {
 		};
 	};
 
+	display_subsystem: display-subsystem {
+		compatible = "rockchip,display-subsystem";
+		ports = <&vop_out>;
+	};
+
 	firmware {
 		scmi: scmi {
 			compatible = "arm,scmi-smc";
@@ -826,6 +831,69 @@ gpu: gpu@27800000 {
 			status = "disabled";
 		};
 
+		vop: vop@27d00000 {
+			compatible = "rockchip,rk3576-vop";
+			reg = <0x0 0x27d00000 0x0 0x3000>, <0x0 0x27d05000 0x0 0x1000>;
+			reg-names = "vop", "gamma-lut";
+			interrupts = <GIC_SPI 342 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 380 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 381 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "vop-sys",
+					  "vop-vp0",
+					  "vop-vp1",
+					  "vop-vp2";
+			clocks = <&cru ACLK_VOP>,
+				 <&cru HCLK_VOP>,
+				 <&cru DCLK_VP0>,
+				 <&cru DCLK_VP1>,
+				 <&cru DCLK_VP2>;
+			clock-names = "aclk",
+				      "hclk",
+				      "dclk_vp0",
+				      "dclk_vp1",
+				      "dclk_vp2";
+			iommus = <&vop_mmu>;
+			power-domains = <&power RK3576_PD_VOP>;
+			rockchip,grf = <&sys_grf>;
+			rockchip,pmu = <&pmu>;
+			status = "disabled";
+
+			vop_out: ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				vp0: port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+				};
+
+				vp1: port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+				};
+
+				vp2: port@2 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <2>;
+				};
+			};
+		};
+
+		vop_mmu: iommu@27d07e00 {
+			compatible = "rockchip,rk3576-iommu", "rockchip,rk3568-iommu";
+			reg = <0x0 0x27d07e00 0x0 0x100>, <0x0 0x27d07f00 0x0 0x100>;
+			interrupts = <GIC_SPI 342 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
+			clock-names = "aclk", "iface";
+			#iommu-cells = <0>;
+			power-domains = <&power RK3576_PD_VOP>;
+			status = "disabled";
+		};
+
 		qos_hdcp1: qos@27f02000 {
 			compatible = "rockchip,rk3576-qos", "syscon";
 			reg = <0x0 0x27f02000 0x0 0x20>;
-- 
2.34.1


