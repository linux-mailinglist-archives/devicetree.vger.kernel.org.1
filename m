Return-Path: <devicetree+bounces-208072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 91979B3182B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 14:46:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 163BD1CE2922
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 304F528AB1E;
	Fri, 22 Aug 2025 12:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="C7tUhWqJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F241199FAC
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 12:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755866807; cv=none; b=G77J9jDkFDSb0XbVZcG7qEnr9hZfZvCnLvvh8fAD28a/6YCxuiO5A7LWnDLsK8zR+onAKe+jstxQifELNA37XlVl2JyFQGViDXQMJ2ZGp0mdnV+ymf/mTKdn6t5RoHinI9FMArzdfuFeD1n306YVOfBsZNc85+L+vrI4HVSwJGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755866807; c=relaxed/simple;
	bh=tcviW4G1fDsbaEUKf3XybDgKjInDOsiywJ+lM5Z01DU=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=iV3q7o/4ZusSlUiYBrpxrPHPV83oYLZOR/cQBQ3budIPCEzta/3f3rWnNiRKKC6c4ateDudfQn6AM3ErkATsEa5L8D41in++mWn4QNxbDwKUyRSbMmLR05xJ+4dZhmyB8jbS8SSirbnY0ReidNcD4gRfY+vTTWv4xEeT4hie4vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=C7tUhWqJ; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelvem-sh01.itg.ti.com ([10.180.77.71])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTP id 57MCkQIN252257;
	Fri, 22 Aug 2025 07:46:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1755866786;
	bh=2/Z7AQaALVvEWhQ6ZXNpSTA/Gnv5SxuZNVgMdoe1R10=;
	h=From:To:Subject:Date;
	b=C7tUhWqJ7fmXy+d+V6sOOIOApA5kMVGCDjCtK63z3YMXQr03xHi4kM5nML3SmRZ2T
	 ZXahxHHidF11BCI/jp6XdEYgLtV/ijze9cSpjXnqOaY27+tbRWathpULTCx4lEZZ5r
	 j03tLe80FwUMRWVacoLoNjBTi6Un5vPwYA/My+WY=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
	by lelvem-sh01.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 57MCkQcN2709225
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Fri, 22 Aug 2025 07:46:26 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Fri, 22
 Aug 2025 07:46:25 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Fri, 22 Aug 2025 07:46:25 -0500
Received: from hkshenoy.dhcp.ti.com (hkshenoy.dhcp.ti.com [172.24.235.208])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 57MCkMjP3847096;
	Fri, 22 Aug 2025 07:46:23 -0500
From: Harikrishna Shenoy <h-shenoy@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: [PATCH] arm64: dts: ti: k3-j721e-main: Add DSI and DPHY-TX
Date: Fri, 22 Aug 2025 18:16:22 +0530
Message-ID: <20250822124622.1424473-1-h-shenoy@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

From: Rahul T R <r-ravikumar@ti.com>

TI's J721E SoC supports a DPI to DSI video signal conversion bridge on
it's platform bus. The IP is from Cadence, and it has a custom TI
wrapper around it to facilitate integration.

This IP takes the DPI video signals from DSS and alongwith the DPHY IP,
it transmits DSI video signals out of the SoC.

Add support for DSI bridge and the DPHY-TX.

Signed-off-by: Rahul T R <r-ravikumar@ti.com>
Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 31 +++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index ab3666ff4297..d65b6fcae338 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -1887,6 +1887,37 @@ port@4 {
 		};
 	};
 
+	dphy2: phy@4480000 {
+		compatible = "ti,j721e-dphy";
+		reg = <0x00 0x04480000 0x00 0x1000>;
+		clocks = <&k3_clks 296 1>, <&k3_clks 296 3>;
+		clock-names = "psm", "pll_ref";
+		#phy-cells = <0>;
+		power-domains = <&k3_pds 296 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 296 3>;
+		assigned-clock-parents = <&k3_clks 296 4>;
+		assigned-clock-rates = <19200000>;
+		status = "disabled";
+	};
+
+	dsi0: dsi@4800000 {
+		compatible = "ti,j721e-dsi";
+		reg = <0x00 0x04800000 0x00 0x100000>, <0x00 0x04710000 0x00 0x100>;
+		clocks = <&k3_clks 150 1>, <&k3_clks 150 5>;
+		clock-names = "dsi_p_clk", "dsi_sys_clk";
+		power-domains = <&k3_pds 150 TI_SCI_PD_EXCLUSIVE>;
+		interrupt-parent = <&gic500>;
+		interrupts = <GIC_SPI 600 IRQ_TYPE_LEVEL_HIGH>;
+		phys = <&dphy2>;
+		phy-names = "dphy";
+		status = "disabled";
+
+		dsi0_ports: ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+
 	dss: dss@4a00000 {
 		compatible = "ti,j721e-dss";
 		reg =
-- 
2.34.1


