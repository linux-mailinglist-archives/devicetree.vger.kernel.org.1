Return-Path: <devicetree+bounces-253843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDABD11FDB
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:46:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11AC830780B2
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:45:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E25D028000B;
	Mon, 12 Jan 2026 10:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ErtbFvzw"
X-Original-To: devicetree@vger.kernel.org
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010050.outbound.protection.outlook.com [40.93.198.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8977B23ABAA;
	Mon, 12 Jan 2026 10:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.198.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768214746; cv=fail; b=QhpMeUltlvfXdTSPszPunzHyPUcTzNvjc7Dr9XbaaQ0jx/Cg96Pl/UpQO6Uk4WoZ+QEdo4arXccjJ38ay1ABC2NRd8busHYr74FALwGr3APXMRg9E+tJO+2Kmn2MWycgX+s81jjNmF+kpfjniMAQ/9mAcOIi2FyAwSQh8XqZHoE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768214746; c=relaxed/simple;
	bh=VYJiWE9ifAs2rrUIpNRyz/DdWD5XPU0pQK39G+8Z4U0=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=i+z0HlqRYeYb8wUtJYNQwNnj+Pwf5yAw6b7/d5aCkaAd7Tr+bDHMNdeX5Yylvp0WCOU5XPc2vShLTJSBj5E+G0JPw4WrmWAtf2sjl4O02Om+82MiUjJgngj1zujzyvgdo1/M9zLTh09/JPDUvm8DyfCCQBvDZePRYE7C69S2/l4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=ErtbFvzw; arc=fail smtp.client-ip=40.93.198.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PAA8+JpdYl/KEsg4HctySoNvRJTqlKDUxnrMPaG94rX7xe4ugTcI/u6ZkYIK+eR7C1Lb1PB0rACts5QR1vBs22Xn2quTvO2zZjs+KufA1515oNkUaPfLIFCjXrTaN5a/a/QmHlmQRAJRdUZ/lzvvdEk0hDdhS3CCXCBULrcxBUJT/C3dWjYkRUbcBK5ndm3n4Ciy16GMooL9OWjo3S0A6U9KNEeDxHHMP2gGcGVNJbekdzdh6Wd63GGR5pf0MzPYDiUwaTxHmoVyGph4mZf07ccDqNPVI3z8Z/xt/nFclPDlJ/ZJHkJrZEarMDknP35TmlQWwfknUsirIzZHOFV2tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JjWXjfg1ICVhRNvdCDrEgJbikDNBW0nXzZzA8CNIAB8=;
 b=ve9BLMb0NXQvETJlF+xsffSwQT48cJ9nbonV59kxhnwQB3NYNvZkxspp+FCgLZe3gnDyhd9d5ySTH5gIJ84toKW5AJl5UaZSdqWS6hq2jDvWAB5NjrGjM3qhDsiyg1FMdCg5MK39vpUACoqQQ1OFeq8R5Nww6s4Y/8QfphYn57c8n1rb0YvXiQr59DjJOlNFGHKlsg8PnPd6w1XetPBMJC1WGyB/JG3zQCf+n1L7D7l7rNdJFGa2sO06JSkM3aTCT51SGxGFUstk2KuCuz8Hg4/trrwgqiT6L1an0tw4Z2qmIXIdzX1R85DLRj+A+6eAZTyAhZ2slOUyqisPHCYvOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JjWXjfg1ICVhRNvdCDrEgJbikDNBW0nXzZzA8CNIAB8=;
 b=ErtbFvzwarU1T+pY5YfiZdU7ey4Rql5MwCGQ/CcuMONIuJme6ogDc1PB+InLxLBYWFUN5F6fm8/rTPiFGQot8oBOsOVY1av/x7jntwGTbUtYdDoO3/78wx/jyMczAgIVtoKXwzfx3jp0KgFZl8OGU+CVWuajN1O3lqVGz+KvM4k=
Received: from SJ0PR13CA0239.namprd13.prod.outlook.com (2603:10b6:a03:2c1::34)
 by PH0PR10MB997691.namprd10.prod.outlook.com (2603:10b6:510:382::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 10:45:43 +0000
Received: from SJ1PEPF00001CEB.namprd03.prod.outlook.com
 (2603:10b6:a03:2c1:cafe::1e) by SJ0PR13CA0239.outlook.office365.com
 (2603:10b6:a03:2c1::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9520.4 via Frontend Transport; Mon,
 12 Jan 2026 10:45:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 SJ1PEPF00001CEB.mail.protection.outlook.com (10.167.242.27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Mon, 12 Jan 2026 10:45:42 +0000
Received: from DLEE205.ent.ti.com (157.170.170.85) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 12 Jan
 2026 04:45:42 -0600
Received: from DLEE213.ent.ti.com (157.170.170.116) by DLEE205.ent.ti.com
 (157.170.170.85) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 12 Jan
 2026 04:45:42 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE213.ent.ti.com
 (157.170.170.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 12 Jan 2026 04:45:41 -0600
Received: from moteen-ubuntu-desk.dhcp.ti.com (moteen-ubuntu-desk.dhcp.ti.com [172.24.235.46])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60CAjbfD242687;
	Mon, 12 Jan 2026 04:45:38 -0600
From: Moteen Shah <m-shah@ti.com>
To: <krzk+dt@kernel.org>, <robh@kernel.org>, <conor+dt@kernel.org>,
	<nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <u-kumar1@ti.com>, <gehariprasath@ti.com>,
	<y-abhilashchandra@ti.com>, <m-shah@ti.com>
Subject: [PATCH 0/3] Enable analog audio support on J721S2 EVM
Date: Mon, 12 Jan 2026 16:15:33 +0530
Message-ID: <20260112104536.83309-1-m-shah@ti.com>
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
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CEB:EE_|PH0PR10MB997691:EE_
X-MS-Office365-Filtering-Correlation-Id: 93cd4e06-3e00-48dc-a7ac-08de51c7bc23
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700013|376014|82310400026|34020700016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?deJ4q3Aimuvkqhr88m64ydBN3C/1/NemSyMMKRhneked8jZ6JjXMXGvAvgl6?=
 =?us-ascii?Q?jjkCY7QmcDNlUKkJlqkE3NsyujHUuNhzlFNPuhFmn6HBcp3ju+9Z0/4FUPev?=
 =?us-ascii?Q?PoZOppLZgl0DijB5oR+P7Nq6M6ZjOBNxtNhLinDBXnlUnB/+B5NiXqknrn96?=
 =?us-ascii?Q?VVxARrT/fPpGQ4ijqp7vhoOlApQUUW3zdSOzu8thot8nr0+HfLdjLKmwqBRI?=
 =?us-ascii?Q?fg48cpdjPooopQy5amBEurv2WpUA7yYDm58ui8wrblDa5M/Vayvc0kRSjX/0?=
 =?us-ascii?Q?+hyy5QBuOScfv3p83peMhrUqB32QVbbjUYPxvX3EEkR2jrxVAo6YrhVPcPBG?=
 =?us-ascii?Q?Six2u0GvcX1U28OSWbM3zrOXZFZv9hI8QIh/L1kH7P+Tc0A2540h2McY7Q8K?=
 =?us-ascii?Q?5ioEYJK0A3evkspzIoEiKLntaIOhUSLfO9jTyBwrx34GJosFyNWum5gHsgfB?=
 =?us-ascii?Q?I9PedUEIxfi88F5QG6EGbQ7xbPEx2FjLVLom2I8TPeBfKKlin3cI6dj/grR5?=
 =?us-ascii?Q?Ax+VrWWip/Mj08o4d0YJnUEyyyh9H0hM0UsrZoFGtURBlSvg3/r3Yc3hxz7q?=
 =?us-ascii?Q?kxGkyOvniSyE9sX89KuA5cs59vtcJ9+N/DRuv4zhXL2KR6vp+/rN1tNTFY0V?=
 =?us-ascii?Q?TEkHfHKR8r42cS28ckooSy5Dq9iWV449HGucyCYlbhq0ZGuA++P8wm/Tl6p/?=
 =?us-ascii?Q?jFHyyWpuyE/n4Q5A2JpEEGMtvEa88zH/Jh6GQ9KmEFdhJju3VkTINpqYb08d?=
 =?us-ascii?Q?fzuUSF9qftwiwwz3xb7hswqdBsbvG8Zsu1yy7PHO+vGeptzWDQDYV2FjQllm?=
 =?us-ascii?Q?aWuUm0tmV+inDQA2vGnlAgqW5PrCtII8jlqoLD/x6GNI4yaD82DkwDzSIWi1?=
 =?us-ascii?Q?ICrnM37fepfvkAFMIydPU743HrnTt5C9PB5VY+/ukOa7Jipj1ShG3aBoFneJ?=
 =?us-ascii?Q?jx7YIlAElR4X7Qgtd3/mfzYGOHhwpWtzxKfOlJKrvB6NOAMWsyps6nybtBcO?=
 =?us-ascii?Q?TKhMuIZEvKFMem99jojgHFosdg2II77HhpE9APbMSaU2y8VnJqPJ+wLHexEx?=
 =?us-ascii?Q?VUgy5+3lHwwQTKbhP1oXoMwWE+htVfee+4ibhw3lLvxkZSfTR1qOV4VsjBZh?=
 =?us-ascii?Q?wBUFjSVzX+4gfvzsjwloINLoEY1ZlHvURLw35A/Eaiu1S1rwM7NGZnFztZk0?=
 =?us-ascii?Q?iDeaPh7Esa4RQPrvnSwBJkgjfPGD1n1bDwzMCWMKNtLQB7acnk7F01rQrahU?=
 =?us-ascii?Q?f607+TSKWBoopkUXCLMtb3R/M0lBn5upCe+CVvMrhfi68za6KME7rrFt+QTu?=
 =?us-ascii?Q?L+u69t7AhCdvvJpOHp8EFl/iGx3RDFnbQv1bGCfsib8g3I/FAhhkNdI8nWrk?=
 =?us-ascii?Q?u1pXc5jBaWhUYVNb0d2rpdFJLJOtsm8TmfgwMEUj3S4xbGQPcBbxChBwXQxd?=
 =?us-ascii?Q?1DsgjTW7LU+frh0WOvHLf5BOPisj2vlC1iwRtMMdvnSHlJNjhTyK/HGZTHPV?=
 =?us-ascii?Q?1Aat4EdSEpHtD8sdpTtM/r36k0azFssq4MO+GtB64bCpJxGquPaA3nLSAinJ?=
 =?us-ascii?Q?LNiFUn+hFzvTvimi8yY=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(376014)(82310400026)(34020700016);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2026 10:45:42.8621
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 93cd4e06-3e00-48dc-a7ac-08de51c7bc23
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00001CEB.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB997691

This patch series, adds support for analog audio on J721S2 EVM

Earlier version of the patchset sent upstream[0] was rejected as
its dependency[1], which resolves the DTBS check errors introduced
by [0] also got rejected on the grounds of ABI breakage.

Another solution to fix the DTBS check errors introduced by [0] is
to modify the ti,j721e-system-controller.yaml binding to allow
audio-refclk as clock-controller child. This is done in the first
patch of this series.

Test log: https://gist.github.com/Jamm02/64b1af5b8829c47f1a2c5ace93204982

[0]: https://lore.kernel.org/linux-arm-kernel/20250604104656.38752-1-j-choudhary@ti.com/
[1]: https://lore.kernel.org/all/20250603095609.33569-4-j-choudhary@ti.com/

Jayesh Choudhary (2):
  arm64: dts: ti: k3-j721s2-main: Add audio_refclk node
  arm64: dts: ti: k3-j721s2-common-proc-board: Enable analog audio
    support

Moteen Shah (1):
  ti,j721e-system-controller.yaml: Allow audio-refclk as
    clock-controller child

 .../soc/ti/ti,j721e-system-controller.yaml    |   6 +-
 .../dts/ti/k3-j721s2-common-proc-board.dts    | 131 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi    |   9 ++
 3 files changed, 144 insertions(+), 2 deletions(-)

-- 
2.34.1


