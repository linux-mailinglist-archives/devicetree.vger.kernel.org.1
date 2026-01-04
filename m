Return-Path: <devicetree+bounces-251275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC6FCF0BB8
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 08:54:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 973223019BD3
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 07:54:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EB7E2F659F;
	Sun,  4 Jan 2026 07:54:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OS8PR02CU002.outbound.protection.outlook.com (mail-japanwestazon11022143.outbound.protection.outlook.com [40.107.75.143])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDAFB1B4223;
	Sun,  4 Jan 2026 07:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.75.143
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767513249; cv=fail; b=VGx3ukZDVX6x8Oi50IoTDWeOpiHjpRKY30so8Ko4ehjKvXTVG/+5FCbz4xocl6yYFiFRDhLl+VozDpBHXrVog0hq/H74pg/7q0sqJRY9T42eOBjhhSawH3Sr+RMJjR/CzXklojmsF3FuLsQI8oX6IIUTh8UZf8SB0M38LvzVVYE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767513249; c=relaxed/simple;
	bh=A2ndI2wUvFFvc8pVszD0ADZ8DsAhdOi7DB8TC/ZQEqE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=WFAFmEOIgeuTaPP4wExdnts2hOhbWwN++AsDADFoOGutTDRFDd5BQwePrBHBzTKpDh9C6owj8rxgYbRiElwWFqcbujTkQr1NDuNLWff/zfWEYtYjeaL2jvALXsV60cBqnjGHlWs6vEBdk9F99XL0gzjNpioWzA/4vByFP04LJws=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.75.143
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WZJV4louhFNkw4txlAAyEHesgc2gssSgjtViMrmHS9wiNAJ7N8vu5UCYxRcgTSIMjhCFdEjydgEINBE3CznTsGGlONhET53piUBNndzWlomQgLplAc3PAhRo2L1CBud0AJuka8hNv2CGKjaSLrlhBuWN5GnT8hPNjKr5c6t1ew6kiQWGSPx1yz0R/+al6STy42RQKAKYc3ynPKAma0f5ZwSBobqGVbMpUZtsuevmvLorOGwnojlBtj5TBIt0EnWnwXOsFirf6MHEfwHwp+0fdVSu4VBPNehYJ5rqHL1SN+3a5Drc8lJwIN6sKiApKdfm3dOkD9+lyMDo/4icieK0KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qsWLh/xBcuaOVslwrGjE4mha+Z9b8Ro5+1TtdF6+7Po=;
 b=XM+cnfcb9rfKwwfHjM8NDIz+C96m720fQYKzwYdegfPaz2KrIrQXIRM8cEsqpQbbmyN4gGB4XC8qdlBw8nc7uiQwBBg0xKBms+XRuHBC+nt5dQUIlXjKShpn8WAe9fZIh9ANVRLA2PgE1pOtdbEj9S78jue00jtOyEMHTsq6MyUNYDuaFcF85ik5kUbGcfvQUbPAPscASrvyKFxjSGlqhHZYsLCsdvThCMxbmI1BOPQLiJQrc0bj7KWcMorszINYVcQaB7iEbyEl5NfiiNqpHuk/DmCIbMxTHgOUGO+qABojZu7OaXUeg1+TYHU+gFAmlISe5+H7SUlQzTjiRFn7pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from OS3P286CA0081.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1f6::7)
 by TYZPR06MB6239.apcprd06.prod.outlook.com (2603:1096:400:33d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Sun, 4 Jan
 2026 07:54:03 +0000
Received: from OSA0EPF000000CC.apcprd02.prod.outlook.com
 (2603:1096:604:1f6:cafe::c1) by OS3P286CA0081.outlook.office365.com
 (2603:1096:604:1f6::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9478.4 via Frontend Transport; Sun, 4
 Jan 2026 07:53:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000CC.mail.protection.outlook.com (10.167.240.58) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Sun, 4 Jan 2026 07:54:02 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id ECA1540A5A13;
	Sun,  4 Jan 2026 15:54:00 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: peter.chen@cixtech.com,
	fugang.duan@cixtech.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-cix-kernel-upstream@cixtech.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH v3 0/2] Add OrangePi 6 Plus board
Date: Sun,  4 Jan 2026 15:53:58 +0800
Message-ID: <20260104075400.1673101-1-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSA0EPF000000CC:EE_|TYZPR06MB6239:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: d0a94650-073f-43f9-4d26-08de4b666d57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|82310400026|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?GAZx50Kdz6lI934gHcjDB0maDFbIHvsUz28lGhlP4DLT9VAKexCpHHKSf/3R?=
 =?us-ascii?Q?wO3FP9FBU0jfxNaB00BzlBSbkA906q5GuCuFKQXd8LGw7LHbjLVR7C9G2gIO?=
 =?us-ascii?Q?WKNtPEg5mugxDwhXfts1GExsVB+OQvoVeuuHahSuKsqijLkmqhRfMzSijtg4?=
 =?us-ascii?Q?Bjx3V+XAlyqrtNPFU0fCXwTnTBjg/Iykm49NHc5F/7uek+U0A4e8nUe4cM7w?=
 =?us-ascii?Q?q1G2vrGBeP0E7SR4MN2V5mxKjLJjM1/N08nCAJ4/7NuxxZT4ekIC0+7FC7+j?=
 =?us-ascii?Q?C+IRUAi3sM2vOMzKmzMZtWMWPVqXGOS0054AVewecFHcVLDoMf2ne27MpvJN?=
 =?us-ascii?Q?aFYCXtUnY3NpSWLEGgSB4BGxMXwmOR8gWbqZQF3inBtkhMm//QqZLW2GItqN?=
 =?us-ascii?Q?PZ7XOrlN4NSF4QgnUGXk30b19PbB0Gx+3oYGTj6IK45EC2L3W1rm7d1Sz2++?=
 =?us-ascii?Q?4eAeX4y2k9Qp2Q2515/h4j7HYZSe8A9Y7gRXIFzZCZra8ycGkO6PJj+LUAoW?=
 =?us-ascii?Q?prpktM86GxvUjsRTJqswl82khbP29putiZgF1wyNfoOUieWqbdck0ZQ43qHR?=
 =?us-ascii?Q?755kN93Lebmb3Wh5ZIz/0k6FI8rul5Y0sg6edd7eNeXPGyCicd5H50y7XZ5y?=
 =?us-ascii?Q?izDQqarHPTGcMbIer6ha+rQjH/uRoLaOOuv2uZIMvLjVVAR6p1qLk8Zy++1C?=
 =?us-ascii?Q?vYVQHuLmo4LPGbI6sLUkSIPZWav4LaeL0dDOd1WeSVaIVvbGKAjsXdxhil36?=
 =?us-ascii?Q?m0JMt37SZxFUh5zuFTXwHWtd9RnQB7k+YxjVJ77hPvBToib19AoWKJ1OpDXu?=
 =?us-ascii?Q?rBPm+4BI6Wg+66ZnwOFz/gxYqB0zumuNwAFimKU58H8vr4o0eaM23Rv1V0cg?=
 =?us-ascii?Q?M6ciWJVu3enIqxYFbyCOJzeiMqL+KZBSpp3qdwpncBkLqWj1NnBSAd7T8pSy?=
 =?us-ascii?Q?5tTewresyAp2oN1LZIDOih7lHPhl/fzkAPZaj4/l9TiQTPA9Xhxyr6GWSgXd?=
 =?us-ascii?Q?WvIwTd+jmBisBH+2VQGuNb975wFI3+nuF+XXsePBgz55/j6kmV5ixCAofwvR?=
 =?us-ascii?Q?El5wRrYmmGA+/MbmfX1KPpoQm4j0H3pFZYmWND9OFhAvpw0+oySibi7wZgM6?=
 =?us-ascii?Q?VxwDVsoeI9eHnYvMyqwLZnnuu/q0Vn1Tj0XeDRqRpZsDL2m6mIpORRTLyhD7?=
 =?us-ascii?Q?R5aMLq0EvGdzwYBjLe8FJkV7k9gyGEOgIww7rSJ9r9t5NaCswZ9MGXGcK1Gr?=
 =?us-ascii?Q?T8glIOKcCxmSl5OhzxX222d/cMNthv1W6X7WKwM2kZjJyF1jEkAqvEhIV/ht?=
 =?us-ascii?Q?XmTd+Xd2kV2clhohERZ2tcmdMIBCvDNZiW1rxjuqxamfxoCdpBkaC5Fvas9V?=
 =?us-ascii?Q?HyiRX+z9sddjtXNo7gARxzgUwwkHXgWRSwa0puPv3lgudLCnlzGQTtWFwAf7?=
 =?us-ascii?Q?+eYVvQoRcvtjCzrRTruuoCwKvzBGWotzm+1s5BJP9mHK+DahjaLkCGNkxaAq?=
 =?us-ascii?Q?QQ6YSR0x7Bfv5qgrxRqNGQXyGT6e9Xd2HZpssUgtS2abVrH+fkvo2o4F+seB?=
 =?us-ascii?Q?F9FZLrvCa60C887mro0=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(82310400026)(36860700013);DIR:OUT;SFP:1102;
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2026 07:54:02.2277
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d0a94650-073f-43f9-4d26-08de4b666d57
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000CC.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB6239

Patch 1: add compatible strings for OrangePi 6 Plus board
Patch 2: add dts file for OrangePi 6 Plus board

v3 changes:
-Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=arm/cix.yaml
scripts/checkpatch.pl 000*.patch
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
- Fix the description of board
- Fix the commit message length within 75 words

v2 changes:
-Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=arm/cix.yaml
scripts/checkpatch.pl 000*.patch
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
- Fix the description of board

Gary Yang (2):
  dt-bindings: arm: cix: add OrangePi 6 Plus board
  arm64: dts: cix: Add OrangePi 6 Plus board support

 .../devicetree/bindings/arm/cix.yaml          | 11 ++-
 arch/arm64/boot/dts/cix/Makefile              |  1 +
 arch/arm64/boot/dts/cix/sky1-xcp.dts          | 83 +++++++++++++++++++
 3 files changed, 93 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/cix/sky1-xcp.dts

-- 
2.49.0


