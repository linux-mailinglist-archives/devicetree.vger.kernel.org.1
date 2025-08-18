Return-Path: <devicetree+bounces-205896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D90A4B2AD52
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 17:52:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47B61564686
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 15:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A413F3218C0;
	Mon, 18 Aug 2025 15:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="cqoRe99v"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE361202F9F
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 15:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755532110; cv=none; b=umk/mAyN9qmF6adWVVDqRKi1JIWNxGA5PFlziUvABfLffNWqMwPc4yfdNN9j0Tp7fCk6GoNawo9cUnztSNTJD2VWdQ25S9vmm6JXgdFBHXm9Mhi1uQlZo9TRqTvNDejWvoYxwVRO4e9ZFmucnAavPFW2xnvqvGU0ykOnOWyypfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755532110; c=relaxed/simple;
	bh=wu1veKwNLS+HP7XBvwB03Ij9hrZ/aa/PmAxnRpe3GCo=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aR1ZLQzFwfPJ5j5esV97JpC3s4oJSY9jC5aA0Ovqvt9iCwIg1ZmSMz4W7jwqpUlWEYDss2NmPbnTnMQLTVePgKw/lmj48a9wzumtlPFyAkRcOI9NWO9y5YTgio1tZf9jdhV+Hh5xvTFDD8HSPY9Zes2xNuubWzVZN9N1766nwFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=cqoRe99v; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTP id 57IFm5Bq2691221;
	Mon, 18 Aug 2025 10:48:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1755532085;
	bh=2dpoG+Ep17pquhQoAOs1k4k2xkCuSFL5NhYt1KTyjKU=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=cqoRe99vbqegNBy+M/f6WSS7WlAZxcNhTCC1ZLD+FYfmd7pPaTVNCN+D9Iolv8EFD
	 1UzEQ8absIReLT1vsc0GosmDOAoz3NdVikD02s+A+q6MjcrpdLplwYLPbe9uL45sfs
	 CLGYa9Tznsy6gh3dCkLBUE42jnA8o+mQJZS2houA=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 57IFm5Pk619645
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Mon, 18 Aug 2025 10:48:05 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Mon, 18
 Aug 2025 10:48:04 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Mon, 18 Aug 2025 10:48:04 -0500
Received: from hkshenoy.dhcp.ti.com (hkshenoy.dhcp.ti.com [172.24.235.208])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 57IFlk8n1551018;
	Mon, 18 Aug 2025 10:47:59 -0500
From: Harikrishna Shenoy <h-shenoy@ti.com>
To: <neil.armstrong@linaro.org>, <jessica.zhang@oss.qualcomm.com>,
        <airlied@gmail.com>, <simona@ffwll.ch>,
        <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <thierry.reding@gmail.com>, <sam@ravnborg.org>,
        <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <s-jain1@ti.com>, <devarsht@ti.com>, <u-kumar1@ti.com>
Subject: [RFC PATCH 2/3] arm64: dts: ti: k3-j721e-main: Add DSI and DPHY-TX
Date: Mon, 18 Aug 2025 21:17:45 +0530
Message-ID: <20250818154746.1373656-3-h-shenoy@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250818154746.1373656-1-h-shenoy@ti.com>
References: <20250818154746.1373656-1-h-shenoy@ti.com>
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
index 5bd0d36bf33e..ce34d68a70f2 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -1881,6 +1881,37 @@ port@4 {
 		};
 	};
 
+	dphy2: phy@4480000 {
+		compatible = "ti,j721e-dphy";
+		reg = <0x0 0x04480000 0x0 0x1000>;
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
+		reg = <0x0 0x04800000 0x0 0x100000>, <0x0 0x04710000 0x0 0x100>;
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


