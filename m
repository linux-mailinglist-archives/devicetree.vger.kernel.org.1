Return-Path: <devicetree+bounces-267669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDRfNYPlnGlxMAQAu9opvQ
	(envelope-from <devicetree+bounces-267669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 00:40:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5731217FBC7
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 00:40:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BF1EB30D0F91
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 23:37:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0269B37FF7D;
	Mon, 23 Feb 2026 23:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="hxWVLhJE"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010071.outbound.protection.outlook.com [52.101.85.71])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95ED737FF4F;
	Mon, 23 Feb 2026 23:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.85.71
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771889857; cv=fail; b=ZYcXfElsnrfqv7Y+xrOFyhGXtm8gR0XYzwpEjCUn5sTG0rVTR941LnvPD4IVkqTBrodn1Fu78kFlByrhq1mouP11HYoAD4woI501YjP+w2wFFQcbLqT0VkGc93BkUFd4k4PuhJG7SrmaeBETOrNtDLNTIBCuEy+MTc/XbiXCEsM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771889857; c=relaxed/simple;
	bh=oCctdYXIaVnG/40d8cGYs+QELTJOC3Vtqsdszrlb7V0=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=uvTGXggj6cPAT1uPo3a8dHTSJWhSZBG2RX8t2LxMn1QC0KpW00le336OuWBXWMhPDtsUAVI9H0p71YGgnN1MJXovsFw68/TcaTetCJZMUKjwy8HxnxrF6A2aWTfA19wvNXrhHXsezhsl4LG0YgKpeGgwas+xKXrMcBYwTPBM/Xs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=hxWVLhJE; arc=fail smtp.client-ip=52.101.85.71
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IC5YN9Pie/Oz3VbnoU0K2IG0OZAt6U4F2Ttaq3m/khwMFQj8ZtesKwyEY3UyODaBPXi6kVmnQNZ91OT6p0cLnyP5xgxr+F/QZVWwt8SUckRoysDm2CAjErLUCIn1p0onnvn+iiYdud7BCnJIcH0kn1UzzYL0Vjh5oQOUPE/yzxxtpFG61FmtTgfhneMGuIoqMnNoOa7CdrGZLItTTf4/yr60gqmMaeTeiUhA9cbpqjXfSZT3YDv+Zyh8RC3S7Pn1YlQcuqIyQWJFtyzB43MZVKIlosKuraSNjuJL3KKihGxvZGhdDaWcrDE/THtAVgxnIaEC9nPzmi9wq+nbGPNQOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=udW0izpERXy6iP2cCE21asdQ2sfa7StagZZlLVf54z8=;
 b=Fo3NR2FSTuKA/aEoN2UIwf7dF5hbG4dZtj076xAeux4+7OOqoQoihFyMwrGGNTovBVli/aW1n1a4l3W1iQInzCF4x1Wn0MEl548cJRc51m6mK2R5+xDPuHpqAsyoqmwcVAO2+OlO0tTP6hqb/wYKoJ6CZkGkc9Rr7fhAvtyEpDy8211JzVyYZ9iCCVzMC+uuopRlPeJWpcHE/F/sXUddSTosRefzWe0jsr2dmhgw3WJq3awEcMC5zttJJxvLBQEERaSkXYyCnjv1G/NINbiRbucF4E2ng7lOdrAs0uqlnka98zFrQkQiUkbTHNOhBU7tsdJcRvargdZikN3bsjDIhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=udW0izpERXy6iP2cCE21asdQ2sfa7StagZZlLVf54z8=;
 b=hxWVLhJERoQimXDSJbi76xw4iOObiAyWxk0DRJk0tl7vd4JjZC5nZd3RHHaV27SNKaNohZSMmUywh1Re+YuwT6n06x09WToDVcaTblOrqATAZH+Qt6N2icSFALPoT2kgQPWC31N9SM9SsMPmgvPh4vBI3DLvJigJVtZmbmo2+ZE=
Received: from SA0PR11CA0177.namprd11.prod.outlook.com (2603:10b6:806:1bb::32)
 by DS0PR10MB6848.namprd10.prod.outlook.com (2603:10b6:8:11f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 23:37:33 +0000
Received: from SN1PEPF00036F43.namprd05.prod.outlook.com
 (2603:10b6:806:1bb:cafe::cc) by SA0PR11CA0177.outlook.office365.com
 (2603:10b6:806:1bb::32) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.21 via Frontend Transport; Mon,
 23 Feb 2026 23:37:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 SN1PEPF00036F43.mail.protection.outlook.com (10.167.248.27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Mon, 23 Feb 2026 23:37:32 +0000
Received: from DLEE209.ent.ti.com (157.170.170.98) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 23 Feb
 2026 17:37:31 -0600
Received: from DLEE215.ent.ti.com (157.170.170.118) by DLEE209.ent.ti.com
 (157.170.170.98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 23 Feb
 2026 17:37:31 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE215.ent.ti.com
 (157.170.170.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 23 Feb 2026 17:37:31 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61NNbVXr1677488;
	Mon, 23 Feb 2026 17:37:31 -0600
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>
CC: Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Moteen Shah <m-shah@ti.com>, Andrew Davis
	<afd@ti.com>
Subject: [PATCH v2 0/3] Fix MMC pin pull configurations
Date: Mon, 23 Feb 2026 17:37:28 -0600
Message-ID: <20260223233731.2690472-1-jm@ti.com>
X-Mailer: git-send-email 2.52.0
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
X-MS-TrafficTypeDiagnostic: SN1PEPF00036F43:EE_|DS0PR10MB6848:EE_
X-MS-Office365-Filtering-Correlation-Id: 9fb3170c-0cc8-4ae2-3e56-08de73348451
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|376014|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?MkSOPsqak8TzXWjsJ86Yqq4bPyQce8iZ3Q9lt4xQo2RxTyfaBUcNPUcl9lpo?=
 =?us-ascii?Q?8CsLpR1caHc4lG1YY++a14lTxNtPqOl0nciMMiozdnyWZNzp9BpIBlx7WHka?=
 =?us-ascii?Q?GMq3+e85C3aCpNu41Wu2489bRh8OO8VFmhIff2WoQYQhJKOWeN9wnky4bBl2?=
 =?us-ascii?Q?VWw6FreJarr0atsDcBZO9HJye89rilOLgqHtBl9eIN+lFgdopQINkbG6AuDv?=
 =?us-ascii?Q?XG/8WNSAS6WlHEMZGMWgKpHD98h3wlM2TOGD2uJOdjYFL+MN0PsMtyZf4sgI?=
 =?us-ascii?Q?Vh96vP04FSK8ycYjnD/RWdN8zvV1BcST4p6c55O0f6Sh8fHbEpYxsgfoPzvX?=
 =?us-ascii?Q?qBdun/WPn6fBfIjq+kBb0n8gdIbi2SZ/ux5hAKWn6ZQbDZ7JAA1Q5kWz7Giy?=
 =?us-ascii?Q?d6uM3YhY6Zm5iRH2jG4jozWBqeG3oi+cYQDj7MvxzOnC49Zv+rg255i7K128?=
 =?us-ascii?Q?OeUb5sfvBLtbJ6YcbwVmEl1iF8islCLAoMfxVOYBMibODF9ipfNudXMNsyBn?=
 =?us-ascii?Q?nwSAxpQQqZjDXdXpNATEtPQqYVLhIDVRPw39ZBAUD4iwcWuupdP6LvQdcPF8?=
 =?us-ascii?Q?trIGALYKXhVpVuQ9oKYTTKWPVykPNFSnd+wNBpSifYSdjr23mCR/qLjiV6rH?=
 =?us-ascii?Q?wsMDg758oebT0upNuA8Xsp8z5ihLDxLfvez68x8FqvZnAiO3YlkgdSHVWPbB?=
 =?us-ascii?Q?BFEs/ICjFov0pv1ruLkzcXJBfHV1mKmWWddTUf75JRhnzN/PG0soNwZm9MVc?=
 =?us-ascii?Q?YkIUwDJosvo7KI8KdmF4dpiRxQUGpjneHL/YMalyon3/k9chmgLahqZtqVLS?=
 =?us-ascii?Q?wJT8JqJNeqSuEYRa9FgyCHANx7XsvZzdscu1bbe3SqRl6rdj8nKveNY+JsUA?=
 =?us-ascii?Q?Ly8JMYUNuZNZMLQd9BSeUS/kyoWNFaYBWF+x7NkKF8hBnDGO/N969keC9XxE?=
 =?us-ascii?Q?JE/pfOAweG5Q9hMCjP1Z9PIXSVQ0jSNB6LKVa9yOBGjjF0OfLOOfQDaWXC1Y?=
 =?us-ascii?Q?0FMR9Hjx2EeTcjoL+rWVAw2SMIPOpNdsyGbRrcE2VCJyP3YoFf5SjXseHKCf?=
 =?us-ascii?Q?/7Hm7DKtBCOvsHS5KJjCv7rfINYcrCaY1bSSgtzJfRu+27AVpsIwZg3+2fwN?=
 =?us-ascii?Q?Hg5NpTPnxJDNTouelt+/3X6TwWQlHTftQp52m743245tva5OvmSsqsFzjRp+?=
 =?us-ascii?Q?H8/Lw0WcJHPAOLrnA4C5IkTSuj5pqbMUenUfZVo2itrlwDZX9agoA9ZqbuGB?=
 =?us-ascii?Q?DxWq1BKs5uiylGDiNvmruW23rH8d2ag62QaJVP/ZU4LdmmxNUjIJeVbwncR4?=
 =?us-ascii?Q?bLNChadRwt7WYZz3Fvfq8lWLiw8PMkgIEtnRwTBtwF6z+sVihgy7VBFQi7mm?=
 =?us-ascii?Q?YESE35zTW0oAA9AaYgeWC8fnXryGofXRsq2vBm8Die3INukcjJF329+qn/ZM?=
 =?us-ascii?Q?477UPe0CFtd3Ef+cNI4EzJdfGwnVbF7u3UcV4hhdEZFyYafx7xfzqgg0TXXY?=
 =?us-ascii?Q?YTn4OWk6Qb8JdZv+he6+llqTGKKMj4vLOELKHgTc/xMK3wcylbREIxamkaDQ?=
 =?us-ascii?Q?6gUyqKU3KA+PpFTc6Md88IvUy3b6njtlnaMrQz/3gU8X+CdfeZE3sznqtWvM?=
 =?us-ascii?Q?CE+CZg89TEmQl7H4UzCEQDK9bca/CxQd+a8eIc6AgQ0a/NOZEc2KEs+ncEzG?=
 =?us-ascii?Q?qc7RnA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(376014)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	QR0aCnt36y7yOVOd1/2rTkLq0uDlMmxq6+rLzRBUKG50vBcf39X8vm9P1NyRKEik2gD7iu+U6mhp8HoZAH0vvS3JU1aHyiEufTHk9ck00QEuArxBX/ybZFTDmTKl4ekHGjicrQdcwmwLbkZqEeo1EVYYaracQzD83QNG87xvu2Ume/KZ4hzoCgVTT6jh3RwQr/rKCSz+sC7d5Nzs0X4EuV7AnzrSwrtsc31BCDW418GswYAIWhFKp1fkL425jjK2ZizL+9jplZan7tGlojOtjS42cA0EyEcQ3OnWtwhgpWzy2OwIT02J0CXKE+hq89+5hNE+GMLr6b+kbd7SK0P6i6SkT+XLQlqtXeFLOZDrMwnhDWfn/Dh+nlEVjhz5eNRxdVAeASgJxSIu8DuHmJxmA3rNIx7T9m2MLgMDyiaC/H+QjQm5X2RER5NakKLaE/fM
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2026 23:37:32.7890
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fb3170c-0cc8-4ae2-3e56-08de73348451
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SN1PEPF00036F43.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6848
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
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267669-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:mid,ti.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 5731217FBC7
X-Rspamd-Action: no action

This series corrects MMC pin pull-up/pull-down configurations across
TI AM62L EVM, AM62P SK, & AM62 LP SK boards to properly match their
hardware design.

Most boards have external pull-ups on MMC pins, but DT configuration
was also enabling internal pulls. Having both internal and external
pulls active causes several issues:
- Unnecessary power consumption due to stronger pull resistance
- Floating pins violating SPEC recommendations

All changes are based on the respective board schematics referenced
in each patch.

Changes since v1:
- improved all commit descriptions
- removed incorrect claim: potential issues for modes with tighter
  timing requirements due to mismatched pull strengths between D0 and
  remaining data pins
- drop patch 2/4. While there is a host side mismatch between D0 and
  D1-D7 pins, leaving internal pullup on D0 equals a stronger pull,
  helping with poor board design issues and better matching D0 pullup
  strength with D1-D7 after taking into account eMMC card pullups on
  D1-D7 pins
- rebased against ti-k3-dts-next

Link to v1:
https://lore.kernel.org/all/20260212184246.2316659-1-jm@ti.com/

Judith Mendez (3):
  arm64: dts: ti: k3-am62p5-sk: Disable MMC1 internal pulls on data pins
  arm64: dts: ti: k3-am62l-evm: Disable MMC1 internal pulls on data pins
  arm64: dts: ti: k3-am62-lp-sk: Enable internal pulls for MMC0 data
    pins

 arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts | 14 +++++++-------
 arch/arm64/boot/dts/ti/k3-am62l3-evm.dts |  6 +++---
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts  |  6 +++---
 3 files changed, 13 insertions(+), 13 deletions(-)

-- 
2.52.0


