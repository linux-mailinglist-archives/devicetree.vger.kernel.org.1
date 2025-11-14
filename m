Return-Path: <devicetree+bounces-238471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BC86AC5B993
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 07:46:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 97B6D4F2D62
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 06:44:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C8762F3625;
	Fri, 14 Nov 2025 06:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Zv9XxWlq"
X-Original-To: devicetree@vger.kernel.org
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010043.outbound.protection.outlook.com [52.101.193.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7A32F360A;
	Fri, 14 Nov 2025 06:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.193.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763102649; cv=fail; b=X7kzoHF5vE4HnCJ2JYfX+jl04Fh/hh+2TiGVjo2AxwHPFiuyiWNJ2vxelw8MsrCyl6sbd1BsQYFEBU+XyI1wkX0HgML9M9EuJXLeAj5MuZxVdGbmh5AZfw2ULTRYA/D1SOb7JhCFJQlGW5zz7e2wkqXQOUNEJFTwLNQqhyZ1i5w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763102649; c=relaxed/simple;
	bh=G6RbxygDV409wjrGZai85jrRDp+Nyul1BsKhRdXgyrw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ec2/SmQ3XDlSlV7xt2o1nWfECCtxTxbcWQyqDbLL32MmeUrDSMUEy229YxMWphQ2oZNioe1vQGy9QZquly47SI2gcoN46Rr5XFmVIEwIOFAOaTVBrAquYbvXsd3EUQ5PCFPnaV5rX5kPmEnNNbM2knboDoX4C6g0eC7tV4sAZyk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Zv9XxWlq; arc=fail smtp.client-ip=52.101.193.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tIFMX4JmJOGTAkj/sS9D3Qjkka5reesq1R7h6hfd7+mp/T6kLMJh1DlF4uq4gTU4Ccf37ALhumgbZyiGoTvryzk77txvwDazlytsI794JUbH9WbwOL/OVxzu4Gz4EnttvFa5cevTCws5VaU1area7RGYxbyQavtjc62qovbK+kye3rV6AbpJLXefzlkR3+nzgr3Q1Il72Dx97fRZS0Qpp7INR5AXJ62DvvGRXOYKwVqIzYyfxrheigSxj3SMe42ubNntbucBxUYPtUCXat6WbSdQezMFgv0iWbXf8qbQ7N6GlL4iYiOXQf0zBr4FyQiqNYTMuBsD9e9qO7uRWSAmbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/fJAAGLVpnwm8yw8Eas7IfD/qr4fAmeoZfyrCZQMirY=;
 b=DDVUh8ZGmIkHGYlwlXvA5asFmYiiBySEae9mIpp6pZZNfb51Mc8Ve/w9i+iVisPXeGEtsfiCwV7AK7dgt45xfQqGh12xAdlweHD0cjCWnPr95kppbzKgQacxrSfwwbmAcdo/4yAK0f4O5yqcM3r0p+6XFLvFh+fvkCRS0AvaaMj9PyrO/f/XrVrSqcfFFKrN3TtoIKi8WS94BIYOeYhAA9liEfBosOlSi4lRW8CZ5QB6xZ48jQvtwA3E7Xe04+1lnLjYF5rU3tTNKNFgoy+/Pqszfa8jZQhopYZ1/TNBJGXN22nWDuF6YXqX+AYio06PRYL1X+ncx09WTUucgu8CPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/fJAAGLVpnwm8yw8Eas7IfD/qr4fAmeoZfyrCZQMirY=;
 b=Zv9XxWlqBsEzE9ldxQecI8Zg/ePlMK4ZIH8SILICjxgdUFUcD7KkYRoMk5t3NV4ASXROlss1NUBCVrDzqZrQ/mrmEy1VlnJX4pmi2kvkFIWaA2O5y8Se/tyPF3Hzt1wOY/s2ZGfdl/53O9j2aw9z/ewk/rz/Z4Sy7tJliBb8STQ=
Received: from MN2PR10CA0012.namprd10.prod.outlook.com (2603:10b6:208:120::25)
 by SN7PR10MB6332.namprd10.prod.outlook.com (2603:10b6:806:270::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.18; Fri, 14 Nov
 2025 06:44:02 +0000
Received: from BL02EPF00021F6F.namprd02.prod.outlook.com
 (2603:10b6:208:120:cafe::6f) by MN2PR10CA0012.outlook.office365.com
 (2603:10b6:208:120::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9320.17 via Frontend Transport; Fri,
 14 Nov 2025 06:44:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BL02EPF00021F6F.mail.protection.outlook.com (10.167.249.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9320.13 via Frontend Transport; Fri, 14 Nov 2025 06:44:02 +0000
Received: from DLEE210.ent.ti.com (157.170.170.112) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 14 Nov
 2025 00:43:58 -0600
Received: from DLEE212.ent.ti.com (157.170.170.114) by DLEE210.ent.ti.com
 (157.170.170.112) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 14 Nov
 2025 00:43:58 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE212.ent.ti.com
 (157.170.170.114) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 14 Nov 2025 00:43:58 -0600
Received: from a0512632.dhcp.ti.com (a0512632.dhcp.ti.com [172.24.233.20])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5AE6hbsW1539554;
	Fri, 14 Nov 2025 00:43:53 -0600
From: Swamil Jain <s-jain1@ti.com>
To: <jyri.sarha@iki.fi>, <tomi.valkeinen@ideasonboard.com>,
	<airlied@gmail.com>, <simona@ffwll.ch>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <aradhya.bhatia@linux.dev>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <devarsht@ti.com>, <praneeth@ti.com>,
	<h-shenoy@ti.com>, <u-kumar1@ti.com>, <s-jain1@ti.com>
Subject: [PATCH 3/3] drm: tidss: tidss_drv: Add support for AM62P display subsystem
Date: Fri, 14 Nov 2025 12:13:36 +0530
Message-ID: <20251114064336.3683731-4-s-jain1@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251114064336.3683731-1-s-jain1@ti.com>
References: <20251114064336.3683731-1-s-jain1@ti.com>
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
X-MS-TrafficTypeDiagnostic: BL02EPF00021F6F:EE_|SN7PR10MB6332:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ebb0549-4794-439c-0724-08de234932cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700013|7416014|376014|82310400026|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?hpeiOZG/1fyaL7WFfT2ZEMxIUNYDlNLYA67BL4BBuU3jfbsftul52UY92rEa?=
 =?us-ascii?Q?QowDgIv8vUP9mdoTDGosjWQABL/s9/kzyRDs5G/Gq9+i0Vb9pjEJZxyZQDA+?=
 =?us-ascii?Q?3VLf4sOb/px5Lp4FxTLbfeJKBXLLJJy4Q8QM5bOdjPt3yR0E/TsfWiteWcqL?=
 =?us-ascii?Q?WM72MM292dn/xqH6TGDDGKXJkwMcuzF7KQ7/rLqXM/Pq8a1ymZrKzWKJ+r4b?=
 =?us-ascii?Q?YtwDYC/QycYopcwwUQSOKkehwq5s7q8fvFua5aCK5mWFoheuVwKbsSyx+5dU?=
 =?us-ascii?Q?CrmnUHTs2O6WKJpDK2nMxg0lKQhtoC6xEocVwp7f+dZRnIPnF6zMonN3zUeQ?=
 =?us-ascii?Q?3IPikkZA55/Evg2wrAsoduN3mXtOIdtx0gSPVYqT9eoX2nFo0U6eNJJbU7OT?=
 =?us-ascii?Q?lsjlldGJCrXiHBE0uM9AedKAbxhZAwYquRJxGQsKGP4rm+7ma7HQM0Pqcd7Z?=
 =?us-ascii?Q?x6ghuuI3qgDYtVaNciyWM1wPYLpV1qKV1AG9dmGEsTdAC1iQjs6n9Z4i+NdD?=
 =?us-ascii?Q?BQiSzdkoxVqwbwWonIbpu8o25DsZEdhy3jbVEtqI0EMmZTBguvw53uXJe1X6?=
 =?us-ascii?Q?aQHmGWHQLq+uQU4OCBfQJQmbRFlmPYXyofuZr015jc2J7nL2/qB2ZDOKpELb?=
 =?us-ascii?Q?b7bOUYD4x43S7Cm8CplYLSGuYMfdn7lwXNK1rFF3i1Fo7biKj+/cV/IMEl2t?=
 =?us-ascii?Q?HWc+Y0wgmRowpT56NfQUeEYmCxxsDT0fn+EQ5KJJclTnoue94vZqLP+rmXIo?=
 =?us-ascii?Q?72O+yq8Tj8Tr7cGY8PaOO+VC8BwL+zee2Qmj9zyzYOVA69oDpQ/XL71JCFNG?=
 =?us-ascii?Q?vr+PB4OIP9q1G54rJI7o5RliuiPs0uZ4dmfZJr0TvbaAiGu0bJ/6w+/XUDsJ?=
 =?us-ascii?Q?mltOEWbGMgzpLeRRJzgdP3wCK1Lp0UmFHzoFfJZ+ENNiXLonBvfzK0Mij80Q?=
 =?us-ascii?Q?eEwGPY08ya0/GMXmfz3ZPM6FCA/UB8wz+WOCkqlLynSjBjHRg5mGStqK9aCn?=
 =?us-ascii?Q?pwR0D4htWIH0dbQyJphM2snLPHOlqim9s96qgHf0qcETnac2SJiBWvf8hy84?=
 =?us-ascii?Q?EO4KLwowu1oioDqOazQBkTfHYLUK1fll2NVaAQaNuYhv06oC8+OB2YLkuv89?=
 =?us-ascii?Q?lfUFn5m4TlmorZlH+xx1gd06ygeveKyy4KNxYF85yaPknbJKevXgvDvojc0J?=
 =?us-ascii?Q?aUnAtd3G3HUax2b3lL/wCuV1xdw5XFS++mnVTkTN+lbF2bHJz0SWYkjuImai?=
 =?us-ascii?Q?KchjuKnT0brRdG9MgxYnxF3L22SxBz+dkLtBwaRf2ltrmbNlYB9lkuqWnP8v?=
 =?us-ascii?Q?Sxaj5nlgYeQONv5FDGtVBm8gZGUjqXLGUsK/2khJlO7lT4RVBvusinKtfNjm?=
 =?us-ascii?Q?2ZhE+iJ/JGoM/hPFkZtGfrhJN8PbloFUfyTQyOtooq+Eg6bRvb7hQjsD/mM5?=
 =?us-ascii?Q?nMsJoRH6KSBpeGQeK216HVU9+tgn1tqQeWlMVxzKo/g5nr4+VXkdS80hdbtD?=
 =?us-ascii?Q?21l5d5qpg//vavo1VwA/AzsSsLzJi9Cr/ump9jk6sbct+IyiWS6hQppsz0kP?=
 =?us-ascii?Q?oyhbwCfP3Yhg+OTR+SUkKvbtsTFIDcgdotF8+PXb?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(7416014)(376014)(82310400026)(921020);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 06:44:02.3866
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ebb0549-4794-439c-0724-08de234932cb
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF00021F6F.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR10MB6332

The DSS controller on TI's AM62P SoC features two instances of the TI
DSS. Each DSS instance supports two video ports, similar to the DSS
controller found on the TI AM62X SoC. This allows three independent
video streams to be supported: OLDI, DPI, and DSI.

Since the DSS instances on AM62P are architecturally similar to those
on the AM62X DSS controller, the existing dispc_am625_feats
configuration can be reused for the AM62P DSS support.

This patch adds the necessary device tree compatibility entry for
"ti,am62p-dss" in the tidss driver, pointing to dispc_am625_feats,
thereby enabling DSS support on AM62P devices.

Signed-off-by: Swamil Jain <s-jain1@ti.com>
---
 drivers/gpu/drm/tidss/tidss_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/tidss/tidss_drv.c b/drivers/gpu/drm/tidss/tidss_drv.c
index 50158281715f..620d0af478f8 100644
--- a/drivers/gpu/drm/tidss/tidss_drv.c
+++ b/drivers/gpu/drm/tidss/tidss_drv.c
@@ -327,6 +327,7 @@ static const struct of_device_id tidss_of_table[] = {
 	{ .compatible = "ti,am625-dss", .data = &dispc_am625_feats, },
 	{ .compatible = "ti,am62a7-dss", .data = &dispc_am62a7_feats, },
 	{ .compatible = "ti,am62l-dss", .data = &dispc_am62l_feats, },
+	{ .compatible = "ti,am62p-dss", .data = &dispc_am625_feats, },
 	{ .compatible = "ti,am65x-dss", .data = &dispc_am65x_feats, },
 	{ .compatible = "ti,j721e-dss", .data = &dispc_j721e_feats, },
 	{ }

