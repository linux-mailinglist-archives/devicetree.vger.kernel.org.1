Return-Path: <devicetree+bounces-253474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E53CD0D419
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 10:34:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36A8230084DC
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 09:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DCFB1F4C8E;
	Sat, 10 Jan 2026 09:34:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OS8PR02CU002.outbound.protection.outlook.com (mail-japanwestazon11022093.outbound.protection.outlook.com [40.107.75.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589CA236437;
	Sat, 10 Jan 2026 09:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.75.93
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768037653; cv=fail; b=D5CyJZEWo4eW3/urr957GNbaAXS12vrZ+q0+7aWB3jToT/m10swpMEccTKBymHg72MwYdCk2p/RFBaa6bUSb5IRFSzFKx4irDr7mKKRXSIXnaFOb/+gSL+yI0pNAJ5SOzj3/uj7M4HI6NSR9oAgeRyLladaeDAZTkfA8fgKxsKc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768037653; c=relaxed/simple;
	bh=fZ3bm/gRNkmsc0Vq9N4SQ766hy5qBZEZy62Rttk2150=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Eqa2EgOQwa4H1NdBhxowSI9MREIgEH/DduNTIb7z5gPE/FZ5cFmK2ApJpAz1kxH1A+kBvEauGRRAZ6kz3z+U1tXMYj/m501k1FSvqMOihHXZ2SiB02HLcVENUBWGZp8Sj48IhgdkPIh6U7Bp0WdKoPG6py0NtgJtU+KqkedDMxI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.75.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E5ggzPSXj16WLBDVvXGNlVhgmKhFgFVstjrJUF56juVFH3QOGiD+FgC8vxyp+UKP8M3bA9lhdAT3NlnbiqWfremAq/bQOa96gf5i63fBwoC9qxhPAgjxY6PDvmSi8xr5fJ33FswsInzgBY4hgJ/zNJWxMLESwOJQwowmGOSFlyeZmA8/8M61qIC1Kq4T3nDNwoh/lv+bsVZ7C+dyijq82Y6cU1T3/eQ+OkDdjh2QshjNtCY+PXUQ5Jbbzn0fpD9aw6Vf5d45xBTkHbaXp3Mr7ZZ9p6/93Lp1RmLBbn8WUXXuE5NB8S8eJn0/uAvH6KrPG+7Bp7M/1YhPvA+sa4fj4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KCuffUYjG0g2KlVDXY1xoPPVxCe5Iy0gp08VGzYsu/g=;
 b=ouP8YLAsd9xOXJ11fnFnnjOUucW4htart0T/EXb/5ZXIwJPMR9l2tpt48ssHnkCzCgBg51Lbi/0psh9hkNvo935kzV+EOOQPeoGTmLccPwWl1xYwXuEYXXUMlx3yY5BlO440MflMSy/IWu4CCI3ygiPbqWgVZi26tNy66jUSZFRB4+YhXlukNQXNuw9c+Rd5NMCyebof+hXiolwfZwePsJBCg+4JZt+SOHOCrkf/goEfFZJk6ltsf54wh9khNQ6GjgG6z8uxUroGV9/YICbpVLsCrCsgNbBa/LLTnsVEtddfdqFd4TqNp7zscmS/owfl7ZtJid3btEe6x1UnTidPYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from PS2PR01CA0070.apcprd01.prod.exchangelabs.com
 (2603:1096:300:57::34) by TY1PPFF38CE2865.apcprd06.prod.outlook.com
 (2603:1096:408::930) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.4; Sat, 10 Jan
 2026 09:34:08 +0000
Received: from OSA0EPF000000CA.apcprd02.prod.outlook.com
 (2603:1096:300:57:cafe::9e) by PS2PR01CA0070.outlook.office365.com
 (2603:1096:300:57::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.6 via Frontend Transport; Sat,
 10 Jan 2026 09:34:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000CA.mail.protection.outlook.com (10.167.240.56) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Sat, 10 Jan 2026 09:34:07 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 9A3F540A5BFA;
	Sat, 10 Jan 2026 17:34:06 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: peter.chen@cixtech.com,
	fugang.duan@cixtech.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: cix-kernel-upstream@cixtech.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: cix: add OrangePi 6 Plus board
Date: Sat, 10 Jan 2026 17:34:05 +0800
Message-ID: <20260110093406.2700505-2-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260110093406.2700505-1-gary.yang@cixtech.com>
References: <20260110093406.2700505-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSA0EPF000000CA:EE_|TY1PPFF38CE2865:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 96b15c3a-d6fd-446f-165d-08de502b6728
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700013|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?JrG6KC3+ksl98BCXIFFYPwPRZ+HPm0CWAduCXw43Vk2NE4B2/mJNPkvSBTHV?=
 =?us-ascii?Q?bws+Y8fhTfFrTB2Awc+No9pkYECJQWLc1okrW/Cc3wYH8cKScJqPvFCs1zlZ?=
 =?us-ascii?Q?W0MrJo8zylK47H0jXaenuaYfNgTvU8AD64ZdS35oxPjj8hUu4Zp9aPkxJQ8z?=
 =?us-ascii?Q?2QoSS87fFHOYFSkRddc3yQ2W+9qq+6YUxKToJzr34POzKYWkOj5Ps6v0uZwu?=
 =?us-ascii?Q?Fe8G4AVt+xPDO5j06GOK2Kqet8UFrgj9moEM0xwJP0F0FH2JhsrCXHOL9X9U?=
 =?us-ascii?Q?GxvzA++y/bMzDE4N+ZCKZWqAwwPej6f2J1p+VVQ4+rkh7feQbsrueouTgfz2?=
 =?us-ascii?Q?x+Jnua6E09Xd4z+l2lGEb9VyPaz+7C2I6frkTDJJtHD+/CZwFquStEieBjkZ?=
 =?us-ascii?Q?ig1XQfh/a36UDmYjMrJM28kZq/exznDdKzUe0iMyO3KwJaDavmna8d9VlQkZ?=
 =?us-ascii?Q?Nf/uKPNoANBBRxfc+AoGQxFx59WwV6M7X+XUOpz3hq6oxuMGTziaG7wincOq?=
 =?us-ascii?Q?L3iLjsAi9cBIDVAzkuJ5m9ezLOEFnkRHmfLGBBzq33cbLN/8hYjigCap7hLB?=
 =?us-ascii?Q?q7G8CdLOCZZbb1PsPYUmjkUgE9gMZhkedQAuhzUqmBbo8EXc0PUVeVu9lKvR?=
 =?us-ascii?Q?DnuH4vK91ct6+uVOtp6q93GPjrsedRz7+LYqZDE1/b4x7YaHTgCpZtWLJLEk?=
 =?us-ascii?Q?8oDoCaEPShPob+fNGh5vI2VBApw6KE8MFvV6pG7F0oUcdcFreXZ32Wm6yWV4?=
 =?us-ascii?Q?RVmt8gAzw+4AR4c0aIJWpAtaFjqEVgDoAdrNR7ozTLsLiCFxQlXVRs2XqrNh?=
 =?us-ascii?Q?Nl0jpgrJD1a1/1/0ifcb2oMsl4KQFXJWcZaRX/IP7b5LRQroiAyWID+D3hgY?=
 =?us-ascii?Q?usqF96vCFUjOY+aejZTLYfA+uKbwEvRJauYLKKPdyfF7zm+E1aWafIhubWBD?=
 =?us-ascii?Q?reM8Nn4OCSbxzDutC+q9aMMz1KcJhjnUOTb3JqkX4HtHtdOGPsXJpbAbs31f?=
 =?us-ascii?Q?LHQwHlADE19p5vQBuiKYUESrEJwFxJcC58sZELLmHNXVhOmjcV+QwNzCWaSD?=
 =?us-ascii?Q?G5PZXV8xaipzq+akfTIHQsbF0e/59wN3d3Vz79MivN7RKZkAzOsfmW/5Ou9v?=
 =?us-ascii?Q?R0qVJYL3sBENw26fdrJxFglyMkLAdgZR+p+QCVxa1CiT7kKxjw/jh9805KOY?=
 =?us-ascii?Q?Xr0mggy99QwnpYhrdrnhOhnDnOiyCZUBbscQBsYcNSi+scdwd3KJbJX6O79A?=
 =?us-ascii?Q?0J+LRuxCsfsAWM1RHAxoP5IXCM1LqiNbPkxwswbv0ErQusvzLM9Q2j+pzKDe?=
 =?us-ascii?Q?p+hcm39fCzKJ3pfeweHAcxxttsv522ltguKEfhJ3zMxResHBy31ktFJKKein?=
 =?us-ascii?Q?kdKMI2TnKD09kS4jihpEyZmpCzdZ/EclBzknkppAhcSr4TctfeAYX8pV7wGx?=
 =?us-ascii?Q?IA/krIXMlcONHc61/oORt612AaJDYGm9RW3GURPwjkzYlbCIdeUza7nOz5F6?=
 =?us-ascii?Q?/IjiUk/UTHUewIosUXBvENZvfHrTtRcUshUp9bNBugvdoTYJTuoUhO9eaqRt?=
 =?us-ascii?Q?1jg52ao0e2tQQFM/GMc=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(1800799024)(376014);DIR:OUT;SFP:1102;
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2026 09:34:07.5355
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 96b15c3a-d6fd-446f-165d-08de502b6728
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000CA.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY1PPFF38CE2865

OrangePi 6 Plus adopts CIX CD8180/CD8160 SoC, built-in 12-core 64-bit
processor + NPU processor,integrated graphics processor, equipped with
16GB/32GB/64GB LPDDR5, and provides two M.2 KEY-M interfaces 2280 for NVMe
SSD,as well as SPI FLASH and TF slots to meet the needs of fast read/write
and high-capacity storage

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
---
 Documentation/devicetree/bindings/arm/cix.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/cix.yaml b/Documentation/devicetree/bindings/arm/cix.yaml
index 114dab4bc4d2..21e66df7f696 100644
--- a/Documentation/devicetree/bindings/arm/cix.yaml
+++ b/Documentation/devicetree/bindings/arm/cix.yaml
@@ -16,9 +16,11 @@ properties:
   compatible:
     oneOf:
 
-      - description: Radxa Orion O6
+      - description: Sky1 based boards
         items:
-          - const: radxa,orion-o6
+          - enum:
+              - radxa,orion-o6 # Radxa Orion O6 board
+              - xunlong,orangepi-6-plus # Xunlong orangepi 6 plus board
           - const: cix,sky1
 
 additionalProperties: true
-- 
2.49.0


