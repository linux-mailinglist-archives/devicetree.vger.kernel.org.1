Return-Path: <devicetree+bounces-22642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 995AF8084E2
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 10:43:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B6651F221C2
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FF353526A;
	Thu,  7 Dec 2023 09:43:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 194A0FA
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 01:43:14 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D99D312FC;
	Thu,  7 Dec 2023 01:43:59 -0800 (PST)
Received: from [10.57.74.174] (unknown [10.57.74.174])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 643563F6C4;
	Thu,  7 Dec 2023 01:43:12 -0800 (PST)
Message-ID: <23c9fc1e-dedd-4f27-8d84-3839b23c832d@arm.com>
Date: Thu, 7 Dec 2023 09:43:10 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] perf/arm_cspmu: Add devicetree support
Content-Language: en-GB
To: Ilkka Koskinen <ilkka@os.amperecomputing.com>
Cc: will@kernel.org, mark.rutland@arm.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 suzuki.poulose@arm.com, bwicaksono@nvidia.com, YWan@nvidia.com,
 rwiley@nvidia.com
References: <cover.1701793996.git.robin.murphy@arm.com>
 <7000cdf3a22afe684793863e81a1d96bbddb5db1.1701793996.git.robin.murphy@arm.com>
 <b7905a93-e4c-b6a6-d584-389131f4276@os.amperecomputing.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <b7905a93-e4c-b6a6-d584-389131f4276@os.amperecomputing.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2023-12-06 11:43 pm, Ilkka Koskinen wrote:
> 
> Hi Robin,
> 
> On Tue, 5 Dec 2023, Robin Murphy wrote:
>> Hook up devicetree probing support. For now let's hope that people
>> implement PMIIDR properly and we don't need an override mechanism.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>> drivers/perf/arm_cspmu/arm_cspmu.c | 71 +++++++++++++++++++++++-------
>> 1 file changed, 56 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/perf/arm_cspmu/arm_cspmu.c 
>> b/drivers/perf/arm_cspmu/arm_cspmu.c
>> index b64de4d800c7..80b5fc417ee3 100644
>> --- a/drivers/perf/arm_cspmu/arm_cspmu.c
>> +++ b/drivers/perf/arm_cspmu/arm_cspmu.c
>> @@ -27,6 +27,7 @@
>> #include <linux/io-64-nonatomic-lo-hi.h>
>> #include <linux/module.h>
>> #include <linux/mutex.h>
>> +#include <linux/of.h>
>> #include <linux/perf_event.h>
>> #include <linux/platform_device.h>
>>
>> @@ -309,6 +310,10 @@ static const char *arm_cspmu_get_name(const 
>> struct arm_cspmu *cspmu)
>>     static atomic_t pmu_idx[ACPI_APMT_NODE_TYPE_COUNT] = { 0 };
>>
>>     dev = cspmu->dev;
>> +    if (!has_acpi_companion(dev))
> 
> Am I missing something since this doesn't work on top of v6.7-rc4?
> The problem I see is that has_acpi_companion() calls 
> is_acpi_device_node(), which compares whether
> 
>      fwnode->ops == &acpi_device_fwnode_ops;
> 
> However, the acpi/apmt code allocates fwnode by calling
> acpi_alloc_fwnode_static(), which assigns &acpi_static_fwnode_ops
> to ops.

Ah, I hadn't got as far as considering that has_acpi_companion() might 
only work for namespace devices, but it makes sense now that you point 
it out. I should have clarified that I don't have any suitable ACPI 
system to test this on, and have only been able to verify basic DT 
probing on an FPGA.

> I wonder though, if is_acpi_device_node() should check the static 
> variant too? :/

Thanks for the tip, I'll look into that and try to come up with 
something that works for a v2 (at worst there's always the traditional 
assumption that !dev->of_node implies ACPI)

Cheers,
Robin.

> 
> Cheers, Ilkka
> 
>> +        return devm_kasprintf(dev, GFP_KERNEL, PMUNAME "_%u",
>> +                      atomic_fetch_inc(&pmu_idx[0]));
>> +
>>     apmt_node = arm_cspmu_apmt_node(dev);
>>     pmu_type = apmt_node->type;
>>
>> @@ -406,7 +411,6 @@ static struct arm_cspmu_impl_match 
>> *arm_cspmu_impl_match_get(u32 pmiidr)
>> static int arm_cspmu_init_impl_ops(struct arm_cspmu *cspmu)
>> {
>>     int ret = 0;
>> -    struct acpi_apmt_node *apmt_node = arm_cspmu_apmt_node(cspmu->dev);
>>     struct arm_cspmu_impl_match *match;
>>
>>     /* Start with a default PMU implementation */
>> @@ -425,8 +429,12 @@ static int arm_cspmu_init_impl_ops(struct 
>> arm_cspmu *cspmu)
>>     };
>>
>>     /* Firmware may override implementer/product ID from PMIIDR */
>> -    if (apmt_node->impl_id)
>> -        cspmu->impl.pmiidr = apmt_node->impl_id;
>> +    if (has_acpi_companion(cspmu->dev)) {
>> +        struct acpi_apmt_node *apmt_node = 
>> arm_cspmu_apmt_node(cspmu->dev);
>> +
>> +        if (apmt_node->impl_id)
>> +            cspmu->impl.pmiidr = apmt_node->impl_id;
>> +    }
>>
>>     /* Find implementer specific attribute ops. */
>>     match = arm_cspmu_impl_match_get(cspmu->impl.pmiidr);
>> @@ -928,7 +936,6 @@ static void arm_cspmu_read(struct perf_event *event)
>>
>> static struct arm_cspmu *arm_cspmu_alloc(struct platform_device *pdev)
>> {
>> -    struct acpi_apmt_node *apmt_node;
>>     struct arm_cspmu *cspmu;
>>     struct device *dev = &pdev->dev;
>>
>> @@ -939,8 +946,13 @@ static struct arm_cspmu *arm_cspmu_alloc(struct 
>> platform_device *pdev)
>>     cspmu->dev = dev;
>>     platform_set_drvdata(pdev, cspmu);
>>
>> -    apmt_node = arm_cspmu_apmt_node(dev);
>> -    cspmu->has_atomic_dword = apmt_node->flags & ACPI_APMT_FLAGS_ATOMIC;
>> +    if (has_acpi_companion(dev)) {
>> +        struct acpi_apmt_node *apmt_node = arm_cspmu_apmt_node(dev);
>> +
>> +        cspmu->has_atomic_dword = apmt_node->flags & 
>> ACPI_APMT_FLAGS_ATOMIC;
>> +    } else {
>> +        cspmu->has_atomic_dword = device_property_read_bool(dev, 
>> "arm,64-bit-atomic");
>> +    }
>>
>>     return cspmu;
>> }
>> @@ -1133,11 +1145,6 @@ static int arm_cspmu_acpi_get_cpus(struct 
>> arm_cspmu *cspmu)
>>         }
>>     }
>>
>> -    if (cpumask_empty(&cspmu->associated_cpus)) {
>> -        dev_dbg(cspmu->dev, "No cpu associated with the PMU\n");
>> -        return -ENODEV;
>> -    }
>> -
>>     return 0;
>> }
>> #else
>> @@ -1147,9 +1154,36 @@ static int arm_cspmu_acpi_get_cpus(struct 
>> arm_cspmu *cspmu)
>> }
>> #endif
>>
>> +static int arm_cspmu_of_get_cpus(struct arm_cspmu *cspmu)
>> +{
>> +    struct of_phandle_iterator it;
>> +    int ret, cpu;
>> +
>> +    of_for_each_phandle(&it, ret, cspmu->dev->of_node, "cpus", NULL, 
>> 0) {
>> +        cpu = of_cpu_node_to_id(it.node);
>> +        if (cpu < 0)
>> +            continue;
>> +        cpumask_set_cpu(cpu, &cspmu->associated_cpus);
>> +    }
>> +    return ret;
>> +}
>> +
>> static int arm_cspmu_get_cpus(struct arm_cspmu *cspmu)
>> {
>> -    return arm_cspmu_acpi_get_cpus(cspmu);
>> +    int ret = 0;
>> +
>> +    if (has_acpi_companion(cspmu->dev))
>> +        ret = arm_cspmu_acpi_get_cpus(cspmu);
>> +    else if (of_property_present(cspmu->dev->of_node, "cpus"))
>> +        ret = arm_cspmu_of_get_cpus(cspmu);
>> +    else
>> +        cpumask_copy(&cspmu->associated_cpus, cpu_possible_mask);
>> +
>> +    if (!ret && cpumask_empty(&cspmu->associated_cpus)) {
>> +        dev_dbg(cspmu->dev, "No cpu associated with the PMU\n");
>> +        ret = -ENODEV;
>> +    }
>> +    return ret;
>> }
>>
>> static int arm_cspmu_register_pmu(struct arm_cspmu *cspmu)
>> @@ -1246,11 +1280,18 @@ static const struct platform_device_id 
>> arm_cspmu_id[] = {
>> };
>> MODULE_DEVICE_TABLE(platform, arm_cspmu_id);
>>
>> +static const struct of_device_id arm_cspmu_of_match[] = {
>> +    { .compatible = "arm,coresight-pmu" },
>> +    {}
>> +};
>> +MODULE_DEVICE_TABLE(of, arm_cspmu_of_match);
>> +
>> static struct platform_driver arm_cspmu_driver = {
>>     .driver = {
>> -            .name = DRVNAME,
>> -            .suppress_bind_attrs = true,
>> -        },
>> +        .name = DRVNAME,
>> +        .of_match_table = arm_cspmu_of_match,
>> +        .suppress_bind_attrs = true,
>> +    },
>>     .probe = arm_cspmu_device_probe,
>>     .remove = arm_cspmu_device_remove,
>>     .id_table = arm_cspmu_id,
>> -- 
>> 2.39.2.101.g768bb238c484.dirty
>>
>>

