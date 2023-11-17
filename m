Return-Path: <devicetree+bounces-16779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C7C7EFB6B
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 23:29:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A1011C208CE
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 22:29:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A7CF46522;
	Fri, 17 Nov 2023 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="h6JzVShb"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF6ECD7A;
	Fri, 17 Nov 2023 14:29:49 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AHMTYCl022636;
	Fri, 17 Nov 2023 16:29:34 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700260174;
	bh=ADlm2dKS0pcDQ7YjzkY2DOu0QglMak9KcGG/YQZRql4=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=h6JzVShbGchGekQ3Zr1qwdEOp++66VBSQCFIJm5bqDWkLHcHln+flE6eIf8myG8a4
	 TDCcauPE/m9lhaw5m3ArOsvQj8oNuQ6+Mja59KoS2XvPFVzWk7bHQttjPug7aUeObu
	 Vx47SjMUs7sxfS0C/lhUJdD8qfNKiW/hw/YeWRm8=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AHMTYj4000642
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Nov 2023 16:29:34 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Nov 2023 16:29:33 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Nov 2023 16:29:34 -0600
Received: from lelv0326.itg.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AHMTWQF067965;
	Fri, 17 Nov 2023 16:29:33 -0600
From: Andrew Davis <afd@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>
Subject: [PATCH 2/8] arm64: dts: ti: k3-am65: Convert serdes_mux node into reg-mux
Date: Fri, 17 Nov 2023 16:29:24 -0600
Message-ID: <20231117222930.228688-2-afd@ti.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231117222930.228688-1-afd@ti.com>
References: <20231117222930.228688-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

This removes a dependency on the parent node being a syscon node.
Convert from mmio-mux to reg-mux adjusting node name and properties
as needed.

Signed-off-by: Andrew Davis <afd@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 5ebb87f467de5..85211123cdf31 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -490,11 +490,12 @@ serdes1_clk: clock@4090 {
 			reg = <0x00004090 0x4>;
 		};
 
-		serdes_mux: mux-controller {
-			compatible = "mmio-mux";
+		serdes_mux: mux-controller@4080 {
+			compatible = "reg-mux";
+			reg = <0x4080 0x14>;
 			#mux-control-cells = <1>;
-			mux-reg-masks = <0x4080 0x3>, /* SERDES0 lane select */
-					<0x4090 0x3>; /* SERDES1 lane select */
+			mux-reg-masks = <0x0 0x3>, /* SERDES0 lane select */
+					<0x10 0x3>; /* SERDES1 lane select */
 		};
 
 		dss_oldi_io_ctrl: dss-oldi-io-ctrl@41e0 {
-- 
2.39.2


