Return-Path: <devicetree+bounces-270592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLNZBkP/pmk7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:33:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 557351F2B3B
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:33:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EEFE231AC467
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:26:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE99E48C8D7;
	Tue,  3 Mar 2026 15:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="n3CK3dnH"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11020101.outbound.protection.outlook.com [52.101.69.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21493D525C;
	Tue,  3 Mar 2026 15:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.101
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772551571; cv=fail; b=rDHskPEttKQDCDDgh+tBShzfo4nVgFcalFH6ZPpmCVVN2RinnpjLfZzdJFYvvKtsm3Qy7FcEsw4Zl5NmvFDupFhB08+Bx3jP/Rb8ynIVQwl3MGBBzqzSPKNH8zzehk2yR2cUA9KLwYeSbPhUIwIYwvmzzmhwGi7XXe90KPXYXdk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772551571; c=relaxed/simple;
	bh=ikWGSW+/TmpO3gZGm7g7bgWcyo0NVW80lbBtr+mKw1w=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=XVIpJhY03cBn9CjK35262VbKgtJLgdAikXUam7zhAQsKnuBfVu5TSKrZ2VZlyB3TxT6yczbEo0ad4NPjSSaOLCVcQBl2CCqvlA8zj+LSBhb5cvMZa6tQapzkWIrC6UUBF9O5EEMgwB9fS7N4BQqwqNP/gUPKPefLOZiBxlksrFc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=n3CK3dnH; arc=fail smtp.client-ip=52.101.69.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EhoW45jCJkUh0/2y0zSF+bhMJpVh+U5av2gu4Wa4999W0SLbpmdtGITlzncd9hcPEneP0apcyGOBsJr+7KLOtUD5TWFGEIyqBtdmCyEn2HQUWcU8AjS7nIv+TFsGxpuJ+VspFi/pRRfz2n49weZSBTc+uV4Ed6wDUP8n9lCO6TymVMyKmDHjtQk7dK8B+UMI3migk7rpql/tlRGku+SGw4diSnccmlc/B2wCpp4m/4kE84hFXMJc1Jvu98MtS18cKI/sy+XoLoTcbbohp8WY5+uSn7e49k12ZsBaMEZe6Tq5UvlPqQCyqUt1jI1YxkwTMmnGvOETPQsUDyXrVwnCag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PBmcDEYym/rZdA8VFqYBdbvRydmxfKR0WPNdjwBSITU=;
 b=OUAAuIuvi8UH0evwi08lnep3HrSZ7qYIIyyu7RTKmLKNCZTlLGyxXEmCtlEv0DFqWTZcKWMBcflcBk3cwjoXFKrVfjJqEeL67YHWaBQk0kdqKhzxCBWghDtlnCjHhqiUMJ9fLwIiMBo8KUUwtJ9sXLLGxPyU4gjuQgDz3wv4vvgGOHaMS4fOcbB1ddWf+XfH9kwchRrT3GJxHFNTOSiuBfw/3nw5xqBAeveMB2v0U4OS3oSyobTki8Bn7wfHvo5mCTd0/5uAskMcU/9duby/UJEkgOJlRN5LWymEcAdPOdPvip7sZRa4/EHcK8jVhiBqWZpCW/vfa7Wawyn7c6EBDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.de; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PBmcDEYym/rZdA8VFqYBdbvRydmxfKR0WPNdjwBSITU=;
 b=n3CK3dnHdWQb6Ng9F+o3oLI8TPRxcod59hCSfeAoic/vVzS0qwR42i1qSQcsaLW53XY+qSXsd2zmP9FuvgVyY9V9e7ywSMH4PywdT3jnKDQ4/DhW2Q9fWms03pIFRXNpIck0i7OZqtiPF6eNU8I56DxoVIe2nvgeYXDn7uaC9hWhzpqQy4Tr65HJ9Fz9PbuZbmLnn5xOQL57JtQ528moqXXi26vwNmvv4ceXbcmgcPqLZ4SOl616arEbEg1pJqwqRJ+3FwttXxpwcdN5FJYsPmyNeuvEZ6j00gKWWUKXYHVM565MpW03IFbniY6oKyV4P3peJe8cuJQFSfmCUKHFKA==
Received: from AS9PR01CA0005.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:540::15) by GV2PPFC019BFE50.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:158:401::8e4) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Tue, 3 Mar
 2026 15:25:57 +0000
Received: from AMS1EPF0000008D.eurprd05.prod.outlook.com
 (2603:10a6:20b:540:cafe::11) by AS9PR01CA0005.outlook.office365.com
 (2603:10a6:20b:540::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.22 via Frontend Transport; Tue,
 3 Mar 2026 15:25:53 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 AMS1EPF0000008D.mail.protection.outlook.com (10.167.242.84) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.16 via Frontend Transport; Tue, 3 Mar 2026 15:25:56 +0000
Received: from phytec.de (172.25.0.51) by Postix.phytec.de (172.25.0.11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Tue, 3 Mar
 2026 16:25:56 +0100
From: Wadim Egorov <w.egorov@phytec.de>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <upstream@lists.phytec.de>
Subject: [PATCH v2] arm64: dts: ti: am62-phyboard-lyra: Add DT overlay for Lincoln LCD185-101CT panel
Date: Tue, 3 Mar 2026 16:25:41 +0100
Message-ID: <20260303152541.2272501-1-w.egorov@phytec.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: Postix.phytec.de (172.25.0.11) To Postix.phytec.de
 (172.25.0.11)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS1EPF0000008D:EE_|GV2PPFC019BFE50:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f892cf6-56cf-4f4d-47c4-08de79392a8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|36860700013|82310400026|13003099007;
X-Microsoft-Antispam-Message-Info:
	I03bVTN5ySyLDludZ509yR6ZpCM+DF6V3CI9indNHk/cZdyL/jDDomLQBbwo4Dpr1iaDKe7+b1z6LChjY5BZZgmWQkB5vTpwhtNQSV9T8NXU2/xBY1A/4vqHteDR+CD0fTbaYlWe7gCU9DGvLOVV/wmW6mG2c77R9tmSpOBLl5v/y4S9Xcggcn/K9WTY895NLOjyf73su8eVz8M2gFjj5khECl18rEkitEuMOkniwCkZTKhJSiDlCp7rcVAX94A1c0cI831SFpvsNHI35km3NXQL8CyU5ZW+8ut+XOxe7HBU25Y8lXngEnPxSa5nGqqgny9NMYX3mycVuXlG+i/hYh3yPZlND7fXMKpgNGIx43cJ4AY7UGIam/ba42OAgO2fpwqwUbPbWfwcB4EJzZVwHmbsPevTkV7pMhffMI2mOZ/+tqQ5ovyDGgsZDwDQw3xU275MG8U16PIgBcnbtQhHOYcoVzDVSMHFR7E5lCPMuX65YeDizeRsjSizACCvjEI7/eTItb3op7wB9q9Yp1XiE+tpB/s3c52b53XnnfAe4brXZ8MVjbErYZHhnv5+22YtBic1eKWNPAh2/dpRboCMyV88LvXAK2wICeZ9uKJjxQXR9DMcmJM/cfYqjONH6R51ZqL3JMN1scZAfuipMq3BwarFvRv5UAmFZBFRkTMq5FIL32IH2AGEazI+f7XhPESW+Le8rh0M/dsag/j/ZOPFYJlfJ9QHunwl2sijsgcEScTdyljaNEFc6CLyWmvxYDTxfTTelwr9B9Uof9QPcb2ccrf2mqS7IW9n26ZNBsA8KYQIO7KPyNxGhTwUZHRUssXdtDlLM/0TWWROnJG0aNEwsg==
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(36860700013)(82310400026)(13003099007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	E6YHBJFJoENPmxqxklzMm3S1laWnJH8AHnisVL8Bm7Z4Ad4Ynb3r54GyZ/VCTyNAqTeVDXPKckxmDrINsG5wJ4l3tvR3SMjWvILU9zIgLt9eNcs404+u1gYo2p2IzyspPLvW+87CrhZ0ZwURz5AJ2qGNwnNhdRIdboVsqO+V9fSjRnkXEWSAWYfmbSHH/X1jHnT2VbG2MIeJZ7x7HZwNyR7V/lBOAbpB0sZpP1kDp0jbLRJfcLLxLb5oa6YV+uPtn01dgXd95sLwdplgcME/DxRsO3YvrvDXVv9z7VjKD7GGXBbWUvfOGtD6YxGwx4dE4ApG7VsC/CvEILLuthaiRZuCuwprl1DWGrL5HJN+ptPAjScMlMdGpZ4uHoSqWOkqyjkBBi2dAa+WbZyuvo9ddj+MRUw+LWiE2DNA3mG63qgd4+U2+47NF1mgccWCm410
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2026 15:25:56.6803
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f892cf6-56cf-4f4d-47c4-08de79392a8e
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS1EPF0000008D.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PPFC019BFE50
X-Rspamd-Queue-Id: 557351F2B3B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[phytec.de,quarantine];
	R_DKIM_ALLOW(-0.20)[phytec.de:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_FROM(0.00)[bounces-270592-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[w.egorov@phytec.de,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[phytec.de:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.1:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lkml.org:url,phytec.de:dkim,phytec.de:email,phytec.de:mid]
X-Rspamd-Action: no action

Add an overlay to support the Lincoln Tech Sol LCD185-101CT panel.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
v2: 
  - Add entry for build time test of overlay in Makefile
  - Drop patch 1 and 2 from this series (both already on master)
v1: https://lkml.org/lkml/2025/9/25/645
---
 arch/arm64/boot/dts/ti/Makefile               |   4 +
 .../ti/k3-am62-phyboard-lyra-oldi-lcd185.dtso | 188 ++++++++++++++++++
 2 files changed, 192 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am62-phyboard-lyra-oldi-lcd185.dtso

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index ba01a929e06f..0a7efa6347c4 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -25,6 +25,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-ivy.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-mallow.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-yavia.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am62x-phyboard-lyra-gpio-fan.dtbo
+dtb-$(CONFIG_ARCH_K3) += k3-am62-phyboard-lyra-oldi-lcd185.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am62-lp-sk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am62-lp-sk-nand.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am62-pocketbeagle2.dtb
@@ -186,6 +187,8 @@ k3-am625-phyboard-lyra-gpio-fan-dtbs := k3-am625-phyboard-lyra-rdk.dtb \
 	k3-am62x-phyboard-lyra-gpio-fan.dtbo
 k3-am625-phyboard-lyra-qspi-nor-dtbs := k3-am625-phyboard-lyra-rdk.dtb \
 	k3-am6xx-phycore-qspi-nor.dtbo
+k3-am625-phyboard-lyra-oldi-lcd185-dtbs := k3-am625-phyboard-lyra-rdk.dtb \
+	k3-am62-phyboard-lyra-oldi-lcd185.dtbo
 k3-am625-sk-csi2-imx219-dtbs := k3-am625-sk.dtb \
 	k3-am62x-sk-csi2-imx219.dtbo
 k3-am625-sk-csi2-ov5640-dtbs := k3-am625-sk.dtb \
@@ -289,6 +292,7 @@ dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
 	k3-am625-phyboard-lyra-disable-spi-nor.dtb \
 	k3-am625-phyboard-lyra-gpio-fan.dtb \
 	k3-am625-phyboard-lyra-qspi-nor.dtb \
+	k3-am625-phyboard-lyra-oldi-lcd185.dtb \
 	k3-am625-sk-csi2-imx219.dtb \
 	k3-am625-sk-csi2-ov5640.dtb \
 	k3-am625-sk-csi2-tevi-ov5640.dtb \
diff --git a/arch/arm64/boot/dts/ti/k3-am62-phyboard-lyra-oldi-lcd185.dtso b/arch/arm64/boot/dts/ti/k3-am62-phyboard-lyra-oldi-lcd185.dtso
new file mode 100644
index 000000000000..3466890ee947
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am62-phyboard-lyra-oldi-lcd185.dtso
@@ -0,0 +1,188 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2022 PHYTEC Messtechnik GmbH
+ * Author: Wadim Egorov <w.egorov@phytec.de>
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/pwm/pwm.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include "k3-pinctrl.h"
+
+&{/} {
+	display {
+		compatible = "lincolntech,lcd185-101ct";
+		backlight = <&backlight>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				dual-lvds-odd-pixels;
+				lcd_in0: endpoint {
+					remote-endpoint = <&oldi_0_out>;
+				};
+			};
+
+			port@1 {
+				dual-lvds-even-pixels;
+				lcd_in1: endpoint {
+					remote-endpoint = <&oldi_1_out>;
+				};
+			};
+		};
+	};
+
+	backlight: backlight {
+		pinctrl-names = "default";
+		pinctrl-0 = <&bl_pwm_pins_default>;
+
+		compatible = "pwm-backlight";
+
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <6>;
+
+		enable-gpios = <&gpio_exp 5 GPIO_ACTIVE_HIGH>;
+		pwms = <&epwm0 1 50000 0>;
+	};
+};
+
+&dss {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_oldi0_pins_default &main_dss0_pins_default>;
+};
+
+&dss_ports {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	/* VP1: Output to OLDI */
+	port@0 {
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		dpi0_out0: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&oldi_0_in>;
+		};
+
+		dpi0_out1: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&oldi_1_in>;
+		};
+	};
+};
+
+&epwm0 {
+	status = "okay";
+};
+
+&main_i2c1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	touchscreen@5d {
+		compatible = "goodix,gt928";
+		reg = <0x5d>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&touch_screen_pins_default>;
+
+		interrupt-parent = <&main_gpio0>;
+		interrupts = <19 IRQ_TYPE_LEVEL_LOW>;
+
+		reset-gpios = <&main_gpio0 18 GPIO_ACTIVE_HIGH>;
+		irq-gpios = <&main_gpio0 19 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&main_pmx0 {
+	bl_pwm_pins_default: bl-pwm-pins-default {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x01b8, PIN_INPUT, 2) /* (C13) SPI0_CS1.EHRPWM0_B */
+		>;
+	};
+
+	touch_screen_pins_default: touch-screen-pins-default {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x048, PIN_OUTPUT, 7) /* (N25) GPMC0_AD3.GPIO0_18 - RST */
+			AM62X_IOPAD(0x04c, PIN_INPUT, 7) /* (P24) GPMC0_AD4.GPIO0_19 - INT */
+		>;
+	};
+
+	main_oldi0_pins_default: main-oldi0-pins-default {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x0260, PIN_OUTPUT, 0) /* (AA5) OLDI0_A0N */
+			AM62X_IOPAD(0x025c, PIN_OUTPUT, 0) /* (Y6) OLDI0_A0P */
+			AM62X_IOPAD(0x0268, PIN_OUTPUT, 0) /* (AD3) OLDI0_A1N */
+			AM62X_IOPAD(0x0264, PIN_OUTPUT, 0) /* (AB4) OLDI0_A1P */
+			AM62X_IOPAD(0x0270, PIN_OUTPUT, 0) /* (Y8) OLDI0_A2N */
+			AM62X_IOPAD(0x026c, PIN_OUTPUT, 0) /* (AA8) OLDI0_A2P */
+			AM62X_IOPAD(0x0278, PIN_OUTPUT, 0) /* (AB6) OLDI0_A3N */
+			AM62X_IOPAD(0x0274, PIN_OUTPUT, 0) /* (AA7) OLDI0_A3P */
+			AM62X_IOPAD(0x0280, PIN_OUTPUT, 0) /* (AC6) OLDI0_A4N */
+			AM62X_IOPAD(0x027c, PIN_OUTPUT, 0) /* (AC5) OLDI0_A4P */
+			AM62X_IOPAD(0x0288, PIN_OUTPUT, 0) /* (AE5) OLDI0_A5N */
+			AM62X_IOPAD(0x0284, PIN_OUTPUT, 0) /* (AD6) OLDI0_A5P */
+			AM62X_IOPAD(0x0290, PIN_OUTPUT, 0) /* (AE6) OLDI0_A6N */
+			AM62X_IOPAD(0x028c, PIN_OUTPUT, 0) /* (AD7) OLDI0_A6P */
+			AM62X_IOPAD(0x0298, PIN_OUTPUT, 0) /* (AD8) OLDI0_A7N */
+			AM62X_IOPAD(0x0294, PIN_OUTPUT, 0) /* (AE7) OLDI0_A7P */
+			AM62X_IOPAD(0x02a0, PIN_OUTPUT, 0) /* (AD4) OLDI0_CLK0N */
+			AM62X_IOPAD(0x029c, PIN_OUTPUT, 0) /* (AE3) OLDI0_CLK0P */
+			AM62X_IOPAD(0x02a8, PIN_OUTPUT, 0) /* (AE4) OLDI0_CLK1N */
+			AM62X_IOPAD(0x02a4, PIN_OUTPUT, 0) /* (AD5) OLDI0_CLK1P */
+		>;
+	};
+};
+
+&oldi0 {
+	status = "okay";
+};
+
+&oldi1 {
+	status = "okay";
+};
+
+&oldi0_ports {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	port@0 {
+		reg = <0>;
+		oldi_0_in: endpoint {
+			remote-endpoint = <&dpi0_out0>;
+		};
+	};
+
+	port@1 {
+		reg = <1>;
+		oldi_0_out: endpoint {
+			remote-endpoint = <&lcd_in0>;
+		};
+	};
+};
+
+&oldi1_ports {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	port@0 {
+		reg = <0>;
+		oldi_1_in: endpoint {
+			remote-endpoint = <&dpi0_out1>;
+		};
+	};
+
+	port@1 {
+		reg = <1>;
+		oldi_1_out: endpoint {
+			remote-endpoint = <&lcd_in1>;
+		};
+	};
+};
-- 
2.48.1


