Return-Path: <devicetree+bounces-135824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC3FA02590
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 13:32:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83A4C1882F90
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 12:32:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 872AF1DDC0F;
	Mon,  6 Jan 2025 12:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="CxdijQie"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE291DE2D4;
	Mon,  6 Jan 2025 12:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736166711; cv=none; b=DFzXwXcrid74mUO6X/cHEB3Gk2sKxDfULZ7NyuxkYxN/eMtcLfsyy+ydfe8vddDlhSb8M+jgU/CCvliWwfsknfs4HHlFrxVDo6T4t3KXSjVGHMRpET4tO2wVuww7TBmm2C3YxneXl6a695PoYCVCz1cgz/1WQdojp65s26jOUuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736166711; c=relaxed/simple;
	bh=H1FdKJnVsXMVg8H+FwPvfT+Yi+ssMGo0pCz2lC+J+v4=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LTN/2JRtetGWdqaYf+CAIxQY9xXu/mHbjn6/IXtLJ2g/zW8PMiDABSbi7+uUqXGOgn8v3FOBbwtb5HAHlAMF6MaKmerOP8n0gO1CRS0tjjFLZwdCDhyyvPPNHwU/OiRcdJplPsROOUu237Thu0Xw4qe5OXAqG8TD2y1J7mon9Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=CxdijQie; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 506CVSTW2700584
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 6 Jan 2025 06:31:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736166688;
	bh=EQkCNjp2mfoKEmCZjU5hjstRcAuUPQHlgvmc9kjywfQ=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=CxdijQiee1cMgFiVaqEVcl2iS7akq52yP+3ENyQHvvNyg6bKFbe65EJ35FliRJrxv
	 UQYomdIZnLdXHcx+mBJnaz8cpmsg8H3L+cSgxy7JdEnYp7+0SUeFLmBPUQZlrsGN0x
	 7JbHvf/kwoz6VGse0C4hBlQxTHjX8QQeBejznfgA=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 506CVSXq068206
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 6 Jan 2025 06:31:28 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 6
 Jan 2025 06:31:28 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 6 Jan 2025 06:31:28 -0600
Received: from localhost (chintan-thinkstation-p360-tower.dhcp.ti.com [172.24.227.220])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 506CVRT0072619;
	Mon, 6 Jan 2025 06:31:28 -0600
From: Chintan Vankar <c-vankar@ti.com>
To: Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Tero Kristo
	<kristo@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon
	<nm@ti.com>
CC: <srk@ti.com>, <s-vadapalli@ti.com>, <danishanwar@ti.com>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Chintan Vankar <c-vankar@ti.com>
Subject: [PATCH 1/2] arm64: dts: ti: k3-am68-sk*: Add bootph-all property to necessary nodes to enable Ethernet boot
Date: Mon, 6 Jan 2025 18:01:21 +0530
Message-ID: <20250106123122.3531845-2-c-vankar@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250106123122.3531845-1-c-vankar@ti.com>
References: <20250106123122.3531845-1-c-vankar@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Ethernet boot requires CPSW nodes to be present starting from R5 SPL
stage. Add bootph-all property to necessary nodes for CPSW to enable those
nodes during SPL stage along with later boot stages for AM68-SK.

Signed-off-by: Chintan Vankar <c-vankar@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts | 5 +++++
 arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi | 2 ++
 2 files changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
index 11522b36e0ce..f1f8b228926d 100644
--- a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
@@ -333,6 +333,7 @@ J721S2_WKUP_IOPAD(0x008, PIN_OUTPUT, 0) /* (E22) MCU_RGMII1_TD3 */
 			J721S2_WKUP_IOPAD(0x018, PIN_OUTPUT, 0) /* (F21) MCU_RGMII1_TXC */
 			J721S2_WKUP_IOPAD(0x000, PIN_OUTPUT, 0) /* (F22) MCU_RGMII1_TX_CTL */
 		>;
+		bootph-all;
 	};
 
 	mcu_mdio_pins_default: mcu-mdio-default-pins {
@@ -340,6 +341,7 @@ mcu_mdio_pins_default: mcu-mdio-default-pins {
 			J721S2_WKUP_IOPAD(0x034, PIN_OUTPUT, 0) /* (A21) MCU_MDIO0_MDC */
 			J721S2_WKUP_IOPAD(0x030, PIN_INPUT, 0) /* (A22) MCU_MDIO0_MDIO */
 		>;
+		bootph-all;
 	};
 
 	mcu_mcan0_pins_default: mcu-mcan0-default-pins {
@@ -610,11 +612,13 @@ &main_sdhci1 {
 &mcu_cpsw {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mcu_cpsw_pins_default>, <&mcu_mdio_pins_default>;
+	bootph-all;
 };
 
 &davinci_mdio {
 	phy0: ethernet-phy@0 {
 		reg = <0>;
+		bootph-all;
 		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
 		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
 		ti,min-output-impedance;
@@ -624,6 +628,7 @@ phy0: ethernet-phy@0 {
 &cpsw_port1 {
 	phy-mode = "rgmii-rxid";
 	phy-handle = <&phy0>;
+	bootph-all;
 };
 
 &mcu_mcan0 {
diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
index bc31266126d0..cfae226d3c63 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
@@ -154,12 +154,14 @@ mcu_conf: bus@40f00000 {
 		cpsw_mac_syscon: ethernet-mac-syscon@200 {
 			compatible = "ti,am62p-cpsw-mac-efuse", "syscon";
 			reg = <0x200 0x8>;
+			bootph-all;
 		};
 
 		phy_gmii_sel: phy@4040 {
 			compatible = "ti,am654-phy-gmii-sel";
 			reg = <0x4040 0x4>;
 			#phy-cells = <1>;
+			bootph-all;
 		};
 
 	};
-- 
2.34.1


