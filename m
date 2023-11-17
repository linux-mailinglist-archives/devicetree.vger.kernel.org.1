Return-Path: <devicetree+bounces-16676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B22A7EF40E
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 15:09:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E805C28135A
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 14:09:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4301E328D2;
	Fri, 17 Nov 2023 14:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="DsM/GbX4"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 850DE127;
	Fri, 17 Nov 2023 06:09:20 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AHE9CGG007107;
	Fri, 17 Nov 2023 08:09:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700230152;
	bh=wSg5Pab0JFODtNPTS4fXeCJ+AgvmkAl4zmFF9wwQhyY=;
	h=From:To:CC:Subject:Date;
	b=DsM/GbX46Uo5NdmHWf+qUwN8g0bT1EqFxPFINx8XQMrJEp/wvIQhGJk3xBqLFmM9r
	 nmBuXNv8s+w1tjNHwDpvVY/kKd5E2CdYiowQQHzA13P5mGkYXVkFpLy5HgmTZFKHVU
	 IH3fbeyByzsjCde9kidLXzf03I8u5G0r/YAQkNtc=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AHE9Cqa129946
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Nov 2023 08:09:12 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Nov 2023 08:09:12 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Nov 2023 08:09:12 -0600
Received: from lelv0326.itg.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AHE9BuX112757;
	Fri, 17 Nov 2023 08:09:11 -0600
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
Subject: [PATCH 1/5] arm64: dts: ti: k3-j7200: Add chipid node to wkup_conf bus
Date: Fri, 17 Nov 2023 08:09:06 -0600
Message-ID: <20231117140910.8747-1-afd@ti.com>
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

Like in other K3 SoCs the chipid register is inside the wakeup
configuration space. Move the chipid node under a new bus to
better represent this topology and match other similar SoCs.

Signed-off-by: Andrew Davis <afd@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
index 3fc588b848c61..672cb2acc1be9 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
@@ -178,9 +178,16 @@ phy_gmii_sel: phy@4040 {
 		};
 	};
 
-	chipid@43000014 {
-		compatible = "ti,am654-chipid";
-		reg = <0x00 0x43000014 0x00 0x4>;
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
 
 	/* MCU_TIMERIO pad input CTRLMMR_MCU_TIMER*_CTRL registers */
-- 
2.39.2


