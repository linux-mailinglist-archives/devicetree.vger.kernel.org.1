Return-Path: <devicetree+bounces-241731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59539C81A23
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 17:43:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57A993A175E
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 16:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4684828D8DB;
	Mon, 24 Nov 2025 16:42:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15F7E289E13;
	Mon, 24 Nov 2025 16:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764002561; cv=none; b=Cn/peN4JjKnkxpBfpZVdykI4AQpWu3IV92beG725Z6B9KN0l4TEDLHliA6dIF1KmG1dba5U5SRT1rsHTyiDw2zgSE+Wev3oncfRbyUFlq3sVU7CmiF+gzNi2TT0mNJ8ssIBxVw8blTT+19YTws9PYr6DQnGOEXs0jSWRC5Q5sts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764002561; c=relaxed/simple;
	bh=H0ncnTSzYytCrbvjVRDd2BGKpV1SzfN0pmfGFDE9gJQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z6WmpGCT0jEOzFKJ/VfPbqB+F5upFj2rt8FHarJaXeW+tGt/Cqwdy+Gyn4A/ksYtHWJYfwiq+rAlvRXgHCaLia9y+Ybsi942tLFOco/7ZaJHM5kKjGWxpcSg47aeI0biCQytA1l5kWRwi9RdD53aGVSkjGh1Ap4yVvdX5M2POJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EE1121477;
	Mon, 24 Nov 2025 08:42:30 -0800 (PST)
Received: from [10.1.30.67] (unknown [10.1.30.67])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E69F93F86F;
	Mon, 24 Nov 2025 08:42:35 -0800 (PST)
Message-ID: <0a82c5bb-40c0-4c4b-90dc-9ce4e7caf12a@arm.com>
Date: Mon, 24 Nov 2025 16:42:34 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] of: iommu-map parsing for multi-cell IOMMU
To: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>, will@kernel.org,
 joro@8bytes.org, robh@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
 konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
 bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 saravanak@google.com, prakash.gupta@oss.qualcomm.com,
 vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <cover.1762235099.git.charan.kalla@oss.qualcomm.com>
 <0319bdf5-0a46-40fc-93f8-30d74cf6475a@arm.com>
 <351373ed-c699-4945-a978-cb35412918bc@oss.qualcomm.com>
 <e6fb7000-7aac-45b6-b4f9-c9efa2a98d57@oss.qualcomm.com>
 <74c2bdbe-1346-4229-b9dd-694b3063b1bb@oss.qualcomm.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <74c2bdbe-1346-4229-b9dd-694b3063b1bb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2025-11-21 5:54 am, Charan Teja Kalla wrote:
> 
> On 11/12/2025 8:12 PM, Charan Teja Kalla wrote:
>> Hi Robin,
>>
>> Don't want to bother you with my ideas, but I can't think of other ways
>> to handle such cases of multi-map than the below. I just tried this code on
>> Qemu on top of your patches(with some nit compilation fixes) and just checked
>> if devices are added to the iommu groups.
>>
> 
> Hello Robin,
> Not sure If this is early to ask for feedback, but waiting for your
> valuable inputs here.  Thanks in advance.

Argh, sorry, I had written a whole reply, but apparently I never hit 
send, and I've been swamped with other stuff lately. Let me see if I can 
dig that out...

Robin.

> 
>> ----------------------8888---------------------------------------------
>>
>> diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
>> index a511ecf21fcd..ac005e70de7d 100644
>> --- a/drivers/iommu/of_iommu.c
>> +++ b/drivers/iommu/of_iommu.c
>> @@ -16,6 +16,7 @@
>>   #include <linux/pci.h>
>>   #include <linux/slab.h>
>>   #include <linux/fsl/mc.h>
>> +#include <linux/platform_device.h>
>>   
>>   #include "iommu-priv.h"
>>   
>> @@ -41,6 +42,18 @@ static int of_iommu_xlate(struct device *dev,
>>   	return ret;
>>   }
>>   
>> +static int of_iommu_configure_cb(void *arg, u32 *id_out)
>> +{
>> +	struct of_phandle_args *iommu_spec =
>> +		(struct of_phandle_args *)((void *)id_out - offsetof(struct of_phandle_args, args));
>> +	struct device *dev = arg;
>> +	int err;
>> +
>> +	err = of_iommu_xlate(dev, iommu_spec);
>> +	of_node_put(iommu_spec->np);
>> +	return err;
>> +}
>> +
>>   static int of_iommu_configure_dev_id(struct device_node *master_np,
>>   				     struct device *dev,
>>   				     const u32 *id)
>> @@ -48,12 +61,10 @@ static int of_iommu_configure_dev_id(struct device_node *master_np,
>>   	struct of_phandle_args iommu_spec = { .args_count = 1 };
>>   	int err;
>>   
>> -	err = of_map_iommu_id(master_np, *id, &iommu_spec.np, iommu_spec.args);
>> +	err = of_map_iommu_id(master_np, *id, &iommu_spec.np, iommu_spec.args,
>> +			dev_is_platform(dev) ? true : false, dev, of_iommu_configure_cb);
>> - 	if (err)
>> - 		return err;
>> -
>> -	err = of_iommu_xlate(dev, &iommu_spec);
>> -	of_node_put(iommu_spec.np);
>>   	return err;
>>   }
>>   
>> diff --git a/drivers/of/base.c b/drivers/of/base.c
>> index a4fd4a4f720b..8abe36c17309 100644
>> --- a/drivers/of/base.c
>> +++ b/drivers/of/base.c
>> @@ -2085,16 +2085,21 @@ static bool of_check_bad_map(const __be32 *map, int len)
>>    */
>>   int of_map_id(const struct device_node *np, u32 id, const char *map_name,
>>   	      const char *cells_name, const char *map_mask_name,
>> -	      struct device_node **target, u32 *id_out)
>> +	      struct device_node **target, u32 *id_out, bool multi_map,
>> +	      void *arg, of_map_id_cb cb)
>>   {
>>   	u32 map_mask, masked_id;
>>   	int map_bytes, map_len, offset = 0;
>>   	bool bad_map = false;
>>   	const __be32 *map = NULL;
>> +	bool mapped_multi_id = false;
>>   
>>   	if (!np || !map_name || !cells_name || (!target && !id_out))
>>   		return -EINVAL;
>>   
>> +	if (multi_map && !cb)
>> +		return -EINVAL;
>> +
>>   	map = of_get_property(np, map_name, &map_bytes);
>>   	if (!map) {
>>   		if (target)
>> @@ -2189,16 +2194,29 @@ int of_map_id(const struct device_node *np, u32 id, const char *map_name,
>>   		pr_debug("%pOF: %s, using mask %08x, id-base: %08x, out-base: %08x, length: %08x, id: %08x -> %08x\n",
>>   			np, map_name, map_mask, id_base, be32_to_cpup(out_base),
>>   			id_len, id, id_off + be32_to_cpup(out_base));
>> -		return 0;
>> +
>> +		if (multi_map) {
>> +			if (cb(arg, id_out))
>> +				return -EINVAL;
>> +
>> +			mapped_multi_id = true;
>> +			continue;
>> +		}
>> +
>> +		goto translated;
>>   	}
>>   
>> +	if (mapped_multi_id)
>> +		return 0;
>> +
>>   	pr_info("%pOF: no %s translation for id 0x%x on %pOF\n", np, map_name,
>>   		id, target && *target ? *target : NULL);
>>   
>>   	/* Bypasses translation */
>>   	if (id_out)
>>   		*id_out = id;
>> -	return 0;
>> +translated:
>> +	return cb ? cb(arg, id_out) : 0;
>>   
>>   err_map_len:
>>   	pr_err("%pOF: Error: Bad %s length: %d\n", np, map_name, map_bytes);
>> diff --git a/include/linux/of.h b/include/linux/of.h
>> index 183be897b088..84a24c2a1041 100644
>> --- a/include/linux/of.h
>> +++ b/include/linux/of.h
>> @@ -24,6 +24,7 @@
>>   
>>   typedef u32 phandle;
>>   typedef u32 ihandle;
>> +typedef int (*of_map_id_cb)(void *arg, u32 *id_out);
>>   
>>   struct property {
>>   	char	*name;
>> @@ -458,7 +459,8 @@ bool of_console_check(const struct device_node *dn, char *name, int index);
>>   
>>   int of_map_id(const struct device_node *np, u32 id, const char *map_name,
>>   	      const char *cells_name, const char *map_mask_name,
>> -	      struct device_node **target, u32 *id_out);
>> +	      struct device_node **target, u32 *id_out,
>> +	      bool multi_map, void *arg, of_map_id_cb cb);
>>   
>>   phys_addr_t of_dma_get_max_cpu_address(struct device_node *np);
>>   
>> @@ -1436,17 +1438,18 @@ static inline int of_property_read_s32(const struct device_node *np,
>>   }
>>   
>>   static inline int of_map_iommu_id(const struct device_node *np, u32 id,
>> -				  struct device_node **target, u32 *id_out)
>> +				  struct device_node **target, u32 *id_out,
>> +				  bool multi_map, void *arg, of_map_id_cb cb)
>>   {
>>   	return of_map_id(np, id, "iommu-map", "#iommu-cells", "iommu-map-mask",
>> -			 target, id_out);
>> +			 target, id_out, multi_map, arg, cb);
>>   }
>>   
>>   static inline int of_map_msi_id(const struct device_node *np, u32 id,
>>   				struct device_node **target, u32 *id_out)
>>   {
>>   	return of_map_id(np, id, "msi-map", "#msi-cells", "msi-map-mask",
>> -			 target, id_out);
>> +			 target, id_out, false, NULL, NULL);
>>   }
>>   
>>   #define of_for_each_phandle(it, err, np, ln, cn, cc)			
>> -----------------------------------------------------------------------
>>
>> full patch is at: https://github.com/charan-kalla-oss/linux-next/commits/refs/for/iommu_map
> 


