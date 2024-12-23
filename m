Return-Path: <devicetree+bounces-133537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 552E49FADD3
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:42:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6B131632DD
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D08D019DF98;
	Mon, 23 Dec 2024 11:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="UAWoPzBC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m118212.qiye.163.com (mail-m118212.qiye.163.com [115.236.118.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7724E1946BB;
	Mon, 23 Dec 2024 11:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.118.212
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734954139; cv=none; b=mCeAvO74svxlejCDhqXBLPxL2RiMGEAR5OPf35I18CuVdHcQ4ZMTgwDJd3PXRFKC3nzzqIlChyYzB1XebQvz5/PmVfvjejFwuPotArxEmXhxdV9ciQ7HRSSrq/mXY9W3mfL0uU0u3wyW+jPxbCmZLFYagNDDfm6NpMTPbTDMy7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734954139; c=relaxed/simple;
	bh=jKwng64wsHpfCZbpAZ1rQkWxBiUnG1c94buPjjn/h50=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TstXURaD7/LZiHJl4teLZtrco2H/4jPswpPnqC0eUhWobcQ1dXd1e/DeoEyxK3VmD3eJrhurEgGsUwe7JLOh96jsJT0A0oUT8HWOTyVslGv9hKcnLdP8pqgn0kJlMIRRFVDdYEVXYQc2xvJiC3KzPz1OXcvmDmyOmd00/ZHRrNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=UAWoPzBC; arc=none smtp.client-ip=115.236.118.212
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 68ea0139;
	Mon, 23 Dec 2024 19:06:40 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/7] arm64: dts: rockchip: Add rk3576 naneng combphy nodes
Date: Mon, 23 Dec 2024 19:06:31 +0800
Message-Id: <20241223110637.3697974-2-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241223110637.3697974-1-kever.yang@rock-chips.com>
References: <20241223110637.3697974-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhpNTFYaHR9DTRpMSkwZSUhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f3329dc903afkunm68ea0139
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OiI6IQw5NDIQPgEqN0g6GQg9
	NDAaFBdVSlVKTEhPQk5JS0tJSkNCVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJS0NPNwY+
DKIM-Signature:a=rsa-sha256;
	b=UAWoPzBCQksB5hexX5WnhDhrSBetpuc8vTmDJa81kV3oEgDDxpwB/qpdcsPLi+TVWWKO8jM5Asc6IT1cbMBSDRbE209/3DZCGqY4MmevuM8HnIc7TG4Z70Z7oxiZzaVuQuMgf6/T3YATy8piVBofN8asFkuiWmeYa97/Fny2FE8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=7sxSfVv97iBuSyIpLekYzneOGrsaZ6m/UG6qMlKx0KQ=;
	h=date:mime-version:subject:message-id:from;

rk3576 has two naneng combo phys:
- combophy0 is used for one of pcie and sata;
- combophy1 is used for one of pcie, sata and usb3;

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v3:
- Update the subject

Changes in v2:
- Update the clock and reset names to pass the DTB CHECK

 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 36 ++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 436232ffe4d1..a147879da501 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1587,6 +1587,42 @@ uart11: serial@2afd0000 {
 			status = "disabled";
 		};
 
+		combphy0_ps: phy@2b050000 {
+			compatible = "rockchip,rk3576-naneng-combphy";
+			reg = <0x0 0x2b050000 0x0 0x100>;
+			#phy-cells = <1>;
+			clocks = <&cru CLK_REF_PCIE0_PHY>,
+				 <&cru PCLK_PCIE2_COMBOPHY0>,
+				 <&cru PCLK_PCIE0>;
+			clock-names = "ref", "apb", "pipe";
+			assigned-clocks = <&cru CLK_REF_PCIE0_PHY>;
+			assigned-clock-rates = <100000000>;
+			resets = <&cru SRST_PCIE0_PIPE_PHY>,
+				 <&cru SRST_P_PCIE2_COMBOPHY0>;
+			reset-names = "phy", "apb";
+			rockchip,pipe-grf = <&php_grf>;
+			rockchip,pipe-phy-grf = <&pipe_phy0_grf>;
+			status = "disabled";
+		};
+
+		combphy1_psu: phy@2b060000 {
+			compatible = "rockchip,rk3576-naneng-combphy";
+			reg = <0x0 0x2b060000 0x0 0x100>;
+			#phy-cells = <1>;
+			clocks = <&cru CLK_REF_PCIE1_PHY>,
+				 <&cru PCLK_PCIE2_COMBOPHY1>,
+				 <&cru PCLK_PCIE1>;
+			clock-names = "ref", "apb", "pipe";
+			assigned-clocks = <&cru CLK_REF_PCIE1_PHY>;
+			assigned-clock-rates = <100000000>;
+			resets = <&cru SRST_PCIE1_PIPE_PHY>,
+				 <&cru SRST_P_PCIE2_COMBOPHY1>;
+			reset-names = "phy", "apb";
+			rockchip,pipe-grf = <&php_grf>;
+			rockchip,pipe-phy-grf = <&pipe_phy1_grf>;
+			status = "disabled";
+		};
+
 		sram: sram@3ff88000 {
 			compatible = "mmio-sram";
 			reg = <0x0 0x3ff88000 0x0 0x78000>;
-- 
2.25.1


