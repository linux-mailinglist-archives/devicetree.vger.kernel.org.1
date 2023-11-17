Return-Path: <devicetree+bounces-16774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A60A17EFB63
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 23:29:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FA80281318
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 22:29:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 766FB4503D;
	Fri, 17 Nov 2023 22:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="sZh6vBrm"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79776D51;
	Fri, 17 Nov 2023 14:29:43 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AHMTb93124971;
	Fri, 17 Nov 2023 16:29:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700260177;
	bh=JUG1NeiMrst41bAyCj8/FG7f2PNejwPkvoMvB3vvv4s=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=sZh6vBrmisIJAleQtGxrQY+lH627DTl9gdgdYsnJRKjCIjGxCMOmACHTYgAcKvQ/4
	 I8PhNsO/2uaPltA1sbrizUf2l/BBymVbEBXeDXj/AJJpi1JpjwMIzPR9bVz1UEEA3i
	 Da9EhI63oJI58XUPbXk9SVUAQIJ1nmGnoRfyJa/w=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AHMTbm7032121
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Nov 2023 16:29:37 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Nov 2023 16:29:37 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Nov 2023 16:29:37 -0600
Received: from lelv0326.itg.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AHMTWQJ067965;
	Fri, 17 Nov 2023 16:29:36 -0600
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
Subject: [PATCH 6/8] arm64: dts: ti: k3-j721e: Convert usb_serdes_mux node into reg-mux
Date: Fri, 17 Nov 2023 16:29:28 -0600
Message-ID: <20231117222930.228688-6-afd@ti.com>
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
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index d3d9b81fd5a08..f46990b9a994e 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -70,10 +70,11 @@ cpsw0_phy_gmii_sel: phy@4044 {
 		};
 
 		usb_serdes_mux: mux-controller@4000 {
-			compatible = "mmio-mux";
+			compatible = "reg-mux";
+			reg = <0x4000 0x20>;
 			#mux-control-cells = <1>;
-			mux-reg-masks = <0x4000 0x8000000>, /* USB0 to SERDES0/3 mux */
-					<0x4010 0x8000000>; /* USB1 to SERDES1/2 mux */
+			mux-reg-masks = <0x0 0x8000000>, /* USB0 to SERDES0/3 mux */
+					<0x10 0x8000000>; /* USB1 to SERDES1/2 mux */
 		};
 
 		ehrpwm_tbclk: clock-controller@4140 {
-- 
2.39.2


