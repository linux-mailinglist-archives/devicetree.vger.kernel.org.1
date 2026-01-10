Return-Path: <devicetree+bounces-253476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8F8D0D41C
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 10:34:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3050F30185D1
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 09:34:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA33F28D8D9;
	Sat, 10 Jan 2026 09:34:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYPPR03CU001.outbound.protection.outlook.com (mail-japaneastazon11022093.outbound.protection.outlook.com [52.101.126.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DF32236FC;
	Sat, 10 Jan 2026 09:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.126.93
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768037653; cv=fail; b=KXl3wx+RKaTVu93HN50Lfw82a6HVrmbVYdzocgAR3r/K/EM7jY5FjWXKk3kmnNuYINeontIp9KtrK0Lra2btMULAdJGtGfbUUpHj6MEZYKHUHmUsjElQdWuwHQUQXZ3mzoAik0o3HBDz5wWH7suNXzcwJ9r3bwYiMDEd8Us8d0A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768037653; c=relaxed/simple;
	bh=SIjylGgHgvR0FASgj32FEGGls4rAURxyry6E9W2AV9U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=bDRkShtuH1SkmB2KkxtGVvzlbbibz0A0TlOOJfmgNx+ciXbhdeAHc9J8izq2wp7dWKJjt7v2ROe/Cy7ryBnmh70tGVLadD2n8NmsnGctb8JO5lCPnA+gMiE9gEvVB4Zpp8rzaIvLxUW+PTGhpbboQTjDp6Izo5hwSnOyx3zLFbQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.126.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L/7jCnqkITYo4wP4EWrGP3nSXXJS1ZH4iq1OI3PfblUpWpZtbbDE8716cJ8Ie4FgMcMjk3DKUGtAWJqrhRQ1ZxSVjJHRA/d2jhXJSYLwffNfo+ad6LcoeUJPyZuO4D+m20amPdwvMjkqw5ec2YKFLQ4LA5Lg86aZULcziUcIeK/wAfGG9ZEj1Ne5a+Nu97APKXlxeerPUjppBRoWVrjSv4uPwpgIWJmGe9X4tYIQ9rXTxhp5tXQBNYZ+sbI5SNR9LkGoOEW3SoWk+nhSXI+8PCF7ThZAg8SiRJdrAljCAj/wbCcLfGq5LzO/QSiA+eWxQFRDXH6ZmUsNzeMaW8kR7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vYUJ+RzY92JvajcOKIl6GbSafvZ8zr1Y3nds6yO/i1U=;
 b=GDxcswGKmwAmiv5JgUWvc7Tjj8TIXUo+tK7K6xtoNPtzKXt1JndJdA14KqyYKwcdIv5UsiotS0UNatRGAOm4nhnFCvfJmDTRtR4+24xPeu5wDDvcJbvKz013EOH3WoLpH0ELNpbYPn7CTwpW9bf1Jepyz6VjaLe9p46VkYvoUaZqoiLPmc3DPxvdS77x/rrLU+cPB4G/pcC4v76cdTyYjzWhIEST10HQR4ke349U+C0lLopFVXmVppuxrqyLYr7a7DOhmmdN6Rcbc9R2BriEg74S4852QwNYqJslj1llnm2baqMKU+gmXEJa/q0qWHqIiufAXhSeyCIkvCN2w3B0Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from TYCP286CA0366.JPNP286.PROD.OUTLOOK.COM (2603:1096:405:79::6) by
 TYZPR06MB5323.apcprd06.prod.outlook.com (2603:1096:400:1f1::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.2; Sat, 10 Jan 2026 09:34:08 +0000
Received: from TY2PEPF0000AB83.apcprd03.prod.outlook.com
 (2603:1096:405:79:cafe::81) by TYCP286CA0366.outlook.office365.com
 (2603:1096:405:79::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.6 via Frontend Transport; Sat,
 10 Jan 2026 09:34:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 TY2PEPF0000AB83.mail.protection.outlook.com (10.167.253.4) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Sat, 10 Jan 2026 09:34:07 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 89BB440A5A1B;
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
Subject: [PATCH v4 0/2] Add OrangePi 6 Plus board
Date: Sat, 10 Jan 2026 17:34:04 +0800
Message-ID: <20260110093406.2700505-1-gary.yang@cixtech.com>
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
X-MS-TrafficTypeDiagnostic: TY2PEPF0000AB83:EE_|TYZPR06MB5323:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 092c169a-36d2-4fc4-1698-08de502b671c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?K5TKOE2pNA1Dnmjd9+3orqDQhsGcSICJOYR1lvOGu//2RLHcSg2mwOH3RvNo?=
 =?us-ascii?Q?i3e+wVTprA+lbXfMjRTCtJDuaYmvJwxmYuHbZ7NqVPOjVuaTr3RPjhP79A6a?=
 =?us-ascii?Q?73QnL/mLy+iQ0/RA0Qs/yIv/fqZuS8MXt5SChhdzttH4mOcwA2IJRptCiiMe?=
 =?us-ascii?Q?q3NzcpxAEsuaM03Fq+HDqP9ffr1c3yhMNlxfo8ynqOdvJ5+zPxEq582d7RGc?=
 =?us-ascii?Q?60XZm2FR3LoBaEXIXZ9ebH0k+TkTFA3izyu1pvAirovxId1bF39js13LJEbd?=
 =?us-ascii?Q?Avt3OkEfIIibLimXfGSPUiXZ+JNdvuNwdSDvR7I1GQfHHqbdXHhwZ4LNOyz7?=
 =?us-ascii?Q?jvWFE/BzErftf91ZD5ihFu+Y1ztfYSPkNT3gnDtQlR7yK/rYH8ruVWez445t?=
 =?us-ascii?Q?EoshTihiWb6KZtuaK3alI5PTPc1fMy5fAycorfEWoglFci/xx6RWuzZ6O2B9?=
 =?us-ascii?Q?UJHIEvc7z2LcGcM+7i7tNtIhayzPAsLIH61b00kobP/trj4aeN/FikG0C453?=
 =?us-ascii?Q?1wvVKxpo8+YThqQQOt0J7NzLagHoGnOxVCN5vayuX9w1O1JDApNcow45DduO?=
 =?us-ascii?Q?WcTa/pCe/zXqQTFw9JNDLAKAP5SaBPF0d/kEkAF+/41tM/18hf+S7nd8CrHp?=
 =?us-ascii?Q?wDIlq3vBs9FMfL7Qe1qwAABSajX5njnmeDF20QqNXnRZtvZaGvhYgsKs4CRy?=
 =?us-ascii?Q?p88FGRmF4Al23oAPm9yU08CGim95lkziBVTUsLpTd8h8/czfxaNa3JyYCnIw?=
 =?us-ascii?Q?QnO+6BE3jnT982kkfEMeaiZIHfIKc+ruSDMT7AuZmdj6frwNHnX96xI2GPoA?=
 =?us-ascii?Q?eRl0H1+rrV2TWETjS6SZZP+/HZCSfHNMtz4tn+aUBT3PaHz6VWSk7e3DbcUl?=
 =?us-ascii?Q?4sI/QCnRc1Nt8W6vwNMmTSqY77jpW2U/9y/kfu1S5XDAr1A03TyXpeBgE9Lu?=
 =?us-ascii?Q?3RV4x8D5SqcR/Nxq3bkywKXQPQkyqn8QQ9BfonhFXYEtvzItD9zHNhfxpp03?=
 =?us-ascii?Q?I49Cm2mXFuHa4HcCMofxU9D7Ruop9uyYw9TePBia5gOl9QPobc/HhRLf1rHV?=
 =?us-ascii?Q?c/Bag0MSz4f5VZ55Z6zadbrnrHP6iiUNHbU4x4hdn+3FwtSQrg5iaAh9Z20v?=
 =?us-ascii?Q?7lxyAwAvwIsXGc+zm4V/AE6uteGLUEwdCqZqxxGA4ufJnlaGETiPSCe0mGer?=
 =?us-ascii?Q?rCTVzguTaw/mnM8RtHXKDsErnu9tTFqxFNqL8mvxIwpkGAmNEB+85YyaaSVX?=
 =?us-ascii?Q?I0AQWi4i/kWPqVQTxZ7weRUxajM8Ol/NiBxFNfHp1nbIbKDGf84IdA8hWur8?=
 =?us-ascii?Q?4BJCsN1o87k1Y9zAEhKCSJ/Wy9UQUaDArRZ+ENWXx2C74Vs0hZBp1G2i/cna?=
 =?us-ascii?Q?PZI/2USPW6bg1Dql9/qaLTBbwliyTURQAGF2wLy/gMnCbE5OU3/BZ+owlCEK?=
 =?us-ascii?Q?/3dBwMFOvUGlY1N/FLNU8FxEjwkjaVjkbFBm/ULRqKeTmzh/8APjfUdOl+H7?=
 =?us-ascii?Q?xndICtHor0DIHDNkNoUdoGVpYciwyfFwvXUXxnYl5pc5K35QNWf0acMDHJoE?=
 =?us-ascii?Q?NkMRRqiMYv0sD9UF4B93OTUI1LeApLEQdNYKtrOu?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700013)(82310400026);DIR:OUT;SFP:1102;
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2026 09:34:07.4727
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 092c169a-36d2-4fc4-1698-08de502b671c
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	TY2PEPF0000AB83.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB5323

Patch 1: add compatible strings for OrangePi 6 Plus board
Patch 2: add dts file for OrangePi 6 Plus board

OrangePi 6 Plus board is powered by Cix Sky1. You could find brief
introduction for SoC and related boards at:
http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details/Orange-Pi-6-Plus.html

Currently, to run upstream kernel at OrangePi 6 Plus board, you need to
use BIOS released by OrangePi, and add "clk_ignore_unused=1" at bootargs.
http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/service-and-support/Orange-Pi-6-Plus.html

v4 changes:
-Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=arm/cix.yaml
scripts/checkpatch.pl 000*.patch
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-xcp.dtb
- Fix the description of board

v3 changes:
-Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=arm/cix.yaml
scripts/checkpatch.pl 000*.patch
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-xcp.dtb
- Fix the description of board
- Fix the commit message length within 75 words

v2 changes:
-Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=arm/cix.yaml
scripts/checkpatch.pl 000*.patch
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-xcp.dtb
- Fix the description of board

Gary Yang (2):
  dt-bindings: arm: cix: add OrangePi 6 Plus board
  arm64: dts: cix: Add OrangePi 6 Plus board support

 .../devicetree/bindings/arm/cix.yaml          |  6 +-
 arch/arm64/boot/dts/cix/Makefile              |  1 +
 arch/arm64/boot/dts/cix/sky1-xcp.dts          | 83 +++++++++++++++++++
 3 files changed, 88 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/cix/sky1-xcp.dts

-- 
2.49.0


