Return-Path: <devicetree+bounces-311573-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QszhGMJ2L2ocBAUAu9opvQ
	(envelope-from <devicetree+bounces-311573-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 05:51:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B738B683223
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 05:51:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=d9wZe4C7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311573-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311573-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3A113027B5B
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 03:49:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89D172D97AA;
	Mon, 15 Jun 2026 03:49:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013035.outbound.protection.outlook.com [40.93.196.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA6D277C9D;
	Mon, 15 Jun 2026 03:49:11 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781495355; cv=fail; b=I35xi8JfxiVcVryvhuaLo9YlYfxq7n208/n3qAZt5XcwmlyH2zxksnCszSYCrIXmfpXLuNnlIEyePXO25Fqn+ejPVSGYTaQeTQN14OxCWqj66fPq2iA/XAq8+CWRyObAeNqW6Y/X0RjtjLwQoR6JqGmzpswSWbm2gQhrzc3fMtY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781495355; c=relaxed/simple;
	bh=MsXr2zQbi6Y00X/64fm8xXcw9FBBjQ5cU8HzZfa1ZHM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FLANzTu+IpDT6VTeKEWDNuDKs6sOLDOrJi4o09b79bCDU2Vp2yuFK0UklSIDblFVTtJZyRwqiNvK1upX96lQn3tmeRRepM/0j+Mippgd3nUROyqiu9ZQU9erYx9AR8zf1ldshTHvm9FHnviOiLHbyuI0fjrO7zJ7ZWgk/aDq39w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=d9wZe4C7; arc=fail smtp.client-ip=40.93.196.35
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Sjr6O1rsmopRtiaLim86dJrUn8t8ybk6G5v2eNUKCmwwikiT/J7RVpl+YF682YzTaW+kkyzq3zyMwTzn+f2fas/MCT8dcxLyYJigC2gCwBbUb+ILUF+gLqDD5RXRSa2UtpUAtMQDtbNxfFCgjtsCRBYFR0ah47V6gBOFBNKtyqcBtUzus2SjBN0/NMMyYe8Lc87aVhjQffyznSBln8WGLUaEqyl/QCMoh7VVMPF92ogRPN/KLg4aYcs+1iWn0A/fgJWYnTBF+iiaVYYZswwE0OytVsD2CvO+YPg7o1G5w53d+L2Hrn/t1EDDCaOfj2/4i8tW3lR7lUGCkDZct1mKsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CpD3wie7IfodzEahDEfC3PG3TVGhSZCv0NNcgMG5xIo=;
 b=O6tzSa02Nd6Z21OvPfSC02i15NTYZ+G0Pit7EVnWXmkddP49Yu5g6GAnonn7j+4QAGAntr8sw9iFd0YRCCAQVLdkbu8I+yPdQxt+8jMtBvBDGEQE/wQ7k3HIIm8PNjYJ6xazFfx6xoATfz/QkF8unpd06uBVgI64cErCE3wkcywdD60UKx85O73vbYnfNitrx7MXvN9ruMWVluFXVqIt78wkNpCNMkzzeIvCyUUgwXWnqX8qY9gcy1kK0suvcVl31x+/lYPvzodul4kGwngS2O7DsMmA6+optlM7c1kLfyQfqPOeVHJWCWFkioqxfq18J5fpPqg6DS/XmF79NFdVRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CpD3wie7IfodzEahDEfC3PG3TVGhSZCv0NNcgMG5xIo=;
 b=d9wZe4C77oywRc/L6xC9ETKxRgj+nk6P4dl93F9QDNP9quOWp6lSz5DaRDJehM/zRDGYFOVZskxiY0OywQNbeCBd5+qEJAGPmFx8/wydujRp5RD0qHtC1GjlwYI9RrGZOWW66hHuy1CB98XSTs16YX5C4wtgOtwETwc+9JcZcBE=
Received: from DS1P221CA0005.NAMP221.PROD.OUTLOOK.COM (2603:10b6:8:451::9) by
 PHXPR12MB999258.namprd12.prod.outlook.com (2603:10b6:510:3ca::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.16; Mon, 15 Jun
 2026 03:49:07 +0000
Received: from DS3PEPF0000C37C.namprd04.prod.outlook.com
 (2603:10b6:8:451:cafe::86) by DS1P221CA0005.outlook.office365.com
 (2603:10b6:8:451::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.113.18 via Frontend Transport; Mon,
 15 Jun 2026 03:49:06 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb08.amd.com; pr=C
Received: from satlexmb08.amd.com (165.204.84.17) by
 DS3PEPF0000C37C.mail.protection.outlook.com (10.167.23.6) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.139.8 via Frontend Transport; Mon, 15 Jun 2026 03:49:06 +0000
Received: from satlexmb10.amd.com (10.181.42.219) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Sun, 14 Jun
 2026 22:49:06 -0500
Received: from satlexmb08.amd.com (10.181.42.217) by satlexmb10.amd.com
 (10.181.42.219) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Sun, 14 Jun
 2026 22:49:05 -0500
Received: from xhdshubhraj40.xilinx.com (10.180.168.240) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server id 15.2.2562.41 via Frontend
 Transport; Sun, 14 Jun 2026 22:49:01 -0500
From: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
To: <linux-clk@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <git@amd.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
	<sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Michal Simek
	<michal.simek@amd.com>, Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 4/8] clk: clocking-wizard: Do not map the memory for static-config
Date: Mon, 15 Jun 2026 09:18:41 +0530
Message-ID: <20260615034845.3320286-5-shubhrajyoti.datta@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260615034845.3320286-1-shubhrajyoti.datta@amd.com>
References: <20260615034845.3320286-1-shubhrajyoti.datta@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS3PEPF0000C37C:EE_|PHXPR12MB999258:EE_
X-MS-Office365-Filtering-Correlation-Id: fd056cb8-fe6c-4ece-9627-08deca910cc5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|36860700016|1800799024|23010399003|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	gqy+kxOhu8TrjVKJxVCm/0vaD+PRx9EGzl5U566ZLfNA6MVanpi96r74ARS5CEQRimuq22QQZ0bM1BYlkr5aUDTw0jVPZ58C5czL0vYxTNO6L7JSaE9K++WPhX66EdSmnMYe9lNJ3+XtGYKeuEegtZ3dw88PxRCA/R+iWTloaVQXRx0GssUjFyAMIN/Qbh/hVDhID81A/206HvGN5lGiZzh/i7RPioVtUWc9pkeq9DqT6rmn2jMWlVgJqqxLjx8OArvRXLeJk1VXVaPQFQN7F0SxUV3tDensABKWv9JpdGX55j3+LNg1l2qaplJiOa97O9m/mUXUTA/ViCYMVzT6ui5qHBpieYz6Sd+KXiNoeV7dvw1QfdELCk4kJy+IYmGWZKYOgQMua/oGCliT7QWeBOJnyjAeg5p1Khc1IJ7T3I1X3wjq0fJeItjwx5uSkFXLJSSDw9fqJGYrnXxo3O79r8ujlauJOvtJCGFKMlIQiMVGptMj/HrJBjDxkjsK/4+yOkMixxrEY8oh+e7LmRrP7UO7n3eA5pUxQG2uZxoKOLNBcvnRjQm9keTx1hOkteb725AR6CbnBsK5VwNxEXlr8kR+XfBFuP/LY07GLQDtn0zTSoBKvogSLSdGfe8btJNByMksmMLw4rskV47O+M60ChFjOiWj5hSzTsi+Z+uMQacPZyNhAxLz/DEHtwUZSlgvr38MawgeFPB9t22upXky3SUht/atVZV1F4oqmtfAoe8=
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb08.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(36860700016)(1800799024)(23010399003)(56012099006)(11063799006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	1sLGwfi/X7uH1QllXvI1TKwpTNZLZPprjnVBWJL524887+UvCbSTLzKI2ToEfdqOlvyhDl3Ye0/SCAPo85H/gOiWDBg7blB40mTzaPv0AaMqpbsQ8x5mJgbVkjMMRE/+koNkerSYtYBS3AeMeV+qAsMGRZAPHxq4xWns/Kxllo5AOfX2y12MrP6RyLeqXIaifCyTZQWJhL6ajESXaayqfsSH9KhQ4mgVDf9XyfLRwSFK6j672naBDEg1zbauerbRjSpY5dkImY505dxs2PxQbZL9pQxTZKEbq9ILsLxNU6aFY8Ylcv2HS+XxDXH3fbx+uRlFRrVtDSXiFIKvXg8UGpX0tpaVo4IGp69kVGG4l53d9tgvwu2r5Ravq2gi98n61yP/9nX3VOQul+HShYq0iksBExQW1NnORCjF84YjFxPUxEOIaVFPycoOS68c3hl8
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2026 03:49:06.5742
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fd056cb8-fe6c-4ece-9627-08deca910cc5
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb08.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DS3PEPF0000C37C.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PHXPR12MB999258
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[shubhrajyoti.datta@amd.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-311573-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-clk@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:git@amd.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:michal.simek@amd.com,m:shubhrajyoti.datta@amd.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[amd.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shubhrajyoti.datta@amd.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,amd.com:dkim,amd.com:email,amd.com:mid,amd.com:from_mime];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B738B683223

With xlnx,static-config the MMCM/PLL topology is fixed at synthesis time
and no register programming is performed; only the dynamic path needs
the AXI register block. Move devm_platform_ioremap_resource() under the
non-static-config branch.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
---

 drivers/clk/xilinx/clk-xlnx-clock-wizard.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c b/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
index 4a0136349f71..e082051221be 100644
--- a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
+++ b/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
@@ -1168,10 +1168,6 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	platform_set_drvdata(pdev, clk_wzrd);
 
-	clk_wzrd->base = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(clk_wzrd->base))
-		return PTR_ERR(clk_wzrd->base);
-
 	clk_wzrd->axi_clk = devm_clk_get_enabled(&pdev->dev, "s_axi_aclk");
 	if (IS_ERR(clk_wzrd->axi_clk))
 		return dev_err_probe(&pdev->dev, PTR_ERR(clk_wzrd->axi_clk),
@@ -1183,6 +1179,10 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	}
 
 	if (!of_property_present(np, "xlnx,static-config")) {
+		clk_wzrd->base = devm_platform_ioremap_resource(pdev, 0);
+		if (IS_ERR(clk_wzrd->base))
+			return PTR_ERR(clk_wzrd->base);
+
 		ret = of_property_read_u32(np, "xlnx,speed-grade", &clk_wzrd->speed_grade);
 		if (!ret) {
 			if (clk_wzrd->speed_grade < 1 || clk_wzrd->speed_grade > 3) {
-- 
2.49.1


