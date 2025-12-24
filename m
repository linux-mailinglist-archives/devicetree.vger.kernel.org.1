Return-Path: <devicetree+bounces-249381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 79567CDB718
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 06:55:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7496B301E6C7
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 05:55:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CECE62C237C;
	Wed, 24 Dec 2025 05:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="c7SIkh+l"
X-Original-To: devicetree@vger.kernel.org
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010048.outbound.protection.outlook.com [52.101.56.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EBF3B1BD;
	Wed, 24 Dec 2025 05:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.56.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766555727; cv=fail; b=goirIIH82wlmvCxhx/UK52jHzI5KvOhfYKKdf/DtRvon5dKuGv81CnclHMh8e28IwaTr/uK3d4ZAz+ghHlUY3Toh9I/ly6I5XFp9ZW6IFuHqxqem1qz0xkzomAgd65DggQ4ZtGX1L6VAwHq4pbkbzOLOEu2z9mbpk2jNQW9gwT4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766555727; c=relaxed/simple;
	bh=NP/U5XgOltDz+N/iY5jldr3rnfXp2QT0TA+VAnDhRE8=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=YzVwQJuSjL2A40BOE4+ReKcylZd+IbShAwz6rIucYW7pQodoFJVFpPEKTB36OsDkXcYGP999xh6Z2artvK0plJwAobBi7hLpCtifj5hAl25t3igR3/HurNvQQ7SPFP7csmj5+EDCWMXpE9JA8PTS+D2Qkn9048ZwVO5O+Iwp7Ag=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=c7SIkh+l; arc=fail smtp.client-ip=52.101.56.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FdjJTpuGkN0E4ZGnHYJqVBRJHdajt1/hfMR9xUPDiCgghk7IhplBsWYB5Z2i7MdRJvfQ587F/jM9sPvmhgoimmkOzdCSuugTvumLF/ne5+2iG7fyjBt6AXl0TuVbqdYURj2URS1uvOqH9xDocPvtBnPyW2ZZVYaRwt6x/znoUErYAW6cDl9F25mN01EuozPh4+GhtR/SFOvz1g6DlxwkWCfCpu9I7R28RCH0V/Fn0+L72mhfwsoriFtRdLLcU1BvIHXKLPEzQ+84nY0KWu/2rz9oCfbWv2XfWJZ9pHJy3l0yJ9o7duDQ+nqENTfMxPnYi52NjwSXnhpb1Q/++iiCxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+cY2QpRrwCde8qlSns9YeWe4KEgO8p91hwmTv4cl4HA=;
 b=r33EHowkC5JVrTP2ZFfoyJQaTOijJuKtxBpR9cOM++RacvB7IvevizfiK/AoVlbBZkqQHO6S+9AnxxUguCi0YFwKLD90x0n3kyyy4LAusAd57gf96uY7rjA762QETQWDssFOGhFWlgfoNBkQyGON9fZRx7dtGIlgEV/KrfsgpwvVuIsmua9j969BqApq44Dh/ysd8ZnDan1KuXik4qOkQ82pBG3JtxKrVwkVZZAcjX9Rmqt9gnNUjeMndZB+XIJiutNq7FH2Bsj09DpRMBtU+H/fX5kj2R/9YFadgRYSv0XHWuanIuaPQV2FlX4mB6gh5M/KQj2gMFLgc73u1jyBJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+cY2QpRrwCde8qlSns9YeWe4KEgO8p91hwmTv4cl4HA=;
 b=c7SIkh+lSkavlTE3W3SeGiSKunegG9arapGHPZtBoAy8P6ds1EYO9fUAB3s+yHjAIcwBcWeccEsELPfTOs7T/a3c3mAeQdG9i5M6VkFL89Bad6Ttu3HLAjms1Ek3qW1nQ1vaodlKUUh12cjH76rIB5e85cXQDI7jBjXaWUh0SYw=
Received: from BN9PR03CA0779.namprd03.prod.outlook.com (2603:10b6:408:13a::34)
 by BLAPR10MB5138.namprd10.prod.outlook.com (2603:10b6:208:322::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.11; Wed, 24 Dec
 2025 05:55:22 +0000
Received: from BN1PEPF00004680.namprd03.prod.outlook.com
 (2603:10b6:408:13a:cafe::9) by BN9PR03CA0779.outlook.office365.com
 (2603:10b6:408:13a::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9434.11 via Frontend Transport; Wed,
 24 Dec 2025 05:55:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 BN1PEPF00004680.mail.protection.outlook.com (10.167.243.85) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9456.9 via Frontend Transport; Wed, 24 Dec 2025 05:55:22 +0000
Received: from DLEE211.ent.ti.com (157.170.170.113) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 23 Dec
 2025 23:55:21 -0600
Received: from DLEE201.ent.ti.com (157.170.170.76) by DLEE211.ent.ti.com
 (157.170.170.113) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 23 Dec
 2025 23:55:20 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE201.ent.ti.com
 (157.170.170.76) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 23 Dec 2025 23:55:21 -0600
Received: from uda0543015.dhcp.ti.com (uda0543015.dhcp.ti.com [10.24.69.9])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5BO5tHts085489;
	Tue, 23 Dec 2025 23:55:17 -0600
From: Abhash Kumar Jha <a-kumar2@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<conor+dt@kernel.org>, <krzk+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <u-kumar1@ti.com>, <p-mantena@ti.com>,
	<m-chawdhry@ti.com>
Subject: [PATCH] arm64: dts: ti: Remove 4 watchdogs from common file and move them to J784S4
Date: Wed, 24 Dec 2025 11:24:10 +0530
Message-ID: <20251224055410.208516-1-a-kumar2@ti.com>
X-Mailer: git-send-email 2.34.1
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
X-MS-TrafficTypeDiagnostic: BN1PEPF00004680:EE_|BLAPR10MB5138:EE_
X-MS-Office365-Filtering-Correlation-Id: 54171930-1f2a-448b-6d6c-08de42b106ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?ClP1uJVFPEKw2URQTO7x+ZZKunzqA9gOzUiNWGZm8HNYiW6SKCu/kZnhNNrQ?=
 =?us-ascii?Q?hRPGmtVWf3s9AabCWqN4DifsR9b2yJBGIn4jVAZx8XU2+ckhvfujqxvW+dr6?=
 =?us-ascii?Q?9vnbmQnN9UOrLaEJtJfr5K12iIq/kxDxgmXMtAvazLSjDMYkS4g+yEs7BXpW?=
 =?us-ascii?Q?gCtaKLs9L3qKEECbY5f8/O8kwdkFV1Guy43JtaQqt7P3AScEBrNe2wzzEs7Y?=
 =?us-ascii?Q?iOamOIQd1B8B+Izs/hFR1RI61ZlcaJNpsC+XOIRM7rn1nGhxKZnya/KEgm8U?=
 =?us-ascii?Q?nWULhK2KlvV6gveeXQ2VvC9y2608/V3iDFPopDgz8ZPfY1xq7PtB0WmKl5cf?=
 =?us-ascii?Q?EDT3svJf4/TbG6sKkIH+r/8A3Odk+dqRWMfSKyLpGG/j+LOvjLfRCenRvzNY?=
 =?us-ascii?Q?F8YBAZPaq81SbzjgpY8ssKQJojTU7SlnmC2y0kNu33zUhBdspQXZh4ECpyHx?=
 =?us-ascii?Q?AZ7gYO3QtiIcCA16VdggsZxZYMjHcRtOEzf4Qv+IBER+wGti8poEOddYwyxl?=
 =?us-ascii?Q?l0Dq4ccWbjara8GvMP6v6LJa0JrdO4bsNbuP/fXAYFsitFTW8pLZ+DKUluF/?=
 =?us-ascii?Q?llhqwcQ4JaX05cN1ayx5N7q6yMlg3FBIcBPWp8vsS+/ap9Pq9H7B3Cx9X2tY?=
 =?us-ascii?Q?F1tNgHqimLSdgqcBJMNc5mg+8/LgGP5Q/AgfkYTzUung5dzx/OwBQfWFB2Rb?=
 =?us-ascii?Q?qLmK5GUHZ3F3RpyXhavJRF+x03JvUdtHQJZ8JMGXmTNmzq4istILZ84bknQO?=
 =?us-ascii?Q?8NyORq672dBNdKz4P6uwiPxmMIty2HQXAXpQF06yw6c2oIvq2yP4C+UktsN5?=
 =?us-ascii?Q?mDYPvZfunDyIrfPvXC+d9VN8zrd0L6zVXuTvBvGhylRvQJAz4H2nefnsRMMz?=
 =?us-ascii?Q?QWoe15qQwCVDrWPD2WIQR/z++apMzD9x5MbCs7/v1I3ut0A3hwWFZIXXpLyR?=
 =?us-ascii?Q?CA0gv7esTITvfFuDJv/3IO745/3C/55hS65I+mAVhjvB811uPO9aYL1LNOiI?=
 =?us-ascii?Q?qmH6El986rtFbY4yEkH3RBQD5wPvWegYGBDSPWp78hypaIuVSfAwesM6Vuil?=
 =?us-ascii?Q?xhD8WIAA5/wcMm7fn5lWxYshqFGxF62p/F2h5Ajh2x3lVrP9BY6LUCoel9d4?=
 =?us-ascii?Q?t5ld7dUkmhJkcfrAryRMDSTTItHJhNLREMKE9Ejs0yeDF2qfAFrS9yQaR1t3?=
 =?us-ascii?Q?S7Tx80ZMTZ6P9zwA6etc0QlPb2fndNIy/uvirHR34kDj2eH5GUwnWE7csvkR?=
 =?us-ascii?Q?diLIFFN6UBJnLkTPL1sASsafdMfvg6fiZ1M/U24e7672xjUF66w70sTzpR13?=
 =?us-ascii?Q?bNopqxpXZeF7vYhshCU9X3+hTSIaKVvfQLHj62XflxxaY2oD8F2rLbGQ4EuF?=
 =?us-ascii?Q?FIVw6cmH3xFitZKXFx1kijvjalk7dA2htbTXTckTbUvtSi8n0bEvn388U0qq?=
 =?us-ascii?Q?w5RAZddq+iwtydWsMXw9hieHIFxfK9vRFQpIq21JCMOeGt1GwROhjFuJDKG9?=
 =?us-ascii?Q?/wfSrK0m01eFcOd+DYsV2TLXZ2PlsYXbdo9PHoLFmiin/fwcCT57Vl4P+FoU?=
 =?us-ascii?Q?imUDWqs1aQcWi8VgUjs=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2025 05:55:22.5012
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 54171930-1f2a-448b-6d6c-08de42b106ef
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN1PEPF00004680.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB5138

As the J742S2 SOC has only 4 cores, remove the extra watchdogs and add
them only for J784S4 SOC.

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
index 0160fe0da983..ffc61ec77635 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
@@ -113,6 +113,42 @@ serdes2: serdes@5020000 {
 			status = "disabled";
 		};
 	};
+
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
 };
 
 &scm_conf {
-- 
2.34.1


