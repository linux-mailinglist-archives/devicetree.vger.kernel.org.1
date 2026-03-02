Return-Path: <devicetree+bounces-269807-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sK+sG8QxpWli5gUAu9opvQ
	(envelope-from <devicetree+bounces-269807-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 07:44:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 046CA1D387D
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 07:44:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B51ED300F940
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 06:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 523D9377031;
	Mon,  2 Mar 2026 06:44:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OS8PR02CU002.outbound.protection.outlook.com (mail-japanwestazon11022084.outbound.protection.outlook.com [40.107.75.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C0F30EF8F;
	Mon,  2 Mar 2026 06:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.75.84
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772433856; cv=fail; b=TakI8Elh9wvq/tFazjjYg7i26yBBYJLPwHVWe5NQ/ArKsu+vw9qCU6AeX0xTL9J9jqQQM037y1xIQuMASXcsN+eEvIhvozjHi3dTjgL40syfY4idTO0WmJphMiTQYoEdnXI0Wz0YK1K/OsmRAjz8WwS5hHDY/sOiO5q4mYb4vTw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772433856; c=relaxed/simple;
	bh=e+Gw+sIzE/OWZlOVccxqQibTctx2XMa8zDv+dlSVGUo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=h5r6DqYJDREQX9c4aU76kuDinhMoDZmfF2FmDmDR3LyrNWcBkod0W49M1fLUpv39FSlhHZvrP2hpFmM8T7fbPYuBSQj5nPfZz3N/HeBJHKIr9DtBHAY7fufNfJ3TI72n5Fny8DFSZYRbHRtBa24GTw+jK9jBOQzhfcFspYZsNeA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.75.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EgidZOm2LYLN/4Os2Iay+2TaCdz3njLdTtD2+LOtSif5CHp+OkYAgQ/bP/tyDFA8UFfUa2VS3/hdATO6YvlBcRhTZCX7ddu/qmI78lTVRFQQK8TiOksgYBoAtugz2nwIF5S4laF0igNb8Q16dyxqGYhBIns8CeUlfUvrprXULbuwhtj2ZUgo34wtwfmu/GeW+gHuq6eGxh1zqYHJkAAkWvePKqG9QSW78TXlu2MtVQInaauDChJAWn5dQGhCuWn/pDiS8dFAdjUmOUkfl75rADdaN+nLEb1Y/J3fLGKwng1E23YviZcOajfXlF5ii5l7U4cA9LVR2LWwhW3/8bDNIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=61dV+/7Mx+30rnAjNfByWa1ngTQxkl1igxWQiXx7LjA=;
 b=De96mxl8BAmP0Lb37lyBxdudnrhOOX8B2XnZWxHUGuS0NextACFdQL6V1r6yuIuTaczH8EaN0IR776x2Ve5s5QEEEv+FSJ9qFgBxHMp6QY2jjqqKi5uqrfXh9qVd40UZQFGmNvbCCHrLzhfoFCgctZi21GYygIVm9WTLcEAYsE/9L6MQipnDjGPsvguW8pVJSkgbLXGH6j5ASswClXuY+yZ9XV8vHYsuGWxchDcdz9f+hUexdGrcQHFrPHTDQm57Htkl7Bp06GMKgTScT/Oionrm86ZD4NqzLlZJeO7j+RIh6KMyOyh1lXItf+tmRNwGioGiny5RB09lXvl9vowRLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SE2P216CA0082.KORP216.PROD.OUTLOOK.COM (2603:1096:101:2c6::17)
 by JH0PR06MB7126.apcprd06.prod.outlook.com (2603:1096:990:90::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.13; Mon, 2 Mar
 2026 06:44:10 +0000
Received: from TY2PEPF0000AB86.apcprd03.prod.outlook.com
 (2603:1096:101:2c6:cafe::63) by SE2P216CA0082.outlook.office365.com
 (2603:1096:101:2c6::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.21 via Frontend Transport; Mon,
 2 Mar 2026 06:44:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 TY2PEPF0000AB86.mail.protection.outlook.com (10.167.253.10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.16 via Frontend Transport; Mon, 2 Mar 2026 06:44:09 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 3713741604E6;
	Mon,  2 Mar 2026 14:44:08 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	peter.chen@cixtech.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH v10 1/3] dt-bindings: soc: cix: document the syscon on Sky1 SoC
Date: Mon,  2 Mar 2026 14:44:05 +0800
Message-ID: <20260302064407.1914014-2-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260302064407.1914014-1-gary.yang@cixtech.com>
References: <20260302064407.1914014-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY2PEPF0000AB86:EE_|JH0PR06MB7126:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 5b852ab4-5978-4054-faf6-08de78271b8f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	OOLS7qaCNTPUmVhdCZlYPKrWvGdkVC9iosAImAM7ABifRmSahLNA9ivctI+kBNvRQ366j+XM94IqeJiE9e2SycQhZIQ0G5A/7MYgNf4NsfWgl8VbBpW2HLBE3Tn/9ek2dJNjoYO9/uMXWtZv8s+ZPEddO2F6Sf72OT7dWyukXHijtexJUK37pmkcRJb1MaW4KxgNVlGp+0tvBCP3TGeErbGnd9+SyyKWTDec7eafkNoy1/0xDIG2hWtk5dJYWLVLt5LB4GwoMARXFIyjq7B+oM0YymUXenlymYeiQUPRNNhrv3KfGCHHD9Ue7oKVxfueZ8JSTNoYNab7QdA+ToxXVZvtwDaObEKZiwIGoAfVwDPKbOzrMeEOsP3GY6L59KMETjE+tWE6HQ0oxhO655EB0AzGM4++y2DaJD/tF37jhf0bTY1HR2P9IEvZ8ocbrtX/OwyX+biqrUfPfCdzGFujWRtXSynIgWLOZFogfKO9gPn+xRb8yNfpZgcj3me7S/JaRyYn5sdoyx19B0hVo6EXOVxWT2CIGKbX2DQ5Xv2Hym4HQirtIE+8yMTVCWH+ZbMXO2l5BxIOgeAlz9Nz8Zk4UQJiBGydnWXFHU3QAqNYaY77hMZsrkl7QUq8Buz09kRlQ6Zl9JY6zAWMXEcTU7DRFjDYsWOlUxVlxNnElPzJAOHlyhaqZTg24mJ8rnek8rli2lafgs4ZZYW144M26n23pG8K2cxFF+QXeQHl24hmI12Vtlap7fVDvV2KcBmDqwZItneTDgFEL9izi3RnRHEu4q9N0XX2AFfvqrkz19Xg0TM=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(36860700013)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	MsiT+Q8cy1uCWPQ5SbpoXJsQOY11SHuk3y4t85+1eM3ej+GjhygkGxmnVzLXhGd+nRkO5O+86IpwlDI1lRn9mtv0ASm3Qi1rGaMbarSOaJi2aW1ohZCHZmYHREyERXr41T8vGN4YDyBsmTMicpabpvhNvj7rabsrbf5PRZqG289mrqkC8e9+lU0Mtyw9XomxE9dFFA7KVncgXHC0xhH4geoDjHonsKWVs6+OKlquJuL9B5xrsCwINwJlLnCJzxawzabWUQpCaQRdEaU1FBVmvca3BaIvY+2FM+Vm865pnaHvOA4GO32cxD1AkDa/INKagKTqOl8hTSKkMdpizNnKeGt6Dzg1jZRa9sd5u7/2F5rYoWfn8cWdKhkGJw0Yk4Tas2tRjS2w6zDYGOJUM4aRGNKoaj+oJRYv3ypi/mROV+rwKyhUk59MiewUVIGoO45W
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 06:44:09.2061
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b852ab4-5978-4054-faf6-08de78271b8f
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	TY2PEPF0000AB86.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR06MB7126
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-269807-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.984];
	RCVD_COUNT_SEVEN(0.00)[7];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.63.122.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 046CA1D387D
X-Rspamd-Action: no action

There are two system control on Cix sky1 Soc. One is located in S0 domain,
and the other is located in S5 domain. The system control contains resets,
usb typeC and more. At this point, only the reset controller is embedded
as usb typeC uses it by phandle.

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
---
 .../soc/cix/cix,sky1-system-control.yaml      |  42 +++++
 .../reset/cix,sky1-s5-system-control.h        | 163 ++++++++++++++++++
 .../reset/cix,sky1-system-control.h           |  41 +++++
 3 files changed, 246 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
 create mode 100644 include/dt-bindings/reset/cix,sky1-s5-system-control.h
 create mode 100644 include/dt-bindings/reset/cix,sky1-system-control.h

diff --git a/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
new file mode 100644
index 000000000000..a01a515222c6
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/cix/cix,sky1-system-control.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cix Sky1 SoC system control register region
+
+maintainers:
+  - Gary Yang <gary.yang@cixtech.com>
+
+description:
+  An wide assortment of registers of the system controller on Sky1 SoC,
+  including resets, usb, wakeup sources and so on.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - cix,sky1-system-control
+          - cix,sky1-s5-system-control
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  '#reset-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@4160000 {
+      compatible = "cix,sky1-system-control", "syscon";
+      reg = <0x4160000 0x100>;
+      #reset-cells = <1>;
+    };
diff --git a/include/dt-bindings/reset/cix,sky1-s5-system-control.h b/include/dt-bindings/reset/cix,sky1-s5-system-control.h
new file mode 100644
index 000000000000..808bbcbe0c98
--- /dev/null
+++ b/include/dt-bindings/reset/cix,sky1-s5-system-control.h
@@ -0,0 +1,163 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/* Author: Jerry Zhu <jerry.zhu@cixtech.com> */
+#ifndef DT_BINDING_RESET_CIX_SKY1_S5_SYSTEM_CONTROL_H
+#define DT_BINDING_RESET_CIX_SKY1_S5_SYSTEM_CONTROL_H
+
+/* reset for csu_pm */
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
diff --git a/include/dt-bindings/reset/cix,sky1-system-control.h b/include/dt-bindings/reset/cix,sky1-system-control.h
new file mode 100644
index 000000000000..7a16fc4ef3b5
--- /dev/null
+++ b/include/dt-bindings/reset/cix,sky1-system-control.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/* Author: Jerry Zhu <jerry.zhu@cixtech.com> */
+#ifndef DT_BINDING_RESET_CIX_SKY1_SYSTEM_CONTROL_H
+#define DT_BINDING_RESET_CIX_SKY1_SYSTEM_CONTROL_H
+
+/* func reset for sky1 fch */
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
-- 
2.49.0


