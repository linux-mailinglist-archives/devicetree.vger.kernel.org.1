Return-Path: <devicetree+bounces-248235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DA63CCD015F
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:37:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3ABA3301E59A
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3A3C31E11C;
	Fri, 19 Dec 2025 13:36:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYPPR03CU001.outbound.protection.outlook.com (mail-japaneastazon11022122.outbound.protection.outlook.com [52.101.126.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC61031E107;
	Fri, 19 Dec 2025 13:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.126.122
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766151378; cv=fail; b=jTkKM2EN+hOo+8f5ZgJHdnpmi590BPtbmZS5NLIWcBLJBOnyVjK9nF34Phpf0bPt6DNuD0vNjfcI3kPa+B038xqb+e0wffnKuIOg4DTVkgzPJFKhM8Ywpl8uQEAujDbh9xyUG52RSAocbHM6U65VW27cHQmiOhIhqUpwSfWfGok=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766151378; c=relaxed/simple;
	bh=bnlqv+JB0QwkjRTyynOT5h+8epasnAhWBXSdy1Mx7v0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DcRmyYpEx758phl/7aUEZEYxwZBWkn4dHZu/iT7oU5/XrUmiOqUqtOGRVBjhOP05aGrhnm+EoVyWVjL0ByF5f24I9IP9X0wD4hHpjKAgaXC/K1JyrBi4g6DQpX8Sugd3zW5GdT2P2b+RGX81RDVqqyeaVCfSAdIrc9Pu9+5ccjM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.126.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=neLsqutkfHOtaTAq905PgZ01Lwhykz/SmAaxX1cIKfUhGkkxeI6+wk4g6vHd9Io84OL/Ec47V3fXZneRBrwOhMoDOCnhaNCCgkxYnseTFITubXB3jZ9fq95jSpuAR8VYiZsLKC0qYGCcfoTWSNNQwVUI7lDDxI7n78e4R1aaVPgoCJziT1QDTpV+QrgU/FJ2s5Nqg76geNU+WDNWFB/jUTItF91MY0GKqR2QFh4ZOpMsxRMcAkkZIKcWGnmwToCsCbDqs80DaR8GeTXryKEiFKJbB42jgzLr/L+xFEosJzpZiROAwsAJjbuQJAbEOPnlSmdPegQNuc134FGBqi0eOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ClGk1tslqBQzvFlUGAQ0Xa6HNYHQ8LthbxVpEZIaL84=;
 b=FOwYu0rMBHQPsYQv2oszcw8UWlbySuMq3yJdNI0NwL59kp/uKD94ILmwj9OQ9F7u2nyz1F1pARsyKuWOKj2utHB4TqnRpb+gEyK/+t7qlZqBkTUYWFV26nMqRgstHAv70bAjq3eX6NLp3WqEKFqgPCb1wQ5SW2Wj54UXw8cA3KXB8lIy/DlkDhA7W551mJ/2zG2FG4lodkA/XRjNaP3KHB7DMFtv9sAR6KqP3bNwUqaPMfiU+927pVv0J49PRNyVgApCylGXiKRySVxKMRoG8WnVLMk+UPSZ3zVRgH+bgMbDrSBbq1ecaRmX3waDiRtOuYuTdlMRFE3s/Z5uLJB9iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from PS2PR02CA0041.apcprd02.prod.outlook.com (2603:1096:300:59::29)
 by TYSPR06MB7100.apcprd06.prod.outlook.com (2603:1096:405:83::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.8; Fri, 19 Dec
 2025 13:36:00 +0000
Received: from OSA0EPF000000CC.apcprd02.prod.outlook.com
 (2603:1096:300:59:cafe::61) by PS2PR02CA0041.outlook.office365.com
 (2603:1096:300:59::29) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9434.9 via Frontend Transport; Fri,
 19 Dec 2025 13:36:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000CC.mail.protection.outlook.com (10.167.240.58) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9434.6 via Frontend Transport; Fri, 19 Dec 2025 13:35:59 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id F395941604E0;
	Fri, 19 Dec 2025 21:35:53 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: peter.chen@cixtech.com,
	fugang.duan@cixtech.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-cix-kernel-upstream@cixtech.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH v2 2/2] arm64: dts: cix: Add OrangePi 6 Plus board support
Date: Fri, 19 Dec 2025 21:35:53 +0800
Message-ID: <20251219133553.1440970-3-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251219133553.1440970-1-gary.yang@cixtech.com>
References: <20251219133553.1440970-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSA0EPF000000CC:EE_|TYSPR06MB7100:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: ead75563-e229-4fd3-c06a-08de3f038ba9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?3bPawi9E2ov7e4IELY2isHMQcQRsinPaLw5MyFoMPGw777rF7fqIE1CmzxNV?=
 =?us-ascii?Q?49BNE3cvvxOKnYxVYRn+z+XU9xxl6HA6BxtVjiWwCmMaXObt/yWMt8hJTSx3?=
 =?us-ascii?Q?i+Kf1DJjYKaprqERBbXJ5d6RQc7MqtpwmXn2/o7arhf0IkgkSUYHxPzzJTf7?=
 =?us-ascii?Q?t4VSWqedLN3PFhrhXTIRZjqJwcnkaYu+a0qCFK+omyKAr9oS7QzPZPtT5YD2?=
 =?us-ascii?Q?wVCjD8GU/PQHkQsZNmYUsvnr9gd7B4q4nWdxVaI3KkCpoQyZR3Es9oLsi6+n?=
 =?us-ascii?Q?c4YlMTISEbeb/yQkB3Js/rN/D+2DgVerMOh5pDJsMIEkCF/LVk1XeJBej48S?=
 =?us-ascii?Q?CDkHxRBLmV7zPnMtqoDjixKjm2ZdW02NHngkQszLIVWN2zT/AspXdtSZXACu?=
 =?us-ascii?Q?GaZjjBlTKqq+dat/b9U2s7ryQ/g7gpUG3Un3HmksNf9jbwL/UKjXL7WEHvho?=
 =?us-ascii?Q?NKy0bLyC7TTNRVkpkO4DTnkG6AWCGCrAnVjNQODvdida2GIBznjxIfuCcc6t?=
 =?us-ascii?Q?KxuGZos62RpHCVmvvvAw+MlHuRs4f0o0fCx4kf5QV4ts1CmzsEp0nPeblAf7?=
 =?us-ascii?Q?oFz2WX9rH7NCsf/ya4EnWy75SKcteA68K/reBPil9PQiF01mql+qMhOLXDjm?=
 =?us-ascii?Q?QyTAR87TOIB/aDzpZFs4PyQJ8Rla6IxnljNdMZcbJH8JI2eiLHK5EsIcsH09?=
 =?us-ascii?Q?tyLBtkV5YUU6G2Lkipt+ib3mBmgWddaC7oQRvfD6TioG6Ngp6JNZ4BTdEyZj?=
 =?us-ascii?Q?iFXxGBoZirPv7e8nUqTLcSvJTGzcXzCHr4KoulWpuovQPMSrXvSeIDBEAYw6?=
 =?us-ascii?Q?dA3H1MnAzsWaHcQRg37jjKtQKRNz972quPukuVkJaRrRwAkcKSrLiTBNRYGO?=
 =?us-ascii?Q?D+uuKm2Z1xrwXwKWdHvqgq0UtWsZLmVkRImz/JNEhQKkQzFELn30cJr3/xQM?=
 =?us-ascii?Q?php5FLp5TrtrUDbaugOfzZn9ohpMeCwAs/xcscHleI7v4DpQ6mWMgZlrKyCx?=
 =?us-ascii?Q?wUkmXByfNC6pzlejbcS5+pQ/mC7VNGXx0pCmapxpZktDxuXTgfSGP+qqv9+z?=
 =?us-ascii?Q?aB+JtcE+nBmiHvrSKOSH9f08zxpXkxDwsZI48x5ACVtBZUz/4Jo02Nc7gkmt?=
 =?us-ascii?Q?w3wR28la+5d5I0GEJjQVzkhfegh5h987z6reysrXd2Cspi3syDFIqNlbL+Zg?=
 =?us-ascii?Q?9S008IufNr/RqxCCfp6AYP2GdNQL4Cp3UaRJWK1Gm3BODrouNa9lk8GTfaI1?=
 =?us-ascii?Q?meUX7uqje6RNpsoWeqDG5rCDwPkllemFiJCTrFrx6oxM6Q0pRcZ9Jlx5nTQV?=
 =?us-ascii?Q?iC46717PbXZKbu/A5unPTQhQNlSWSELu1UL3nTV1HeqcDFJyqzohK0XIqOGA?=
 =?us-ascii?Q?9bS6Z7fnNP8y6gqZGSDzDnFyH497JMAg0KXErxAMDJWgqzVxmqnyfcQqzpIU?=
 =?us-ascii?Q?JsY20dIqi8645MmgaBJASlDWw08B50yxvtU2symxrURySvHQ1fPwdw7XwUmb?=
 =?us-ascii?Q?Z2QeG6Dt6kCnxa0t4TRBWVOISXbqArALyht1ObsWzkTW0sEPv2pqmkoWz9Ul?=
 =?us-ascii?Q?eNF+fKLw+MOWey2POnI=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(1800799024)(82310400026);DIR:OUT;SFP:1102;
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2025 13:35:59.0777
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ead75563-e229-4fd3-c06a-08de3f038ba9
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000CC.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR06MB7100

OrangePi 6 Plus adopts CIX CD8180/CD8160 SoC,
built-in 12-core 64-bit processor + NPU processor,
integrated graphics processor, equipped with 16GB/32GB/64GB
LPDDR5, and provides two M.2 KEY-M interfaces 2280 for NVMe SSD,
as well as SPI FLASH and TF slots to meet the needs of fast
read/write and high-capacity storage;

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
---
 arch/arm64/boot/dts/cix/Makefile     |  1 +
 arch/arm64/boot/dts/cix/sky1-xcp.dts | 83 ++++++++++++++++++++++++++++
 2 files changed, 84 insertions(+)
 create mode 100644 arch/arm64/boot/dts/cix/sky1-xcp.dts

diff --git a/arch/arm64/boot/dts/cix/Makefile b/arch/arm64/boot/dts/cix/Makefile
index ed3713982012..8a6c6fdc4ec0 100644
--- a/arch/arm64/boot/dts/cix/Makefile
+++ b/arch/arm64/boot/dts/cix/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_CIX) += sky1-orion-o6.dtb
+dtb-$(CONFIG_ARCH_CIX) += sky1-xcp.dtb
diff --git a/arch/arm64/boot/dts/cix/sky1-xcp.dts b/arch/arm64/boot/dts/cix/sky1-xcp.dts
new file mode 100644
index 000000000000..1fae52dc9bb0
--- /dev/null
+++ b/arch/arm64/boot/dts/cix/sky1-xcp.dts
@@ -0,0 +1,83 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright 2025 Cix Technology Group Co., Ltd.
+ *
+ */
+
+/dts-v1/;
+
+#include "sky1.dtsi"
+#include "sky1-pinfunc.h"
+
+/ {
+	model = "Xunlong,OrangePi 6 Plus";
+	compatible = "xunlong,orangepi-6-plus", "cix,sky1";
+
+	aliases {
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = &uart2;
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		linux,cma {
+			compatible = "shared-dma-pool";
+			reusable;
+			size = <0x0 0x28000000>;
+			linux,cma-default;
+		};
+	};
+
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	pinctrl_hog: hog-cfg {
+		pins {
+			pinmux = <CIX_PAD_GPIO144_FUNC_GPIO144>,
+				<CIX_PAD_GPIO145_FUNC_GPIO145>,
+				<CIX_PAD_GPIO146_FUNC_GPIO146>,
+				<CIX_PAD_GPIO147_FUNC_GPIO147>;
+			bias-pull-down;
+			drive-strength = <8>;
+		};
+	};
+};
+
+&iomuxc_s5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog_s5>;
+
+	pinctrl_hog_s5: hog-s5-cfg {
+		pins {
+			pinmux = <CIX_PAD_GPIO014_FUNC_GPIO014>;
+			bias-pull-up;
+			drive-strength = <8>;
+
+		};
+	};
+};
+
+&pcie_x8_rc {
+	status = "okay";
+};
+
+&pcie_x2_rc {
+	status = "okay";
+};
+
+&pcie_x1_1_rc {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
-- 
2.49.0


