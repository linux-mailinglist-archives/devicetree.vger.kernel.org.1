Return-Path: <devicetree+bounces-250688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F39DCEB1A8
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 03:38:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6BB630155E5
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 02:38:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE1442E2F14;
	Wed, 31 Dec 2025 02:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="cZxPetEl"
X-Original-To: devicetree@vger.kernel.org
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013048.outbound.protection.outlook.com [40.93.201.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D666B23EAB7;
	Wed, 31 Dec 2025 02:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.201.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767148723; cv=fail; b=Wa0EkBCol8ruq1MFWM1KpNiTrWS2ke/htitRQ6wrx1leXMFN3yBJQnFC4e6d2ERTky3Lqn1i+fdG+l1DUttdHS6FZqD14McqIu9QCufE5VCYYMC4S/KHZI/vrnBGN6WTyzmM5Qbj/9TQOiC5IxOUz0L+qWEhUxkbQbs/MmVRks8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767148723; c=relaxed/simple;
	bh=dFbXGH7jugapvbkxk4Itu6Ca5wdrU7jCicW8zMgMdAM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=GW07NTngscj1yQBIav1QMRsxfQZj6bbelL+IhgUE0s64R24TSYJ9QKoGpQ+ckNR6EynL3BkFbhho0a6v0jXnwOyVbwLGG1tPG8TjKRajw5koObM+TwGyu7Nxy8kkU1wcN9bRQOGWTAC9CVjp4jOpyvVe3kk0D+tPJBcpA1rs/H0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=cZxPetEl; arc=fail smtp.client-ip=40.93.201.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pohYe9TCKVKdPUz5HogvwHOi14KnR2hsXx4PtLYlNRGqCdA2pUWy+Yn79qUye0cCyqKcNZta+W461dhH6OhbPqbDJ/0IOfRJp5r4/Ig6M2Sdre7/sIVOWGCOHqeOW/9gCiq9P7kEXJK/jWaVavAhC0puXraFWTwhMBFxlSypYOb2578mpP/nok/BPEG0zs55rRgUthhzx199pHDq4nfsYRgl/nLC+Lwj7eeDMLJk5vhHSOiRd87WNHF3tUNoP6dGELeuacTHFsu9hyZadlyhHo485ODOjySUh8Hg/UMxd0FRhOYPACWCHvzX9Uu3gLay/KpCbYp6L9xWozRDH1Cj9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pg49SxLvfHY9TySVxPdGl7/qZlYYFhmqYAnv45GrqEI=;
 b=f5vI3aeh1pOkx0SKSOSbdkMjACBrs44dJmOfQibQRmlDwIJeYOFRnpYo2aBd0GB3um3oRA3/KQg5mrqXhzAoFIbTx2CaL9mQLExRyY6rYX15rMvEGEbT+1a1sf8Zsy2v+H8kvaEEDOOp+Cp4aRIOF2rjmMVBHz9mTfsw/OIlBQnsLhmDhqbk0O4uQzYafKNCaC8V/rHoDdaxqb43NY9+OPtXRv4LzwmHZWoThmmRK9+ulTufr00bpFwPP3LyKRHSOhsS7tzw7L6c9tNDGQlt8lvPlsWAsfPF6ObDwZ99H6fqfjj3O/zVk2wODxkPOaereMsad4LRdXt+pdyrO0NgvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=baylibre.com smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pg49SxLvfHY9TySVxPdGl7/qZlYYFhmqYAnv45GrqEI=;
 b=cZxPetEletpMrt3uR0x/+vZBV2Orb1xMkMN3jENG0G+DaxkU4KB9EN5493bHpjUaV2D3hxoTPxRAsOJEynrtA4YU85KYiSc8HkNJK8KKVZuS4EHb8c9UfIPfUgj/Sdsk5LzqoeENCaW5ix4/4L7NQkcDOe5600tOPrEBJGg2OoE=
Received: from MW4PR03CA0204.namprd03.prod.outlook.com (2603:10b6:303:b8::29)
 by CH2PR10MB4357.namprd10.prod.outlook.com (2603:10b6:610:a9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Wed, 31 Dec
 2025 02:38:39 +0000
Received: from CO1PEPF000044F2.namprd05.prod.outlook.com
 (2603:10b6:303:b8:cafe::aa) by MW4PR03CA0204.outlook.office365.com
 (2603:10b6:303:b8::29) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9478.4 via Frontend Transport; Wed,
 31 Dec 2025 02:38:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 CO1PEPF000044F2.mail.protection.outlook.com (10.167.241.72) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9478.4 via Frontend Transport; Wed, 31 Dec 2025 02:38:37 +0000
Received: from DFLE204.ent.ti.com (10.64.6.62) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 30 Dec
 2025 20:38:34 -0600
Received: from DFLE212.ent.ti.com (10.64.6.70) by DFLE204.ent.ti.com
 (10.64.6.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 30 Dec
 2025 20:38:33 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE212.ent.ti.com
 (10.64.6.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 30 Dec 2025 20:38:33 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5BV2cXV81704518;
	Tue, 30 Dec 2025 20:38:33 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Tue, 30 Dec 2025 20:38:20 -0600
Subject: [PATCH v2 1/5] arm64: dts: ti: k3-am62l: Define possible system
 states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20251230-b4-uart-daisy-chain-dts-v2-1-fa5257ec54bb@ti.com>
References: <20251230-b4-uart-daisy-chain-dts-v2-0-fa5257ec54bb@ti.com>
In-Reply-To: <20251230-b4-uart-daisy-chain-dts-v2-0-fa5257ec54bb@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <d-gole@ti.com>, <vishalm@ti.com>, <sebin.francis@ti.com>,
	<msp@baylibre.com>, <khilman@baylibre.com>, <a-kaur@ti.com>,
	<s-kochidanadu@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Kendall Willis
	<k-willis@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767148713; l=999;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=dFbXGH7jugapvbkxk4Itu6Ca5wdrU7jCicW8zMgMdAM=;
 b=fRnYt2BjZtBjOjAylOB7xC7DNttMn+/SVfhdfBCNwv2DsEynWeOGCo2qhVuJ8DwEhv5Skf80l
 PDe5EIRlF4bAJLeT383Qyo61D7gkt2M+EYVeGr1llD8ysuyeY4rJaQr
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000044F2:EE_|CH2PR10MB4357:EE_
X-MS-Office365-Filtering-Correlation-Id: 9362e172-7cb8-4399-3dc2-08de4815b390
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?YWhwWDNrVC9UR1diZWN0QXE4bkZuK2I1M1M4YitnRUlJN0dpbDI4WlhibUVW?=
 =?utf-8?B?TENYZnJjQlEyMlVjQVNaUldBQ0x3eXlNYWIrSkd4K2syVEJaSUdoc0NmcjNr?=
 =?utf-8?B?ME96NGd3WTgxejZGMkFaVFFmUG9uakkrMENKcy9VVVdLWjZ1cjd4dGJUTjkw?=
 =?utf-8?B?YU9RV20xdndnSTZHb0FDbEMvZk94aTB5Z1hERHRCWlBqWTdrTy9jamxpN1ZW?=
 =?utf-8?B?Z2pqSXZhYXBUaHRLK0ljNk56RFVRUGNWWGxJck12Vlk2eFhrMG9ZMHA4bWhm?=
 =?utf-8?B?aTZ0NHhETVhtN3RtSk11SlNSSWc3eEMzOUVVbWNyWjRBK2MxeWUyRlMydkNL?=
 =?utf-8?B?R3YvMXlrWHh4M1BzclBtcXhWdmRNdFJ4d1U0T3AvVHVTWjFzVU5wdEY2czFv?=
 =?utf-8?B?UXlkcDZ5ME5hVDhCTDZKWFZIK2tLT1ExNndvZFBIdXVOcEhESkxHaklCM1oy?=
 =?utf-8?B?dlR3R0xwMDBuOWt4M2NhRi9ERHBvTzFZRzM3dXBmRE5pdWhjck5lWmNCamMx?=
 =?utf-8?B?b21HNUNiaW8vbkR5UXVzajN1VVBIWmRXdlVLYUFMeFdKaXA2bHljby80MmJr?=
 =?utf-8?B?YWxvM1NaSFRveFdoMGNtTlFPcitDR2tuRUQrVU5HZXpicGt3anlGTjFJcnFS?=
 =?utf-8?B?MzdtWE5BLzh6bmxJK0syVDRTNEorMDJVYzNsMzE2dmRtWjVEdGxZMTJnSXFq?=
 =?utf-8?B?WVR2OHNMM0h1REJUd0p3L3RZdmV4a1FOK3VmQWRWZURRcnFLTGpXRmx1dWZw?=
 =?utf-8?B?Z0JETUlxVXR5am93K2wzVnNLMUV4YmlOMWViUWlpajVmTnErSnpNdUY0SVlV?=
 =?utf-8?B?czlLVGZqWUZDSnFxVmcxbkVxQ0NWRENuaHk4cXVWcG03aHlDVklZUHRvUDkv?=
 =?utf-8?B?ODhrNnJHN21FcGd0UkpZcERjdjhkL3BKQXZJTXQ1QnpVTUdoT2c1dDlkWTBY?=
 =?utf-8?B?c3M2TG9HNkxjTlpkNFl6K1FyWUVUMUFRZkZUdXFCRTdpTkhmRDJWdjFSYUxG?=
 =?utf-8?B?STF1d2IvbmJQOGM0cGlleUZXMnVMenh5elo5MEhwTXNpaFAxbUM0WW9uS2Jq?=
 =?utf-8?B?YjR0d0FWZjVySWhzWjQwWDZzclhiYWJKcXA3bkZRNy9IQ3lkSEpLVk5UclU3?=
 =?utf-8?B?OEwxWGpwaGp5OGxBRlJHbGN6UUlVVXpEdjB4UElpcHNXSjRYT1V1TWpvUUVm?=
 =?utf-8?B?THlteFlaVzY1THRxbzdVbUtpdUFWSTlOT3RUMnpuenovN213RExyM0tMdmZv?=
 =?utf-8?B?LzFTcG4vRUZXNU1xNkpnSWorOHU1UEluK1pMRWY1R3I0Nzh0cHFWZlUzdVcy?=
 =?utf-8?B?Wlp1NVExNFRNcUYxWjdPdTRZRlB1emhpOWJHY1RsNDF4T29kcklsOTB1UDJu?=
 =?utf-8?B?c1hQZTBFUjZyRWh6bUpqQXR6RHhYKzlJUnhnTVBaeEo3NUgwUVp2Y3VSS0dy?=
 =?utf-8?B?bUxyWWQ3RnlJZ2NHMTFreTJLbXJNOTVDK2pDQlBQZGEwbndWV3l6cEEwVjZZ?=
 =?utf-8?B?NzBBZUlYWnZ5YlhSbldydEg0ZXBBZ1Zod0N1ek9wejVDSFdWeXhrUlBQRWd4?=
 =?utf-8?B?c3VuRVlLb3kybzNxeUlJalFuUGp5NVJ0VUwxcXBTTXdPdVc0cGtxME5KWTE0?=
 =?utf-8?B?RHFGRHZweHk1Y2pEVFB3dHpMQnhHL2J0dzN5V2hjYmZHZWRlQjg4R0NCaFlQ?=
 =?utf-8?B?a0FqenYrYXptSXlZaWl1NEZZQm9GckRSakZ5VGpaS1FkT09TR1hyVTRGRFh0?=
 =?utf-8?B?aDFxVGVrM0NXY1UzQmdVdGh4dEJHaUsxS0xWQXlIMUwzZHBhWlQyMFhrOUVU?=
 =?utf-8?B?Wks5NVYzMW0wcWNjWTVKMFM5N3Y0NmhOL0RDaXBsam13YU9YOWR5aEp6Y3Q5?=
 =?utf-8?B?cmUvNCtmOU51Ym84YjJwcGVUcTl3T3ZIMzhxUjdlVmg3Wnk4K21CTzFPdDhM?=
 =?utf-8?B?QWdmN1dCaGdvS0Y5MUUrNGl1VTRxTDdqaVhydU9pcXgvVDgwOVpZc1V5bEI4?=
 =?utf-8?B?b1AyYy9PQmNJTERyaWNjZnhUYml0c05kNklTMG11MHRRYWlJZ1N5SS82T0ZC?=
 =?utf-8?B?YTQvSldzS1p0MkNPSnYwNVJ2YkpzZC9weldjelorTS9qd1VCT0ZOMGxGOGdp?=
 =?utf-8?Q?BWYA=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2025 02:38:37.6495
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9362e172-7cb8-4399-3dc2-08de4815b390
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CO1PEPF000044F2.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB4357

Add the system states that are available on the TI AM62L SoC.

Signed-off-by: Kendall Willis <k-willis@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62l.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62l.dtsi b/arch/arm64/boot/dts/ti/k3-am62l.dtsi
index 23acdbb301fe38e6045c0ef3ae340196009ed217..3b84ac9be6d075f5eb469c3e503b2e494c62be27 100644
--- a/arch/arm64/boot/dts/ti/k3-am62l.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62l.dtsi
@@ -64,6 +64,18 @@ pmu: pmu {
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	system-idle-states {
+		system_rtc_ddr: system-rtc-ddr {
+			compatible = "system-idle-state";
+			idle-state-name = "mem-deep";
+		};
+
+		system_deep_sleep: system-deep-sleep {
+			compatible = "system-idle-state";
+			idle-state-name = "mem";
+		};
+	};
+
 	cbass_main: bus@f0000 {
 		compatible = "simple-bus";
 		ranges = <0x00 0x00600000 0x00 0x00600000 0x00 0x00010100>, /* GPIO */

-- 
2.34.1


