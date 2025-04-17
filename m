Return-Path: <devicetree+bounces-168211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B293FA91D1B
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 15:00:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1DE893A775E
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 13:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F203150980;
	Thu, 17 Apr 2025 13:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="uLQQOK0i"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (mail-vi1eur03on2090.outbound.protection.outlook.com [40.107.103.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC6D11BF58
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 13:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.103.90
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744894824; cv=fail; b=pllnOZDHSC5AzrC84HJV6T+UfJN73Ay8KFc6LLtzm9x+Of3nh5bWXne3RQ7stgVq71iXt/i+7WEf63gKU3ROI5w18r2LVrhV0cd6GAQ15uHXNvxxbNwdBV68iZmLPnJknKy2U9sOLisyaQhKbD4nEOiG/xeDOf3HoTLXX8/vMh0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744894824; c=relaxed/simple;
	bh=/x31vXNgIQu/WiKHc5uo11Hycvtotvu5ZwRbQ6kty6I=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sOtXmbOetWIIQai73i4QY11hqusXX0j1E60SlZVCBhDRlJah3LrOtxvreYCnpFJBNw8Zrs5vmDgcC+eVM4dPRCd2OYZ0jpAAoQf5AWxkc4uTQnrReQpIUERWdWl8eDG6dDUNHDbpH7INLiyTYi0wWCqwL7fAH6hwuL4Ir9Sq9Z0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=uLQQOK0i; arc=fail smtp.client-ip=40.107.103.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uXxnCeDKXFYRmEu2l5vNlOYKc9wbRHPogxU0pdw0M6Du78t2Cad+DOAdR/cxXQ0VDG5j3NdM9o6QFe6jCSX590JQq3P7B5ldvKZW4SNS4Zug+uUPi9ZfNc+BwTlcUgQKqYfaME/X7UOrR7fdU3hiccmc5OHKflt6/5Do3lOcLL4b8xWTllWffDAQ1d1fF+oVZjVJEX6dOociopX+LF/BKGiPgZSvV1HKhs3be8QdP3Xm+vFy2F5o8d8bDjpgOhtTmQ4nL85qRUJ0vUQCo1AJE5KAGrvl4dA7KEwgLDIl9YKQATuivkxw2JK1WUOttDXwN18jQmHAocYzrkhcRJy5eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SARyRxrKg3qek/4+8wUuOEhGgsOEF3Uaa//5s3TbaH0=;
 b=XVmmBr62jJbpQEOFJX9SjpVpQLUgZHo4pB2MI4Sgh9Bt6mNetoRV3BXCutwK8P5IDNucgsPhBBMFQBhR0cIfu9PU1xBQUJ+cJob9Kfi3+epXbJF6K944H5w9WcgZuiUwUUekdGM/u7ZgcJ5J2HkG0TY8EpQk5bl2Fj12ROo6CpbfB5+PfggOzrUy4LGoj6uvu6ZLBzd+Aa5CoGF0AUM/EzQvbQxjEuR2Bda+m+2NPukjQsDMsgp0DMOxqN7z3dDc2NWtgXM3RYRM5LJCeEcz5drz6yVnnH5nwKzCeSd93XaedWSwO8ZsUzgdI0SlwFZWjF2Z9RtQtrvoZcfAVYyz6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=kernel.org smtp.mailfrom=phytec.de;
 dmarc=fail (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=phytec.de; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SARyRxrKg3qek/4+8wUuOEhGgsOEF3Uaa//5s3TbaH0=;
 b=uLQQOK0iTuW/Dt7D5IxqLKInpw+1ZXzwz2sdu9GEoQPgaiQuw1YfEWIliX2i0M+lWgoaCIfx4biaWfLE4j2PAp9Z2KU5XFLYONcn7haeY/HIP5jOurvYyVlaJF07mTHUjEFYjRl55LOH9QMbaDEtXsgJFlxmnXSk9jPlD9aURkm44Y3hSprIk/9zHGbDG2x4m5gx9xxP7C3wqDzg1IYMunpzrIPbHenxucneMrn8uorZDG/YRr6ZJ3weCbjJOFkJon3HnL38HqSUIqcjjuATbiQHs/f12xZ0VFk/PA6R5+N3jYLew7tOR8Lfy3B5tzxZdNF3M3BRr30WiYsqsHfWKw==
Received: from AS4PR10CA0003.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:5dc::16)
 by DB9P195MB1354.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:295::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.22; Thu, 17 Apr
 2025 13:00:17 +0000
Received: from AMS0EPF00000197.eurprd05.prod.outlook.com
 (2603:10a6:20b:5dc:cafe::62) by AS4PR10CA0003.outlook.office365.com
 (2603:10a6:20b:5dc::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.18 via Frontend Transport; Thu,
 17 Apr 2025 13:00:17 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Diagnostix.phytec.de (91.26.50.189) by
 AMS0EPF00000197.mail.protection.outlook.com (10.167.16.219) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8655.12 via Frontend Transport; Thu, 17 Apr 2025 13:00:17 +0000
Received: from Florix.phytec.de (172.25.0.13) by Diagnostix.phytec.de
 (172.25.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.44; Thu, 17 Apr
 2025 15:00:15 +0200
Received: from lws-haller.phytec.de (172.25.32.139) by Florix.phytec.de
 (172.25.0.13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.44; Thu, 17 Apr
 2025 15:00:15 +0200
From: Dominik Haller <d.haller@phytec.de>
To: <robh@kernel.org>, <kristo@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <vigneshr@ti.com>, <nm@ti.com>, <m-chawdhry@ti.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<upstream@lists.phytec.de>
Subject: [PATCH v3 3/3] arm64: defconfig: Enable TMP102 as module
Date: Thu, 17 Apr 2025 14:59:21 +0200
Message-ID: <20250417125921.100580-3-d.haller@phytec.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250417125921.100580-1-d.haller@phytec.de>
References: <20250417125921.100580-1-d.haller@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: Diagnostix.phytec.de (172.25.0.14) To Florix.phytec.de
 (172.25.0.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF00000197:EE_|DB9P195MB1354:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c6be577-f9e7-4716-f7f8-08dd7dafcd23
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|376014|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?OGCFZdTCgLuZaviXHbX0Cx1F47zGLTvZzErdgTEdo78gU6ijRoOnbv1JNEWY?=
 =?us-ascii?Q?rxpOZo1nZfS3yb2x0yVlxEv9j0wUG/BKm/Q06Om19QV7xoOMKVlsFO9NzjVh?=
 =?us-ascii?Q?XI136tFBvYbYJRzETf4aSUroAed9FYX7eokU+jpw9o/4dJBeE+LJ8uAd2W2n?=
 =?us-ascii?Q?9PvlMVy3fvY6h/ZKN8zyJclQsxIIbu4DDQzNDUab24BUB9Sl9ypeM4U2SM0Y?=
 =?us-ascii?Q?3/ZSVxjjwYNtr29G3LBYdLsSGx7JTEbmUgG9JSc3/drj0gHfBPaIDrryFKEF?=
 =?us-ascii?Q?NR9tYSas3j8//Q3kLF6UvMJw7YJU9fKoE7QQjHMZOQAHXomKpQAoiQyf/KWU?=
 =?us-ascii?Q?2VTjgKSxWPPoMOL4yho6PWmc7hodkHOdEkXutvjGbOI2YUSk6kMEZ2pVjqnI?=
 =?us-ascii?Q?JRHVyoOxWWhbYiGSFWzmhKzryOfTKpAbDRbcYCoE2T9IzlG1gxBH6p/Opc8F?=
 =?us-ascii?Q?Hx8jpEnbiDca7MEC+FUdMkm1oY6V997ky90CeEutd0BjDyUX0UINLoQSZNmM?=
 =?us-ascii?Q?789C9vXb4ugxJQoppluQrOP+65zj1ath6+DI4Ah67DdpXJ84fg5jzR4BDiSZ?=
 =?us-ascii?Q?0JJOuinImmUvYhckLXg6RW1BLYEMSRIHTD4UHk+IFa4wRKuzKjph1lTrHCXc?=
 =?us-ascii?Q?Q/KyOhNvli6M3t3CIyFT32iFe4XI9POyID9V2NKeHrL7JmcizJz7vrW++nt4?=
 =?us-ascii?Q?oNRILqhy/3KOipioY+kGJu/L3XobgDrAO4MmEyfDAKet/q61U1EezD8iPGVG?=
 =?us-ascii?Q?H8LQD4t4YJlFIPKLCe29EBTYTyrEjHSDSc1q5RMUFohPmE54s1YG+zBEcov3?=
 =?us-ascii?Q?pS2gZMr5pb7J2yq8sPAAFtms9Bkqg1mDIjOzX5eaTpOPP3ckdGDiCzQqbXrR?=
 =?us-ascii?Q?M7+GJQfWgZuAtsMS6x+9BS+4cPPduuI3MJ3n8BrvPD6cVGEStrJWPfxOBm9l?=
 =?us-ascii?Q?LJwZLpapoRaRAN8OiaNIupuZCp6xBb/yVMUBniXWL1DAIVaO960CtG+K4Tc4?=
 =?us-ascii?Q?C4LMwQ/6OYM2BQ9VlzI+NRiDU8U3mcZl6dDoia4XJpdcfEL6Pc13AolLb2VC?=
 =?us-ascii?Q?8LaxaNY1lGQ3Q4Z8u7QK7DchIJbsiPgpBYgLGu1eSp8BBYfacOKDIZ5WRoNd?=
 =?us-ascii?Q?Wdr5aes4GkOUevD51cPrCalaxKFwiorebmBuayjvBfpcrHtuK0f8JTumTXJt?=
 =?us-ascii?Q?u0mg3UmGS3q25MTC38PCA8AlDJlAnxe7eH/M5d1bg+FdSASsU63AZb7bBZS9?=
 =?us-ascii?Q?zTZuBvnXN5ML7TtJjJdFdSnTcor7Bmy3TDrVcqrTxzFI4Jw6Ya/Nc25uI1TK?=
 =?us-ascii?Q?G/QDV293lhOZ7+1Os97kx9jEIm/aC6DjU2sp8mltiPxQOlAII6iO8GLgnuTr?=
 =?us-ascii?Q?qn8sA6fwDKWPSNHcnO4/cJttNrE/HL7fHlcQEQtwNZBcxqHX2C6kAZlrfMYO?=
 =?us-ascii?Q?RpcvGL8ZLPJUckMkQErULqhyi7u3WTZfpA62gY/8TqmoontPIPgKnVCuDmK1?=
 =?us-ascii?Q?0QeweSVwEcorVQlqJFfNZESX3pypXqyqYmnQ?=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:Diagnostix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(376014)(1800799024)(82310400026);DIR:OUT;SFP:1102;
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2025 13:00:17.0601
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c6be577-f9e7-4716-f7f8-08dd7dafcd23
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Diagnostix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS0EPF00000197.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P195MB1354

Enable the driver for the TI TMP102 temperature sensors used on the Phytec
phyCORE-AM68x/TDA4x and the phyGATE-Tauri-L-iMX8MM.

Signed-off-by: Dominik Haller <d.haller@phytec.de>
---

Notes:
    Changes in v3:
    - no changes
    
    Changes in v2:
    - new patch in series

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5bb8f09422a2..54e6705f9752 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -702,6 +702,7 @@ CONFIG_SENSORS_RASPBERRYPI_HWMON=m
 CONFIG_SENSORS_SL28CPLD=m
 CONFIG_SENSORS_INA2XX=m
 CONFIG_SENSORS_INA3221=m
+CONFIG_SENSORS_TMP102=m
 CONFIG_THERMAL_GOV_POWER_ALLOCATOR=y
 CONFIG_CPU_THERMAL=y
 CONFIG_DEVFREQ_THERMAL=y
-- 
2.43.0


