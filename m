Return-Path: <devicetree+bounces-123662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C589D5A0E
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 08:35:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 672DB281D6D
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 07:35:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F296C1632E8;
	Fri, 22 Nov 2024 07:35:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67ADE3C2F
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 07:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732260925; cv=none; b=knwx8TM+v1AsTzXFiStE7yX6OM3Ss8iS1tS0nQMnj6xXZKXbR0pmasVU3UdMB+41fvmslTr8aguY0muP26GMvqdRz9h6Bv2MCHrnRMO/EcgYAwCvkkHQTLlR+djDwob+ayJ/umqIZB4dqCdOM1+rB/pldHC9hjzsPhJ96CxsEQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732260925; c=relaxed/simple;
	bh=jTIYzOFYfdf9GfP/cownXX/COTZ45Lz5c9+OhoDt2rc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Pp9eZRjXO5MI76DJDJ3dNKjsyO4UozmueH0n+zBxuujFxOIDJwWh3YLu42hh1TmXP/5DNZm79sNUz29dsuhawNvMgBkMdAqAe4909D9/CV1uu4hxbsblI3jRNPgkyqtoBKq2QYvPGVo+kmn3f7YQCsK+E9k6iBUm1t8GTDzf838=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c04:2930::1])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3848de84;
	Fri, 22 Nov 2024 15:30:09 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 1/2] arm64: dts: rockchip: rk3568: add reset-names for combphy
Date: Fri, 22 Nov 2024 15:30:05 +0800
Message-Id: <20241122073006.99309-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDQxhKVhgZQ0tDTUNPTE1NTVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtPQUlCSEtBQUpZV1kWGg8SFR0UWUFZT0tIVUpLSUJDQ0
	1VSktLVUtZBg++
X-HM-Tid: 0a9352c73fde03a2kunm3848de84
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Oj46Eww4PTIjTj8QECk*Tx8y
	QjkaClZVSlVKTEhJSU1LTUpKSktCVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS09BSUJIS0FBSllXWQgBWUFKTU5CNwY+

The reset-names of combphy are missing, add it.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 1 +
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index ecaefe208e3e..695cccbdab0f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -350,6 +350,7 @@ combphy0: phy@fe820000 {
 		assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
 		assigned-clock-rates = <100000000>;
 		resets = <&cru SRST_PIPEPHY0>;
+		reset-names = "phy";
 		rockchip,pipe-grf = <&pipegrf>;
 		rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
 		#phy-cells = <1>;
diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index 62be06f3b863..e55390629114 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -1681,6 +1681,7 @@ combphy1: phy@fe830000 {
 		assigned-clocks = <&pmucru CLK_PCIEPHY1_REF>;
 		assigned-clock-rates = <100000000>;
 		resets = <&cru SRST_PIPEPHY1>;
+		reset-names = "phy";
 		rockchip,pipe-grf = <&pipegrf>;
 		rockchip,pipe-phy-grf = <&pipe_phy_grf1>;
 		#phy-cells = <1>;
@@ -1697,6 +1698,7 @@ combphy2: phy@fe840000 {
 		assigned-clocks = <&pmucru CLK_PCIEPHY2_REF>;
 		assigned-clock-rates = <100000000>;
 		resets = <&cru SRST_PIPEPHY2>;
+		reset-names = "phy";
 		rockchip,pipe-grf = <&pipegrf>;
 		rockchip,pipe-phy-grf = <&pipe_phy_grf2>;
 		#phy-cells = <1>;
-- 
2.25.1


