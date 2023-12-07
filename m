Return-Path: <devicetree+bounces-22505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 28296807E40
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 03:16:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 159541C209EC
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 02:16:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E0B915B9;
	Thu,  7 Dec 2023 02:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=os.amperecomputing.com header.i=@os.amperecomputing.com header.b="PuyVBWnC"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2101.outbound.protection.outlook.com [40.107.223.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 725A0F7
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 18:15:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G/bFT0VmjRuEVSKRWm5WpDIn4mXPSCjhIK0e5MChF/UE6iRg94n1FjnN7HY8wCKSHkxtzEopKkQGH5e/0nA3g+V+icO+bcmyrVYMlwhnBHgJPjDmkuiJ7Hh/Wf1te1EO55bRq/aP6YFaAtWbppQmS2BAtsfDfjy7dp54blMCZW2yVFf1xh1q+TbfcHC1MSrXmCJio9NvFbwa9+C2crHtxaT5l0/61fUWsbhaMce/tX/ldj6naoC2rAPSg66QUzm36uE4GjnT96IvdtYEP/i/iVOHJho9Yl6xovSuUHOJ9um7B2bwIQNsOnnYkqXdBMVQiGw/nw6xeb2JaAcDxvSO3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=id7D2MhdYRNs+gNbAOUHde2mLA2IvBouFCImgGXt1as=;
 b=EIy7Ycbr7wTi0WC7y7g6qWc5aRT3+wynVuBbqoelZVoegbaq+6hVzRvKvOvGPWolt0oNfv5CyuCOcUSokQ9+jMQC7bno8kQiKVzxBI8afa8ej/2kVMamDYIHhJAApLZMuitbDWLuaKL+9TGmXACrxRfB+q236a7NzRhqmw17SuecScJ759yK5O2PeIwH5ob2GwKTPXicGbtX0pLKPN3glbXJeeZwHlsuMkDYLghVkMgFP7kzlyvuxCMpFGbPeLUq51l6u4XrQmz9gYirzxoSJAAkekGf6Q5d9Xy7JJ0cm56ds09xYFBjgDwVPdI3F9ao3cvhjHmOyK7SYyYAgcsSMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=id7D2MhdYRNs+gNbAOUHde2mLA2IvBouFCImgGXt1as=;
 b=PuyVBWnCeS5GdoxVPxUWngU3YQQropP8YFuPYDc6w13WN+zITZe8g0emtiI9T9X7UM0GaeFS3DIiyLsJr2gfy8b5kRYSKGvBpL990S2ef9iHIBMgT+y4+yLcNg/Hvfi+DZnsKK0wIHU8JlJdkxDgS2rSlxgph1ZNxz38fdEH8L4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from DM5PR0102MB3590.prod.exchangelabs.com (2603:10b6:4:a4::25) by
 PH0PR01MB6344.prod.exchangelabs.com (2603:10b6:510:18::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7068.25; Thu, 7 Dec 2023 02:15:49 +0000
Received: from DM5PR0102MB3590.prod.exchangelabs.com
 ([fe80::49fa:8dc0:6fd1:72e6]) by DM5PR0102MB3590.prod.exchangelabs.com
 ([fe80::49fa:8dc0:6fd1:72e6%4]) with mapi id 15.20.7068.025; Thu, 7 Dec 2023
 02:15:49 +0000
Date: Wed, 6 Dec 2023 18:15:45 -0800 (PST)
From: Ilkka Koskinen <ilkka@os.amperecomputing.com>
To: Robin Murphy <robin.murphy@arm.com>
cc: will@kernel.org, mark.rutland@arm.com, 
    linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
    suzuki.poulose@arm.com, ilkka@os.amperecomputing.com, 
    bwicaksono@nvidia.com, YWan@nvidia.com, rwiley@nvidia.com
Subject: Re: [PATCH 3/5] perf/arm_cspmu: Simplify counter reset
In-Reply-To: <34ecf45f0f9a0fa34a580f162f02c23d9b849d90.1701793996.git.robin.murphy@arm.com>
Message-ID: <b5d7abb5-443c-f66c-901d-232d2ff3264b@os.amperecomputing.com>
References: <cover.1701793996.git.robin.murphy@arm.com> <34ecf45f0f9a0fa34a580f162f02c23d9b849d90.1701793996.git.robin.murphy@arm.com>
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-ClientProxiedBy: CH5PR02CA0024.namprd02.prod.outlook.com
 (2603:10b6:610:1ed::6) To DM5PR0102MB3590.prod.exchangelabs.com
 (2603:10b6:4:a4::25)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR0102MB3590:EE_|PH0PR01MB6344:EE_
X-MS-Office365-Filtering-Correlation-Id: de07110e-64dd-4cf2-ae95-08dbf6ca6e06
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	rTt47O8trbECpNsm5f6LiGDAKjF3S8++Q75Ffp5CLveyRI9nYJVLCH40g+E5wdxa6yz9Hnez8tY95HDn+YGJO/hKjq8soWazDQ2EUXAKxiTxFJF40G+64FHNBQx97UaLSHZuOpNQS5PRqvGFxt/VTDY4GcYC3IEn2tVoiRhuYVGoxVkWWc8atjwjlcDfJBaV4Gp0Ktp/LIQVWFpnEGx3s1zMb/opB91Ye52BB9L7rqudOz0yjHW8LOwWx1nPONKrw+viDMP01ygTdzKz9a22Cua+VZZYRlpv3pXFmb7en94epf7+T35XInU9z/pKJuLirEz/gPpKPdzEsXtcI7mJ+VnVx/Uqvb72swT202WplWcSaqvojQw9hhHfaJxbYsoN+pcDDDeSOXpKkBOcJ9qo6a2rlaaRTJkRzusnYA+A/kLlGak6dgwrffWCygReNYmd9Hz1VMH9Tq4uqTnFOSMwp9EVUTxMW8//fX7CBAY7NhUnRlwZIjFOQ6OaqTNHMoLNIvy8zlh2KzHMbAPYTMOnDdBycQaWxWqeKffyNi0HAXLCofEU9a+b2uBihlhTGehNZFu37G8vwD4U2fp36flrbSFIJdFyBdGBr1RBtv+yUTeyvQSpfOxB3XAgEEsw7pCi
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR0102MB3590.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39850400004)(346002)(396003)(136003)(376002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(38100700002)(31686004)(83380400001)(8676002)(26005)(52116002)(6512007)(6666004)(6506007)(66476007)(478600001)(66556008)(316002)(6916009)(6486002)(66946007)(4326008)(8936002)(86362001)(31696002)(5660300002)(2616005)(2906002)(41300700001)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?wXcbMWZjP7mPIHbSucQYyD2Yp+LMZcjZNJmzLosy2mofOGzsv89VeFew8HEy?=
 =?us-ascii?Q?yPNQAy0M5+pk7TPXv0ezIv0s30J92nb2RTCx2eBJ4ytYC5dbClQtXvgLlQzv?=
 =?us-ascii?Q?IYO1dYkKiCE2QkCML/rYqacarsCxM3lxzQ5yoA+ae9R66moNhYP2QiKALrMT?=
 =?us-ascii?Q?DR4KhrS6HwEFXNrR7bIg4/1PiY6gsjVs9X73H6RWxO6C4urxBYFHI62pyw81?=
 =?us-ascii?Q?QWe5GPPR3G9/hGKvcu3ynL+gGItABWKS7j82oiI9queZZlXkNUjyjMv3dIwA?=
 =?us-ascii?Q?Vaaxm25keGs6fz+30cE0cxhKXtBXmamnPC/nNGBNOuoGiwebt2QRs4JC/9g7?=
 =?us-ascii?Q?//kmkD7OEwMID7nfCiStVj45/302EFbfgPYKyC54cWnoHv++9nSvRmTIeT+M?=
 =?us-ascii?Q?dyN74K4ncnVGpKfRWg9b8ywAN5d8/FXF2E1cBPhO91xg+ZZmv74lBFgNMaNd?=
 =?us-ascii?Q?ie8Kmpiz5Diu2YsbhfajlL33B2fI0BZs52GEYlkD4UVMuaOBPn5UxPUhefki?=
 =?us-ascii?Q?UdKfy92bqlz+lhPRzoYE1uyZFqlJp+ZME0bz7qHeFYKdLRC5zT0ebSfrXyqe?=
 =?us-ascii?Q?EyFs3q1n0706PLKUBOWrxRc/kyiN+Bhr2YFpIgTT/OgzmPiI+mWbXqk+/Ge8?=
 =?us-ascii?Q?zmTL1jefHxXSLpvL3+S8iA+hQZn12mAwC3v0txO9WsP4zkyGS2uLko64jU2Q?=
 =?us-ascii?Q?3+TYdK1ChF0D0Q8vlMafoykPWKfipzni1T5gZny1EI28WRhrjzd4Sf5PO+kq?=
 =?us-ascii?Q?j6c8UPio6lC6gOd/oUsek69PR5nbMD7yzrdPZ8MMCipJaMlOlxGnIZPtxwGU?=
 =?us-ascii?Q?bacKASLmEBY/Czn+pY3M8imJFs/p+ubGv/2QH16WEXOBVl9UDTLLeYhWEiHk?=
 =?us-ascii?Q?+0sv5iMGvtmRb7fW7NpSbVLeekdxHSMWsKCanjiIckpzUWzbGJnF6ENDSyUx?=
 =?us-ascii?Q?vg+cUOUPApUhbwNyha2cmoEKplx9m2mSc1PmNdMOkUeVC8Nek29xT9uzn9Cp?=
 =?us-ascii?Q?Hmdnkb5h3UTU1kmp6rr3UtcRg/OEkkiqtLyi1Pe3Kz6DaYp1+qyDfyCwCZT4?=
 =?us-ascii?Q?y9rIxjcHHKtrmkdSNo3NQorwszvZ324N1V4+G8f92yHhXE1r+Huszsw3Ouw0?=
 =?us-ascii?Q?xrYl5WiC/Aa46W8TRRaKDBAlRmNotv8PrhRrhQyv5H44DCj9/oSOlYyB4Vmk?=
 =?us-ascii?Q?uQCjdbmU4PidSXythR9/kHSq+PVxMUMD7jeaZY1iXaMOynUXeqXBicDfYckY?=
 =?us-ascii?Q?hc8/FcoK0tGIMGbJgLYVn27qK04wjI5pWZnLX5E6L1k7djh5Xlr06E2h6ncK?=
 =?us-ascii?Q?lHKgzkJUp6SN5y+o4F7m5lk+kmLXMK4S9DRJExA0MDX/e3AM6WBp+HMWXZCr?=
 =?us-ascii?Q?H3fdZ8Ck1xLrXwoDzlUT5EgnHlVzGVEcFwLRjek+2iZRSpr5mUls6czGyy/O?=
 =?us-ascii?Q?DXA332sTbj8DNcRNg3kgtY/s/oZNtIPGLfNGaVTjdq8lLfcz6OyHwZbLoVmh?=
 =?us-ascii?Q?uF8I+Y0Fp+XDuIeNdW9RN9REDgyB1xL2YtuhhthN2WkgjN3nRkq/4/Y+qT/T?=
 =?us-ascii?Q?8SDxq2dm03J0SV90lawEFy/InVXvGZY+6LG/pVEMhairXMe/YrTZ9T+wAUXe?=
 =?us-ascii?Q?R7gJwgVV9IbQ8OxdOw3hcl0=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de07110e-64dd-4cf2-ae95-08dbf6ca6e06
X-MS-Exchange-CrossTenant-AuthSource: DM5PR0102MB3590.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2023 02:15:49.5736
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6BRJ9iNSmuP5KA/jRFo6HvKTLmS69ncOPl2fYTqEUgVIdk/KqcI0XUoUjYuaPOpLZZbuLBMhuWPdyJEdnVqiKP27nHqbeS7bnkMVVAcP7+94sHNtQJW/A1NpvlUlmqgh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR01MB6344


On Tue, 5 Dec 2023, Robin Murphy wrote:
> arm_cspmu_reset_counters() inherently also stops them since it is
> writing 0 to PMCR.E, so there should be no need to do that twice.
> Also tidy up the reset routine itself for consistency with the start
> and stop routines, and to be clear at first glance that it is simply
> writing a constant value.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>


Reviewed-by: Ilkka Koskinen <ilkka@os.amperecomputing.com>

Cheers, Ilkka


> ---
> drivers/perf/arm_cspmu/arm_cspmu.c | 7 +------
> 1 file changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/drivers/perf/arm_cspmu/arm_cspmu.c b/drivers/perf/arm_cspmu/arm_cspmu.c
> index f7aa2ac5fd88..b64de4d800c7 100644
> --- a/drivers/perf/arm_cspmu/arm_cspmu.c
> +++ b/drivers/perf/arm_cspmu/arm_cspmu.c
> @@ -525,11 +525,7 @@ static int arm_cspmu_alloc_attr_groups(struct arm_cspmu *cspmu)
>
> static inline void arm_cspmu_reset_counters(struct arm_cspmu *cspmu)
> {
> -	u32 pmcr = 0;
> -
> -	pmcr |= PMCR_P;
> -	pmcr |= PMCR_C;
> -	writel(pmcr, cspmu->base0 + PMCR);
> +	writel(PMCR_C | PMCR_P, cspmu->base0 + PMCR);
> }
>
> static inline void arm_cspmu_start_counters(struct arm_cspmu *cspmu)
> @@ -1189,7 +1185,6 @@ static int arm_cspmu_register_pmu(struct arm_cspmu *cspmu)
> 	};
>
> 	/* Hardware counter init */
> -	arm_cspmu_stop_counters(cspmu);
> 	arm_cspmu_reset_counters(cspmu);
>
> 	ret = perf_pmu_register(&cspmu->pmu, cspmu->name, -1);
> -- 
> 2.39.2.101.g768bb238c484.dirty
>
>

