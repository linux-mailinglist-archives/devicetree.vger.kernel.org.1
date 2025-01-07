Return-Path: <devicetree+bounces-136036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 166EDA03907
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 08:49:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85BBA3A2457
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 07:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 531BB374D1;
	Tue,  7 Jan 2025 07:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="ae71aq9g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32107.qiye.163.com (mail-m32107.qiye.163.com [220.197.32.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540FA522A;
	Tue,  7 Jan 2025 07:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.107
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736236169; cv=none; b=gRq9qXPHDMkCZhwDETmd3rJi33PRPpyAYnlVhRAnPzfwjB4+ICeJiFQ0kj5gL7rrXkPN1NwAR07gT+r0BDqwxbYld3gjjfeIfYz4bxXRASvgp7SrA4J7oPGEqrP/XUTpU2C4oUHthED4+6Chtem6KLzIVn05fjE1C1VP99oADxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736236169; c=relaxed/simple;
	bh=jpfIapPt8pLJpTwhvVJOSNnmsYukKBP2ivRxQVHMKCc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=C9UzT20c5FBcREYDMb7zsoAEEhc359oTPzSp+a8nddjPCd9Ere+/7EDcCM0q2qGeaG7kpxuxzAenD418hr72fqlIf/AiQhlOODOzLfUlnKj9QqSxCgYtk6j1x75VO+T2MGJjP6Hi7xD8Owsf0R31VEgVYG2pSZP5EECrFU7IeMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=ae71aq9g; arc=none smtp.client-ip=220.197.32.107
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 7f3b5a76;
	Tue, 7 Jan 2025 15:49:15 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Liang Chen <cl@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/7] arm64: dts: rockchip: Add rk3576 naneng combphy nodes
Date: Tue,  7 Jan 2025 15:49:05 +0800
Message-Id: <20250107074911.550057-2-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250107074911.550057-1-kever.yang@rock-chips.com>
References: <20250107074911.550057-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkMaH1ZDHUIYS0IZTxlOH0hWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a943fbd41f503afkunm7f3b5a76
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6My46Lgw6FTILMRM3SSpCSE0q
	LR0aCgNVSlVKTEhNSUhNSk5NTE5DVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSktONwY+
DKIM-Signature:a=rsa-sha256;
	b=ae71aq9gsUG5V1a0Dln8Hh/L0LgV+IqS4/i+n/Awi05lflNiNJFB+42V4IWNstuoCRsbXwajWn41adwznm+7FggGxhrF/JfjGKpoLjzyEwCKkgM37REewsvwMfiRjIH9U2xWpB7qy3zeSOYZJ+eN0X4/P9xLnsTTlEymFn6cRI4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=uSCqXXvyq7kaloFgBj+3piFhPo3zSlCSuA6539oXzdw=;
	h=date:mime-version:subject:message-id:from;

rk3576 has two naneng combo phys:
- combophy0 is used for one of pcie and sata;
- combophy1 is used for one of pcie, sata and usb3;

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v4: None
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


