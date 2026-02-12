Return-Path: <devicetree+bounces-265180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIu8LDsfjmk//wAAu9opvQ
	(envelope-from <devicetree+bounces-265180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:43:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17227130607
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:43:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A10773043BCA
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:42:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 193FF28C869;
	Thu, 12 Feb 2026 18:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="uCgadDDE"
X-Original-To: devicetree@vger.kernel.org
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013063.outbound.protection.outlook.com [40.107.201.63])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0BE21FF3F;
	Thu, 12 Feb 2026 18:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.201.63
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770921776; cv=fail; b=PolqCwqKkKnNpwnCcF6PxNlCIPPts3yYajJYTdneaj9yT0ePJxawn3gdFk05S8khatLnQddO8OqzixBGNFw1gQa/O77L3iuQq8xDf6wgUBkhe5pFgqfZTHIueCoK8TljAfaPbhqcArKwyRmVc5lFa4xEZ7kqsMEmODkiDB0zRnU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770921776; c=relaxed/simple;
	bh=veB6y8luHaZeSskOwMsvOkZdgQ62YwN0IYPvWhRSltA=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=JoUqq1AkMPenRVXBov/zVbhcJNnScmfJF+15i70/7JEDNkSX7TJVHdbPOD9oEU6sf12lFVR3dg0Ts7UqOjIB0blXGS6CqgzHhtswqr+hZ/69XO0PrBuqlyPkmxl75bk906D1n1i6Z8kYJCUt1Q4ZoUmMdleSeFsxQZEaKVIXTa8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=uCgadDDE; arc=fail smtp.client-ip=40.107.201.63
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bI6JZ6EZ/Ek+7TQ1cJ9t4FsKlH7hPSfZpI0kEOn+HzT1khbMyXflolKFXbYQTfElmnWmOAZ7xdlVLMv69NV69cEi39eO6e/fpC9EAHw4bfTQ0KDFnzP8XSWBbelI6Wu8zTJZOrZcNwta998p9+tzk3tb2LJTjvtQcsGw9cCbe1SQJTEhmxCZwlYDDYR5dozAUoJqJmRGpbNsEuKC3sTxuJ8kKvZVTFzvWnFgISCydW/USN4etIcrVkVW+BjXiDCUzyVPJKS5JrI0Hhyop4iIr9ZwudlyVxlIC+/Gk3pMVdyEnZH/Fa3G+R+elQ6sOvzcDRBkBUdmHDPfgPQ2tVjdhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GFNqVl627KbDVB2bXXBClx+3peaRi9R3ur/yH/oEI6c=;
 b=ORHXlWFynUWcjzDvZ/xqh1kXa57wtbB4l2G661MWzKmbkrcey0DNyMxFMCKqRRAIs2gEYP/gdPoZmjx2q4x2cNRbYHGuvbndkuOA1o0idhh/AEcXdBlSDhZ5T+jv1sT15YhfeXT3/NSXrh/P3K+a4Ofmw6qX8rOtb/FSt0qpyFdgMFdquoN1tmmTSRvCom8u3/hAdXCZ/kriJcqcsCPvj5TVatj5jJ6LRjE0EMVcIOsJkcCFKpAWBDCnyxA9Cq9NFeO8sv5pOB94/JGS7Xo4ewNv6iDBw/MPAmBiBNF9e0ZTMdYjOuiTueqk0YOpo9vICTKYXumpnR4vFkSHB3MPLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GFNqVl627KbDVB2bXXBClx+3peaRi9R3ur/yH/oEI6c=;
 b=uCgadDDEMCIZtim5Nj9N3KGmWkTLTGPWhbSXm/3e22361yTk2xzDKCWIfUnGqXmvkT6DoqBbzIqZZ/IyxChS0DqSbTCGSggDZYL2NRA85f1NCqaOeX2KfUvIunguRKaLy4m1iffl/qSquPicin21QT56jwKUBfscdzYyEQ8LOj4=
Received: from CH0PR04CA0051.namprd04.prod.outlook.com (2603:10b6:610:77::26)
 by SN4PR10MB5590.namprd10.prod.outlook.com (2603:10b6:806:205::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Thu, 12 Feb
 2026 18:42:49 +0000
Received: from DS3PEPF000099D5.namprd04.prod.outlook.com
 (2603:10b6:610:77:cafe::9) by CH0PR04CA0051.outlook.office365.com
 (2603:10b6:610:77::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.11 via Frontend
 Transport; Thu, 12 Feb 2026 18:42:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 DS3PEPF000099D5.mail.protection.outlook.com (10.167.17.6) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Thu, 12 Feb 2026 18:42:49 +0000
Received: from DLEE202.ent.ti.com (157.170.170.77) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 12:42:46 -0600
Received: from DLEE211.ent.ti.com (157.170.170.113) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 12:42:46 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE211.ent.ti.com
 (157.170.170.113) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 12 Feb 2026 12:42:46 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61CIgku24002204;
	Thu, 12 Feb 2026 12:42:46 -0600
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>
CC: Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Moteen Shah <m-shah@ti.com>, Andrew Davis
	<afd@ti.com>
Subject: [PATCH 0/4] Fix MMC pin pull configurations
Date: Thu, 12 Feb 2026 12:42:42 -0600
Message-ID: <20260212184246.2316659-1-jm@ti.com>
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
X-MS-TrafficTypeDiagnostic: DS3PEPF000099D5:EE_|SN4PR10MB5590:EE_
X-MS-Office365-Filtering-Correlation-Id: d749a848-e95b-4436-0411-08de6a6685c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|36860700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?03WKoqYXOkGEJ0bvc/qaUu0hxKkVVSMa/tJ8NZwesGv5TV3sJLzozTfEf0tq?=
 =?us-ascii?Q?DU1ZYO0Vdx7eTusw45eQSw937G1kXs79eEQWfQE/pTBr2GDz02GTdkbu5fRg?=
 =?us-ascii?Q?NvIdPnuRYg+QMrJpcdy+rO2L7mHpN9VTFK4AG7du/GITGv59wAkvbyv7EDZS?=
 =?us-ascii?Q?84UDorLBhq87QA4ONXkcJC11gpKbDjPoYFDpRSISp3SQIpFLjRhuuobSBbFE?=
 =?us-ascii?Q?JipQT0qxscbIgZQ8b2ZudYbBtQBF7hZiE36MUuXbdgeXbsBMycIjjJkCCjue?=
 =?us-ascii?Q?2ee/WP1FabYycujnpZNCIqPXbiQYEmNBviDvZBrKa1afxBCpX3Sh2C7EqZ+E?=
 =?us-ascii?Q?YyKMQYrbytC7RPDnvX4VZxXAn2KS5LrWnvX+Kayb/raZcOHSWETkmN7Fj4Rt?=
 =?us-ascii?Q?uikKlFjspCTHKp7wLbOU6pohu4AG+1O2uPM/wYu+NS48HGcxSt56anwT3d0z?=
 =?us-ascii?Q?m7qM0/t9Y81jyzqG/NyhVEgI5Hc8OVNolK5LpNCxoHT+J2SS2torZ/F11oxT?=
 =?us-ascii?Q?7P5S1Kn/BODkRwbJmMO7DfktbGLWiqTNvw75dh9DqojPw0wnyodNnfpvnVLR?=
 =?us-ascii?Q?pqdgAXUa5vEa68dPhT/iX5xLI6RONjlKujgJzskv2/HzMaGe1n5ll1VrtuJB?=
 =?us-ascii?Q?cNOY5u1oGC83v84z7YN3TDfuLR67qBf9hb5epVNHX1fl7O6mCzdDglUO8Vq5?=
 =?us-ascii?Q?Kh/irj4pQmUbHl4hcPjMQedNAbG762YNJdibTNfUTbNNHiTOLTk2PtqX93Hq?=
 =?us-ascii?Q?3lpCuYz9L1rXpFYi6ThtPX3LamL/uOjh0/BQMig1/AoIaXLfk1jwwqBCR5/N?=
 =?us-ascii?Q?9cE43W7aR34VYudys7LBlOlFOt1YfNbtNXkcr04lM7/g244KjRRntOipC09j?=
 =?us-ascii?Q?FRHfJ/xnuWuJeiQ6sYUX5KSWVENP3L07hRsi7mp1t8dmi4WdUfWnDgeKZhnS?=
 =?us-ascii?Q?5muQXPQ84dVaZZ5CwJ1ZecKXMH3aqQFU/iwhGDiLJ2fgdZ60Zkc1zEf3wklH?=
 =?us-ascii?Q?SzSBa9qpkWYef6QnjI4LaIjjd1xk+S0e7vMkAwuK0QMUBw0VlZfdjCQK+igq?=
 =?us-ascii?Q?JqvrXxkK1S5A6bSb6NxlToOQNzRFiAJUMeaoh/XluA3yp1vjOPHawYMqHy0+?=
 =?us-ascii?Q?lx9KQTNTkYA7Fux9BP5K6hRLEnv17AR28Zrtk7K6pfkxAeorx4WC/aWg06Ce?=
 =?us-ascii?Q?Kw4jEFmfm7NoBYVooAoaPRFCjYUOacDzYLFlFv3fdZhRdKkoVTsKOXC+vUi+?=
 =?us-ascii?Q?md2uy5+/yjPnItyZ4Z4m/HLAZ5epeK4lAX2QaS3hIoNJoTrbCH76f/2aJHwY?=
 =?us-ascii?Q?Dpx8wYKVZ0h1/i43SJQFtezii+fsJa+hQ150F90pCn6kcIJySX7rgRYA8zd5?=
 =?us-ascii?Q?GzvcZWHVoiLDiM7XhbyPC5kWKzRUCh9+ESWP6grAoIevZph/OybFQjAdaRCe?=
 =?us-ascii?Q?uCn6NAtsBtwu6WBPQc6cmaZJwbUMUIMdk7okM20Mn6/X4BQvJ1Yvnbk7dKBr?=
 =?us-ascii?Q?zk5VyCBwmGZ11PrQXhXh/fIEYf45ceW/+q6iEdCSiWyiAaPCYOS447YMXDQu?=
 =?us-ascii?Q?YWcPuzq8o/FDbySLN2XbwGhrku3jhLPd2BvDU+9SX3EIn6kxKFccWmYo5eqe?=
 =?us-ascii?Q?Z9lwbgQwzQMhcLmtKei/VhsncZACxTYT7RBB/X0Ry3Yo?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700013)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	eyNgTbdW7R/MZIl5/Wm5I9QwpIuaxhVDxrgqdoJ26TkTdrpxRf9Aho3knsZYHqTfaKej2MVgmoRFW1tGcRdoEoNy94QSjmhZCHsv7sibPFgz3/C5cf/mIlaiHJbBUxrtjxhwEbPouJFUqNKHPMqeOB3ecGEOu5zE3hUgSACEMnSH5VPeiEIjIVtqbdV0YbXtVs+0mrkiHvGe1Hm8t0v965lU5Tfg263iFMhONNQelVT5fvG83dctkOD2iyP39adcFo1Cn4FlVasO1rhHXetHJqKNljfkLaour3JfV4feb8SNuN3HaGD0jHk8pqzsex6ypGvwA0e26ulN4KFAx4htRAHmnNaD5hoKB8o4mwUTSaOQ8TVuY1vYVXJhYJVTMQztyd3y6fTiR2QMDhqxBs7WLOhnbHFfa3wCr9uuEu7vQV+8SKE3lbqrvKmNQRCPXOAY
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 18:42:49.5594
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d749a848-e95b-4436-0411-08de6a6685c3
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DS3PEPF000099D5.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR10MB5590
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-265180-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 17227130607
X-Rspamd-Action: no action

This series corrects MMC pin pull-up/pull-down configurations across
TI AM62L EVM, AM62P SK, & AM62 LP SK boards to properly match their
hardware design.

Most boards have external pull-ups on MMC pins, but DT configuration
was also enabling internal pulls. Having both internal and external
pulls active causes several issues:
- Unnecessary power consumption due to reduced total resistance
- Potential timing issues with higher speed modes due to mismatched
  rise/fall times across data lines

One board (AM62 LP SK) lacks external pulls on eMMC data pins and
requires internal pulls to be explicitly enabled to prevent floating
lines.

All changes are based on the respective board schematics referenced
in each patch.

Judith Mendez (4):
  arm64: dts: ti: k3-am62p5-sk: Disable MMC1 internal pulls on data
    lines
  arm64: dts: ti: k3-am62l-evm: Disable MMC0 internal pulls
  arm64: dts: ti: k3-am62l-evm: Disable MMC1 internal pulls on data pins
  arm64: dts: ti: k3-am62-lp-sk: Enable internal pulls for MMC0 data
    pins

 arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts | 14 +++++++-------
 arch/arm64/boot/dts/ti/k3-am62l3-evm.dts | 10 +++++-----
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts  |  6 +++---
 3 files changed, 15 insertions(+), 15 deletions(-)

-- 
2.52.0


