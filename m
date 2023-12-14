Return-Path: <devicetree+bounces-25195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B58F38129CE
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 08:57:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 724412819F0
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 07:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0D881401A;
	Thu, 14 Dec 2023 07:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Zigny+0Y"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0322610F;
	Wed, 13 Dec 2023 23:56:52 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BE7ugRs029444;
	Thu, 14 Dec 2023 01:56:42 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702540602;
	bh=3lHhBGyswinmAFRMz+DLytZSA7pbdQyR25LCCNCUqkY=;
	h=From:To:CC:Subject:Date;
	b=Zigny+0Y03YdhLSJMVm8aYMkgizCfxgneY32eYMr22zaMKzGddXgLTQG8q6V1o/Y4
	 yCElyDJVbfWqJa/bPSjD+1YBSMAO1ZBSxpLfb+NxN502mcwdjd1asEsZbFqcm7pUOh
	 Oh0JBVmu7EaxZbt2AmapLMkw3s8FdqnBh4/x7qsw=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BE7ufai022171
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 Dec 2023 01:56:41 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 14
 Dec 2023 01:56:41 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 14 Dec 2023 01:56:41 -0600
Received: from a0497641-HP-Z2-Tower-G9-Workstation-Desktop-PC.dhcp.ti.com (a0497641-hp-z2-tower-g9-workstation-desktop-pc.dhcp.ti.com [172.24.227.36])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BE7uc86027328;
	Thu, 14 Dec 2023 01:56:38 -0600
From: Neha Malcom Francis <n-francis@ti.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>, <nm@ti.com>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <a-nandan@ti.com>, <kristo@kernel.org>,
        <u-kumar1@ti.com>, <n-francis@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-j721e: Add support for DFS in J721E A72
Date: Thu, 14 Dec 2023 13:26:37 +0530
Message-ID: <20231214075637.176586-1-n-francis@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Add 2G, 1.5G, 1G, 750M, 500M and 250M as the supported frequencies for
A72. This enables support for Dynamic Frequency Scaling (DFS).

Signed-off-by: Neha Malcom Francis <n-francis@ti.com>
---
Boot logs:
https://gist.github.com/nehamalcom/e3c3d0446f0467e7fd28706f7ffaeea8

J721E SoC has three different speed grade devices (see [1], 7.5
Operating Performance Points) which as of today are indiscernible in
software, users of a different speed grade device must manually change
the DTS to ensure their maximum speed frequency is supported.

[1] https://www.ti.com/lit/gpn/tda4vm

 arch/arm64/boot/dts/ti/k3-j721e.dtsi | 35 ++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e.dtsi b/arch/arm64/boot/dts/ti/k3-j721e.dtsi
index a200810df54a..fe92879f5812 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e.dtsi
@@ -48,6 +48,9 @@ cpu0: cpu@0 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&L2_0>;
+			clocks = <&k3_clks 202 2>;
+			clock-names = "cpu";
+			operating-points-v2 = <&cpu0_opp_table>;
 		};
 
 		cpu1: cpu@1 {
@@ -62,9 +65,41 @@ cpu1: cpu@1 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&L2_0>;
+			clocks = <&k3_clks 203 0>;
+			clock-names = "cpu";
+			operating-points-v2 = <&cpu0_opp_table>;
 		};
 	};
 
+	cpu0_opp_table: opp-table {
+		compatible = "operating-points-v2";
+
+		opp6-2000000000 {
+			opp-hz = /bits/ 64 <2000000000>;
+		};
+
+		opp5-1500000000 {
+			opp-hz = /bits/ 64 <1500000000>;
+		};
+
+		opp4-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+		};
+
+		opp3-750000000 {
+			opp-hz = /bits/ 64 <750000000>;
+		};
+
+		opp2-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+		};
+
+		opp1-250000000 {
+			opp-hz = /bits/ 64 <250000000>;
+		};
+
+	};
+
 	L2_0: l2-cache0 {
 		compatible = "cache";
 		cache-level = <2>;
-- 
2.34.1


