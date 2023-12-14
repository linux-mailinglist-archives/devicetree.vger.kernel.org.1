Return-Path: <devicetree+bounces-25586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A77813C86
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 22:23:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BDC5D1C20DC2
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 21:23:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD1766ABB8;
	Thu, 14 Dec 2023 21:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=os.amperecomputing.com header.i=@os.amperecomputing.com header.b="tvHRWrEr"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2113.outbound.protection.outlook.com [40.107.95.113])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4143261FD9
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 21:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=os.amperecomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=os.amperecomputing.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eLSdclBDhQaupe/ICZpNGvvALAPRRQX68gDl9N2VKPlB0hAc4qhrhAAbJhA9yG5QH+CTBOHgjnL0bYKCmT3mrhOfAHY3NDeaYo6aQZC+7lMIhidOgP2+gDwDwoPxmTWsW6M4FVMA1dFZ+/se/S3ASlSV0uikPEqnujoe9K4kWpEb20jVvA34bK2L1xF828QEhTPrUC0Ghm0o0rmzg7E4g4EeDLfiCc2CTbYQEtBBMmMMnHhUolvmJoK5vVs7HPPkj5b3mfVui1fKKDzn/RnsKDQ1AWKHz2TS6XfVJXsuSwQPTOfs4/Hb/Rv8fvpTS38cOKecji+gUUxlf7NxIqYPCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/LGAZbB7DBXho57yHCuIql12KiPqNH88c3WsZXklKJ0=;
 b=IeM1IqCXiYC42bS4YcpUBlCkIjsyxLFO+g4TS7lONPwT8fR4Hc0WrbxWhvI/5KA7i7DX26UQvRYDCsTL7gf4bIVPx0CBfNmMFtxXtaPkLxHOiyQqYDIArICOxi4g89hxrmHHBccWT16L/JnaFLCMWpUgNcGyGMnhyqF7ngHDSHjX634M2yMi5SIpWkS6Q1e93RMHyNgIkGArLubtELuOOAVcid6mgj9JvjU4zkeeFSGf/jshy3Qh94rQ4V/DQNqlReUG6EM3SaY2vFi+N/K0ZiYTs1zZlEriZoYtwatSZR86gczb8h1O+M2nVuTKAq1pinv7Ianu5+zI0I2QO1aSgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/LGAZbB7DBXho57yHCuIql12KiPqNH88c3WsZXklKJ0=;
 b=tvHRWrErBAxqudF9+DkOJazrKN7IhPhMKeGbzDHFHDRGjgc64+jWPWk3HLfnqU5xFA9r60WwcDrTfipecQ7cIyp4wMhoJJHs8c2SbvKnHDygUae0yp8iL3hvpUmCbYiuJ4aFdei+uFyI9dikapyxx4Dp3v9azwUJl9F2/T4Yf1Y=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from DM5PR0102MB3590.prod.exchangelabs.com (2603:10b6:4:a4::25) by
 MW6PR01MB8628.prod.exchangelabs.com (2603:10b6:303:248::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7091.28; Thu, 14 Dec 2023 21:22:52 +0000
Received: from DM5PR0102MB3590.prod.exchangelabs.com
 ([fe80::49fa:8dc0:6fd1:72e6]) by DM5PR0102MB3590.prod.exchangelabs.com
 ([fe80::49fa:8dc0:6fd1:72e6%4]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 21:22:52 +0000
Date: Thu, 14 Dec 2023 13:22:39 -0800 (PST)
From: Ilkka Koskinen <ilkka@os.amperecomputing.com>
To: Robin Murphy <robin.murphy@arm.com>
cc: will@kernel.org, mark.rutland@arm.com, 
    linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
    suzuki.poulose@arm.com, ilkka@os.amperecomputing.com, 
    bwicaksono@nvidia.com, YWan@nvidia.com, rwiley@nvidia.com
Subject: Re: [PATCH v2 5/5] perf/arm_cspmu: Add devicetree support
In-Reply-To: <6858523689a214543224495fee22f9e31be2f767.1702571292.git.robin.murphy@arm.com>
Message-ID: <9ab69cc-3354-e592-9b2d-a07cb1e15787@os.amperecomputing.com>
References: <cover.1702571292.git.robin.murphy@arm.com> <6858523689a214543224495fee22f9e31be2f767.1702571292.git.robin.murphy@arm.com>
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-ClientProxiedBy: CH0PR13CA0044.namprd13.prod.outlook.com
 (2603:10b6:610:b2::19) To DM5PR0102MB3590.prod.exchangelabs.com
 (2603:10b6:4:a4::25)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR0102MB3590:EE_|MW6PR01MB8628:EE_
X-MS-Office365-Filtering-Correlation-Id: 61f5462f-56ee-4934-4d8f-08dbfcead41c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	w1C6p8pRor3/pnZZ2DSC9cVwNMjosUmp+pmHmaPFmMcZ6CIwCm3JkVWNYnWqzR9PI49ujh5BkJoyGoUYngrfc5aZ1u1sw4zkmuv5zE7V2NJtJfmFIIu3JlBX5l/1CYsfTE81OGQWag8MGBx9m5YV2WRe0Y+sQDDd+/0r9dT0YN3oU8Os0V9DECK6OA20xZFWfdNBPC5aRy5/GzVE8s1kE6PIia3jE3O4CjTbeJZTPLJ+8SDBWMAgz10ipZGtrvYYVmltuuSAmLRhs46JdY4AZYXIBfG/jSlm/I254hDGbOMBUsaxJ944ffGoJnnO9XO1o67ErBGtP0u2nsd9N80gRd59tcgy676pIF4teLggo1FJf0dcGO99MVYjtXjdcyJcXjvjU0heebo59jlLzQBTps2J5sr1kvkxQdZMkIq4IO2sDcVqlmF+GVf/moPlDsIQASH2KxqOJAfmqNDbRiIlYVry4NxZ2Xx/vCQ0HqJQKsT+J4Q9dRUZWZymhXII6j0Uz8oLQKTSsU4pe0gkM6OGyOlH5nJvfk9GGFY8R6l1UzPnSPXqhF3PRzqBN7NUDG3icNyrVmjqLYXhjjqqyzy39vLd+4Kj8K32XqExP9O5jjzJtbjA9DFTuAaw1dJjVcAc
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR0102MB3590.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(396003)(376002)(366004)(39850400004)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(6512007)(6506007)(6666004)(8936002)(52116002)(8676002)(4326008)(38100700002)(86362001)(5660300002)(2616005)(26005)(316002)(478600001)(66946007)(66556008)(66476007)(41300700001)(6916009)(38350700005)(83380400001)(6486002)(2906002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?mp1WueHSj5LN9EDrqslFsxbbPbO1ElbZz8Bkgf8Tg1ddT6z/Z/gjXMAmmuoD?=
 =?us-ascii?Q?AKzlibZ24IcPWgYJGTCo1ZRjaqk3liL13zr8IiSWObuJ4gB+Bxn+sQkF0tCj?=
 =?us-ascii?Q?ta9y8oN/yoTpiOdY26Ps19RDx0jbVfmjTEH9sKtK2hShBS5WQLoBEeMGbiE0?=
 =?us-ascii?Q?1HmDJXq7xCx7dCXJv9ftzqEDZ+FlqXUXZj+Qc807LwQLONlVz6Z9WG7ZyJYK?=
 =?us-ascii?Q?54pbwo5dCwIgRIQd3NAPa9r63C/V8ROso7KLDN/ijZ9PG4dupOGc6KPDTHMx?=
 =?us-ascii?Q?urM6THssnLE0/JPiSjfAbH0Sgr+Pl5gKMDoYY5P6+k2iTrjUDrez9JqcuudR?=
 =?us-ascii?Q?4PizbBoZgwFsSoUu7Oxm3zUrvaOphplaMc1WC3ieNZ/e+rGJUOuMFEnc38Wb?=
 =?us-ascii?Q?O767vylqaV5B22U7seKBusSRL4IK6JQWYpZXJXZg5JvjuqHft0rBr+WUm3Vf?=
 =?us-ascii?Q?O1VIZJ46HiMeTgSS8H+3oyO0/ADCpYX46ZrQEhtPzpXsZYeDENmK3Go9lsF4?=
 =?us-ascii?Q?/IBiCdQF6Z7xNaFMMQSlw+dzAbLBAdOg7jqa4Cx7oiR10j6KjxuZfo9YNBGF?=
 =?us-ascii?Q?9mCnvoviomhiAAbk+bgg81s7f4G6umAUd8jX29D2fBOW6AjLpd5NtGxGhys3?=
 =?us-ascii?Q?eCgtkpjJPXsofd1vEeQznmgDpFUewG9eKMO9cFlsU/OY2Irn7q9Mk5HF6VPx?=
 =?us-ascii?Q?9x9Bixh1+efFenAkmIjHQXpiZly6ZTtI+xgEZaOYgtVqOPNM5mmXbhICY4jc?=
 =?us-ascii?Q?z6MJ8NIzWls1drUNZJFg92NIX2b5ehrfzY7YOXWXLGHEqhycHwnN5NatTAO0?=
 =?us-ascii?Q?sucsv/3HFmbxPa/HArvMkgjkE4cfLwV7HdAXnAbBROqN1jmCu11fkr5WP/fI?=
 =?us-ascii?Q?DYbaftSWgnMp/oHs8ECy+JWrZc5fQc7zQU8kQa0GQdb//EBadMlED7jEE6qk?=
 =?us-ascii?Q?ZuhaCz2+Zb10lOjhsREd2qRhqeX3Rnbxf/TP5nPRkuXDSJ/QTafx0zsHfQLc?=
 =?us-ascii?Q?S/k0/Ixyw1Duh24GVK/xHdVExtjeBK+WqeM4jzUKb7xiApOd4i5g5SyghS29?=
 =?us-ascii?Q?SCzcFvfRqOpeR72dVqMHlutFga7gncnrAJtevYS2HQQN7ncehzCNyzdS1cEw?=
 =?us-ascii?Q?91Q0yoqJUzCoFa/aNKWPuuHuVDyTFMk9fvjNhzyUF+opFp1uUHT7qDSCcp0h?=
 =?us-ascii?Q?A+QnviJCB4cynwmfS42ydfD2ORk+obQDLH8tSyVh0kOuPzLMXONImRUj3rb+?=
 =?us-ascii?Q?AFax609TXVzayf6AscQV7cnCU4cpLW/bwEzERcqtvXLoy31u/gSzZuELn2os?=
 =?us-ascii?Q?Qk0g8/thW8q+W0Yg/qkfUm15K+9hrGqLpUm6K7aFjFpfyHtDlK0ueDOOfExt?=
 =?us-ascii?Q?JEgrlEq0gjlK5SLSHixtbaU8joR6CSn8eHwmVsMeb5drJ4aWSFnOaXNOQj+E?=
 =?us-ascii?Q?a4QEZF79LWxG+PBW5a2WVMMRH9RNMrYoe/Zj+/BpM7otAB+1OFTaHNIVXisf?=
 =?us-ascii?Q?jwkBmWeFYIihDx2X6IN4XQkVoEXcUHj78EsszzrDSrnrLCD7yRPvw0pqxAvl?=
 =?us-ascii?Q?lhSaym7ZNQiFca+v90IHvUzTMEI0XERmTOJBBcXhLMAIN5W6lMA1QFZdJo+q?=
 =?us-ascii?Q?SgTiA1WzMpNSm3OlJzEXzPc=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61f5462f-56ee-4934-4d8f-08dbfcead41c
X-MS-Exchange-CrossTenant-AuthSource: DM5PR0102MB3590.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 21:22:51.8325
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P+OT8VHBjwB/b3Jafq32g5UZLtvWBRT5Ea3ICuWN2yh6VNpM/R/bIjygqE0VTbLzpJa6kybPNq95b6YOU6fdRdcY1LTQiTJsfDNlJ/DKh9VAOpLn1uinCni5TO0FRR6u
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR01MB8628


On Thu, 14 Dec 2023, Robin Murphy wrote:
> Hook up devicetree probing support. For now let's hope that people
> implement PMIIDR properly and we don't need an override property or
> match data mechanism.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Thanks, this version works fine with ACPI.

    Reviewed-by: Ilkka Koskinen <ilkka@os.amperecomputing.com>


Cheers, Ilkka

> ---
> v2: Use APMT node to distinguish ACPI; adjust for binding change
> ---
> drivers/perf/arm_cspmu/arm_cspmu.c | 63 ++++++++++++++++++++++++------
> 1 file changed, 52 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/perf/arm_cspmu/arm_cspmu.c b/drivers/perf/arm_cspmu/arm_cspmu.c
> index b64de4d800c7..6c76c135a0cf 100644
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
> @@ -310,6 +311,10 @@ static const char *arm_cspmu_get_name(const struct arm_cspmu *cspmu)
>
> 	dev = cspmu->dev;
> 	apmt_node = arm_cspmu_apmt_node(dev);
> +	if (!apmt_node)
> +		return devm_kasprintf(dev, GFP_KERNEL, PMUNAME "_%u",
> +				      atomic_fetch_inc(&pmu_idx[0]));
> +
> 	pmu_type = apmt_node->type;
>
> 	if (pmu_type >= ACPI_APMT_NODE_TYPE_COUNT) {
> @@ -425,7 +430,7 @@ static int arm_cspmu_init_impl_ops(struct arm_cspmu *cspmu)
> 	};
>
> 	/* Firmware may override implementer/product ID from PMIIDR */
> -	if (apmt_node->impl_id)
> +	if (apmt_node && apmt_node->impl_id)
> 		cspmu->impl.pmiidr = apmt_node->impl_id;
>
> 	/* Find implementer specific attribute ops. */
> @@ -940,7 +945,14 @@ static struct arm_cspmu *arm_cspmu_alloc(struct platform_device *pdev)
> 	platform_set_drvdata(pdev, cspmu);
>
> 	apmt_node = arm_cspmu_apmt_node(dev);
> -	cspmu->has_atomic_dword = apmt_node->flags & ACPI_APMT_FLAGS_ATOMIC;
> +	if (apmt_node) {
> +		cspmu->has_atomic_dword = apmt_node->flags & ACPI_APMT_FLAGS_ATOMIC;
> +	} else {
> +		u32 width = 0;
> +
> +		device_property_read_u32(dev, "reg-io-width", &width);
> +		cspmu->has_atomic_dword = (width == 8);
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
> +	of_for_each_phandle(&it, ret, dev_of_node(cspmu->dev), "cpus", NULL, 0) {
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
> +	if (arm_cspmu_apmt_node(cspmu->dev))
> +		ret = arm_cspmu_acpi_get_cpus(cspmu);
> +	else if (device_property_present(cspmu->dev, "cpus"))
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

