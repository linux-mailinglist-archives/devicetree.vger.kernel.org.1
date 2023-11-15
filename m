Return-Path: <devicetree+bounces-15816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2197EBEE0
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 09:52:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 440A128138E
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 08:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65811522D;
	Wed, 15 Nov 2023 08:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="RUMBRdON"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F714687
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:52:24 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5636E10F;
	Wed, 15 Nov 2023 00:52:23 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AF8qC68009166;
	Wed, 15 Nov 2023 02:52:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700038332;
	bh=AxdxTMZWtoGNh7SbWlsdt1sItT+gDqfFQ5z8E26GN70=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=RUMBRdONSf05iA/pISip5aMxGD6R/4AzdLtBJA6GYPTxyKWHeY6e3Y6I8I9q852KM
	 d7JZr+EhANop0L2oGjl3MzvsmsgEfU/cjDnxVOcEygayEGiQgbqyk1Ow2L1PSZMKH9
	 ISLuRw/1KkyAeBEa9DVloqJIDazrXpcOx70kA+E0=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AF8qCOB029247
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 15 Nov 2023 02:52:12 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 15
 Nov 2023 02:52:12 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 15 Nov 2023 02:52:12 -0600
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AF8q4lv005114;
	Wed, 15 Nov 2023 02:52:09 -0600
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <r-gunasekaran@ti.com>,
        <srk@ti.com>, <s-vadapalli@ti.com>
Subject: [PATCH v2 1/2] arm64: dts: ti: k3-j721e-evm: Add overlay for PCIE0 Endpoint Mode
Date: Wed, 15 Nov 2023 14:22:03 +0530
Message-ID: <20231115085204.3578616-2-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231115085204.3578616-1-s-vadapalli@ti.com>
References: <20231115085204.3578616-1-s-vadapalli@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Add overlay to enable the PCIE0 instance of PCIe on J721E-EVM in
Endpoint mode of operation.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 arch/arm64/boot/dts/ti/Makefile               |  3 ++
 .../boot/dts/ti/k3-j721e-evm-pcie0-ep.dtso    | 53 +++++++++++++++++++
 2 files changed, 56 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-evm-pcie0-ep.dtso

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index 77a347f9f47d..5620db44d4dc 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -66,6 +66,8 @@ dtb-$(CONFIG_ARCH_K3) += k3-j7200-evm.dtb
 k3-j721e-evm-dtbs := k3-j721e-common-proc-board.dtb k3-j721e-evm-quad-port-eth-exp.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-beagleboneai64.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-evm.dtb
+k3-j721e-evm-pcie0-ep-dtbs := k3-j721e-evm.dtb k3-j721e-evm-pcie0-ep.dtbo
+dtb-$(CONFIG_ARCH_K3) += k3-j721e-evm-pcie0-ep.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-evm-gesi-exp-board.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-sk.dtb
 
@@ -85,4 +87,5 @@ DTC_FLAGS_k3-am625-sk += -@
 DTC_FLAGS_k3-am62-lp-sk += -@
 DTC_FLAGS_k3-am6548-iot2050-advanced-m2 += -@
 DTC_FLAGS_k3-j721e-common-proc-board += -@
+DTC_FLAGS_k3-j721e-evm += -@
 DTC_FLAGS_k3-j721s2-common-proc-board += -@
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-evm-pcie0-ep.dtso b/arch/arm64/boot/dts/ti/k3-j721e-evm-pcie0-ep.dtso
new file mode 100644
index 000000000000..0c82a13b65a4
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-j721e-evm-pcie0-ep.dtso
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * DT Overlay for enabling PCIE0 instance in Endpoint Configuration with the
+ * J7 common processor board.
+ *
+ * J7 Common Processor Board Product Link: https://www.ti.com/tool/J721EXCPXEVM
+ *
+ * Copyright (C) 2023 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/soc/ti,sci_pm_domain.h>
+
+#include "k3-pinctrl.h"
+
+/*
+ * Since Root Complex and Endpoint modes are mutually exclusive
+ * disable Root Complex mode.
+ */
+&pcie0_rc {
+	status = "disabled";
+};
+
+&cbass_main {
+	#address-cells = <2>;
+	#size-cells = <2>;
+	interrupt-parent = <&gic500>;
+
+	pcie0_ep: pcie-ep@2900000 {
+		compatible = "ti,j721e-pcie-ep";
+		reg = <0x00 0x02900000 0x00 0x1000>,
+		      <0x00 0x02907000 0x00 0x400>,
+		      <0x00 0x0d000000 0x00 0x00800000>,
+		      <0x00 0x10000000 0x00 0x08000000>;
+		reg-names = "intd_cfg", "user_cfg", "reg", "mem";
+		interrupt-names = "link_state";
+		interrupts = <GIC_SPI 318 IRQ_TYPE_EDGE_RISING>;
+		ti,syscon-pcie-ctrl = <&scm_conf 0x4070>;
+		max-link-speed = <3>;
+		num-lanes = <1>;
+		power-domains = <&k3_pds 239 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 239 1>;
+		clock-names = "fck";
+		max-functions = /bits/ 8 <6>;
+		max-virtual-functions = /bits/ 8 <4 4 4 4 0 0>;
+		dma-coherent;
+		phys = <&serdes0_pcie_link>;
+		phy-names = "pcie-phy";
+	};
+};
-- 
2.34.1


