Return-Path: <devicetree+bounces-22509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 350CF807EEF
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 03:47:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9FF96B20DC8
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 02:47:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C83617E8;
	Thu,  7 Dec 2023 02:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=os.amperecomputing.com header.i=@os.amperecomputing.com header.b="G9aeA9qT"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2100.outbound.protection.outlook.com [40.107.236.100])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE4318E
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 18:47:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n6mD+RXiNFucenwo/BcefW2osf4WA0vvt/B2JyBx62Djt7HEdEaZyBY46nWbeiYLQ13SLqRcpxW3q+v6xqg8eQ4giRfF1bIu/UR0VXTD58sLlwx3GQm+B2Z46A2gtI01z9Mpxu7ChImXGjz5yOhJLa5T29n2Xey86/OOqEDE41FgeX2gBddcVfugKmYLMSC/VMOaIi0vSoX0hFVcxAi9S6M1NLRaWpUexfOZDQIK5KukI6waiPZ9zxmqi6zfcCGKtzol2ldAtg8FzzBoyyg+51zNCLvQ5pzpozJcPoqAksxDOnYd+QIYgbNz4bRXYKKR5hL0TSNYIJgl0LlAtuwi/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S5IkJlAlNbjCugA38So8RNe10WtQh9yuVcESNlvvSZU=;
 b=UyVR8jttkUML8WgafTgxHvB0l1zAm5xfXKQVM7rfUF3hDntTux145JkiIsiDiZxxRX4BMlNkd2V3sMIVquS5RrCkL+UaAQeES1G0Cq8i3YzrzPDE2Z8Y8Gu5hm4uxhCtd3jfeecAPdGstsHsVIMRkllu8i+PkO6w2eZlOhs6RoTSn8lmuJw79J5G40GaqPRNG3ZO0cZJXRD1/pal/NtihW16eQRfgt6cM7d/IvKIxU3Uc1Tjtpv8WdU3VQ79VcGCpl0NEXvHwYftcL+0fCnQ5sgdpA2IBbT1qKu4PPjNGucUpMWNgNMN0l7K7/7rPu23J74Tu2xuNBSnxnL6kfXsDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S5IkJlAlNbjCugA38So8RNe10WtQh9yuVcESNlvvSZU=;
 b=G9aeA9qTr2ED0tX6DntBi/G0ftjtb5K41mHWwapQGV924Oz5hUFzZqpM/eNDXWZDoVCdRTy13sr/a0QPQax/7H91GlI7A//ImW7jJ3OAo1nNpYEWD8JdKnps7MyhqiWs2KGj89t3LHHgpeUNb9kgLR3pSOte7TrHoqmyTvKUpB8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from DM5PR0102MB3590.prod.exchangelabs.com (2603:10b6:4:a4::25) by
 CO1PR01MB7369.prod.exchangelabs.com (2603:10b6:303:158::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7046.34; Thu, 7 Dec 2023 02:47:05 +0000
Received: from DM5PR0102MB3590.prod.exchangelabs.com
 ([fe80::49fa:8dc0:6fd1:72e6]) by DM5PR0102MB3590.prod.exchangelabs.com
 ([fe80::49fa:8dc0:6fd1:72e6%4]) with mapi id 15.20.7068.025; Thu, 7 Dec 2023
 02:47:05 +0000
Date: Wed, 6 Dec 2023 18:47:01 -0800 (PST)
From: Ilkka Koskinen <ilkka@os.amperecomputing.com>
To: Robin Murphy <robin.murphy@arm.com>
cc: will@kernel.org, mark.rutland@arm.com, 
    linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
    suzuki.poulose@arm.com, ilkka@os.amperecomputing.com, 
    bwicaksono@nvidia.com, YWan@nvidia.com, rwiley@nvidia.com
Subject: Re: [PATCH 2/5] perf/arm_cspmu: Simplify attribute groups
In-Reply-To: <f75cacb440011df35fc476cf4be37484fd044b92.1701793996.git.robin.murphy@arm.com>
Message-ID: <5ee6f058-a8eb-4b5b-4b0-3123e77a998b@os.amperecomputing.com>
References: <cover.1701793996.git.robin.murphy@arm.com> <f75cacb440011df35fc476cf4be37484fd044b92.1701793996.git.robin.murphy@arm.com>
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-ClientProxiedBy: CH0PR13CA0051.namprd13.prod.outlook.com
 (2603:10b6:610:b2::26) To DM5PR0102MB3590.prod.exchangelabs.com
 (2603:10b6:4:a4::25)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR0102MB3590:EE_|CO1PR01MB7369:EE_
X-MS-Office365-Filtering-Correlation-Id: f06ef9c4-d42f-49ec-b7eb-08dbf6cecc0a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	auqoHkzYAHhX4xTkRZR2K8DF5YyPxrrOLV4k+gsqw/+0H6ucVcSCwsQMrs70RdAVgKdVyRtkvjiRbQxLVbizMUQQjJX4vB8kgkQtRAUEbLS6nMCPkmLChy072hbrLiOMhfcv4OKf+pCExkgGpavHhw2wszM0+o+oQJLVNPEk/MtTZ9/B8mIMgf9fshcPKCaXl0kW9ZPIsdOqSVbFhE/ybEPaVHHiE8qwErHUoTY6y2pHhy0mIbhoOGK+DXLgB0IticmZuWcday/G0O7y5dPVlbf3b4ckXoV2GMNXkoyjpRpmhxG+U82aQnZWrJ1apzCNHmiwF7+iHn9PUQprM9nmMmFTXgsuboegldRMkFHMnm68XjoskFqBchm856SeYGGNT/BMLdFvXUrVaLvWr2ES2Ls/epn/ZR3WpJhQ1k/zC3GrLdDHL/KB1iuFjO0ZTwL+JaH0ZJN01KHapUPAgQ7aC9TKU0EnSXPgq7JHObZoO6Be8RIwCs8Abnaa4Akgv45Unh44ANu2c6wzORjhToQIGUAs+V6w2xyRQq2zVFPLSUi/1Wjhk3ylKSxa6UspLzn4+tQcz0qfE11AUOQgZWvWZAUUbUmzSaL33I7e7Plc6bmOrxzmasxKySm/0xbDEUNA
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR0102MB3590.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(346002)(136003)(39850400004)(366004)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(2616005)(8936002)(4326008)(52116002)(6512007)(6506007)(8676002)(83380400001)(26005)(38100700002)(478600001)(6486002)(6666004)(66556008)(66946007)(66476007)(6916009)(316002)(38350700005)(41300700001)(2906002)(86362001)(5660300002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?4bc9HvAckeU1NkfdmOO7ogr3xfDub8ANd+nl3T79rkpsmVEHx1a0MFDXGqjy?=
 =?us-ascii?Q?pbjUOF9PTSqnZq/X3q0WVA12Jb7rnspE5S9hnwjh0Rc6CQ68WoRfdKGNGLmw?=
 =?us-ascii?Q?6Ed+VFYabbYFZGrBfT/oqywlPWDhxpYZuYV6mcRtRKP3i4Thek+2rSHCQDNA?=
 =?us-ascii?Q?mwUIUN9UQI0Zdi1AumfBrQtu/mkK0SiS5kLMjM4QSPNW7WD/BJK58qqNVJ1D?=
 =?us-ascii?Q?VykN62ZjxEvRyViaHONkRsfjAtjbeJvZzE3wFAA/OCfax1UGaMMGXWHROMp4?=
 =?us-ascii?Q?Aawf7cYOeExufvGgCMfIN2tC7EC7PJPf39s2gyYvdjNvspIjMlS5JzUnCRvz?=
 =?us-ascii?Q?Dg4qA9nPqz11gMWZYbbCW3KAPwkjkRMnMNDr0y8ymTbJnPAf5RrTCUjgbYYc?=
 =?us-ascii?Q?DF98NJvVh/zUHwVDovZN0so9bqZ08zVizfZW3ntyLNHgoh1VbjyW2pQ/qiX8?=
 =?us-ascii?Q?TaQjOWptCE08NPGW2THImNufMhUydUaSjhnp7c6Do+N7FoMJbmlOEazdvAVn?=
 =?us-ascii?Q?gFwmzCMy0jTMmzBk873ylzF2wKblpqZw2B2pRUb1xU2gV0XeDtSbf8Q4dh6k?=
 =?us-ascii?Q?kjB6MpDTP9gAp5s17+Ton+pPj3QDISEXi2LpcViltYXA7r7bs3wLxBaFxb/5?=
 =?us-ascii?Q?86kII84TLuSDf4B2mwn2TUW+RzAMquvVf4gr0CEMDBAuHRvUOncrvxNPk246?=
 =?us-ascii?Q?ZhAUpDM2Erne5ennlkCn13XyEMc0wa0K7uBleSRSbcyjgo+yfScdYIieaG23?=
 =?us-ascii?Q?/7zhJC6KwsioK7v0VGSFe3i4EJlQ1krdaqPRn+iuAfCzflyWCqnhImy3JKV6?=
 =?us-ascii?Q?RXtKjfElJ5p44IF3v/Wbt5aeb2PGhu+CUkQk+OCvjJHw9nnfM40MEPQdeVRo?=
 =?us-ascii?Q?aHm0zzuIccrB+NLcdhNz0FuwzI7huPdrPLIVsalkfsn2IT8Jod+tJQM69cmh?=
 =?us-ascii?Q?CHlzM3389u8AzrOxSKXpCfYkq35tsp9F1c+Y6ZxE4tUkxJxfiXPX2C4U+uIG?=
 =?us-ascii?Q?Y3pUP1833ezYd+LOSaoMHZ6QzEpdvpwRkgsAgLzxqeae57ZIKkAtPOt1JSHc?=
 =?us-ascii?Q?6fARMlQqMUpOpoUJlfGB2PfruLIiapecaj3IZWIV+0Owv32hStpIlMJkSVIa?=
 =?us-ascii?Q?bpxusvCjzv309dcgu7uQHUXHlKIhScEQb9sGf+Y3EG7BCVqEy3ZR/m3pNiEj?=
 =?us-ascii?Q?/gGRQeUpd9tPae/kpguFI5xhuT6eCv6xSVuCLdCbzTGsbP0afAaQSnrgfyPr?=
 =?us-ascii?Q?rWWlP5Ne0H/EkMlLZdYb3PcKkDCqdEa54yjoPP+JDwLtwr8T2JdQlZp0sY9y?=
 =?us-ascii?Q?kuE3Bo6IrnTDCWNiY4Zn/ZDH0sBcJlicB0SQfTdbhifzY3kEfUo4wmUI2qmw?=
 =?us-ascii?Q?zOEO8AXE3CU33Le9Ad+O5plB3W9flaNzH26W9/qk03m5g39dIAWoRl7jFEFm?=
 =?us-ascii?Q?a1lIyNxOUlLNODV7XLIR3gg1jVojDsSllU2g/oMrMVB5wSAhINVb81kWsA7Q?=
 =?us-ascii?Q?WdU+P3dp5aEhCRI5i132UnQj1DbKHYpvMsY7tvMPeNxpjiznP2nI/QGjIm+I?=
 =?us-ascii?Q?kZC2hQw5e5PNRGNp2NEgUvKS776NjJwNqlPGIgfzTPxizDKJOMN/NlW2ZRg1?=
 =?us-ascii?Q?hDe/T+tJJj4y40tA86zE1LY=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f06ef9c4-d42f-49ec-b7eb-08dbf6cecc0a
X-MS-Exchange-CrossTenant-AuthSource: DM5PR0102MB3590.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2023 02:47:05.1781
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MNvTVMxyGtUVPXVxc9QfwKgPHAHFgndfxtDxj3P0KPaDTxpISFC4UI7cvjhVvnRI0hbkw+HSgeaSrptOU97TcfEUpa+8edfVuZa6ncJ9wbEi1CFLcqazXjRLOAgOkkdh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR01MB7369


On Tue, 5 Dec 2023, Robin Murphy wrote:
> The attribute group array itself is always the same, so there's no
> need to allocate it separately. Storing it directly in our instance
> data saves memory and gives us one less point of failure.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Reviewed-by: Ilkka Koskinen <ilkka@os.amperecomputing.com>

Cheers, Ilkka


> ---
> drivers/perf/arm_cspmu/arm_cspmu.c | 26 +++++++++-----------------
> drivers/perf/arm_cspmu/arm_cspmu.h |  1 +
> 2 files changed, 10 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/perf/arm_cspmu/arm_cspmu.c b/drivers/perf/arm_cspmu/arm_cspmu.c
> index a3347b1287e6..f7aa2ac5fd88 100644
> --- a/drivers/perf/arm_cspmu/arm_cspmu.c
> +++ b/drivers/perf/arm_cspmu/arm_cspmu.c
> @@ -501,23 +501,16 @@ arm_cspmu_alloc_format_attr_group(struct arm_cspmu *cspmu)
> 	return format_group;
> }
>
> -static struct attribute_group **
> -arm_cspmu_alloc_attr_group(struct arm_cspmu *cspmu)
> +static int arm_cspmu_alloc_attr_groups(struct arm_cspmu *cspmu)
> {
> -	struct attribute_group **attr_groups = NULL;
> -	struct device *dev = cspmu->dev;
> +	const struct attribute_group **attr_groups = cspmu->attr_groups;
> 	const struct arm_cspmu_impl_ops *impl_ops = &cspmu->impl.ops;
>
> 	cspmu->identifier = impl_ops->get_identifier(cspmu);
> 	cspmu->name = impl_ops->get_name(cspmu);
>
> 	if (!cspmu->identifier || !cspmu->name)
> -		return NULL;
> -
> -	attr_groups = devm_kcalloc(dev, 5, sizeof(struct attribute_group *),
> -				   GFP_KERNEL);
> -	if (!attr_groups)
> -		return NULL;
> +		return -ENOMEM;
>
> 	attr_groups[0] = arm_cspmu_alloc_event_attr_group(cspmu);
> 	attr_groups[1] = arm_cspmu_alloc_format_attr_group(cspmu);
> @@ -525,9 +518,9 @@ arm_cspmu_alloc_attr_group(struct arm_cspmu *cspmu)
> 	attr_groups[3] = &arm_cspmu_cpumask_attr_group;
>
> 	if (!attr_groups[0] || !attr_groups[1])
> -		return NULL;
> +		return -ENOMEM;
>
> -	return attr_groups;
> +	return 0;
> }
>
> static inline void arm_cspmu_reset_counters(struct arm_cspmu *cspmu)
> @@ -1166,11 +1159,10 @@ static int arm_cspmu_get_cpus(struct arm_cspmu *cspmu)
> static int arm_cspmu_register_pmu(struct arm_cspmu *cspmu)
> {
> 	int ret, capabilities;
> -	struct attribute_group **attr_groups;
>
> -	attr_groups = arm_cspmu_alloc_attr_group(cspmu);
> -	if (!attr_groups)
> -		return -ENOMEM;
> +	ret = arm_cspmu_alloc_attr_groups(cspmu);
> +	if (ret)
> +		return ret;
>
> 	ret = cpuhp_state_add_instance(arm_cspmu_cpuhp_state,
> 				       &cspmu->cpuhp_node);
> @@ -1192,7 +1184,7 @@ static int arm_cspmu_register_pmu(struct arm_cspmu *cspmu)
> 		.start		= arm_cspmu_start,
> 		.stop		= arm_cspmu_stop,
> 		.read		= arm_cspmu_read,
> -		.attr_groups	= (const struct attribute_group **)attr_groups,
> +		.attr_groups	= cspmu->attr_groups,
> 		.capabilities	= capabilities,
> 	};
>
> diff --git a/drivers/perf/arm_cspmu/arm_cspmu.h b/drivers/perf/arm_cspmu/arm_cspmu.h
> index 2fe723555a6b..c9163acfe810 100644
> --- a/drivers/perf/arm_cspmu/arm_cspmu.h
> +++ b/drivers/perf/arm_cspmu/arm_cspmu.h
> @@ -157,6 +157,7 @@ struct arm_cspmu {
> 	int cycle_counter_logical_idx;
>
> 	struct arm_cspmu_hw_events hw_events;
> +	const struct attribute_group *attr_groups[5];
>
> 	struct arm_cspmu_impl impl;
> };
> -- 
> 2.39.2.101.g768bb238c484.dirty
>
>

