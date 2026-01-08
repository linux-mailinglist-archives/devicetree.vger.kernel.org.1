Return-Path: <devicetree+bounces-252649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B48D02010
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:03:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AB56C32F2EC8
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 08:55:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60F513624BE;
	Thu,  8 Jan 2026 08:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="w7DEVvjS"
X-Original-To: devicetree@vger.kernel.org
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011058.outbound.protection.outlook.com [52.101.52.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04643559FB;
	Thu,  8 Jan 2026 08:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.52.58
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767860693; cv=fail; b=DTHzy00dMIcPKBsshVdQBodTFegwFE7vo39V+l6e2SvKURGtMSJ9Wn2AYeD5Hd/J59XT+29HRf+F0O7NOudALWo1Jg5bW8Oc/IdXVTRPKSZ1rrYWJ5zrZrcgTAUEKPYrRngDqpJE8H9nEzSfMIfMHg6Q1S/Qamy6rKgeqH1TZmw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767860693; c=relaxed/simple;
	bh=gfmbrYb/2PDoxLgCVenHb1wNFLtDoWe/Uusfv4UDssA=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=G9tq6j9g8QwMexyTnQiFgS8UKnIplICP8LlsZF9Vj056oOF7WRRNlHUa8E5xhCnHzRGmMEHU/SMvshBzltU2JD+y7G+ADaXLrBThxdL7MyVjBIh1N+ARE5MnlO46JnZ/fgFt8RKkz/wPL93+nTfr9lM+jNC+cyJdFvG+4BOKV8A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=w7DEVvjS; arc=fail smtp.client-ip=52.101.52.58
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LA5Tjj7/GRuqiOUpR6ICK6Q7rJEiYgDuSTVHvrtOkNGVpBlzGwioekCoitDMXzEWnyuCH72OPR5LBrOK0YuhhYBzEIoZtb99VrWS5Dr1BnBNvK8cLaAfJhicNXekhI/dm2qHmnUmxsTas05b14Y3gE1oPgMWRCN/qMJy73BIjq52Vcq6DlgxOrVu8n9+YqgAVkI0MGZfUdid3gpKYUCWpdSE/Fe9xQ/GA+4G5OcOr9umwM3VemSYZIzi5/zoU+Yqw2r46/qKtk1fLLdoCLKqMxnLjLSWJL0pIfjhyQVsGlHc2WAkJEZU7Du7jBUKUCneu5Rb2kJwv+j5y55mPEajfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yZSzeuhOh967YV3ctaRpt/EyImqRXsVD9tcSM+qmsec=;
 b=KLqjNmH0RamW5UaS2XeNOEEXM+I0Lj6+5m+P2ewegaTaPJHjlV5OwF2suwSlGb+JUxmNIoJaJdvOxEPPgogFIYjMp4N8T7To24Vy7KSVOPi5r2ks5QeEQOVemdSvGbWWOcZsIzN4wZTK2t0Vv+HQtN0dlbNHfTc3UTo4emVahu1BlI8jbFLYPadGufUyrBqeyEgMmlRpUvw3URFQgi1vNSkmnH7gwu9ThI1JI4Bc5di1aycoEYhH607nAck/NtMQ5rXGiOmEaP6qjkDyU708g9igtJXMJf8aRwO0sVHLO5uNOTLKyjpYbqq1aCYBskYHCGBtiu1GSiwlew4mk54VEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yZSzeuhOh967YV3ctaRpt/EyImqRXsVD9tcSM+qmsec=;
 b=w7DEVvjSaBmVLrtrD5V0scAZ+UGQFSVjVHh03fMXmKovV24X8unvxoivdr/ZQCfU65Uw2lJaBe9rYLknqyQjF5/nbpdNLtZgReW1v43I7IzV6pe1lapAVQd59Eg2VjrYFRJoqMsgvve+Lk3vbmQTRTrnabIXnjO+jOTBFNzSjAw=
Received: from DS7PR03CA0034.namprd03.prod.outlook.com (2603:10b6:5:3b5::9) by
 IA0PPFA8EB66EE9.namprd12.prod.outlook.com (2603:10b6:20f:fc04::bde) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Thu, 8 Jan
 2026 08:24:30 +0000
Received: from DS1PEPF0001709B.namprd05.prod.outlook.com
 (2603:10b6:5:3b5:cafe::c0) by DS7PR03CA0034.outlook.office365.com
 (2603:10b6:5:3b5::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.3 via Frontend Transport; Thu, 8
 Jan 2026 08:24:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb08.amd.com; pr=C
Received: from satlexmb08.amd.com (165.204.84.17) by
 DS1PEPF0001709B.mail.protection.outlook.com (10.167.18.105) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Thu, 8 Jan 2026 08:24:30 +0000
Received: from satlexmb07.amd.com (10.181.42.216) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Thu, 8 Jan
 2026 02:24:29 -0600
Received: from localhost (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17 via Frontend
 Transport; Thu, 8 Jan 2026 00:24:28 -0800
From: Michal Simek <michal.simek@amd.com>
To: <linux-kernel@vger.kernel.org>, <monstr@monstr.eu>,
	<michal.simek@amd.com>, <git@amd.com>
CC: Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, "open list:OPEN FIRMWARE
 AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, "moderated
 list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] arm64: zynqmp: Fix DTOVL warning about graphs in kv/kr260
Date: Thu, 8 Jan 2026 09:24:20 +0100
Message-ID: <b484e81c1723fb21530c4f95deb70f3b0b61ada9.1767860657.git.michal.simek@amd.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4151; i=michal.simek@amd.com; h=from:subject:message-id; bh=gfmbrYb/2PDoxLgCVenHb1wNFLtDoWe/Uusfv4UDssA=; b=owGbwMvMwCG2mv3fB7+vgl8ZT6slMWTGZ27jLo87nnVV9lnqrZKdFjrWm6ZseSbdyrJosnvL3 s45G15LdJSyMIhxMMiKKbJMZ9JxWPPt2lKx5ZH5MHNYmUCGMHBxCsBEpncxMnw63ef+sXhGyDUm Z64tcoqveWNbiqw03jdyFWbyqz6v72X4Z6B4wCwqWoA3YZnga+9qsUS2rUwmRqwRixbFBvYnBkf wAwA=
X-Developer-Key: i=michal.simek@amd.com; a=openpgp; fpr=67350C9BF5CCEE9B5364356A377C7F21FE3D1F91
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS1PEPF0001709B:EE_|IA0PPFA8EB66EE9:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b1d362b-0376-4c27-51bc-08de4e8f5874
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?eay+KjExulEVYm0kjc3u61VTp2SPfqnx7YPIWWFlNjFbUj1cOYC/a+WgzTwj?=
 =?us-ascii?Q?B0psiCoc5pOVSLRFPZa8YFHLWAW2XrOWZFZvFvQe72WvQ3U1dFneKbzrYiEw?=
 =?us-ascii?Q?rnNRiOXB0spIARhSuN5Wo306ywKJCLstI/HP3MVbf8VG3ZDSoaTDLqVHGxSs?=
 =?us-ascii?Q?ZjEupGG1W/dvT5KiRodxW7PmhBnErSZBgW034VUsJamppaiY8w+GqtfIKs70?=
 =?us-ascii?Q?lM/7dalkX16+zsv6hFvtI+QHlKVhiFsIaaoFyGuNVvUpTooPK+cd1Zs0+U9I?=
 =?us-ascii?Q?gZJWhXzqdr8mOFKyrXtPxAnHD6L2qzeVrqmsgUQr3NpekPys9X/7vccdGd7r?=
 =?us-ascii?Q?QSjIbH15yl95YymmIRDMUJJd4v7eOQc1COdLceVXC28QhfsJYDtLNOFWN8+L?=
 =?us-ascii?Q?WEqal9WfdoR/DqePEsQz7D2sGltnGBr4RorVRaXPxiV+qE5KNyguxrF0PAN1?=
 =?us-ascii?Q?AZ8MV2U7J7tMvgZWfPjik+sXklTd8+TBmaixnSJKKqXPIckFRE1OwBgOXpTk?=
 =?us-ascii?Q?/iRqDP1+cx4vN2eSlKFScc7q9C2ZxzdeU3DKmSLvaRBkzrSK09pzy09SnMEj?=
 =?us-ascii?Q?gvEuODbGB8pBv79N2GMc9kHtqrPlQ0AC7/7NNLEuoHQlD8lt0hqtIJoyTqnx?=
 =?us-ascii?Q?XiBD9hD2d8YWEV8sVEi5U8/qUzOQL9jLYVu2EbCfLWLrhUo3fiFUwUGAMh6F?=
 =?us-ascii?Q?UEwyDpwAG3wsROsXiVorZnJn0B22mdAhbAIujeeaMjHpGdcnK0i+hter/jv1?=
 =?us-ascii?Q?xHmIXMWuHs4tknZ+VzudQwUB1JiiAMRahKQpElIhDXqUzXbVHlmAQnUqoE5L?=
 =?us-ascii?Q?jfiKQNaZGHH1d04cEjtAMXeiVH/mhZFwPNzbGqzUWjWzTe2WPh3mE1wBSaP4?=
 =?us-ascii?Q?1hCR8SbhZqVLNLZKB15xRG4m4546oCnnltgLubJzjAdNX0Hh8aWBA3KCUAgv?=
 =?us-ascii?Q?JfbLSnQsdHzQk9ccrURJjexdD8hwIUOwJ3hJieVDEQU8xGoEEHxwhDYFwsIh?=
 =?us-ascii?Q?i/0k4QBCNGo8movtIQmDulLQx4SNwWDIKz9z49DUiDoqTO+DfCvgRnlk1j8j?=
 =?us-ascii?Q?ISwHwIO4bALngOylqM5a9xjURObpQDiFDCodgqGE5OIKN6eH4g2QTjW0TIVN?=
 =?us-ascii?Q?5tEDFmvVqDLLJzv1ZY9NLrBOWPit43P8Q2oI3OE3MwxBiE55Whz2gyUXRZdh?=
 =?us-ascii?Q?E0wStMAzqYKYnLnzz0UcbKa8atyYcWHmRQigfT1yM00G58wlWJrX52CzZQDh?=
 =?us-ascii?Q?8v1aOUE+HAqkBm/L3Fepi8DElI4rt1jfTMAGH8zBPX8xy5z4OGsuXAHTG65b?=
 =?us-ascii?Q?rlxM5JuTzM3HDBygpqXNEnuzhpRZPAD/hO03+p6MO4nqtDNgM1eN0NxPXh1M?=
 =?us-ascii?Q?OnWa4CvqMcrwpAtzDcu//ZdZxsoOfCqPL85ZD4+7p/kaRm6fFAfi0WseCZJh?=
 =?us-ascii?Q?acuQncrBk32wRgV7Ue+bsBz5JEx3lNXLC9CJM+0qKE9mn3kMDADKF5cWGlkk?=
 =?us-ascii?Q?QLCoRbHK99S6e9yRU1sA8LCTADOcMxOmN6qg4A8Te/3K4S/JM6cU7G3GWLa7?=
 =?us-ascii?Q?zxfBAjF5hkywh9Wqv4E=3D?=
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb08.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2026 08:24:30.4021
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b1d362b-0376-4c27-51bc-08de4e8f5874
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb08.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DS1PEPF0001709B.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PPFA8EB66EE9

DTC is generating warnings about missing port like:
DTOVL   arch/arm/dts/zynqmp-smk-k24-revA-sck-kv-g-revB.dtb
 arch/arm/dts/zynqmp-sck-kv-g-revA.dtbo: Warning (graph_port):
 /fragment@5/__overlay__: graph port node name should be 'port'
...

That's why change description and add it directly to dpsub mode to contain
full description with also port.

Signed-off-by: Michal Simek <michal.simek@amd.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revA.dtso | 10 ++++++----
 arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revB.dtso | 10 ++++++----
 arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dtso | 12 +++++++-----
 arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revB.dtso | 12 +++++++-----
 4 files changed, 26 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revA.dtso b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revA.dtso
index b82a056be2f9..507be24e71c0 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revA.dtso
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revA.dtso
@@ -147,11 +147,13 @@ &zynqmp_dpsub {
 	phy-names = "dp-phy0";
 	phys = <&psgtr 1 PHY_TYPE_DP 0 1>;
 	assigned-clock-rates = <27000000>, <25000000>, <300000000>;
-};
 
-&out_dp {
-	dpsub_dp_out: endpoint {
-		remote-endpoint = <&dpcon_in>;
+	ports {
+		out_dp: port@5 {
+			dpsub_dp_out: endpoint {
+				remote-endpoint = <&dpcon_in>;
+			};
+		};
 	};
 };
 
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revB.dtso b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revB.dtso
index 4dcf92a2158f..68394f02e8fb 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revB.dtso
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revB.dtso
@@ -148,11 +148,13 @@ &zynqmp_dpsub {
 	phy-names = "dp-phy0";
 	phys = <&psgtr 1 PHY_TYPE_DP 0 1>;
 	assigned-clock-rates = <27000000>, <25000000>, <300000000>;
-};
 
-&out_dp {
-	dpsub_dp_out: endpoint {
-		remote-endpoint = <&dpcon_in>;
+	ports {
+		out_dp: port@5 {
+			dpsub_dp_out: endpoint {
+				remote-endpoint = <&dpcon_in>;
+			};
+		};
 	};
 };
 
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dtso b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dtso
index 923a70d750bf..e7417af8ae01 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dtso
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dtso
@@ -3,7 +3,7 @@
  * dts file for KV260 revA Carrier Card
  *
  * (C) Copyright 2020 - 2022, Xilinx, Inc.
- * (C) Copyright 2022 - 2023, Advanced Micro Devices, Inc.
+ * (C) Copyright 2022 - 2025, Advanced Micro Devices, Inc.
  *
  * SD level shifter:
  * "A" - A01 board un-modified (NXP)
@@ -125,11 +125,13 @@ &zynqmp_dpsub {
 	phy-names = "dp-phy0", "dp-phy1";
 	phys = <&psgtr 1 PHY_TYPE_DP 0 0>, <&psgtr 0 PHY_TYPE_DP 1 0>;
 	assigned-clock-rates = <27000000>, <25000000>, <300000000>;
-};
 
-&out_dp {
-	dpsub_dp_out: endpoint {
-		remote-endpoint = <&dpcon_in>;
+	ports {
+		out_dp: port@5 {
+			dpsub_dp_out: endpoint {
+				remote-endpoint = <&dpcon_in>;
+			};
+		};
 	};
 };
 
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revB.dtso b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revB.dtso
index 563e750b0e08..7a05180e58b4 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revB.dtso
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revB.dtso
@@ -3,7 +3,7 @@
  * dts file for KV260 revA Carrier Card
  *
  * (C) Copyright 2020 - 2022, Xilinx, Inc.
- * (C) Copyright 2022 - 2023, Advanced Micro Devices, Inc.
+ * (C) Copyright 2022 - 2025, Advanced Micro Devices, Inc.
  *
  * Michal Simek <michal.simek@amd.com>
  */
@@ -110,11 +110,13 @@ &zynqmp_dpsub {
 	phy-names = "dp-phy0", "dp-phy1";
 	phys = <&psgtr 1 PHY_TYPE_DP 0 0>, <&psgtr 0 PHY_TYPE_DP 1 0>;
 	assigned-clock-rates = <27000000>, <25000000>, <300000000>;
-};
 
-&out_dp {
-	dpsub_dp_out: endpoint {
-		remote-endpoint = <&dpcon_in>;
+	ports {
+		out_dp: port@5 {
+			dpsub_dp_out: endpoint {
+				remote-endpoint = <&dpcon_in>;
+			};
+		};
 	};
 };
 
-- 
2.43.0

base-commit: fe24398ebc1d62c0d2549d1e258564fd6625ae19
branch: zynqmp/dt

