Return-Path: <devicetree+bounces-130871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 297999F1235
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 17:31:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 03FF418813D4
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 16:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D175B1547F5;
	Fri, 13 Dec 2024 16:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BIkpJ37w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3CD13C809
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 16:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734107500; cv=none; b=m2Ry/OmngMTRkFW3zFDMeVe3pFw9Zk3vYf1KiDmu7xXU9pLr0wrrjnnR5LftZw08LmdlXnvhVfg20CVdan6/525oILOG4kTMatyXElJgOkOm7/PFatc/h1q7eMhvhdZfW6ZA0nmpd6teGm1F3S1Ny475sCWLDzM7pNrQwq21fiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734107500; c=relaxed/simple;
	bh=50EklN3H+8pm/zBroBvX0z1zQjU0ddpWvrDrKolGzdw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CW+Zt68P+YDBWzHbg95+bYNQ/9LiHmOeu7gfnGs7kaxgf6rvdqgdSTNZ1QBxYLDsyXb3pjNUFH7rUC5LM2o8xCbYLtRDOmTjTzSpqXAKf9xp2yrOCFTbxDhYIU7AHtXqebXC4woV6xVauhs3q8FOs9VL4Gz803Oa0FNLPewY6Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BIkpJ37w; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD9p3Kt018631
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 16:31:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nOF/Pv8G40IeIzUV5T5zTR4LFB1jVSawnpEDizMFrIY=; b=BIkpJ37wIDcJNHYd
	j1TViYWEO6bip95oZ1yb2wMIULs+quoiBx3nmdDjIqI8MiCRmu1mcpAwJYd9sHoi
	AbN7rkhBtJjpDWkxpCame6VNPBMfab7efXXrTAg05QUva3LxoTU1dt9LsrLEz6fu
	x038vnIchsTpiL8e6xGP40sJrpsZum6I2MPibxblZPk2cA6xHyo9flgKWBi6Enjh
	ktuAuplcIOJsiPZsJTlWpwsWgUyrOkJldIwvh7TRr4iCYuLf7EWOD0n8MbDfhmWM
	wpauYx6XUmtMEaEA7m3Nc4akW7vmoLEe4zwb/h4w2SYWMNQrrvhl5uayuNKjy6aN
	XyA8jg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gjnb133h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 16:31:38 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d8a3cb9dbfso4422506d6.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 08:31:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734107497; x=1734712297;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nOF/Pv8G40IeIzUV5T5zTR4LFB1jVSawnpEDizMFrIY=;
        b=mZc7+g6dyx+4EnJNt8SXkbvyS+96ACvvbY5sUqkC9VkFno99+StLSPoyyHnRKZWeH3
         ufEN6U+nnA8qDQK0Lt49AIOTUpoFpaV8S/ly4EXX0v47rBbhzD7W6EkPnKfJHvh1WT/O
         ev9ZK5NSza4bl/DzPA1XMe1JxNLohIddoyFjjezWbgGY9ftp7imcGOvt9hgVLv0lDlGC
         tq4r78QOq8Sdp9gem1qhEENRq6d9gIrEMWZXQvmZl7XTCS96+W/W+vTZ45aY02mM8xgg
         sdvle3k9mnNGo+gNL6RhjgqCmstqe9g4ATO6R6lHjqGbieDXY5Im4dARNFLSepGHqQzG
         okkw==
X-Forwarded-Encrypted: i=1; AJvYcCWHg4mIV2IEfdLJwqPpkqpRyaIZm8xs4Wlr749rJr29Uh4JY1jSTPMOulg5zCmcvObzmpCHmoektUMi@vger.kernel.org
X-Gm-Message-State: AOJu0YwHWasnK3uXRXnrB0BDvGSKw21P8BauvlhMLgCSFUL2WVjGuzRg
	ZAICAikPJ47HybvxnDAnylivgKvpfYuhw0ZiBdvVcc7EUflK5uUjHioVWKpJSQcH0ciJaFPsQ6A
	vi6E0MWRC7Sic310TjzfJjQ6p/HIkWpXHhW3rYkZRttZW5tgF5kJ1zBm6/rCO
X-Gm-Gg: ASbGnctJ7sZVVYNq7JWZEtiV6C8ZRkJnaKFZHFzm8DA3QqkEJkGFPizUaJbgPGqzgNf
	WWc31KfI4AtMBTo3KTluOMLgXlS+cqYLTduAAwu/Ry7fkdCFazd8vXipEoJuNq2qTo+UM9+OtcC
	+VQTCTXXFZrjDj6NzjxSpcB3ta76PZIvqyrsWsXmEiAPxvkwegaILX0MnnvgHU/vJcJfFUYgbWc
	9i4hZ9an1Qn90XoHLOL4QVMaXaQ67RZhjubWpSbXigLvcXFX6442i0a36CNblE264TDtowUhsnP
	DVpHdmaO7sVYX4yWAkorNXtgSV7FKzWQRyn6
X-Received: by 2002:a05:620a:2994:b0:7b6:e126:3dee with SMTP id af79cd13be357-7b6fbec4726mr149250985a.3.1734107496814;
        Fri, 13 Dec 2024 08:31:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGTbrWUDH1tEiGe9hJw3p0ll2n39imLNVxTdCBQwJ960b8VbLVSns1/390GlH7821voC/N4RA==
X-Received: by 2002:a05:620a:2994:b0:7b6:e126:3dee with SMTP id af79cd13be357-7b6fbec4726mr149244385a.3.1734107495091;
        Fri, 13 Dec 2024 08:31:35 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6590f5457sm927094266b.195.2024.12.13.08.31.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 08:31:34 -0800 (PST)
Message-ID: <0d4d3ca3-ec8a-4e85-9838-a2bf1e07e872@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 17:31:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/7] drm/msm: adreno: find bandwidth index of OPP and
 set it along freq index
To: neil.armstrong@linaro.org, Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20241211-topic-sm8x50-gpu-bw-vote-v5-0-6112f9f785ec@linaro.org>
 <20241211-topic-sm8x50-gpu-bw-vote-v5-4-6112f9f785ec@linaro.org>
 <ddf91ba2-cab2-4653-b842-65a8e82b5160@oss.qualcomm.com>
 <2f1c6deb-29f8-4144-b086-743fb0f8495c@linaro.org>
 <80bed70e-7802-4555-a15e-e06fe46214c6@quicinc.com>
 <c2d8f443-5876-4293-8d2b-ecd13eaf8285@oss.qualcomm.com>
 <268d67c0-efdf-4ad4-b5fe-5b4f04e73131@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <268d67c0-efdf-4ad4-b5fe-5b4f04e73131@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: -ijcAC2U244gZVgBygHrq84swRT-DNgJ
X-Proofpoint-GUID: -ijcAC2U244gZVgBygHrq84swRT-DNgJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0 mlxscore=0
 suspectscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412130116

On 13.12.2024 5:28 PM, neil.armstrong@linaro.org wrote:
> On 13/12/2024 16:37, Konrad Dybcio wrote:
>> On 13.12.2024 2:12 PM, Akhil P Oommen wrote:
>>> On 12/13/2024 3:07 AM, Neil Armstrong wrote:
>>>> On 12/12/2024 21:21, Konrad Dybcio wrote:
>>>>> On 11.12.2024 9:29 AM, Neil Armstrong wrote:
>>>>>> The Adreno GPU Management Unit (GMU) can also scale the DDR Bandwidth
>>>>>> along the Frequency and Power Domain level, until now we left the OPP
>>>>>> core scale the OPP bandwidth via the interconnect path.
>>>>>>
>>>>>> In order to enable bandwidth voting via the GPU Management
>>>>>> Unit (GMU), when an opp is set by devfreq we also look for
>>>>>> the corresponding bandwidth index in the previously generated
>>>>>> bw_table and pass this value along the frequency index to the GMU.
>>>>>>
>>>>>> The GMU also takes another vote called AB which is a 16bit quantized
>>>>>> value of the floor bandwidth against the maximum supported bandwidth.
>>>>>>
>>>>>> The AB is calculated with a default 25% of the bandwidth like the
>>>>>> downstream implementation too inform the GMU firmware the minimal
>>>>>> quantity of bandwidth we require for this OPP.
>>>>>>
>>>>>> Since we now vote for all resources via the GMU, setting the OPP
>>>>>> is no more needed, so we can completely skip calling
>>>>>> dev_pm_opp_set_opp() in this situation.
>>>>>>
>>>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>>> Reviewed-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
>>>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>>>> ---
>>>>>>    drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 39 ++++++++++++++++++++++++
>>>>>> +++++++++--
>>>>>>    drivers/gpu/drm/msm/adreno/a6xx_gmu.h |  2 +-
>>>>>>    drivers/gpu/drm/msm/adreno/a6xx_hfi.c |  6 +++---
>>>>>>    drivers/gpu/drm/msm/adreno/a6xx_hfi.h |  5 +++++
>>>>>>    4 files changed, 46 insertions(+), 6 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/
>>>>>> msm/adreno/a6xx_gmu.c
>>>>>> index
>>>>>> 36696d372a42a27b26a018b19e73bc6d8a4a5235..46ae0ec7a16a41d55755ce04fb32404cdba087be 100644
>>>>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>>>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>>>>> @@ -110,9 +110,11 @@ void a6xx_gmu_set_freq(struct msm_gpu *gpu,
>>>>>> struct dev_pm_opp *opp,
>>>>>>                   bool suspended)
>>>>>>    {
>>>>>>        struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
>>>>>> +    const struct a6xx_info *info = adreno_gpu->info->a6xx;
>>>>>>        struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
>>>>>>        struct a6xx_gmu *gmu = &a6xx_gpu->gmu;
>>>>>>        u32 perf_index;
>>>>>> +    u32 bw_index = 0;
>>>>>>        unsigned long gpu_freq;
>>>>>>        int ret = 0;
>>>>>>    @@ -125,6 +127,37 @@ void a6xx_gmu_set_freq(struct msm_gpu *gpu,
>>>>>> struct dev_pm_opp *opp,
>>>>>>            if (gpu_freq == gmu->gpu_freqs[perf_index])
>>>>>>                break;
>>>>>>    +    /* If enabled, find the corresponding DDR bandwidth index */
>>>>>> +    if (info->bcms && gmu->nr_gpu_bws > 1) {
>>>>>
>>>>> if (gmu->nr_gpu_bws)
>>>>
>>>> gmu->nr_gpu_bws == 1 means there's not BW in the OPPs (index 0 is the
>>>> "off" state)
>>>>
>>>>>
>>>>>> +        unsigned int bw = dev_pm_opp_get_bw(opp, true, 0);
>>>>>> +
>>>>>> +        for (bw_index = 0; bw_index < gmu->nr_gpu_bws - 1; bw_index+
>>>>>> +) {
>>>>>> +            if (bw == gmu->gpu_bw_table[bw_index])
>>>>>> +                break;
>>>>>> +        }
>>>>>> +
>>>>>> +        /* Vote AB as a fraction of the max bandwidth */
>>>>>> +        if (bw) {
>>>>>
>>>>> This seems to only be introduced with certain a7xx too.. you should
>>>>> ping the GMU with HFI_VALUE_GMU_AB_VOTE to check if it's supported
>>>>
>>>> Good point
>>>
>>> No no. Doing this will trigger some assert in pre-A750 gmu firmwares. We
>>> learned it the hard way. No improvisation please. :)
>>
>> We shouldn't be sending that AB data to firmware that doesn't expect
>> it either too, though..
> 
> Well we don't !

The code in the scope that I quoted above does that

see the full explanation here

https://git.codelinaro.org/clo/le/platform/vendor/qcom/opensource/graphics-kernel/-/commit/6026c31a54444b712f7ea36ac1aafaaeef07fa4e

Konrad

