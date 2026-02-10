Return-Path: <devicetree+bounces-264412-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDB8Lzosi2lEQgAAu9opvQ
	(envelope-from <devicetree+bounces-264412-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:01:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6C211B131
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:01:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 605C03026160
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E806207A32;
	Tue, 10 Feb 2026 13:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="WFTqijZI"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012006.outbound.protection.outlook.com [40.93.195.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CC5632;
	Tue, 10 Feb 2026 13:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.195.6
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770728487; cv=fail; b=BFa+/KNcKIRuR0/TAfxFTkVhRHjd4BSt2Q3TyXzkzNPYMiY6rrWXP6RiYCzurHPPA4wZ6F2L9WlkaxGgEwQowUucHG3IBGLS4+otnBDJYcez5EDLwrt5pZPhDO+BufVFffyqyLAoV9s9eKRIIoM5pOe/35ONgFnFp5MG2hoWWuU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770728487; c=relaxed/simple;
	bh=WHkkhmvw453qy8nSWy9sjW0gEqMYvLnPSKk2RKoSHpU=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=FyCpc0enQ1WdxOcZSvHVBFtjOf5nWkftQHKXBJIvodnGRGqTeE4vFP0prFdpOMv/k5PovZu0nYCr6u0CC37fVOAXdnWlGOx66Y1MavyaEktLqfIKMisBBJp6Mpk+DLqH7gYg2pY60SNRTiRpPb7WuI0SQHqueQLZ/28Pv4KJ6sQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=WFTqijZI; arc=fail smtp.client-ip=40.93.195.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uvb3hmb+NmuO0Kwe3ujLs9FkFzO/xZ4lRik8U2T4b5lBIvvBk5UIVSn+BD8HjSoHBEQ4j/CG+tWBG0c9fX0TPcJvVzCsr6DMolc6NBeN3ctyago8cqCDDD3Fors2pfqh3JVsohN6r8rK8rJo3atSbvSbybVL055LqLOQI+j8GRD54tg5DBm2Rxd9Eex54ylvc3tZtw9fRfAUzlNhYQqvEC/+BI5x8CO7KqWJxQlFA9KDM65G7o/BrQHXINtjG0BdlxybQc/wnZHIimAGgSxSq3ZdT/fMMe3WqoXCHUDcQhJZhaxPIwN/ip95/r8VfedUlaVx7uPDfRZeuf3dQdPnGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DsjKzsS4A8rQwCYrfvUX1vSRyqgxiRKEZ7ZSiqwEDtY=;
 b=CPS68n7u63TZjDcLIw8ic0jP3MEU2iqw0iTGzRR8q7KlRaZdAEpU/ClIkQMPqK3yS+aCMJx23anKx//SqNoMt76y2k/3Qk/QOo1wBq4exuP2tUVG98kxVPClLsiRzMyFDKDEz6B5NqengIMTu0a2yvWKeZzjN6tJDRM8K/EEswbh7LefgHw4gSG1wsOo0wqAS91WNGCVMIvTTCeF8ccjEVuoP8ttMHY/hxqftLIlRU1Looazp/sfbA+Slisd2RMoWnhxSZXbM5/x0F16wF7wHYXchAvKz2IjUK3EK1IRVPkw/1QxwW2D5jOF6X+ZW7tXXicYq5Q0jiDrmOW+bRd2Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DsjKzsS4A8rQwCYrfvUX1vSRyqgxiRKEZ7ZSiqwEDtY=;
 b=WFTqijZIEzDpJ4kvWeM9dkkKldA0Yp0hi2f0RikqWRqdewOCTVpMfqHdbjRpkKrlGPuk9SfCmn4GgclumPlw2tRFMYIKFfmNnUurVGJkRGvqwgjSyDIFhM2jWRHtUtMMhXXUT3wDvExHGP3zQ/DunV+XiKVQIGZBRuCVuxmE3dk=
Received: from BN0PR04CA0124.namprd04.prod.outlook.com (2603:10b6:408:ed::9)
 by SJ0PR10MB5785.namprd10.prod.outlook.com (2603:10b6:a03:3d1::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Tue, 10 Feb
 2026 13:01:21 +0000
Received: from BN1PEPF0000468C.namprd05.prod.outlook.com
 (2603:10b6:408:ed:cafe::38) by BN0PR04CA0124.outlook.office365.com
 (2603:10b6:408:ed::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.19 via Frontend Transport; Tue,
 10 Feb 2026 13:01:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BN1PEPF0000468C.mail.protection.outlook.com (10.167.243.137) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Tue, 10 Feb 2026 13:01:20 +0000
Received: from DLEE210.ent.ti.com (157.170.170.112) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 10 Feb
 2026 07:01:19 -0600
Received: from DLEE204.ent.ti.com (157.170.170.84) by DLEE210.ent.ti.com
 (157.170.170.112) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 10 Feb
 2026 07:01:19 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE204.ent.ti.com
 (157.170.170.84) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 10 Feb 2026 07:01:19 -0600
Received: from HP-Z2-Tower-G9.dhcp.ti.com (hp-z2-tower-g9.dhcp.ti.com [10.24.68.200])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61AD1EZm3577195;
	Tue, 10 Feb 2026 07:01:15 -0600
From: Shiva Tripathi <s-tripathi1@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <praneeth@ti.com>
CC: <kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<kamlesh@ti.com>, <t-pratham@ti.com>, <afd@ti.com>, <vishalm@ti.com>,
	<k-malarvizhi@ti.com>, <s-tripathi1@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-am62l: Add RNG node
Date: Tue, 10 Feb 2026 18:30:58 +0530
Message-ID: <20260210130058.3458936-1-s-tripathi1@ti.com>
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
X-MS-TrafficTypeDiagnostic: BN1PEPF0000468C:EE_|SJ0PR10MB5785:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ad1a509-691a-4245-3bea-08de68a47cb0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|376014|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?k+dtPaMML0Tlu2CBR0LAzCP79SRgA8QggEl1fFCTHkjKYYX2bmlb2372XMZD?=
 =?us-ascii?Q?Iks+mKCYzjrij6q3BdVKmi2rEYlIAznezVnvO8gOjmuNyl5JkMmtNJVHocXu?=
 =?us-ascii?Q?lK4H9afMLkL5El+8iIfUezSvC9HTT6xhJ0d1tJzvOmp7ndJFZZXGYk9XweyC?=
 =?us-ascii?Q?GxlhVhbnRJUcKOmr9P6homXis8TLcTKbDN7Bh/gUdwX52fnYGr/6rdin85tB?=
 =?us-ascii?Q?ieY4pGTVn1W1sVAHyYge6bobpPJfy/kVNJ+yu0rIkvn56PdHgEd4zQQzfDJr?=
 =?us-ascii?Q?dkVnIWm5xIFQntCUC6reFSOOtDjTL2L/dfndjRVOGBUzWyryNFNEvPFqv4+y?=
 =?us-ascii?Q?MJJ4ctCvZPhTpBoxIRi66ECYz3lK3pHbAtxH3+Prp+B90so++ylOaonLU4bS?=
 =?us-ascii?Q?fw50oU7gDG+nzIIIuj0fV6p9ruAxIpxKc0msAaPjMGtQP4TOXrqua653SVh5?=
 =?us-ascii?Q?igX+kvVHRN1WLsjs76Oazc/WfkDYpI0Ro8qA3/wJLjDj9MKmVC9YSdQBxWNU?=
 =?us-ascii?Q?s22x00FIQTwtlc50Y7DrTZciACdHDsckxid+xd/x7O1oznMv2QpWIe43s37V?=
 =?us-ascii?Q?gGq4nL8DkafrFjkRKZbDrogm1lIxItB4/JlPouIxVKHVNOufFsHMBjEESfcw?=
 =?us-ascii?Q?C+cFtuhlvXJ0Q2q6UDeXa5Xw3RQLQbu0LjXV/yXw+hptgXtUfU8YxRFew9F4?=
 =?us-ascii?Q?0JR2NJ7yi5xac/Wv4CUJKozVJ2XpV5sfpUwLNg6s5QVOvII++ZTZ7DngBsSW?=
 =?us-ascii?Q?B4eUaJPtMPow3o0xBxQoCit0rn2RlYW/yiFHIz9pQcQEx5kZHEtaLxQOYNQI?=
 =?us-ascii?Q?QpS3m0EBRrTrhM9hmy1+BeItPbfD+/+gVSeuZj8wKK8nYI4qAcnJI8M5N78c?=
 =?us-ascii?Q?GvRj2adu1ZChPrcQtHOLl8eDsqq/yiMyA4e5C7EddgqgNpe33wfsS4zOP4rT?=
 =?us-ascii?Q?9GDIQd0JKFwmfMj9ir9DZBABtZlGf9ccX6u8UW7NnOsTlyuC25bL7Es2WT+q?=
 =?us-ascii?Q?HsVps4iaD3oU6v/1MjF42l3BMTzibATkobflKH9CqN4TZQhomKClJaN+LxtI?=
 =?us-ascii?Q?shHdCoCAXE5wSWU7idW3xpOaHCV/z2bUvLNClfuQoZ2mrNofE9WKg1/JO6lH?=
 =?us-ascii?Q?hx6Zx8avMPc7k3dvu7nhMhDQbLIBANmwdQ5za8FQ8SegtAyad0AH5VwqmZCU?=
 =?us-ascii?Q?FPwpPZk0wJRk0rLzARbrGOeqE0Uw0NhnWZlyCXcVw3OTBMQUDm1ONmIld/RP?=
 =?us-ascii?Q?B3847EFC5q2RL6oNHJgbDcuY0JIZoWihO+kC7lxu3K77YvnW70ky8zkYDlc8?=
 =?us-ascii?Q?mvCbfKbt107UeB9G/PY03rOBx0iBROTuu3oz+p4mTaemqyk6m/hAoegrrJVC?=
 =?us-ascii?Q?jkLqkLObqdTdDL0cxM3WHD0HiJP67GKLlLuUYSjziVx8FbEDelss4H7yiwXK?=
 =?us-ascii?Q?tILXh/e3updoGFk6NfJTg/E6ZwonwYrmLy2VH+tqlOPIVG2uQfFhoaf5kFxF?=
 =?us-ascii?Q?WbKLFWhoMOfDZa67QyQERswjT5KFjQtLzH5Kz4WAfSZ7hvVk7amDhQ+n7mVc?=
 =?us-ascii?Q?1oCZN2eVIUvH9nhICZQZur3gaAZlchkXLtIwSNxtaQjgYk3T2OYdaruWE1v+?=
 =?us-ascii?Q?W0NleWOyEbh3DBkYCrfPTJEPwgrsz1aGH9AxDlRcamcjiLjZUm5FXzgnx8nY?=
 =?us-ascii?Q?H2nAKQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(376014)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	u1uHiNF2m//rf3LUuF+pEowMPjB/yEhrauV81/sDz7c8rxahVXJf0LDfCMkBsM8tnXv/pfsXFRuWLpxuZEQBcQ9bLjd0NKnvxFkRnCfxW3EbMX5CPvaxfdTkja1Wbss3rxU+9BtTpNz5eu5nZImdkntFRs+KyKO4s/GHvDTS3uno0qVdrwfk/eKpQqdcXhKdYQgEugKtJopT1JmI1gJUbNlHemp2w9kZaPJUEwmuqb1G6aVwBbG0jRqtBZydPBzUOS/gr40m7jntojfAI1y4e6we9VtDqho32ztL3QTnZV7j6Qu7precMcT9HxMZzRWFR0VSjBZj8UBnuApxmSvVbxR8bgI5ROphaNwNPzE63GKNnvq1xgGnNJ6h5EmabJgJXZ5lPSs1zxkbIxfhciP5VzVoZDYGyp6pGxuqBFsmR+IivRgNlvUi/ZofCGAemj2K
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 13:01:20.7799
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ad1a509-691a-4245-3bea-08de68a47cb0
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN1PEPF0000468C.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5785
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264412-lists,devicetree=lfdr.de];
	RSPAMD_URIBL_FAIL(0.00)[ti.com:query timed out,f0000:query timed out];
	DKIM_TRACE(0.00)[ti.com:+];
	RSPAMD_EMAILBL_FAIL(0.00)[rng.3b100000:query timed out,bus.f0000:query timed out];
	RCPT_COUNT_TWELVE(0.00)[16];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s-tripathi1@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,3b100000:email,f0000:email];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 5F6C211B131
X-Rspamd-Action: no action

Add EIP76 Random Number Generator (RNG) node for AM62L SoC. Unlike
other k3 platforms, AM62L RNG is integrated outside crypto subsystem
at address 0x3b100000, requiring an additional entry in cbass_main
memory map.

Mark the RNG node with status "reserved" as it is intended for use by
OP-TEE for secure random number generation. If required, this hardware
can also be used through Linux kernel by enabling this node.

Signed-off-by: Shiva Tripathi <s-tripathi1@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62l-main.dtsi | 7 +++++++
 arch/arm64/boot/dts/ti/k3-am62l.dtsi      | 1 +
 2 files changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62l-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62l-main.dtsi
index 883beb76ba9c..1b5f90b1ee61 100644
--- a/arch/arm64/boot/dts/ti/k3-am62l-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62l-main.dtsi
@@ -577,4 +577,11 @@ scmi_shmem: sram@0 {
 			bootph-all;
 		};
 	};
+
+	rng: rng@3b100000 {
+		compatible = "inside-secure,safexcel-eip76";
+		reg = <0x00 0x3b100000 0x00 0x7d>;
+		interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+		status = "reserved"; /* Reserved for OP-TEE */
+	};
 };
diff --git a/arch/arm64/boot/dts/ti/k3-am62l.dtsi b/arch/arm64/boot/dts/ti/k3-am62l.dtsi
index 23acdbb301fe..b7d4da303456 100644
--- a/arch/arm64/boot/dts/ti/k3-am62l.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62l.dtsi
@@ -79,6 +79,7 @@ cbass_main: bus@f0000 {
 			 <0x00 0x31000000 0x00 0x31000000 0x00 0x00050000>, /* USB0 DWC3 Core Window */
 			 <0x00 0x31100000 0x00 0x31100000 0x00 0x00050000>, /* USB1 DWC3 Core Window */
 			 <0x00 0x3b000000 0x00 0x3b000000 0x00 0x00000400>, /* GPMC0 */
+			 <0x00 0x3b100000 0x00 0x3b100000 0x00 0x0000007d>, /* RNG */
 			 <0x00 0x45810000 0x00 0x45810000 0x00 0x03170000>, /* DMSS */
 			 <0x00 0x50000000 0x00 0x50000000 0x00 0x08000000>, /* GPMC DATA */
 			 <0x00 0x60000000 0x00 0x60000000 0x00 0x08000000>, /* FSS DAT1 */
-- 
2.34.1


