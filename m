Return-Path: <devicetree+bounces-22497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F59807C81
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 00:44:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A6B202824E9
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 23:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32C39328A2;
	Wed,  6 Dec 2023 23:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=os.amperecomputing.com header.i=@os.amperecomputing.com header.b="bKdJsy38"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2104.outbound.protection.outlook.com [40.107.92.104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71839A4
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 15:44:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nhU303G8QqFA23uvfnXtIteK1D2IYvexp7hAil5sONJ4IaS89pRMHsf14k/J4ISjfMCEi9Fd7sitLW9UNeXV5B7IWXkVVUMi45IwC88Addacxp9dsr3jo1ZLrKmVlI9mtnrMnuiOinaqd66okMCYMtqsgD03RZZZmyF1z3nRTWYMXZPjVnHiXkUK9+Zvy0ODgM7EcFw+6kKjHmEmrhb94NPJpIzaqPVe0EMq0bPKHkkKU1+9njjoPZIJnFEmHHj/7piVToPCt9S4KXOPdVXTtslNT6HYHJ9gd0VQjYTapwW2xNyzvCDDt8vGdsqysigZDZuSh7hu4GrsjjzQI6Mirg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8hqsJqwFBg4QZSSJ58wASQypzvTxOP+N2o/MyAVCsA0=;
 b=JosylgJWVCVg67cMkprLEttrMCS2y/HX8pqGCIP+1dIFF6PM24XOMyRBhmAdb/2e1S2b30Hs1XzhevAWD1SX5cly7OaBTJyS0Vym5LcRLb0gj3ErsDR1mZ/64pgUepFk2b2TvOLGU2RY80ivf4OfHXZISvwq6HbKCmWrWSqvAKwnSLoICv+Ek3r3fhYrm1oETc2gpBSLSztZVxZueBtPwTMoHhBAf3JDwtMhU1yMsnDiSdCjPgbPdAKxJJoQIxKMo/XD66NhkwKKkxsgPAATtq1fvbHF73j23s7cawDSdMh/0I3Z+euMvpaefmtt8YWqYcr+NBMnWudZUh+ZAeWXwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8hqsJqwFBg4QZSSJ58wASQypzvTxOP+N2o/MyAVCsA0=;
 b=bKdJsy387TyM4/sutffGz5iW1yggHu0JtjDOvtxAyB5mwMbqnGXAvP0yMhnpNvvKJK8LgDb5wS3h7W0Ax41667mpeZV66aOqwlLxgxF9aUKJkB5DXyvSlzGRno53wVhPAVU3qBQ8IdMEbD3PUv52Pm7Bsr3yhO7ELlVUWtCsX0U=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from DM5PR0102MB3590.prod.exchangelabs.com (2603:10b6:4:a4::25) by
 SJ2PR01MB8298.prod.exchangelabs.com (2603:10b6:a03:540::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7068.25; Wed, 6 Dec 2023 23:44:03 +0000
Received: from DM5PR0102MB3590.prod.exchangelabs.com
 ([fe80::49fa:8dc0:6fd1:72e6]) by DM5PR0102MB3590.prod.exchangelabs.com
 ([fe80::49fa:8dc0:6fd1:72e6%4]) with mapi id 15.20.7068.025; Wed, 6 Dec 2023
 23:44:03 +0000
Date: Wed, 6 Dec 2023 15:43:39 -0800 (PST)
From: Ilkka Koskinen <ilkka@os.amperecomputing.com>
To: Robin Murphy <robin.murphy@arm.com>
cc: will@kernel.org, mark.rutland@arm.com, 
    linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
    suzuki.poulose@arm.com, ilkka@os.amperecomputing.com, 
    bwicaksono@nvidia.com, YWan@nvidia.com, rwiley@nvidia.com
Subject: Re: [PATCH 5/5] perf/arm_cspmu: Add devicetree support
In-Reply-To: <7000cdf3a22afe684793863e81a1d96bbddb5db1.1701793996.git.robin.murphy@arm.com>
Message-ID: <b7905a93-e4c-b6a6-d584-389131f4276@os.amperecomputing.com>
References: <cover.1701793996.git.robin.murphy@arm.com> <7000cdf3a22afe684793863e81a1d96bbddb5db1.1701793996.git.robin.murphy@arm.com>
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-ClientProxiedBy: CH0PR03CA0368.namprd03.prod.outlook.com
 (2603:10b6:610:119::17) To DM5PR0102MB3590.prod.exchangelabs.com
 (2603:10b6:4:a4::25)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR0102MB3590:EE_|SJ2PR01MB8298:EE_
X-MS-Office365-Filtering-Correlation-Id: e8793d06-1f83-4fff-35f8-08dbf6b539fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	8hG88xHEl4J0KNwA2AuXRYWnJVNKgTlWE1Qr2EfuIRy4VKn+LpTqtXA0DyCbQqWCXrBa8BXGVbMmmRWsFW0jz7woCCb7h0umn3MvDtQckzHkxXjcN3zjxeVEFyr+VXa4R5gE0KlndZHhlQ1SarX7vD2RejtDAHrPcCLVfo/qGUHZ22Wsoc/Pbjlk8d4TbM4s7UdZWq3pvAhVR+1SbjESjIC73djrWhp0hzB449GMvGvlBnOL5nqGWatxe6CZj7cbHVhcNGZuRhfUWpzxzuGn/1G9AQH74Blyck/eIA3TMT2hZOeKH2PmL/WKNRMk3TKu/RWrslzCFG+r87bNH5HH0ZNJ8vNDpeubX2T5kgqmaHjUAYgw80rUl3CQfvnIpOluJRSZ/lw7P65ay5r+2at3iH65L4lZ/VpGMUA+cxNUMl4EqMhR8BCbTAkm+8PxRGGx0wk269fzKib4xAtLj39j1LZc1yv9c9eY2ny9gOYHIkI9SjjYlXNUzhALliHwslcoBMckVJVxCXkCzd70ri1T3URyzBOTJjxSWp2h9Pqw7mNQ1KZSz1E9S3YwsARqicDq2pJ9FDTLZoy2T9Bl/gXzdWX7zBrHR8C41nWrWKWWUq6i8obVgV+4CshQg26DPJjr
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR0102MB3590.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(366004)(39850400004)(396003)(376002)(346002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(6512007)(2616005)(6506007)(83380400001)(26005)(86362001)(38350700005)(41300700001)(8936002)(2906002)(8676002)(4326008)(5660300002)(66476007)(66556008)(6916009)(316002)(52116002)(6666004)(6486002)(478600001)(66946007)(38100700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?4LTn8q9S2AYMDnVnmNZDrQVAXZ/Ckd8YPgSnLOfXge4XwFsgYZ5Yp2rNO7A6?=
 =?us-ascii?Q?jn1ke3OG7T/fpESwsBhm6b7o2XCd6kbjzyKo283C+LLaXZCunX8H9v7JhSEN?=
 =?us-ascii?Q?l/pscd7EWKtzYiidIF+4eiykUZEBWNw3x6j6GFjhX+xGGYNsZckrinuh4yZo?=
 =?us-ascii?Q?9l2stDKYUxz1yTyjx3WRS3YQ4lOmmHOhx29BIBv1AOXvxDE1e2wV6Mjf5MVP?=
 =?us-ascii?Q?r1Z8q2UqM78F6iglV7UT4l+MoI6s4BNSopVgHvng2Z0w3n30MCxuL7RsFKur?=
 =?us-ascii?Q?FPBMCtGinTKtA08+1vedPNBrVU2rbFmD+dCCbGAvAdPxo7XDFgu0IDO1oyDV?=
 =?us-ascii?Q?t7TPkpMDGDJuj7ZDMns7Psb9AP5oc0bZtEnGpMD76Tu+TOy5kCCSAAAcnLy2?=
 =?us-ascii?Q?jK+QlvPw2k+17vUCjZ8I7RMT0RGowl/FNICHozKIoiy4ozIaUr5HR3dsQCS9?=
 =?us-ascii?Q?m5mEqCfWjLjs6pF5eNkHpVoJ4GBFRM0Z/pBFPzDzrVUWMY33LQHmzch27M/4?=
 =?us-ascii?Q?QYWlw5Ct6i+tzBHsiLh4Z7OVWYrdCczkzgL1jcWBD1ipiRyeCu6oiDWp94V2?=
 =?us-ascii?Q?y1Q74gzifzKqZIXOFpRWOd02qcZxJUs2RJnqSKna2AEBKtRmtmqfc/Z65nr2?=
 =?us-ascii?Q?wEpL4n0Sbb26oMiZ/aeHa5i/43UODYNpldrMgyade+N0hli+5jV8YvjF54hH?=
 =?us-ascii?Q?/kx89Z9alQM5INA3watBD9EahzfS5lcb+jnZHDtfUgkZtc/1+GjXaMiD6wJM?=
 =?us-ascii?Q?SnBiIq1d4M1tvZqlE8JVAxFdf+cX8ZYQg2zSJSwf7oFpgeORvkAtO1xGeBPG?=
 =?us-ascii?Q?SqsJlcNBJSerjg1vQabmRc8eVGhzrQPZFIIlrQv8+TxUFRzMaSLD/Pdgr5tr?=
 =?us-ascii?Q?AGprH1XuOpW54/z1qXCS858l38CdXmozsafDH/pZuGrWTCnjGGezFJwGu/Wi?=
 =?us-ascii?Q?axipwikQ+WXnuy3Cs/XkdAEFzRpoKUSCoZUaYkoEQaV+/R+Um2H8HK7P3eTc?=
 =?us-ascii?Q?pQLnfOXP0b6PCKna7IR/CbaHcRxlc/Ydv0HcsvoHtDRPZtj/QdAFfYYtXykk?=
 =?us-ascii?Q?tIEsf695O2HxSRuiXLy9NEyohJ60hJFe8Zy9S35Lw1gHJt5TB5xxdM/e86nf?=
 =?us-ascii?Q?8qKH4iM027LgEJH+rufcBL+E+SubaDPSenUqWBJysAqz2THZaUfca9mXAwNF?=
 =?us-ascii?Q?TyPyi2dlBVwnOYTnxPoukzgo878j6AcMX/YmGmhTBXiyx3Hz7MaIGjWz0qBC?=
 =?us-ascii?Q?RvNAD2C38Do/Mo+c4e9SYZz5kza4WqvURluanRUY4/xhWmiP6X+9DivHjNFp?=
 =?us-ascii?Q?2/HmK7uZ3xiffD937tWNh0FdNpRw8tpjXTjf5z/chtmVHe/wDqJ8Ok8g3BPC?=
 =?us-ascii?Q?4bSgT0TN0+o+L5eHwwPIqM721qoWDirB2vbEpeh3VUA5aGTfAbRCRNvizv2M?=
 =?us-ascii?Q?RlUI8vj1p1ki93I/L2O4LnJp25NbnHsOqfAtmU/vbetJtPukPmZ5dc/69JL2?=
 =?us-ascii?Q?0O7Z92GgDDOtyFVTwOrerNL0mUa3o/xbcqpG1uB2MmqrB2D4WKVO9NI4KnlS?=
 =?us-ascii?Q?ImF4OK6WGPiIvP/ainsynJZN43FsHcEHPjCU6bisTSAql8+NZfRojyveaB43?=
 =?us-ascii?Q?DAOHeHPSuhOKGfMKkXPEhJQ=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8793d06-1f83-4fff-35f8-08dbf6b539fb
X-MS-Exchange-CrossTenant-AuthSource: DM5PR0102MB3590.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2023 23:44:02.9374
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N9sqz/LtZkSpVUEyyVJkb4PtaSZzW0ugC/sr/dQeDKX8QRIldqMhHXl21h9fjMSlyrXALbm7dBt4i8AAzlo0HWkRZRrNUZRNN1x3q6bJprID4oBVC9uDs1diq1Lsnczl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR01MB8298


Hi Robin,

On Tue, 5 Dec 2023, Robin Murphy wrote:
> Hook up devicetree probing support. For now let's hope that people
> implement PMIIDR properly and we don't need an override mechanism.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> drivers/perf/arm_cspmu/arm_cspmu.c | 71 +++++++++++++++++++++++-------
> 1 file changed, 56 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/perf/arm_cspmu/arm_cspmu.c b/drivers/perf/arm_cspmu/arm_cspmu.c
> index b64de4d800c7..80b5fc417ee3 100644
> --- a/drivers/perf/arm_cspmu/arm_cspmu.c
> +++ b/drivers/perf/arm_cspmu/arm_cspmu.c
> @@ -27,6 +27,7 @@
> #include <linux/io-64-nonatomic-lo-hi.h>
> #include <linux/module.h>
> #include <linux/mutex.h>
> +#include <linux/of.h>
> #include <linux/perf_event.h>
> #include <linux/platform_device.h>
>
> @@ -309,6 +310,10 @@ static const char *arm_cspmu_get_name(const struct arm_cspmu *cspmu)
> 	static atomic_t pmu_idx[ACPI_APMT_NODE_TYPE_COUNT] = { 0 };
>
> 	dev = cspmu->dev;
> +	if (!has_acpi_companion(dev))

Am I missing something since this doesn't work on top of v6.7-rc4?
The problem I see is that has_acpi_companion() calls 
is_acpi_device_node(), which compares whether

 	fwnode->ops == &acpi_device_fwnode_ops;

However, the acpi/apmt code allocates fwnode by calling
acpi_alloc_fwnode_static(), which assigns &acpi_static_fwnode_ops
to ops.

I wonder though, if is_acpi_device_node() should check the static variant 
too? :/

Cheers, Ilkka

> +		return devm_kasprintf(dev, GFP_KERNEL, PMUNAME "_%u",
> +				      atomic_fetch_inc(&pmu_idx[0]));
> +
> 	apmt_node = arm_cspmu_apmt_node(dev);
> 	pmu_type = apmt_node->type;
>
> @@ -406,7 +411,6 @@ static struct arm_cspmu_impl_match *arm_cspmu_impl_match_get(u32 pmiidr)
> static int arm_cspmu_init_impl_ops(struct arm_cspmu *cspmu)
> {
> 	int ret = 0;
> -	struct acpi_apmt_node *apmt_node = arm_cspmu_apmt_node(cspmu->dev);
> 	struct arm_cspmu_impl_match *match;
>
> 	/* Start with a default PMU implementation */
> @@ -425,8 +429,12 @@ static int arm_cspmu_init_impl_ops(struct arm_cspmu *cspmu)
> 	};
>
> 	/* Firmware may override implementer/product ID from PMIIDR */
> -	if (apmt_node->impl_id)
> -		cspmu->impl.pmiidr = apmt_node->impl_id;
> +	if (has_acpi_companion(cspmu->dev)) {
> +		struct acpi_apmt_node *apmt_node = arm_cspmu_apmt_node(cspmu->dev);
> +
> +		if (apmt_node->impl_id)
> +			cspmu->impl.pmiidr = apmt_node->impl_id;
> +	}
>
> 	/* Find implementer specific attribute ops. */
> 	match = arm_cspmu_impl_match_get(cspmu->impl.pmiidr);
> @@ -928,7 +936,6 @@ static void arm_cspmu_read(struct perf_event *event)
>
> static struct arm_cspmu *arm_cspmu_alloc(struct platform_device *pdev)
> {
> -	struct acpi_apmt_node *apmt_node;
> 	struct arm_cspmu *cspmu;
> 	struct device *dev = &pdev->dev;
>
> @@ -939,8 +946,13 @@ static struct arm_cspmu *arm_cspmu_alloc(struct platform_device *pdev)
> 	cspmu->dev = dev;
> 	platform_set_drvdata(pdev, cspmu);
>
> -	apmt_node = arm_cspmu_apmt_node(dev);
> -	cspmu->has_atomic_dword = apmt_node->flags & ACPI_APMT_FLAGS_ATOMIC;
> +	if (has_acpi_companion(dev)) {
> +		struct acpi_apmt_node *apmt_node = arm_cspmu_apmt_node(dev);
> +
> +		cspmu->has_atomic_dword = apmt_node->flags & ACPI_APMT_FLAGS_ATOMIC;
> +	} else {
> +		cspmu->has_atomic_dword = device_property_read_bool(dev, "arm,64-bit-atomic");
> +	}
>
> 	return cspmu;
> }
> @@ -1133,11 +1145,6 @@ static int arm_cspmu_acpi_get_cpus(struct arm_cspmu *cspmu)
> 		}
> 	}
>
> -	if (cpumask_empty(&cspmu->associated_cpus)) {
> -		dev_dbg(cspmu->dev, "No cpu associated with the PMU\n");
> -		return -ENODEV;
> -	}
> -
> 	return 0;
> }
> #else
> @@ -1147,9 +1154,36 @@ static int arm_cspmu_acpi_get_cpus(struct arm_cspmu *cspmu)
> }
> #endif
>
> +static int arm_cspmu_of_get_cpus(struct arm_cspmu *cspmu)
> +{
> +	struct of_phandle_iterator it;
> +	int ret, cpu;
> +
> +	of_for_each_phandle(&it, ret, cspmu->dev->of_node, "cpus", NULL, 0) {
> +		cpu = of_cpu_node_to_id(it.node);
> +		if (cpu < 0)
> +			continue;
> +		cpumask_set_cpu(cpu, &cspmu->associated_cpus);
> +	}
> +	return ret;
> +}
> +
> static int arm_cspmu_get_cpus(struct arm_cspmu *cspmu)
> {
> -	return arm_cspmu_acpi_get_cpus(cspmu);
> +	int ret = 0;
> +
> +	if (has_acpi_companion(cspmu->dev))
> +		ret = arm_cspmu_acpi_get_cpus(cspmu);
> +	else if (of_property_present(cspmu->dev->of_node, "cpus"))
> +		ret = arm_cspmu_of_get_cpus(cspmu);
> +	else
> +		cpumask_copy(&cspmu->associated_cpus, cpu_possible_mask);
> +
> +	if (!ret && cpumask_empty(&cspmu->associated_cpus)) {
> +		dev_dbg(cspmu->dev, "No cpu associated with the PMU\n");
> +		ret = -ENODEV;
> +	}
> +	return ret;
> }
>
> static int arm_cspmu_register_pmu(struct arm_cspmu *cspmu)
> @@ -1246,11 +1280,18 @@ static const struct platform_device_id arm_cspmu_id[] = {
> };
> MODULE_DEVICE_TABLE(platform, arm_cspmu_id);
>
> +static const struct of_device_id arm_cspmu_of_match[] = {
> +	{ .compatible = "arm,coresight-pmu" },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, arm_cspmu_of_match);
> +
> static struct platform_driver arm_cspmu_driver = {
> 	.driver = {
> -			.name = DRVNAME,
> -			.suppress_bind_attrs = true,
> -		},
> +		.name = DRVNAME,
> +		.of_match_table = arm_cspmu_of_match,
> +		.suppress_bind_attrs = true,
> +	},
> 	.probe = arm_cspmu_device_probe,
> 	.remove = arm_cspmu_device_remove,
> 	.id_table = arm_cspmu_id,
> -- 
> 2.39.2.101.g768bb238c484.dirty
>
>

