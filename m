Return-Path: <devicetree+bounces-241492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F0082C7F14C
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 07:34:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 37BA8347542
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 06:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB1072D9EF3;
	Mon, 24 Nov 2025 06:32:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OS8PR02CU002.outbound.protection.outlook.com (mail-japanwestazon11022097.outbound.protection.outlook.com [40.107.75.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4BE2D9EE2;
	Mon, 24 Nov 2025 06:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.75.97
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763965966; cv=fail; b=L4XQYe0BeGMDlSvXqT2GUwWv198W94bjZPuBZpW/8c5zcuoXNosbu37NMyBQY5nBHhvZTld5vxIAoicAw4kNMqFpH09+DKYpuHxfZYo/hrYFxeVSP9G5zkizEC6IFqzKumDgksFxvT+6mGkuCads0McwyzZAi5Mb5x3W++fx1mA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763965966; c=relaxed/simple;
	bh=kzSgYSvPSZd4nXcZ8sN66B1QQP31PP5hZdgVtkwFvpk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jV6sM08nf/enN97q2E2OsfpcSU9vQTHoFLKOVINQNdp7rM6A/G9NWAG8t7pnDfnV5koscrdet8/FN13oqxfFC0ykin7H1G02+h2vCUGYTtiQWfTB9KzrUFqqDOInicIRMVRv1gGdroVOS5aVI+oJkIRxClTLOjyyQmYZB/5lbDg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.75.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B78VMY+LiOO9C69YH5GACsA5jIrlUX1Rmbr70mosqif3cYPjPMO0ySuzOKq0MPJhTfbW4eNlt6DX3W4p5qFWFf7Du66xTuCQR+bSYfbIoQDUXtSGKT/gzgf9rxattUeQNjT6366AlCnCOiijSyxd9iYQA7wpGZc3BNqKmix3586p1ZnpCiR+QEfRA8//v+xMOPskxIbpNRClOWoc0jBPZByXJGaAra8LBkFhIKy0Dv1bGSj4izLpdzIEcJLwL2CxehFcBX1YVCbKEXuSdjC79MuUonn/a3ti/BJ+18Rjzx7DiVynNNRMhY+cIzFDmai6me9fNeYjprQ7Pr+ulA/N3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q2l+3ypwjwFD8ZnydHUhnppi4Ugl4Kjue3Wqr91m+eA=;
 b=esmRyzaZslXRMzPC0Jew8sK+RcMueaOcJHJ9zKiVYnIMg99ByttTfbvkKyT7plxLBdOB47n7twjvtcwj9QwaGZrCgT2fwRreNzj2UWgPDJrHR0LY/bRxW8UxlEtj0ezmnG5gyc41u1KH3xT/o2vgCVYXamQzn+acB2cR8ZunCQ4e7P8pHErzdef2J/2gzSmF/4VIKq5cNDYT/wM0uIuxvhypBdCz7aBJcYWUiNhlyYv/RkjCK+m9PNucvze3TAFuzti4wvvGfj0VAAioqnrY1sghh60HB795iTJMDfTaMFuBhJZF6u2bmcH0ayv6OV7n6DC7dYqr+NhN8yDJtYnXWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from PSBPR02CA0005.apcprd02.prod.outlook.com (2603:1096:301::15) by
 TY0PR06MB5495.apcprd06.prod.outlook.com (2603:1096:400:266::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.15; Mon, 24 Nov
 2025 06:32:37 +0000
Received: from OSA0EPF000000CD.apcprd02.prod.outlook.com
 (2603:1096:301:0:cafe::78) by PSBPR02CA0005.outlook.office365.com
 (2603:1096:301::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9343.17 via Frontend Transport; Mon,
 24 Nov 2025 06:32:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000CD.mail.protection.outlook.com (10.167.240.59) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.7 via Frontend Transport; Mon, 24 Nov 2025 06:32:36 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 97EDE40A5A9E;
	Mon, 24 Nov 2025 14:32:35 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: p.zabel@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH v3 1/3] dt-bindings: reset: add sky1 reset controller
Date: Mon, 24 Nov 2025 14:32:33 +0800
Message-ID: <20251124063235.952136-2-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251124063235.952136-1-gary.yang@cixtech.com>
References: <20251124063235.952136-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSA0EPF000000CD:EE_|TY0PR06MB5495:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 681982d7-e774-47ca-db55-08de2b23421c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700013|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?S2YQY6X3r7h7YBRHtbWN0/rIP27KsLKb7s6fTuRvfq//RAXgWyBGHFhIoAsJ?=
 =?us-ascii?Q?MQNBLsZug0IJq8gYAwcfQFslV6vMEyaXeTeygRIiHK6kxRj6hf7RaSoziqkq?=
 =?us-ascii?Q?dE9JFuT8jcmmpxzxMODKrcbjZX6ArPxoF8XWfJSMTkT0Hf/OU4wTnL7lMNbu?=
 =?us-ascii?Q?1x0EaUJkBxkwMa2n5dNZnnvVuXlOwyzv/BdaoYWqoGj3n6+7aliovhHU7+JP?=
 =?us-ascii?Q?vxqM+jePN7xTPawIGeUectbJNrFLIT4GlEKiKKUKvaMTFyX31qX1GrCtHV/w?=
 =?us-ascii?Q?jX8fDu9l97hJS1ylEHVBiPjtwtp1k7gjhMiFdhBTvshBXcZQnkTNe7JqHM40?=
 =?us-ascii?Q?xX6ePXGJGyVNGBup2JPi+83Cdo3kb4HVnCQ6zlB3qMa4WbrW97ikWY2mdnzw?=
 =?us-ascii?Q?oFL+fNex+ey8wYTTXrnOP+/rbEV7QiYpRQqAVLj3wq30Ve5yaG++oWL6d3HE?=
 =?us-ascii?Q?D7AiF37frhu+AJdZet3Wc1M5JFwjJ6E+BBzFcHVvvK/fftCMyNFz1nbG0RBc?=
 =?us-ascii?Q?kI4xe9CZeboVO40pHU73MEo5DHv56rD2hJ/sAUpm4K4eIVTrdNL3Z2mRc60s?=
 =?us-ascii?Q?nsjxmotEos7TOv/5tG8/vn5wgXtGgXNvNL9P6ZrqMQz3lw1ylqR30vkpxKF9?=
 =?us-ascii?Q?OGo72mWvIEp37hHuHzSCI44EXa2hy4DqOmrSqduamazoSva+rfU44SEwPr2J?=
 =?us-ascii?Q?GH5iaGQe3aAegK+9IRVq9nV/U7ot9xvR37i59LwAdWtSIwWXJNaFZfo7/T0W?=
 =?us-ascii?Q?N36l0x97jqMuevZs/5Zbty1Fwm8b0WUsbYm7d7t/mmehOxLQNz28TyeDYAs+?=
 =?us-ascii?Q?GmLdFqXG+gCXhBW05MkwEpMbR7+32kgwaBsz/wUeP8v471LJ8LYXif4TZl1E?=
 =?us-ascii?Q?icbtg3r9IH0ydRr+dk0+MKHN5Fc4bLdSGl3AUGOrmDSxKk5BOSknvD1soZbH?=
 =?us-ascii?Q?xXWtVkXqcJdYCZjeiwTEvYF1gtrmgWssx/k+Qz3a1W8oCuvPgS5ANuSU/Nsb?=
 =?us-ascii?Q?pOu78VR9hB3hAQry1d8UabdT9DIXU8Eqff5IFPmLw4sKVl3UnERyUglT2jiS?=
 =?us-ascii?Q?uY+R5kyEEDxlfwlbUfysxnRzosvAf7mbYNb8d8mNnaZfUczqiCo3GvxI4WU1?=
 =?us-ascii?Q?+/1loI6bCxQ0Up9QPHNysOsyD0WYCVjQNxQxfYUghfFKQoxyU5/VnpaNnkSi?=
 =?us-ascii?Q?oVTVE3JLl1DuamRGu90FDfwD9vYDttoysPsWI4YbslIN5HiUnlceh3Rj9i3i?=
 =?us-ascii?Q?q8xsFio5+0ahzkiYQ7jA63TIoa1KIbWdIt8pKaeyfy1U6/Xg+tNa6EgFOfIw?=
 =?us-ascii?Q?VwZ8qyZfVcsGGRss+dboPpbmLNtJj2t2Mpl5phg090IR/Q48YjA27w8SqdXT?=
 =?us-ascii?Q?VF3kArPIScUMjBCVxB3hRV+lDlj1riiUlBeXhaSv7ko5+cMb8oAY/ZYM6DnV?=
 =?us-ascii?Q?nJUMXV0Dd54gd9eFMjKktNfaToY1WbvqoohSYoVvoRnDWTyGT0SYt2KdCzSU?=
 =?us-ascii?Q?Op7WsE1SPIZtL6plQYBad+4X8vJvQ+pOpu4D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(82310400026)(376014);DIR:OUT;SFP:1102;
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2025 06:32:36.4098
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 681982d7-e774-47ca-db55-08de2b23421c
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000CD.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB5495

There are two reset controllers on Cix sky1 Soc.
One is located in S0 domain, and the other is located
in S5 domain.

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
---
 .../bindings/reset/cix,sky1-rst.yaml          |  50 ++++++
 include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 +++++
 include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++++++++++++
 3 files changed, 256 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h

diff --git a/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml b/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
new file mode 100644
index 000000000000..a28f938a283d
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reset/cix,sky1-rst.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: CIX Sky1 Reset Controller
+
+maintainers:
+  - Gary Yang <gary.yang@cixtech.com>
+
+description: |
+  CIX Sky1 reset controller can be used to reset various set of peripherals.
+  There are two reset controllers, one is located in S0 domain, the other
+  is located in S5 domain.
+
+  See also:
+  - include/dt-bindings/reset/cix,sky1-rst.h
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - cix,sky1-rst
+          - cix,sky1-rst-fch
+
+  reg:
+    minItems: 1
+    maxItems: 3
+
+  '#reset-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - '#reset-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/reset/cix,sky1-rst.h>
+    reset-controller@16000304 {
+      compatible = "cix,sky1-rst";
+      reg = <0x16000304 0xc>,
+            <0x16000400 0x10>,
+            <0x16000800 0x8>;
+      #reset-cells = <1>;
+    };
diff --git a/include/dt-bindings/reset/cix,sky1-rst-fch.h b/include/dt-bindings/reset/cix,sky1-rst-fch.h
new file mode 100644
index 000000000000..8e67d7eb92aa
--- /dev/null
+++ b/include/dt-bindings/reset/cix,sky1-rst-fch.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/* Author: Jerry Zhu <jerry.zhu@cixtech.com> */
+#ifndef DT_BINDING_RESET_FCH_SKY1_H
+#define DT_BINDING_RESET_FCH_SKY1_H
+
+/* func reset for sky1 fch */
+
+#define SW_I3C0_RST_FUNC_G_N	0
+#define SW_I3C0_RST_FUNC_I_N	1
+#define SW_I3C1_RST_FUNC_G_N	2
+#define SW_I3C1_RST_FUNC_I_N	3
+#define SW_UART0_RST_FUNC_N	4
+#define SW_UART1_RST_FUNC_N	5
+#define SW_UART2_RST_FUNC_N	6
+#define SW_UART3_RST_FUNC_N	7
+#define SW_TIMER_RST_FUNC_N	8
+
+/* apb reset for sky1 fch */
+#define SW_I3C0_RST_APB_N	9
+#define SW_I3C1_RST_APB_N	10
+#define SW_DMA_RST_AXI_N	11
+#define SW_UART0_RST_APB_N	12
+#define SW_UART1_RST_APB_N	13
+#define SW_UART2_RST_APB_N	14
+#define SW_UART3_RST_APB_N	15
+#define SW_SPI0_RST_APB_N	16
+#define SW_SPI1_RST_APB_N	17
+#define SW_I2C0_RST_APB_N	18
+#define SW_I2C1_RST_APB_N	19
+#define SW_I2C2_RST_APB_N	20
+#define SW_I2C3_RST_APB_N	21
+#define SW_I2C4_RST_APB_N	22
+#define SW_I2C5_RST_APB_N	23
+#define SW_I2C6_RST_APB_N	24
+#define SW_I2C7_RST_APB_N	25
+#define SW_GPIO_RST_APB_N	26
+
+/* fch rst for xspi */
+#define SW_XSPI_REG_RST_N	27
+#define SW_XSPI_SYS_RST_N	28
+
+#endif
diff --git a/include/dt-bindings/reset/cix,sky1-rst.h b/include/dt-bindings/reset/cix,sky1-rst.h
new file mode 100644
index 000000000000..2f0990922aad
--- /dev/null
+++ b/include/dt-bindings/reset/cix,sky1-rst.h
@@ -0,0 +1,164 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/* Author: Jerry Zhu <jerry.zhu@cixtech.com> */
+#ifndef DT_BINDING_RESET_SKY1_H
+#define DT_BINDING_RESET_SKY1_H
+
+/* reset for csu_pm */
+
+#define SKY1_CSU_PM_RESET_N		0
+#define SKY1_SENSORFUSION_RESET_N	1
+#define SKY1_SENSORFUSION_NOC_RESET_N	2
+
+/* reset group0 for s0 domain modules */
+#define SKY1_DDRC_RESET_N		3
+#define SKY1_GIC_RESET_N		4
+#define SKY1_CI700_RESET_N		5
+#define SKY1_SYS_NI700_RESET_N		6
+#define SKY1_MM_NI700_RESET_N		7
+#define SKY1_PCIE_NI700_RESET_N		8
+#define SKY1_GPU_RESET_N		9
+#define SKY1_NPUTOP_RESET_N		10
+#define SKY1_NPUCORE0_RESET_N		11
+#define SKY1_NPUCORE1_RESET_N		12
+#define SKY1_NPUCORE2_RESET_N		13
+#define SKY1_VPU_RESET_N		14
+#define SKY1_ISP_SRESET_N		15
+#define SKY1_ISP_ARESET_N		16
+#define SKY1_ISP_HRESET_N		17
+#define SKY1_ISP_GDCRESET_N		18
+#define SKY1_DPU_RESET0_N		19
+#define SKY1_DPU_RESET1_N		20
+#define SKY1_DPU_RESET2_N		21
+#define SKY1_DPU_RESET3_N		22
+#define SKY1_DPU_RESET4_N		23
+#define SKY1_DP_RESET0_N		24
+#define SKY1_DP_RESET1_N		25
+#define SKY1_DP_RESET2_N		26
+#define SKY1_DP_RESET3_N		27
+#define SKY1_DP_RESET4_N		28
+#define SKY1_DP_PHY_RST_N		29
+
+/* reset group1 for s0 domain modules */
+#define SKY1_AUDIO_HIFI5_RESET_N	30
+#define SKY1_AUDIO_HIFI5_NOC_RESET_N	31
+#define SKY1_CSIDPHY_PRST0_N		32
+#define SKY1_CSIDPHY_CMNRST0_N		33
+#define SKY1_CSI0_RST_N			34
+#define SKY1_CSIDPHY_PRST1_N		35
+#define SKY1_CSIDPHY_CMNRST1_N		36
+#define SKY1_CSI1_RST_N			37
+#define SKY1_CSI2_RST_N			38
+#define SKY1_CSI3_RST_N			39
+#define SKY1_CSIBRDGE0_RST_N		40
+#define SKY1_CSIBRDGE1_RST_N		41
+#define SKY1_CSIBRDGE2_RST_N		42
+#define SKY1_CSIBRDGE3_RST_N		43
+#define SKY1_GMAC0_RST_N		44
+#define SKY1_GMAC1_RST_N		45
+#define SKY1_PCIE0_RESET_N		46
+#define SKY1_PCIE1_RESET_N		47
+#define SKY1_PCIE2_RESET_N		48
+#define SKY1_PCIE3_RESET_N		49
+#define SKY1_PCIE4_RESET_N		50
+
+/* reset group1 for usb phys */
+#define SKY1_USB_DP_PHY0_PRST_N		51
+#define SKY1_USB_DP_PHY1_PRST_N		52
+#define SKY1_USB_DP_PHY2_PRST_N		53
+#define SKY1_USB_DP_PHY3_PRST_N		54
+#define SKY1_USB_DP_PHY0_RST_N		55
+#define SKY1_USB_DP_PHY1_RST_N		56
+#define SKY1_USB_DP_PHY2_RST_N		57
+#define SKY1_USB_DP_PHY3_RST_N		58
+#define SKY1_USBPHY_SS_PST_N		59
+#define SKY1_USBPHY_SS_RST_N		60
+#define SKY1_USBPHY_HS0_PRST_N		61
+#define SKY1_USBPHY_HS1_PRST_N		62
+#define SKY1_USBPHY_HS2_PRST_N		63
+#define SKY1_USBPHY_HS3_PRST_N		64
+#define SKY1_USBPHY_HS4_PRST_N		65
+#define SKY1_USBPHY_HS5_PRST_N		66
+#define SKY1_USBPHY_HS6_PRST_N		67
+#define SKY1_USBPHY_HS7_PRST_N		68
+#define SKY1_USBPHY_HS8_PRST_N		69
+#define SKY1_USBPHY_HS9_PRST_N		70
+
+/* reset group1 for usb controllers */
+#define SKY1_USBC_SS0_PRST_N		71
+#define SKY1_USBC_SS1_PRST_N		72
+#define SKY1_USBC_SS2_PRST_N		73
+#define SKY1_USBC_SS3_PRST_N		74
+#define SKY1_USBC_SS4_PRST_N		75
+#define SKY1_USBC_SS5_PRST_N		76
+#define SKY1_USBC_SS0_RST_N		77
+#define SKY1_USBC_SS1_RST_N		78
+#define SKY1_USBC_SS2_RST_N		79
+#define SKY1_USBC_SS3_RST_N		80
+#define SKY1_USBC_SS4_RST_N		81
+#define SKY1_USBC_SS5_RST_N		82
+#define SKY1_USBC_HS0_PRST_N		83
+#define SKY1_USBC_HS1_PRST_N		84
+#define SKY1_USBC_HS2_PRST_N		85
+#define SKY1_USBC_HS3_PRST_N		86
+#define SKY1_USBC_HS0_RST_N		87
+#define SKY1_USBC_HS1_RST_N		88
+#define SKY1_USBC_HS2_RST_N		89
+#define SKY1_USBC_HS3_RST_N		90
+
+/* reset group0 for rcsu */
+#define SKY1_AUDIO_RCSU_RESET_N			91
+#define SKY1_CI700_RCSU_RESET_N			92
+#define SKY1_CSI_RCSU0_RESET_N			93
+#define SKY1_CSI_RCSU1_RESET_N			94
+#define SKY1_CSU_PM_RCSU_RESET_N		95
+#define SKY1_DDR_BROADCAST_RCSU_RESET_N		96
+#define SKY1_DDR_CTRL_RCSU_0_RESET_N		97
+#define SKY1_DDR_CTRL_RCSU_1_RESET_N		98
+#define SKY1_DDR_CTRL_RCSU_2_RESET_N		99
+#define SKY1_DDR_CTRL_RCSU_3_RESET_N		100
+#define SKY1_DDR_TZC400_RCSU_0_RESET_N		101
+#define SKY1_DDR_TZC400_RCSU_1_RESET_N		102
+#define SKY1_DDR_TZC400_RCSU_2_RESET_N		103
+#define SKY1_DDR_TZC400_RCSU_3_RESET_N		104
+#define SKY1_DP0_RCSU_RESET_N			105
+#define SKY1_DP1_RCSU_RESET_N			106
+#define SKY1_DP2_RCSU_RESET_N			107
+#define SKY1_DP3_RCSU_RESET_N			108
+#define SKY1_DP4_RCSU_RESET_N			109
+#define SKY1_DPU0_RCSU_RESET_N			110
+#define SKY1_DPU1_RCSU_RESET_N			111
+#define SKY1_DPU2_RCSU_RESET_N			112
+#define SKY1_DPU3_RCSU_RESET_N			113
+#define SKY1_DPU4_RCSU_RESET_N			114
+#define SKY1_DSU_RCSU_RESET_N			115
+#define SKY1_FCH_RCSU_RESET_N			116
+#define SKY1_GICD_RCSU_RESET_N			117
+#define SKY1_GMAC_RCSU_RESET_N			118
+#define SKY1_GPU_RCSU_RESET_N			119
+#define SKY1_ISP_RCSU0_RESET_N			120
+#define SKY1_ISP_RCSU1_RESET_N			121
+#define SKY1_NI700_MMHUB_RCSU_RESET_N		122
+
+/* reset group1 for rcsu */
+#define SKY1_NPU_RCSU_RESET_N			123
+#define SKY1_NI700_PCIE_RCSU_RESET_N		124
+#define SKY1_PCIE_X421_RCSU_RESET_N		125
+#define SKY1_PCIE_X8_RCSU_RESET_N		126
+#define SKY1_SF_RCSU_RESET_N			127
+#define SKY1_RCSU_SMMU_MMHUB_RESET_N		128
+#define SKY1_RCSU_SMMU_PCIEHUB_RESET_N		129
+#define SKY1_RCSU_SYSHUB_RESET_N		130
+#define SKY1_NI700_SMN_RCSU_RESET_N		131
+#define SKY1_NI700_SYSHUB_RCSU_RESET_N		132
+#define SKY1_RCSU_USB2_HOST0_RESET_N		133
+#define SKY1_RCSU_USB2_HOST1_RESET_N		134
+#define SKY1_RCSU_USB2_HOST2_RESET_N		135
+#define SKY1_RCSU_USB2_HOST3_RESET_N		136
+#define SKY1_RCSU_USB3_TYPEA_DRD_RESET_N	137
+#define SKY1_RCSU_USB3_TYPEC_DRD_RESET_N	138
+#define SKY1_RCSU_USB3_TYPEC_HOST0_RESET_N	139
+#define SKY1_RCSU_USB3_TYPEC_HOST1_RESET_N	140
+#define SKY1_RCSU_USB3_TYPEC_HOST2_RESET_N	141
+#define SKY1_VPU_RCSU_RESET_N			142
+
+#endif
-- 
2.49.0


