Return-Path: <devicetree+bounces-16678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD5D7EF40F
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 15:09:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BAF741C20AC7
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 14:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 316C434575;
	Fri, 17 Nov 2023 14:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="KuoL7dlN"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D316C5;
	Fri, 17 Nov 2023 06:09:22 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AHE9E06078200;
	Fri, 17 Nov 2023 08:09:15 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700230155;
	bh=2zz0+d9xuNyxcNrw5YRh504NZ6Hjj41UDW6UbZk+QEI=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=KuoL7dlNaQPoLuKmQXHYs2mnJGQ76gxnwMIGA7AqrOV7vIXHII4UzPrUUK75MRR7f
	 DoC0Hsdnv60wi9sAUlQr9b0rT3IgtgNOqXPwsgnlTVEJdJg4+rUkWREgLBefiBqZOP
	 07PrWLlu4p69XHA3ql+9+clSJb6LizTCubWRc5Ys=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AHE9EYM072599
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Nov 2023 08:09:14 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Nov 2023 08:09:15 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Nov 2023 08:09:14 -0600
Received: from lelv0326.itg.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AHE9Bub112757;
	Fri, 17 Nov 2023 08:09:14 -0600
From: Andrew Davis <afd@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Andrew Davis
	<afd@ti.com>
Subject: [PATCH 5/5] arm64: dts: ti: k3-j721e: Add chipid node to wkup_conf bus
Date: Fri, 17 Nov 2023 08:09:10 -0600
Message-ID: <20231117140910.8747-5-afd@ti.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231117140910.8747-1-afd@ti.com>
References: <20231117140910.8747-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Like in other K3 SoCs the chipid register is inside the wakeup
configuration space. Move the chipid node under a new bus to
better represent this topology and match other similar SoCs.

Signed-off-by: Andrew Davis <afd@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index f7ab7719fc077..8f259efe3af9e 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -48,9 +48,16 @@ phy_gmii_sel: phy@4040 {
 		};
 	};
 
-	chipid@43000014 {
-		compatible = "ti,am654-chipid";
-		reg = <0x0 0x43000014 0x0 0x4>;
+	wkup_conf: bus@43000000 {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x00 0x43000000 0x20000>;
+
+		chipid: chipid@14 {
+			compatible = "ti,am654-chipid";
+			reg = <0x14 0x4>;
+		};
 	};
 
 	wkup_pmx0: pinctrl@4301c000 {
-- 
2.39.2


