Return-Path: <devicetree+bounces-252661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 81715D01C79
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:17:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F3E330B088C
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C7C51DE89A;
	Thu,  8 Jan 2026 08:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="HY92FRIm"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012054.outbound.protection.outlook.com [40.93.195.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D69B34D3A6;
	Thu,  8 Jan 2026 08:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.195.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862461; cv=fail; b=dWva48a3Yt36XAAzAEdI4X/iObYSFcwxaOtoESkY+FklM7Op5s+0agQLB01eFdSZCCX49c0hwJNTACZwKYXTJhuqi5vbLkUiWnkfOIiVbVJsOnpjrkH8azpMB4f0r3w091b64dLFxrEsHrHJPzoxiQ9DKssJezRGr3vGPVLnuUM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862461; c=relaxed/simple;
	bh=WWzoT6tb1EoaIF/15tbRt+e7QCRYojrD8xiLUPuueOU=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=tIxNe9Dpfj02alVBE1WipuRt5VrpCUozsQHKnSSL8E57z//GenNwQW1qYJ2AgxBYBwPMfYlwDyRY0g7FutOLd9FsOudoP04DtFr3yl1GMX9sfE0v+HOnJ0mwa8vEvUosQTHg2dChpjEn908hrf9m8KvU29FdsWTOzgj2g2kMVqU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=HY92FRIm; arc=fail smtp.client-ip=40.93.195.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R5zFNBYx7DNtdujC1hLTFIgisewavy9gddekb6/lMpoo8wZydJE0BWDjWEQ2MOdp0MWCo+YqsPVnp6Fx8OMsk+1Ft8OKybzB+n+aaD4eNqUgYtxQVUomDXSkdmFz/QDjcvzvLW3+VgFQrEvpbB/m9Ly3FwSiZWbbvMJ72Awcilhg+w72d06pudYbTImDRKKw+4jpt4/m8b4IBCsYsQLBeSa1v+JGkO8ycF6wk474xG7NwbQYrWNvseq/pYO67PZx7X2YogWSTcb/SJEUyEKBwqIlLtl0sqtlSVaHGVkITh1Z9FQL86MhkshJztPWGY0mG7zmzx2CiRxYzzLy4GvEzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=crFJpDN3nCDaetNr5f4ymY46WdWtGa78wKvC1ohY+uY=;
 b=kkTqMopISVtBivS3aoI+COYjFGfYDWZnaQ7NuzZMqQyBmEY4I5Q0H38iM6rb3aXjehFt4PpqBSzpiqx1hTDFmBJgciobXRHdTTUkGK93EBqiobgDE9xaAyU5TksMqYX0XcxDNOtPiIG7S9W+yhSbAm58LO3yrVa/7VLIHl67Y0Yq4Iu1qvk0NS2W5q9MccJiLdj1xwNd49tEPjkB04fsVJe1wassR9FwFhTOj1HGYgJlu++AF6gDBy/iIUxeSiYBcFsEUK9njKajgaW7+bFEZzKjQD3GMaesG+QfAoyCq55wJ/sU49bvuyXyPE9WoNkK6r85ssaJcgk9NvtKNwJwdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=crFJpDN3nCDaetNr5f4ymY46WdWtGa78wKvC1ohY+uY=;
 b=HY92FRImxZ3qZKAG8hSD/ShBD0I4rkXlHcIShfXidSZ3DofoAGt60TUNcqgUTuVuGeMsBXsCQR3WXHkGI3JDu2j4WfiPQBGOF90xjaf5vqbqhIhWj9wvq38gk6X3cM4uC8xUZ1nA6xPAjPXct1Cp1qzeOfnGtXyyVVQodnEqiJc=
Received: from CYXPR02CA0038.namprd02.prod.outlook.com (2603:10b6:930:cc::11)
 by DS4PR10MB997550.namprd10.prod.outlook.com (2603:10b6:8:31d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Thu, 8 Jan
 2026 08:54:13 +0000
Received: from CY4PEPF0000EDD5.namprd03.prod.outlook.com
 (2603:10b6:930:cc:cafe::b4) by CYXPR02CA0038.outlook.office365.com
 (2603:10b6:930:cc::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.3 via Frontend Transport; Thu, 8
 Jan 2026 08:54:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 CY4PEPF0000EDD5.mail.protection.outlook.com (10.167.241.201) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Thu, 8 Jan 2026 08:54:13 +0000
Received: from DLEE200.ent.ti.com (157.170.170.75) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 8 Jan
 2026 02:54:10 -0600
Received: from DLEE207.ent.ti.com (157.170.170.95) by DLEE200.ent.ti.com
 (157.170.170.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 8 Jan
 2026 02:54:10 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE207.ent.ti.com
 (157.170.170.95) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 8 Jan 2026 02:54:10 -0600
Received: from uda0543015.dhcp.ti.com (uda0543015.dhcp.ti.com [10.24.69.9])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 6088s6202211937;
	Thu, 8 Jan 2026 02:54:07 -0600
From: Abhash Kumar Jha <a-kumar2@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<conor+dt@kernel.org>, <krzk+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <u-kumar1@ti.com>, <p-mantena@ti.com>,
	<m-chawdhry@ti.com>
Subject: [PATCH v3] arm64: dts: ti: Fix the number of common watchdog instances between J784S4 and J742S2
Date: Thu, 8 Jan 2026 14:23:47 +0530
Message-ID: <20260108085347.1416637-1-a-kumar2@ti.com>
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
X-MS-TrafficTypeDiagnostic: CY4PEPF0000EDD5:EE_|DS4PR10MB997550:EE_
X-MS-Office365-Filtering-Correlation-Id: 14665c1d-777a-4f32-4405-08de4e937f40
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|34070700014|34020700016|36860700013|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?P0mKYxc9aQjVtaRKAQrUIoD6hdoilx09e49JVDEHaXXxC951ZyXd4/WKvXts?=
 =?us-ascii?Q?VLb9pp3L1yCCOhxgdT6ukqhEV2MUo/qKdmC0y+awsJsP/UhnaZHUIGJJsTZR?=
 =?us-ascii?Q?MQKrLIoz+ibH6+NtTMlY7jIXmjEZdeivhuCFvOcnS6NXO4/oY47Vji4G/CmB?=
 =?us-ascii?Q?V3D0eBNpEfSkVOh/Kj5pEkFeCeT71pWXxDvqSrMxhab6hAKA/Wwmv9vJlQPh?=
 =?us-ascii?Q?k9Ej3EqNzS2KaIZdQy+kOJcf9Vwe3u3vpzjHYmxi0tsxyGhJHkJwcB7We4Ua?=
 =?us-ascii?Q?/SyvSmeDakk9g0e/XmlE/L85S1FRp0OtsBcLiZLtTiZOgaSZ34nrjQ5X6tWf?=
 =?us-ascii?Q?gmfN/xQpo28PfJg7ijWBkbFyWA+MjPNDIWaH7ssJ41xSMG7G7LJ4qbqsh7qs?=
 =?us-ascii?Q?hK4XCntpZ8woelmr7HCNQxc2+y/Ek7g8kk8d8Fo9gd2ftvF5JzXszuGdce6i?=
 =?us-ascii?Q?tXecNYhr6VSxnUgU1wz8xVU3NuCua+GqOumQTxp067FVHauTxBOlgzGY3utx?=
 =?us-ascii?Q?TPX7/TDkuNUXblRTBXa1pJhzqOE6gAaJbX9tU5DkP1BRgJW4/y6uCxElw5oV?=
 =?us-ascii?Q?nmlLfj2S7LbUZCg3HcFTD/5aHgGRFqFP88HTa+MgbNOV3DLWPbqG1Oluuzym?=
 =?us-ascii?Q?gIwlmVKkiFw9VOsqvLc5vAYQifhok73jCuFz+TbvnjfG0kZfFg6tO8g4pgxr?=
 =?us-ascii?Q?s1ai/rtJQpglRrXPtmL97Xqc87InCFOrbZaIdhgSdOAtCs5wbs03vU8m6xCg?=
 =?us-ascii?Q?ZsS+jHB1IzDjRWyJF0hvOow5AcIbcud6OtYbN2/0TLjCXJ/fakT64sygZDcg?=
 =?us-ascii?Q?FAw6pIzTMNAo8R0Kmet2AX5eWii3jG6sub6vBEyewJ2HBP9WuiVYx0irh3Ff?=
 =?us-ascii?Q?ixXTriZpUqsPSQm5zstx//UD+MKrm8I8zI7hLiGsYZGa16igA6J0Ut+LJzCU?=
 =?us-ascii?Q?AvKxDjjcFWw0qiLKsJC5Tvkkzn0RnYPrHHPyTT2soMV89sMhfb25kn6/98GM?=
 =?us-ascii?Q?hxyyMygFX8WTxSFffdJ0r/ZGlNl9O/FdErc2uMeXFE1tHbSl/3BeSIXSDrRr?=
 =?us-ascii?Q?tE+PKigs3Cx6y8EozliNFCKhbu2NDDz+3ZWdKN6WLdYbP2raMDJJpxNjiYZP?=
 =?us-ascii?Q?EhW281XLiv31uHQ1bdNjedWW8ILEj73EMQ9ZEjIoIwkYRAgXK4eSE6HKGPT5?=
 =?us-ascii?Q?ixFseyX9GxyUgOBw72dATowf1rqAVaStC/zdykLsK2JGH4bnnU1hoMWivaLi?=
 =?us-ascii?Q?J66jd1i07xffZdfQ3A+K1BxZBaISMn0I4FwnhgpXMFhgZhWMQsUOGnH6evDu?=
 =?us-ascii?Q?U6mQKcWJ9kmUJGaNaXSMgm+fnh7AAdSNgNqJLtXCMxN4XDsrP/ELZarSDFDq?=
 =?us-ascii?Q?8aZENePGZCMEcn9qCqk5hJ4hR3DDym5VEu+buMCHS9kYwXbLfeHkB0WbFNcy?=
 =?us-ascii?Q?I+lHtemKfzjkIbh7w4HDYS089YHUqdp/wo/H9szDB0SXG+joKAYAOjic91Nr?=
 =?us-ascii?Q?Ptvgu70emyVDZVx05t1wD5a/+KR5xk6GP+ndOq7Szih4ZNg/NdsG/CNy5x0S?=
 =?us-ascii?Q?y2qOa7sgKWd0imsF6/vULihd+u8BjZaRdT88Knnk?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(34070700014)(34020700016)(36860700013)(1800799024)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2026 08:54:13.4511
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 14665c1d-777a-4f32-4405-08de4e937f40
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CY4PEPF0000EDD5.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR10MB997550

Each A72 core has one watchdog instance associated with it. Since J742S2
has 4 A72 cores, it is incorrect to have 8 watchdog instances in the
j742s2-j784s4 common file.

Remove the last 4 extra watchdogs from the common file and add them only
for J784S4 which has 8 A72 cores and thus 8 watchdog instances
associated with them.

Fixes: 9cc161a4509c ("arm64: dts: ti: Refactor J784s4 SoC files to a common file")
Signed-off-by: Abhash Kumar Jha <a-kumar2@ti.com>
---
Changes in v3:
- Improve the commit description and subject.
- Link to v2: https://lore.kernel.org/all/20260105050557.3459321-1-a-kumar2@ti.com/

Changes in v2:
- Added fixes tag in the commit message.
- Link to v1: https://lore.kernel.org/all/20251224055410.208516-1-a-kumar2@ti.com/T/#u

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


