Return-Path: <devicetree+bounces-125781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BFF9DF306
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 21:36:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D4D3281350
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 20:36:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9870C1A9B4E;
	Sat, 30 Nov 2024 20:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="ALjNQPF4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC6317BD3;
	Sat, 30 Nov 2024 20:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732998997; cv=none; b=XjremXYjGuJI9cL8e2JoszSrQr4nIUfVrIUnM+lmiYYjP+aA7jKE2cgk1CYaIFlu2V5Hbqly4W70AqMQXJBHUc8BfUjev6oIv7qqeMitm1vcfyhinPeKJ+TGBedOYw8rqaLTApsPbCglaMu55pxoOydj0pM5kI75VDevKsOX8iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732998997; c=relaxed/simple;
	bh=OsJI2GlzZpnDwss4uevghjqueCgGyceoM/v11zF9K9Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=NBJEu13fF8VktVX8CUDCz9o8nl0+BMwQhHaqYa55pYyeNCGSFf8dlaq+bB6uR4L/VtWsW4S+PzWgPnL1quKY+IIUmmzub8FpGQ5tP72TU+IBXXf0q6hpyVcV9dcZQZ29Ikau/HtCjezIVD9zzVJ9sQ8aRU02zGzGtlRcG5Kkh5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=ALjNQPF4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AUKaNoZ023914;
	Sat, 30 Nov 2024 20:36:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jBilZMczO56ClehTnmT5+niZ+QZlwbtADa5hCgDymhw=; b=ALjNQPF4M3EHp50y
	2tHzcKR5AQ+mvadVv3wtuYO1t42HAQrQXaN1Tpi4wlNSgKl2KGbI4Rjwh9dvUMUV
	HjL0HDEP44xhmbCc9/aocjj66bH5kyziuCXSc7L0+GTDQJVj8fVObMRURQcBPL2r
	jiGD7oWhfD0Q87T25JUsHuaI5FU9PZECREEY/2W/NjC2+EyYIwKA/ln4pXrNe6To
	hVZTGgTmrHaBUA0J2e94M7nwKHq+ENCuWjoJGo6qzFfWCJiFsNILo4M9Hhrgabck
	iaCxgP9CyFkd/OBDV2z6IS+KugLM2m3/uz5yWYs4aCj3TQr7AzPZz9nK0Ug9YbgH
	xfuUmQ==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437rde9f76-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 30 Nov 2024 20:36:22 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AUKaLw4005685
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 30 Nov 2024 20:36:21 GMT
Received: from [10.216.58.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sat, 30 Nov
 2024 12:36:14 -0800
Message-ID: <512701db-cdc9-44f3-819f-23752e28f06e@quicinc.com>
Date: Sun, 1 Dec 2024 02:06:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/11] drm/msm: adreno: add plumbing to generate
 bandwidth vote table for GMU
To: <neil.armstrong@linaro.org>
CC: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        "Stephen
 Boyd" <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Clark
	<robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio
	<konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        "Dmitry
 Baryshkov" <dmitry.baryshkov@linaro.org>,
        Marijn Suijten
	<marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, "Simona
 Vetter" <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob
 Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor
 Dooley <conor+dt@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>, <linux-pm@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>
References: <20241119-topic-sm8x50-gpu-bw-vote-v2-0-4deb87be2498@linaro.org>
 <20241119-topic-sm8x50-gpu-bw-vote-v2-5-4deb87be2498@linaro.org>
 <20241123212246.46hdznrgusr2pj4v@hu-akhilpo-hyd.qualcomm.com>
 <20241123224648.kgc6hxdsgz4shhw4@hu-akhilpo-hyd.qualcomm.com>
 <1f322b31-a516-4ff8-84b1-5000cdfc1c4a@linaro.org>
 <16e646ff-7bc1-4dad-9fcd-d4346c1dde96@quicinc.com>
 <85977827-5f17-4071-a8a5-adefadce0ca2@linaro.org>
Content-Language: en-US
From: Akhil P Oommen <quic_akhilpo@quicinc.com>
In-Reply-To: <85977827-5f17-4071-a8a5-adefadce0ca2@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 0Ydj3YHhyh5-bIisGSVMky0nJMo1blpF
X-Proofpoint-GUID: 0Ydj3YHhyh5-bIisGSVMky0nJMo1blpF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 adultscore=0 malwarescore=0 mlxlogscore=999 phishscore=0 suspectscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411300175

On 11/27/2024 9:17 PM, neil.armstrong@linaro.org wrote:
> On 27/11/2024 16:29, Akhil P Oommen wrote:
>> On 11/25/2024 1:42 PM, Neil Armstrong wrote:
>>> On 23/11/2024 23:46, Akhil P Oommen wrote:
>>>> On Sun, Nov 24, 2024 at 02:52:46AM +0530, Akhil P Oommen wrote:
>>>>> On Tue, Nov 19, 2024 at 06:56:40PM +0100, Neil Armstrong wrote:
>>>>>> The Adreno GMU Management Unit (GMU) can also scale DDR Bandwidth
>>>>>> along
>>>>>> the Frequency and Power Domain level, but by default we leave the
>>>>>> OPP core scale the interconnect ddr path.
>>>>>>
>>>>>> In order to calculate vote values used by the GPU Management
>>>>>> Unit (GMU), we need to parse all the possible OPP Bandwidths and
>>>>>
>>>>> GMU expects a table of votes for each DDR frequency corners. Can we
>>>>> please try to figure out a way to do that? Generally, we should
>>>>> ensure the
>>>>> data that is send to GMU firmware match downstream exactly. Because,
>>>>> when something breaks in firmware or worst, at SoC level, it will be
>>>>> pretty
>>>>> hard to narrow down the issue. So, I prefer to be very conservative
>>>>> about
>>>>> this.
>>>>>
>>>>> KGSL keeps the ddr frequency table in the devicetree. That helps to
>>>>> keep
>>>>> the driver lean, but I am not sure if that is viable upstream.
>>>
>>> No it's not, opp table is here for that, and we can reproduce the same
>>> bahaviour by parsing all the bandwidths in the opp table.
>>>
>>>>>
>>>>> -Akhil.
>>>>>
>>>>>> create a vote value to be sent to the appropriate Bus Control
>>>>>> Modules (BCMs) declared in the GPU info struct.
>>>>>>
>>>>>> The vote array will then be used to dynamically generate the GMU
>>>>>> bw_table sent during the GMU power-up.
>>>>>>
>>>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>>>> ---
>>>>>>    drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 153 ++++++++++++++++++++++
>>>>>> ++++++++++++
>>>>>>    drivers/gpu/drm/msm/adreno/a6xx_gmu.h |  14 ++++
>>>>>>    drivers/gpu/drm/msm/adreno/a6xx_gpu.h |   1 +
>>>>>>    3 files changed, 168 insertions(+)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/
>>>>>> drm/msm/adreno/a6xx_gmu.c
>>>>>> index
>>>>>> 14db7376c712d19446b38152e480bd5a1e0a5198..f6814d92a4edb29ba8a34a34aabb8b2324e9c6a4 100644
>>>>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>>>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>>>>> @@ -9,6 +9,7 @@
>>>>>>    #include <linux/pm_domain.h>
>>>>>>    #include <linux/pm_opp.h>
>>>>>>    #include <soc/qcom/cmd-db.h>
>>>>>> +#include <soc/qcom/tcs.h>
>>>>>>    #include <drm/drm_gem.h>
>>>>>>      #include "a6xx_gpu.h"
>>>>>> @@ -1287,6 +1288,109 @@ static int a6xx_gmu_memory_probe(struct
>>>>>> a6xx_gmu *gmu)
>>>>>>        return 0;
>>>>>>    }
>>>>>>    +/**
>>>>>> + * struct bcm_db - Auxiliary data pertaining to each Bus Clock
>>>>>> Manager (BCM)
>>>>>> + * @unit: divisor used to convert bytes/sec bw value to an RPMh msg
>>>>>> + * @width: multiplier used to convert bytes/sec bw value to an RPMh
>>>>>> msg
>>>>>> + * @vcd: virtual clock domain that this bcm belongs to
>>>>>> + * @reserved: reserved field
>>>>>> + */
>>>>>> +struct bcm_db {
>>>>>> +    __le32 unit;
>>>>>> +    __le16 width;
>>>>>> +    u8 vcd;
>>>>>> +    u8 reserved;
>>>>>> +};
>>>>
>>>> Shouldn't this be a packed struct? It is naturally aligned, but still!
>>>
>>> It's used as-is in the interconnecty driver, so I assume it's fine.
>>>
>>>>
>>>>>> +
>>>>>> +static u64 bcm_div(u64 num, u32 base)
>>>>>> +{
>>>>>> +    /* Ensure that small votes aren't lost. */
>>>>>> +    if (num && num < base)
>>>>>> +        return 1;
>>>>>> +
>>>>>> +    do_div(num, base);
>>>>>> +
>>>>>> +    return num;
>>>>>> +}
>>>>>> +
>>>>>> +static int a6xx_gmu_rpmh_bw_votes_init(const struct a6xx_info *info,
>>>>>> +                       struct a6xx_gmu *gmu)
>>>>>> +{
>>>>>> +    const struct bcm_db *bcm_data[GMU_MAX_BCMS] = { 0 };
>>>>>> +    unsigned int bcm_index, bw_index;
>>>>>> +
>>>>>> +    /* Retrieve BCM data from cmd-db */
>>>>>> +    for (bcm_index = 0; bcm_index < GMU_MAX_BCMS; bcm_index++) {
>>>>>> +        size_t count;
>>>>>> +
>>>>>> +        /* Skip unconfigured BCM */
>>>>>> +        if (!info->bcm[bcm_index].name)
>>>>>> +            continue;
>>>>>> +
>>>>>> +        bcm_data[bcm_index] = cmd_db_read_aux_data(
>>>>>> +                        info->bcm[bcm_index].name,
>>>>>> +                        &count);
>>>>>> +        if (IS_ERR(bcm_data[bcm_index]))
>>>>>> +            return PTR_ERR(bcm_data[bcm_index]);
>>>>>> +
>>>>>> +        if (!count)
>>>>>> +            return -EINVAL;
>>>>>> +    }
>>>>>> +
>>>>>> +    /* Generate BCM votes values for each bandwidth & BCM */
>>>>>> +    for (bw_index = 0; bw_index < gmu->nr_gpu_bws; bw_index++) {
>>>>>> +        u32 *data = gmu->gpu_bw_votes[bw_index];
>>>>>> +        u32 bw = gmu->gpu_bw_table[bw_index];
>>>>>> +
>>>>>> +        /* Calculations loosely copied from bcm_aggregate() &
>>>>>> tcs_cmd_gen() */
>>>>>> +        for (bcm_index = 0; bcm_index < GMU_MAX_BCMS; bcm_index++) {
>>>>>> +            bool commit = false;
>>>>>> +            u64 peak, vote;
>>>>>> +            u16 width;
>>>>>> +            u32 unit;
>>>>>> +
>>>>>> +            /* Skip unconfigured BCM */
>>>>>> +            if (!info->bcm[bcm_index].name || !bcm_data[bcm_index])
>>>>>> +                continue;
>>>>>> +
>>>>>> +            if (bcm_index == GMU_MAX_BCMS - 1 ||
>>>>>> +                (bcm_data[bcm_index + 1] &&
>>>>>> +                 bcm_data[bcm_index]->vcd != bcm_data[bcm_index +
>>>>>> 1]->vcd))
>>>>>> +                commit = true;
>>>>>> +
>>>>>> +            if (!bw) {
>>>>>> +                data[bcm_index] = BCM_TCS_CMD(commit, false, 0, 0);
>>>>>> +                continue;
>>>>>> +            }
>>>>>> +
>>>>>> +            if (info->bcm[bcm_index].fixed) {
>>>>>> +                u32 perfmode = 0;
>>>>>> +
>>>>>> +                if (bw >= info->bcm[bcm_index].perfmode_bw)
>>>>>> +                    perfmode = info->bcm[bcm_index].perfmode;
>>>>>> +
>>>>>> +                data[bcm_index] = BCM_TCS_CMD(commit, true, 0,
>>>>>> perfmode);
>>>>>> +                continue;
>>>>>> +            }
>>>>>> +
>>>>>> +            /* Multiply the bandwidth by the width of the
>>>>>> connection */
>>>>>> +            width = le16_to_cpu(bcm_data[bcm_index]->width);
>>>>>> +            peak = bcm_div((u64)bw * width, info-
>>>>>>> bcm[bcm_index].buswidth);
>>>>>> +
>>>>>> +            /* Input bandwidth value is in KBps, scale the value to
>>>>>> BCM unit */
>>>>>> +            unit = le32_to_cpu(bcm_data[bcm_index]->unit);
>>>>>> +            vote = bcm_div(peak * 1000ULL, unit);
>>>>>> +
>>>>>> +            if (vote > BCM_TCS_CMD_VOTE_MASK)
>>>>>> +                vote = BCM_TCS_CMD_VOTE_MASK;
>>>>>> +
>>>>>> +            data[bcm_index] = BCM_TCS_CMD(commit, true, vote, vote);
>>>>>> +        }
>>>>>> +    }
>>>>>> +
>>>>>> +    return 0;
>>>>>> +}
>>>>>> +
>>>>>>    /* Return the 'arc-level' for the given frequency */
>>>>>>    static unsigned int a6xx_gmu_get_arc_level(struct device *dev,
>>>>>>                           unsigned long freq)
>>>>>> @@ -1390,12 +1494,15 @@ static int
>>>>>> a6xx_gmu_rpmh_arc_votes_init(struct device *dev, u32 *votes,
>>>>>>     * The GMU votes with the RPMh for itself and on behalf of the GPU
>>>>>> but we need
>>>>>>     * to construct the list of votes on the CPU and send it over.
>>>>>> Query the RPMh
>>>>>>     * voltage levels and build the votes
>>>>>> + * The GMU can also vote for DDR interconnects, use the OPP
>>>>>> bandwidth entries
>>>>>> + * and BCM parameters to build the votes.
>>>>>>     */
>>>>>>      static int a6xx_gmu_rpmh_votes_init(struct a6xx_gmu *gmu)
>>>>>>    {
>>>>>>        struct a6xx_gpu *a6xx_gpu = container_of(gmu, struct a6xx_gpu,
>>>>>> gmu);
>>>>>>        struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
>>>>>> +    const struct a6xx_info *info = adreno_gpu->info->a6xx;
>>>>>>        struct msm_gpu *gpu = &adreno_gpu->base;
>>>>>>        int ret;
>>>>>>    @@ -1407,6 +1514,10 @@ static int a6xx_gmu_rpmh_votes_init(struct
>>>>>> a6xx_gmu *gmu)
>>>>>>        ret |= a6xx_gmu_rpmh_arc_votes_init(gmu->dev, gmu-
>>>>>> >cx_arc_votes,
>>>>>>            gmu->gmu_freqs, gmu->nr_gmu_freqs, "cx.lvl");
>>>>>>    +    /* Build the interconnect votes */
>>>>>> +    if (adreno_gpu->info->features & ADRENO_FEAT_GMU_BW_VOTE)
>>>>>> +        ret |= a6xx_gmu_rpmh_bw_votes_init(info, gmu);
>>>>>> +
>>>>>>        return ret;
>>>>>>    }
>>>>>>    @@ -1442,6 +1553,38 @@ static int a6xx_gmu_build_freq_table(struct
>>>>>> device *dev, unsigned long *freqs,
>>>>>>        return index;
>>>>>>    }
>>>>>>    +static int a6xx_gmu_build_bw_table(struct device *dev, unsigned
>>>>>> long *bandwidths,
>>>>>> +        u32 size)
>>>>>> +{
>>>>>> +    int count = dev_pm_opp_get_opp_count(dev);
>>>>
>>>> I suppose this doesn't count the opps which are not supported by the
>>>> SKU. If we can go through *all* OPPs in the opp table irrespective of
>>>> the SKU, we will get something close to a full DDR bw table I mentioned
>>>> in the prevous mail.
>>>
>>> It parses _all_ bandwitdh declared in the opp table, without any
>>> discard,
>>> so yes we're close to a full DDR table. It only lacks a few low
>>> bandwidths.
>>>
>> Isn't opp_table->opp_list created after filtering with supported_hw
>> bitmask?
> 
> Sure, but opp filtering is not supported on a7xx, and nevetheless only
> the high OPPs would be filtered out, so I don't understand why it would
> matter ?
> 
> As of today, the gx_arc_votes are already constructed the exact same way
> I build the BW vote table, so why the BW table should be the ____exact____
> same as downstream while we don't care about the gx_arc_votes ?
> 

Sorry to comment on the older revision, but how is arc votes table
different from kgsl? Just want to check if we have a problem. It should
match downstream driver exactly.

-Akhil

> Neil
> 
>>
>> -Akhil.
>>>>
>>>>>> +    struct dev_pm_opp *opp;
>>>>>> +    int i, index = 0;
>>>>>> +    unsigned int bandwidth = 1;
>>>>>> +
>>>>>> +    /*
>>>>>> +     * The OPP table doesn't contain the "off" bandwidth level so
>>>>>> we need to
>>>>>> +     * add 1 to the table size to account for it
>>>>>> +     */
>>>>>> +
>>>>>> +    if (WARN(count + 1 > size,
>>>>>> +        "The GMU bandwidth table is being truncated\n"))
>>>>>> +        count = size - 1;
>>>>>> +
>>>>>> +    /* Set the "off" bandwidth */
>>>>>> +    bandwidths[index++] = 0;
>>>>>> +
>>>>>> +    for (i = 0; i < count; i++) {
>>>>>> +        opp = dev_pm_opp_find_bw_ceil(dev, &bandwidth, 0);
>>>>>> +        if (IS_ERR(opp))
>>>>>> +            break;
>>>>>> +
>>>>>> +        dev_pm_opp_put(opp);
>>>>>> +        bandwidths[index++] = bandwidth++;
>>>>>> +    }
>>>>>> +
>>>>>> +    return index;
>>>>>> +}
>>>>>> +
>>>>>>    static int a6xx_gmu_pwrlevels_probe(struct a6xx_gmu *gmu)
>>>>>>    {
>>>>>>        struct a6xx_gpu *a6xx_gpu = container_of(gmu, struct a6xx_gpu,
>>>>>> gmu);
>>>>>> @@ -1472,6 +1615,16 @@ static int a6xx_gmu_pwrlevels_probe(struct
>>>>>> a6xx_gmu *gmu)
>>>>>>          gmu->current_perf_index = gmu->nr_gpu_freqs - 1;
>>>>>>    +    /*
>>>>>> +     * The GMU also handles GPU Interconnect Votes so build a list
>>>>>> +     * of DDR bandwidths from the GPU OPP table
>>>>>> +     */
>>>>>> +    if (adreno_gpu->info->features & ADRENO_FEAT_GMU_BW_VOTE)
>>>>>> +        gmu->nr_gpu_bws = a6xx_gmu_build_bw_table(&gpu->pdev->dev,
>>>>>> +            gmu->gpu_bw_table, ARRAY_SIZE(gmu->gpu_bw_table));
>>>>>> +
>>>>>> +    gmu->current_perf_index = gmu->nr_gpu_freqs - 1;
>>>>
>>>> duplicate line.
>>>>
>>>>>> +
>>>>>>        /* Build the list of RPMh votes that we'll send to the GMU */
>>>>>>        return a6xx_gmu_rpmh_votes_init(gmu);
>>>>>>    }
>>>>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.h b/drivers/gpu/
>>>>>> drm/msm/adreno/a6xx_gmu.h
>>>>>> index
>>>>>> b4a79f88ccf45cfe651c86d2a9da39541c5772b3..03603eadc0f9ed866899c95e99f333a511ebc3c1 100644
>>>>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.h
>>>>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.h
>>>>>> @@ -19,6 +19,16 @@ struct a6xx_gmu_bo {
>>>>>>        u64 iova;
>>>>>>    };
>>>>>>    +#define GMU_MAX_BCMS    3
>>>>>> +
>>>>>> +struct a6xx_bcm {
>>>>>> +    char *name;
>>>>>> +    unsigned int buswidth;
>>>>>> +    bool fixed;
>>>>>> +    unsigned int perfmode;
>>>>>> +    unsigned int perfmode_bw;
>>>>>> +};
>>>>>> +
>>>>>>    /*
>>>>>>     * These define the different GMU wake up options - these define
>>>>>> how both the
>>>>>>     * CPU and the GMU bring up the hardware
>>>>>> @@ -82,6 +92,10 @@ struct a6xx_gmu {
>>>>>>        unsigned long gpu_freqs[16];
>>>>>>        u32 gx_arc_votes[16];
>>>>>>    +    int nr_gpu_bws;
>>>>>> +    unsigned long gpu_bw_table[16];
>>>>>> +    u32 gpu_bw_votes[16][GMU_MAX_BCMS];
>>>>>> +
>>>>>>        int nr_gmu_freqs;
>>>>>>        unsigned long gmu_freqs[4];
>>>>>>        u32 cx_arc_votes[4];
>>>>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h b/drivers/gpu/
>>>>>> drm/msm/adreno/a6xx_gpu.h
>>>>>> index
>>>>>> 4aceffb6aae89c781facc2a6e4a82b20b341b6cb..5b80919e595fa1ba0a3afcca55feb89e60870cb1 100644
>>>>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
>>>>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
>>>>>> @@ -44,6 +44,7 @@ struct a6xx_info {
>>>>>>        u32 gmu_chipid;
>>>>>>        u32 gmu_cgc_mode;
>>>>>>        u32 prim_fifo_threshold;
>>>>>> +    const struct a6xx_bcm bcm[GMU_MAX_BCMS];
>>>>
>>>> This table is duplicated a lot. Lets keep a pointer instead. We can
>>>> probably use
>>>> this pointer as a flag to check for GMU_IB_VOTE support too.
>>>
>>> It's partially duplicated, basically only the permode bits and level is
>>> different.
>>>
>>> We can move it out when we support more GPUs with this feature.
>>>
>>> Neil
>>>
>>>>
>>>> -Akhil
>>>>
>>>>>>    };
>>>>>>      struct a6xx_gpu {
>>>>>>
>>>>>> -- 
>>>>>> 2.34.1
>>>>>>
>>>
>>
> 


