Return-Path: <devicetree+bounces-264094-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6E1oOSgYimmsGwAAu9opvQ
	(envelope-from <devicetree+bounces-264094-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:23:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 84597113035
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:23:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1EBB03024A39
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 17:23:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB7C2389DEC;
	Mon,  9 Feb 2026 17:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ludkv+dk"
X-Original-To: devicetree@vger.kernel.org
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010061.outbound.protection.outlook.com [52.101.46.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E92F388859;
	Mon,  9 Feb 2026 17:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.46.61
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770657815; cv=fail; b=NwdZFF644dOH8zVypcoDgNAC5lyMX6E8EvNRZedMOuzd4y9T8dKUCR402f/8csbp50LgMq2GhFHGjNad9UM4JdPq33S1MvsNThT4v8m2K8WSd/XVVVS4+x5JwCbYqjvfMZBm/VAq53e+xL/E6m+8bhYThLFmT3tV4NaBkM1Waoc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770657815; c=relaxed/simple;
	bh=m4f2jPVjHCyD5+9ciyGdbNTC6SzYT2Q9bE8PZrwrvhA=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SJvwSpxy7BTSW3K9vGu1Y8dmUMWxfot5axAYap/HJRzFcKJE3+NBp9upmGS68xZr0ypcQdZoJO8XkCpoK+nOwmm4FvbQp7QWv+YGmfY55jU/YhbHkXc4lZ7Ct+cH2FeZk0sxc8xobs43JdOWvx6cbseAjTG1oWVTWhOxrsGlRGs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=ludkv+dk; arc=fail smtp.client-ip=52.101.46.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y0ZIVBi4ZsgvltQcnk25F8WyymG5HZ08j0gcdaOod4INvDcWksh2lydIIdV0dOiRiF1YQfHOC7zqKdD9yqXzqrghdsd85EM1b9W+RMRKnqt6Ct7RyKJpxebKMmIZ0xOiKmg4pBhfS1rSkr6e21xM3jr1MImZq3ZTsiaJhUnp8CF12ZhT+O5jYGREAOtyoobSvZLgVVGv0CLi/GtNLs+9TVR/GyIJud+IbF0bLgadI8DnFNGEKsidStX+Jtd8ctKrhgIJlQwD1WaLp7V1bgUB8fk0H/TOcEN8WmoaGITvWssBCJn8L1UPKDESoMpvNjEyWJ/pMDlkpEz8thXjewvhYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gyBmanF+F84LQUkBsX1QvlE+k1SU86i65Dqz+dU5HJI=;
 b=m0F5fohSNkg5prwHmRq4JXUK5Czy4I9FuhysVS/Wn69EsVsG68joCsCEB5GJ+T1gDjTBFwUyn6RJ8sNPUjz+z8nNo4ZyyxybEfO7AH6v9NtoC+NSfvspfK4QBn9aP92y2KytJHZKGEt16Ft6AxM2Ilr+BTIVfyifewgejnuCAkMPMUBq4JYttSkcs33W9OeC81KN/1Mn3dz2n/I8MYPEUBmII2yBlvd9nyBQQXcHel8TW0h+QdxeVAzDvv1GKWWY1hvjI0an4NC2+WMgds8HqwH0wxIDGXdz+NB+0WKLn6bCaxIAYnBc1Eem4mHn26rZHKUKzoe7BZRhzf7IMIK/SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gyBmanF+F84LQUkBsX1QvlE+k1SU86i65Dqz+dU5HJI=;
 b=ludkv+dk1NDPYB/CeqOZfzkbAbxZPKj5PHnMDEVXezeJmuPEgeqTrJ5yqVl1LmswDeTKIjaaPfiMsvwCex0Z+NfKVcvKBeVZf0wSUXt5VyCD53fU3W7QnQuWEvcJJXtUUzOX9r080VO8eQAJyAv+k96UmAVJ7rEl1jkyRo5+MVg=
Received: from MN2PR06CA0019.namprd06.prod.outlook.com (2603:10b6:208:23d::24)
 by SA1PR10MB6365.namprd10.prod.outlook.com (2603:10b6:806:255::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Mon, 9 Feb
 2026 17:23:32 +0000
Received: from BL6PEPF0001AB55.namprd02.prod.outlook.com
 (2603:10b6:208:23d:cafe::52) by MN2PR06CA0019.outlook.office365.com
 (2603:10b6:208:23d::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.18 via Frontend Transport; Mon,
 9 Feb 2026 17:23:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BL6PEPF0001AB55.mail.protection.outlook.com (10.167.241.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Mon, 9 Feb 2026 17:23:32 +0000
Received: from DLEE207.ent.ti.com (157.170.170.95) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 9 Feb
 2026 11:23:31 -0600
Received: from DLEE201.ent.ti.com (157.170.170.76) by DLEE207.ent.ti.com
 (157.170.170.95) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 9 Feb
 2026 11:23:30 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE201.ent.ti.com
 (157.170.170.76) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 9 Feb 2026 11:23:30 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 619HNUl51959220;
	Mon, 9 Feb 2026 11:23:30 -0600
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>
Subject: [PATCH v3 1/2] dt-bindings: hwinfo: ti,k3-socinfo: Add nvmem-cells support
Date: Mon, 9 Feb 2026 11:23:29 -0600
Message-ID: <20260209172330.53623-2-jm@ti.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260209172330.53623-1-jm@ti.com>
References: <20260209172330.53623-1-jm@ti.com>
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
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB55:EE_|SA1PR10MB6365:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bde5e4f-f48b-4a49-0a11-08de67fff310
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?ygPnl57zIWS5qh86WuwiADDTZ7ZbbIJTqUXyb5aquvJkfWcW9pYH2tKCXuHm?=
 =?us-ascii?Q?kI3WFBBnRUVqLYU/rc5M/bcSTwFSF+/F2e7I3+rYm//gjZp6NEzlN1v2nF7t?=
 =?us-ascii?Q?/bq2rTmNt7K9Hjaf1zBn9fvQhxKmFHcF1GYJsGUOUf4mQSCT3tVY8gUG7Jzm?=
 =?us-ascii?Q?fCFuo/2e1NuT7cF6sRpJtjMjMxT0AqkZ+KAwTKcyklyo77lE5lbIOROaaa4F?=
 =?us-ascii?Q?7ak1GwrawHlFxW+TfqEzaWIubv3aiHIgrJ3ELZxk5knThMu6l8kCcnZezIS7?=
 =?us-ascii?Q?lgYiATfuJ0636+2ucepanDLH4wFDB1irrjmEOZTvuOUAUDccfuAoY8Sru+jI?=
 =?us-ascii?Q?noFvn5OUBRt+Qg43d5CPqCMdbbYrMYr0wHOQEnKt4scs75xVc7YETKFtjZP7?=
 =?us-ascii?Q?Z5qyebiysJR287YdzU2uBYFDj/NdSn32cAzTD6KK2JxNmofSiX039Z5JV3Zv?=
 =?us-ascii?Q?NF3M8JhmRvLmcJz9ajxes03PUylyKSuWc0juC6YsR3t18AV1gizzDqEvR7/b?=
 =?us-ascii?Q?HZYNvC9O5+sjPOHwMPG4jhcCxYHIRA5HzrtWnMY4WONAi1oRCPfcvwewy07V?=
 =?us-ascii?Q?6BaP4/JtM8M1zJe7BcMTzmNXndottHeZiMXDpC+GFd4M32fLHVavuOrn7vhI?=
 =?us-ascii?Q?Uku0J9x49xZwZOPzEcxXbhWHJW+1TDCGF3Fr7SmAnSvTR7audpu44iWIpyc2?=
 =?us-ascii?Q?BaIhoCZni3IXwyvhS7xxC/p98hxC8v0A9uR/qnuMTheAqxT6vWFIhCLDfDpW?=
 =?us-ascii?Q?4iDvILlPmozZxCoTPFcagxPyHm2Y+QGVOkRuo8xK8UqSXy7CD7zM/4u9Rtz/?=
 =?us-ascii?Q?3D5K09k+vC7LuF7ZaGkFd57C0h1umHhm09snrJA9BkAQOrtYV80YwZWYyY6A?=
 =?us-ascii?Q?MoiUrslrCViZu2eJOWLihK83uKLA7Sjmf5n0/VVQFI/ojt+OQfRdJmm2Rue2?=
 =?us-ascii?Q?Wpne3KEfnzmXjE5b+NMbKzxGB+FNWVaoUZl6HWmz2t8PqQAE1qZSfX8EmzYS?=
 =?us-ascii?Q?sACKPT0N/lqgRgHkXt/Ei4CAoal+0DQ6/WgxtWDo6yDY1q1gCGxYUIl/rH2P?=
 =?us-ascii?Q?GIj2n/b5hjTtvmOORyEBwQJMnKIYKMSUcY/dhRpm9TotFzcyv79Tq3MLBFeV?=
 =?us-ascii?Q?slIDEz8yyAPxT+jC7F+5xYkUB1oIoVjG0/3zYaUt3KKaVNx+zTTa1d/35cvZ?=
 =?us-ascii?Q?HoU82lWdWzBprtX+S8aJSwoO8gpRFXjE9DZ4RhU9a2N1X8K2Ngm3P0piMVnP?=
 =?us-ascii?Q?XAgG0IS2LH42PaE+NgHC2LfudPzKz5l8EUIEQ0Gs9/cLlFsGe5+wXUCoKM9c?=
 =?us-ascii?Q?nYUc5Q/boUjBHEnMGKhx5/jerFDDta+txfid2XBIUxyKbFCPbulQjlfowynQ?=
 =?us-ascii?Q?wLWhPmPCqOJvQ0QvJx+lgBVqYor2qN3yK4c2a0xVjmLWVgaNYUgf+cUY2sta?=
 =?us-ascii?Q?JMsipNGKuzG8B4ZjfvXSVsALG3Jzvr2PWUd5nj6I9YbltFW1DAIx6iBQO4FZ?=
 =?us-ascii?Q?UOAxx/OCm5vg8t6lqLNIZzVTMEU/R2C/QQq/iykkvvFBEoNvOqHC5qE+6DMW?=
 =?us-ascii?Q?XOJeXt+yoRrP/k3ZNa1qTfgfCN6lkTMpyS0g1vEEiwRc7hD2feO4nzchEekK?=
 =?us-ascii?Q?LL2Sj8rIS8Vi5BxQu+Ivi8SrR0X9r4N+6Ht++cNNvhnb/YruBo4o/skkrCfU?=
 =?us-ascii?Q?GMz/YQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	BXu5hqNMzw8a2SjxAybZi1I9yId2sZN9ZkLFQ3O5hSS8KGfgdunjtfTbycYWruKvdplAyobqJQx/tiq9C2jdswa/Egdw28K6+WDs9t+JMKjLxLuj551eXpby2Zqh/5V1Ll5InJe2U6ABLlw7Exgy214kUdrPSyxeNbg3C4PLCpLd29u8xVsfX/55uOOGeV6bSLCmmuoaNzchdUhTMbZf4PUCOk+DCd+EF8VDYljHDx9QF3xtLqORaWDnXMRspQA76PvqPRmgkcNAPpl4PqWW8AxwI2ko0DsvSQkfHsEV4N48RZNuK1Oul1jotLXVevublTAl2pRlI/wIba/CmFcGE26bYBbbFaMW8wctryzLyKvazdAsj/O4NPI9OAysqEdADoINpEUgePjdeyiy2uT0M7u+xbKWEyZksDtRitnfei24OxUv1kgdMmEbrpJVZwFQ
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 17:23:32.4296
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bde5e4f-f48b-4a49-0a11-08de67fff310
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF0001AB55.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB6365
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-264094-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,ti.com:mid,ti.com:dkim,ti.com:email];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 84597113035
X-Rspamd-Action: no action

Add optional nvmem-cells and nvmem-cell-names properties to support
reading silicon revision information from alternate location using
NVMEM providers. This is used on AM62P to read GP_SW1 register for
accurate silicon revision detection.

Signed-off-by: Judith Mendez <jm@ti.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes since v2:
- Move description under items
- Simplify description, only say what NVMEM is supposed to be
- Drop maxItems since its implied with items listing
---
 .../devicetree/bindings/hwinfo/ti,k3-socinfo.yaml     | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml b/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
index dada28b47ea07..2900224aac743 100644
--- a/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
+++ b/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
@@ -15,6 +15,9 @@ description: |
   represented by CTRLMMR_xxx_JTAGID register which contains information about
   SoC id and revision.
 
+  On some SoCs like AM62P, the silicon revision is determined by reading
+  alternative registers via NVMEM cells.
+
 properties:
   $nodename:
     pattern: "^chipid@[0-9a-f]+$"
@@ -26,6 +29,14 @@ properties:
   reg:
     maxItems: 1
 
+  nvmem-cells:
+    items:
+      - description: Alternate silicon revision register
+
+  nvmem-cell-names:
+    items:
+      - const: gpsw1
+
 required:
   - compatible
   - reg
-- 
2.52.0


