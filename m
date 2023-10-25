Return-Path: <devicetree+bounces-11923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAAE7D711B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 57CFCB2102C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77A9A2AB59;
	Wed, 25 Oct 2023 15:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="S/arV84f"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10AA156E5
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 15:43:59 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2722412F;
	Wed, 25 Oct 2023 08:43:57 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39PFhf27097708;
	Wed, 25 Oct 2023 10:43:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1698248621;
	bh=b2vWuXgckxJUpT+tP14WafiD3Xak5aDPElXrXyECxbM=;
	h=From:To:CC:Subject:Date;
	b=S/arV84f3tRL76/ANqUb4PQyGmFqBFHxlk5jZ0ShBapqeLcmgfUpECTWIpgrpFMUO
	 p2exa1Xxp1fxDv/G2Os1Ah30eDl3zIsRrnZu2UPZMtlps8QDRI3r5UgePBI9Tcn5HY
	 oTsOZ0rbK9uyZHSJfo2Q+S46WsvcO1/rvUh9/5k8=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39PFhfOF019144
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 25 Oct 2023 10:43:41 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 25
 Oct 2023 10:43:41 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 25 Oct 2023 10:43:41 -0500
Received: from lelv0327.itg.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39PFhenW006861;
	Wed, 25 Oct 2023 10:43:40 -0500
From: Andrew Davis <afd@ti.com>
To: Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>
Subject: [PATCH RFC] arm64: dts: ti: k3-j721e: Use nvmem to model the efuses
Date: Wed, 25 Oct 2023 10:43:39 -0500
Message-ID: <20231025154339.1270246-1-afd@ti.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

The nvmem subsystem is used to model efuse areas. Currently our efuse
areas are described using raw syscon nodes and offsets into that. The
use case for this efuse area is to store the SoC Ethernet MAC address.
This is already such a commonly supported use case that both the nvmem
and networking subsystem have built-in support for it. Use that here
to get the following:

1. More standard, complete, and accurate description of this hardware
   efuse area.

2. Remove the need for this custom 'ti,syscon-efuse' property (which
   I'm surprised was accepted into the binding in the first place..)

3. Allow the parent node to not have to be a syscon which fixes a DT
   check warning.

RFC for now as we don't have a simple generic compatible for memory
mapped nvmem areas. For now we use the 'uniphier-efuse' compatible
as it is essentially just a generic mmio nvmem area, which means any
generic area is technically "compatible".

If this all is acceptable I'll split this patch into three and do
the same for all the other K3 devices still using this odd
'ti,syscon-efuse' pattern for v1.

Signed-off-by: Andrew Davis <afd@ti.com>
---
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      | 24 ++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index 05d6ef127ba78..8f488d43d49df 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -34,13 +34,30 @@ k3_reset: reset-controller {
 		};
 	};
 
-	mcu_conf: syscon@40f00000 {
-		compatible = "syscon", "simple-mfd";
+	mcu_conf: bus@40f00000 {
+		compatible = "simple-bus";
 		reg = <0x0 0x40f00000 0x0 0x20000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
 		ranges = <0x0 0x0 0x40f00000 0x20000>;
 
+		efuse@200 {
+			compatible = "socionext,uniphier-efuse";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0x200 0x40>;
+
+			nvmem-layout {
+				compatible = "fixed-layout";
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				mac_address: mac@0 {
+					reg = <0x0 0x6>;
+				};
+			};
+		};
+
 		phy_gmii_sel: phy@4040 {
 			compatible = "ti,am654-phy-gmii-sel";
 			reg = <0x4040 0x4>;
@@ -533,7 +550,8 @@ cpsw_port1: port@1 {
 				reg = <1>;
 				ti,mac-only;
 				label = "port1";
-				ti,syscon-efuse = <&mcu_conf 0x200>;
+				nvmem-cells = <&mac_address>;
+				nvmem-cell-names = "mac-address";
 				phys = <&phy_gmii_sel 1>;
 			};
 		};
-- 
2.39.2


