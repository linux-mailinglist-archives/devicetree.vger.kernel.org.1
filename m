Return-Path: <devicetree+bounces-242088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A39EEC861FF
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 18:06:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B3B204ED49E
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 17:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A079632ABC2;
	Tue, 25 Nov 2025 17:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="cfvI6vlb"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011058.outbound.protection.outlook.com [40.93.194.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAB9333737;
	Tue, 25 Nov 2025 17:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.194.58
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764090023; cv=fail; b=IMY80gEsC7N8OcGrbM0YlkZU15ACrUOZTCG9ehJhUKqjxL9W8NpJGflPbS5TtIEi5dIY5fZFlgaEr6AFTYQF7nupOJKZoimXBQ46OKX2BmfZeR7hbWluiY1oVNJFlTJuwsrsJwczaPAYkHezeWTbNQuzmeLJKviUxqPvkzVfGeE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764090023; c=relaxed/simple;
	bh=G6RbxygDV409wjrGZai85jrRDp+Nyul1BsKhRdXgyrw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=L5cTPTKpSmsCoZQegj3AUTWQBFe+ehEkazWf/MpiECB4BHxL6GCyxc1b2RGZsjvZ94QxBM0M+XDZhg+TmHSoq4HX5hWURgarOtSTPLcFCbc0P7OuLA7XJZimzFTYzVVQ7wHErLAlSwcfJx6iRBJuKUcY7MZSVQHn1VfF+wt3QbE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=cfvI6vlb; arc=fail smtp.client-ip=40.93.194.58
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KKKML15Bs/QDg+x+Ds3ndtbFFuwZm+NQg+3R+LlxOrxxsn7n7dFv1uAx4vYQ14ygwOkq1WRgomeAPkbLIEpBE7nhEF7HIzxqlip5KfpQVX3nWlriU//oz5K8TJbB3PxVV+b+LSKQK+uaRiRY8yK/2okBvjF6gVNw3wsNGmEBg5zEziTJCgkyGz55rihuN0VcvkFmYULYVpyQSfAJ2PKu+3CyX/t9KBrm2gqH3j/72nm/oGlmo+9N308T9ilhyo4+XbTPTWdOl2Fu/3l7Z4bOVouPL/A+b/Ng1TpK8kfC1zEisCyKSWo+USB89bCG+yxRkgvOKK99mmqfHHvIUteJ6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/fJAAGLVpnwm8yw8Eas7IfD/qr4fAmeoZfyrCZQMirY=;
 b=KJwbiL9JRTEcmzli58HdrFc+RTCgUlEofLvzs+JUn7oRJEBnQLl5Y+3UOEORo6d1rfcTWZQObL2fiId4GyAlDA6gnA5g2iBQNNHHrM8kYmxQ10evTq48+P0yxR0e45aLU3PKJa3VW0M2MAjLdMC//tNiWyytLeiRdsIlYW3zGWTuAqgwTZxhCu1BEH01BS3PYCJjKY9/3i37Ow/RmHLJFcE36YnGkzllWC9at8ElRCZ3Z8r2PDaR3Unq/KudQ3VbHASptzSNBWRzIcUyVAAR/EX6QzT+zNwFo1BHuXAtfGnyuOcteiFo18XiMoT+OcqIBTzzRqHtfWFNS9AM4akssg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/fJAAGLVpnwm8yw8Eas7IfD/qr4fAmeoZfyrCZQMirY=;
 b=cfvI6vlbtoJ8sLdwVzKaFTft05Lt1eJVR14pGKgHWTd2q6J6x0hSdf55O0U5WvXcill1UO0wbc6MYpamLtMcMD92g0fFp9bj22ce4NHvr7QNWsejIvp4SrREbUAAINu2IeOl4pSM761QY4vzgCTDQ+yMvG5GSbe4h+YXzme6+Y4=
Received: from BL1PR13CA0322.namprd13.prod.outlook.com (2603:10b6:208:2c1::27)
 by MW5PR10MB5692.namprd10.prod.outlook.com (2603:10b6:303:1a3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 17:00:16 +0000
Received: from BL6PEPF00020E64.namprd04.prod.outlook.com
 (2603:10b6:208:2c1:cafe::ad) by BL1PR13CA0322.outlook.office365.com
 (2603:10b6:208:2c1::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9366.11 via Frontend Transport; Tue,
 25 Nov 2025 17:00:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 BL6PEPF00020E64.mail.protection.outlook.com (10.167.249.25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.7 via Frontend Transport; Tue, 25 Nov 2025 17:00:15 +0000
Received: from DFLE213.ent.ti.com (10.64.6.71) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 25 Nov
 2025 11:00:03 -0600
Received: from DFLE207.ent.ti.com (10.64.6.65) by DFLE213.ent.ti.com
 (10.64.6.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 25 Nov
 2025 11:00:02 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE207.ent.ti.com
 (10.64.6.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 25 Nov 2025 11:00:02 -0600
Received: from a0512632.dhcp.ti.com (a0512632.dhcp.ti.com [172.24.233.20])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5APGxgbU3987080;
	Tue, 25 Nov 2025 10:59:58 -0600
From: Swamil Jain <s-jain1@ti.com>
To: <jyri.sarha@iki.fi>, <tomi.valkeinen@ideasonboard.com>,
	<airlied@gmail.com>, <simona@ffwll.ch>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <aradhya.bhatia@linux.dev>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <devarsht@ti.com>, <praneeth@ti.com>,
	<h-shenoy@ti.com>, <u-kumar1@ti.com>, <s-jain1@ti.com>
Subject: [PATCH v2 3/3] drm: tidss: tidss_drv: Add support for AM62P display subsystem
Date: Tue, 25 Nov 2025 22:29:42 +0530
Message-ID: <20251125165942.2586341-4-s-jain1@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125165942.2586341-1-s-jain1@ti.com>
References: <20251125165942.2586341-1-s-jain1@ti.com>
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
X-MS-TrafficTypeDiagnostic: BL6PEPF00020E64:EE_|MW5PR10MB5692:EE_
X-MS-Office365-Filtering-Correlation-Id: dc5fe9a8-dbcf-42a2-b592-08de2c441ae9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|82310400026|376014|7416014|1800799024|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?jJAb2Tfe4ZTq2XKlDur5OfdJFCduVtbuG3k0b9BhUenzIMjsT/vyYP5QA1+f?=
 =?us-ascii?Q?TW+3T1ibfjRolpjo97r10nOM2w38vkqSX6u2h9kvQQyfd7ERTT1tmAttXI3I?=
 =?us-ascii?Q?Zzv93t8Y66A5mGj6nGJUWmlh4hA1CJCli4uOYO2cmsGz2z8EIhSspZiqPwGj?=
 =?us-ascii?Q?IdI4dI3Tu8utE8XB1mZhS48DfhIlCECHKwLaQdFkVbkUuM2+bCN/CGEcBpRR?=
 =?us-ascii?Q?w5q2wZxReN+poFipDVn5dPaa85ZOzBFeOwdc5BKlqYh9FV51c/hJpGFCGwFq?=
 =?us-ascii?Q?0//7Z2cHJYAN0oKWVuMXAU1lNCgQ3Z895OsdMKOpI7hQevUcMJ6c6+UcQX9z?=
 =?us-ascii?Q?fgkaVTbAJn/7Nr4L5MUKTJt91R/D81BCpXBxErSXV2XznkKYsv4gK754WQ77?=
 =?us-ascii?Q?Oi+giQt0EvmrcAhsK2S4RrMS5ujcAdlmVxRhGHkz2aXE2RuR5KeNLIxaAFG3?=
 =?us-ascii?Q?ZP3zeqcmQFL2hO9+sKf0ENAfBEi8j+VbF2qrj5ho0/7nsIvDKFWBsWVbR0xv?=
 =?us-ascii?Q?qjvuFc7C6LuoRL7McNpC7qknHDQTQ3KFSQ5qsQOmL8EzTVhgHj8iWIIONg8/?=
 =?us-ascii?Q?H6tlmWf6AvvvWjj/oc6SWTAMKd3fpzCwcTti4Y+CCVv8Is8KTMGi4dwB3RDX?=
 =?us-ascii?Q?u5XbpxcgGsjLZe40AsQRZew2rTmzt+EiQnba52MFZDbh2TBQttsAEHRBTUit?=
 =?us-ascii?Q?YcgGuuwCvYOWJ4ra3ZYjJQxYOIlsYrOEl446xT3elvWrDjAYSJh1oF3qui8y?=
 =?us-ascii?Q?2UttNcoLtgThDdSeNS9HZsJjnf0fE2SAnrs6PeJ0DNZF7eGPimC5jC/9bMBr?=
 =?us-ascii?Q?t4JxzJbdOVy/ZVnjMRC0lPE65iIVfWReM8KJ448zQnMH3j88B2R1rlYYWD72?=
 =?us-ascii?Q?aBL8Aea7jID4AkU2O26cgAg0FFFQw4/TumuHISNfaXSzIrqlt5a0lM/jD+3E?=
 =?us-ascii?Q?8Pbslq9dZWSnk/t5ISsW9eXzjbPvFQlfUxONU6mKsRiftFXSz7hqlzYnV1Cw?=
 =?us-ascii?Q?ubSU/e1nDR9x63my2bEnvqPSPDSt/ALR0aMbWQAQZqPCmHO6BP6S0t8td5YS?=
 =?us-ascii?Q?Wt5Kg5IgmiZpEQu/DPugu/AL5IcpqluwTuGI7Gn/iTmGAnsuA2OtdLV6iaEf?=
 =?us-ascii?Q?wpoobLekPwHxz91+W4pQfFDp6RtDjaHBWau31eTGbFB3+kxoG4oSV5mtfmje?=
 =?us-ascii?Q?cvi9nLiEb5YQNFShWiXsEcNF5lNUAyglRpKZUqsnetNnHZMO+VrleRpq0yRR?=
 =?us-ascii?Q?/9HYkc0K9M9focTaZPorBzbe+QM/sInEkMuRySUr9Mvs474z1tUXKESfAYAV?=
 =?us-ascii?Q?gaPilxYliOSmQx1kHJiSieRhFKOk2hcnaxN4D2u0k53AKsrLNudfH9q17Myl?=
 =?us-ascii?Q?iS0RWNJADKyMiOHCGTHbeLn3AgyK9OLoRqsSDDT8N3ijXykwVDbDhAmmKXJP?=
 =?us-ascii?Q?l9hnoa6kpsS4ebd8SGUi7y1g9B9j1ie+1XHyKl4RFSKZxB3NitzmwQz7Dd/J?=
 =?us-ascii?Q?gCCjnmQLDj3v3ow1dKfDAGbwwlVvrl2z258EgJNZDH3tQBI/ZFt7Q5PtQ+hQ?=
 =?us-ascii?Q?nVHOM00gA92ShFUxSxX3yhVexHTiPvP9Rzc7YBOB?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(376014)(7416014)(1800799024)(921020);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 17:00:15.2857
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dc5fe9a8-dbcf-42a2-b592-08de2c441ae9
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF00020E64.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR10MB5692

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

