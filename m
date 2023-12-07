Return-Path: <devicetree+bounces-22506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BDA807E41
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 03:16:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B5701F215E9
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 02:16:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDA5C15B9;
	Thu,  7 Dec 2023 02:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=os.amperecomputing.com header.i=@os.amperecomputing.com header.b="eHnBqyD8"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2094.outbound.protection.outlook.com [40.107.223.94])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5304A1A5
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 18:16:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f9UueLMDF7bzFh5Do93kPi70fZagFT9kdx8zcEwSigFzKNqL8IhWbKiFwduptkx+y6eg9Xt2v5SIRACt4IasSrFGQgBstgMWN4vEDj07H+czHgng9afkdCYqjSuk3g2fCCL19iNK5v76X2dTeoww/dDgm5gT/iY6rxZld7jKTE9tPuoAFLC9bz7fxLvxFZm27F5XpOPTKK8suryX3td0PcJDZ9mmyedoLznEp1U6mxYIGFORdQmhCaVesKivs4BxOTNhisTlR3AQ9SUeFNjGOZ8usCbebcCeWnyMUdli3c6FBzL3FeauvGLP6t+dURUMd3HUd/2+bBV0VwoAgFKLJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6o55RdrCXRFNYdC/bwlugV3bhiXG0RxLn0CKt3YxGjM=;
 b=N5Oal/xVUnTu1H91nEkMQkWO3DfC9Q/Q11rujTUDs1ZjwG5NijM6DzXFab6KQFzgF6A8rGnctczX5oj9QZdmdFRMfLui79EZCca+Zd1QqjMMZj4qVie7OIJ71XiqiYCrouWmcNqHW+y60xiAKN4d5JAez/xqPsc7aMMlUSkpCcUpZbmWnOvkj0rkQ0kAhi/94Unz7HeAtIDjEghvtOH5soKDbMwiYe8jseHJRZpnWfOG2lyRnrA5zwa1pn2RSP1Qqxd801GLhKehdjuey+x8pD9bql3gHHEgWhnQGj9I4stJ0sbQ0jV0AxVN7Qz0rW8Nu6ORxeLiVmlqKNceakTjDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6o55RdrCXRFNYdC/bwlugV3bhiXG0RxLn0CKt3YxGjM=;
 b=eHnBqyD8TALIVf4A9wsdNZ/TbiTb/BXPEOmOQFXuSi8qDuO5m1MRMaDWzFFf2maF2N5zO1HjvrodhacKG9EabBq521VY9N0VOOjT9Hczm0I5JrGwpZnhGjdcafAqf8Ewbp7hDF16o0SjNkPEX978rzIu+jMWCcdBWpG6lRCYkag=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from DM5PR0102MB3590.prod.exchangelabs.com (2603:10b6:4:a4::25) by
 PH0PR01MB6344.prod.exchangelabs.com (2603:10b6:510:18::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7068.25; Thu, 7 Dec 2023 02:16:24 +0000
Received: from DM5PR0102MB3590.prod.exchangelabs.com
 ([fe80::49fa:8dc0:6fd1:72e6]) by DM5PR0102MB3590.prod.exchangelabs.com
 ([fe80::49fa:8dc0:6fd1:72e6%4]) with mapi id 15.20.7068.025; Thu, 7 Dec 2023
 02:16:24 +0000
Date: Wed, 6 Dec 2023 18:16:20 -0800 (PST)
From: Ilkka Koskinen <ilkka@os.amperecomputing.com>
To: Robin Murphy <robin.murphy@arm.com>
cc: will@kernel.org, mark.rutland@arm.com, 
    linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
    suzuki.poulose@arm.com, ilkka@os.amperecomputing.com, 
    bwicaksono@nvidia.com, YWan@nvidia.com, rwiley@nvidia.com
Subject: Re: [PATCH 1/5] perf/arm_cspmu: Simplify initialisation
In-Reply-To: <9842b71263a0a5e7ebb9aebb5f9ac15e1e24ff65.1701793996.git.robin.murphy@arm.com>
Message-ID: <d8c73013-7250-2589-79db-602490a46086@os.amperecomputing.com>
References: <cover.1701793996.git.robin.murphy@arm.com> <9842b71263a0a5e7ebb9aebb5f9ac15e1e24ff65.1701793996.git.robin.murphy@arm.com>
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-ClientProxiedBy: CH2PR12CA0019.namprd12.prod.outlook.com
 (2603:10b6:610:57::29) To DM5PR0102MB3590.prod.exchangelabs.com
 (2603:10b6:4:a4::25)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR0102MB3590:EE_|PH0PR01MB6344:EE_
X-MS-Office365-Filtering-Correlation-Id: 9bf46af9-a2ec-41dd-e9c4-08dbf6ca82c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	4d2CugN5vi6flN7lL/KauNKErObBisrD+g+KX8GMrkz/wOidM/qObCTEtqPsJuXkLCQoYX2/7J9sqHEmkZSuC2XKshAKgaNO+n5TMDbU4qti4AA5znhampuMFuM2JOtxP5Nz+2IJsADtHPqjvUQL+o1s2gbReGoERR2cCSjqyHkyIRrlo3WCZBkF3DqqF/eaGOukhIlNejWmuJETzIB7oT5noitxPK41XvDLR4gwdRXmbRV/bkDUVZh1qpOshXChwKzH4MRZInS2GgXppnBl8rpghpcrU4Xx5+TTt7Xxao0sf3+lIjaFs2ETF7QRtLsutzg87/59uwlINqpq8JgZEp+kGoDWBkWUD5fEvKxt2GQm8+WcgG6Jg1YXa5OsyUq5RFiVEbsgZGn73jp7ueXb1NxXpH07WAbKhZUXcGzqM8OK0SA1pl0A9IoIQUd9BzYE2gmTJf5Bqu8c6ZPuhgvXl48JXgbJ4pQHVtxkSjEYFQqTWPnVgwKNkLkIFy61cOkFizEVVU3WQtTxVvU8fL/o/rGtGRv3LtUsOK5zcl5eY8cXOn1qikiCsmXLtcB/jD1cWE6nUttLo0OTzrzP0q/3oMYK+eOMdrb4sF+oZzV9N/jsHkMVT+S5oPjGeeuYcx7X
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR0102MB3590.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39850400004)(346002)(396003)(136003)(376002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(38100700002)(31686004)(83380400001)(8676002)(26005)(52116002)(6512007)(6666004)(6506007)(66476007)(478600001)(66556008)(316002)(6916009)(6486002)(66946007)(4326008)(8936002)(86362001)(31696002)(5660300002)(2616005)(2906002)(41300700001)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?w3RVvm83GwV/3L+LuaLrZJptJSvJt0hSIR0EjkU+wjVR8Qy0kcNrfqXeiH1O?=
 =?us-ascii?Q?zu8FeM7Gm5SGGRIFIuz2XZuMKRR85lQWPKvH0S9efTUHvbGXrWiKK/M2otQm?=
 =?us-ascii?Q?pDWs0FC1aOGE5/iUqeb4HSp3bu2izBXIpGfrX4ro1dp8paPfYqdCVhs3mAGo?=
 =?us-ascii?Q?wYWpcVp+4/9duoi8TjKQ4Kqdjbc+tTrLFdFftuxMdWp6kpvGGrUQnJzC+sZV?=
 =?us-ascii?Q?LBHCC03JhCk9Oq5ScBYLdBoXoT/spO6ZTYyKJKPtMaGgyQ/vYJwsH8y8wbMm?=
 =?us-ascii?Q?eUNXMyFzremhrBU1fCJ2NsH3VGMCwoIjwoKfzo/6iYqLOBkHV/ZLkNq0C8be?=
 =?us-ascii?Q?+p7Hj1Rl/9rwZJzSwNd3DFSTVW0SLxuh/BZXl3sdLPFVfZW5+DxfT4W/MJpA?=
 =?us-ascii?Q?iRuKg05+zJurVNNxMAkJs7k3K320NvalAoKWQTTVwJU43GzMIYhX3eB7jx8x?=
 =?us-ascii?Q?/5Up4lr98S/3/swMtUEmK03s/8MMpljVHVtRL0+Cuv2K6b8RnoUKpIfXvwwv?=
 =?us-ascii?Q?okZUnvVkpN0Pog++WGa7I+sjbhVGqisDS9RkwPw7LAXx5B0WyVIYZxI39o83?=
 =?us-ascii?Q?i45j6NRp14d5je2rJI9TI8xHHmMRRsCo/HA9OxfzIp0ldbOVA7AW2Vb8KcPE?=
 =?us-ascii?Q?x53Uu73Vhb4WE839BcAfjkpgLxLG6lw4D9ncu/0mBpOzBFP9Oq2vRDbw8P6e?=
 =?us-ascii?Q?bv6ZOY5ondwfQ05UKvG0+tS77pNdQTlmAHPaNdIYhNZlRLUtwxPxrtXnNHZc?=
 =?us-ascii?Q?1KsS6tcdN9dfZn7NPB0xI5cc8s2qj8W46I0+y49JWwkb9cw4K1yP8kl+NBcH?=
 =?us-ascii?Q?KffUkf8dfiZ0MOcwyr/O/X+T0rYC/B1xVidNs4VyTqze1dQAsxt+gYFkr+Nx?=
 =?us-ascii?Q?MDdz/vkFRhXCxYGDhVRskoRqRsihb0IyzVl5bJfnf9zOX5bJCzHCaHS79E/6?=
 =?us-ascii?Q?xLrA0bqFxTmcTLhPfjn3d+7x+3fIBSMW27wIdcjDMOpz7vMVhWWzJsKlih5I?=
 =?us-ascii?Q?AG0mJh+tTB45g+Bb3olFEDPbY0naNtN9aEqQu+ypWhwbIplnl6ZbVn25zxVq?=
 =?us-ascii?Q?pUmclNtnYJh6wQfNzuDe2ty4pn0GZTWOA+Frc5sCDDxY29NeFtoI/6TUeVND?=
 =?us-ascii?Q?AxmsRHAz3Jdmz0ZWyeK6E/pjgnffsCykyZaPnsfNdLW+avOmm9G+jvMabGBx?=
 =?us-ascii?Q?jVRcGf1ujGazM1GlpGJ3LHPNINAu0YZkfXkR4y9Xj15A3M2UabDkZ+bZ8Ccs?=
 =?us-ascii?Q?P0lPyBkP4LJ31ML/ncg/ovmjBp3DuaPQzCi+xWJm6v4pLrUvC6eb/p+PIZae?=
 =?us-ascii?Q?gzpgkLMPaeB+IbyM2l4kn8HLu/GurQ9NPoqeCKsqhu5ehj/t9mHFS+6sShaj?=
 =?us-ascii?Q?UhZf18XG/GhoaKLh9nwOcyPIOXJWyKugcAqEn/ugZmY3uqu9q3iq2+o+8gPZ?=
 =?us-ascii?Q?hz9aFFpJ7wnwIAuZOQe1o2yXxlyZO3U1mS+rF7ypPEMry2aEbQalPLUgr8z9?=
 =?us-ascii?Q?yd4RJHQSVpXX61jRGSka93vJc+7lh4t/ZTfH7T6OAuAEpmWfyr7KvBU/Dmg1?=
 =?us-ascii?Q?uYFk+p63bQ1eL3ohMusTlbU0ZZkXiEmJVUjDXpvIf3ylOdXIphNBgamMsOx2?=
 =?us-ascii?Q?Puynm8MYVcflTt3EXfnZfvA=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bf46af9-a2ec-41dd-e9c4-08dbf6ca82c1
X-MS-Exchange-CrossTenant-AuthSource: DM5PR0102MB3590.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2023 02:16:24.1623
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: glL1m3/RbJScoLSqOWjuOdCH+BKlDpU0hqZSAQR/yKFEqzZjPKCaFLNj1dEGp/nt1vrUGEQWgBM3IbgdgeVxb46K1IyY+Qzk3K6JXF9R5pINVuP9BTH6VRkI+iMvleDd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR01MB6344


On Tue, 5 Dec 2023, Robin Murphy wrote:
> It's far simpler for implementations to literally override whichever
> default ops they want to, by initialising to the default ops first. This
> saves all the bother of checking what the impl_init_ops call has or
> hasn't touched. Make the same clear distinction for the PMIIDR override
> as well, in case we gain more sources for overriding that in future.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Reviewed-by: Ilkka Koskinen <ilkka@os.amperecomputing.com>

Cheers, Ilkka


> ---
> drivers/perf/arm_cspmu/arm_cspmu.c    | 55 +++++++++++----------------
> drivers/perf/arm_cspmu/nvidia_cspmu.c |  6 ---
> 2 files changed, 22 insertions(+), 39 deletions(-)
>
> diff --git a/drivers/perf/arm_cspmu/arm_cspmu.c b/drivers/perf/arm_cspmu/arm_cspmu.c
> index 2cc35dded007..a3347b1287e6 100644
> --- a/drivers/perf/arm_cspmu/arm_cspmu.c
> +++ b/drivers/perf/arm_cspmu/arm_cspmu.c
> @@ -100,13 +100,6 @@
> #define ARM_CSPMU_ACTIVE_CPU_MASK		0x0
> #define ARM_CSPMU_ASSOCIATED_CPU_MASK		0x1
>
> -/* Check and use default if implementer doesn't provide attribute callback */
> -#define CHECK_DEFAULT_IMPL_OPS(ops, callback)			\
> -	do {							\
> -		if (!ops->callback)				\
> -			ops->callback = arm_cspmu_ ## callback;	\
> -	} while (0)
> -
> /*
>  * Maximum poll count for reading counter value using high-low-high sequence.
>  */
> @@ -408,21 +401,32 @@ static struct arm_cspmu_impl_match *arm_cspmu_impl_match_get(u32 pmiidr)
> 	return NULL;
> }
>
> +#define DEFAULT_IMPL_OP(name)	.name = arm_cspmu_##name
> +
> static int arm_cspmu_init_impl_ops(struct arm_cspmu *cspmu)
> {
> 	int ret = 0;
> -	struct arm_cspmu_impl_ops *impl_ops = &cspmu->impl.ops;
> 	struct acpi_apmt_node *apmt_node = arm_cspmu_apmt_node(cspmu->dev);
> 	struct arm_cspmu_impl_match *match;
>
> -	/*
> -	 * Get PMU implementer and product id from APMT node.
> -	 * If APMT node doesn't have implementer/product id, try get it
> -	 * from PMIIDR.
> -	 */
> -	cspmu->impl.pmiidr =
> -		(apmt_node->impl_id) ? apmt_node->impl_id :
> -				       readl(cspmu->base0 + PMIIDR);
> +	/* Start with a default PMU implementation */
> +	cspmu->impl.module = THIS_MODULE;
> +	cspmu->impl.pmiidr = readl(cspmu->base0 + PMIIDR);
> +	cspmu->impl.ops = (struct arm_cspmu_impl_ops) {
> +		DEFAULT_IMPL_OP(get_event_attrs),
> +		DEFAULT_IMPL_OP(get_format_attrs),
> +		DEFAULT_IMPL_OP(get_identifier),
> +		DEFAULT_IMPL_OP(get_name),
> +		DEFAULT_IMPL_OP(is_cycle_counter_event),
> +		DEFAULT_IMPL_OP(event_type),
> +		DEFAULT_IMPL_OP(event_filter),
> +		DEFAULT_IMPL_OP(set_ev_filter),
> +		DEFAULT_IMPL_OP(event_attr_is_visible),
> +	};
> +
> +	/* Firmware may override implementer/product ID from PMIIDR */
> +	if (apmt_node->impl_id)
> +		cspmu->impl.pmiidr = apmt_node->impl_id;
>
> 	/* Find implementer specific attribute ops. */
> 	match = arm_cspmu_impl_match_get(cspmu->impl.pmiidr);
> @@ -450,24 +454,9 @@ static int arm_cspmu_init_impl_ops(struct arm_cspmu *cspmu)
> 		}
>
> 		mutex_unlock(&arm_cspmu_lock);
> +	}
>
> -		if (ret)
> -			return ret;
> -	} else
> -		cspmu->impl.module = THIS_MODULE;
> -
> -	/* Use default callbacks if implementer doesn't provide one. */
> -	CHECK_DEFAULT_IMPL_OPS(impl_ops, get_event_attrs);
> -	CHECK_DEFAULT_IMPL_OPS(impl_ops, get_format_attrs);
> -	CHECK_DEFAULT_IMPL_OPS(impl_ops, get_identifier);
> -	CHECK_DEFAULT_IMPL_OPS(impl_ops, get_name);
> -	CHECK_DEFAULT_IMPL_OPS(impl_ops, is_cycle_counter_event);
> -	CHECK_DEFAULT_IMPL_OPS(impl_ops, event_type);
> -	CHECK_DEFAULT_IMPL_OPS(impl_ops, event_filter);
> -	CHECK_DEFAULT_IMPL_OPS(impl_ops, event_attr_is_visible);
> -	CHECK_DEFAULT_IMPL_OPS(impl_ops, set_ev_filter);
> -
> -	return 0;
> +	return ret;
> }
>
> static struct attribute_group *
> diff --git a/drivers/perf/arm_cspmu/nvidia_cspmu.c b/drivers/perf/arm_cspmu/nvidia_cspmu.c
> index 0382b702f092..5b84b701ad62 100644
> --- a/drivers/perf/arm_cspmu/nvidia_cspmu.c
> +++ b/drivers/perf/arm_cspmu/nvidia_cspmu.c
> @@ -388,12 +388,6 @@ static int nv_cspmu_init_ops(struct arm_cspmu *cspmu)
> 	impl_ops->get_format_attrs		= nv_cspmu_get_format_attrs;
> 	impl_ops->get_name			= nv_cspmu_get_name;
>
> -	/* Set others to NULL to use default callback. */
> -	impl_ops->event_type			= NULL;
> -	impl_ops->event_attr_is_visible		= NULL;
> -	impl_ops->get_identifier		= NULL;
> -	impl_ops->is_cycle_counter_event	= NULL;
> -
> 	return 0;
> }
>
> -- 
> 2.39.2.101.g768bb238c484.dirty
>
>

