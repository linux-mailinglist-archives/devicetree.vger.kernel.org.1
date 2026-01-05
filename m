Return-Path: <devicetree+bounces-251542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 565C2CF4064
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 15:07:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC8A53015EF5
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 14:01:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A8C8330B20;
	Mon,  5 Jan 2026 14:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="rsRH/S5O"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010070.outbound.protection.outlook.com [52.101.85.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90AC18A6CF;
	Mon,  5 Jan 2026 14:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.85.70
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767621684; cv=fail; b=fkIhtTZu/LFbzxY6pf6E1fZf/dcguEw+NkpkZStDVHbqTInjp63tZpzX71tQerRnZhY0VBoRUyoJ30Khk8WORGUAF5AjKm8Y3TlT7dfXWCUTdN3oJoF0w477vlUaC3urWQelUDjelFsn4RprULD8gkb3O6E37TQR/GqZU6Wgqdk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767621684; c=relaxed/simple;
	bh=/DlL+S6Kkd8MxdQdgVZvT63gkneS7cl3VTpb5xJ2gao=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LR89h//8Sxm2WXi1vkawCMDDhWKEO3lzSuMVdMK5yupMwwhOCWsHTiYi6Mv93cLXUnqHRWW6zf6P6HEwGOVpYvXtF6k0X7eg9Ihpoj/wymt4+327BDiFlP3q0P0QxjeeTs4BC7A/HWGOkIPgduEQaTLXGbCuLuH27D6RX558SnA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=rsRH/S5O; arc=fail smtp.client-ip=52.101.85.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bqn2ltUujGVoWBs4QNqpl2VayN86Z/lPJXyDfEmRsX6x7NrjynFTo4pQG0OwNOmHTHz+mrTvPmZOA2iDfX1WhWfL5gAg2+jFsiJKC/JTO+Q5fn2DmGa/NwxKukhCZNAH06/G8PrFfQIyNVpXtskHalw/LfOH3cU1ZxZLTjk4FJWkxA1aHo3JfEGDgJMBnz0U6qb216sSIwl04U9RsmYzF9Go65YIKtMOhguUevQ9hedq2w0UThEZsow0xe1t7HuvvgesPOy70v8JzFa5YCqE9TWloZ95XHLpUyqR+A5n2Zy+ddI8CtsxWEco6d87z5gqdRiia5IHlc51QbzR3lcYXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VLFjt+1A/u0tMtO2uTgX/LmnGWpsFebUUACuRh7i8aA=;
 b=MFb7zo1n+aTg5fxHr+TYeG2tG1ChS98bC3ATktUizLdNGmAeh8MCy4dodZW7dUrLMZ9daCpHPiVTf9CLDZu2pvPcJ21OEPkrzpCLUNywm4eWFLkP8wgHjWLjQZykniMtXniSFq9IOMEd1mXRZp0Qmr8t4pIwuzohq18TdYBuRVAs23wyXj66gVlYYvePn/k3JxI56QUnZcuZo0ZAWoaKvTlZuJZJ71MB0NHFjSbmZ2sX+/cP0XKESQ+wiT68LYMWJaaPWZGV62RqIlgKlAv2+KxjUeARG4AoUDXiRqpxylypkbuLkGxTy5iOQbpncgGiemsLqjiQlX/1ExstgeaWpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VLFjt+1A/u0tMtO2uTgX/LmnGWpsFebUUACuRh7i8aA=;
 b=rsRH/S5O1DD51Z2LZeBkyF06rUxveIKs29HZFB3ZwhDv9gHMG7jNRQGLZnnuMaSdS8mdOypL1oMcS4ahndXSjdIbuK0UabhWqvPgTycuN1r1xK9Dl8G+3EB08mi0kYNi6aa7Pb7h23d8Yj+U3nraQlz+tcYjNW6N9dUd2nxbVhg=
Received: from CH2PR02CA0025.namprd02.prod.outlook.com (2603:10b6:610:4e::35)
 by BY5PR10MB4148.namprd10.prod.outlook.com (2603:10b6:a03:211::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 14:01:18 +0000
Received: from CH2PEPF00000147.namprd02.prod.outlook.com
 (2603:10b6:610:4e:cafe::a4) by CH2PR02CA0025.outlook.office365.com
 (2603:10b6:610:4e::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9478.4 via Frontend Transport; Mon, 5
 Jan 2026 14:01:18 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 CH2PEPF00000147.mail.protection.outlook.com (10.167.244.104) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Mon, 5 Jan 2026 14:01:18 +0000
Received: from DLEE211.ent.ti.com (157.170.170.113) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 5 Jan
 2026 08:01:14 -0600
Received: from DLEE207.ent.ti.com (157.170.170.95) by DLEE211.ent.ti.com
 (157.170.170.113) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 5 Jan
 2026 08:01:13 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE207.ent.ti.com
 (157.170.170.95) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 5 Jan 2026 08:01:13 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 605E1Dpx1370907;
	Mon, 5 Jan 2026 08:01:13 -0600
Date: Mon, 5 Jan 2026 08:01:13 -0600
From: Nishanth Menon <nm@ti.com>
To: Abhash Kumar Jha <a-kumar2@ti.com>
CC: <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<conor+dt@kernel.org>, <krzk+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <u-kumar1@ti.com>, <p-mantena@ti.com>,
	<m-chawdhry@ti.com>
Subject: Re: [PATCH v2] arm64: dts: ti: Remove 4 watchdogs from common file
 and move them to J784S4
Message-ID: <20260105140113.572dw3hm73xa7pxw@rarity>
References: <20260105050557.3459321-1-a-kumar2@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260105050557.3459321-1-a-kumar2@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PEPF00000147:EE_|BY5PR10MB4148:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a4681c5-0732-47ac-5765-08de4c62e65a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|82310400026|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?fzTDsZ4G4R3Ais1LqA5e1C6csrmYYlvin3rFKmyvrsUHWQwKBZsB1axBKPSI?=
 =?us-ascii?Q?eMhdPHOFCJsVKMFSamutn/62X3oMyRa09egau3fQmRhFzZL78kZk0itD1Mhh?=
 =?us-ascii?Q?Wl9fRXlM+aUWXyXEHpNZBWoO+EIjuDhw+VteYY1H1bcVrrXfMyVcuOgE139M?=
 =?us-ascii?Q?OjOOIui3KzBUrHgcbcI4Wj4kbKydO/GQ9iVPfYAxXPaRGcqrLoDRd3GTlmlw?=
 =?us-ascii?Q?3knjQdQ3P+9kbQ7DCmEf5Bh44D6P7I187MY0hr83sBEwGUOHskwZy4uOk3GC?=
 =?us-ascii?Q?p647vPisp79kKM+KJp3OemN8jNHYAxlKLBsMiV7LNB6BvleNR8PR4Q+hYwye?=
 =?us-ascii?Q?vo4f9yCipfS8UAYpdEA9YC1SB4t/+eK2/YjEahmiODQx1M6WjXHlhqgc2lvi?=
 =?us-ascii?Q?Ye0agwdQIHWbBSXfy1NceDdcQihlzkfu1x2BtCAy5OMFZXj9zUwgX1DvMGZR?=
 =?us-ascii?Q?rghjzAVvNW7Jj+SBckrbvnV/V2PmPUuyy2OmnKSXOpowBVq5SKAmEmeErIDw?=
 =?us-ascii?Q?+cXbTRkv3PNCbQUEW6ZBc06cLTAvSnkGhaBUa7j2zcHmpZ5Ix7HBGYjlnJt6?=
 =?us-ascii?Q?c0czlB3iODMJPGD0q3CESk3FaY7L2Kj5GX3QLq3REUhbuliImdjGQ9aU3gSo?=
 =?us-ascii?Q?S0bAlHlDIAAi1Zcps4tCmv8SHXndd3HZmAUz21+uEDeKOkXSFD7rzoe3bACg?=
 =?us-ascii?Q?kzUAMmqXGMxXG2lTtEz7HGek+nItGo90r2flRMyPCaBl7L6gcfnRt4hLJWfF?=
 =?us-ascii?Q?LqFwT0fiywchYKSgt9ThfIfAkUCCQX2viY/v9natDfbDvN7IfqlJVWA17pd6?=
 =?us-ascii?Q?NA6OOBkbEnJ+uxm7U3dnKqDI1cJsKg56Sp9c/waMuNMt8c971hzbLCAJIdEL?=
 =?us-ascii?Q?QTjttCduhoSim4q496EtsQTs9k4FWqEz7mmEBYOKCrhZHRc0iwAmwhRTjXoE?=
 =?us-ascii?Q?0Ukle94F+oAFlVk6HXR+qlgUXH4gSpE3OTJtVGlb66vbkr9BbYVpceukpyJr?=
 =?us-ascii?Q?vErKUXBuN0eyS8Bua/CK/8Tmu+KApP+Zczixfv/rSc0F07/OvFjsPa3YVJJO?=
 =?us-ascii?Q?SGup133cCyEtBifFwptLM7A6wxzAIXc7SCzrCbcTSKhB80l6DZm2Q1AuJ00d?=
 =?us-ascii?Q?a3NvRmMLL+300HpOdyOkWuX+x9pZXVQW990T9j6qHSTleUZbV/0SEY23b1aQ?=
 =?us-ascii?Q?gOhUzF9jvjCiKNA95349QnUJ9HMUJ1HPizZrz8Tl6ZXQNLKCGS/1Kxytg1uR?=
 =?us-ascii?Q?CJXgLuMkI0V0t6rlat82qGynxtWC25V/yK4+hiTzYdAL0/xTwRUnO/Hw99Z1?=
 =?us-ascii?Q?8VJ9Fe9kQlZ91SyuCIL66vBk6C336f3qJGbRCfjd1Q3xW/fEfWrQ0Mbdms/E?=
 =?us-ascii?Q?7XHFnMo7t8piLhnWPvtj9xYTw6zdXkqz+vEU7qvaeDyXoL2EFM/kkbIU2Wtd?=
 =?us-ascii?Q?Bas5NhT90+cWjRl/UfHd9uv555ZkN8SKBPhElRwCnbmX5a4Y5wxP+e0rtsIm?=
 =?us-ascii?Q?zZtwZ6Av1kiAUB/xvbLVo4ZM5/kmygLZb8CndQrxo2icFizeV4NLX9yFHKFp?=
 =?us-ascii?Q?dbtPDeoLkw63euZgECDX8a6xrIdmOniGu5cHBEQB?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(1800799024)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 14:01:18.7645
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a4681c5-0732-47ac-5765-08de4c62e65a
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CH2PEPF00000147.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4148

On 10:35-20260105, Abhash Kumar Jha wrote:
> As the J742S2 SOC has only 4 cores, remove the extra watchdogs and add
> them only for J784S4 SOC.

Please fix the $subject and commit message. note, we can read the diff
to understand what you are doing, when you say J742s2 has only 4 cores,
it is not clear what cores are you talking about and why it is related
to watchdogs etc.
> 
> Fixes: 9cc161a4509c ("arm64: dts: ti: Refactor J784s4 SoC files to a common file")
> Signed-off-by: Abhash Kumar Jha <a-kumar2@ti.com>
> ---
> Changes in v2:
> - Added fixes tag in the commit message.
> - Link to v1: https://lore.kernel.org/all/20251224055410.208516-1-a-kumar2@ti.com/T/#u
> 
>  .../dts/ti/k3-j784s4-j742s2-main-common.dtsi  | 36 -------------------
>  arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi    | 36 +++++++++++++++++++
>  2 files changed, 36 insertions(+), 36 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> index 9cc0901d58fb..c2636e624f18 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> @@ -2378,42 +2378,6 @@ watchdog3: watchdog@2230000 {
>  		assigned-clock-parents = <&k3_clks 351 4>;
>  	};
>  
> -	watchdog4: watchdog@2240000 {
> -		compatible = "ti,j7-rti-wdt";
> -		reg = <0x00 0x2240000 0x00 0x100>;
> -		clocks = <&k3_clks 352 0>;
> -		power-domains = <&k3_pds 352 TI_SCI_PD_EXCLUSIVE>;
> -		assigned-clocks = <&k3_clks 352 0>;
> -		assigned-clock-parents = <&k3_clks 352 4>;
> -	};
> -
> -	watchdog5: watchdog@2250000 {
> -		compatible = "ti,j7-rti-wdt";
> -		reg = <0x00 0x2250000 0x00 0x100>;
> -		clocks = <&k3_clks 353 0>;
> -		power-domains = <&k3_pds 353 TI_SCI_PD_EXCLUSIVE>;
> -		assigned-clocks = <&k3_clks 353 0>;
> -		assigned-clock-parents = <&k3_clks 353 4>;
> -	};
> -
> -	watchdog6: watchdog@2260000 {
> -		compatible = "ti,j7-rti-wdt";
> -		reg = <0x00 0x2260000 0x00 0x100>;
> -		clocks = <&k3_clks 354 0>;
> -		power-domains = <&k3_pds 354 TI_SCI_PD_EXCLUSIVE>;
> -		assigned-clocks = <&k3_clks 354 0>;
> -		assigned-clock-parents = <&k3_clks 354 4>;
> -	};
> -
> -	watchdog7: watchdog@2270000 {
> -		compatible = "ti,j7-rti-wdt";
> -		reg = <0x00 0x2270000 0x00 0x100>;
> -		clocks = <&k3_clks 355 0>;
> -		power-domains = <&k3_pds 355 TI_SCI_PD_EXCLUSIVE>;
> -		assigned-clocks = <&k3_clks 355 0>;
> -		assigned-clock-parents = <&k3_clks 355 4>;
> -	};
> -
>  	/*
>  	 * The following RTI instances are coupled with MCU R5Fs, c7x and
>  	 * GPU so keeping them reserved as these will be used by their
> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
> index 0160fe0da983..ffc61ec77635 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
> @@ -113,6 +113,42 @@ serdes2: serdes@5020000 {
>  			status = "disabled";
>  		};
>  	};
> +
> +	watchdog4: watchdog@2240000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x2240000 0x00 0x100>;
> +		clocks = <&k3_clks 352 0>;
> +		power-domains = <&k3_pds 352 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 352 0>;
> +		assigned-clock-parents = <&k3_clks 352 4>;
> +	};
> +
> +	watchdog5: watchdog@2250000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x2250000 0x00 0x100>;
> +		clocks = <&k3_clks 353 0>;
> +		power-domains = <&k3_pds 353 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 353 0>;
> +		assigned-clock-parents = <&k3_clks 353 4>;
> +	};
> +
> +	watchdog6: watchdog@2260000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x2260000 0x00 0x100>;
> +		clocks = <&k3_clks 354 0>;
> +		power-domains = <&k3_pds 354 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 354 0>;
> +		assigned-clock-parents = <&k3_clks 354 4>;
> +	};
> +
> +	watchdog7: watchdog@2270000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x2270000 0x00 0x100>;
> +		clocks = <&k3_clks 355 0>;
> +		power-domains = <&k3_pds 355 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 355 0>;
> +		assigned-clock-parents = <&k3_clks 355 4>;
> +	};
>  };
>  
>  &scm_conf {
> -- 
> 2.34.1
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
https://ti.com/opensource

