Return-Path: <devicetree+bounces-262804-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2A2CJDa8g2kgtwMAu9opvQ
	(envelope-from <devicetree+bounces-262804-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 22:37:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09418ECC62
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 22:37:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 80CC33015492
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 21:37:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B475395D82;
	Wed,  4 Feb 2026 21:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="OovajImR"
X-Original-To: devicetree@vger.kernel.org
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012016.outbound.protection.outlook.com [40.107.209.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A6D38E132;
	Wed,  4 Feb 2026 21:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.209.16
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770241073; cv=fail; b=VOMX7VHsz/Td/8RfzOk/7D6X6j9mZPzY8JRnp2Nj2vcrBJEprw3Dh1fRxSWS+HgFjjCSvAApcuv/kRKkqPjQGY28J5SGSCbEMnIige/71OUyRawYoCP7cNQOEiUSsd/zNKo4RtRKLq6d3lYZ8SFZJZSpSr9sZVimzDXZOKFlvYs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770241073; c=relaxed/simple;
	bh=8q5cgPiJLM10sgE8UAV80WPxDGw78U/MB1/H4y6CkA4=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=defXWZNmF2CoDx4/4LpHz0EX3UskMd+L5KQuTp0UqewsRU2FqPzUcz2gjRCo6/1Xb1Z3I+CmQ9f3ULVr4S6yMe+hXHgnO7r5yTusQV/34EmHCkj7XEj+qnCrjbyF/4QowG8gw7EfCH1JPSaokyTEpzoz4rF3hWVt5maHjTCAv/M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=OovajImR; arc=fail smtp.client-ip=40.107.209.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w1vA5WFpW7LY9VxhjjV+7Vc12/DVGvW6kzkysxPuFxPc1UUkOCpvmpGiGYHbGpEpzYbF2LJ9PMUQhrGkXYcoSbZn+DqyNkJFexXcu7rd2lOCfIB7YeMh/ngdWTlo+51eVNobeuRp4mnHwGswsaNKIP+4RebTdT4/85UTkT6L59nyA0WzunTavWFuK4MtISyLh+AlFj+AJkCz2/LjdQMOQDN5eRBuUPrNlywGSQyD63aB1Vvg+sUeN2XiGIRvnXV85EXhhIYxNv0u7QHwe7emz/+Rm+8Y3Cm5wHfo3PYWdhRvHhpFaA5U8mApfuFjqPVCPdro7++ttri7M/N4fyayHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Vj7RiRdZnsnx3/Cv0Cewy+wQd70+CULBBfOBkFUIRo=;
 b=EdEYmngkOENBiREscFe5O3oT0pKPbxCGfpGW8juVIyX3Fjoq+wsHwGunL1f/fuLzTnHnAwaVTgTqfub3YJgE8ghI6x4uEUTibTjy7lWCoyPku6ut9vMsiiWRxn9bZgnXGpNZEBXTAl8LYHPszeXFy9KpV0Pxgb5eItuiTI77oLEtrEq/mWWCNwF1kTAP9f8/WDB8KyBo3+XDbZCec6mO1GjgSw5HTT5zxSeDeyokMQEf1Pf7o+MR/x20OTiQptnMKwwsY8MicQce2eHU84VdXjAk9/1sp8LT/YSgJbLyHemLnClO+5FQfwKrW3hTTZmeNBHxUUbPQurpZejaihdUfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Vj7RiRdZnsnx3/Cv0Cewy+wQd70+CULBBfOBkFUIRo=;
 b=OovajImR/tDT1zAF3gpRRFKPIqfGNHCSEjx73Rt09MOz1DvrVKQV4uvINxyZXsTSZBnLGPxPmp7wRTSsfQc7W9iU8K95dC/rwwrnAyvhzO4OHqB/aFV7AQDBuM35aWk0AlBeV1ahQc438LMH/DVLISupH5sAULPtFq//xB8IvZA=
Received: from CH5P222CA0024.NAMP222.PROD.OUTLOOK.COM (2603:10b6:610:1ee::9)
 by CH3PR10MB7742.namprd10.prod.outlook.com (2603:10b6:610:1ae::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Wed, 4 Feb
 2026 21:37:47 +0000
Received: from DS3PEPF000099DA.namprd04.prod.outlook.com
 (2603:10b6:610:1ee:cafe::d) by CH5P222CA0024.outlook.office365.com
 (2603:10b6:610:1ee::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.16 via Frontend Transport; Wed,
 4 Feb 2026 21:37:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 DS3PEPF000099DA.mail.protection.outlook.com (10.167.17.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Wed, 4 Feb 2026 21:37:47 +0000
Received: from DLEE203.ent.ti.com (157.170.170.78) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 4 Feb
 2026 15:37:46 -0600
Received: from DLEE205.ent.ti.com (157.170.170.85) by DLEE203.ent.ti.com
 (157.170.170.78) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 4 Feb
 2026 15:37:46 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE205.ent.ti.com
 (157.170.170.85) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 4 Feb 2026 15:37:46 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 614Lbk1Q2231525;
	Wed, 4 Feb 2026 15:37:46 -0600
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>
Subject: [PATCH 0/2] Add AM62P silicon revision detection via NVMEM
Date: Wed, 4 Feb 2026 15:37:44 -0600
Message-ID: <20260204213746.2589028-1-jm@ti.com>
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
X-MS-TrafficTypeDiagnostic: DS3PEPF000099DA:EE_|CH3PR10MB7742:EE_
X-MS-Office365-Filtering-Correlation-Id: 26cff23f-5b6a-4d08-df9e-08de6435a377
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?JMOVNZptKb04gHL4PhINBJQxXZ4cz2Ru4ph+3jCurbLeRbGLarJkjAmaYo4z?=
 =?us-ascii?Q?5ETG1qlWuZ0Gv6S8AsPmzZ3cIJ+3hSTevkoINhnv84K3gPJl2NoqL6gL/J3Y?=
 =?us-ascii?Q?nHqoeJGH8ndBB9zx4pJpfQFDvvP6cMv2O0s1r/AHLNOez49z6ddemXiCDNVd?=
 =?us-ascii?Q?q08IcHb9LLr1H3OX3ezJKtBuv10N9bBQJXdch3RALQUd2lu8fmUVG0DG+PGt?=
 =?us-ascii?Q?7hJdQ3PVqW99zbJTVYZmAH4kH07qT0pFiFdd1fmrpFCCJLZDY1415tXyg7yt?=
 =?us-ascii?Q?wpfYl6Y+Hwdd6lA/m/idLSfNY44aFmw1vt5zWmx8tY7Kpg2WqDKbpOLNeKI1?=
 =?us-ascii?Q?hzsHlhZhGWSv0wuVg45IEe6cJCIfPYgxnaPsUPOQStgMcnDXC04br7BOpkzN?=
 =?us-ascii?Q?m7zyatIIWfXgvCWYm+I4eLjcvYsK9wEoiSVka9uOsmUbA0fbSplO3NZVjNWH?=
 =?us-ascii?Q?Bl7irf1zSgBJtRd5PRnfGvIjGSq0rs7Um1rLIBYwIMJkAmTVElQGTu0yC6f9?=
 =?us-ascii?Q?lEbOfD5omUWeiASvHDRRFrIvL8CV0vfqB36qa3m2sPoo1RWOPPXojv47OTQm?=
 =?us-ascii?Q?1LOH8tj2guH93TMnOaUKj2bPNDGdHORNSQnba5vQYXodbRXWO9W3pRFyvGKB?=
 =?us-ascii?Q?DhlqgptAfk3tW+wiaDz8uD8+reDOd7mLXaMoMlxKkqb7mnz4BV7fWQT9T70k?=
 =?us-ascii?Q?Et/7qrokCNnPEQavYBzW7g/Ee8VFwmHoRRSmX4CWi0Kw4ua/Q94nhhInrJ0H?=
 =?us-ascii?Q?em6FxjA+bHnYGGmcfpGGDdGLzrpC8vaSsprtqURX1wkh9z+eOfi3WKbAByeu?=
 =?us-ascii?Q?Fq8KNwRkUemUy0L0S33GU96RNI/MArLCf1nqFrcCpaexTnXJi+JhfQpsat5i?=
 =?us-ascii?Q?pu0H6UpiMR4FzkRegxkWHqYOT43001T6flqVMq9fY0LK3Ik96pS6mfGRMnzp?=
 =?us-ascii?Q?4zMqyKSGLj0uufl7TyYnUOkFGPskUKO4vkpc9LOQvk1QVuUq6jEaEKkz9ZPF?=
 =?us-ascii?Q?A8FJh8iXXj9MNbIG0ZcxmHeYWs65jr1aKB1GoPmzP93T262QCQ1WaB/EYGpG?=
 =?us-ascii?Q?Xkq7oPpc4dwgpln9gE+Azme36r1Ch4CYA8IaZsay5fOunPzdm726DbKnT8DI?=
 =?us-ascii?Q?gqclIREKKOjrPcW/UPKUzzMG6lx5VSq6xgHEO7bcJcKlg8fBPaYyrxsalYth?=
 =?us-ascii?Q?UR6N8Z2+75NnF6l3wBPy7rVeYm7xylhJOcQLuYIyoElsAvKTIvNPTBE7uTun?=
 =?us-ascii?Q?X2vHk6j7yGM5kp9xSZXfHQFCxXl+B9xDd7N9nqeBk371ET4dqOR/mPv5YBqo?=
 =?us-ascii?Q?/y7ObF2d78EfLyF4N0A4exVNyNArZn/2cCcUw6sPfSddvFqFU1c9y04pwh2c?=
 =?us-ascii?Q?Z0Teu3+ij011r4Vl0mzejM/CYCjngmpqpluPh1Is8vZEtxwcwvwQ+lsuL1KI?=
 =?us-ascii?Q?kBGeJ615eulOyYUxz8SBAm+IimR2gsWvSDn3xZMyl+sA315fR0S4rUBYNDGF?=
 =?us-ascii?Q?FpMrARcMp/t9v3PDRLsePBAWxQm3+9tw6psfRD43OsSreaOCFcmh7JJyXRpj?=
 =?us-ascii?Q?wE6fVa4Fl0cJqadcS47sFQ29V+J2fkvsp15eziT6MaC8Pm7/g9sTAIqftwmP?=
 =?us-ascii?Q?M3XsptCr4gaU1t465H2hN92Og7eKH7Ywuj4SaXLb17/3bkH3u4eFBrbApSQ4?=
 =?us-ascii?Q?Mu0CCj6vHy7LqYKWjG9I9WjXuNY=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	NWIQS5MJnCKujBR4bNpM+olQX9oCiTwZPdzHSoasKILM5+a0C+kN87U0epN9+35TqouRMLXmPICIGmKMv9EGYsR5tp8jBSkgCmW8q/hHDHqixYLb4JL1ebn3CBVH4acbI156NHrN6YUOxd4sOcVcsSWgx0HO6C23CV2qCxbnIu9WTs6DLvOC4ZjCx2inZQU0v8NTvBzYwDFQuLitZEoYcyHHl6m9ktQIAWgN+171/GoOtP8BiEVq0SK929o6o9WK35bu88YsjoufFw3EbfDxyMrst9nMTm3YsCHsESqqdJeCpwwEL5BdhICtJ7ODuWcJoOvXtujpdibfmKqbbBEl+UqDzvmhH+2yvJkDdqxIXELFzb814ddyGYG9U5jcVwtTZHWGG1i9JhHBV03Su+2/oZsiizGLKKq5PD5JBZ4YMDKtP9q1MT7rx6/TmL/n6j/s
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 21:37:47.0794
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 26cff23f-5b6a-4d08-df9e-08de6435a377
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DS3PEPF000099DA.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7742
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262804-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ti.com:mid,ti.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 09418ECC62
X-Rspamd-Action: no action

This series adds support for detecting AM62P silicon revisions using
the NVMEM framework to read the GP_SW1 register.

Background:
===========
On AM62P SoCs, the standard JTAGID register does not provide information
on silicon revision, instead the GP_SW1 register contains the information
needed for proper device identification.

Proper silicon revision detection is required to apply proper workarounds
and quirks for different silicon revisions, particularly for MMCSD [0].

Implementation history:
=======================
An initial implementation [0] added a second register range directly to
the chipid node to access GP_SW registers. Following upstream review
feedback to split the patches appropriately, an alternative RFC approach
[1] was explored that introduced a new NVMEM eFuse binding specifically
for TI K3 SoCs.

This final implementation takes a simpler approach by leveraging the
existing NVMEM framework with optional nvmem-cells support. The k3-socinfo
driver can now optionally consume silicon revision data from the NVMEM
provider, making it more flexible and avoiding the need for either direct
register access or new bindings.

Implementation details:
=======================
- NVMEM support is fully optional - the driver continues to work without
  it and falls back to SR1.0 for AM62P devices
- When NVMEM cells are present, the driver reads GP_SW1 to accurately
  detect SR1.1 and SR1.2 variants

[0] https://lore.kernel.org/linux-mmc/20250805234950.3781367-1-jm@ti.com/
[1] https://lore.kernel.org/all/20250924210735.1732423-1-jm@ti.com/

Judith Mendez (2):
  dt-bindings: hwinfo: ti,k3-socinfo: Add nvmem-cells support
  soc: ti: k3-socinfo: Add support for AM62P variants via NVMEM

 .../bindings/hwinfo/ti,k3-socinfo.yaml        | 12 +++++
 drivers/soc/ti/k3-socinfo.c                   | 48 +++++++++++++++++--
 2 files changed, 57 insertions(+), 3 deletions(-)

-- 
2.52.0


