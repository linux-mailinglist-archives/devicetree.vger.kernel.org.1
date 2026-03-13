Return-Path: <devicetree+bounces-274958-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOIrJefAs2lQagAAu9opvQ
	(envelope-from <devicetree+bounces-274958-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:46:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E658727EF1F
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:46:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F09A3008D1E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 015C01917ED;
	Fri, 13 Mar 2026 07:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="S2eFK8j4"
X-Original-To: devicetree@vger.kernel.org
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011037.outbound.protection.outlook.com [52.101.52.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAA132D837C;
	Fri, 13 Mar 2026 07:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.52.37
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773388004; cv=fail; b=NWHes+eRl2lsl5ESMl/gYxA4Hschdr2iXj2sB4r9Cpf1fIMLleeD9OW9F/upbGXCatSjDr91s4AG7iyV3l5MsE3Y86EZURlBug8YI0whXlpSNBBbXouuHQZBxc7N1z7JQfMGsvIAwU/HSy6S7wVjC9/15NgOpLxWBdgdRAv5kaY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773388004; c=relaxed/simple;
	bh=L/gTryjRUi9/6koZWdNGDdJe5Zbar+mWjFAYB39o/Ic=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=k8qp5hqMDZnbvjCsQ77WxL4UaT6Rvhi+BPV5E4Xmwb+Dmj0hPlSSklqg/YxdppiBVMkG2HLKyvqKPuQqp9dKCdpYY/wMiJxAHCDM0UnX/8SjwGuk9CLYyRHssM5HTXNA2FnSUTKhrGxHLbS67Q4bMuaHQwCIhWdcHjLEdbx1WyA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=S2eFK8j4; arc=fail smtp.client-ip=52.101.52.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QqA6wC2sD7eATjbGpxAHvTproRRXQyPepguaBNmlmI0XMEbQ+k1wT6Y+B/ef4svvJcoqPtWDziikoMKkWIVOdEOhAu3jFHggP2s2P3lc0KR/ctj+fqGf6xg4jwU822BO0sKOv4u9ylCbPdn3wrr0m8s/o+uy4MezpLEJ+lylo42KO/lAUgXCniwiffIGiGasfuQ+VgheoiXcTngGCZWIu2WpRhiW9pKS5dftbSUu7lPgrExdpahKT6HrfidGVtVW8mkuOLenixozjjWa4kGPCYjTTHdiCeu4NvCPFDIhe41pa1zLLdT+5rrTTt9fszha4NQfnXmwyz3mCN/kVFML9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=58ncy9SC17mJ7g9iYB3J3T1HpkMLHC4s44xbCKV0vn8=;
 b=prO8QP8mfAd7rfQaWAq0yxoI08w87zIn/7oyCEm5vsjkCM1JWb8bp63VBs5662c2EWRp0v4NignOpt0hygIe5n3FZvBqeVylUgpasbpNpMIMgzOkXsfdeL6o+U+hJnDeIPWcmbddfzgMl9PCnk5XtNAN5s4JHCP8E8NX1ODKUXBi/fUNrbUOGs+YJ2cRFJ4+3vy6cOdXiUi/UUMNdKlL0WQBS1bY9Uiy8u+pRlMd99QgMJ6M+hXVqQn7GzA1Ep8p1CVaHFZQxGM8KCF99J4qPI5/GuXuN3i6kdiH/Nn91ljyODHCeIgojiG8Oly0aS6KvSVVc0Z5YhFwGwjDOFC/eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=lists.phytec.de smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=58ncy9SC17mJ7g9iYB3J3T1HpkMLHC4s44xbCKV0vn8=;
 b=S2eFK8j4fGcubE3RayDDFrPL5cgvSaY0oiXmdEYmngNvIOl1FvRoammTCmm3GjzbrWcwmpaWmut7pVQ/rTMh1+irCWHCNow+z7dRlvXVttBja9YKVXBMSMwBWyOVGxRnQtabWVDElgyWyIDFChEchO7z6em3m/moGlFjjAFsqgo=
Received: from DM5PR07CA0106.namprd07.prod.outlook.com (2603:10b6:4:ae::35) by
 CH3PR10MB7354.namprd10.prod.outlook.com (2603:10b6:610:12f::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.15; Fri, 13 Mar 2026 07:46:39 +0000
Received: from CY4PEPF0000E9DB.namprd05.prod.outlook.com
 (2603:10b6:4:ae:cafe::bd) by DM5PR07CA0106.outlook.office365.com
 (2603:10b6:4:ae::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9700.16 via Frontend Transport; Fri,
 13 Mar 2026 07:46:39 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 CY4PEPF0000E9DB.mail.protection.outlook.com (10.167.241.74) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.17 via Frontend Transport; Fri, 13 Mar 2026 07:46:38 +0000
Received: from DLEE213.ent.ti.com (157.170.170.116) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 02:46:36 -0500
Received: from DLEE203.ent.ti.com (157.170.170.78) by DLEE213.ent.ti.com
 (157.170.170.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 02:46:36 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE203.ent.ti.com
 (157.170.170.78) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 13 Mar 2026 02:46:36 -0500
Received: from uda0132425.dhcp.ti.com (uda0132425.dhcp.ti.com [172.24.233.103])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 62D7kWvX160910;
	Fri, 13 Mar 2026 02:46:33 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: <nm@ti.com>, <kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, Wadim Egorov <w.egorov@phytec.de>
CC: Vignesh Raghavendra <vigneshr@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <upstream@lists.phytec.de>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62-phycore-som: Add 128MiB of global CMA
Date: Fri, 13 Mar 2026 13:16:25 +0530
Message-ID: <177338196936.240421.14150175440432465653.b4-ty@ti.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260213053806.219495-1-w.egorov@phytec.de>
References: <20260213053806.219495-1-w.egorov@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000E9DB:EE_|CH3PR10MB7354:EE_
X-MS-Office365-Filtering-Correlation-Id: b1495a00-22a8-45ae-f476-08de80d4a8d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	vTyFZR9EgaRkCKKNIEnzCQMAmWOJPP7kcl4x2ojaZYGw/Yyi/KfI+68RJybKydpF4YI4J8uWRt6Wdovhp+QA3p261IZbqm6P3PxQgWgJAof+AqJiwobULiz3zgXnuWMqdgob3gcYRTsgqXmQQqqcqqr6qszSzp4oSYw4D2H48n7qIbkfeD95joI8OWtonWH4Rj/T3NA5m0TeScgOCo9FEciHz1rAMJaF+D4ScIA2yIcrLW7PIM6uqKuhfw2swQMHLYATkq0GYWuyyNaksqgF7QADvPHGzdZ9WqGaEK2ofeGZIxRXoK9QM2PfMV/VNSGErIGbGwsgw3JB2hIFBUx0iF+zphdTXPKdLiPvw0iyiu9/Yfhv1Yk3Ba3cbVvbN6ERPvWycRrHyW8nQ6WBGB/kPhMDY0iW03hadPgnW2EnArQqaGLmj+rqRxO3et9I+T6WfwrMfDGjEIQCg3oG+vBTzMd8Zk5hwbQ5ewaqqZ5Ie5+CBE/rt8JPI14cdrluwdqu7Hmx9TiyfX51Np5ayEPsbxL9FVkHdxrR+NZ8h6nnCNR65fQVnnxeDZOOzx/RNxIMlZ0/2RHI+kg+axhxB5S67r5YJkP9e+DbdDalYEu8Np01aTSI2UYNmxgZ/hBY7gaBXs7XMLehCfxglDTGzbwoxkf2zmKZlGrRfns47wQ8jUo242PVxYJfsits/UvKtTI9pJ0sURZHXW+J1caSp5RD8rgkSCLn33P62lZJh0pgjZ0=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700016)(1800799024)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	+9/aIHDNuYowsTreKeCEiaPKbtDu2Ik4EngPVc500VEPZs6gDFbftnDycRn+j2vLKLtyrKmvGVEjlr3GDcrkV9xi89B3edaPkKp2GvhsX36kkG36soZvLEEUGS9m674jGZKh862kDS44jOzKhI6x2HaUADplBZg332kASqh7PXnSUxzRGPypBOhgwFhEBuEFNQP/oApFkc5dAATIz+Jv0K7GVvRdqqbG+TUa0LGocsIMdkWzmq+3cYCnGsUTAoM1LsLO+m1DNSHjOXCT4V7ZLjg/9sAFDfAOPLpF2xSiglsX+wd5WJTsuJr0bCoCiWAfkdwl6G1YHgShwITr3zv5bHbAsRSAlsY0ROFsJOq3cT57jpTMAEj2qwvvjh83ddMQTwqZuVibW+R3THMm+J4zCrznZkOF0wZFygCllh/SBDPEfyl07D/BX+O68uoDU80Z
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 07:46:38.6061
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b1495a00-22a8-45ae-f476-08de80d4a8d1
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CY4PEPF0000E9DB.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7354
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274958-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:dkim,ti.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vigneshr@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: E658727EF1F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Wadim Egorov,

On Fri, 13 Feb 2026 06:38:06 +0100, Wadim Egorov wrote:
> Reserve 128MiB of global CMA which is also marked as re-usable
> so that OS can also use the same if peripheral drivers are not using
> the same.
> 
> Based on the use case described in commit c43dd2fe5316 ("arm64: dts: ti:
> k3-am62x-sk-common: Reserve 128MiB of global CMA").
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-am62-phycore-som: Add 128MiB of global CMA
      commit: 2af52683ecd85ae33dcd52eaddef6d592da5492a

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent up the chain during
the next merge window (or sooner if it is a relevant bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/ti/linux.git
--
Vignesh


