Return-Path: <devicetree+bounces-255340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ED848D225DD
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 05:36:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 885FF300FF96
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 04:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2C4821D585;
	Thu, 15 Jan 2026 04:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="n+W0axMA"
X-Original-To: devicetree@vger.kernel.org
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012009.outbound.protection.outlook.com [52.101.48.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D4F1509AB;
	Thu, 15 Jan 2026 04:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.48.9
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768451773; cv=fail; b=oXPpwcskR1aIIXTZj2I6Stx/vnKrOVHWyUQxYVZkzF2a21muBqM9zqyZAm1bFCsY1Myrca2B2hxWmPxAKnoQ3bNJ9jpPdFX8j2q0CK5XMpBO28ZB+YMhIVka4cMB8jrF2VUeYI9SOXUjx90S7SwZThd6czU9UTDw4ctQJ/YSRDA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768451773; c=relaxed/simple;
	bh=xobCIgVsYbR0dkZ27sX/RwtfaLOCZJGrd9sZkPXvWx0=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=qBlxC6wBVic7w7JJt709knVCoMbFrbFwY8VQUDdd869t2Kjs2Xs89do0Qc41ikd6cgDUp5qgRxsyRhUgvNtHwsvQYMB0+TB2jolZhWe+JlzKTe1KzbOkmR1Dwf8xDbOS2cg58Me2xt0O6DpqEv9iaJLa/ZVTPqN/iK68jfWh0iI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=n+W0axMA; arc=fail smtp.client-ip=52.101.48.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QQCVqF6Y9zLgFI+aF8nHvVLAlsTlHUjcMHZykUWDMJe1D8TFh3hbM+3KjZlTTaPHmuSBX8YfEuSSyQON5dHb6S1ZkmQRanb163z72B/5VsoMR0bAei1A9U9auYkhywlkmGFr57hHREBralHFEvSs46QGGTkCXzPvElbASZ6gXm6cmGbV7k9GtMkTgHYGPOf+9THx9pBrU13JJyojwnc+E3Z2ihbz+lX4NqzmiSinx8VNbZdiABvmL6Lmh6fnXHo6JV6/CjwvK4lqJPkjudEu8LmTJmkW4pE8YMQeTqPtwlQy/cY0rgdHXOEufItPSqINC58NLc+FxXMqD8l737sGMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tp6ill/aZ8hdMLfvDK5X3i10ZIN6kGzlFB7XNw1+bHk=;
 b=BvwJc4B9niOeCAIWy2mx1WUXV+pLUovEHq4Z+0HCdcKR++ZVi0hKJReyjo/y9xNs0q8eTSxc6VwMLDODcsMxzO+lL9jVDZD6RexgAkaJOPc9D1LUG7XikzrVboX4AMdfQBznwLZmKHrwAnowpnIyezX5f7WYIdn6m+HHmAHUKmORVbBpW8+UsSAnrXR9ztddw8jmXOVK7gF0ecESmCDKGgdxfrHpsU0kS2aOZaRBr71J8WWQhlTB++cg5mNnA1tTO4+ASCB62Lv5svIr0BhkZvtJfE5OmV5JLlYwDqHKqI1s2KvqbWl56Zri+VejOKyjl4+3g4ha6ecXmuPQrKaxOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tp6ill/aZ8hdMLfvDK5X3i10ZIN6kGzlFB7XNw1+bHk=;
 b=n+W0axMAByJRWDKy9On/D7/PsRjLZz0Q7JA4cVLGExzL16VUY0D3e+xLy2N/5TU4+PWVxoaVuWPl/5iOIJzpZ1xQLgZU45cAWfX9jwOsCkAyGJdoEIFiRI/LxwEmyC55CDvnwewLi9pAzfrBNCNyNvMvzl5J3HE0wn3YptrISGA=
Received: from BN1PR14CA0028.namprd14.prod.outlook.com (2603:10b6:408:e3::33)
 by SJ0PR10MB6424.namprd10.prod.outlook.com (2603:10b6:a03:44e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Thu, 15 Jan
 2026 04:36:09 +0000
Received: from BN2PEPF000044A1.namprd02.prod.outlook.com
 (2603:10b6:408:e3:cafe::71) by BN1PR14CA0028.outlook.office365.com
 (2603:10b6:408:e3::33) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9520.6 via Frontend Transport; Thu,
 15 Jan 2026 04:36:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 BN2PEPF000044A1.mail.protection.outlook.com (10.167.243.152) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Thu, 15 Jan 2026 04:36:07 +0000
Received: from DFLE210.ent.ti.com (10.64.6.68) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 14 Jan
 2026 22:36:06 -0600
Received: from DFLE200.ent.ti.com (10.64.6.58) by DFLE210.ent.ti.com
 (10.64.6.68) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 14 Jan
 2026 22:36:06 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE200.ent.ti.com
 (10.64.6.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 14 Jan 2026 22:36:06 -0600
Received: from [172.24.31.151] (lt5cd2489kgj.dhcp.ti.com [172.24.31.151])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60F4a1FV817921;
	Wed, 14 Jan 2026 22:36:02 -0600
Message-ID: <f4319457-6c2e-42b6-a57e-6f326c93fdcd@ti.com>
Date: Thu, 15 Jan 2026 10:06:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: ti: k3-am62p-j722s-common-main: Add
 HSM M4F node
To: Beleswar Padhi <b-padhi@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
	<kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>
CC: <afd@ti.com>, <hnagalla@ti.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<u-kumar1@ti.com>
References: <20260114173551.2545088-1-b-padhi@ti.com>
 <20260114173551.2545088-3-b-padhi@ti.com>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <20260114173551.2545088-3-b-padhi@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN2PEPF000044A1:EE_|SJ0PR10MB6424:EE_
X-MS-Office365-Filtering-Correlation-Id: a59e6e0c-5b4f-4030-3ae5-08de53ef99a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|34020700016|376014|1800799024|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VlF3ZGZmTjNjVlRNSldXdFlmaXI2QmlpQ1RoYTJlVzlVdUJxUVZqQ2twbmFI?=
 =?utf-8?B?NUpaU1pzL1hqenlnbnkxNGFIUWplTmRxcXpkd3VHdHFmNlVlSTArczYwNXZ0?=
 =?utf-8?B?TUxVR2JzUUg4TEV0VDF4b1pWTXh5aVVCbHFKVTJpdGRldUZTSmN5UjhqK0k1?=
 =?utf-8?B?ZFkxS2lTY0RrdGFLdkhpMlZDWWhUYnBoVTIvdkFWU3Fua0xtT3ZIdC83NnVx?=
 =?utf-8?B?Q25zRmdEL0MvWTFheEtETXgwYVlNZjgwbDl5aGpwTitZK0dtU0xTWFRIMGx4?=
 =?utf-8?B?bGE0ME9GZ3h2aithckF6WURxa2ZyQmZKY1RpWWpZdTYxZEExVVA2bmV0WFUz?=
 =?utf-8?B?S25WejRSWlVZbFVUQURJQkpxZVd5aC9DSldHVW1LYktLYUNwM1RVc0xZY2hm?=
 =?utf-8?B?emw1cVZRSDVZU3h3M2I5L3hDR3d2TlNBMkFsUDVMNUFwaHdCUkNBMXZ6aVlS?=
 =?utf-8?B?QUNmUFZhOGxqMnNOTkJFSDBrcXMzSE9wTWN2NDBVcndMRUVJWEM3OFVDMHRU?=
 =?utf-8?B?akczekV3a1B1Y3NSME9DUm1BWkVJUnFBOTJJSUVWeHF1bkR3K0h1bjJFVkhQ?=
 =?utf-8?B?L0phcnY5c1QveGlNcnNjd0tlTU1nWXZiS0xiWGpMcCsyVExLcEVsUDdUREFu?=
 =?utf-8?B?eURtYVRncnhDbEJyNGpyZmpWRFpuVVhEcHJhUk0wSlRUbUpyWTVJb09GUU51?=
 =?utf-8?B?NUVPMk5lYVN6ekV4ZUZsc0ZGalFXRStReko2a2FhVDhTTGJQK2p2SzZMUGQw?=
 =?utf-8?B?cFB4cDQxQ1M5RWowb2w2V3NUYUZpNWV4YVdzVkpzckVkL1VFOFdxWVByOXVz?=
 =?utf-8?B?SjYyU0ozdzY5SHVKdTRpSURXU2t6WlEvRzI4aXhoaDJ0QkQ3SE9CNEpwQ0Ji?=
 =?utf-8?B?NEVzTzMrb1JockV2MHRZcVh6Z2NvWUp4dGhRZDVvc3I4aE5VQUxlUnhnNDhL?=
 =?utf-8?B?L1NwRE5ZSnVrOHQ2MUpPMkdJWTR1K2t0eWY2TnpYVWN0cU9VYmY2anpKUDJa?=
 =?utf-8?B?WGNLY3MweXFDdEJyMnNoNjNMck80NVRibzRtNWtvdHBrWlp2OW5LVEJoVTRs?=
 =?utf-8?B?bmtxVWtxZDRuSWJhcEpYV3ordTVXU1NsNlA3dTY4NThVWC8rZUNqM2pLWHhC?=
 =?utf-8?B?SWd4MXBsWlh4bU5PZmovUFdUTGJ1WFBqT0VoWkJLUG1mb2VqRlBHWndCc1dv?=
 =?utf-8?B?TzdISjZlYWVyVTdIYUVwbjNuT2Q0UGNiVUVGRGNXUlR1emZKblpaaUhVNlNH?=
 =?utf-8?B?Nmx1cmsrYmo4OExHbmpEbzdvSElzK1RNdWUwVkx3UUZLUEZlTlhpbGhvTXgx?=
 =?utf-8?B?ZjVSSXZhSzVUdGF2NGNjWmRXNEV5VjdPRkoxdk1RbTdkVWNEMlNrSW1lTTJz?=
 =?utf-8?B?OUNHb0RZU1NuUzBFc2lsb3k2cExCRmRsdytMNmxzMW9NUlROWmNvNThiWkFz?=
 =?utf-8?B?RHg3REpoVnN1Z2JXWk91L0lLYzFteXBTS0srMm02QWxWUkJBd0RvbGI1akNa?=
 =?utf-8?B?amRCQStsTlR2U3JDcjVwRlBEeW9xUFd0OElqMVg5RWpHUnE3YnhtakFJbEQ5?=
 =?utf-8?B?NTc2dFU5RlAwRWNEQUNHTHZXVVhNd2ZOTU42czBVelF0T1ROT25KMXFrNWN2?=
 =?utf-8?B?d2JxQXVTS3ppU25TM3lLcVhKV2hDcEhZMnpqcGM5TFBhanhjYTFRWHdFeFBR?=
 =?utf-8?B?SUMwOCt0UC9VRVZFTGlmMDgvV2VjWVJySWw0ZXdpRkJwc2pORk5qZDlkUE9w?=
 =?utf-8?B?TUVaZ1ArRDJROVd2L0dKbC9CSjRXdlhaSHFkUnN4cUh1elVwb2IrL05DVzVX?=
 =?utf-8?B?WVcwMFJoRUhCMm9jZWhsdjB5eE5ZZ1l2NmlyYTZyRzE2amZjN2ZGQkFIOGRR?=
 =?utf-8?B?d3NVdm1SSFBxNllhQ2ZjVHI3ZnAvRUg0UU5lcDB0TDJobUVOMnAyWXFMb1di?=
 =?utf-8?B?bThwQ2dDQWNlVFJZenFlNU1OeDZnTEdmSmI5dlluL3FOU0dzQUIyWTBUR1Z2?=
 =?utf-8?B?cnVhUHNGN3JndkJ5QUw0bXJlTEZBcHJGaUQ0ZFZQUUM5bXdRelk5WkltMkRN?=
 =?utf-8?B?K2JVbUJqZkErZ1NobGV2TlIzeklPUmx5c2dta3l2WUNoRjR2ZUlWclVxWk0z?=
 =?utf-8?B?ZkJVRlAxcFVsaThWNS9sTjFHYjdTaXBxRTliZ1FtVjZMUWZKSlBwV1hiY3NG?=
 =?utf-8?B?Q1lYWm1WeXl1UGphc1VTUkpSWnFUa09DYUtLaWd6VVltNnpMM1pVdUdDNlIv?=
 =?utf-8?B?bFMvV3NiRXlhWVMvVTdURzEvUHJnPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(34020700016)(376014)(1800799024)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2026 04:36:07.1953
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a59e6e0c-5b4f-4030-3ae5-08de53ef99a4
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN2PEPF000044A1.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB6424

Hi Beleswar,

On 1/14/2026 11:05 PM, Beleswar Padhi wrote:
> The TI K3 AM62P and J722S SoCs have a HSM (High Security Module) M4F
> core in the MAIN Voltage Domain which could be used to run secure
> services like Authentication. Add Device Tree Node definitions for the
> HSM core in the respective SoC common main dtsi file.
>
> The HSM node is reserved to be loaded and booted by the early-stage
> bootloader. The firmware-name property is defined at the SoC level
> since the HSM is not a general-purpose remote core and boards are
> unlikely to use separate firmware. If needed in exceptional cases,
> board-specific device trees can override this property.
>
> The corresponding reg ranges of HSM node has also been added to its
> parent node's (cbass_main bus) ranges property.
>
> Signed-off-by: Beleswar Padhi <b-padhi@ti.com>
> ---
> v3: Changelog:
> [Nishanth]:
>   1. Use generic node name 'remoteproc'
>   2. Use label 'hsm' instead of 'hsm_m4fss'
>   3. Add a comment for separate SRAMs
>   4. Update firmware-name property to match existing naming conventions
>   5. Change status to 'reserved' and add a commment
>   6. Re-order bootph-pre-ram property before vendor properties
>   7. Update commit msg adding rationale for firmware-name in SoC.dtsi
>
> Link to v2:
> https://lore.kernel.org/all/20260106104755.948086-4-b-padhi@ti.com/
>
> v2: Changelog:
> 1. None
>
> Link to v1:
> https://lore.kernel.org/all/20251231165102.950644-4-b-padhi@ti.com/
>
>   .../boot/dts/ti/k3-am62p-j722s-common-main.dtsi | 17 +++++++++++++++++
>   arch/arm64/boot/dts/ti/k3-am62p.dtsi            |  1 +
>   arch/arm64/boot/dts/ti/k3-j722s-main.dtsi       |  5 +++++
>   arch/arm64/boot/dts/ti/k3-j722s.dtsi            |  1 +
>   4 files changed, 24 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
> index 3cf7c2b3ce2dd..0e1af2a69ca2e 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
> @@ -1117,4 +1117,21 @@ vpu: video-codec@30210000 {
>   		clocks = <&k3_clks 204 2>;
>   		power-domains = <&k3_pds 204 TI_SCI_PD_EXCLUSIVE>;
>   	};
> +
> +	hsm: remoteproc@43c00000 {
> +		compatible = "ti,hsm-m4fss";
> +		/* contiguous regions but instantiated separately in HW */
> +		reg = <0x00 0x43c00000 0x00 0x20000>,
> +		      <0x00 0x43c20000 0x00 0x10000>,
> +		      <0x00 0x43c30000 0x00 0x10000>;
> +		reg-names = "sram0_0", "sram0_1", "sram1";
> +		resets = <&k3_reset 225 1>;
> +		firmware-name = "am62p-hsm-m4f-fw";

you don't need clock and power-domain for this ?


> +		bootph-pre-ram;
> +		ti,sci = <&dmsc>;
> +		ti,sci-dev-id = <225>;
> +		ti,sci-proc-ids = <0x80 0xff>;
> +		/* reserved for early-stage bootloader */
> +		status = "reserved";
> +	};
>   };
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p.dtsi b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
> index e2c01328eb298..9d6266d6ddb82 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
> @@ -96,6 +96,7 @@ cbass_main: bus@f0000 {
>   			 <0x00 0x31100000 0x00 0x31100000 0x00 0x00050000>, /* USB1 DWC3 Core window */
>   			 <0x00 0x40900000 0x00 0x40900000 0x00 0x00030000>, /* SA3UL */
> [..]

