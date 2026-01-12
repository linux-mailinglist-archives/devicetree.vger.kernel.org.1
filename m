Return-Path: <devicetree+bounces-253782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCEED11567
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:52:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ED3BE301E130
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFAB6346795;
	Mon, 12 Jan 2026 08:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="gtX82J6Y"
X-Original-To: devicetree@vger.kernel.org
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010013.outbound.protection.outlook.com [52.101.56.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4988C345CD7;
	Mon, 12 Jan 2026 08:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.56.13
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768207972; cv=fail; b=hEd4rY9HLodpYHtPZnlXedcJX9NEu4kh6EcFkUloAROvQiUbA/VHXjBHF1JRnm4RmZTbSd3RyEDvDRk9X6LangbZiYwcUOxIzb1kGms1RUpc1PQJ8CpqebTqUiae1x/iVaNC4b88LvJOVYnXPfUo+17excdGOv7ZLPSB9cK5H0Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768207972; c=relaxed/simple;
	bh=vFvmQGiejFSegbl1X9hyRHggKOfzshS/NGOnxphF1ZY=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MpTOpv8cbVnIvxfX6Vaauc1QXQ8HlNuZ/bUD4zaTqTudzVA0oBGDOE+Cd6uVrP8YMtjgIuYLqYIj7NWkds7LzUTUi4MabDAWpYAEMfdwzSmNd8zsSqDHOkEmEuKu3n5zSuXzBrxSL5eFBEEkT8u8BZnrYGtnVgjLlK73Df1V/x8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=gtX82J6Y; arc=fail smtp.client-ip=52.101.56.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V1lVP1LoWW+IdAkNGTPHce3KwFZKxlqKsGN6oxhmaWFWc/YqP00lGwT0uI/NPOIr+0A+L8uTS2rdQHGzvM2ahtUWqSEnlu/9da1jJ72SguIbfELmttSQ6wlt+sHeEQBojv0O8uTXT1RnTFf0SYE4IQa1XmQuvshvv43WIyYXYz8+f9cRrMP1M+dCd2I1E5IpnKZoOtyq2uQWT2qEXlhFv26l+Vc/2jD2PbAg5rRgXXjU2NElcy3jA8JP8a1Pk+f02CYDOwrfyLHg/eWRA/m9Du8gllzEVB7+7gYFQZyCEIdoSzdmEuqVmfFUPJfrOQVvBi1fIKiDpjhwaAisyvcTZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5N9RVhLn9WaENM7A+5L2TBz865/dHybEDE+Byh/tGT4=;
 b=O3RskMwCIqNCqYVjv3ULb28/gZUK/aU0ZUOHbBgJ1q6DK4IPWHev8TFOHvfB6kibOBx6oh5AKNkwo8n8aHgl4wjinv+nrVAkfSv9jKoWwrYJBUaLaMe9wQjJlL1bRDWu1YsZ0UkDZ8Jvd6yrLbZzjLDY1bK8GDVGDanf/vWyJMvWZoN84Ulz1Im4NVGdAJnDzCOWdHpqBYISX/bqFUupC0E7tnv83Ub2IatsWU8R1bZhnecBEIP5nzoFY5z0ClveIkwA1y7xXltpnKGo5PeAwV58Hssq1Lnmv9UMePqs/QNbG6Ddhve8cYDQ5UYcCl6/v++kRi/HyRb2ZvgmhzNTMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5N9RVhLn9WaENM7A+5L2TBz865/dHybEDE+Byh/tGT4=;
 b=gtX82J6Yr78cGMhhGvfnhi0NVWbsxq6OgVlecq/sKF2PjzdGIZqU4LOXmU+rECHN28tzX1e0jb0fdGmvpWEK6L3+35X/fJu13mogsDZQhmwGsBQrmsagIkuxlrbkbVedylaP/acgWCjNcH3zLVvLxpD5Wlmj0oFPrAGdtQ2aQjY=
Received: from BL0PR02CA0073.namprd02.prod.outlook.com (2603:10b6:208:51::14)
 by BY5PR10MB4321.namprd10.prod.outlook.com (2603:10b6:a03:202::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 08:52:49 +0000
Received: from BL6PEPF0001AB4F.namprd04.prod.outlook.com
 (2603:10b6:208:51:cafe::c1) by BL0PR02CA0073.outlook.office365.com
 (2603:10b6:208:51::14) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.7 via Frontend Transport; Mon,
 12 Jan 2026 08:52:49 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 BL6PEPF0001AB4F.mail.protection.outlook.com (10.167.242.73) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Mon, 12 Jan 2026 08:52:46 +0000
Received: from DFLE201.ent.ti.com (10.64.6.59) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 12 Jan
 2026 02:52:08 -0600
Received: from DFLE209.ent.ti.com (10.64.6.67) by DFLE201.ent.ti.com
 (10.64.6.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 12 Jan
 2026 02:52:08 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE209.ent.ti.com
 (10.64.6.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 12 Jan 2026 02:52:08 -0600
Received: from uda0543015.dhcp.ti.com (uda0543015.dhcp.ti.com [10.24.69.9])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60C8pqhA090613;
	Mon, 12 Jan 2026 02:52:03 -0600
From: Abhash Kumar Jha <a-kumar2@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<conor+dt@kernel.org>, <krzk+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <u-kumar1@ti.com>, <p-mantena@ti.com>,
	<m-chawdhry@ti.com>
Subject: [PATCH v4 2/2] arm64: dts: ti: k3-j784s4-j742s2-main-common.dtsi: Refactor watchdog instances for j784s4
Date: Mon, 12 Jan 2026 14:21:13 +0530
Message-ID: <20260112085113.3476193-3-a-kumar2@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260112085113.3476193-1-a-kumar2@ti.com>
References: <20260112085113.3476193-1-a-kumar2@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB4F:EE_|BY5PR10MB4321:EE_
X-MS-Office365-Filtering-Correlation-Id: 730e1591-3a1c-4645-e7ea-08de51b7f52b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700013|34020700016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?0gJ6geeE3qWmuBJFFvUqyz12IxhKBXeOZeGbShgV3r2Y0oXvHpZoE+8nrNXT?=
 =?us-ascii?Q?LNb9E4J5N+HKp+Fn1URywQTOqLMqVquH6olMnAtp9iaXDBg7g1uGkDLRPyCK?=
 =?us-ascii?Q?7Mwnap/s1x+KfPAQMh/ktDD10gJEOFm+40CRSrFP9RteU8SNJ8w++/bzAHlQ?=
 =?us-ascii?Q?2lnw6HtwR9wryFn5Zx45ykPpj8LXN7D3Ur98HyGGhchd1cm5h8tDcpwJExPH?=
 =?us-ascii?Q?ITk7n6T5V8g3ilyzYutvqLsc2dPaKGMatUrhw0sL8E+2yu1RTj/Adbwdakk/?=
 =?us-ascii?Q?9S+Au9Gij6xrHhaJIkkow3k9eovRpOjZxgEwo8QXXbX2YX1+fjp6TNC/r4UK?=
 =?us-ascii?Q?VUI6Rj8QCoMBpSx5TLhM3m2xiSvLLvdxpOptadw48DmDYHrt9fWxPAEU6qBA?=
 =?us-ascii?Q?31M53tMND5Bo6+q/3Y6YHPc6dsBGF5QW56JDZvvkJ1iAPIunG29OfxAkzZlr?=
 =?us-ascii?Q?nIb58ZZGY4cvV5gu2lU5SS/OrogbVyc3XRz914Gjg1PhZeweHTppHRIpSul9?=
 =?us-ascii?Q?T36bPzoHWHxFcdaUg7/8jUhujvIJQylaGVx86ozBj0r3ZJ+A1lPT7sgWrYhq?=
 =?us-ascii?Q?bweaqJqhpBzOekQ9dNBFYpuGrYjdJbWU2qm/dPTr4ndaGCmFRC1d1CnOfPpl?=
 =?us-ascii?Q?EmrD8TSPte6cDJp4KGi3GKraYxZToxUSeP6QiTNFufS2QmSoFz/Ku7fp7U7k?=
 =?us-ascii?Q?KVI1VtuWemt62ix9LbnWNqM6Wwd6N+s+dD7Il8c1U0eIFtBXbcEeCdDrdXLg?=
 =?us-ascii?Q?vOR/NgI5Df9BEx4LQZsjydb2CiHti/NBh6SJN8K0pc5GhF3Hb9I4fhC90/hC?=
 =?us-ascii?Q?ZgBCA8n58zHpEOpRzmGMmKK/nNBoC5lWAwg1g3U82novvVBh/OoeKt7wrYa+?=
 =?us-ascii?Q?OlwiIoljg80alCeoW4zYhwd777pLWJZAvf2oecP2SEo+Zulfe1k3aN1xz4sr?=
 =?us-ascii?Q?UDena3kuRRMiCoucg8Fj8P4x0oXPujnEhQxiS+bbr7DNGdD+Rry5QafJVVcf?=
 =?us-ascii?Q?oc4bJ9BT6Ua6ygAv4SqGEuic6qK+4Sry+zvL1hpy44UJeB2EOBumyywx6NC2?=
 =?us-ascii?Q?+5MqQ+jkavguDSmYt3Xe/KF6Xm1EQVKrvB4EoRvkQenD/+uKoeIBcbCZ4gbT?=
 =?us-ascii?Q?2AJjcLddQssTWVY0zvrl8t2nCauB1z/OxpzeiGgwetQ39equP0fxcakaIhwx?=
 =?us-ascii?Q?quQc+joIcNT0UZhYfuIC0ZrBoMBZTzW3CQSk9weDcKnCh3M+7yi39BC4v0H0?=
 =?us-ascii?Q?d1CYE1T6JZczOSLMhldl1fgUpuwUxLFSIeHr3HA2W1VBrfbvtiELQHkvb2mw?=
 =?us-ascii?Q?i9e94wUZ//ybHSYT+IK3x6F/WDf6LUnsgz/gZ24V4wPdnlLOki3v1hb651vb?=
 =?us-ascii?Q?YthrttLFPi4CHluB5tQnRlyCa6FlIU2uNIofOjcTfbivETRSwt4iC4oreG4h?=
 =?us-ascii?Q?L3i/OAl3UqukEYctKK2DssJ6g5+CYLcL05XOu1+4pwuTyUkTqt/wK0G86R/v?=
 =?us-ascii?Q?scS7dNTW1N35PYaUv5r+q/bPNNYOJ4QGmrhbJp0/VfiAkTbR8NluDgaqQQiQ?=
 =?us-ascii?Q?FZrhZaUFdAsdaa8XlB0=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700013)(34020700016);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2026 08:52:46.6089
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 730e1591-3a1c-4645-e7ea-08de51b7f52b
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF0001AB4F.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4321

Each A72 core has one watchdog instance associated with it. Since j742s2
has 4 A72 cores, the common file should not define 8 watchdog instances.

Refactor the last 4 extra watchdogs from the common file to j784s4
specific file, as j784s4 has 8 A72 cores and thus hardware description
requires 8 watchdog instances.

Fixes: 9cc161a4509c ("arm64: dts: ti: Refactor J784s4 SoC files to a common file")
Signed-off-by: Abhash Kumar Jha <a-kumar2@ti.com>
---
 .../dts/ti/k3-j784s4-j742s2-main-common.dtsi  | 36 -------------------
 arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi    | 36 +++++++++++++++++++
 2 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
index 9cc0901d58fb..c2636e624f18 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
@@ -2378,42 +2378,6 @@ watchdog3: watchdog@2230000 {
 		assigned-clock-parents = <&k3_clks 351 4>;
 	};
 
-	watchdog4: watchdog@2240000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2240000 0x00 0x100>;
-		clocks = <&k3_clks 352 0>;
-		power-domains = <&k3_pds 352 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 352 0>;
-		assigned-clock-parents = <&k3_clks 352 4>;
-	};
-
-	watchdog5: watchdog@2250000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2250000 0x00 0x100>;
-		clocks = <&k3_clks 353 0>;
-		power-domains = <&k3_pds 353 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 353 0>;
-		assigned-clock-parents = <&k3_clks 353 4>;
-	};
-
-	watchdog6: watchdog@2260000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2260000 0x00 0x100>;
-		clocks = <&k3_clks 354 0>;
-		power-domains = <&k3_pds 354 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 354 0>;
-		assigned-clock-parents = <&k3_clks 354 4>;
-	};
-
-	watchdog7: watchdog@2270000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2270000 0x00 0x100>;
-		clocks = <&k3_clks 355 0>;
-		power-domains = <&k3_pds 355 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 355 0>;
-		assigned-clock-parents = <&k3_clks 355 4>;
-	};
-
 	/*
 	 * The following RTI instances are coupled with MCU R5Fs, c7x and
 	 * GPU so keeping them reserved as these will be used by their
diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
index 5b7830a3c097..78fcd0c40abc 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
@@ -6,6 +6,42 @@
  */
 
 &cbass_main {
+	watchdog4: watchdog@2240000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2240000 0x00 0x100>;
+		clocks = <&k3_clks 352 0>;
+		power-domains = <&k3_pds 352 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 352 0>;
+		assigned-clock-parents = <&k3_clks 352 4>;
+	};
+
+	watchdog5: watchdog@2250000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2250000 0x00 0x100>;
+		clocks = <&k3_clks 353 0>;
+		power-domains = <&k3_pds 353 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 353 0>;
+		assigned-clock-parents = <&k3_clks 353 4>;
+	};
+
+	watchdog6: watchdog@2260000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2260000 0x00 0x100>;
+		clocks = <&k3_clks 354 0>;
+		power-domains = <&k3_pds 354 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 354 0>;
+		assigned-clock-parents = <&k3_clks 354 4>;
+	};
+
+	watchdog7: watchdog@2270000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2270000 0x00 0x100>;
+		clocks = <&k3_clks 355 0>;
+		power-domains = <&k3_pds 355 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 355 0>;
+		assigned-clock-parents = <&k3_clks 355 4>;
+	};
+
 	pcie2_rc: pcie@2920000 {
 		compatible = "ti,j784s4-pcie-host";
 		reg = <0x00 0x02920000 0x00 0x1000>,
-- 
2.34.1


