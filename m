Return-Path: <devicetree+bounces-37928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB66846D59
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 11:07:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A7760B2A5EA
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 10:06:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F85E77652;
	Fri,  2 Feb 2024 10:06:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA1A87868B;
	Fri,  2 Feb 2024 10:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706868390; cv=none; b=uPstxB8lfXc3WwrBeclQ0tUS+iVWGFcAYVFJeUMBi1UBseThTLt/vrejOLmRbbM4GViuHSZXAS/9ztpIMnMKdxHZT1SCPOdd8V/QAg4RHQWX/NWX12oPs3HLfTJVgwUISuu20Mw9QPFH7CxHqOH6Bh4PO+0mqhDEan1AgIh9RGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706868390; c=relaxed/simple;
	bh=3OVUz3fhmUZDE1K2CH+lg7SvfKOucbok5xE+bDS26N0=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=aeoi8x4DDVPJFMt7vGqI2/gohrur+LdLJGu4/f5mIPyn01tNIODK72q4qxZoXk6+odEJi4+ttfnnQynSOdSB5Vn/CA/GMICiSUKtCMfQFBMvAOCZIV5U4miyUmL5wch8uu2wOQezt4YMIgM6HaUBFq4dUtlqT6Rf3ph0Z1n0Hws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6840EDA7;
	Fri,  2 Feb 2024 02:07:09 -0800 (PST)
Received: from [10.57.9.194] (unknown [10.57.9.194])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 82D0D3F5A1;
	Fri,  2 Feb 2024 02:06:24 -0800 (PST)
Message-ID: <265086d1-8398-49f8-b873-36194c44505a@arm.com>
Date: Fri, 2 Feb 2024 10:06:23 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 05/10] coresight-tpda: Add support to configure CMB
 element
Content-Language: en-GB
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: Tao Zhang <quic_taozha@quicinc.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Konrad Dybcio <konradybcio@gmail.com>, Mike Leach <mike.leach@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Jinlong Mao <quic_jinlmao@quicinc.com>, Leo Yan <leo.yan@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Tingwei Zhang <quic_tingweiz@quicinc.com>,
 Yuanfang Zhang <quic_yuanfang@quicinc.com>,
 Trilok Soni <quic_tsoni@quicinc.com>, Song Chai <quic_songchai@quicinc.com>,
 linux-arm-msm@vger.kernel.org, andersson@kernel.org
References: <1706866364-19861-1-git-send-email-quic_taozha@quicinc.com>
 <1706866364-19861-6-git-send-email-quic_taozha@quicinc.com>
 <58e91497-1794-46d9-a935-fc23f327f32b@arm.com>
In-Reply-To: <58e91497-1794-46d9-a935-fc23f327f32b@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/02/2024 09:45, Suzuki K Poulose wrote:
> On 02/02/2024 09:32, Tao Zhang wrote:
>> Read the CMB element size from the device tree. Set the register
>> bit that controls the CMB element size of the corresponding port.
>>
>> Reviewed-by: James Clark <james.clark@arm.com>
>> Signed-off-by: Tao Zhang <quic_taozha@quicinc.com>
>> Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
>> ---
>>   drivers/hwtracing/coresight/coresight-tpda.c | 125 +++++++++++--------
>>   drivers/hwtracing/coresight/coresight-tpda.h |   6 +
>>   2 files changed, 81 insertions(+), 50 deletions(-)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-tpda.c 
>> b/drivers/hwtracing/coresight/coresight-tpda.c
>> index 4ac954f4bc13..27d567f4c8bf 100644
>> --- a/drivers/hwtracing/coresight/coresight-tpda.c
>> +++ b/drivers/hwtracing/coresight/coresight-tpda.c
>> @@ -18,6 +18,7 @@
>>   #include "coresight-priv.h"
>>   #include "coresight-tpda.h"
>>   #include "coresight-trace-id.h"
>> +#include "coresight-tpdm.h"
>>   DEFINE_CORESIGHT_DEVLIST(tpda_devs, "tpda");
>> @@ -28,24 +29,59 @@ static bool coresight_device_is_tpdm(struct 
>> coresight_device *csdev)
>>               CORESIGHT_DEV_SUBTYPE_SOURCE_TPDM);
>>   }
>> +static void tpdm_clear_element_size(struct coresight_device *csdev)
> 
> I just noticed this anomaly. This is supposed to be :
> 
> tpda_clear_element_size() ? I can fix it up locally.
> 
> 
> Suzuki
> 
> 
>> +{
>> +    struct tpda_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
>> +
>> +    drvdata->dsb_esize = 0;
>> +    drvdata->cmb_esize = 0;
>> +}
>> +
>> +static void tpda_set_element_size(struct tpda_drvdata *drvdata, u32 
>> *val)
>> +{
>> +    /* Clear all relevant fields */
>> +    *val &= ~(TPDA_Pn_CR_DSBSIZE | TPDA_Pn_CR_CMBSIZE);
>> +
>> +    if (drvdata->dsb_esize == 64)
>> +        *val |= TPDA_Pn_CR_DSBSIZE;
>> +    else if (drvdata->dsb_esize == 32)
>> +        *val &= ~TPDA_Pn_CR_DSBSIZE;
>> +
>> +    if (drvdata->cmb_esize == 64)
>> +        *val |= FIELD_PREP(TPDA_Pn_CR_CMBSIZE, 0x2);
>> +    else if (drvdata->cmb_esize == 32)
>> +        *val |= FIELD_PREP(TPDA_Pn_CR_CMBSIZE, 0x1);
>> +    else if (drvdata->cmb_esize == 8)
>> +        *val &= ~TPDA_Pn_CR_CMBSIZE;
>> +}
>> +
>>   /*
>> - * Read the DSB element size from the TPDM device
>> + * Read the element size from the TPDM device. One TPDM must have at 
>> least one of the
>> + * element size property.
>>    * Returns
>> - *    The dsb element size read from the devicetree if available.
>> - *    0 - Otherwise, with a warning once.
>> + *    0 - The element size property is read
>> + *    Others - Cannot read the property of the element size
>>    */
>> -static int tpdm_read_dsb_element_size(struct coresight_device *csdev)
>> +static int tpdm_read_element_size(struct tpda_drvdata *drvdata,
>> +                  struct coresight_device *csdev)
>>   {
>> -    int rc = 0;
>> -    u8 size = 0;
>> +    int rc = -EINVAL;
>> +    struct tpdm_drvdata *tpdm_data = dev_get_drvdata(csdev->dev.parent);
>> +
>> +    if (tpdm_has_dsb_dataset(tpdm_data)) {
>> +        rc = fwnode_property_read_u8(dev_fwnode(csdev->dev.parent),
>> +                "qcom,dsb-element-size", &drvdata->dsb_esize);
>> +    }
>> +    if (tpdm_has_cmb_dataset(tpdm_data)) {
>> +        rc = fwnode_property_read_u32(dev_fwnode(csdev->dev.parent),
>> +                "qcom,cmb-element-bits", &drvdata->cmb_esize);
>> +    }
>> -    rc = fwnode_property_read_u8(dev_fwnode(csdev->dev.parent),
>> -            "qcom,dsb-element-size", &size);
>>       if (rc)
>>           dev_warn_once(&csdev->dev,
>> -            "Failed to read TPDM DSB Element size: %d\n", rc);
>> +            "Failed to read TPDM Element size: %d\n", rc);
>> -    return size;
>> +    return rc;
>>   }
>>   /*
>> @@ -56,11 +92,12 @@ static int tpdm_read_dsb_element_size(struct 
>> coresight_device *csdev)
>>    * Parameter "inport" is used to pass in the input port number
>>    * of TPDA, and it is set to -1 in the recursize call.
>>    */
>> -static int tpda_get_element_size(struct coresight_device *csdev,
>> +static int tpda_get_element_size(struct tpda_drvdata *drvdata,
>> +                 struct coresight_device *csdev,
>>                    int inport)
>>   {
>> -    int dsb_size = -ENOENT;
>> -    int i, size;
>> +    int rc = 0;
>> +    int i;
>>       struct coresight_device *in;
>>       for (i = 0; i < csdev->pdata->nr_inconns; i++) {
>> @@ -69,30 +106,26 @@ static int tpda_get_element_size(struct 
>> coresight_device *csdev,
>>               continue;
>>           /* Ignore the paths that do not match port */
>> -        if (inport > 0 &&
>> +        if (inport >= 0 &&
>>               csdev->pdata->in_conns[i]->dest_port != inport)
>>               continue;
>>           if (coresight_device_is_tpdm(in)) {
>> -            size = tpdm_read_dsb_element_size(in);
>> +            if (drvdata->dsb_esize || drvdata->cmb_esize)
>> +                return -EEXIST;
>> +            rc = tpdm_read_element_size(drvdata, in);
>> +            if (rc)
>> +                return rc;
>>           } else {
>>               /* Recurse down the path */
>> -            size = tpda_get_element_size(in, -1);
>> -        }
>> -
>> -        if (size < 0)
>> -            return size;
>> -
>> -        if (dsb_size < 0) {
>> -            /* Found a size, save it. */
>> -            dsb_size = size;
>> -        } else {
>> -            /* Found duplicate TPDMs */
>> -            return -EEXIST;
>> +            rc = tpda_get_element_size(drvdata, in, -1);
>> +            if (rc)
>> +                return rc;
>>           }
>>       }
>> -    return dsb_size;
>> +
>> +    return rc;
>>   }
>>   /* Settings pre enabling port control register */
>> @@ -109,7 +142,7 @@ static void tpda_enable_pre_port(struct 
>> tpda_drvdata *drvdata)
>>   static int tpda_enable_port(struct tpda_drvdata *drvdata, int port)
>>   {
>>       u32 val;
>> -    int size;
>> +    int rc;
>>       val = readl_relaxed(drvdata->base + TPDA_Pn_CR(port));
>>       /*
>> @@ -117,29 +150,21 @@ static int tpda_enable_port(struct tpda_drvdata 
>> *drvdata, int port)
>>        * Set the bit to 0 if the size is 32
>>        * Set the bit to 1 if the size is 64
>>        */

The comment above is stale, you need to remove it. I noticed it
after I applied the series for my build tests.

Please could you respin the series with the two issues above fixed ?

Suzuki


>> -    size = tpda_get_element_size(drvdata->csdev, port);
>> -    switch (size) {
>> -    case 32:
>> -        val &= ~TPDA_Pn_CR_DSBSIZE;
>> -        break;
>> -    case 64:
>> -        val |= TPDA_Pn_CR_DSBSIZE;
>> -        break;
>> -    case 0:
>> -        return -EEXIST;
>> -    case -EEXIST:
>> +    tpdm_clear_element_size(drvdata->csdev);
>> +    rc = tpda_get_element_size(drvdata, drvdata->csdev, port);
>> +    if (!rc && (drvdata->dsb_esize || drvdata->cmb_esize)) {
>> +        tpda_set_element_size(drvdata, &val);
>> +        /* Enable the port */
>> +        val |= TPDA_Pn_CR_ENA;
>> +        writel_relaxed(val, drvdata->base + TPDA_Pn_CR(port));
>> +    } else if (rc == -EEXIST)
>>           dev_warn_once(&drvdata->csdev->dev,
>> -            "Detected multiple TPDMs on port %d", -EEXIST);
>> -        return -EEXIST;
>> -    default:
>> -        return -EINVAL;
>> -    }
>> -
>> -    /* Enable the port */
>> -    val |= TPDA_Pn_CR_ENA;
>> -    writel_relaxed(val, drvdata->base + TPDA_Pn_CR(port));
>> +                  "Detected multiple TPDMs on port %d", port);
>> +    else
>> +        dev_warn_once(&drvdata->csdev->dev,
>> +                  "Didn't find TPDM element size");
>> -    return 0;
>> +    return rc;
>>   }
>>   static int __tpda_enable(struct tpda_drvdata *drvdata, int port)
>> diff --git a/drivers/hwtracing/coresight/coresight-tpda.h 
>> b/drivers/hwtracing/coresight/coresight-tpda.h
>> index b3b38fd41b64..19af64120fcf 100644
>> --- a/drivers/hwtracing/coresight/coresight-tpda.h
>> +++ b/drivers/hwtracing/coresight/coresight-tpda.h
>> @@ -10,6 +10,8 @@
>>   #define TPDA_Pn_CR(n)        (0x004 + (n * 4))
>>   /* Aggregator port enable bit */
>>   #define TPDA_Pn_CR_ENA        BIT(0)
>> +/* Aggregator port CMB data set element size bit */
>> +#define TPDA_Pn_CR_CMBSIZE        GENMASK(7, 6)
>>   /* Aggregator port DSB data set element size bit */
>>   #define TPDA_Pn_CR_DSBSIZE        BIT(8)
>> @@ -25,6 +27,8 @@
>>    * @csdev:      component vitals needed by the framework.
>>    * @spinlock:   lock for the drvdata value.
>>    * @enable:     enable status of the component.
>> + * @dsb_esize   Record the DSB element size.
>> + * @cmb_esize   Record the CMB element size.
>>    */
>>   struct tpda_drvdata {
>>       void __iomem        *base;
>> @@ -32,6 +36,8 @@ struct tpda_drvdata {
>>       struct coresight_device    *csdev;
>>       spinlock_t        spinlock;
>>       u8            atid;
>> +    u8            dsb_esize;
>> +    u32            cmb_esize;
>>   };
>>   #endif  /* _CORESIGHT_CORESIGHT_TPDA_H */
> 


