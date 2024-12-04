Return-Path: <devicetree+bounces-127051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EDB9E439C
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 19:43:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 21FDB16385A
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 18:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6371A1A8F83;
	Wed,  4 Dec 2024 18:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="IghSztQA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5C926AFC;
	Wed,  4 Dec 2024 18:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733337826; cv=none; b=gUtMNDR5lya2a+2jTgOnWhB/A/4ZARiK/5f7lUTuItgVRjzDGkMVU18rgvGalNTP3cgjkmjwR2uX3e5anAvoQqmErEoV/qSgI/2DMakS9Ic14V14TPDyBST691qNinCCUvdBX3aYq5Pn77tKnhsp1Dsv9fgJP88ZVeTOyiEu7Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733337826; c=relaxed/simple;
	bh=5wSEAwv9ZZYas1UXJnPxa7NGtU5Mk9ShkBgPciTktag=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=sHcmkFsHxIcTsHKDTwg1LvFMRf7JlLAAoW/GR3YgzbnIfTFc5bd+BK+LyjF5Owdk1ibDbpKIk3+mYRKm77w7DSgLb2sCuoRCdfwksVKO8jhsc5SBbMql37iyxNX0VVMwl8fxLyqmYj3Ck8ycCpMEhBBaA5ieXJkOvTiiR8z7xgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=IghSztQA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B4FlLfU027830;
	Wed, 4 Dec 2024 18:43:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gWYCPZG1h5oWtgWflDOIiJsXuUPPIRwIqK/67p1rrIo=; b=IghSztQA8oiwXVX1
	ocuDsZCvJcMVSftOUtWIyiosWxbnGyAy5ake9vM+bfmBd1zPu+Kg10ZOMLur/ARm
	WBJTTN3S9OramujOaTwpw1O/5A42Z7yKX6XmpnhJYwqLQPuQ1Sj4xtZi3B6Dkzxy
	tyyJlGlWscAEP8k1LYOxM/eb1tFMRM1WRl6KUeFFqdN+0ymOHxovui4glq8kfsU6
	2ItXdcBAObK3qfaDFctSPnFqR0NMj1yWy3mVcxxjCn06OMUIDtedJAY+cDfOF5Dx
	eLIsrL9PKkomfUDckBzbA/l/kO/Av59idqlNmsfK94fTi5C6YidzQpwUBCzTc1cP
	SbKvgA==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439vcen9y1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Dec 2024 18:43:32 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B4IhVM5031057
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 4 Dec 2024 18:43:31 GMT
Received: from [10.216.22.114] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 4 Dec 2024
 10:43:25 -0800
Message-ID: <23f903df-2827-4473-be9f-3c8a94bfa277@quicinc.com>
Date: Thu, 5 Dec 2024 00:13:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] drm/msm: adreno: add plumbing to generate
 bandwidth vote table for GMU
To: <neil.armstrong@linaro.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul
	<sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson
	<andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <freedreno@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>
References: <20241128-topic-sm8x50-gpu-bw-vote-v3-0-81d60c10fb73@linaro.org>
 <20241128-topic-sm8x50-gpu-bw-vote-v3-2-81d60c10fb73@linaro.org>
 <8cf9db06-0718-4c17-9712-d11943bcbe15@quicinc.com>
 <26a1fa02-0f47-40d8-9ba7-b76ba907297d@linaro.org>
Content-Language: en-US
From: Akhil P Oommen <quic_akhilpo@quicinc.com>
In-Reply-To: <26a1fa02-0f47-40d8-9ba7-b76ba907297d@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: xa9OCtUnMQhsShZ-SaqvVgrOxGIY0NS8
X-Proofpoint-ORIG-GUID: xa9OCtUnMQhsShZ-SaqvVgrOxGIY0NS8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=999 adultscore=0 suspectscore=0 spamscore=0
 impostorscore=0 phishscore=0 mlxscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412040143

On 12/2/2024 2:16 PM, Neil Armstrong wrote:
> On 30/11/2024 22:49, Akhil P Oommen wrote:
>> On 11/28/2024 3:55 PM, Neil Armstrong wrote:
>>> The Adreno GPU Management Unit (GMU) can also scale DDR Bandwidth along
>>> the Frequency and Power Domain level, but by default we leave the
>>> OPP core scale the interconnect ddr path.
>>>
>>> While scaling via the interconnect path was sufficient, newer GPUs
>>> like the A750 requires specific vote paremeters and bandwidth to
>>> achieve full functionality.
>>>
>>> In order to calculate vote values used by the GPU Management
>>> Unit (GMU), we need to parse all the possible OPP Bandwidths and
>>> create a vote value to be sent to the appropriate Bus Control
>>> Modules (BCMs) declared in the GPU info struct.
>>>
>>> This vote value is called IB, while on the othe side the GMU also
>>> takes another vote called AB which is a 16bit quantized value
>>> of the bandwidth against the maximum supported bandwidth.
>>>
>>> The vote array will then be used to dynamically generate the GMU
>>> bw_table sent during the GMU power-up.
>>>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---
>>>   drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 174 +++++++++++++++++++++++
>>> +++++++++++
>>>   drivers/gpu/drm/msm/adreno/a6xx_gmu.h |  14 +++
>>>   drivers/gpu/drm/msm/adreno/a6xx_gpu.h |   1 +
>>>   drivers/gpu/drm/msm/adreno/a6xx_hfi.h |   5 +
>>>   4 files changed, 194 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/
>>> msm/adreno/a6xx_gmu.c
>>> index
>>> 14db7376c712d19446b38152e480bd5a1e0a5198..ee2010a01186721dd377f1655fcf05ddaff77131 100644
>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>> @@ -9,6 +9,7 @@
>>>   #include <linux/pm_domain.h>
>>>   #include <linux/pm_opp.h>
>>>   #include <soc/qcom/cmd-db.h>
>>> +#include <soc/qcom/tcs.h>
>>>   #include <drm/drm_gem.h>
>>>     #include "a6xx_gpu.h"
>>> @@ -1287,6 +1288,131 @@ static int a6xx_gmu_memory_probe(struct
>>> a6xx_gmu *gmu)
>>>       return 0;
>>>   }
>>>   +/**
>>> + * struct bcm_db - Auxiliary data pertaining to each Bus Clock
>>> Manager (BCM)
>>> + * @unit: divisor used to convert bytes/sec bw value to an RPMh msg
>>> + * @width: multiplier used to convert bytes/sec bw value to an RPMh msg
>>> + * @vcd: virtual clock domain that this bcm belongs to
>>> + * @reserved: reserved field
>>> + */
>>> +struct bcm_db {
>>> +    __le32 unit;
>>> +    __le16 width;
>>> +    u8 vcd;
>>> +    u8 reserved;
>>> +};
>>> +
>>> +static u64 bcm_div(u64 num, u32 base)
>>> +{
>>> +    /* Ensure that small votes aren't lost. */
>>> +    if (num && num < base)
>>> +        return 1;
>>> +
>>> +    do_div(num, base);
>>> +
>>> +    return num;
>>> +}
>>> +
>>> +static int a6xx_gmu_rpmh_bw_votes_init(const struct a6xx_info *info,
>>> +                       struct a6xx_gmu *gmu)
>>> +{
>>> +    const struct bcm_db *bcm_data[GMU_MAX_BCMS] = { 0 };
>>> +    unsigned int bcm_index, bw_index, bcm_count = 0;
>>> +
>>> +    if (!info->bcms)
>>> +        return 0;
>>> +
>>> +    /* Retrieve BCM data from cmd-db */
>>> +    for (bcm_index = 0; bcm_index < GMU_MAX_BCMS; bcm_index++) {
>>> +        size_t count;
>>> +
>>> +        /* Stop at first unconfigured bcm */
>>> +        if (!info->bcms[bcm_index].name)
>>> +            break;
>>> +
>>> +        bcm_data[bcm_index] = cmd_db_read_aux_data(
>>> +                        info->bcms[bcm_index].name,
>>> +                        &count);
>>> +        if (IS_ERR(bcm_data[bcm_index]))
>>> +            return PTR_ERR(bcm_data[bcm_index]);
>>> +
>>> +        if (!count)
>>> +            return -EINVAL;
>>> +
>>> +        ++bcm_count;
>>> +    }
>>> +
>>> +    /* Generate BCM votes values for each bandwidth & BCM */
>>> +    for (bw_index = 0; bw_index < gmu->nr_gpu_bws; bw_index++) {
>>> +        u32 *data = gmu->gpu_ib_votes[bw_index];
>>> +        u32 bw = gmu->gpu_bw_table[bw_index];
>>> +
>>> +        /* Calculations loosely copied from bcm_aggregate() &
>>> tcs_cmd_gen() */
>>> +        for (bcm_index = 0; bcm_index < bcm_count; bcm_index++) {
>>> +            bool commit = false;
>>> +            u64 peak, vote;
>>> +            u16 width;
>>> +            u32 unit;
>>> +
>>> +            /* Skip unconfigured BCM */
>>> +            if (!bcm_data[bcm_index])
>>> +                continue;
>>> +
>>> +            if (bcm_index == bcm_count - 1 ||
>>> +                (bcm_data[bcm_index + 1] &&
>>> +                 bcm_data[bcm_index]->vcd != bcm_data[bcm_index +
>>> 1]->vcd))
>>> +                commit = true;
>>> +
>>> +            if (!bw) {
>>> +                data[bcm_index] = BCM_TCS_CMD(commit, false, 0, 0);
>>> +                continue;
>>> +            }
>>> +
>>> +            if (info->bcms[bcm_index].fixed) {
>>> +                u32 perfmode = 0;
>>> +
>>> +                if (bw >= info->bcms[bcm_index].perfmode_bw)
>>> +                    perfmode = info->bcms[bcm_index].perfmode;
>>> +
>>> +                data[bcm_index] = BCM_TCS_CMD(commit, true, 0,
>>> perfmode);
>>> +                continue;
>>> +            }
>>> +
>>> +            /* Multiply the bandwidth by the width of the connection */
>>> +            width = le16_to_cpu(bcm_data[bcm_index]->width);
>>> +            peak = bcm_div((u64)bw * width, info-
>>> >bcms[bcm_index].buswidth);
>>> +
>>> +            /* Input bandwidth value is in KBps, scale the value to
>>> BCM unit */
>>> +            unit = le32_to_cpu(bcm_data[bcm_index]->unit);
>>> +            vote = bcm_div(peak * 1000ULL, unit);
>>> +
>>> +            if (vote > BCM_TCS_CMD_VOTE_MASK)
>>> +                vote = BCM_TCS_CMD_VOTE_MASK;
>>
>> use clamp()?
> 
> Yep, I think I could replace bcm_div with clamp
> 
>>
>>> +
>>> +            data[bcm_index] = BCM_TCS_CMD(commit, true, vote, vote);
>>> +        }
>>> +    }
>>> +
>>> +    /* Generate AB votes which are a quantitized bandwidth value */
>>> +    for (bw_index = 0; bw_index < gmu->nr_gpu_bws; bw_index++) {
>>> +        u64 tmp;
>>> +
>>> +        /*
>>> +         * The AB vote consists of a 16 bit wide quantized level
>>> +         * against the maximum supported bandwidth.
>>> +         * Quantization can be calculated as below:
>>> +         * vote = (bandwidth * 2^16) / max bandwidth
>>> +         */
>>> +        tmp = gmu->gpu_bw_table[bw_index] * MAX_AB_VOTE;
>>> +
>>> +        /* Divide by the maximum bandwidth to get a quantized value */
>>> +        gmu->gpu_ab_votes[bw_index] =
>>> +            bcm_div(tmp, gmu->gpu_bw_table[gmu->nr_gpu_bws - 1]);
>>> +    }
>>
>> So I suppose you are trying to vote AB equal to IB. Aggregation logic
>> for both are different. So this will make DDR scale very aggressively. A
>> more reasonable approach would be to vote a % of IB vote (25%?). Ideally
>> we should measure GPU's bandwidth usage and vote that if you are really
>> concerned about stability issues. IB is just a floor vote, GPU can
>> generate way higher traffic.
> 
> I think this should be optimized better in a different patchset, so I would
> like to make the simplest vote possible here to retain functionnality.
> 
> So if I understand I should divide this vote value by 4 ? Downstram uses
> 25% by default
> when no AB was calculated, but what does that mean exactly ?
> 
> Is there a counter somewhere to measure the GPU traffic ?
> 

Agree about splitting out optimizations to separate series. Better to
merge things as early as possible in small chunks.

In this case, the AB is so huge that it makes IB vote irrelevant. You
can get an idea of the aggregration logic if you check the icc driver a
bit. 25% was just a random number that came to my mind. The idea was to
just contribute something to AB vote instead of nothing. Blindly doing
AB vote equal IB vote would push DDR to its max freq most of the time.
And higher DDR increases the overall soc power consumption a lot.

Ideally for GPU, we should measure and vote the actual bandwidth usage.
Because GPU's bandwidth usage varies a lot based on the workload. There
are a couple of GBIF counters that exposes the BW usage. Just check "ram
cycles" in kgsl. That can be a separate series.


>>
>>> +
>>> +    return 0;
>>> +}
>>> +
>>>   /* Return the 'arc-level' for the given frequency */
>>>   static unsigned int a6xx_gmu_get_arc_level(struct device *dev,
>>>                          unsigned long freq)
>>> @@ -1390,12 +1516,15 @@ static int
>>> a6xx_gmu_rpmh_arc_votes_init(struct device *dev, u32 *votes,
>>>    * The GMU votes with the RPMh for itself and on behalf of the GPU
>>> but we need
>>>    * to construct the list of votes on the CPU and send it over.
>>> Query the RPMh
>>>    * voltage levels and build the votes
>>> + * The GMU can also vote for DDR interconnects, use the OPP
>>> bandwidth entries
>>> + * and BCM parameters to build the votes.
>>>    */
>>>     static int a6xx_gmu_rpmh_votes_init(struct a6xx_gmu *gmu)
>>>   {
>>>       struct a6xx_gpu *a6xx_gpu = container_of(gmu, struct a6xx_gpu,
>>> gmu);
>>>       struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
>>> +    const struct a6xx_info *info = adreno_gpu->info->a6xx;
>>>       struct msm_gpu *gpu = &adreno_gpu->base;
>>>       int ret;
>>>   @@ -1407,6 +1536,10 @@ static int a6xx_gmu_rpmh_votes_init(struct
>>> a6xx_gmu *gmu)
>>>       ret |= a6xx_gmu_rpmh_arc_votes_init(gmu->dev, gmu->cx_arc_votes,
>>>           gmu->gmu_freqs, gmu->nr_gmu_freqs, "cx.lvl");
>>>   +    /* Build the interconnect votes */
>>> +    if (info->bcms && gmu->nr_gpu_bws > 1)
>>> +        ret |= a6xx_gmu_rpmh_bw_votes_init(info, gmu);
>>> +
>>>       return ret;
>>>   }
>>>   @@ -1442,10 +1575,43 @@ static int a6xx_gmu_build_freq_table(struct
>>> device *dev, unsigned long *freqs,
>>>       return index;
>>>   }
>>>   +static int a6xx_gmu_build_bw_table(struct device *dev, unsigned
>>> long *bandwidths,
>>> +        u32 size)
>>> +{
>>> +    int count = dev_pm_opp_get_opp_count(dev);
>>
>> I am less concerned about this now since you are not voting real AB BW.
> 
> Sorry I don't understand
> 

I mean here the maximum AB vote is capped to the maximum IB vote in the
DDR table. So when you vote real AB in some SoC SKUs, there may be a
scenario where it could be higher than IB. But that never happens when
the AB is some % of IB.

-Akhil

> Thanks,
> Neil
> 
>>
>> -Akhil.
>>
>>> +    struct dev_pm_opp *opp;
>>> +    int i, index = 0;
>>> +    unsigned int bandwidth = 1;
>>> +
>>> +    /*
>>> +     * The OPP table doesn't contain the "off" bandwidth level so we
>>> need to
>>> +     * add 1 to the table size to account for it
>>> +     */
>>> +
>>> +    if (WARN(count + 1 > size,
>>> +        "The GMU bandwidth table is being truncated\n"))
>>> +        count = size - 1;
>>> +
>>> +    /* Set the "off" bandwidth */
>>> +    bandwidths[index++] = 0;
>>> +
>>> +    for (i = 0; i < count; i++) {
>>> +        opp = dev_pm_opp_find_bw_ceil(dev, &bandwidth, 0);
>>> +        if (IS_ERR(opp))
>>> +            break;
>>> +
>>> +        dev_pm_opp_put(opp);
>>> +        bandwidths[index++] = bandwidth++;
>>> +    }
>>> +
>>> +    return index;
>>> +}
>>> +
>>>   static int a6xx_gmu_pwrlevels_probe(struct a6xx_gmu *gmu)
>>>   {
>>>       struct a6xx_gpu *a6xx_gpu = container_of(gmu, struct a6xx_gpu,
>>> gmu);
>>>       struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
>>> +    const struct a6xx_info *info = adreno_gpu->info->a6xx;
>>>       struct msm_gpu *gpu = &adreno_gpu->base;
>>>         int ret = 0;
>>> @@ -1472,6 +1638,14 @@ static int a6xx_gmu_pwrlevels_probe(struct
>>> a6xx_gmu *gmu)
>>>         gmu->current_perf_index = gmu->nr_gpu_freqs - 1;
>>>   +    /*
>>> +     * The GMU also handles GPU Interconnect Votes so build a list
>>> +     * of DDR bandwidths from the GPU OPP table
>>> +     */
>>> +    if (info->bcms)
>>> +        gmu->nr_gpu_bws = a6xx_gmu_build_bw_table(&gpu->pdev->dev,
>>> +            gmu->gpu_bw_table, ARRAY_SIZE(gmu->gpu_bw_table));
>>> +
>>>       /* Build the list of RPMh votes that we'll send to the GMU */
>>>       return a6xx_gmu_rpmh_votes_init(gmu);
>>>   }
>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.h b/drivers/gpu/drm/
>>> msm/adreno/a6xx_gmu.h
>>> index
>>> 88f18ea6a38a08b5b171709e5020010947a5d347..bdfc106cb3a578c90d7cd84f7d4fe228d761a994 100644
>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.h
>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.h
>>> @@ -21,6 +21,15 @@ struct a6xx_gmu_bo {
>>>     #define GMU_MAX_GX_FREQS    16
>>>   #define GMU_MAX_CX_FREQS    4
>>> +#define GMU_MAX_BCMS        3
>>> +
>>> +struct a6xx_bcm {
>>> +    char *name;
>>> +    unsigned int buswidth;
>>> +    bool fixed;
>>> +    unsigned int perfmode;
>>> +    unsigned int perfmode_bw;
>>> +};
>>>     /*
>>>    * These define the different GMU wake up options - these define
>>> how both the
>>> @@ -85,6 +94,11 @@ struct a6xx_gmu {
>>>       unsigned long gpu_freqs[GMU_MAX_GX_FREQS];
>>>       u32 gx_arc_votes[GMU_MAX_GX_FREQS];
>>>   +    int nr_gpu_bws;
>>> +    unsigned long gpu_bw_table[GMU_MAX_GX_FREQS];
>>> +    u32 gpu_ib_votes[GMU_MAX_GX_FREQS][GMU_MAX_BCMS];
>>> +    u16 gpu_ab_votes[GMU_MAX_GX_FREQS];
>>> +
>>>       int nr_gmu_freqs;
>>>       unsigned long gmu_freqs[GMU_MAX_CX_FREQS];
>>>       u32 cx_arc_votes[GMU_MAX_CX_FREQS];
>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h b/drivers/gpu/drm/
>>> msm/adreno/a6xx_gpu.h
>>> index
>>> 4aceffb6aae89c781facc2a6e4a82b20b341b6cb..9201a53dd341bf432923ffb44947e015208a3d02 100644
>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
>>> @@ -44,6 +44,7 @@ struct a6xx_info {
>>>       u32 gmu_chipid;
>>>       u32 gmu_cgc_mode;
>>>       u32 prim_fifo_threshold;
>>> +    const struct a6xx_bcm *bcms;
>>>   };
>>>     struct a6xx_gpu {
>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_hfi.h b/drivers/gpu/drm/
>>> msm/adreno/a6xx_hfi.h
>>> index
>>> 528110169398f69f16443a29a1594d19c36fb595..52ba4a07d7b9a709289acd244a751ace9bdaab5d 100644
>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_hfi.h
>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_hfi.h
>>> @@ -173,6 +173,11 @@ struct a6xx_hfi_gx_bw_perf_vote_cmd {
>>>       u32 bw;
>>>   };
>>>   +#define AB_VOTE_MASK        GENMASK(31, 16)
>>> +#define MAX_AB_VOTE        (FIELD_MAX(AB_VOTE_MASK) - 1)
>>> +#define AB_VOTE(vote)        FIELD_PREP(AB_VOTE_MASK, (vote))
>>> +#define AB_VOTE_ENABLE        BIT(8)
>>> +
>>>   #define HFI_H2F_MSG_PREPARE_SLUMBER 33
>>>     struct a6xx_hfi_prep_slumber_cmd {
>>>
>>
> 


