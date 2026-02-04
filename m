Return-Path: <devicetree+bounces-262803-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EEiuK1G8g2kgtwMAu9opvQ
	(envelope-from <devicetree+bounces-262803-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 22:38:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 444E2ECC78
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 22:38:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 19A3A3021E4F
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 21:37:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB2B239527F;
	Wed,  4 Feb 2026 21:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="K0RlDGtS"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012058.outbound.protection.outlook.com [40.93.195.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C24395256;
	Wed,  4 Feb 2026 21:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.195.58
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770241072; cv=fail; b=ZyNeWSmumaTFKS/GUMBNusl01k8uAEJvejGQKvgH6T90fjrgGBXT/myl8GyOwglLhXplUiMTcbOIopToCzla94Ygvs/A9SD+JSztIa2ra8bXYsqbVW8zusG6zMYcj9DNB4erf0Vci8mD7nlL1J87EuAz+IMuLiMYc0sjQmCgu8Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770241072; c=relaxed/simple;
	bh=9v6aqq8dXj/Bkhdm8prxhbCUd+oe8vqEILThooSy9bM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KF2BuAU2Ht+m6kCFFw09IS5f2KdEjICPwYsijFfy/oVbS9/pxdTbKYQQ0eNb4JKSXBN/exPedBcdAdnPd+HzpPMnQYpAECrUeaoAA+FeufebxxjSuHQ6LjWacrsD4y2wjKh4Cr7cGsnwWiI2daR/JhSkEndhQ1EPBqY8bZznYLo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=K0RlDGtS; arc=fail smtp.client-ip=40.93.195.58
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O9m0xGgMkRyxAxKf1PjnUEkkVPe0ntmssvB5htE/hdUXzX2VUEA0OPeKq5vrp1p5LzWXUSlrX6p9joRfuA50Mh/uDrSsK3lH054z7mZQsB3pwxOpBF50hVTNc1bmisbiOVYAxBrn+38k/kWuUWb3Ddi9EyxKpbfcDc1rtlZjDHpMD1/WdHedT6pbNxjR8USjExXtrKs57SVKqsN/+Y8yGMN8UHKer4q/gxN1pzZwtf/Hu2l9kN/NxGJ4IWAfRwRgSPITxO8roDJcmYOtqeFAyMiMYL1FlGbvJmDSOIoJkQ7OjoHnwoPii5cmeuPiU+rcl85E6FawepRslfN5BVmpNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HlzOEU5ZGcHxddbrNrPzlzDMRVSQianGMqjkj4/MQYw=;
 b=Wzvh0MJ+q5Kvup7a+B0EAPlNVb4DwOIRZSeR/P0OdtH28t5cbqdXvZ9NaKkkcYX073kMUfZ6OJpOXbsZYgmxV2M4Odg7qgQ2pM/zzDNEvrtRNeIpp05xLmkkwf0IRzv2ec4Awao4X0g6e5oZXi7R+wW0nWT3radYZMHpbkikne0qnLRCPBtE73r5LWGjy972rAsHkZ6K6aH9igWrAAOjyVmRxNQAMufjPDa6ttS97NR10z8AQ59MZsqjI2Hjs7mK11jY/iwiEzpSIj84585OQL73wI7g++tqEROMc7tN64C60xp9GC0NN+fobHxS3ObsViVioQiBgdbd/Kaj828m+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HlzOEU5ZGcHxddbrNrPzlzDMRVSQianGMqjkj4/MQYw=;
 b=K0RlDGtSLC7sw4BYuazvCq3a2UHB1NkaZkS5wj7+mehbHN6vf6D2gc0sQi8b/PN+fMoSJ/wF6zrEv/GO19h+1fYpObUpVwNbGfub1MR0NHLxduSaAVQTqCS1IHlNb/bIt0/RM9iS+/UJMDQ8Z+kM2b6nD9zvJE6d81fnlCU9yh4=
Received: from BYAPR02CA0004.namprd02.prod.outlook.com (2603:10b6:a02:ee::17)
 by SN7PR10MB6979.namprd10.prod.outlook.com (2603:10b6:806:328::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Wed, 4 Feb
 2026 21:37:48 +0000
Received: from CO1PEPF00012E7E.namprd03.prod.outlook.com
 (2603:10b6:a02:ee:cafe::a9) by BYAPR02CA0004.outlook.office365.com
 (2603:10b6:a02:ee::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.12 via Frontend Transport; Wed,
 4 Feb 2026 21:37:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 CO1PEPF00012E7E.mail.protection.outlook.com (10.167.249.53) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Wed, 4 Feb 2026 21:37:47 +0000
Received: from DFLE210.ent.ti.com (10.64.6.68) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 4 Feb
 2026 15:37:46 -0600
Received: from DFLE213.ent.ti.com (10.64.6.71) by DFLE210.ent.ti.com
 (10.64.6.68) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 4 Feb
 2026 15:37:46 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE213.ent.ti.com
 (10.64.6.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 4 Feb 2026 15:37:46 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 614Lbk1S2231525;
	Wed, 4 Feb 2026 15:37:46 -0600
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>
Subject: [PATCH 2/2] soc: ti: k3-socinfo: Add support for AM62P variants via NVMEM
Date: Wed, 4 Feb 2026 15:37:46 -0600
Message-ID: <20260204213746.2589028-3-jm@ti.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260204213746.2589028-1-jm@ti.com>
References: <20260204213746.2589028-1-jm@ti.com>
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
X-MS-TrafficTypeDiagnostic: CO1PEPF00012E7E:EE_|SN7PR10MB6979:EE_
X-MS-Office365-Filtering-Correlation-Id: c67705d5-3ca2-47b7-5f44-08de6435a3a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|82310400026|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?TzpyK92vsu43wJf/KHn9V97FDcSLj9iowK9NynSmlvlDrrwk0dKEvGPJaU6Y?=
 =?us-ascii?Q?ygf+5F2MiGOMh75R1NtTitYq4y3aE+TPsPurKnoO0UjFXz8Z6tuSLcDJPTGk?=
 =?us-ascii?Q?lj2CiQXZt8FkLT2iiKLvIwp/24RR0Vb8AnKb+0ywdk2OT55FjqqYKVR7u8lI?=
 =?us-ascii?Q?kb4VbYHlVhifQsr2MgyKZtZPBMmpqrifEfrcXuIm/XNGYo3iy44p1a7tfaUx?=
 =?us-ascii?Q?Kbk8kw/GtzFZm5kWD890j9+htYfia9N88aHAlINae8/F6ug+l2e8MgaHh2w6?=
 =?us-ascii?Q?dCGRn52g6DyLDa+jlmvd+LA8aw5srE+e7IioJDQYZqpAfANTNgfMzMEC6ZgZ?=
 =?us-ascii?Q?6yB2wNA+Jw4UGO03NaZB+A6bMednomgVcf2AmnhqgQyHXQ0t+MKbQTICOUmk?=
 =?us-ascii?Q?++kgYH8hUHyjBCxbOAKxs3NhFuOdzz647UAlxudTkkdaMPzBhE7CnPdb2pfK?=
 =?us-ascii?Q?TsPMwMiebo2tAPnN1d+Tp0ezjqRIim+yr6Ip2gTj3Q22fhrtmuBih4TAQalP?=
 =?us-ascii?Q?/GkAAa2j1ezxInSEZeo2ZZM/hZCpAiLxtgQ8A+HprZ7Unw2hZtfH6foZGlQm?=
 =?us-ascii?Q?o3JuyQO3SM0FIY+nbVD09FT9E4KkwTWcJhp0Q957KHUkjcaTCCFf1OcdHqyf?=
 =?us-ascii?Q?Y4QRxqlpMVmJMvKbMqn7RzLa4OySJGyWuQaVDs/hgY2GtK4R98lUwJWS6bas?=
 =?us-ascii?Q?ckB05uIft+w6z7Z4TYTHd/yBnylapYZY7zVJSuFebjo3cnWikMXY8V+wyawo?=
 =?us-ascii?Q?YX7VFoHEMaCBmBSIgtOAhKv0ICi0YCkroIE0D3t/qVYVRRXC+i39mLHrpDlp?=
 =?us-ascii?Q?pPArfBl+YLSSr+f24709bm/EvLADSH+wTbs5NBZMLtsmySqwHRREmapIh8x2?=
 =?us-ascii?Q?g6P/xXL4jZBzz3hENt+CQ1zqdwXaHWVbFNJb5Z0ly0yA5/HXKukBKLBgXLlY?=
 =?us-ascii?Q?/0MirX5L7OykV5fXNFruPfjaxswN/yKco/R7NMyebTzOMzHKEviKGjNkLvfG?=
 =?us-ascii?Q?ehyumMcIFKjKsJd+g2zoQiFEZvU5C4qjt7CzIDvz8WQxJHwQODaldYIM2wgF?=
 =?us-ascii?Q?Hv9oI/d/g+u4wtOqRTy8d3KAj4XoFqs4t5lntScy89RP2WthaKvStYh9nige?=
 =?us-ascii?Q?5WmR3isoNO1MYoDreKzUaVQTfkYHp8NGT78ZlyVlWLM+Xh/EoWpP1XKJ9MIY?=
 =?us-ascii?Q?u8Tnk2lEnnaDparO3Ay6ovvkm/NU58VYDoaR4r+izx+Saly6nj+N3hirVNkQ?=
 =?us-ascii?Q?Vzj3PF1i6/0UUXyC4X2bpwrp+9db8bq7UtsUBLFy1t3FkzepcZy2eaHAWmHw?=
 =?us-ascii?Q?hUV40oyAxuNc+UIbzh8bRJKrHKttou+7Ek+05tN3ZX7DjLDAYqf2VDJaJlWR?=
 =?us-ascii?Q?0vZs+ooLcEB/Y3QlZXGv5TM5eShPvrygpXylMw+ZSz1ht/xAhJi9EOrNigvS?=
 =?us-ascii?Q?itD6SWZ2j20ebkr0ovWNG0UTEJ1aUzVbgC58jCag0rhVzhXNdV/HgwpZMocF?=
 =?us-ascii?Q?574hblIPxWWsZ7Nx5WDPeLVyFuLAA5B09LtFOc6yptehazG4rpciIgNJmHLg?=
 =?us-ascii?Q?bIuMbsxCfyEZlEhU1teRghGJYzHSAXSgsfH3iABwBC0DEVOrluHFrA48fSAo?=
 =?us-ascii?Q?vPfa0SxUpPI3cAQyoB7fRKJ1PI/ICSfEV7rg877uJ8AI?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(1800799024)(82310400026)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	1LwagVMG+skWylIJM6EX4yNPdnG5Ifi0y5qS81vOA2GHSOvYGuWj4CySnBW0mZDV/HQpL0nfAnOCfFZwQ0LasR4OUEFehri+UznrZcwThXuqeGzIDjCRvBtIq/xPhV6oNFtdMi9n7doFLOnTkbJ2s3BI3kHM8hJ3rf6FPTIKV//pHCToaMKle9va76NWoF2zLEhPjIViz9rBPq4DPEoc3sk0kyJiq6z/JAnEWQvHv99SIbK6esF1cq6lhT/j+jSas7x99HfPjf0HIQtDaE/4IUKVEBBnJnizyEwFIINg5Z2RB/Y8g1127RVvgVWZaau6jg4hwLvVDMpqFzBYP5m5Diw3EeVfWBuJXuYtMxP5Gwf6kXlfbrjBSiRO9hXpHFX8pPrznSBF9EKkqAgiK1b/4tsrNOi+r2IqI9614Q7tdINnkIyRl56Xjs7zSSwRiQ4g
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 21:37:47.3191
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c67705d5-3ca2-47b7-5f44-08de6435a3a0
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CO1PEPF00012E7E.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR10MB6979
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
	TAGGED_FROM(0.00)[bounces-262803-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:email,ti.com:dkim,ti.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 444E2ECC78
X-Rspamd-Action: no action

Add support for detecting AM62P silicon revisions.

On AM62P, silicon revision is discovered with GP_SW1 register instead
of JTAGID register. Use the NVMEM framework to read GP_SW1 from the
gpsw-efuse nvmem provider to determine SoC revision.

Signed-off-by: Judith Mendez <jm@ti.com>
---
 drivers/soc/ti/k3-socinfo.c | 48 ++++++++++++++++++++++++++++++++++---
 1 file changed, 45 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/ti/k3-socinfo.c b/drivers/soc/ti/k3-socinfo.c
index 42275cb5ba1c8..4b6947a9ceb4d 100644
--- a/drivers/soc/ti/k3-socinfo.c
+++ b/drivers/soc/ti/k3-socinfo.c
@@ -6,6 +6,7 @@
  */
 
 #include <linux/mfd/syscon.h>
+#include <linux/nvmem-consumer.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/regmap.h>
@@ -25,6 +26,9 @@
 #define CTRLMMR_WKUP_JTAGID_VARIANT_SHIFT	(28)
 #define CTRLMMR_WKUP_JTAGID_VARIANT_MASK	GENMASK(31, 28)
 
+#define GP_SW1_VALID_BIT			BIT(4)
+#define GP_SW1_ADR_MASK			GENMASK(3, 0)
+
 #define CTRLMMR_WKUP_JTAGID_PARTNO_SHIFT	(12)
 #define CTRLMMR_WKUP_JTAGID_PARTNO_MASK		GENMASK(27, 12)
 
@@ -70,6 +74,29 @@ static const char * const am62lx_rev_string_map[] = {
 	"1.0", "1.1",
 };
 
+static const char * const am62p_gpsw_rev_string_map[] = {
+	"1.0", "1.1", "1.2",
+};
+
+static int
+k3_chipinfo_get_gpsw_variant(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	u32 gpsw_val, adr_val = 0;
+	int ret;
+
+	ret = nvmem_cell_read_u32(dev, "gpsw1", &gpsw_val);
+	if (ret)
+		return ret;
+
+	if (!(gpsw_val & GP_SW1_VALID_BIT))
+		return 0;
+
+	adr_val = gpsw_val & GP_SW1_ADR_MASK;
+
+	return adr_val;
+}
+
 static int
 k3_chipinfo_partno_to_names(unsigned int partno,
 			    struct soc_device_attribute *soc_dev_attr)
@@ -86,9 +113,11 @@ k3_chipinfo_partno_to_names(unsigned int partno,
 }
 
 static int
-k3_chipinfo_variant_to_sr(unsigned int partno, unsigned int variant,
-			  struct soc_device_attribute *soc_dev_attr)
+k3_chipinfo_variant_to_sr(struct platform_device *pdev, unsigned int partno,
+			  unsigned int variant, struct soc_device_attribute *soc_dev_attr)
 {
+	int gpsw_variant = 0;
+
 	switch (partno) {
 	case JTAG_ID_PARTNO_J721E:
 		if (variant >= ARRAY_SIZE(j721e_rev_string_map))
@@ -102,6 +131,19 @@ k3_chipinfo_variant_to_sr(unsigned int partno, unsigned int variant,
 		soc_dev_attr->revision = kasprintf(GFP_KERNEL, "SR%s",
 						   am62lx_rev_string_map[variant]);
 		break;
+	case JTAG_ID_PARTNO_AM62PX:
+		/* Check GP_SW1 for silicon revision */
+		gpsw_variant = k3_chipinfo_get_gpsw_variant(pdev);
+		if (gpsw_variant == -EPROBE_DEFER)
+			return gpsw_variant;
+		if (gpsw_variant < 0 || gpsw_variant >= ARRAY_SIZE(am62p_gpsw_rev_string_map)) {
+			dev_warn(&pdev->dev, "Failed to get silicon variant (%d), set SR1.0\n",
+				 gpsw_variant);
+			gpsw_variant = 0;
+		}
+		soc_dev_attr->revision = kasprintf(GFP_KERNEL, "SR%s",
+						   am62p_gpsw_rev_string_map[gpsw_variant]);
+		break;
 	default:
 		variant++;
 		soc_dev_attr->revision = kasprintf(GFP_KERNEL, "SR%x.0",
@@ -173,7 +215,7 @@ static int k3_chipinfo_probe(struct platform_device *pdev)
 		goto err;
 	}
 
-	ret = k3_chipinfo_variant_to_sr(partno_id, variant, soc_dev_attr);
+	ret = k3_chipinfo_variant_to_sr(pdev, partno_id, variant, soc_dev_attr);
 	if (ret) {
 		dev_err(dev, "Unknown SoC SR[0x%08X]: %d\n", jtag_id, ret);
 		goto err;
-- 
2.52.0


