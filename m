Return-Path: <devicetree+bounces-134899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 702879FEE48
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 10:14:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0BEA47A01EB
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 09:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FF8818C910;
	Tue, 31 Dec 2024 09:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="b9Gl8hB+"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E101EEE6;
	Tue, 31 Dec 2024 09:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735636492; cv=none; b=jSu77P0vS8sCpWxduF4bYkUzKTMYf+u2nZBCCz5L1O1gpUql1qRkNpMIclL2UohuivUyLa6BCOjAMk3pJA7W8XzYvaDLV4rA9GFdL0as0WaVjDURtmW0E/0w52asfXEG+8lEWjtiAdaP8DdYMZpsMZM9kwtcFFJY19CWsQO9CIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735636492; c=relaxed/simple;
	bh=M1bOTbDzo+XhS2bblIymg9KFqzpwHH9SAYimW8k+Dy8=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ZYtsMaSpnHSgghihl/xG/irePMWVV9Yg+oOoTM8aLaTruTtIOsL5YpH0L1R91P2QBZ/PUU4BQwIUXQT25u6OM+gT+IcNXKIMRbk2hGEXNDWCCnqZYpFMMN1/zhf7OaQYLIH4+foCrZmWHT9sl76eTHdP9qmDuqNx9X2Lubem1oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=b9Gl8hB+; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 4BV9EOS51611659
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 31 Dec 2024 03:14:24 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735636464;
	bh=g2qZD0/P/vJ/HRqF257T3srRsmW4oyMvUfvnaCfKbhc=;
	h=From:To:CC:Subject:Date;
	b=b9Gl8hB+hJQ7DW8QtOCx0jcnbPdXghIi2kOIipIvafGp+6ZItH93QAOqUemfJeTie
	 9rKGYta7NvMqbSg62ujvN2AYyYmKkZQWVQ8NWZ107H+q776LpTysaLpy3FnVDN3Aho
	 TlHkKEJd1JIqqK6bgYmFp9dOLm2VaI7dRSdkZ2i4=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 4BV9EOd0026986
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 31 Dec 2024 03:14:24 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 31
 Dec 2024 03:14:23 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 31 Dec 2024 03:14:23 -0600
Received: from lcpd911.dhcp.ti.com (lcpd911.dhcp.ti.com [172.24.227.226])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4BV9EJgF074779;
	Tue, 31 Dec 2024 03:14:20 -0600
From: Dhruva Gole <d-gole@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: Tony Lindgren <tony@atomide.com>,
        Markus Schneider-Pargmann
	<msp@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>, Dhruva Gole
	<d-gole@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm64: dts: ti: k3-am62a-wakeup: Configure ti-sysc for wkup_uart0
Date: Tue, 31 Dec 2024 14:44:19 +0530
Message-ID: <20241231-am62a-dt-ti-sysc-wkup-v1-1-a9b0d18a2649@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Change-ID: 20241231-am62a-dt-ti-sysc-wkup-d3539d0627d2
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735631796; l=4031; i=d-gole@ti.com; s=20240919; h=from:subject:message-id; bh=PpIld9gnQEkQi1xw/86ZrvnKG5NUQ76+TjgiaHmgAhg=; b=EZhfIJFX6vJEZSxrlYZVlji5QHBhHV7onPynlsOv/edJbsxS9vVOrmlBJ9UXMW99YZNpsHhK5 5jIA5S5OBSaDzpRxC0te4wlAfiQ/4pVDnJzqiQ5JXL/w97rTvHUruC2
X-Developer-Key: i=d-gole@ti.com; a=ed25519; pk=k8NnY4RbxVqeqGsYfTHeVn4hPOHkjg7Mii0Ixs4rghM=
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

From: Vibhore Vardhan <vibhore@ti.com>

Similar to the TI K3-AM62x SoC commit ce27f7f9e328c8582a169f97f1466976561f1
("arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc for wkup_uart0"),
The devices in the wkup domain are capable of waking up the system from
suspend. We can configure the wkup domain devices in a generic way using
the ti-sysc interconnect target module driver like we have done with the
earlier TI SoCs.

As ti-sysc manages the SYSCONFIG related registers independent of the
child hardware device, the wake-up configuration is also set even if
wkup_uart0 is reserved by sysfw.

The wkup_uart0 device has interconnect target module register mapping like
dra7 wkup uart. There is a 1 MB interconnect target range with one uart IP
block in the target module. The power domain and clock affects the whole
interconnect target module.

Note we change the functional clock name to follow the ti-sysc binding
and use "fck" instead of "fclk".

Also note that we need to disable the target module reset as noted by
Markus. Otherwise the sysfw using wkup_uart0 can get confused on some
devices leading to boot time issues such as mbox timeouts.

Signed-off-by: Vibhore Vardhan <vibhore@ti.com>
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
[d-gole@ti.com: Reworded the entire commit message]
Signed-off-by: Dhruva Gole <d-gole@ti.com>
---
Similar patch was sent for AM62x by Tony,
https://lore.kernel.org/all/20231219072503.12427-1-tony@atomide.com/

Original patch for AM62A existed in the TI Vendor tree, with Vibhore's
authorship:
https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel/commit/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi?h=ti-linux-6.6.y-cicd&id=197bf739444100c13edaddd1f7061fa94ccfad2d

Just reworded the commit message without changing any code content.

Happy New Year to everyone! :)
---
 arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi | 36 +++++++++++++++++++++++------
 1 file changed, 29 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
index 0b1dd5390cd3f42b0ec56bab042388722b4c22a1..b2c8f5351743857a54385178cce5c82a961917e3 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
@@ -2,9 +2,11 @@
 /*
  * Device Tree Source for AM62A SoC Family Wakeup Domain peripherals
  *
- * Copyright (C) 2022-2024 Texas Instruments Incorporated - https://www.ti.com/
+ * Copyright (C) 2022-2025 Texas Instruments Incorporated - https://www.ti.com/
  */
 
+#include <dt-bindings/bus/ti-sysc.h>
+
 &cbass_wakeup {
 	wkup_conf: bus@43000000 {
 		compatible = "simple-bus";
@@ -38,14 +40,34 @@ usb1_phy_ctrl: syscon@4018 {
 		};
 	};
 
-	wkup_uart0: serial@2b300000 {
-		compatible = "ti,am64-uart", "ti,am654-uart";
-		reg = <0x00 0x2b300000 0x00 0x100>;
-		interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
+	target-module@2b300050 {
+		compatible = "ti,sysc-omap2", "ti,sysc";
+		reg = <0 0x2b300050 0 0x4>,
+		      <0 0x2b300054 0 0x4>,
+		      <0 0x2b300058 0 0x4>;
+		reg-names = "rev", "sysc", "syss";
+		ti,sysc-mask = <(SYSC_OMAP2_ENAWAKEUP |
+				 SYSC_OMAP2_SOFTRESET |
+				 SYSC_OMAP2_AUTOIDLE)>;
+		ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+				<SYSC_IDLE_NO>,
+				<SYSC_IDLE_SMART>,
+				<SYSC_IDLE_SMART_WKUP>;
+		ti,syss-mask = <1>;
+		ti,no-reset-on-init;
 		power-domains = <&k3_pds 114 TI_SCI_PD_EXCLUSIVE>;
 		clocks = <&k3_clks 114 0>;
-		clock-names = "fclk";
-		status = "disabled";
+		clock-names = "fck";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0 0x2b300000 0x100000>;
+
+		wkup_uart0: serial@0 {
+			compatible = "ti,am64-uart", "ti,am654-uart";
+			reg = <0 0x100>;
+			interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+	       };
 	};
 
 	wkup_i2c0: i2c@2b200000 {

---
base-commit: 8155b4ef3466f0e289e8fcc9e6e62f3f4dceeac2
change-id: 20241231-am62a-dt-ti-sysc-wkup-d3539d0627d2

Best regards,
-- 
Dhruva Gole <d-gole@ti.com>


