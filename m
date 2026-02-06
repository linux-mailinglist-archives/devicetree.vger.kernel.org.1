Return-Path: <devicetree+bounces-263498-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BIbEWBAhmmFLQQAu9opvQ
	(envelope-from <devicetree+bounces-263498-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 20:26:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C6805102B4C
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 20:26:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9908F307594F
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 19:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEA513093D8;
	Fri,  6 Feb 2026 19:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="gee9IEfA"
X-Original-To: devicetree@vger.kernel.org
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010053.outbound.protection.outlook.com [40.93.198.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A62330AAC2;
	Fri,  6 Feb 2026 19:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.198.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770405561; cv=fail; b=X0v7CaAsmYxAa4MGKyi3FQ1tDVcyunxj6+vfJkBD9m2GUJXpkwKshWtNs7ZB/caHBR78v04YAK77fXjpnfFN8qTNgOBIENNbgSlLooRE9RrdCiAB//VyPqibmGdYLYWUk9Y/94dthjsO7PbXWgC2rw7xFViLO5E3Em9k2bDLK88=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770405561; c=relaxed/simple;
	bh=cWpGP6DXH2p0RikV9NjZEhUmwh6FVPmPiIYKEjAXZa8=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=q0+4015xYlBeznuw6490YvLgAaGA8rTQMaXMTsSsJ61kSZYurYHRv8VSGLxOMmgcQV3P/R+q+zRPkK3Rk9pPNu4sT5h6HKQorhGi9AzPJD0rBpURRWvci1HrXjLeowxo9vDkSnzddY+Cl/BjIb6GhulHj7pID1rV9a0H9dSzkrY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=gee9IEfA; arc=fail smtp.client-ip=40.93.198.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WW1ci42wC+7oLVy7Pjw0dYNpm71Ps1PDvV5szJYHbBpyrVKMKWtDJm+lujl2mO2+vG04OpOuP3cpONrC+Nct8irpRuJ5mExOU2oJsNF9MGMQaxQfTnPchUpV7tqRfrdxSxcuQLs1IVXMVejk6iNfiPjp1sGBzGLw4vvnf35sKM6CGNxmGnNUcjwFhM76YWijyCe5wZQGICssXCoK8hvKMfhdqE3TrWaPq19XkWt1M0iGSf6ja/baBXO0rdyYSDfPUZj94jdlPQI34WIWM+VDlaVmF+z2/qs8ITKD5zF3FD1d+rqIifrARRW57WiQCAqOQN9dkvi9EsqMAQZGFWgWNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4qmrrL5NrgWv4cD31qqNeopVaYa3hk0JgjbXD5+FQ0U=;
 b=mQ2Dm849aLI8pvvalRaP0PwL71GkvL2Ga9OvWkaXp0pnIHM4W3R5NuVSoJo3kPX7v8SgfCALcnFULgMtDwUMtnsUoWLGlMvyZ5uysiKBybmgTKJjiwkRVnvciEztP7FNkXdxcOYn9DzJvaOYs2WkaK2pn2MJ5kxPmBf/qeJ4Y7I0ak3h8IBTfMe55GIZQsUSQoObj+p4d9wfFGfVW1jVFP/pNHiIy2dzVYoEby9/7UFZlXXqldECpvIDAue9TbR5qb2ux6QpavVvDmUJPhnH7UbTb7FBIBnKw7PbbpRRnWR4/OBRUTzpOTWSThKIr6NdmG53IdI8e0ED52GVq019Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4qmrrL5NrgWv4cD31qqNeopVaYa3hk0JgjbXD5+FQ0U=;
 b=gee9IEfALdmttXIs0XygTYELsarLKtJZ8DDkyrDfVeXod1DUA5HMAlEpSYi3f6IB4QeLaqNgQcYuxR1SFzz4LIe+juRMeFtdF2tLhSXZ5S2PS/K/3QhIceavcGAtiLgno5Utl+bNvrrAKJ8vjo/zDA6/m8HXxO9RbyTnwTRrr14=
Received: from PH0PR07CA0015.namprd07.prod.outlook.com (2603:10b6:510:5::20)
 by DS0PR10MB6870.namprd10.prod.outlook.com (2603:10b6:8:135::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.16; Fri, 6 Feb
 2026 19:19:18 +0000
Received: from CY4PEPF0000EDD0.namprd03.prod.outlook.com
 (2603:10b6:510:5:cafe::24) by PH0PR07CA0015.outlook.office365.com
 (2603:10b6:510:5::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.16 via Frontend Transport; Fri,
 6 Feb 2026 19:19:18 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 CY4PEPF0000EDD0.mail.protection.outlook.com (10.167.241.196) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Fri, 6 Feb 2026 19:19:15 +0000
Received: from DFLE212.ent.ti.com (10.64.6.70) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 6 Feb
 2026 13:19:14 -0600
Received: from DFLE206.ent.ti.com (10.64.6.64) by DFLE212.ent.ti.com
 (10.64.6.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 6 Feb
 2026 13:19:14 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE206.ent.ti.com
 (10.64.6.64) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 6 Feb 2026 13:19:14 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 616JJEK61401656;
	Fri, 6 Feb 2026 13:19:14 -0600
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>
Subject: [PATCH v2 0/2] Add AM62P silicon revision detection via NVMEM
Date: Fri, 6 Feb 2026 13:19:12 -0600
Message-ID: <20260206191914.52878-1-jm@ti.com>
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
X-MS-TrafficTypeDiagnostic: CY4PEPF0000EDD0:EE_|DS0PR10MB6870:EE_
X-MS-Office365-Filtering-Correlation-Id: bd8965c9-701a-4cc0-0c5a-08de65b49e6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|36860700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?rM8BjBvNHjGyFkdnF/pMhd/Df98qYSyc7AFvDepeS2lNhhywcYByIRYsXooj?=
 =?us-ascii?Q?kA2/s0fu4ioA8Peu0CNw57IfwuaR/yOOnOKa6KX2D9FAXoCrgyktRdEaRTZK?=
 =?us-ascii?Q?MnmT4+L6+A9raY8ax04aLKRCJxFh2/Eb3SnyNy9lUxiqjpyyhWtwFijTlfr6?=
 =?us-ascii?Q?HuovRTlrQDSFbl23/oX53Em6eNLHjQmPoD4bxbv1n6RqjQ9bxPOvjcG7/y7s?=
 =?us-ascii?Q?Raw0YGNrAjzhJS2saynV0uFen2Yr8jMOhADPRXXKncdXD+XDG7gN92ObpxXF?=
 =?us-ascii?Q?XzZO4EZbneJrP9z+asI/f7/X0q+OV0DXVrjKf8q/EYt8YnvF5ybLx77oE8ll?=
 =?us-ascii?Q?YphQgQNS9QDdjMNvS5seIiI0T3x7ijSDqCLz+TTec/1RRRLexwXhS9P6rajM?=
 =?us-ascii?Q?BybIdsekOTmJ1XS0eKGY6dxN1l4UIBm15+OMHPfCILTQRXSNpFeAIzP1HbV9?=
 =?us-ascii?Q?Wxrw5I684vHyHgSFbm+Qfccu/yVYqaX8NfIhCeWy2EXE8HfVOOExO3RmT1UO?=
 =?us-ascii?Q?QTSLBYojgCyr341A8Pgzpb2HgTtxFg74fodfe5a918L/MJORyJkaQrSNKONk?=
 =?us-ascii?Q?Sk38bqzFYZche5EmiozpMSMvKPcBO6qD719orlFrA3BJdzzE2Z3wbs2Xk0lu?=
 =?us-ascii?Q?o9pFrVFYJg379c6g8KNjOovxoojrd83lOYvJhSFqZ/vT4lN4ZYSiVWaa1Kd+?=
 =?us-ascii?Q?pvwLfQgU8J6ciPOVS/CbJNkohi6W+mw4+vhHI8MLjKKv2vGarIwJMkvj2+tF?=
 =?us-ascii?Q?VfaSM92LCWSPaSa78CyKAAO8rWgYUrkfjSKgaG697nKCYgXpax7PQF8uvOvc?=
 =?us-ascii?Q?bOn2LD6AcZfpkCtqdTLhqDG1jqb1+khUMGN48u7iK7TX9ur31V+BUjGuPlDd?=
 =?us-ascii?Q?XYMx9SYH3LXZiOrs8c3K1e+jUgO3YeoHVyXB4ai7iaj4orZP6T3Vrz19Z6pR?=
 =?us-ascii?Q?47q0TfUq1qEqLXF64kZssbyg9dlJPDmnb1C4UjaHlkbSY7el2ysuhK4mieUn?=
 =?us-ascii?Q?v0JQ3nd5PB+A4km+Mrk/h1g70BN9OsZFE8iseMeKAIgbKSJVO+pqBL6CgYC/?=
 =?us-ascii?Q?W4Q2Fo/iZHBilnaweHTqfvmdvCNSyLaZKzkGmgzjRKbifb/zDsYuAcO/J9fq?=
 =?us-ascii?Q?THPHs759NaBdLYDY3D5w6CHsQTpvsHx6J7BwyfJm/zaH5w2wYd2bQfEpxaA6?=
 =?us-ascii?Q?XBbdLS0D8y386VQxM3aDutXZQ8jfTRgupVJkTN1W6SzCSaNPJD6+DuiZei96?=
 =?us-ascii?Q?0k3aDLPqcwmiX8hYcvbpgdnksIdrQGC4/G1/f9wPmdnqubKaGKVBcvFZ57Yb?=
 =?us-ascii?Q?RxDKyHh9c6SxsrybREtHIwNc5xiQhixut3v4tfa9pvm9KlixATXKd68khf7P?=
 =?us-ascii?Q?unBvGVbHBV9OvlZbX9IUcHSTTeG6IPMFKgknbGdTiJMXy01qJQjfN5RSORPn?=
 =?us-ascii?Q?agFo0pi+QwO5ovJGRjG47S6grk5PkR+lX+C7FYdCBP5JWgeVgtSQTZbMRY8u?=
 =?us-ascii?Q?GNS5hr4pKnyietoiEjJ4EyCPDwfqKvWNBpZay1c2MoUONNmzmMZdJBj53NuX?=
 =?us-ascii?Q?DoeYsLGb46h5FmldOYdalQIJdOKJ0eWR61m3mKXP36jmMplE6vk+8+QKBqkH?=
 =?us-ascii?Q?GEPyTajzju0tgZkbpSBQdBLbVtRecGBOETT2S8ZOuARFNUZryugwrm3NvW4w?=
 =?us-ascii?Q?80K9u4mjgAn5icAIIbsshQ0jaCc=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700013)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	WRaPh/VZki+helQnwkSi0HWdEvPyMZkTvDeK3wOd343LLoADe/+LKNilvw6pRSX99a1glYGecJd5qzsETs5L9QPOqj8BWfpqw6pRdl6gpQr3EGBEZ+pOOtRAxgLRndfJr1X7W1Jw+J/joP3IGCph0j2szsxzJFLxVH/3MN5shgmkgnG8PkiPuK8+Ksn2g8KF1XWEsy72jjTTz3yh6GrtS27TVchDA7xayL9Q/nKHf0MQMpMqKVMxYQWOt+wLHusCr8WgHcil9/f+SSF5LalNL9BgvPgCWy/cLSBjg6vFMGgubAMY0Hevl12O8NOt5l6KWVJtPCDIGPzy6ff4senN2G1b2Ag9Xz4uNejQ3EZULjmmaaRuYnZYrxJPNFJox/LQxM75oNHM2TYkvP4v+NYBXxAzkYzsfkemWXQS9kxE88g54ym3WVNWtyt2Rf46Ub1s
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 19:19:15.8638
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bd8965c9-701a-4cc0-0c5a-08de65b49e6b
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CY4PEPF0000EDD0.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6870
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263498-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:mid,ti.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: C6805102B4C
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

Changelog:
==========
since v1:
- Drop valid bit check, and determine all silicon revisions from ADR
  register bits
- In k3_chipinfo_get_gpsw_variant, merge detection of final return value
  and return action
- k3_chipinfo_get_gpsw_variant parameter: switch pdev to dev

Revisions:
==========
v1: https://lore.kernel.org/all/20260204213746.2589028-1-jm@ti.com/

[0] https://lore.kernel.org/linux-mmc/20250805234950.3781367-1-jm@ti.com/
[1] https://lore.kernel.org/all/20250924210735.1732423-1-jm@ti.com/

Judith Mendez (2):
  dt-bindings: hwinfo: ti,k3-socinfo: Add nvmem-cells support
  soc: ti: k3-socinfo: Add support for AM62P variants via NVMEM

 .../bindings/hwinfo/ti,k3-socinfo.yaml        | 12 ++++++
 drivers/soc/ti/k3-socinfo.c                   | 41 +++++++++++++++++--
 2 files changed, 50 insertions(+), 3 deletions(-)

-- 
2.52.0


