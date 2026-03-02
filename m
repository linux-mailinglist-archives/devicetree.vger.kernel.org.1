Return-Path: <devicetree+bounces-270187-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKXSOHDUpWmvHAAAu9opvQ
	(envelope-from <devicetree+bounces-270187-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 19:18:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3841DE59B
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 19:18:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7A421300442E
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 18:18:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 858251FC0FC;
	Mon,  2 Mar 2026 18:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Q1uuULvU"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012031.outbound.protection.outlook.com [40.107.200.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A1F4314F;
	Mon,  2 Mar 2026 18:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.31
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772475497; cv=fail; b=TICy87cPcWHgDT+YodWErkP8qd1tOxo4AQIrIvWcT+QnUey07NqgxbtVxFjj5/fw13OBDgjwvSbz0Z98Qv7PorRrCmw/l5j540qUOPagblFaK0rP/t24WhztVj4sZOdFgi4HtzFH5BzY6pThX6RnXGaFbtE75G04/Cw0TldgBhg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772475497; c=relaxed/simple;
	bh=uqfN90FfoHsI0/Qwm/lXX7eD3A47RcEbRTzvunf6N7I=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=DsFduylc8aOedxJSODomD6hfd/3Cgfk6py+QtnlQ5eo+DX0UXlwsmtQfGxKmLYnC8k6nqtg6tetlj7DF3APbK1GLLxEDog+NU3F2hW3UiM+eeTvR+oi58TT32ruWi6ii2YAg8olbM4LBIty7OYKxLvPqik7ekca2lltqphWx+A8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Q1uuULvU; arc=fail smtp.client-ip=40.107.200.31
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LPFkJHe6lqrgyblp3YFdhCnuKzPRZkYVhY/GKeDEPZPkE7VaktbD71qXI5QSPCWxN6vjCKbTPHAqRSqe5Yn3jNvOTW7xOd6loKjKEALoJ/JvIqCpdRzn/wJ5LL4TdymBVMMcVtKaPfw3HwOghStdvXTREMlq5I8K02T5TglQQpkhj1YADP+hoGBmoUY29Ve7/5ANH8danNRgHLu2+4gC57vrxMA3bGktHSnBHX+DEg5oFcZxkrN6JggshjPlWBmDBEQQuIykYvou+510rSZWa7PlldU8eE7MpE+IF3izVoyRguo40HsLDIBXZ8PJtng/Qa2mrT5YNN2vfLEixjzmgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V2XD43DryUdS/IsryGYk2uTRqtNUtD8TjkJnCFNY0sk=;
 b=AOOZ0dUhcVaQVrWA1QkxDD1C4zppRcIj6LbrusIMSIL1QxSFLmM6x0UqHCzwQVGKlDhzZC7asN8y07n57iNgKtg/tCq1qeRSNXf3Aez5LO1b7jkBSnw62JqoVf+/jCjrSVLgAUIN4ZGF7wD0Enagk6Dg6jfAenjGdHL3P8B2Zv+WGTu9FEZwWnCc/sNsXaRfkW3XxGL4ALW8vPfqGmXa1pLuYWtHyirrVbrEFT1qFQ/TE+FcA9A153irPAABxF19U+30nlYJsqEklLYeXhvh7JumG1oqbaS8/fTImcCf6nzMWsSY8hfdYIq5Bf2vHxBWVYz/VlxDeZoFNCR4WBTGxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V2XD43DryUdS/IsryGYk2uTRqtNUtD8TjkJnCFNY0sk=;
 b=Q1uuULvUwk9xYY4mQP5sNchFOjAd7H7n4ylv7Fk2fSdPbXltBRKKIkm4CZEUvDIdEQNQFYixdsGRBoptJpeHG5cAOHKfWuCVVMsmzoUy44cbrpYXolEk/a8QA37MBKYV7wbIdXsu/bgiRdSQzoEP4yP86zft7jcleoVSYqI6Lmc=
Received: from BN9PR03CA0486.namprd03.prod.outlook.com (2603:10b6:408:130::11)
 by SJ0PR10MB6327.namprd10.prod.outlook.com (2603:10b6:a03:44d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.20; Mon, 2 Mar
 2026 18:18:13 +0000
Received: from BN2PEPF000044A9.namprd04.prod.outlook.com
 (2603:10b6:408:130:cafe::93) by BN9PR03CA0486.outlook.office365.com
 (2603:10b6:408:130::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.21 via Frontend Transport; Mon,
 2 Mar 2026 18:18:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BN2PEPF000044A9.mail.protection.outlook.com (10.167.243.103) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.16 via Frontend Transport; Mon, 2 Mar 2026 18:18:12 +0000
Received: from DLEE200.ent.ti.com (157.170.170.75) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 2 Mar
 2026 12:18:10 -0600
Received: from DLEE206.ent.ti.com (157.170.170.90) by DLEE200.ent.ti.com
 (157.170.170.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 2 Mar
 2026 12:18:10 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE206.ent.ti.com
 (157.170.170.90) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 2 Mar 2026 12:18:10 -0600
Received: from b-brnich.dhcp.ti.com (b-brnich.dhcp.ti.com [128.247.81.69])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 622IIA6w1232767;
	Mon, 2 Mar 2026 12:18:10 -0600
From: Brandon Brnich <b-brnich@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
CC: <b-brnich@ti.com>
Subject: [PATCH 1/4] arm64: dts: ti: k3-j721s2-main: Add mmio-sram node to main_navss
Date: Mon, 2 Mar 2026 12:17:57 -0600
Message-ID: <20260302181800.445653-1-b-brnich@ti.com>
X-Mailer: git-send-email 2.43.0
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
X-MS-TrafficTypeDiagnostic: BN2PEPF000044A9:EE_|SJ0PR10MB6327:EE_
X-MS-Office365-Filtering-Correlation-Id: 643df358-7195-4385-678c-08de788810cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|36860700013|34020700016|82310400026;
X-Microsoft-Antispam-Message-Info:
	lh30GBERNcYYsSOhs1bY1uNCjiYsaVeP2oS2hTmp6axfhTmo1S1vwSO2m1m6kusDxvctJbM/756qywSD5F01rCcBfXQB4gfJLZa9Gc1G8tP/RL1rc69jkoK58avZAyTvUHJidyjr4nLMyOHjxdXoPsJmLUJN26NnxE/t3rw8+05ZIMFrA3PejfigIKjDy9sHEdfIbF1dImbfSY8uz7j7R94UMlIO0S5f34wUvYy5r8Wipqu4aeuGmNUdjyImLS3SrJf9eI8DWR8i+lYo1L2dv+RJZBIIjSeI4iOqbu6lo/rOOkYE2nqC2ZDEkmPDJCl9tjjReYPRgA69MeOIv6BfefEgh8Hfi7Df7+gKOJOGjjB0brZPujSLjvAnDmCNSR1MyWlxC+rbbSj8VcQRytIAHibfVIQecJD2NWbcNRcRuy7vr4veJ2vM827Sg6I7jM6MRQSsoBnVY4dht5uyqPvZ2t5dUuQqne3kKRGJkC8aQtk+DqJ0BW45HzpJrme/Ajx2dm8nUQo/T71NUl6l7FqA4PDK+aZwCUKufIb90FxquWIpWCA10Gh3/f/u8xkQ7MkCRicEHJCSxS5Yhamjq+PwOE67VF/SJVjcb4s87Of9TRU+rmLbBy8rj4G15aBRDvi4ncfQZaDgK5j92Tnqu/h4/rKDSNmj4LKvL6K2shHAJiaOhH0D3LKPUDIXyfoi0ykvl1ZSuZUxVlB8xJGL9Mh3eiBj3nSoWmmwc4xlgPOqmjrT7byQWn7a2/8gmrojQ8h83xro6RG5Elr9qP4zMibku5b7FhZvJG3lDBc8lgHp3zaSuAdhjODsRDiUeEMoNCNo2M4Wiy24NofqbQhaglWadg==
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(36860700013)(34020700016)(82310400026);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	RcMSP8uQ9cLy/eZ9eedm5Ha8y0eiW2K7PXAfeAIN/0NWHWl5T3VaWvkEvjWw4ySGHOpQLg2WvVvNY2MyN57UcVG/3Dhjv4bSwmtxzdgAuq7T+jeil3wVkeK0hn6S4xitqmI8fuTdYXdK1QKzzfWQFip41aFmC523EJ4Lt/rPoeoBbTi1wQiYWfs20i9dhIp1+YGQA72wnRjj3ciDe5sdc2x6atUOSLpO35NTkXBh3GKwmKd6iGsJXrfnPTm+x8KwT+GcBW3e11fhhPk8hugmnNUzPJn4Uq2MmeXmofZXXF2JK6GPhXePxDHm7FEQ7DwSXgI+ZR1S6RWZrhaAGk9UjOgY3Gw5Rc4pYikSM0sUfktz4hf5StG25a+M5vJdasoed9///aa56rZcPciROsh43ccXJmQBjE6eP/ItXiE2Q7Ec2NWPAYFYec/dt5jq+h1C
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 18:18:12.4728
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 643df358-7195-4385-678c-08de788810cb
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN2PEPF000044A9.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB6327
X-Rspamd-Queue-Id: DF3841DE59B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_SEVEN(0.00)[10];
	FROM_NEQ_ENVFROM(0.00)[b-brnich@ti.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-270187-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:dkim,ti.com:email,ti.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,1.201.195.128:email]
X-Rspamd-Action: no action

The NavigatorSS (NAVSS) address space contains a 64 KiB on-chip SRAM
region at its base address. Add an mmio-sram node to expose this region
to consumers via the generic SRAM allocator API.

Signed-off-by: Brandon Brnich <b-brnich@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
index 80c51b11ac9f..7b1ba34ab719 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
@@ -785,6 +785,14 @@ main_navss: bus@30000000 {
 		dma-coherent;
 		dma-ranges;
 
+		main_navss_sram: navss-sram@30000000 {
+			compatible = "mmio-sram";
+			reg = <0x00 0x30000000 0x00 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x00 0x30000000 0x10000>;
+		};
+
 		main_navss_intr: interrupt-controller@310e0000 {
 			compatible = "ti,sci-intr";
 			reg = <0x00 0x310e0000 0x00 0x4000>;
-- 
2.43.0


