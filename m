Return-Path: <devicetree+bounces-78395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C46B29122DA
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 12:55:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 760D328218C
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 10:55:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7141C172784;
	Fri, 21 Jun 2024 10:54:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B6A616D4C3;
	Fri, 21 Jun 2024 10:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718967294; cv=none; b=uXx/h2w4vIjHNEqfU60Fls5RPl0G1VvsdmFzi1pUGP+IbBpSB20NAebQ7MLTqZTY05rdy/k7lQ7+OfYLQ0Ep2z9raTl0T7b/xx1y06YPUwBLvrmdnN94a/G7G8pHmiOJzPVPd7JNst/RME+uo3AFwrO91IcMPqs/wh8vpla3ZSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718967294; c=relaxed/simple;
	bh=Aju48IG4Zee4cWPZgfzP8BEatHfer+XE+oHjsX9Oc3o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lat0BLSV5Z+2rzRTm9pF/fXcm9aomADE6xzZxf1KiyNVXMJntCfdeF5QaLmTh48bqcBd4sFLnba5nnYIkGiuXuQ7sCXe5gj4K2WdAU9Hq5h2PVOsPiU/elucfaU8rBJ6dwpCZAXrIyuifHiRsJh7GfDiI/uGHoBTFD9MlduUlcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D091DA7;
	Fri, 21 Jun 2024 03:55:15 -0700 (PDT)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E910F3F6A8;
	Fri, 21 Jun 2024 03:54:46 -0700 (PDT)
Message-ID: <6476fa2e-b7db-4bc2-a7a6-26b32af6c9f3@arm.com>
Date: Fri, 21 Jun 2024 11:54:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 5/7] coresight: tmc: Add support for reading crash data
To: Linu Cherian <lcherian@marvell.com>
Cc: mike.leach@linaro.org, james.clark@arm.com,
 linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, sgoutham@marvell.com, gcherian@marvell.com,
 Anil Kumar Reddy <areddy3@marvell.com>, Tanmay Jagdale <tanmay@marvell.com>
References: <20240605081725.622953-1-lcherian@marvell.com>
 <20240605081725.622953-6-lcherian@marvell.com>
 <df91af49-383b-4686-8b5c-3e9b0b9b2a18@arm.com>
 <20240620014827.GA125816@hyd1403.caveonetworks.com>
Content-Language: en-US
From: Suzuki K Poulose <suzuki.poulose@arm.com>
In-Reply-To: <20240620014827.GA125816@hyd1403.caveonetworks.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/06/2024 02:48, Linu Cherian wrote:
> On 2024-06-10 at 22:04:16, Suzuki K Poulose (suzuki.poulose@arm.com) wrote:
>> On 05/06/2024 09:17, Linu Cherian wrote:
>>> * Introduce a new mode CS_MODE_READ_CRASHDATA for reading trace
>>>     captured in previous crash/watchdog reset.
>>>
>>
>> I am still not convinced if we really need this new mode. We should :
>>
>> 1) Register the new misc device to expose the "reserved" saved trace
>> data, only when the metadata is crc checked and it indicates "valid"
>> trace data.
> 
> Ack.
> 
>>
>> 2) Always allow reading from the "reserved" buffer when the above file
>> is opened. At open(), once again check if the mdata.valid is true (see
>> below), if not, return -EIO.
>>
>> 3) Whenever we use the buffer in "RESERVE" for a session, also set the
>> mdata.valid == false. This would prevent any further read from the
>> /dev/crash_xxx device. Which makes sense, as the data is lost.
>>
> 
> Well, how about the below changes
> a. Clear the valid bit only upon user request so that, user is free to do
> multiple reads of crashdata buffer.

I don't see the need for it. With the proposed changes as long as we
don't overwrite the trace using RESERVE mode, the user can read it and
they don't need to explicitly clear the field.

The current changes do not prevent the user from overwriting the buffer
any way using the RESERVE mode. And we can get rid of the "READ CRASH"
mode.

> Clearing the mdata.valid can be triggered using a write to the file like
> echo 0 > /dev/crash_tmc_etxx.
> 
> b. In order to prevent the buffer overwrite, when mdata.valid = true
>     * ETR sink mode: dont allow the user to change the buffer mode to "RESERVE"
>     * ETB sink mode: dont copy panic trace data to reserve buffer during
>       kernel panic.

Why ? It is the users responsibility (I would add inittab job to capture 
the trace) to collect the trace, before you start using the "reserve"
mode.

You may additionally prevent the mode change to "RESERVE" if someone has
opened the /dev/crashxxx.

> 
>> This way, you don't need to dance with a new mode always provide the
>> reserve buffer contents, if it is valid (with an ongoing RESERVE mode)
>> invalidating the buffer and the change is much much simpler.
>>
> 
> In general, we tried to reuse the existing normal trace buffer read operations
> for the crash data reads as well. Hence we need a way to special case the crash data
> reads in few places like for eg. tmc_etr/etb_get_sysfs_trace.

I understand, but that is unnecessarily complicating the existing
framework.

> 
> Its not clear to me if you are suggesting to write parallel independent
> functions to manage the crash device reads OR its just about relying on
> drvdata->crash_mdata.valid to special case the common read functions insead
> of csdev->mode ? Please clarify.

Use parallel independent functions to read from crash device. No new
mode. All we need to do when someone opens the /dev/crash--:

1) See if the metdata.valid == true
2) Block further "mode" changes to RESERV_BUF. Hold a refcount
3) Provide the buffer from crash buffer.
4) Upon close()=> drop the refcount from (2)

Related question, does anyone need the "metdata" ? e.g. flush status ?
Or do we think that only the trace data is required ?



> 
> 
>>
>>> * Add special device files for reading ETR/ETF crash data.
>>>
>>> * User can read the crash data as below
>>>
>>>     For example, for reading crash data from tmc_etf sink
>>>
>>>     #dd if=/dev/crash_tmc_etfXX of=~/cstrace.bin
>>>
>>> Signed-off-by: Anil Kumar Reddy <areddy3@marvell.com>
>>> Signed-off-by: Tanmay Jagdale <tanmay@marvell.com>
>>> Signed-off-by: Linu Cherian <lcherian@marvell.com>
>>> ---
>>> Changelog from v8:
>>> * Added missing exit path in __tmc_probe
>>> * Few whitespace fixes and a checkpatch fix.
>>>
>>>    .../coresight/coresight-etm4x-core.c          |   1 +
>>>    .../hwtracing/coresight/coresight-tmc-core.c  | 150 ++++++++++++++++-
>>>    .../hwtracing/coresight/coresight-tmc-etf.c   |  72 +++++++++
>>>    .../hwtracing/coresight/coresight-tmc-etr.c   | 151 +++++++++++++++++-
>>>    drivers/hwtracing/coresight/coresight-tmc.h   |  11 +-
>>>    include/linux/coresight.h                     |  13 ++
>>>    6 files changed, 390 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-core.c b/drivers/hwtracing/coresight/coresight-etm4x-core.c
>>> index a0bdfabddbc6..7924883476c6 100644
>>> --- a/drivers/hwtracing/coresight/coresight-etm4x-core.c
>>> +++ b/drivers/hwtracing/coresight/coresight-etm4x-core.c
>>> @@ -1011,6 +1011,7 @@ static void etm4_disable(struct coresight_device *csdev,
>>>    	switch (mode) {
>>>    	case CS_MODE_DISABLED:
>>> +	case CS_MODE_READ_CRASHDATA:
>>>    		break;
>>>    	case CS_MODE_SYSFS:
>>>    		etm4_disable_sysfs(csdev);
>>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
>>> index daad08bc693d..0c145477ba66 100644
>>> --- a/drivers/hwtracing/coresight/coresight-tmc-core.c
>>> +++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
>>> @@ -106,6 +106,60 @@ u32 tmc_get_memwidth_mask(struct tmc_drvdata *drvdata)
>>>    	return mask;
>>>    }
>>> +int tmc_read_prepare_crashdata(struct tmc_drvdata *drvdata)
>>> +{
>>> +	int ret = 0;
>>> +	struct tmc_crash_metadata *mdata;
>>> +	struct coresight_device *csdev = drvdata->csdev;
>>> +
>>> +	if (!drvdata->crash_mdata.vaddr) {
>>> +		ret = -ENOMEM;
>>> +		goto out;
>>> +	}
>>> +
>>> +	mdata = drvdata->crash_mdata.vaddr;
>>> +	/* Check data integrity of metadata */
>>> +	if (mdata->crc32_mdata != find_crash_metadata_crc(mdata)) {
>>> +		dev_dbg(&drvdata->csdev->dev,
>>> +			"CRC mismatch in tmc crash metadata\n");
>>> +		ret = -EINVAL;
>>
>> After the comments above, if at all we retain this, please use -EIO
> 
> 
> Ack.
> 
>>
>>> +		goto out;
>>> +	}
>>> +	/* Check data integrity of tracedata */
>>> +	if (mdata->crc32_tdata != find_crash_tracedata_crc(drvdata, mdata)) {
>>> +		dev_dbg(&drvdata->csdev->dev,
>>> +			"CRC mismatch in tmc crash tracedata\n");
>>> +		ret = -EINVAL;
>>
>> Same here, -EIO
> 
> Ack.
> 
>>
>>> +		goto out;
>>> +	}
>>> +	/* Check for valid metadata */
>>> +	if (!mdata->valid) {
>>> +		dev_dbg(&drvdata->csdev->dev,
>>> +			"Data invalid in tmc crash metadata\n");
>>> +		ret = -EINVAL;
>>> +		goto out;
>>> +	}
>>
>> -ENXIO
> 
> Ack.
> 
>>
>>
>>> +	/* Sink specific crashdata mode preparation */
>>> +	ret = crashdata_ops(csdev)->prepare(csdev);
>>> +	if (ret)
>>> +		goto out;
>>> +
>>> +	if (mdata->sts & 0x1)
>>
>> If at all we need this, please use TMC_STS_FULL instead of hard coding
>> numbers.
> 
> 
> Ack.
> 
> 
>>
>>> +		coresight_insert_barrier_packet(drvdata->buf);
>>> +
>>> +out:
>>> +	return ret;
>>> +}
>>> +
>>> +int tmc_read_unprepare_crashdata(struct tmc_drvdata *drvdata)
>>> +{
>>> +	struct coresight_device *csdev = drvdata->csdev;
>>> +
>>> +	/* Sink specific crashdata mode preparation */
>>> +	return crashdata_ops(csdev)->unprepare(csdev);
>>> +}
>>> +
>>>    static int tmc_read_prepare(struct tmc_drvdata *drvdata)
>>>    {
>>>    	int ret = 0;
>>> @@ -156,6 +210,9 @@ static int tmc_open(struct inode *inode, struct file *file)
>>>    	struct tmc_drvdata *drvdata = container_of(file->private_data,
>>>    						   struct tmc_drvdata, miscdev);
>>> +	if (coresight_get_mode(drvdata->csdev) == CS_MODE_READ_CRASHDATA)
>>> +		return -EBUSY;
>>> +
>>>    	ret = tmc_read_prepare(drvdata);
>>>    	if (ret)
>>>    		return ret;
>>> @@ -180,13 +237,12 @@ static inline ssize_t tmc_get_sysfs_trace(struct tmc_drvdata *drvdata,
>>>    	return -EINVAL;
>>>    }
>>> -static ssize_t tmc_read(struct file *file, char __user *data, size_t len,
>>> -			loff_t *ppos)
>>> +static ssize_t tmc_read_common(struct tmc_drvdata *drvdata, char __user *data,
>>> +			       size_t len, loff_t *ppos)
>>>    {
>>>    	char *bufp;
>>>    	ssize_t actual;
>>> -	struct tmc_drvdata *drvdata = container_of(file->private_data,
>>> -						   struct tmc_drvdata, miscdev);
>>> +
>>>    	actual = tmc_get_sysfs_trace(drvdata, *ppos, len, &bufp);
>>>    	if (actual <= 0)
>>>    		return 0;
>>> @@ -203,6 +259,15 @@ static ssize_t tmc_read(struct file *file, char __user *data, size_t len,
>>>    	return actual;
>>>    }
>>> +static ssize_t tmc_read(struct file *file, char __user *data, size_t len,
>>> +			loff_t *ppos)
>>> +{
>>> +	struct tmc_drvdata *drvdata = container_of(file->private_data,
>>> +						   struct tmc_drvdata, miscdev);
>>> +
>>> +	return tmc_read_common(drvdata, data, len, ppos);
>>> +}
>>> +
>>>    static int tmc_release(struct inode *inode, struct file *file)
>>>    {
>>>    	int ret;
>>> @@ -225,6 +290,61 @@ static const struct file_operations tmc_fops = {
>>>    	.llseek		= no_llseek,
>>>    };
>>> +static int tmc_crashdata_open(struct inode *inode, struct file *file)
>>> +{
>>> +	int ret;
>>> +	struct tmc_drvdata *drvdata = container_of(file->private_data,
>>> +						   struct tmc_drvdata,
>>> +						   crashdev);
>>> +
>>> +	if (!coresight_take_mode(drvdata->csdev, CS_MODE_READ_CRASHDATA))
>>> +		return -EBUSY;
>>> +
>>> +	ret = tmc_read_prepare(drvdata);
>>> +	if (ret) {
>>> +		coresight_set_mode(drvdata->csdev, CS_MODE_DISABLED);
>>> +		return ret;
>>> +	}
>>> +
>>> +	nonseekable_open(inode, file);
>>
>>
>> As mentioned in the beginning, please use "mdata.valid" to deny any open
>> requests and that way you could simplify most of the code and make a single
>> function to handle all of the crash device handling.
> 
> Did you meant using drvdata->crash_mdata.valid to special case common
> functions instead of relying on csdev->mode ? Please clarify.

You may reuse "code" for reading from a buffer. But please do not use a
mode to switch buffer. Instead, you could refactor common "code" to a
function and pass appropriate buffer to the function.

> 
>>
>>
>>> +
>>> +	dev_dbg(&drvdata->csdev->dev, "%s: successfully opened\n", __func__);
>>> +	return 0;
>>> +}
>>> +
>>> +static ssize_t tmc_crashdata_read(struct file *file, char __user *data,
>>> +				  size_t len, loff_t *ppos)
>>> +{
>>> +	struct tmc_drvdata *drvdata = container_of(file->private_data,
>>> +						   struct tmc_drvdata,
>>> +						   crashdev);
>>> +
>>> +	return tmc_read_common(drvdata, data, len, ppos);
>>
>> Simply provide the reserve buffer data, instead of creating ETB / ETR
>> specific handling.
> 
> The differences between tmc_etb/etr_get_sysfs_trace applies to crash
> data reads as well. So its not clear to me why we dont need ETB/ETR specific handling.

My point is they all read from the "drvdata->crashbuf" isn't ? If you 
have a crash_buf_fops, that would apply to ETB/ETR/ETFs as they all have
the data stored in the reserved buffer area. It doesn't matter for crash
buf. For sysfs trace it is different, because the trace data is at 
different places. ETB has in internal SRAM, ETR has in RAM etc.


Suzuki

> 
> 
>>
>>> +}
>>> +
>>> +static int tmc_crashdata_release(struct inode *inode, struct file *file)
>>> +{
>>> +	int ret = 0;
>>> +	struct tmc_drvdata *drvdata = container_of(file->private_data,
>>> +						   struct tmc_drvdata,
>>> +						   crashdev);
>>> +
>>> +	ret = tmc_read_unprepare(drvdata);
>>> +
>>> +	coresight_set_mode(drvdata->csdev, CS_MODE_DISABLED);
>>> +
>>> +	dev_dbg(&drvdata->csdev->dev, "%s: released\n", __func__);
>>> +	return ret;
>>> +}
>>> +
>>> +static const struct file_operations tmc_crashdata_fops = {
>>> +	.owner		= THIS_MODULE,
>>> +	.open		= tmc_crashdata_open,
>>> +	.read		= tmc_crashdata_read,
>>> +	.release	= tmc_crashdata_release,
>>> +	.llseek		= no_llseek,
>>> +};
>>> +
>>>    static enum tmc_mem_intf_width tmc_get_memwidth(u32 devid)
>>>    {
>>>    	enum tmc_mem_intf_width memwidth;
>>> @@ -542,6 +662,18 @@ static u32 tmc_etr_get_max_burst_size(struct device *dev)
>>>    	return burst_size;
>>>    }
>>> +static void register_crash_dev_interface(struct tmc_drvdata *drvdata,
>>> +					 const char *name)
>>> +{
>>> +	drvdata->crashdev.name =
>>> +		devm_kasprintf(&drvdata->csdev->dev, GFP_KERNEL, "%s_%s", "crash", name);
>>> +	drvdata->crashdev.minor = MISC_DYNAMIC_MINOR;
>>> +	drvdata->crashdev.fops = &tmc_crashdata_fops;
>>> +	if (misc_register(&drvdata->crashdev))
>>> +		dev_dbg(&drvdata->csdev->dev,
>>> +			"Failed to setup user interface for crashdata\n");
>>> +}
>>> +
>>>    static int __tmc_probe(struct device *dev, struct resource *res)
>>>    {
>>>    	int ret = 0;
>>> @@ -642,8 +774,13 @@ static int __tmc_probe(struct device *dev, struct resource *res)
>>>    	drvdata->miscdev.minor = MISC_DYNAMIC_MINOR;
>>>    	drvdata->miscdev.fops = &tmc_fops;
>>>    	ret = misc_register(&drvdata->miscdev);
>>> -	if (ret)
>>> +	if (ret) {
>>>    		coresight_unregister(drvdata->csdev);
>>> +		goto out;
>>> +	}
>>> +
>>> +	if (is_tmc_reserved_region_valid(dev))
>>> +		register_crash_dev_interface(drvdata, desc.name);
>>
>> Please could we only expose this when the reserved region has valid
>> metadata, crc checked etc ? That way the users don't have to read it to
>> figure out if it is valid or not. (Please note we need to use the valid
>> bit check to avoid reading over-written data).
> 
> Sure. Will take care.
> 
> Thanks.
> Linu Cherian.
> 
>>
>>
>> Suzuki
>>
>>
>>
>>>    out:
>>>    	return ret;
>>>    }
>>> @@ -672,7 +809,8 @@ static void tmc_shutdown(struct amba_device *adev)
>>>    	spin_lock_irqsave(&drvdata->spinlock, flags);
>>> -	if (coresight_get_mode(drvdata->csdev) == CS_MODE_DISABLED)
>>> +	if ((coresight_get_mode(drvdata->csdev) == CS_MODE_DISABLED) ||
>>> +	    (coresight_get_mode(drvdata->csdev) == CS_MODE_READ_CRASHDATA))
>>>    		goto out;
>>>    	if (drvdata->config_type == TMC_CONFIG_TYPE_ETR)
>>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
>>> index f9569585e9f8..a8cabbf6679b 100644
>>> --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
>>> +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
>>> @@ -657,6 +657,56 @@ static int tmc_panic_sync_etf(struct coresight_device *csdev)
>>>    	return 0;
>>>    }
>>> +static int tmc_etb_setup_crashdata_buf(struct tmc_drvdata *drvdata)
>>> +{
>>> +	unsigned long size;
>>> +	struct tmc_crash_metadata *mdata;
>>> +	struct device *dev = &drvdata->csdev->dev;
>>> +
>>> +	mdata = drvdata->crash_mdata.vaddr;
>>> +	size = mdata->size << 2;
>>> +
>>> +	/*
>>> +	 * Buffer address given by metadata for retrieval of trace data
>>> +	 * from previous boot is expected to be same as the reserved
>>> +	 * trace buffer memory region provided through DTS
>>> +	 */
>>> +	if (is_tmc_reserved_region_valid(dev->parent)
>>> +	    && (drvdata->crash_tbuf.paddr == mdata->trc_paddr))
>>> +		drvdata->buf = drvdata->crash_tbuf.vaddr;
>>> +	else {
>>> +		dev_dbg(dev, "Trace buffer address of previous boot invalid\n");
>>> +		return -EINVAL;
>>> +	}
>>> +
>>> +	drvdata->len = size;
>>> +	return 0;
>>> +}
>>> +
>>> +static void tmc_etb_free_crashdata_buf(struct tmc_drvdata *drvdata)
>>> +{
>>> +	void *buf = drvdata->buf;
>>> +
>>> +	if (!buf)
>>> +		return;
>>> +	drvdata->buf = NULL;
>>> +}
>>> +
>>> +static int tmc_etb_prepare_crashdata(struct coresight_device *csdev)
>>> +{
>>> +	struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
>>> +
>>> +	return  tmc_etb_setup_crashdata_buf(drvdata);
>>> +}
>>> +
>>> +static int tmc_etb_unprepare_crashdata(struct coresight_device *csdev)
>>> +{
>>> +	struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
>>> +
>>> +	tmc_etb_free_crashdata_buf(drvdata);
>>> +	return 0;
>>> +}
>>> +
>>>    static const struct coresight_ops_sink tmc_etf_sink_ops = {
>>>    	.enable		= tmc_enable_etf_sink,
>>>    	.disable	= tmc_disable_etf_sink,
>>> @@ -674,6 +724,11 @@ static const struct coresight_ops_panic tmc_etf_sync_ops = {
>>>    	.sync		= tmc_panic_sync_etf,
>>>    };
>>> +static const struct coresight_ops_crashdata tmc_etf_crashdata_ops = {
>>> +	.prepare	= tmc_etb_prepare_crashdata,
>>> +	.unprepare	= tmc_etb_unprepare_crashdata,
>>> +};
>>> +
>>>    const struct coresight_ops tmc_etb_cs_ops = {
>>>    	.sink_ops	= &tmc_etf_sink_ops,
>>>    };
>>> @@ -682,6 +737,7 @@ const struct coresight_ops tmc_etf_cs_ops = {
>>>    	.sink_ops	= &tmc_etf_sink_ops,
>>>    	.link_ops	= &tmc_etf_link_ops,
>>>    	.panic_ops	= &tmc_etf_sync_ops,
>>> +	.crashdata_ops	= &tmc_etf_crashdata_ops,
>>>    };
>>>    int tmc_read_prepare_etb(struct tmc_drvdata *drvdata)
>>> @@ -702,6 +758,14 @@ int tmc_read_prepare_etb(struct tmc_drvdata *drvdata)
>>>    		goto out;
>>>    	}
>>> +	if (coresight_get_mode(drvdata->csdev) == CS_MODE_READ_CRASHDATA) {
>>> +		ret = tmc_read_prepare_crashdata(drvdata);
>>> +		if (ret)
>>> +			goto out;
>>> +		else
>>> +			goto mode_valid;
>>> +	}
>>> +
>>>    	/* Don't interfere if operated from Perf */
>>>    	if (coresight_get_mode(drvdata->csdev) == CS_MODE_PERF) {
>>>    		ret = -EINVAL;
>>> @@ -725,6 +789,7 @@ int tmc_read_prepare_etb(struct tmc_drvdata *drvdata)
>>>    		__tmc_etb_disable_hw(drvdata);
>>>    	}
>>> +mode_valid:
>>>    	drvdata->reading = true;
>>>    out:
>>>    	spin_unlock_irqrestore(&drvdata->spinlock, flags);
>>> @@ -746,6 +811,13 @@ int tmc_read_unprepare_etb(struct tmc_drvdata *drvdata)
>>>    	spin_lock_irqsave(&drvdata->spinlock, flags);
>>> +	if (coresight_get_mode(drvdata->csdev) == CS_MODE_READ_CRASHDATA) {
>>> +		tmc_read_unprepare_crashdata(drvdata);
>>> +		drvdata->reading = false;
>>> +		spin_unlock_irqrestore(&drvdata->spinlock, flags);
>>> +		return 0;
>>> +	}
>>> +
>>>    	/* Re-enable the TMC if need be */
>>>    	if (coresight_get_mode(drvdata->csdev) == CS_MODE_SYSFS) {
>>>    		/* There is no point in reading a TMC in HW FIFO mode */
>>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>>> index be1079e8fd64..b12ae7cc3372 100644
>>> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
>>> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>>> @@ -1160,7 +1160,12 @@ ssize_t tmc_etr_get_sysfs_trace(struct tmc_drvdata *drvdata,
>>>    {
>>>    	s64 offset;
>>>    	ssize_t actual = len;
>>> -	struct etr_buf *etr_buf = drvdata->sysfs_buf;
>>> +	struct etr_buf *etr_buf;
>>> +
>>> +	if (coresight_get_mode(drvdata->csdev) == CS_MODE_READ_CRASHDATA)
>>> +		etr_buf = drvdata->sysfs_crash_buf;
>>> +	else
>>> +		etr_buf = drvdata->sysfs_buf;
>>>    	if (pos + actual > etr_buf->len)
>>>    		actual = etr_buf->len - pos;
>>> @@ -1878,6 +1883,128 @@ static int tmc_panic_sync_etr(struct coresight_device *csdev)
>>>    	return 0;
>>>    }
>>> +static int tmc_etr_setup_crashdata_buf(struct tmc_drvdata *drvdata)
>>> +{
>>> +	int rc = 0;
>>> +	struct etr_buf *etr_buf;
>>> +	struct etr_flat_buf *resrv_buf;
>>> +	struct tmc_crash_metadata *mdata;
>>> +	struct device *dev = &drvdata->csdev->dev;
>>> +
>>> +	mdata = drvdata->crash_mdata.vaddr;
>>> +
>>> +	etr_buf = kzalloc(sizeof(*etr_buf), GFP_ATOMIC);
>>> +	if (!etr_buf) {
>>> +		rc = -ENOMEM;
>>> +		goto out;
>>> +	}
>>> +	etr_buf->size = drvdata->crash_tbuf.size;
>>> +
>>> +	resrv_buf = kzalloc(sizeof(*resrv_buf), GFP_ATOMIC);
>>> +	if (!resrv_buf) {
>>> +		rc = -ENOMEM;
>>> +		goto rmem_err;
>>> +	}
>>> +
>>> +	/*
>>> +	 * Buffer address given by metadata for retrieval of trace data
>>> +	 * from previous boot is expected to be same as the reserved
>>> +	 * trace buffer memory region provided through DTS
>>> +	 */
>>> +	if (is_tmc_reserved_region_valid(dev->parent)
>>> +	    && (drvdata->crash_tbuf.paddr == mdata->trc_paddr))
>>> +		resrv_buf->vaddr = drvdata->crash_tbuf.vaddr;
>>> +	else {
>>> +		dev_dbg(dev, "Trace buffer address of previous boot invalid\n");
>>> +		rc = -EINVAL;
>>> +		goto map_err;
>>> +	}
>>> +
>>> +	resrv_buf->size = etr_buf->size;
>>> +	resrv_buf->dev = &drvdata->csdev->dev;
>>> +	etr_buf->mode = ETR_MODE_RESRV;
>>> +	etr_buf->private = resrv_buf;
>>> +	etr_buf->ops = etr_buf_ops[ETR_MODE_RESRV];
>>> +
>>> +	drvdata->sysfs_crash_buf = etr_buf;
>>> +
>>> +	return 0;
>>> +
>>> +map_err:
>>> +	kfree(resrv_buf);
>>> +
>>> +rmem_err:
>>> +	kfree(etr_buf);
>>> +
>>> +out:
>>> +	return rc;
>>> +}
>>> +
>>> +static int tmc_etr_sync_crashdata_buf(struct tmc_drvdata *drvdata)
>>> +{
>>> +	u32 status;
>>> +	u64 rrp, rwp, dba;
>>> +	struct tmc_crash_metadata *mdata;
>>> +	struct etr_buf *etr_buf = drvdata->sysfs_crash_buf;
>>> +
>>> +	mdata = drvdata->crash_mdata.vaddr;
>>> +
>>> +	rrp = mdata->rrp;
>>> +	rwp = mdata->rwp;
>>> +	dba = mdata->dba;
>>> +	status = mdata->sts;
>>> +
>>> +	etr_buf->full = !!(status & TMC_STS_FULL);
>>> +
>>> +	/* Sync the buffer pointers */
>>> +	etr_buf->offset = rrp - dba;
>>> +	if (etr_buf->full)
>>> +		etr_buf->len = etr_buf->size;
>>> +	else
>>> +		etr_buf->len = rwp - rrp;
>>> +
>>> +	/* Additional sanity checks for validating metadata */
>>> +	if ((etr_buf->offset > etr_buf->size) ||
>>> +	    (etr_buf->len > etr_buf->size)) {
>>> +		dev_dbg(&drvdata->csdev->dev,
>>> +			"Offset and length invalid in tmc crash metadata\n");
>>> +		return -EINVAL;
>>> +	}
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static void tmc_etr_free_crashdata_buf(struct tmc_drvdata *drvdata)
>>> +{
>>> +	struct etr_buf *etr_buf = drvdata->sysfs_crash_buf;
>>> +
>>> +	if (!etr_buf)
>>> +		return;
>>> +	drvdata->sysfs_crash_buf = NULL;
>>> +}
>>> +
>>> +static int tmc_etr_prepare_crashdata(struct coresight_device *csdev)
>>> +{
>>> +	int ret = 0;
>>> +	struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
>>> +
>>> +	ret = tmc_etr_setup_crashdata_buf(drvdata);
>>> +	if (ret)
>>> +		goto out;
>>> +	ret = tmc_etr_sync_crashdata_buf(drvdata);
>>> +
>>> +out:
>>> +	return ret;
>>> +}
>>> +
>>> +static int tmc_etr_unprepare_crashdata(struct coresight_device *csdev)
>>> +{
>>> +	struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
>>> +
>>> +	tmc_etr_free_crashdata_buf(drvdata);
>>> +	return 0;
>>> +}
>>> +
>>>    static const struct coresight_ops_sink tmc_etr_sink_ops = {
>>>    	.enable		= tmc_enable_etr_sink,
>>>    	.disable	= tmc_disable_etr_sink,
>>> @@ -1890,9 +2017,15 @@ static const struct coresight_ops_panic tmc_etr_sync_ops = {
>>>    	.sync		= tmc_panic_sync_etr,
>>>    };
>>> +static const struct coresight_ops_crashdata tmc_etr_crashdata_ops = {
>>> +	.prepare	= tmc_etr_prepare_crashdata,
>>> +	.unprepare	= tmc_etr_unprepare_crashdata,
>>> +};
>>> +
>>>    const struct coresight_ops tmc_etr_cs_ops = {
>>>    	.sink_ops	= &tmc_etr_sink_ops,
>>>    	.panic_ops	= &tmc_etr_sync_ops,
>>> +	.crashdata_ops	= &tmc_etr_crashdata_ops,
>>>    };
>>>    int tmc_read_prepare_etr(struct tmc_drvdata *drvdata)
>>> @@ -1910,6 +2043,14 @@ int tmc_read_prepare_etr(struct tmc_drvdata *drvdata)
>>>    		goto out;
>>>    	}
>>> +	if (coresight_get_mode(drvdata->csdev) == CS_MODE_READ_CRASHDATA) {
>>> +		ret = tmc_read_prepare_crashdata(drvdata);
>>> +		if (ret)
>>> +			goto out;
>>> +		else
>>> +			goto mode_valid;
>>> +	}
>>> +
>>>    	/*
>>>    	 * We can safely allow reads even if the ETR is operating in PERF mode,
>>>    	 * since the sysfs session is captured in mode specific data.
>>> @@ -1924,6 +2065,7 @@ int tmc_read_prepare_etr(struct tmc_drvdata *drvdata)
>>>    	if (coresight_get_mode(drvdata->csdev) == CS_MODE_SYSFS)
>>>    		__tmc_etr_disable_hw(drvdata);
>>> +mode_valid:
>>>    	drvdata->reading = true;
>>>    out:
>>>    	spin_unlock_irqrestore(&drvdata->spinlock, flags);
>>> @@ -1942,6 +2084,12 @@ int tmc_read_unprepare_etr(struct tmc_drvdata *drvdata)
>>>    	spin_lock_irqsave(&drvdata->spinlock, flags);
>>> +	if (coresight_get_mode(drvdata->csdev) == CS_MODE_READ_CRASHDATA) {
>>> +		sysfs_buf = drvdata->sysfs_crash_buf;
>>> +		tmc_read_unprepare_crashdata(drvdata);
>>> +		goto out;
>>> +	}
>>> +
>>>    	/* RE-enable the TMC if need be */
>>>    	if (coresight_get_mode(drvdata->csdev) == CS_MODE_SYSFS) {
>>>    		/*
>>> @@ -1959,6 +2107,7 @@ int tmc_read_unprepare_etr(struct tmc_drvdata *drvdata)
>>>    		drvdata->sysfs_buf = NULL;
>>>    	}
>>> +out:
>>>    	drvdata->reading = false;
>>>    	spin_unlock_irqrestore(&drvdata->spinlock, flags);
>>> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
>>> index 35beee53584a..6102eea3fc79 100644
>>> --- a/drivers/hwtracing/coresight/coresight-tmc.h
>>> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
>>> @@ -201,6 +201,8 @@ struct tmc_resrv_buf {
>>>     * @base:	memory mapped base address for this component.
>>>     * @csdev:	component vitals needed by the framework.
>>>     * @miscdev:	specifics to handle "/dev/xyz.tmc" entry.
>>> + * @crashdev:	specifics to handle "/dev/crash_tmc_xyz" entry for reading
>>> + *		crash tracedata.
>>>     * @spinlock:	only one at a time pls.
>>>     * @pid:	Process ID of the process being monitored by the session
>>>     *		that is using this component.
>>> @@ -219,7 +221,10 @@ struct tmc_resrv_buf {
>>>     * @idr_mutex:	Access serialisation for idr.
>>>     * @sysfs_buf:	SYSFS buffer for ETR.
>>>     * @perf_buf:	PERF buffer for ETR.
>>> - * @crash_tbuf:	Used by ETR as hardware trace buffer and for trace data
>>> + * @sysfs_crash_buf: Sysfs crashdata buffer for ETR. This is a special purpose
>>> + *		buffer that is used only for mapping the trace buffer from
>>> + *		previous crash and not for capturing trace.
>>> + * @crash_tbuf: Used by ETR as hardware trace buffer and for trace data
>>>     *		retention (after crash) only when ETR_MODE_RESRV buffer
>>>     *		mode is enabled. Used by ETF for trace data retention
>>>     *		(after crash) by default.
>>> @@ -231,6 +236,7 @@ struct tmc_drvdata {
>>>    	void __iomem		*base;
>>>    	struct coresight_device	*csdev;
>>>    	struct miscdevice	miscdev;
>>> +	struct miscdevice	crashdev;
>>>    	spinlock_t		spinlock;
>>>    	pid_t			pid;
>>>    	bool			reading;
>>> @@ -250,6 +256,7 @@ struct tmc_drvdata {
>>>    	struct mutex		idr_mutex;
>>>    	struct etr_buf		*sysfs_buf;
>>>    	struct etr_buf		*perf_buf;
>>> +	struct etr_buf		*sysfs_crash_buf;
>>>    	struct tmc_resrv_buf	crash_tbuf;
>>>    	struct tmc_resrv_buf	crash_mdata;
>>>    };
>>> @@ -301,6 +308,8 @@ void tmc_flush_and_stop(struct tmc_drvdata *drvdata);
>>>    void tmc_enable_hw(struct tmc_drvdata *drvdata);
>>>    void tmc_disable_hw(struct tmc_drvdata *drvdata);
>>>    u32 tmc_get_memwidth_mask(struct tmc_drvdata *drvdata);
>>> +int tmc_read_prepare_crashdata(struct tmc_drvdata *drvdata);
>>> +int tmc_read_unprepare_crashdata(struct tmc_drvdata *drvdata);
>>>    /* ETB/ETF functions */
>>>    int tmc_read_prepare_etb(struct tmc_drvdata *drvdata);
>>> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
>>> index 6aa54cdb66a2..a7c9fe27ef40 100644
>>> --- a/include/linux/coresight.h
>>> +++ b/include/linux/coresight.h
>>> @@ -309,6 +309,7 @@ enum cs_mode {
>>>    	CS_MODE_DISABLED,
>>>    	CS_MODE_SYSFS,
>>>    	CS_MODE_PERF,
>>> +	CS_MODE_READ_CRASHDATA, /* Trace data from previous crash */
>>>    };
>>>    #define source_ops(csdev)	csdev->ops->source_ops
>>> @@ -317,6 +318,7 @@ enum cs_mode {
>>>    #define helper_ops(csdev)	csdev->ops->helper_ops
>>>    #define ect_ops(csdev)		csdev->ops->ect_ops
>>>    #define panic_ops(csdev)	csdev->ops->panic_ops
>>> +#define crashdata_ops(csdev)	csdev->ops->crashdata_ops
>>>    /**
>>>     * struct coresight_ops_sink - basic operations for a sink
>>> @@ -396,12 +398,23 @@ struct coresight_ops_panic {
>>>    	int (*sync)(struct coresight_device *csdev);
>>>    };
>>> +/**
>>> + * struct coresight_ops_crashdata - Generic device ops for crashdata mode
>>> + *
>>> + * @prepare	: Preparation for reading crashdata mode
>>> + */
>>> +struct coresight_ops_crashdata {
>>> +	int (*prepare)(struct coresight_device *csdev);
>>> +	int (*unprepare)(struct coresight_device *csdev);
>>> +};
>>> +
>>>    struct coresight_ops {
>>>    	const struct coresight_ops_sink *sink_ops;
>>>    	const struct coresight_ops_link *link_ops;
>>>    	const struct coresight_ops_source *source_ops;
>>>    	const struct coresight_ops_helper *helper_ops;
>>>    	const struct coresight_ops_panic *panic_ops;
>>> +	const struct coresight_ops_crashdata *crashdata_ops;
>>>    };
>>>    static inline u32 csdev_access_relaxed_read32(struct csdev_access *csa,
>>
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


