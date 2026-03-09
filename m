Return-Path: <devicetree+bounces-272821-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNJYJWKermmqGwIAu9opvQ
	(envelope-from <devicetree+bounces-272821-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:18:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 181B6236DF9
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:18:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AB4EB303B4DA
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E86638E10D;
	Mon,  9 Mar 2026 10:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="NFMBhvLR"
X-Original-To: devicetree@vger.kernel.org
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011002.outbound.protection.outlook.com [52.101.52.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532453876B4;
	Mon,  9 Mar 2026 10:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.52.2
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773051459; cv=fail; b=k2HSpbJjpIN1NJBP5htsLCX6iiBSilFxOZHAU03OP8ORvIrmjWmPthtKSLPl7FM1vnd5c29ZjG4pW+MOQ3kBUhecyYfdQRIXkVMy1rHGSOGuNl6Lh11218rrBzgl5/7Et7E3jWlO75AszRJJHRvPlMetgrOFTUSzdyj1+BUpvo4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773051459; c=relaxed/simple;
	bh=CwiAxscmwIBQz5vM60nkI0Ug/aj2Tj6saRpN6Srl86s=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=TcRIkeIIORo/IJU5wSKtRbYbgH1n0yIEAkHFhhlhUnUKYdHQmtjiYnSBOlxOmoOHIIEaZCAgUn6S4W232eEmmN8VkMB0FXdCouza1xm2+fjO/v0nFce5UPxNRCWzdI81IQ1U0ZXlPeHtu1fbRZjqrSLrn/XQ55NWr0RhwSOjf5I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=NFMBhvLR; arc=fail smtp.client-ip=52.101.52.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XEKHvEPJ7kRgB47DHpXHmFu6017iKzZ82czcxKi7o0BMm1vvJvHZyt13OGgto3fkmhYfg5Vsq0mNMjYnR3JnBZEfHyxF8ivADuamPjNmIiwaPJg5tdS6dIDHRKk2qWLqc0IkNwdQqbUSAFeM0zkQRG3Z8AgYyOHXGBE+vH9Qfl/VX595jKNeIbVW3Bj9G3aykosy62AOBsbknVXxUwHYi6fRL3jqitjpqUBvSytzFe8OjIoalzoieYhQTLIxE0lGDvwvT17k6kGV3zeDuwtV2mpk19AHGRyRaxvHq0OQNFZDlxiGLSdR+mnDEmOSxnL6VQxQJWicbUDaJtLNUVDsAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pf/jYnVYlH4kyb2Vs5i38eOOwjqK9/R3JeBfi8Pih9A=;
 b=LHJU0pYYBv3K0Nu9UfvCDyhf07cKlOppwV7JCrxu1/IEQqgW+bHYZlh0ry1F53el6OZgtAOUHFVJpNx5qH8CIL8VhWY0O9IuB5NLbGg842g0kALEZ8Yxmrp2TBqpwI8wTZYRRJeU1/ZmqSwJ9n6Xbc1qKN1bCAA7B0PKljEQ3u/bqjjTusHWCAkZQ7olyuYq18pz3agiRVHwxLC6gD/d6eVNtvxQ9usid0fj2vluVk5bSlAJf929KT5S/nXAKEbtEd4xh+H2GcTg905lEp8KjLllPKs5ryvdJ+QlGDuE4Az5LtdMQg7gg51Z8XQUsPdb80H/OSiFgvLopsI7APOxfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pf/jYnVYlH4kyb2Vs5i38eOOwjqK9/R3JeBfi8Pih9A=;
 b=NFMBhvLRZmCoyysFx/6r1agSmvQXRhEKbSDbLcmo6QSPESrCfyTDX2RrTahrKeArJNutq1mf2RVRCFoGRVFRsyq0H1a1dz/v0OkkHw8iujsHqvhq0kHuvbxLR5yINS/wXZ38QtFL5JVp9/0k/gWVQUsNSCvSm6k+JRolrcoM9Po=
Received: from SJ0PR13CA0199.namprd13.prod.outlook.com (2603:10b6:a03:2c3::24)
 by DS4PPF3E4368C94.namprd10.prod.outlook.com (2603:10b6:f:fc00::d18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Mon, 9 Mar
 2026 10:17:34 +0000
Received: from SJ5PEPF000001D7.namprd05.prod.outlook.com
 (2603:10b6:a03:2c3:cafe::ae) by SJ0PR13CA0199.outlook.office365.com
 (2603:10b6:a03:2c3::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.23 via Frontend Transport; Mon,
 9 Mar 2026 10:17:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 SJ5PEPF000001D7.mail.protection.outlook.com (10.167.242.59) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Mon, 9 Mar 2026 10:17:34 +0000
Received: from DLEE209.ent.ti.com (157.170.170.98) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 9 Mar
 2026 05:17:33 -0500
Received: from DLEE209.ent.ti.com (157.170.170.98) by DLEE209.ent.ti.com
 (157.170.170.98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 9 Mar
 2026 05:17:33 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE209.ent.ti.com
 (157.170.170.98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 9 Mar 2026 05:17:33 -0500
Received: from HP-Z2-Tower-G9.dhcp.ti.com (hp-z2-tower-g9.dhcp.ti.com [10.24.68.200])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 629AHSEH395352;
	Mon, 9 Mar 2026 05:17:29 -0500
From: Shiva Tripathi <s-tripathi1@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <praneeth@ti.com>
CC: <kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<kamlesh@ti.com>, <t-pratham@ti.com>, <afd@ti.com>, <vishalm@ti.com>,
	<k-malarvizhi@ti.com>, <s-tripathi1@ti.com>
Subject: [PATCH v2] arm64: dts: ti: k3-am62l: Add RNG node
Date: Mon, 9 Mar 2026 15:46:50 +0530
Message-ID: <20260309101650.1652240-1-s-tripathi1@ti.com>
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
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001D7:EE_|DS4PPF3E4368C94:EE_
X-MS-Office365-Filtering-Correlation-Id: c0071801-6182-43af-8e8f-08de7dc514b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700016|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	fRKP7WFTejx6XUmSjwfoEQjV5NfxBrYMa5tgIcSw+bIfPx4bcD0XN/ZPTQKup5VgeUBnuVVbdOnEaRcPYuZmTaWB1nUjoGVmA0yIGCFWpfsMWS+mJTonMrBYywvJ37CAiPO9B/2aEMsbJTu6K5dYCQvvrJg4UXdCAsRVzqSRf3B1fO34tUjcOcLRIPonexofLH8JgYURLSnwAzMFnMyyLZERx0LyyxY/Q6cJuOXnTvEuhxgMtsIqRIZQ2CO7hhru6mInnlyOOi880euU5PZYrpl6Jz4XILCWalO+iO4NBSTf6IBaAbSkVvYWzlF2n8q1+7BjMg7q/IXSo3P5ykPlRx1g8gHpSvyzlvToCXHzCkeKu8xwEYrejqJqY3XUGIXhph87u9ckRC1Zy6pGXV9eMrRa4ezAJBVAwda3Bu3VpBBvpkHdUdM/hGBNNSBwFuHrzJetU/kaMU3GdCdgJHFYTy06zQJzID8kvxnIY3OSfadC4/KyzS6524mwpHfLYM+aPggFTL9Upk7/7cwQKPfRJDnAhvYNJ6pN3abH+BJk5LX/VWalrJDw6CcO0Zw9LiFG28EB+bYl5itkbUfi03xi3rLU/tNCrmJiywY373jRxe/k60ASNKV1DWZdcgQSoMMsAP4D8N5BBU6n0MZcTVo3sdtTUAHTnFhohafgK05cnYpHKF52N0N/eZK27Nf+8MUqtGa3Ml/vnJnRjM+u0ugEYZUOqCfJdrAknSlyENZJVTZhItXyjGrMX6P10WACIDVEIKmja/QPDyeoQ8bERNAecg==
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700016)(82310400026)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	7W+VVUh3eB3czomAnyulmL+rpvjTQn12RJ9JV6QZORXYvnYpZ3W/kxMt3bFb5eLOcDzl+DzOTjXeKvqc87lD4KXZBSyDN9VKqn4oawQeJ9IiJTe43CIWjjUpK+G8tA8dipuK2sWB5Z0lsZJqgSc+SKXD0rc/c/k98z401tpyoCGe4P4kHqY1CotPogvp6pIchcfkg50t1MgKlIJR3p6nh1UivB0UyrN+zER8tScLYiN37sG/oiflr8b7fIMpm3Bpr++bFgITsJdRA2B6VxbUzwa8vSUFO9NTNSxHBYoMNuZvOjo+W4e5IZffHbxokvS39roIilCSwiACOn3dsxqU4qr3m1WZ1h9J0GY231h3V3fxkuWr5fFIMbhD2cNhwEw31AMYsHgqejXUqmqJfYFXJLNshDDV9j3iOtqZobB5uS0k5FUL+syamnXTdLOyd7Rz
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2026 10:17:34.1701
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c0071801-6182-43af-8e8f-08de7dc514b9
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ5PEPF000001D7.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF3E4368C94
X-Rspamd-Queue-Id: 181B6236DF9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272821-lists,devicetree=lfdr.de];
	DBL_PROHIBIT(0.00)[4.56.82.128:email];
	FROM_NEQ_ENVFROM(0.00)[s-tripathi1@ti.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:dkim,ti.com:email,ti.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,3b000000:email];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_SEVEN(0.00)[10]
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
Changes in v2:
- Reorder RNG node placement based on unit address (feedback from vigneshr@ti.com)
- Link to v1: https://lore.kernel.org/all/20260210130058.3458936-1-s-tripathi1@ti.com/

---
 arch/arm64/boot/dts/ti/k3-am62l-main.dtsi | 7 +++++++
 arch/arm64/boot/dts/ti/k3-am62l.dtsi      | 1 +
 2 files changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62l-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62l-main.dtsi
index 883beb76ba9c..80615ca1e01a 100644
--- a/arch/arm64/boot/dts/ti/k3-am62l-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62l-main.dtsi
@@ -564,6 +564,13 @@ gpmc0: memory-controller@3b000000 {
 		status = "disabled";
 	};
 
+	rng: rng@3b100000 {
+		compatible = "inside-secure,safexcel-eip76";
+		reg = <0x00 0x3b100000 0x00 0x7d>;
+		interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+		status = "reserved"; /* Reserved for OP-TEE */
+	};
+
 	oc_sram: sram@70800000 {
 		compatible = "mmio-sram";
 		reg = <0x00 0x70800000 0x00 0x10000>;
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


