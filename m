Return-Path: <devicetree+bounces-132630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 75ED49F7A6C
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:32:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B3051892F4B
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 11:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD109223710;
	Thu, 19 Dec 2024 11:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b="l25/pkBm";
	dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b="l25/pkBm"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2045.outbound.protection.outlook.com [40.107.21.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36A718CBFC;
	Thu, 19 Dec 2024 11:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.21.45
ARC-Seal:i=3; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734607931; cv=fail; b=iInhPRa0ogNwFCh0YzGNTkwhB/29OvBt4lAwLxp8JehURQDavGZDP6JUxGeG+rhdGa3leSMu3okHeux53Q08hYmwGiZi5lIS17KdggRHiqc+r9zQK2QB3vuxILLX8uQ3OTHrXbnLsa9fsHuOtgHXULZQGgCWT9fSpxtZHgmHpAk=
ARC-Message-Signature:i=3; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734607931; c=relaxed/simple;
	bh=SMbCbkSZvAhaj7r0XrE+eBuMOAeyaZ8Vi8r0dfLWpIk=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=XzeGLwXz0jRcE678cyGr4HXLIlmuaoMDdjr4YE8Du6FJy2m/uoP8OSKNA+stWhjt1Oy/F9krslS3Fq2kPedp/kr+ZxssDzy1TkAoODJ8+80in9TmoN6+xmaZjhRvRa/vykWiqJTlmBIC69vRy3kpmQMynaLBHaFxOLiUKOcvOf4=
ARC-Authentication-Results:i=3; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=l25/pkBm; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=l25/pkBm; arc=fail smtp.client-ip=40.107.21.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=k1vYhcXa6bFrFt+2iSJkDe8AdP1lReZWbar+z3NcHPg6vcsok9wHbuiqlEzRWDhLR5XJFAruyGMM3tYQpA4O1gTE3Yw1O7fh4BySrizk4J+PKh6AWbrtGAA2gQ+gZxgqmT67Fd3zoP+zk65qAMos8mh3Guw6ahl/r9E1pXiMS2TVXYXj5uyqev7VXF0xTJpgsLOudpkCFZlo71fk2fP4RC/TkliQjeO6ZMhn7pBJ2G92gU7/RREVcmSAJwXuB5Sm4nMxehR0ZtU/Cv8DFU8r8xGgw8jAVBljrRA8p+7RMlaSIrgScTNAdUNsLPV3NB/LvAyKM4ReU/wkIY2Mo0Sa2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=364ZluCIZr7a70dPj3sh51q1QQ1v/Q982RL9ATBcfj8=;
 b=HBVXRmwkOJdeEl7gZiJ9BNmEsd/mQWypTycPl4jMHVOLRK6fLcrnhZd3GhCJTq+7NIM4oKiqnyBqOrYhfX1AuP20yUh43abkU+ydy4+0fPcahb20P3Kz3mXteuV/3FI8f+fbJaqi86CHmWLQDvoRRKwmSNJ63TbfGEDnU6UWGuHEuq4fOq8ymujMQ1gppC7UlRWCLTfxY3dECldlgvJrwcewAtViw4vDSNVNgzaarFwdYULXVIbrZR5OTv0lDSTYkIAzUTUgEFLxmJClKx3DTKjm2CUFlWF+LGfleI7E3TvuOxVLRxxW9kpUiAClcjlZAqNfWvq1QIEK4mEo13e6dw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=0
 ltdi=1)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=364ZluCIZr7a70dPj3sh51q1QQ1v/Q982RL9ATBcfj8=;
 b=l25/pkBmgDJDBtnON4YIgwzbz9KNxxgs2gr6Z/sECN8FICQXmTHypKvy/K54G/+FwKdUdas+K2XFIf81P58j7n1Jeep6dD/S3Tq/FzU9wEWoskPekimnItoeFFCrP2gKrZVK0smk5XK1bQSVv7C4I98OTYNe9QCK3Ft+no+1gVw=
Received: from PR1P264CA0156.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:346::12)
 by AS8PR08MB8489.eurprd08.prod.outlook.com (2603:10a6:20b:568::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Thu, 19 Dec
 2024 11:32:03 +0000
Received: from AM4PEPF00025F99.EURPRD83.prod.outlook.com
 (2603:10a6:102:346:cafe::34) by PR1P264CA0156.outlook.office365.com
 (2603:10a6:102:346::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8251.22 via Frontend Transport; Thu,
 19 Dec 2024 11:32:03 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM4PEPF00025F99.mail.protection.outlook.com (10.167.16.8) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8293.6 via
 Frontend Transport; Thu, 19 Dec 2024 11:32:03 +0000
Received: ("Tessian outbound 7762b28e8285:v528"); Thu, 19 Dec 2024 11:32:02 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ead70154cb8d63c1
X-TessianGatewayMetadata: MtLI+QKBzKBOORuBNxkhJodQeBy4wgmQxiM4k1f2zpt0W9AlozLoJxaJunMLpU6rhgi6PQzW1xQf793+aqTcK6zmDmPj5PIXQRkxyWABr5iXK9+DXCyP6j9U0luFIunknE496UkGyhyJseTZMmZsel52+4Pru5yv0pbspVkzMTc=
X-CR-MTA-TID: 64aa7808
Received: from Ld4b557958c1f.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 7FB69301-B5E1-4EEF-9B5A-B64B054D3BD0.1;
	Thu, 19 Dec 2024 11:31:56 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id Ld4b557958c1f.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Thu, 19 Dec 2024 11:31:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xzy7i3fjko2VpjGC264Nqw9JF0e2xSPxMxpzuXQp3qV86QnOrO4YEAZFBJgfc6xX7Tv4V3dAhhAIMihf+vSpOs1PD/sOfa3l8HRlajdoPnHwYbgb7/HWnWCbs0jPMn1Nt5bebgdq8VAR12q9+X37UnAChhhnr4ncA9pTpeSZMXQzwqk6G6FHAnKdMcGJnGLzt8H8FPumyvVHNCBy6eTKE+KOHQ4fJJBYJpg1RXoXJ8PtmlqFnWCwLD2VpNo4orsX/SJwSgOwwf8YabP5pYQKa193aJG+WGm4249f5uT09X+enMGu8OwGXg7O2tBY/zSQg3be6qDfl5X3w/SRI+lcwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=364ZluCIZr7a70dPj3sh51q1QQ1v/Q982RL9ATBcfj8=;
 b=LBLvAe6UDA8viO0BbTo78ZPTMDUp9M8q0gcvuunZZ9WobcIN/V6HMPx5IeyigB2adHrSYGZp4zEkLySHtgA7KeGHDUOlNuozHiaqea9veR83a0WyP7OeG9JPspmB2EkeJ00I5HcWOYJC6cxEWaNAIj9hJeRVrBd8RRmTvn+JnWSy2/ZTbp2utK7LoqT87Zqvalrvh39+Fvs6Ogqf5b/qbqmCF/6oUGr7U0UL6+j9sRTRy5yucSjf+/eOwGaN+HE3tVe+0/hC20ylUdZHml1BQYUm9UYIoDgTGG5cPAr6SARKkFrD8wmA1r06FDSyZkB1dfhwFsjNbbzeQwS4vhPMWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 172.205.89.229) smtp.rcpttodomain=sntech.de smtp.mailfrom=arm.com; dmarc=fail
 (p=none sp=none pct=100) action=none header.from=arm.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=364ZluCIZr7a70dPj3sh51q1QQ1v/Q982RL9ATBcfj8=;
 b=l25/pkBmgDJDBtnON4YIgwzbz9KNxxgs2gr6Z/sECN8FICQXmTHypKvy/K54G/+FwKdUdas+K2XFIf81P58j7n1Jeep6dD/S3Tq/FzU9wEWoskPekimnItoeFFCrP2gKrZVK0smk5XK1bQSVv7C4I98OTYNe9QCK3Ft+no+1gVw=
Received: from AM8P251CA0008.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:21b::13)
 by AS8PR08MB6056.eurprd08.prod.outlook.com (2603:10a6:20b:299::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.15; Thu, 19 Dec
 2024 11:31:53 +0000
Received: from AMS0EPF000001A9.eurprd05.prod.outlook.com
 (2603:10a6:20b:21b:cafe::ff) by AM8P251CA0008.outlook.office365.com
 (2603:10a6:20b:21b::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8251.23 via Frontend Transport; Thu,
 19 Dec 2024 11:31:53 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 172.205.89.229)
 smtp.mailfrom=arm.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 172.205.89.229 as permitted sender)
 receiver=protection.outlook.com; client-ip=172.205.89.229;
 helo=nebula.arm.com;
Received: from nebula.arm.com (172.205.89.229) by
 AMS0EPF000001A9.mail.protection.outlook.com (10.167.16.149) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8251.15 via Frontend Transport; Thu, 19 Dec 2024 11:31:53 +0000
Received: from AZ-NEU-EX06.Arm.com (10.240.25.134) by AZ-NEU-EX06.Arm.com
 (10.240.25.134) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Thu, 19 Dec
 2024 11:31:51 +0000
Received: from e123574.cambridge.arm.com (10.1.197.68) by mail.arm.com
 (10.240.25.134) with Microsoft SMTP Server id 15.1.2507.39 via Frontend
 Transport; Thu, 19 Dec 2024 11:31:51 +0000
From: <anton.kirilov@arm.com>
To: <heiko@sntech.de>
CC: <conor+dt@kernel.org>, <devicetree@vger.kernel.org>, <krzk+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<linux-rockchip@lists.infradead.org>, <robh@kernel.org>, <nd@arm.com>, "Anton
 Kirilov" <anton.kirilov@arm.com>
Subject: [PATCH] arm64: dts: rockchip: Fix the SD card detection on NanoPi R6C/R6S
Date: Thu, 19 Dec 2024 11:31:45 +0000
Message-ID: <20241219113145.483205-1-anton.kirilov@arm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EOPAttributedMessage: 1
X-MS-TrafficTypeDiagnostic:
	AMS0EPF000001A9:EE_|AS8PR08MB6056:EE_|AM4PEPF00025F99:EE_|AS8PR08MB8489:EE_
X-MS-Office365-Filtering-Correlation-Id: 7752bf4a-5dbd-48cd-8995-08dd2020c292
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted:
 BCL:0;ARA:13230040|376014|1800799024|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info-Original:
 =?us-ascii?Q?ZGVNZMD0e9QpGRO0jp7Mu7f/8ZiWxUBIokPVjspC+a/dF/qJgk2losWVfKEY?=
 =?us-ascii?Q?I/Xeb7uNQSK/zMq3QzZ9L0fNRWyLdhVBW9qszMV0k1to4gmRX+Vycl1URUPt?=
 =?us-ascii?Q?Wx12UEyS1o0so2z/vpU4wHa8jBycupO8IoBYqqwwV340mVQc0dEK7cFERzcC?=
 =?us-ascii?Q?vX5fY/t270QQBPBj6EdmX4GCb23S7/ToWttz3KsnDY0SSaqUlvMFv0CDK1S3?=
 =?us-ascii?Q?WovyCbjrhWBgQnVH0e3+aAIs6wUHQbWJG1Ll61rXTkB6AnukXSssRy9s8o8x?=
 =?us-ascii?Q?9FQ95CsxX1lc6Ti+58ph4d1dmo65R5/E7+4nRJpjxh4nHoCclhOoBJJi3QYC?=
 =?us-ascii?Q?lvp5NEoQ5xHNBWFFH7ciMHdeew+SXShfL+lyw7aHBdp8gfPHwTQMyyKUpR5Z?=
 =?us-ascii?Q?5LMnV7DuNyoLQjFKSNlCUtJLsQtjcBCLW5o6ZAZC9H+ujc3VblB28MO0OV5T?=
 =?us-ascii?Q?gJ+aB9PdvM8LZmNKQWJcPhBnYUpTxYJZocLCmDpjUIZln0vXN3tEZSZXG6ak?=
 =?us-ascii?Q?qg7aFVZtiKo5tBMCKAt2uLaIoYgfltG+MbTQYA47E0ir+zV5kJv1/oNaRTzB?=
 =?us-ascii?Q?vwY/FilT/hCWUzurlnpXlvkexoYuzpNtlPf1xxjyhAlF/ReXAEK8ogB9UEIt?=
 =?us-ascii?Q?Zy6mdq/GRbgX/bWjTDy0A8Lo4O+HAeAXfRH8JgL4QCqN5QIV8EwT/ll2JOGv?=
 =?us-ascii?Q?TiVp+ZavGn0Fl+99oXbND5QHwgtZGxzC7TPwi+u2oHclv9zvRJ5dv5ob51Wh?=
 =?us-ascii?Q?kaJNJAKwxpJn5FYbwNz/xlhXsOs8yFiXbgginDqntlLwJIw5076SqRnXczry?=
 =?us-ascii?Q?ebQpJ/mngxF4afuiauP5HDmE6KtF59wgBpdrBUa9QL0WDKluaDxtbJrwTrST?=
 =?us-ascii?Q?oc96gT4gjqcrKUhZXKqsX+ritw8ORZQ/UeJEm+ipKMzBTIRrg0IrwwLxWvPy?=
 =?us-ascii?Q?St2I0DDTrQzxAjI2H/kzutRwVyJquXqlcOCPSbP1bruKwbm1vwdcAD3DJL9q?=
 =?us-ascii?Q?QT4m/yRD7p3htKn5X87wwpBd0Cw7+gRIqwQbBZZheBxbjSUA7eNCnEharcFn?=
 =?us-ascii?Q?kxSo+ZKe7pQm8KiDRnzOLg7erpNQlii3A9pgLc1hzFJamV+IDkXKORjHpW05?=
 =?us-ascii?Q?1fETwmDPPqMLxzv7uqnTraSF2fgTHz9nDQDv2fDi6zyEtjnckiCDymMXSLXu?=
 =?us-ascii?Q?LuELNHw7x3gOEqc5+04rM6dI807JY0R3ROiic88dvg6RdXNzvPwnEPfxkBrv?=
 =?us-ascii?Q?BXuDRrHEqVoAh6gXJEJbxX1216nJW308g3k58BJlqr1r9lwvSqrNRGr82lug?=
 =?us-ascii?Q?PIoXT1Wqoe7uIijCtGLZjJXWQPPFSGTZe8eaOHpER+/3pVWnVL8xRQ5SAwpi?=
 =?us-ascii?Q?VgcevEXgrlizsiKbLz25mGAbUnzvJwohBwtrHieQR0/k+SSVItaH1Wwq78ys?=
 =?us-ascii?Q?ky/LII3M0Vf93wCYS/7Ai49QXf37XQ72ZzIrEPF9b3Fe/70OqDVVyA=3D=3D?=
X-Forefront-Antispam-Report-Untrusted:
 CIP:172.205.89.229;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:nebula.arm.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6056
X-MS-Exchange-SkipListedInternetSender:
 ip=[2603:10a6:20b:21b::13];domain=AM8P251CA0008.EURP251.PROD.OUTLOOK.COM
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 AM4PEPF00025F99.EURPRD83.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	a4559fea-913d-4310-13ec-08dd2020bc9f
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700013|35042699022|14060799003|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?5hrCQU0VyzRmN6ct1Nro3CkeQi0Y/M5reiTQ8u5ALenWjd/vU8U/6hm8Qsa3?=
 =?us-ascii?Q?NDXWX4ecaGckcDFIE9dYePnTn0xv9V/yykpfZGuKEqXy08nMVNAnfi7gwjU1?=
 =?us-ascii?Q?4XnWJm485G/zTB7Dbo64bgmR8Iu/dQ8a1R/vc+nMMitWUc11+nh9BM7Bd07J?=
 =?us-ascii?Q?1MNLD6lKLRVo4Elp6SPnmj3t5ycsZIm4XMKJ/xCYjQWHQdxx3j8psi6Odx+Z?=
 =?us-ascii?Q?CfVQ0Q6ibJXByqYQQ9KexVvHgOe+5RudeuOWeViEVzvpx5XEzkSRAGpTdICH?=
 =?us-ascii?Q?wv3HH8h3xpx9tLpnwr1cn1YD9yT0L6zMlGOKIzvR4PZFYDffDBK/7hv3G/Xg?=
 =?us-ascii?Q?kCXfVjCKmUEkVJN8xWyVlY6eP4RjCQjPImcyKzfZQzSahSnZwxNf0xSplYM7?=
 =?us-ascii?Q?ufShr391QVZWc518RTMx9kiitKSwaP40JanaHzf/mLdHVHsUQrwAj0B+E7gU?=
 =?us-ascii?Q?e6VtC3yFc5oguDCUxlWFLhlMKIkFtbndzcXuX8wASuyUxQFBUzvFA9YYecGb?=
 =?us-ascii?Q?uXthkwhLcKjMpJqfzwg6dGTum4oE69yj8f3VP+7SasktvF9z6G52ZH3ji/tR?=
 =?us-ascii?Q?RKgzNL0xCTy60aHFLlCOHSGD4cm6cxjt2x1jnBMGfttE7soywbsZi+HJDH7U?=
 =?us-ascii?Q?Ml5HXT2z445dQXBG5xYa9zytka02t2WCngecnyC/UwqwB1usyP5jzwzzDh9B?=
 =?us-ascii?Q?a9FaQdArbmQ+uHj4iXIRbWxZR5S5fDro5LFCvcvs2fK/QDotvFSOvd9MAnT7?=
 =?us-ascii?Q?C9v3CmcvgLvdppeUhtDRIPJ34sw2u9dtQrWQKy99ALkWPZGsGw7IEqpUQlP4?=
 =?us-ascii?Q?7xwVb1Gd1Jdl1Fzho0e0XQXrQdqVS/KBNyUBs4KQ2d4GQg6F2jRniE1Eqv1U?=
 =?us-ascii?Q?TVTUyBdqr+XrXqLLdlUW5qMH1356aFIZM1FTvJklri9K3UZ+XHwBITlJAloa?=
 =?us-ascii?Q?ahs9rojs6VBY1OXuPO25SjTYJDyhFBliCCfLGFTF960Dl1u95CR/2NwoFH/I?=
 =?us-ascii?Q?YHydwBrmtlqr96FNGh1in5ctMYAt11R3PX5wog2QxekuuXSCltCWGmaDMsn4?=
 =?us-ascii?Q?yi3ZtKB+XuCNIQ6Wz5rqXziLUQ+uhcl7J0pItnL52nCZ8VG2XaGyv4J890Xy?=
 =?us-ascii?Q?Q00mF8rRE7T/Fb4zB60QVcyrtjbO5s6f6sK8JY1uLLbSn01wnBxUWYk4ctc0?=
 =?us-ascii?Q?77UUSVPWmvIXS+hwRk1RuGiTJ94rDI0N0M/X0SQ55H0y+3mpwJaTZ1bcTJJS?=
 =?us-ascii?Q?MFfJAh2UvNwUAU9l5tqqLsxq7j0nPKgScnV3+Qiu2QFu1maZ6OWkAqZ6/u6M?=
 =?us-ascii?Q?E18/Y6cKkwxORml0B7eo4gd9RPVQYxzLCbIcBeeo6k56hM8a4uIeNu0cNuPM?=
 =?us-ascii?Q?KSTMzVV6SlCq07o7jRvgLUsxB+3xPYJnF/5vAEtMcF/qLXgiqdQuvoc/9O7b?=
 =?us-ascii?Q?FL+KIE6BK+Hx677N2PXLmC+5yKBr212y/ugArRgnYJGMJA29PDXz1bfI5j+k?=
 =?us-ascii?Q?KMrk+Z0fJnJnvwI=3D?=
X-Forefront-Antispam-Report:
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(35042699022)(14060799003)(376014)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2024 11:32:03.0966
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7752bf4a-5dbd-48cd-8995-08dd2020c292
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AM4PEPF00025F99.EURPRD83.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8489

From: Anton Kirilov <anton.kirilov@arm.com>

Fix the SD card detection on FriendlyElec NanoPi R6C/R6S boards.

Signed-off-by: Anton Kirilov <anton.kirilov@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
index 76a6e8e517e9..c9749cb50076 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
@@ -434,6 +434,7 @@ &sdhci {
 &sdmmc {
 	bus-width = <4>;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <150000000>;
 	no-mmc;
-- 
2.43.0


