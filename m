Return-Path: <devicetree+bounces-165817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F750A85943
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 12:17:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 595DB8A3361
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 10:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D189221289;
	Fri, 11 Apr 2025 10:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="V0eZG0TK"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (mail-db5eur02on2110.outbound.protection.outlook.com [40.107.249.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB90221260
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 10:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.249.110
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744366226; cv=fail; b=kf7vDOSFUa3RVOzjwT4YHOUNieYSxlSz4bywN2FmIHYatPf2CzI7PrG+p/jvHxudxJOZq2hyBVKy+AbB/R0/UO+RhNcCsZWBGRGb7rnSKrioxH5e4vQGkq2Ve8qT/5zVLwr+y3HHzY9mAMuH+J/OxmhCG5Lh3pF2ruYKO2vcWFw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744366226; c=relaxed/simple;
	bh=THU51MCZ7SfESl8lFybsb5t4a3MeZvo0TKmoF2sqr9o=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=J0LevM4byZzhywPZUEBBuSog7pDNiQJiSCCUDcUsFs0cL7m8Pv+Z3PUou4R9pu4ZbhsIxBe3HXcqxvzydImuwXdk3+7Y9y6kZz4Ix7Sqr00fhXMT2M+sGYGxbgvd6MTssrv8ySLysKRJ5rsAMgGg3nRc0UEBZlHbymlj+Vq/obw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=V0eZG0TK; arc=fail smtp.client-ip=40.107.249.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OGxmMFbMdr2mSx93YcltF1pNfPttxc/PfYDlVqa/isWj2whLN4vKr0I3L6YXFUKhiRY/X+Pf4tfBqGgVwj6MFrSBGi+rlDmLLAqa8SKts23DotgSN2gDy3hwv4BxzRkY2MaQrcPMKFRTNqyd/IWpfkxSB7V4jDOTfWd7/qB9YIV2zPA+gdWAQM44Wpe+uqON+eYoGxQqcln9GJAbOyWrHokWfkD7J/LprfxQH4AMQCWLhqGl+kmDxpX0h+gvcMT4aHCdYO84Z1/IjVx2BeZB3YnxJvEVbGxVlsUlUbpjabjj5Cu6zSuW88UyY/VLSjH3e/PRjG+vawat9SR5XzKNyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZYJ4b4yZhY8dsKQebzRpd5yZido7JUaqxSYxiGpAjW0=;
 b=boXW3h/QO6a6Hm3Ej5OBFRYGtil5ed+ziSupJCvA1kk1hWBum6Wvh+mgC9Df6mKpjZH+gYIg7+LgJrCUpZjo9bk1FBGyXbgLZ73LIEvfHDzALaA+B64a9AkAS/3j0+Iqo44IX53W0n4aWexf3qjqwQbx0ldw+EJDNxmgyaYT2K9J8bEpmQCp/a9ppDytRC3QSSmmu7wfpFFNm6eDbpV9XTqp+edduoOkeal4avkk80xS4s7vStvyzau3a+7SSQ1ULSxsJL6cpchkdlMubzJMHSI8A0J4Wk3SrsqVuBKKtw7Qm/UzjGuYwIZniOSxP3L1LjOD1MbNvKHVnb+htY9xnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=kernel.org smtp.mailfrom=phytec.de;
 dmarc=fail (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=phytec.de; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZYJ4b4yZhY8dsKQebzRpd5yZido7JUaqxSYxiGpAjW0=;
 b=V0eZG0TKtbuGZEc1snQqEjLouprjG6XpkbhuyYaFmvunL1MEZY5xGX1vlcSY4iTf8Fk5pRMV9byF+xYVusoc1dwcSO7Rju3wDK/Z5vZnX/bBLiAjMCrAXJT4wOq5ggr5eN0aYYZH3jcyK9IDqw86M/NTpvtI7WraYA3j4P3JhNmXEi1SonfrN73jJix1w2ZHfSeup9n5zlv6ZEoM7Pvt3wWsD5f6aSJ3tZ6W+QvvvtPQKi7erRETD+GJWnsO2KGS8Ls41yppT6XqDiP/HypfGFK8G1TT2G6gMuSkDlAe0MMzkp5uP7nmy+BqKX/iLvp89WvMJNSx/RIdxde0iiJGUQ==
Received: from DU7P191CA0009.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:54e::13)
 by AM0P195MB0561.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:166::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.27; Fri, 11 Apr
 2025 10:10:16 +0000
Received: from DB3PEPF0000885F.eurprd02.prod.outlook.com
 (2603:10a6:10:54e:cafe::3e) by DU7P191CA0009.outlook.office365.com
 (2603:10a6:10:54e::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8632.26 via Frontend Transport; Fri,
 11 Apr 2025 10:10:16 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Diagnostix.phytec.de (91.26.50.189) by
 DB3PEPF0000885F.mail.protection.outlook.com (10.167.242.10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8632.13 via Frontend Transport; Fri, 11 Apr 2025 10:10:16 +0000
Received: from Florix.phytec.de (172.25.0.13) by Diagnostix.phytec.de
 (172.25.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.44; Fri, 11 Apr
 2025 12:10:15 +0200
Received: from lws-haller.phytec.de (172.25.32.139) by Florix.phytec.de
 (172.25.0.13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.44; Fri, 11 Apr
 2025 12:10:14 +0200
From: Dominik Haller <d.haller@phytec.de>
To: <robh@kernel.org>, <kristo@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <vigneshr@ti.com>, <nm@ti.com>, <m-chawdhry@ti.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<upstream@lists.phytec.de>
Subject: [PATCH 2/2] arm64: dts: ti: Add basic support for phyBOARD-Izar-AM68x
Date: Fri, 11 Apr 2025 12:10:04 +0200
Message-ID: <20250411101004.13276-2-d.haller@phytec.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250411101004.13276-1-d.haller@phytec.de>
References: <20250411101004.13276-1-d.haller@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: Diagnostix.phytec.de (172.25.0.14) To Florix.phytec.de
 (172.25.0.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB3PEPF0000885F:EE_|AM0P195MB0561:EE_
X-MS-Office365-Filtering-Correlation-Id: 991d1738-3616-4a59-c4d7-08dd78e10ec7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|376014|36860700013|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?r6j2RZ8uIiYTEeYVukbhZUTVrqXYCEWgfKXpdQFG0I9mlxf26zXzHR+jmTRZ?=
 =?us-ascii?Q?DguT+9fIohWsh6qe3qTerrY//G4RSnhFQdiaLedJ4lsCXNBQ6rzgh/SnAEX5?=
 =?us-ascii?Q?60B564vcFUNidWFg4Lapwcb81PZg7Dqyr3mW2tdYuf5HLLKVFUgPg84iYKN7?=
 =?us-ascii?Q?oYIyDar9tCLpKnur1oaISgTTi/rpEEWYODdzODJ6qX1mrVRoU1gQ91DEQ79w?=
 =?us-ascii?Q?JWB3kZNMoa/Fze1pnD17GJs6HsZUVOhvEOGsDhMUS0LW+bd1qRdwvzUzUQsi?=
 =?us-ascii?Q?Xve8MMjHUzudd8RHkvx+9iX1P6kJu9bO48vc/GzpOvdRtjKufSQwoLVDTkZ7?=
 =?us-ascii?Q?hbs//JulWu9e6sddD3kcL8CLMZnfNPltg4YPZIRsYnVwE2IlLqCmyauUrQIr?=
 =?us-ascii?Q?Qe2fjSPJKGK9bEvhzDDpwmHBvG1KjZRcPIgttftxhdR977H4XJwkns2L43Qp?=
 =?us-ascii?Q?CP+wwOFZZkg99t9P7J9HtyKGVoWTKnRGp57r1mPHqLNPmD00Tkprt7weK/7V?=
 =?us-ascii?Q?AepNzYELOWt84dM1Hiz4fJWqwEAvMEoMO2OhNq1SxrCPv9H+LWPeN4G53lUo?=
 =?us-ascii?Q?7ftoalqcOolHYLImbEDmweO5Ex+K+EaVUGDd98m4bPMf1RYr9ai7zdkZl+yX?=
 =?us-ascii?Q?urrJB5zvXLrZlxVrScN/fqtWgf5asy+aM5IYo3+UWSuB3VlD46pXng1Bef0P?=
 =?us-ascii?Q?9dmMRkN1YCjqvLsny9dwcHijPA5ATKQ6gXQCg7MwOcpcc6R6TS9jrVr6vImp?=
 =?us-ascii?Q?6mrKhMLM5JBwasSysinnfpfQwPAq2XttoBVS+VUXQ5h93vEfoDX1bNWJUYWw?=
 =?us-ascii?Q?x2HQic3YnLK1d4UwuI1vJO1s9ADpdV+tp2yXefcdd35kftx7uN62FXKp/aEj?=
 =?us-ascii?Q?385IAaf1JRKVvuAcP/OHa8BtzSHvamhiPEVFCX4Yg0jmlfFnhr+rqVS3VAEy?=
 =?us-ascii?Q?zDiP7lIqk5Opd5m6Vh+vQFxTnIHUnMmFrwNpAY5L8+dcC2DsL/O+hFXIPSIn?=
 =?us-ascii?Q?MgzN0Z6DYAZRD/lZG9X5t2wjcHyCv5OEoIHZwefUlhYrnYEcBImfHsQu8Y0/?=
 =?us-ascii?Q?xybJYKB/wRyrSjFvSKr6lHf6MpHkbZnlkR9QXd40lxl14jKNxhGw8mPaEQR2?=
 =?us-ascii?Q?LGcv2O/77ODv6tFXcHlddSaqXgGFEM4vmbUZe+1ZymvogrkCGyyHyYBCNhFW?=
 =?us-ascii?Q?0vB/0nubZV4HMUPKD8EBFhO44dcGUCIgv2h5u3Ojj+HQGIwfOGzMM0T1dPxD?=
 =?us-ascii?Q?Bz/NnR7ITJQQaVm7249MToqpYDaOtwySZ2H445MEuPTb3ENYkJBRjufupijN?=
 =?us-ascii?Q?pck3Yu6sO3bAFJ+moSrqOjhwkxlLVzUtmZJ7x+CUSyIh/QzwYL7oICYJ3EeC?=
 =?us-ascii?Q?KMSfh2EdQTZx6DxIa5NjUw5C3qUMw6L0ZA9mEbPVrRUN/OT0eSeY4NKei+V0?=
 =?us-ascii?Q?fzYvPYdbVFH4HCv/Gccz8pVp0b6hCj1hDD1cW1Wkh7kBz3mbgepVlQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:Diagnostix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(376014)(36860700013)(13003099007);DIR:OUT;SFP:1102;
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2025 10:10:16.6488
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 991d1738-3616-4a59-c4d7-08dd78e10ec7
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Diagnostix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	DB3PEPF0000885F.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0P195MB0561

The phyCORE-AM68x/TDA4x [1] is a SoM (System on Module) featuring TI's
AM68x/TDA4x SoC. It can be used in combination with different carrier
boards. This module can come with different sizes and models for DDR,
eMMC, SPI NOR Flash and various SoCs from the AM68x/TDA4x (J721S2) family.

A reference carrier board design, called phyBOARD-Izar is used for the
phyCORE-AM68x/TDA4x development kit [2].

    Supported features:
      * Debug UART
      * 2x SPI NOR Flash
      * eMMC
      * 2x Ethernet
      * Micro SD card
      * I2C EEPROM
      * I2C RTC
      * 2x I2C GPIO Expander
      * LEDs
      * USB 5 Gbit/s
      * PCIe

For more details see the product pages for the SoM and the
development kit:

[1] https://www.phytec.eu/en/produkte/system-on-modules/phycore-am68x-tda4x/
[2] https://www.phytec.eu/en/produkte/development-kits/phyboard-izar/

Signed-off-by: Dominik Haller <d.haller@phytec.de>
---
 arch/arm64/boot/dts/ti/Makefile               |   1 +
 .../boot/dts/ti/k3-am68-phyboard-izar.dts     | 576 +++++++++++++++++
 .../boot/dts/ti/k3-am68-phycore-som.dtsi      | 594 ++++++++++++++++++
 3 files changed, 1171 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-phyboard-izar.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-phycore-som.dtsi

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index 03d4cecfc001..3f18ca4029c3 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -109,6 +109,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-j721e-sk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-sk-csi2-dual-imx219.dtbo
 
 # Boards with J721s2 SoC
+dtb-$(CONFIG_ARCH_K3) += k3-am68-phyboard-izar.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am68-sk-base-board.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am68-sk-base-board-pcie1-ep.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-j721s2-common-proc-board.dtb
diff --git a/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar.dts b/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar.dts
new file mode 100644
index 000000000000..8aea830975ae
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar.dts
@@ -0,0 +1,576 @@
+// SPDX-License-Identifier: GPL-2.0-only OR MIT
+/*
+ * Copyright (C) 2025 PHYTEC Messtechnik GmbH
+ * Author: Dominik Haller <d.haller@phytec.de>
+ *
+ * https://www.phytec.eu/en/produkte/development-kits/phyboard-izar/
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/leds/leds-pca9532.h>
+#include <dt-bindings/net/ti-dp83867.h>
+#include <dt-bindings/phy/phy-cadence.h>
+#include <dt-bindings/phy/phy.h>
+#include "k3-am68-phycore-som.dtsi"
+
+#include "k3-serdes.h"
+
+/ {
+	compatible = "phytec,am68-phyboard-izar", "ti,j721s2";
+	model = "PHYTEC phyBOARD-Izar-AM68x";
+
+	aliases {
+		ethernet0 = &cpsw_port1;
+		mmc1 = &main_sdhci1;
+		serial0 = &wkup_uart0;
+		serial1 = &mcu_uart0;
+		serial2 = &main_uart8;
+		serial3 = &main_uart1;
+		serial4 = &main_uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+
+	transceiver1: can-phy1 {
+		compatible = "ti,tcan1043";
+		#phy-cells = <0>;
+		max-bitrate = <8000000>;
+	};
+
+	transceiver2: can-phy2 {
+		compatible = "ti,tcan1043";
+		#phy-cells = <0>;
+		max-bitrate = <8000000>;
+	};
+
+	transceiver3: can-phy3 {
+		compatible = "ti,tcan1043";
+		#phy-cells = <0>;
+		max-bitrate = <8000000>;
+	};
+
+	transceiver4: can-phy4 {
+		compatible = "ti,tcan1043";
+		#phy-cells = <0>;
+		max-bitrate = <8000000>;
+	};
+
+	vcc_12v0: regulator-12v0 {
+		/* main supply */
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_IN";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc_1v8: regulator-vcc-1v8 {
+		/* Output of TLV7158P */
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc_3v3>;
+	};
+
+	vcc_3v3: regulator-vcc-3v3 {
+		/* Output of SiC431 */
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc_5v0>;
+	};
+
+	vcc_5v0: regulator-vcc-5v0 {
+		/* Output of LM5116 */
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_5V0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc_12v0>;
+	};
+};
+
+&main_pmx0 {
+	main_i2c2_pins_default: main-i2c2-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x04c, PIN_INPUT_PULLUP, 13) /* (V27) MCASP1_AXR1.I2C2_SCL */
+			J721S2_IOPAD(0x050, PIN_INPUT_PULLUP, 13) /* (W27) MCASP1_AXR2.I2C2_SDA */
+		>;
+	};
+
+	main_i2c4_pins_default: main-i2c4-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x014, PIN_INPUT_PULLUP, 8) /* (AD25) MCAN14_TX.I2C4_SCL */
+			J721S2_IOPAD(0x010, PIN_INPUT_PULLUP, 8) /* (AF28) MCAN13_RX.I2C4_SDA */
+		>;
+	};
+
+	main_i2c5_pins_default: main-i2c5-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x01c, PIN_INPUT_PULLUP, 8) /* (Y24) MCAN15_TX.I2C5_SCL */
+			J721S2_IOPAD(0x018, PIN_INPUT_PULLUP, 8) /* (W23) MCAN14_RX.I2C5_SDA */
+		>;
+	};
+
+	main_gpio0_ioexp_intr_pins_default: main-gpio0-ioexp-intr-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x020, PIN_INPUT, 7) /* (AA23) MCAN15_RX.GPIO0_8 */
+		>;
+	};
+
+	main_mcan1_pins_default: main-mcan1-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x0c8, PIN_INPUT, 4) /* (AD28) EXT_REFCLK1.MCAN1_RX */
+			J721S2_IOPAD(0x06c, PIN_OUTPUT, 0) /* (V26) MCAN1_TX */
+		>;
+	};
+
+	main_mcan13_pins_default: main-mcan13-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x0ec, PIN_INPUT, 9) /* (AG25) TIMER_IO1.MCAN13_RX */
+			J721S2_IOPAD(0x00c, PIN_OUTPUT, 0) /* (AE28) MCAN13_TX */
+		>;
+	};
+
+	main_mcan16_pins_default: main-mcan16-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x028, PIN_INPUT, 0) /* (AB24) MCAN16_RX */
+			J721S2_IOPAD(0x024, PIN_OUTPUT, 0) /* (Y28) MCAN16_TX */
+		>;
+	};
+
+	main_mmc1_pins_default: main-mmc1-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x104, PIN_INPUT, 0) /* (P23) MMC1_CLK */
+			J721S2_IOPAD(0x108, PIN_INPUT, 0) /* (N24) MMC1_CMD */
+			J721S2_IOPAD(0x100, PIN_INPUT, 0) /* (###) MMC1_CLKLB */
+			J721S2_IOPAD(0x0fc, PIN_INPUT, 0) /* (M23) MMC1_DAT0 */
+			J721S2_IOPAD(0x0f8, PIN_INPUT, 0) /* (P24) MMC1_DAT1 */
+			J721S2_IOPAD(0x0f4, PIN_INPUT, 0) /* (R24) MMC1_DAT2 */
+			J721S2_IOPAD(0x0f0, PIN_INPUT, 0) /* (R22) MMC1_DAT3 */
+			J721S2_IOPAD(0x0e8, PIN_INPUT, 8) /* (AE25) TIMER_IO0.MMC1_SDCD */
+		>;
+		bootph-all;
+	};
+
+	main_spi6_pins_default: main-spi6-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x030, PIN_INPUT, 8) /* (T26) GPIO0_12.SPI6_CLK */
+			J721S2_IOPAD(0x080, PIN_INPUT, 8) /* (U26) MCASP0_AXR4.SPI6_CS2 */
+			J721S2_IOPAD(0x0c4, PIN_OUTPUT, 8) /* (AB26) ECAP0_IN_APWM_OUT.SPI6_D0 */
+			J721S2_IOPAD(0x074, PIN_INPUT, 8) /* (R28) MCAN2_TX.SPI6_D1 */
+			J721S2_IOPAD(0x0dc, PIN_OUTPUT, 7) /* (AH26) SPI0_D1.GPIO0_55 */
+		>;
+	};
+
+	main_uart1_pins_default: main-uart1-default-pins {
+			pinctrl-single,pins = <
+			J721S2_IOPAD(0x05c, PIN_INPUT, 11) /* (AA26) MCASP2_AXR0.UART1_CTSn */
+			J721S2_IOPAD(0x060, PIN_OUTPUT, 11) /* (AC27) MCASP2_AXR1.UART1_RTSn */
+			J721S2_IOPAD(0x054, PIN_INPUT, 11) /* (Y27) MCASP2_ACLKX.UART1_RXD */
+			J721S2_IOPAD(0x058, PIN_OUTPUT, 11) /* (AA27) MCASP2_AFSX.UART1_TXD */
+		>;
+	};
+
+	main_uart2_pins_default: main-uart2-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x0d8, PIN_INPUT, 11) /* (AG26) SPI0_D0.UART2_RXD */
+			J721S2_IOPAD(0x068, PIN_OUTPUT, 11) /* (U28) MCAN0_RX.UART2_TXD */
+		>;
+	};
+
+	main_uart8_pins_default: main-uart8-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x0d0, PIN_INPUT, 11) /* (AF26) SPI0_CS1.UART8_RXD */
+			J721S2_IOPAD(0x0d4, PIN_OUTPUT, 11) /* (AH27) SPI0_CLK.UART8_TXD */
+		>;
+		bootph-all;
+	};
+};
+
+&wkup_pmx1 {
+	mcu_fss0_ospi1_pins_default: mcu-fss0-ospi1-default-pins {
+		pinctrl-single,pins = <
+			J721S2_WKUP_IOPAD(0x008, PIN_OUTPUT, 0) /* (A19) MCU_OSPI1_CLK */
+			J721S2_WKUP_IOPAD(0x024, PIN_OUTPUT, 0) /* (D20) MCU_OSPI1_CSn0 */
+			J721S2_WKUP_IOPAD(0x014, PIN_INPUT, 0) /* (D21) MCU_OSPI1_D0 */
+			J721S2_WKUP_IOPAD(0x018, PIN_INPUT, 0) /* (G20) MCU_OSPI1_D1 */
+			J721S2_WKUP_IOPAD(0x01c, PIN_INPUT, 0) /* (C20) MCU_OSPI1_D2 */
+			J721S2_WKUP_IOPAD(0x020, PIN_INPUT, 0) /* (A20) MCU_OSPI1_D3 */
+		>;
+	};
+};
+
+&wkup_pmx2 {
+	mcu_cpsw_pins_default: mcu-cpsw-default-pins {
+		pinctrl-single,pins = <
+			J721S2_WKUP_IOPAD(0x02c, PIN_INPUT, 0) /* (B22) MCU_RGMII1_RD0 */
+			J721S2_WKUP_IOPAD(0x028, PIN_INPUT, 0) /* (B21) MCU_RGMII1_RD1 */
+			J721S2_WKUP_IOPAD(0x024, PIN_INPUT, 0) /* (C22) MCU_RGMII1_RD2 */
+			J721S2_WKUP_IOPAD(0x020, PIN_INPUT, 0) /* (D23) MCU_RGMII1_RD3 */
+			J721S2_WKUP_IOPAD(0x01c, PIN_INPUT, 0) /* (D22) MCU_RGMII1_RXC */
+			J721S2_WKUP_IOPAD(0x004, PIN_INPUT, 0) /* (E23) MCU_RGMII1_RX_CTL */
+			J721S2_WKUP_IOPAD(0x014, PIN_OUTPUT, 0) /* (F23) MCU_RGMII1_TD0 */
+			J721S2_WKUP_IOPAD(0x010, PIN_OUTPUT, 0) /* (G22) MCU_RGMII1_TD1 */
+			J721S2_WKUP_IOPAD(0x00c, PIN_OUTPUT, 0) /* (E21) MCU_RGMII1_TD2 */
+			J721S2_WKUP_IOPAD(0x008, PIN_OUTPUT, 0) /* (E22) MCU_RGMII1_TD3 */
+			J721S2_WKUP_IOPAD(0x018, PIN_OUTPUT, 0) /* (F21) MCU_RGMII1_TXC */
+			J721S2_WKUP_IOPAD(0x000, PIN_OUTPUT, 0) /* (F22) MCU_RGMII1_TX_CTL */
+		>;
+	};
+
+	mcu_i2c1_pins_default: mcu-i2c1-default-pins {
+		pinctrl-single,pins = <
+			J721S2_WKUP_IOPAD(0x078, PIN_INPUT_PULLUP, 0) /* (F24) WKUP_GPIO0_8.MCU_I2C1_SCL */
+			J721S2_WKUP_IOPAD(0x07c, PIN_INPUT_PULLUP, 0) /* (H26) WKUP_GPIO0_9.MCU_I2C1_SDA */
+		>;
+	};
+
+	mcu_mcan0_pins_default: mcu-mcan0-default-pins {
+		pinctrl-single,pins = <
+			J721S2_WKUP_IOPAD(0x054, PIN_INPUT, 0) /* (E28) MCU_MCAN0_RX */
+			J721S2_WKUP_IOPAD(0x050, PIN_OUTPUT, 0) /* (E27) MCU_MCAN0_TX */
+		>;
+	};
+
+	mcu_mdio_pins_default: mcu-mdio-default-pins {
+		pinctrl-single,pins = <
+			J721S2_WKUP_IOPAD(0x034, PIN_OUTPUT, 0) /* (A21) MCU_MDIO0_MDC */
+			J721S2_WKUP_IOPAD(0x030, PIN_INPUT, 0) /* (A22) MCU_MDIO0_MDIO */
+		>;
+	};
+
+	mcu_spi0_pins_default: mcu-spi0-default-pins {
+		pinctrl-single,pins = <
+			J721S2_WKUP_IOPAD(0x038, PIN_INPUT, 0) /* (B27) MCU_SPI0_CLK */
+			J721S2_WKUP_IOPAD(0x044, PIN_INPUT, 0) /* (B26) MCU_SPI0_CS0 */
+			J721S2_WKUP_IOPAD(0x068, PIN_INPUT, 2) /* (C23) WKUP_GPIO0_4.MCU_SPI0_CS3 */
+			J721S2_WKUP_IOPAD(0x03c, PIN_INPUT, 0) /* (D24) MCU_SPI0_D0 */
+			J721S2_WKUP_IOPAD(0x040, PIN_INPUT, 0) /* (B25) MCU_SPI0_D1 */
+		>;
+	};
+
+	mcu_uart0_pins_default: mcu-uart0-default-pins {
+		pinctrl-single,pins = <
+			J721S2_WKUP_IOPAD(0x090, PIN_INPUT, 0) /* (B24) WKUP_GPIO0_14.MCU_UART0_CTSn */
+			J721S2_WKUP_IOPAD(0x094, PIN_OUTPUT, 0) /* (D25) WKUP_GPIO0_15.MCU_UART0_RTSn */
+			J721S2_WKUP_IOPAD(0x08c, PIN_INPUT, 0) /* (C24) WKUP_GPIO0_13.MCU_UART0_RXD */
+			J721S2_WKUP_IOPAD(0x088, PIN_OUTPUT, 0) /* (C25) WKUP_GPIO0_12.MCU_UART0_TXD */
+		>;
+	};
+
+	wkup_uart0_pins_default: wkup-uart0-default-pins {
+		pinctrl-single,pins = <
+			J721S2_WKUP_IOPAD(0x070, PIN_INPUT, 0) /* (E25) WKUP_GPIO0_6.WKUP_UART0_CTSn */
+			J721S2_WKUP_IOPAD(0x074, PIN_OUTPUT, 0) /* (F28) WKUP_GPIO0_7.WKUP_UART0_RTSn */
+			J721S2_WKUP_IOPAD(0x048, PIN_INPUT, 0) /* (D28) WKUP_UART0_RXD */
+			J721S2_WKUP_IOPAD(0x04c, PIN_OUTPUT, 0) /* (D27) WKUP_UART0_TXD */
+		>;
+		bootph-all;
+	};
+};
+
+&cpsw_port1 {
+	phy-mode = "rgmii-rxid";
+	phy-handle = <&phy0>;
+};
+
+&davinci_mdio {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_mdio_pins_default>;
+
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+		ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
+		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+		ti,min-output-impedance;
+		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+	};
+};
+
+&i2c_som_rtc {
+	trickle-resistor-ohms = <3000>;
+};
+
+&main_i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c2_pins_default>;
+	status = "okay";
+
+	exp1: gpio@20 {
+		compatible = "nxp,pca9672";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names = "HALF/nFULL_EN", "RS485/nRS232_EN", "MCU_ETH_nRESET", "",
+				"PCIe_nRESET", "USB2.0-Hub_nRESET", "USB3.0-Hub_nRESET", "PEB_AV_BL_EN";
+		interrupt-parent = <&main_gpio0>;
+		interrupts = <8 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+	};
+
+	exp2: gpio@22 {
+		compatible = "ti,tca6424";
+		reg = <0x22>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names = "RPI_GPIO4", "RPI_GPIO5", "RPI_GPIO6", "RPI_GPIO19",
+				"RPI_GPIO20", "RPI_GPIO21", "RPI_GPIO22", "RPI_GPIO23",
+				"RPI_GPIO24", "RPI_GPIO25", "RPI_GPIO26", "RPI_GPIO20",
+				"LVDS_BL_nEN", "LVDS_REG_nEN", "CSI_CAM0_nRESET", "CSI_CAM1_nRESET",
+				"CSI0_CTRL1", "CSI0_CTRL2", "CSI0_CTRL3", "CSI0_CTRL4",
+				"CSI1_CTRL1", "CSI1_CTRL2", "CSI1_CTRL3", "CSI1_CTRL4";
+		interrupt-parent = <&main_gpio0>;
+		interrupts = <8 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&main_gpio0_ioexp_intr_pins_default>;
+	};
+};
+
+/* CSI0 + RPI */
+&main_i2c4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c4_pins_default>;
+};
+
+/* CSI1 + PCIe */
+&main_i2c5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c5_pins_default>;
+};
+
+&main_mcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_mcan1_pins_default>;
+	phys = <&transceiver1>;
+	status = "okay";
+};
+
+&main_mcan13 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_mcan13_pins_default>;
+	phys = <&transceiver2>;
+	status = "okay";
+};
+
+&main_mcan16 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_mcan16_pins_default>;
+	phys = <&transceiver3>;
+	status = "okay";
+};
+
+/* SD-Card */
+&main_sdhci1 {
+	pinctrl-0 = <&main_mmc1_pins_default>;
+	pinctrl-names = "default";
+	disable-wp;
+	vmmc-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
+&main_spi6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_spi6_pins_default>;
+	cs-gpios = <&main_gpio0 55 GPIO_ACTIVE_LOW>;
+	ti,spi-num-cs = <1>;
+	ti,pindir-d0-out-d1-in;
+	status = "okay";
+
+	tpm@0 {
+		compatible = "infineon,slb9670", "tcg,tpm_tis-spi";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+	};
+};
+
+&main_uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_uart1_pins_default>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&main_uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_uart2_pins_default>;
+	status = "okay";
+};
+
+&main_uart8 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_uart8_pins_default>;
+	/* Shared with TFA on this platform */
+	power-domains = <&k3_pds 357 TI_SCI_PD_SHARED>;
+	bootph-all;
+	status = "okay";
+};
+
+&mcu_cpsw {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_cpsw_pins_default>;
+};
+
+&mcu_i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_i2c1_pins_default>;
+	status = "okay";
+};
+
+&mcu_mcan0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_mcan0_pins_default>;
+	phys = <&transceiver4>;
+	status = "okay";
+};
+
+/* RPI-Header */
+&mcu_spi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_spi0_pins_default>;
+};
+
+/* RPI-Header */
+&mcu_uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_uart0_pins_default>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&ospi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_fss0_ospi1_pins_default>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0x0>;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
+		spi-max-frequency = <40000000>;
+		cdns,tshsl-ns = <60>;
+		cdns,tsd2d-ns = <60>;
+		cdns,tchsh-ns = <60>;
+		cdns,tslch-ns = <60>;
+		cdns,read-delay = <2>;
+	};
+};
+
+&pcie1_rc {
+	num-lanes = <1>;
+	phys = <&serdes0_pcie_link>;
+	phy-names = "pcie-phy";
+	reset-gpios = <&exp1 4 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&serdes_ln_ctrl {
+	idle-states = <J721S2_SERDES0_LANE0_PCIE1_LANE0>, <J721S2_SERDES0_LANE1_USB>,
+		      <J721S2_SERDES0_LANE2_EDP_LANE2>, <J721S2_SERDES0_LANE3_EDP_LANE3>;
+};
+
+&serdes_refclk {
+	clock-frequency = <100000000>;
+};
+
+&serdes0 {
+	status = "okay";
+	serdes0_pcie_link: phy@0 {
+		reg = <0>;
+		cdns,num-lanes = <1>;
+		#phy-cells = <0>;
+		cdns,phy-type = <PHY_TYPE_PCIE>;
+		resets = <&serdes_wiz0 1>;
+	};
+	serdes0_usb_link: phy@1 {
+		reg = <1>;
+		cdns,num-lanes = <1>;
+		#phy-cells = <0>;
+		cdns,phy-type = <PHY_TYPE_USB3>;
+		resets = <&serdes_wiz0 2>;
+	};
+};
+
+&tscadc0 {
+	status = "okay";
+
+	adc {
+		ti,adc-channels = <0 1 2 3 4 5 6 7>;
+	};
+};
+
+&tscadc1 {
+	status = "okay";
+
+	adc {
+		ti,adc-channels = <3 4 5 6 7>;
+	};
+};
+
+&usbss0 {
+	ti,vbus-divider;
+	status = "okay";
+};
+
+&usb0 {
+	dr_mode = "host";
+	phys = <&serdes0_usb_link>;
+	phy-names = "cdns3,usb3-phy";
+};
+
+&usb_serdes_mux {
+	idle-states = <1>; /* USB0 to SERDES lane 1 */
+};
+
+&wkup_i2c0 {
+	eeprom@57 {
+		compatible = "atmel,24c32";
+		reg = <0x57>;
+		pagesize = <32>;
+	};
+
+	led-controller@62 {
+		compatible = "nxp,pca9533";
+		reg = <0x62>;
+
+		led-1 {
+			label = "user-led1";
+			type = <PCA9532_TYPE_LED>;
+		};
+
+		led-2 {
+			label = "user-led2";
+			type = <PCA9532_TYPE_LED>;
+		};
+
+		led-3 {
+			label = "user-led3";
+			type = <PCA9532_TYPE_LED>;
+		};
+	};
+};
+
+/* Shared with TIFS */
+&wkup_uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&wkup_uart0_pins_default>;
+	uart-has-rtscts;
+	bootph-all;
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/ti/k3-am68-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am68-phycore-som.dtsi
new file mode 100644
index 000000000000..abbf35787b69
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am68-phycore-som.dtsi
@@ -0,0 +1,594 @@
+// SPDX-License-Identifier: GPL-2.0-only OR MIT
+/*
+ * Copyright (C) 2025 PHYTEC Messtechnik GmbH
+ * Author: Dominik Haller <d.haller@phytec.de>
+ *
+ * https://www.phytec.eu/en/produkte/system-on-modules/phycore-am68x-tda4x/
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/net/ti-dp83867.h>
+#include "k3-j721s2.dtsi"
+
+/ {
+	compatible = "phytec,am68-phycore-som", "ti,j721s2";
+	model = "PHYTEC phyCORE-AM68x";
+
+	aliases {
+		ethernet1 = &main_cpsw_port1;
+		mmc0 = &main_sdhci0;
+		rtc0 = &i2c_som_rtc;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* 4GB RAM */
+		reg = <0x00000000 0x80000000 0x00000000 0x80000000>,
+		      <0x00000008 0x80000000 0x00000000 0x80000000>;
+		bootph-all;
+	};
+
+	reserved_memory: reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		/* global cma region */
+		linux,cma {
+			compatible = "shared-dma-pool";
+			reusable;
+			size = <0x00 0x20000000>;
+			linux,cma-default;
+		};
+
+		secure_ddr: optee@9e800000 {
+			reg = <0x00 0x9e800000 0x00 0x01800000>;
+			alignment = <0x1000>;
+			no-map;
+		};
+
+		mcu_r5fss0_core0_dma_memory_region: r5f-dma-memory@a0000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa0000000 0x00 0x100000>;
+			no-map;
+		};
+
+		mcu_r5fss0_core0_memory_region: r5f-memory@a0100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa0100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		mcu_r5fss0_core1_dma_memory_region: r5f-dma-memory@a1000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa1000000 0x00 0x100000>;
+			no-map;
+		};
+
+		mcu_r5fss0_core1_memory_region: r5f-memory@a1100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa1100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		main_r5fss0_core0_dma_memory_region: r5f-dma-memory@a2000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa2000000 0x00 0x100000>;
+			no-map;
+		};
+
+		main_r5fss0_core0_memory_region: r5f-memory@a2100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa2100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		main_r5fss0_core1_dma_memory_region: r5f-dma-memory@a3000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa3000000 0x00 0x100000>;
+			no-map;
+		};
+
+		main_r5fss0_core1_memory_region: r5f-memory@a3100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa3100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		main_r5fss1_core0_dma_memory_region: r5f-dma-memory@a4000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa4000000 0x00 0x100000>;
+			no-map;
+		};
+
+		main_r5fss1_core0_memory_region: r5f-memory@a4100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa4100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		main_r5fss1_core1_dma_memory_region: r5f-dma-memory@a5000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa5000000 0x00 0x100000>;
+			no-map;
+		};
+
+		main_r5fss1_core1_memory_region: r5f-memory@a5100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa5100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		c71_0_dma_memory_region: c71-dma-memory@a6000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa6000000 0x00 0x100000>;
+			no-map;
+		};
+
+		c71_0_memory_region: c71-memory@a6100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa6100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		c71_1_dma_memory_region: c71-dma-memory@a7000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa7000000 0x00 0x100000>;
+			no-map;
+		};
+
+		c71_1_memory_region: c71-memory@a7100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa7100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		rtos_ipc_memory_region: ipc-memories@a8000000 {
+			reg = <0x00 0xa8000000 0x00 0x01c00000>;
+			alignment = <0x1000>;
+			no-map;
+		};
+	};
+
+	vdd_sd_dv: regulator-sd {
+		/* Output of TLV71033 */
+		compatible = "regulator-gpio";
+		regulator-name = "VDD_SD_DV";
+		pinctrl-names = "default";
+		pinctrl-0 = <&vdd_sd_dv_pins_default>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		gpios = <&main_gpio0 1 GPIO_ACTIVE_HIGH>;
+		states = <3300000 0x0>,
+			 <1800000 0x1>;
+	};
+};
+
+&main_pmx0 {
+	main_cpsw_mdio_pins_default: main-cpsw-mdio-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x0c0, PIN_OUTPUT, 6) /* (T28) MCASP1_AXR0.MDIO0_MDC */
+			J721S2_IOPAD(0x0bc, PIN_INPUT, 6) /* (V28) MCASP1_AFSX.MDIO0_MDIO */
+		>;
+	};
+
+	main_i2c0_pins_default: main-i2c0-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x0e0, PIN_INPUT_PULLUP, 0) /* (AH25) I2C0_SCL */
+			J721S2_IOPAD(0x0e4, PIN_INPUT_PULLUP, 0) /* (AE24) I2C0_SDA */
+		>;
+	};
+
+	rgmii1_pins_default: rgmii1-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x0b8, PIN_INPUT, 6) /* (AA24) MCASP1_ACLKX.RGMII1_RD0 */
+			J721S2_IOPAD(0x0a0, PIN_INPUT, 6) /* (AB25) MCASP0_AXR12.RGMII1_RD1 */
+			J721S2_IOPAD(0x0a4, PIN_INPUT, 6) /* (T23) MCASP0_AXR13.RGMII1_RD2 */
+			J721S2_IOPAD(0x0a8, PIN_INPUT, 6) /* (U24) MCASP0_AXR14.RGMII1_RD3 */
+			J721S2_IOPAD(0x0b0, PIN_INPUT, 6) /* (AD26) MCASP1_AXR3.RGMII1_RXC */
+			J721S2_IOPAD(0x0ac, PIN_INPUT, 6) /* (AC25) MCASP0_AXR15.RGMII1_RX_CTL */
+			J721S2_IOPAD(0x08c, PIN_OUTPUT, 6) /* (T25) MCASP0_AXR7.RGMII1_TD0 */
+			J721S2_IOPAD(0x090, PIN_OUTPUT, 6) /* (W24) MCASP0_AXR8.RGMII1_TD1 */
+			J721S2_IOPAD(0x094, PIN_OUTPUT, 6) /* (AA25) MCASP0_AXR9.RGMII1_TD2 */
+			J721S2_IOPAD(0x098, PIN_OUTPUT, 6) /* (V25) MCASP0_AXR10.RGMII1_TD3 */
+			J721S2_IOPAD(0x0b4, PIN_OUTPUT, 6) /* (U25) MCASP1_AXR4.RGMII1_TXC */
+			J721S2_IOPAD(0x09c, PIN_OUTPUT, 6) /* (T24) MCASP0_AXR11.RGMII1_TX_CTL */
+		>;
+	};
+
+	vdd_sd_dv_pins_default: vdd-sd-dv-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x004, PIN_OUTPUT, 7) /* (W25) MCAN12_TX.GPIO0_1 */
+		>;
+	};
+};
+
+&wkup_pmx0 {
+	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-default-pins {
+		pinctrl-single,pins = <
+			J721S2_WKUP_IOPAD(0x000, PIN_OUTPUT, 0) /* (D19) MCU_OSPI0_CLK */
+			J721S2_WKUP_IOPAD(0x02c, PIN_OUTPUT, 0) /* (F15) MCU_OSPI0_CSn0 */
+			J721S2_WKUP_IOPAD(0x00c, PIN_INPUT, 0) /* (C19) MCU_OSPI0_D0 */
+			J721S2_WKUP_IOPAD(0x010, PIN_INPUT, 0) /* (F16) MCU_OSPI0_D1 */
+			J721S2_WKUP_IOPAD(0x014, PIN_INPUT, 0) /* (G15) MCU_OSPI0_D2 */
+			J721S2_WKUP_IOPAD(0x018, PIN_INPUT, 0) /* (F18) MCU_OSPI0_D3 */
+			J721S2_WKUP_IOPAD(0x01c, PIN_INPUT, 0) /* (E19) MCU_OSPI0_D4 */
+			J721S2_WKUP_IOPAD(0x020, PIN_INPUT, 0) /* (G19) MCU_OSPI0_D5 */
+			J721S2_WKUP_IOPAD(0x024, PIN_INPUT, 0) /* (F19) MCU_OSPI0_D6 */
+			J721S2_WKUP_IOPAD(0x028, PIN_INPUT, 0) /* (F20) MCU_OSPI0_D7 */
+			J721S2_WKUP_IOPAD(0x008, PIN_INPUT, 0) /* (E18) MCU_OSPI0_DQS */
+		>;
+		bootph-all;
+	};
+};
+
+&wkup_pmx1 {
+	pmic_irq_pins_default: pmic-irq-default-pins {
+		pinctrl-single,pins = <
+			J721S2_WKUP_IOPAD(0x028, PIN_INPUT, 7) /* (C21) MCU_OSPI1_CSn1.WKUP_GPIO0_39 */
+		>;
+	};
+};
+
+&wkup_pmx2 {
+	wkup_i2c0_pins_default: wkup-i2c0-default-pins {
+		pinctrl-single,pins = <
+			J721S2_WKUP_IOPAD(0x098, PIN_INPUT_PULLUP, 0) /* (H24) WKUP_I2C0_SCL */
+			J721S2_WKUP_IOPAD(0x09c, PIN_INPUT_PULLUP, 0) /* (H27) WKUP_I2C0_SDA */
+		>;
+		bootph-all;
+	};
+};
+
+&c71_0 {
+	mboxes = <&mailbox0_cluster4 &mbox_c71_0>;
+	memory-region = <&c71_0_dma_memory_region>,
+			<&c71_0_memory_region>;
+	status = "okay";
+};
+
+&c71_1 {
+	mboxes = <&mailbox0_cluster4 &mbox_c71_1>;
+	memory-region = <&c71_1_dma_memory_region>,
+			<&c71_1_memory_region>;
+	status = "okay";
+};
+
+&mailbox0_cluster0 {
+	interrupts = <436>;
+	status = "okay";
+
+	mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_mcu_r5fss0_core1: mbox-mcu-r5fss0-core1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster1 {
+	interrupts = <432>;
+	status = "okay";
+
+	mbox_main_r5fss0_core0: mbox-main-r5fss0-core0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_main_r5fss0_core1: mbox-main-r5fss0-core1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster2 {
+	interrupts = <428>;
+	status = "okay";
+
+	mbox_main_r5fss1_core0: mbox-main-r5fss1-core0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_main_r5fss1_core1: mbox-main-r5fss1-core1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster4 {
+	interrupts = <420>;
+	status = "okay";
+
+	mbox_c71_0: mbox-c71-0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_c71_1: mbox-c71-1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&main_cpsw {
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii1_pins_default>;
+	status = "okay";
+};
+
+&main_cpsw_mdio {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_cpsw_mdio_pins_default>;
+	status = "okay";
+
+	phy1: ethernet-phy@0 {
+		reg = <0>;
+		ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
+		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+		ti,min-output-impedance;
+		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+	};
+};
+
+&main_cpsw_port1 {
+	phy-handle = <&phy1>;
+	phy-mode = "rgmii-rxid";
+	status = "okay";
+};
+
+&main_i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c0_pins_default>;
+
+	temperature-sensor@48 {
+		compatible = "ti,tmp102";
+		reg = <0x48>;
+	};
+
+	temperature-sensor@49 {
+		compatible = "ti,tmp102";
+		reg = <0x49>;
+	};
+
+	i2c_som_rtc: rtc@52 {
+		compatible = "microcrystal,rv3028";
+		reg = <0x52>;
+	};
+};
+
+&main_gpio0 {
+	status = "okay";
+};
+
+&main_r5fss0_core0 {
+	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core0>;
+	memory-region = <&main_r5fss0_core0_dma_memory_region>,
+			<&main_r5fss0_core0_memory_region>;
+};
+
+&main_r5fss0_core1 {
+	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core1>;
+	memory-region = <&main_r5fss0_core1_dma_memory_region>,
+			<&main_r5fss0_core1_memory_region>;
+};
+
+&main_r5fss1_core0 {
+	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss1_core0>;
+	memory-region = <&main_r5fss1_core0_dma_memory_region>,
+			<&main_r5fss1_core0_memory_region>;
+};
+
+&main_r5fss1_core1 {
+	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss1_core1>;
+	memory-region = <&main_r5fss1_core1_dma_memory_region>,
+			<&main_r5fss1_core1_memory_region>;
+};
+
+/* eMMC */
+&main_sdhci0 {
+	disable-wp;
+	non-removable;
+	ti,driver-strength-ohm = <50>;
+	bootph-all;
+	status = "okay";
+};
+
+/* SD card */
+&main_sdhci1 {
+	vqmmc-supply = <&vdd_sd_dv>;
+	bootph-all;
+};
+
+&main_r5fss0 {
+	ti,cluster-mode = <0>;
+};
+
+&main_r5fss1 {
+	ti,cluster-mode = <0>;
+};
+
+/* Timers are used by Remoteproc firmware */
+&main_timer0 {
+	status = "reserved";
+};
+
+&main_timer1 {
+	status = "reserved";
+};
+
+&main_timer2 {
+	status = "reserved";
+};
+
+&main_timer3 {
+	status = "reserved";
+};
+
+&main_timer4 {
+	status = "reserved";
+};
+
+&main_timer5 {
+	status = "reserved";
+};
+
+&mcu_r5fss0_core0 {
+	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core0>;
+	memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
+			<&mcu_r5fss0_core0_memory_region>;
+};
+
+&mcu_r5fss0_core1 {
+	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core1>;
+	memory-region = <&mcu_r5fss0_core1_dma_memory_region>,
+			<&mcu_r5fss0_core1_memory_region>;
+};
+
+&ospi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_fss0_ospi0_pins_default>;
+	status = "okay";
+
+	serial_flash: flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0x0>;
+		spi-tx-bus-width = <8>;
+		spi-rx-bus-width = <8>;
+		spi-max-frequency = <25000000>;
+		cdns,tshsl-ns = <60>;
+		cdns,tsd2d-ns = <60>;
+		cdns,tchsh-ns = <60>;
+		cdns,tslch-ns = <60>;
+		cdns,read-delay = <2>;
+		bootph-all;
+	};
+};
+
+&wkup_gpio0 {
+	status = "okay";
+};
+
+&wkup_i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&wkup_i2c0_pins_default>;
+	clock-frequency = <400000>;
+	status = "okay";
+
+	vdd_cpu_avs: regulator@40 {
+		compatible = "ti,tps62873";
+		reg = <0x40>;
+		regulator-name = "VDD_CPU_AVS";
+		regulator-min-microvolt = <600000>;
+		regulator-max-microvolt = <900000>;
+		regulator-boot-on;
+		regulator-always-on;
+		bootph-pre-ram;
+	};
+
+	pmic@48 {
+		compatible = "ti,tps6594-q1";
+		reg = <0x48>;
+		system-power-controller;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_irq_pins_default>;
+		interrupt-parent = <&wkup_gpio0>;
+		interrupts = <39 IRQ_TYPE_EDGE_FALLING>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		buck12-supply = <&vcc_3v3>;
+		buck3-supply = <&vcc_3v3>;
+		buck4-supply = <&vcc_3v3>;
+		buck5-supply = <&vcc_3v3>;
+		ldo1-supply = <&vcc_3v3>;
+		ldo2-supply = <&vcc_3v3>;
+		ldo3-supply = <&vcc_3v3>;
+		ldo4-supply = <&vcc_3v3>;
+		ti,primary-pmic;
+
+		regulators {
+			bucka12: buck12 {
+				regulator-name = "VDD__DDR_1V1";
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			bucka3: buck3 {
+				regulator-name = "VDD_RAM_0V85";
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			bucka4: buck4 {
+				regulator-name = "VDD_IO_1V8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			bucka5: buck5 {
+				regulator-name = "VDD_MCU_0V85";
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldoa1: ldo1 {
+				regulator-name = "VDD_MCUIO_1V8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldoa2: ldo2 {
+				regulator-name = "VDD_MCUIO_3V3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldoa3: ldo3 {
+				regulator-name = "VDDA_DLL_0V8";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldoa4: ldo4 {
+				regulator-name = "VDDA_MCU_1V8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c32";
+		reg = <0x50>;
+		pagesize = <32>;
+		bootph-all;
+	};
+
+	som_eeprom_opt: eeprom@51 {
+		compatible = "atmel,24c32";
+		reg = <0x51>;
+		pagesize = <32>;
+	};
+};
-- 
2.43.0


