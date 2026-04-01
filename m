Return-Path: <devicetree+bounces-283455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SL9MBiH7zGnRYgYAu9opvQ
	(envelope-from <devicetree+bounces-283455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 13:01:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6C037900D
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 13:01:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6D53A3140C88
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 10:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 318E83F20FA;
	Wed,  1 Apr 2026 10:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="uukghUAc"
X-Original-To: devicetree@vger.kernel.org
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013005.outbound.protection.outlook.com [40.107.201.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B968B3D1714;
	Wed,  1 Apr 2026 10:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.201.5
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775040892; cv=fail; b=eguHh5qcghgT/ZvcIs+lwc6RkQYyDnM2OJkSGaaJ57cVHpiRO2UIwQus7t31vzDmwttb1LdCQMNO93HJC2cyDBZRCg3kkZWphfThWEXMIe3LovU7q1btv5GicvLrbuu9kOkAU1RTM3bnpJ+m6jihFXbdvEWS9x4nCDimqcX61Xg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775040892; c=relaxed/simple;
	bh=omaNAZUOMw1K4h6d0QAs/U3sOuFWy9s2n0TGnuh+E+o=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nLBPeufGBGKRBVR/NAuLM17wrUERas1s3Whnd3RgeyndauCJHXVExPwM9JrQWlh5CoADQxlj2DjrkSWjkS3jtBazberWr58qA1h4NSm/YDFBFiShQupawlAqlWnYYdwal89d1/2ulv5Pvn8B7yVxwY0X6Ai4WopNrMzOB3FaUiA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=uukghUAc; arc=fail smtp.client-ip=40.107.201.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l4A3qwFzJD72cNJRMAZPyivsJCtIMg+zgSVp96h3fY9ejVq0U1ZqXOjUlofMALdn7/GN6kfSJ6XKdDXwyp1z510bu9RndOjUi5hm+gIiOVZwmObJnnABOIXycp1mb5lGPGDH75sj53UrMpyMUrMCQI09XppTXjTgunmBVz/jH/t3OsiVRvgdCnPD0w+3dn6D79FswRbmLYrWUkYz1EKhtBllhIIUHd6k4MbLrNiZ/I58Lkg8Xxm4jBY83VfRDq3zyrQgWXBTWHJb/YTeg07iJd1WYYkFB1wCNXiOUGPHgtJMe3+D8WHYyKqHzF33a1sMTojwZmZhQigS6qXf5kFrMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wBqLd8nbAiNhQUPGsWTWfPFH+dfcAJ5ITxLlLX40Ahc=;
 b=DpupL08sl6MvG1PhWqozYHKIi2T1dvRseLCGxwLNphyfWXfOg2nfIkKIlW52aFJh6KyfzbinOQfTHLzXDQSavVn+C7M65zAfKGDAyeQ9GtHsATwYZ3gVwMuesC9OofbhvYsVdozvV44xi22I8l3Heuq+9dRFjXKrm60Kku6IP4vucf5l2xPUn04cXjZFhNSo3ILNoNeRfsTI9eGbGbjGzXPSB1UT5LG6fWRzuTC3Whtp6Kq8TgKV0Q/+85TspZzFbYoAnhEJMIVxiELvm1LLUbz5vjPjhqErRkUuf+oX+pr602IEeD3ZkTbx0r2VqkbPud2Maufl5KjNzMPVFF3PmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wBqLd8nbAiNhQUPGsWTWfPFH+dfcAJ5ITxLlLX40Ahc=;
 b=uukghUAc7oX6v+TbXCcSIifNwoRNNlD7WSW2TCFu+g0ZsLYiXor6/skgXfTK6D/3Qs7iSVbj7LXrXpkX1sffDK5I7Gb6Uhl98JqgDZr5X2CtWxNwDx6oXGZZ6ZiDtmyLlry2hfCPoYqo+9+HFedrd8DojDRmO//EC89hMJuMxF4=
Received: from PH8PR15CA0021.namprd15.prod.outlook.com (2603:10b6:510:2d2::24)
 by CY8PR10MB6490.namprd10.prod.outlook.com (2603:10b6:930:5e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 1 Apr
 2026 10:54:48 +0000
Received: from SA2PEPF000015CB.namprd03.prod.outlook.com
 (2603:10b6:510:2d2:cafe::14) by PH8PR15CA0021.outlook.office365.com
 (2603:10b6:510:2d2::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9745.29 via Frontend Transport; Wed,
 1 Apr 2026 10:54:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 SA2PEPF000015CB.mail.protection.outlook.com (10.167.241.201) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.17 via Frontend Transport; Wed, 1 Apr 2026 10:54:47 +0000
Received: from DLEE212.ent.ti.com (157.170.170.114) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 1 Apr
 2026 05:54:47 -0500
Received: from DLEE202.ent.ti.com (157.170.170.77) by DLEE212.ent.ti.com
 (157.170.170.114) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 1 Apr
 2026 05:54:47 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 1 Apr 2026 05:54:47 -0500
Received: from akashdeep-HP-Z2-Tower-G5-Workstation.dhcp.ti.com (akashdeep-hp-z2-tower-g5-workstation.dhcp.ti.com [10.24.68.91])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 631As6KR4132409;
	Wed, 1 Apr 2026 05:54:42 -0500
From: Akashdeep Kaur <a-kaur@ti.com>
To: <krzk@kernel.org>, <praneeth@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
	<kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <rafael@kernel.org>, <viresh.kumar@linaro.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-pm@vger.kernel.org>, <d-gole@ti.com>
CC: <vishalm@ti.com>, <sebin.francis@ti.com>, <k-willis@ti.com>,
	<a-kaur@ti.com>
Subject: [PATCH v2 5/6] arm64: dts: ti: k3-am62a7: Add ti,soc-info to OPP table
Date: Wed, 1 Apr 2026 16:24:03 +0530
Message-ID: <20260401105404.1194717-6-a-kaur@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260401105404.1194717-1-a-kaur@ti.com>
References: <20260401105404.1194717-1-a-kaur@ti.com>
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
X-MS-TrafficTypeDiagnostic: SA2PEPF000015CB:EE_|CY8PR10MB6490:EE_
X-MS-Office365-Filtering-Correlation-Id: 0650889a-d100-4fb3-ef61-08de8fdd179e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700016|82310400026|7416014|376014|18002099003|22082099003|56012099003|921020;
X-Microsoft-Antispam-Message-Info:
	m5rSvxVPyqBaUxP3EugFOlFHTlTxigWsLGunSrxH08jLnDmzZdQSM4XPGTBujI3SnSolIT8zXG/0Vt5q+eGgHWSfA2rKbZ+WUJDZi3hfGOW0cqIDjaikWPO0shqy0onBcEU+7eJUcT0nbuAx14E3178u1e8rw31+mgx2F1CqSnabQEgtQuXfIQpLVvkRGeDpFmh0UdVSsVNTA8l/eRDrlepFNkNpXtZsuUzl2ArGA6p5GtbyD/3CNaV22Oxt69FHMHNtah9XUWmBFSXPuAPQz4jDrImxnzOOu1kgFiLjue6SW/O/4hjGQEzw78gWycxEhtmf6KelrWcYhh8vK3aiCRb3nlhulfPVtvoKr1bbEauTnkxj5AUMLIu0hcnlXG2IkayWPqya0Z8HDkpUplSOo4OsnpPa+CZXei6rANVf82Ngsb3DkaAhS120uF21Vuqe3PYpqYsnb1ZehtCnbC76IF2HfheVO9GPqoGeDAllzBxfoimzG0JMAi7uV4PUu12BVrGnyCc1GOO3U9K6IyZD9dXiw6nQyH0g0dgqwcdy77g0OiRaapI3KbnJshyyPbp/UNAEd+YyIgIixfYHJpAbxEEPw5Izl/JO1NIPMANBwEfKULb4BXL4jOmRl/vW8WtWA6t1PLSo3udcUjQbC30hpgZUSMsYDsPaJO8ALIamnbs3ivxzldZuxykTE19uOc4OR9/0E/BP3M94YLIutUSabz8sX0+Aqzmh8EonOoWebX+wChs1Yap4mpReBiEjAP3EQtYznpCFd7n5Ekpl/P1FXvp7RqLK62F4OzcceDjR76Msr9Zci6Z04UuQufVGxTog
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700016)(82310400026)(7416014)(376014)(18002099003)(22082099003)(56012099003)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	q1cqg2FYIhfuEPw5909pmTwIGU1mlST7VuTui1NgOoc23QKcWusZpkCNcW5FPHh3CKJjqh7ma4VOkkPM8aDrtOsR4u1JsrgLrpJsblf+0j0555GF7LVQjpIkBR3g8sGsWXYx+5u0jU2GA01HKPU1rm0b5Hy/RC3NUD3YJzNS2Fcci2nC7abvkF6rJPDu8Tv3aU5cnH7wWy0qAhzPWXf6Kz5jmI/muDY/lwl80vSCBeB0FgXmSgCnsCIbvW8dk5LTcCj9GXz7kPnXOXJNiDD+ClsFjZS6ArTKlo2xnFxtt4Z7oUptumFfS+qWqWRv8eBTFM+gMnfpNFItDjOiSrAcv2NVWcXWcC7/0RSshkwB4C+ZYb9OWsv0tRKnapJmZJiWeQOvujFozrJ7PoKFmgRT/YzRc2lXdm+h8LKewbvIMayDfWZeOMdCc0Abkcec8cqN
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2026 10:54:47.9211
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0650889a-d100-4fb3-ef61-08de8fdd179e
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SA2PEPF000015CB.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB6490
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-283455-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[19];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a-kaur@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:dkim,ti.com:email,ti.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 7D6C037900D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Link CPU OPP table to k3-socinfo driver for dependency tracking.

Signed-off-by: Akashdeep Kaur <a-kaur@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62a7.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7.dtsi b/arch/arm64/boot/dts/ti/k3-am62a7.dtsi
index b6e5eee99370..6d1459e9ea71 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a7.dtsi
@@ -109,6 +109,7 @@ a53_opp_table: opp-table {
 		compatible = "operating-points-v2-ti-cpu";
 		opp-shared;
 		syscon = <&opp_efuse_table>;
+		ti,soc-info = <&chipid>;
 
 		opp-200000000 {
 			opp-hz = /bits/ 64 <200000000>;
-- 
2.34.1


