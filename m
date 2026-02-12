Return-Path: <devicetree+bounces-265179-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMAtCDIfjmnp/gAAu9opvQ
	(envelope-from <devicetree+bounces-265179-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:42:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 301EA1305F0
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:42:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8B883039CA6
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAC0F280037;
	Thu, 12 Feb 2026 18:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="nX4Or/jO"
X-Original-To: devicetree@vger.kernel.org
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010015.outbound.protection.outlook.com [52.101.46.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F69200C2;
	Thu, 12 Feb 2026 18:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.46.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770921774; cv=fail; b=V0vEU6PExFHmz483LEV+708KjdVEnvToGZkjY00TrsDxHmKEgo74fPdLzhRfVceJLKnfXkSrpmXFEudXUgYul3OOUS9abvJVE5LuwzurzHdLgwNnFWe2fOCL2AGyh/lLMaN2tR++hKnJe84j5demfTBEsB395AKeoFTO67CU620=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770921774; c=relaxed/simple;
	bh=ZOk7udE7QtSQuxkmrSOTdbDuslC4jyUQDX7DL2V2Y1Q=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DrsJ5xE+1CpbJn2bmV1jmlsWR+uwlaCyv8vOpRmt3pEG2L5GwYSGV1I8NrOQ6Q75wgVr9YqCi53YY7J8bn6Ih8qzqT7WbQ7a72PrPxGBGMBJwp4cAhx6ZumR3+EIRpiem1AlvIrXAUJQJkUkBtL4/763i0Aj4BHkc9Qf/WykKWo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=nX4Or/jO; arc=fail smtp.client-ip=52.101.46.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZRsKjPNwOEvFEFqHmZrwYQWGafKgCmsAj2eGKKuqkKJhWUCp/cD2/XFuA5iWbmRWmSxL19H8vNF4M72yTuD6M1TtRDVUov8JzupvQhwqfi6FYoAjZQQPkRQfUmmqHqvg5n39KnmAfZAiFDvlJF+blH8/Ecd38xMoAKOSPONcG0+j/vM+GXr5/iEtXJ5xLkdHF2WstZyNk69REkAne6UQ+106oPhFiu/BKAR+moEpOSXUcoAIJF37Zk79MyURa7w2P6wlgp0pSfinD05yMVXac+pTRWgfYCo2RRpXZ7NMui77n17P/SeeqHq8qakgkKU+tO9y0iLqiVx1You02+TphQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aoZmJ5nF8dydIC3eGAOhwdwJ6PHx87l4tOluCyScNXg=;
 b=WsntJeYJnu7I5PlVwJQAMv53t6pLPToMb0tRkBHGQr4WCz2ruewhlrkd5tagDziadtZ0IjL5vZ3w5veVQXqRoQWQXgph1VXH2ea6gEMNQpy6r5kNwDif9UOO29Vz5zek/0RYiaq2beeQOJ5gSN6OOrTcyvG15SwpWKniw7D5t/zZHtnVrqXJ9TBAyW25LtwIy5UNyioo+Wxq6e3QOFk5bEhrklcRRtnZ75ufMtOWnn1xeoXnwLfx/bHj+cQyF4MA8uwanelEelSjAeiYbUKl7lQYLKE+rUm6DNwtu0trZT0BRD8TY/KmjPxZWkJf3/MAoEWhqEpki7/EdcSszuLAdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aoZmJ5nF8dydIC3eGAOhwdwJ6PHx87l4tOluCyScNXg=;
 b=nX4Or/jODiqsWbtroseTk+0dRswIFdkwHX+/ETbjE2smB7PCIg/iuHV6cqGR55Rm+j/ZECtmShQKxc0aR5ZtiMADtDBFZQjIi+vim0GH0FyfMYJwNpP9TEmrpb/tn6U8dZA+EXJRs3F+AQXWb0DvK1yW5Cua9f/yZSnpCvZqN/0=
Received: from BL1PR13CA0430.namprd13.prod.outlook.com (2603:10b6:208:2c3::15)
 by BL4PR10MB8229.namprd10.prod.outlook.com (2603:10b6:208:4e6::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.13; Thu, 12 Feb
 2026 18:42:51 +0000
Received: from BL02EPF0001A103.namprd05.prod.outlook.com
 (2603:10b6:208:2c3:cafe::a2) by BL1PR13CA0430.outlook.office365.com
 (2603:10b6:208:2c3::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.10 via Frontend Transport; Thu,
 12 Feb 2026 18:42:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 BL02EPF0001A103.mail.protection.outlook.com (10.167.241.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Thu, 12 Feb 2026 18:42:51 +0000
Received: from DLEE210.ent.ti.com (157.170.170.112) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 12:42:46 -0600
Received: from DLEE203.ent.ti.com (157.170.170.78) by DLEE210.ent.ti.com
 (157.170.170.112) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 12:42:46 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE203.ent.ti.com
 (157.170.170.78) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 12 Feb 2026 12:42:46 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61CIgku34002204;
	Thu, 12 Feb 2026 12:42:46 -0600
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>
CC: Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Moteen Shah <m-shah@ti.com>, Andrew Davis
	<afd@ti.com>
Subject: [PATCH 1/4] arm64: dts: ti: k3-am62p5-sk: Disable MMC1 internal pulls on data lines
Date: Thu, 12 Feb 2026 12:42:43 -0600
Message-ID: <20260212184246.2316659-2-jm@ti.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260212184246.2316659-1-jm@ti.com>
References: <20260212184246.2316659-1-jm@ti.com>
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
X-MS-TrafficTypeDiagnostic: BL02EPF0001A103:EE_|BL4PR10MB8229:EE_
X-MS-Office365-Filtering-Correlation-Id: cd2983f6-0842-4885-36bc-08de6a668706
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|376014|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?1PgKGzbbonT2YmZHe5+VzZf+HRZluJxoZoLj6kIQjLaa22nxi/GgRbU+mmQm?=
 =?us-ascii?Q?OJvlO3kWcGI6bI7m8kB4DJVE9e9QUQFt51dvoVsAYDeldcxcs6k/tJqdAKEU?=
 =?us-ascii?Q?YhFlU8IwWzoFW/BX9N2WbwRov4iPB33v8SZErXHfFsWDtYqm1MxCRH+L5MwD?=
 =?us-ascii?Q?JpsOr6QFBavUEyi6o7n3LPUp9HMCVAf4GPKBr5LOlZAdnpZ4Dapub/0tMbjd?=
 =?us-ascii?Q?ZFbOqnV9JLhkOeH3vNrm5gqFOqL/j2X8VCl/5K8EKTz0M6p4nfjwtFpKJ3BE?=
 =?us-ascii?Q?cXtFcijdGm7CCjnCpreV9ORRIgxvyKC4zHFqHsUWF4db9Im8oZo6HQYbv3ZM?=
 =?us-ascii?Q?OBVLcFT/9yPHphJBMHzfyhWKGqk+ccgoYgqmw8axWqyRycsYpfXTCHgbdYWs?=
 =?us-ascii?Q?NQnTfBlUdLAsKxlhO8QXTknS97E+/tSR/UyJnracVsrX1MGqksApoxzMSAb8?=
 =?us-ascii?Q?eJtCImZVyrHKIjeTV3Jhkjd6Swr9m3rQvfJr6P/9VqZZmS0imXU5EJb2vUkl?=
 =?us-ascii?Q?nN1kySS7kHEkE6jLARopdKgjR3vb2su8M/R4zcaKnKkXo6QW03mFYmcIXm45?=
 =?us-ascii?Q?8nN1HHBtEwYuFZ085En/mJ4fzVQFXTxKVRMavrwuDenqcyvL4geCCc+wAVWe?=
 =?us-ascii?Q?APN8gULftHni0ThKtyfZqG8k+xDUDrEwo6+2JkR0j5ABpbvn0WXiychzOAj4?=
 =?us-ascii?Q?/HiqVLsj+CdKF1my0bwmmONhTZy3OcephjswfYzL+cnqeKgSPeIyqs7wXQuq?=
 =?us-ascii?Q?I132hVz/qO+8LYLyQ0f6ZvMJjy12W2zWMJYjb+GoIPhD/aelRk9etIakLiyp?=
 =?us-ascii?Q?hEsNVKM0s9RvPPubNBH7yZVy32CxO5Ij24/LsuBUJI85Jq00rBjFznn7GGPq?=
 =?us-ascii?Q?56ZEtCteR06YVZsbrp9VgPHHi9pf1aCtaxn3Cj54UuKeTbhjXPVhImn4iGfI?=
 =?us-ascii?Q?en6X4aM+qak/jyKaySiG2R/HLUqncracKuLcNcgqIZzNo9t9i3P8fIxSQ9p6?=
 =?us-ascii?Q?R8S77qObHRIJ4xtEIFxidfTx9ASRJ5P64r2D81ElGQssaTnyh4agc9YZMvRl?=
 =?us-ascii?Q?aR8b5KV+6Hffpoyek5+EyFdZF+9Ot+L/QrD2i63ZRCN8vZEsdLKI34ORFoRs?=
 =?us-ascii?Q?TC3i4hlG7Tfespjq7G55iIkCds3h8GWEo+6Ncm5OlnZWIHfBKCZB4+PnNmPk?=
 =?us-ascii?Q?zkFUnoHnAAQGT4mlVYpGxlYjE3m+Yi9RrcaTGB/28ampsAkaRVBMd8O4jDnD?=
 =?us-ascii?Q?i1gnHnWd4tj99YdmNdDcYoja28mXpPP9alWHJlmWCc5eQDZiQ9MWrjriULs7?=
 =?us-ascii?Q?+F0syBhnzxi8FJSNR1NuHCB2RXhKob7sCWD3Y7scK9GmtFlXFEcTR7ssdkLu?=
 =?us-ascii?Q?twQmdKoi5ZUZNTJcbtB5qOXiXXFq8tU5EDzPmFEd9XrR+vvgA5t3ZEiZ8+rm?=
 =?us-ascii?Q?bWr5YyVPfgfB5pPwuvo03JQk12melZMnhosW3PEJavyCRQ6GyMm0Ec6tqFiP?=
 =?us-ascii?Q?CKDslJVE/zVn3cCZp42PfJSz4gDSy0a3dEwSf60i83vIig636uKnfnWWEML7?=
 =?us-ascii?Q?uwdb/bRylhStUQIFfHW8fvUJ86onl9rgQA+Wyas/yJ5kpe4XxQZf/18zCSvz?=
 =?us-ascii?Q?BDzfyMU20LSRjrg5KXY0pmWld04OYbF4CFPFyxPT0zKUvrm886IEUw1ZorWJ?=
 =?us-ascii?Q?SY9rbw=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(376014)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	tELOsz5Y+muAmwCyjzv2V0AknFYtCKqny2xCoRyum6kFnsbYrwk2wdNBYZBkZgJOu00ye+9nV8aCjBPRRze0+MjXEFBmLuqzbNpusERBNBOaDE/ClLXrR11zXa7RVxTFr/zxkTWWgTvwgQpVFP0IS/u4Van6K/IhYoTCwVQS++bgOGqG2QKsvI/1VVmEdrpulVfh+8QLlq77e3Ry4u6smAlXa6cc6ZzfIPBQ2c/xeXvZp+HrKED2qZ2RH5MZRSpNTdtLHLeK5++TodIH+3u4Dn4FaUDPW8PGdIUQ3aOeQqao3XfJn+jJvz8eXivf4UbEt/RpsZQJQOyL2F7Q0XfBrosMM8AZmkeU0Qb+kNh7KOOgnxtYr/lqcZa1Ibx/LCMYCwQoSQVDelglO2JVr7kLnwqVN4NKcRLuGgY6IiByYcNPpq2iI/2vuNMrdcCjYYce
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 18:42:51.6537
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cd2983f6-0842-4885-36bc-08de6a668706
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF0001A103.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR10MB8229
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-265179-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 301EA1305F0
X-Rspamd-Action: no action

AM62p SK has external pullups on DATA 1-3 pins [0]. Remove internal
pullups considering:
- having both internal and external pullups reduces the total pull-up
  resistance < 10K resulting in unnecessary power consumption
- mismatched pullup resistace between D0 and D1-D3 may cause potential
  issues for modes with tighter timing requirements. The different pull-up
  values cause different rise/fall times on each data line.

Fixes: c00504ea42c0 ("arm64: dts: ti: k3-am62p5-sk: Updates for SK EVM")
[0] https://www.ti.com/lit/zip/SPRR487
Signed-off-by: Judith Mendez <jm@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
index 4f7f6f95b02ef..35baa777b9121 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
@@ -271,9 +271,9 @@ main_mmc1_pins_default: main-mmc1-default-pins {
 			AM62PX_IOPAD(0x023c, PIN_INPUT, 0) /* (H20) MMC1_CMD */
 			AM62PX_IOPAD(0x0234, PIN_OUTPUT, 0) /* (J24) MMC1_CLK */
 			AM62PX_IOPAD(0x0230, PIN_INPUT, 0) /* (H21) MMC1_DAT0 */
-			AM62PX_IOPAD(0x022c, PIN_INPUT_PULLUP, 0) /* (H23) MMC1_DAT1 */
-			AM62PX_IOPAD(0x0228, PIN_INPUT_PULLUP, 0) /* (H22) MMC1_DAT2 */
-			AM62PX_IOPAD(0x0224, PIN_INPUT_PULLUP, 0) /* (H25) MMC1_DAT3 */
+			AM62PX_IOPAD(0x022c, PIN_INPUT, 0) /* (H23) MMC1_DAT1 */
+			AM62PX_IOPAD(0x0228, PIN_INPUT, 0) /* (H22) MMC1_DAT2 */
+			AM62PX_IOPAD(0x0224, PIN_INPUT, 0) /* (H25) MMC1_DAT3 */
 			AM62PX_IOPAD(0x0240, PIN_INPUT, 0) /* (D23) MMC1_SDCD */
 		>;
 		bootph-all;
-- 
2.52.0


