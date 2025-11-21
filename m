Return-Path: <devicetree+bounces-241113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A076C79F72
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:07:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id C96F436C67
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 13:52:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BFA634D905;
	Fri, 21 Nov 2025 13:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="EfW9fEa5"
X-Original-To: devicetree@vger.kernel.org
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11010047.outbound.protection.outlook.com [52.101.201.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150D934D4D8;
	Fri, 21 Nov 2025 13:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.201.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763732946; cv=fail; b=qRz5wg7hCEoGrN+T6s9IyNzR3vOx0R7/fV9qQVjfnR1M66PaZUKnr/Gi8vxgLIzFiNqPUwFwXwpQoqg6UBOugzamC36GpmFDfBqWqN1YRaETz6cYVXGKU2jF9AzDeyoRuH4a3HcHbRYny9zCNMIgGYltwGVjyKd0HZOUBd1j6HY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763732946; c=relaxed/simple;
	bh=O5AB2GPk3F401Ai+sDUDlLjbZdzALDN9OqCJ+/FnY/w=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lGcVicHCGBrPL5B1ps7s+VHSXXFWkSYl28xCViP4T3XGbxc3CCHmsZiVkxJ5ZATRsS9bkIxjndgjeFX2fk9Ph2KjVIO0kQsPUVYD8NiuhdEe7FqoR4bhAvDBh81kNQv5rhGtjEBiTHxYLbpyYpnoptQiwTz5L+PAloIAPNgfcn0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=EfW9fEa5; arc=fail smtp.client-ip=52.101.201.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UigyY6l6h6tyu4XY3N+h0kqGM6vanVRKGoQ1UWlPMMlj6FrJf6x6OXPmgX4Yd+jjD//PlO4hIgrhMxB/rnx9+qMK1S/UwQPOXLK5xM7ydzMMapvIMzYSxgS0F6DbmxFtx9L+xpuhTybEgRdn+/qGbx80WW5NbYPP8uf81AFg5+2F6wQzNXGUKlDdar3QJZYcvYegjc0bkx9bSc+7duR0WGj9p1YgD13HX+G3uYK62QvF+MrPita06ooyt8B2YvxiWcTrsbAIhq7Vw3S5H4ksC4HGQv9lAmsXS/SLPcGL2Vndvuousbuh9a0qtSvMGug3B9E44ORLB6TXgKDXkSOVdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xk79ktniMtNKRLmHrFYpMHpozRmpD72whGp6tcute0Y=;
 b=Endmb1W6rQ7lTy3p9CcvKo2Wa6yANC/HAl0Js+ZwCuaKFGJjDmJEDiZsAFZv5pCJZ/LtcPVv8QnZeQqArs7XX9kY3KDOOyW8fOA+KP8HsHJI2Ar+Zx9BJ42mBITFQvA4CS8Ub6nT9vr2cjqq3PqxfiAyqLc+yq4fxHtfV3uHks5mapHt11VT6TRmpug9HtZHGA3Q1pVDWgLbtIwrrng1DUL1sEpWvaCvq8cGYVMgnO/WG/1v90hhPkq5iUazI8YukRxvBwfcq7MuMDgx0CHFhZUPnTFanbPY/qAKU1S/ARpwXFNKalwF7Fjr5n5YAIrqjA8tKxLmw1vH5GFn41cqrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=lists.phytec.de smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xk79ktniMtNKRLmHrFYpMHpozRmpD72whGp6tcute0Y=;
 b=EfW9fEa5Fo8DB22W7A/CTgeJGOTDVnKUfeaXX53ltEIZQv3UeuqtOhqDQJ+YbZHugZkcSw0wc5j6QIhveb9HqCDNhwJzDSdOlePSEV9G/F23KDZ8XWVJzKE2II4UjuEYOFLrgW30McBEta4sQhtMgxy08DbfNevnsJRjuleD8AE=
Received: from CH0P220CA0025.NAMP220.PROD.OUTLOOK.COM (2603:10b6:610:ef::20)
 by CH3PR10MB7414.namprd10.prod.outlook.com (2603:10b6:610:155::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 13:49:00 +0000
Received: from DS3PEPF000099E0.namprd04.prod.outlook.com
 (2603:10b6:610:ef:cafe::63) by CH0P220CA0025.outlook.office365.com
 (2603:10b6:610:ef::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9343.14 via Frontend Transport; Fri,
 21 Nov 2025 13:48:59 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 DS3PEPF000099E0.mail.protection.outlook.com (10.167.17.203) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9343.9 via Frontend Transport; Fri, 21 Nov 2025 13:48:59 +0000
Received: from DLEE212.ent.ti.com (157.170.170.114) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 21 Nov
 2025 07:48:57 -0600
Received: from DLEE206.ent.ti.com (157.170.170.90) by DLEE212.ent.ti.com
 (157.170.170.114) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 21 Nov
 2025 07:48:57 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE206.ent.ti.com
 (157.170.170.90) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 21 Nov 2025 07:48:57 -0600
Received: from uda0132425.dhcp.ti.com (uda0132425.dhcp.ti.com [172.24.233.103])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5ALDmq1e1361920;
	Fri, 21 Nov 2025 07:48:53 -0600
From: Vignesh Raghavendra <vigneshr@ti.com>
To: <nm@ti.com>, <kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, Wadim Egorov <w.egorov@phytec.de>
CC: Vignesh Raghavendra <vigneshr@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <upstream@lists.phytec.de>
Subject: Re: [PATCH] arm64: dts: ti: Enable build testing of PHYTEC board overlays
Date: Fri, 21 Nov 2025 19:15:01 +0530
Message-ID: <176373265674.739386.15542195508677392407.b4-ty@ti.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251119123216.1481420-1-w.egorov@phytec.de>
References: <20251119123216.1481420-1-w.egorov@phytec.de>
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
X-MS-TrafficTypeDiagnostic: DS3PEPF000099E0:EE_|CH3PR10MB7414:EE_
X-MS-Office365-Filtering-Correlation-Id: ec38cf2b-111b-4a56-b7cf-08de2904b940
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SDBTNEs4Rytuby8wT1h4TUcrLzJ4bW1WOVUzZ0Z5WFE2bURQSHk0TE92djJD?=
 =?utf-8?B?aU0ySkd4YmhWNWFmc3pGMHhXWG8wTDlOaFVNd3pYOE9qTmxMSm9CT3F6eTE5?=
 =?utf-8?B?UE9ldFNxUlIrVE9WUUcrNWVaaXF4cFp0dlhqUDhBOTR6WStPallGNERCaEVv?=
 =?utf-8?B?QzZqaTBvZldWZ21RR0ZMSlJTbi82RGtLQks5SWM3RkZ6c0F0SE5RbHRQQjQ3?=
 =?utf-8?B?TG9Tb2dJRkZ2Mm1DZ01qVS9jSXJQbnBYS2VEaHJRcW1uL2Z6aFJiMTFPVVRm?=
 =?utf-8?B?MVp3OFNCOUxHbG5YaXNIdXg1L0hDeUpKRXJEem5GYUxoRE5EUTdGUXNMaGRp?=
 =?utf-8?B?OTN1WGR5bExRQTNVY3ZDUDFvQXRBNXd2UDh3SEh6V2libWtrQ1l5N2JPTzRN?=
 =?utf-8?B?N3N1QlcwV3VWUUcvbnZ3a1F3MHVYZjZVTWFFUkphMTJySTZHK2ZMMGl1VWhF?=
 =?utf-8?B?ektVcG1PckYwRHBUWFZhTlRrSkF5R1ppeUdQR3RVVVZpdkpEY1ZXOEo2N1F4?=
 =?utf-8?B?VFllbTVOY0x0eDczZWxqTGpBT2tYTDVEVUt1N0Y4NlNRTlIvaXpZcnBON3R4?=
 =?utf-8?B?cXRPWjIvWU9xMFpXVUhpTjUxQm5ac2U3aFVDU2ZhYzl5ODZ1RW1nc2ZRYzJx?=
 =?utf-8?B?eStzbzF5Skk0blVuRlNtaUkrb1VSK1ZlbXZ2d01Najk5Wm1xQmxWNkF6N0hl?=
 =?utf-8?B?NTdVQW82Tk0rQnlCeEtmcVR5YUhwaG9VYno5VjY1bkFsZjdLcWIxN2RkOGtX?=
 =?utf-8?B?YW5Fb1N1UThJS0tNWXpnOWlDNHpRQUpSQWIrcTJmRlFoVnJlRElUWEpTQnlm?=
 =?utf-8?B?VldSQTZkVTRXRHowQ2I1dHlua051NjBBY29TeVlhZDJkYkFSMzIraTc5SXRk?=
 =?utf-8?B?SHUzRXBoK3ZSYUhmaVpWZ1dlV0h4ZzJ5MlpYKytsNEcvNTRNS2tFejZieEVl?=
 =?utf-8?B?M2VSL253MkZ3Um1MTUN4R2UzVWNBUFNBdFptN1ZEblh1KzRrYUdHQnpvcU1Z?=
 =?utf-8?B?ek5JT01NZ0l3ZEZiRERHVVJwQXZISXlqZi9TOTBnNFNrZzExMmRMOWJsZEFP?=
 =?utf-8?B?VGtJdmJocUZlbGR3aitpT05KMFowMDZmNHNaNWNnbFEvYnY1aUNaZ2FNQzFz?=
 =?utf-8?B?aVZhYUVhYkViem5ZS1gyQ2s3UVdCejl5Y2ZySTVRYzZBckNjN25hTCtKVGt2?=
 =?utf-8?B?TnE2WGVHeFVjR0M2dXpCTnVMUVBYOXdBNS91bXZkMDZzRjAxMjBTcUNOL3Qw?=
 =?utf-8?B?azVaSTZneE5sUmJMVU53OFB1Q0Z0bTZmMlFQL1ovY1lpYjlXRzh4MU03aExF?=
 =?utf-8?B?djhxQlJHay9IRmplVzZvSCtiOEVQRFhsdVF4R3lpaGQxQ0dlUUMyNURMdnVr?=
 =?utf-8?B?ZGJ2aGF2REQwZ2dhTmFWdlVWMU1hbTl1R2wvSWZObHY5OGprNHdHeDdlWDc3?=
 =?utf-8?B?Mm5DSmdkSzRtajl6RzRDMDhuaTE2VUdMWEprTnJxeU8ySktjU0NLbG5VdFRy?=
 =?utf-8?B?c1R0SW50TVJiN2dyYzd2SmNGRHZjUlpBbnloZGJVRHc2eXRZZ1cvalI2ZEww?=
 =?utf-8?B?dTdwMVo2TkEvVk5tcjhoVkhtanhId0NIZmN0Y041NHpnUVUvbXpuNGJDL3cz?=
 =?utf-8?B?YWpvNnY2Q0FlaGUxMmNwcTR5RDB4YUJGL3E0M3huWlJHUmdRYlJ0Q3IzdDEr?=
 =?utf-8?B?RlRhL2pTWjhhWlA2RXdyM2k2S0FqcG94eWpBMlJRQnFXeWhyNXpXVkRMN2I3?=
 =?utf-8?B?YkpubXFSUGVSb1Jaa2RLSmRTOTZMVkJkZWJBVnRZeGNJdkYzWnNZUnpvdWFq?=
 =?utf-8?B?clIzZmF3NnllTWFreG9Dakc1QktjY1RreE5GQ2hETFhuTU1pV3d6Rm00UDRO?=
 =?utf-8?B?THFGMnAwZm51MlRqaExIZVFJUTdYaTNWeHlIRllDd3dsYlpQQU56bWx6Yjdi?=
 =?utf-8?B?ckFleGxiaDJNTk14RnFVOFpUeDE4MmxBQmVWdzRHd3JqbGZYUE4wRXl4U1VS?=
 =?utf-8?B?dU9HTU1ML3gyR0NlVTFhbE9BMnNYdHlDUlB3WUR2WlB0N0o5OFdJK0JkZ3Vl?=
 =?utf-8?B?ZmlMNmRNbFVZQ1BLcVZmUExGRVpRaktYMUQvQ3ZmQSsyenhUOHdvSXhrRGl5?=
 =?utf-8?Q?N5tY=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(82310400026)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 13:48:59.7158
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ec38cf2b-111b-4a56-b7cf-08de2904b940
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DS3PEPF000099E0.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7414

Hi Wadim Egorov,

On Wed, 19 Nov 2025 04:32:16 -0800, Wadim Egorov wrote:
> Add missing PHYTEC overlay build targets so they are included in
> CONFIG_OF_ALL_DTBS coverage. This ensures all PHYTEC board-overlay
> combinations are apply-tested during build time testing.
> 
> 

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: Enable build testing of PHYTEC board overlays
      commit: 7026f224e21cc0fb6056bbddeb8221265cbb7645

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


