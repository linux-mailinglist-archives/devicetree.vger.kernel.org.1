Return-Path: <devicetree+bounces-133015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D9A9F9001
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:16:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77CE8188EFB5
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 10:16:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 569271C2457;
	Fri, 20 Dec 2024 10:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="LHm6IXmS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15566.qiye.163.com (mail-m15566.qiye.163.com [101.71.155.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F681BD9FA;
	Fri, 20 Dec 2024 10:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734689768; cv=none; b=GZ7HBZ6vMop0Nk4oSwDKi76Mu/Zrek1BFHWJSSZ0X5iUwKDRekcHlNfoY6rF3SbS8cfZjZmRo4/lL9ZUKCz0yBQQP9QUQjfnoh2XmOGgQ5lC4xDcS8QEVlweUI7mv8PW0QwQE+KLY1UENnb6l9INvZuTq4oNvQeIv8QfXsDa9Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734689768; c=relaxed/simple;
	bh=aSzw+MEd5tu/s64mh4ukmJmaznrDWayHymy2snII7x4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rKP0YfwZhCbD51z8ZxY4k+SjSUiJSU4OqaXTmoX7bT4hirbGcnOQsqlux35xbUG5jLxAVQ1yke02ESLVM0ckaSV8Wu/lQUqdvnJqTOg1/OeOvY/489gQr2frVimfxHpaPdLNxKJW3AfkohIG6HPDYECmM6kS11Lp7x5D+RrBbGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=LHm6IXmS; arc=none smtp.client-ip=101.71.155.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 655ee8f9;
	Fri, 20 Dec 2024 18:15:54 +0800 (GMT+08:00)
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
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/7] dts: arm64: rockchip: Add rk3576 naneng combphy nodes
Date: Fri, 20 Dec 2024 18:15:45 +0800
Message-Id: <20241220101551.3505917-2-kever.yang@rock-chips.com>
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
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU0YGFZCTExMSUNMHk9JS0lWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3910ec103afkunm655ee8f9
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MBQ6PSo*TTIUTQgvMDMNM0wV
	LShPFAlVSlVKTEhPTUNCTE5NSUhNVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJS09INwY+
DKIM-Signature:a=rsa-sha256;
	b=LHm6IXmSWU2R8sVXMNeVDVBCevVAd8UgDuCu0E9AFoIfsNYilmnnvjrwK7R2dd0Y74E6BMpTlt33J6WvF9N7A7zzsuNKkY+V7Y4ngFZf7Mo1zUV5LR2XiCC2/VKhzWfsdGjSD4D0pTz+F5RReF8p/kn4tpbgEiL+UqVGfaPJWeA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=VcSwRVt3H0f3RKt3MQIfunyz6ue6nKZTuTheD8LW6gs=;
	h=date:mime-version:subject:message-id:from;

rk3576 has two naneng combo phy,
- combophy0 is used for one of pcie and sata;
- combophy1 is used for one of pcie, sata and usb3;

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v2:
- update the clock and reset names to pass the DTB CHECK

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


