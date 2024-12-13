Return-Path: <devicetree+bounces-130973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 811329F1A48
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 00:46:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C34471885500
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 23:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 773B21D9A63;
	Fri, 13 Dec 2024 23:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gZqrro9X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1B721D6188
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734133582; cv=none; b=sDlyPup2Q7oRaY/F8+xMw7SQOEte8bZUMlF0dEzOdUxTmVfo+iGsOujAMJD3DcowMXeMJOYtoivWBJmNu88vz+pc2B6Bj/bUUja1sSK82q479Jj9GIv/24V2nShJ4JsMs7oSQYhlBUyU7MwnByGszVrhQC3vEEhuKpvgU5pIJxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734133582; c=relaxed/simple;
	bh=ilmERVDQcQfQY9jUB23pjGZQq7bpkPAy0OibfoxEP9M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=INn3J3l2WKD10uIPRs+FhcL2Cm5eweOSkQu+GigkYLaV6L6TBWY7/Rtm3KohImudsMgMlWT/mca74jVCibqj01kKiBpulgDWKPbNPnXZg0RdsDxjDLhvwYDzZyDLSl8xJ8xBgQKAF35c5aFH1oQZjPIWyKXkfCCjgo9pTjvEhH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gZqrro9X; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BDA3Zo3012381
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:46:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A3QIerfx78NmYkCrlJfcZSdKmbPQzIVKrXzxKR8GzwQ=; b=gZqrro9Xq6luInFH
	fKdSPF3V07/iUegNtsRGUSFf6J041zkpWMldxDp70NnI0IvX/pSqT7UjlDXeJo9v
	t3tqqKq7VwynQKaThojT8NRYagmbmVqx1ZCuXucHmw0eXxcuCv7cKTOtOFqt01yp
	hmWtwHUhUTjtyPMV/gVXNC2TfAoGLJ00BCbWZBAJzOEB9W20jTpUapo+sSgwIAjI
	TounpVek0PPEMoUBJNCuZLQGgvGobqwMqwVdNEQoVfiNDbKHW2l3X2UYIGsWIzas
	GnNc9tzDu9Wqrq1CtJ2tP40FGPnSp90WvqY5R1XBpeEnHYtURv24NcJFf9f1NRwZ
	tTNO+Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gjudhuwd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:46:17 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-467975f1b53so6102121cf.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:46:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734133572; x=1734738372;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A3QIerfx78NmYkCrlJfcZSdKmbPQzIVKrXzxKR8GzwQ=;
        b=nMAI4Z7LiIgTA3TYqOOF1nrCjnq4PQhbRxPaPuqtUzAeoXlEYMMBa+0KYLEUDvFyQx
         Sg84tXElQlt0241k/k1UVpD2XdGS6wT4vqrT1zRTJdbWscrFm41magem+dARumStmayY
         FlUZ1IYfSHVJBoNJU+fUw8UKkYh27gQnQ6uQuspUHa4qF6HoAl2BzIqgq3dAeEGZ4Zsl
         ggfiP+BqmkaoW2k3jU5wYwpC55z4Kr3ni9HWhLT5VZB9EpLAstXh0JITez6vnTVECm+V
         pWvJhj9GPkfeUIVMAWWuSrbI48YRMG+a7BTO9iyQeOcYhU9OJulrKMbzMb/iylB7SI9M
         YcDA==
X-Forwarded-Encrypted: i=1; AJvYcCXBkeKMv9FTrhwhmiR5OLBT319DuMWVw9DrWx5nPECttzwOjSypRhiwhXnSpdhqthHuW6aa85zlJBde@vger.kernel.org
X-Gm-Message-State: AOJu0YwleiQi+rWFNJ5H8fVjoI13Wu89A7+HHpX4ewHNWAhaTRTHOgZt
	BWXm7k2M+v4up208R7WuMR1NKttCGrUid0ltmrIcakQfUHZQ2c02NF2Npal5e9+s2xkkq/7tSxU
	0maT/l2m8Regd8cVNjr6Wsaug7ZOyw7pRs8ptgKzAnnfdzHPmrffgzKOAcNWm
X-Gm-Gg: ASbGnctUd9ZGmpOCyY3zi5Tf5nWnGIhAbcNlz7QZvHhmeE/pBUXmuZPKWuuRrgGrulQ
	jAaOAhiESMRt0OKtOmH1M9REOe6OoWb79ihJihk97MxF1BqmIbjS9N4yqQRZSMnoZjCQoIFnKWd
	TeQY8LTbWoYD9+Us9QVGsdyT9/AFH2DEPwU4cfi4ZNobS7BN4QVVdWaDKEHJW0AU71QJzHuEzn3
	R1tas5iHbXQRNqNyMdAi3yQV+QGTmqTzHqwUzWwHLZY/dVaTjiL199SeM4d2MTtMS+NjrHqjeB5
	y30ft7g/7muiEqSu1kugUWxHSUrcj5oPCXc=
X-Received: by 2002:a05:622a:1306:b0:467:5eaf:7d23 with SMTP id d75a77b69052e-467a5720eebmr29977521cf.2.1734133572205;
        Fri, 13 Dec 2024 15:46:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE1rwFoU7hAM5HFaRUBQFO6amnIenH6rDzSz7apTrGST9e0IKot5CQTz+/0AqZmQjtaXr+0AA==
X-Received: by 2002:a05:622a:1306:b0:467:5eaf:7d23 with SMTP id d75a77b69052e-467a5720eebmr29977261cf.2.1734133571808;
        Fri, 13 Dec 2024 15:46:11 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d652ad1805sm319345a12.27.2024.12.13.15.46.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 15:46:10 -0800 (PST)
Message-ID: <f730135f-b952-4f5c-bcb8-dc725e7db336@oss.qualcomm.com>
Date: Sat, 14 Dec 2024 00:46:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/7] drm/msm: adreno: find bandwidth index of OPP and
 set it along freq index
To: Akhil P Oommen <quic_akhilpo@quicinc.com>, neil.armstrong@linaro.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
 <0d4d3ca3-ec8a-4e85-9838-a2bf1e07e872@oss.qualcomm.com>
 <9dcf26e5-1c25-4a18-ab01-58ddf3fbd607@linaro.org>
 <cf298ca5-e2fe-4e0e-a0e7-a2cdad3c657b@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <cf298ca5-e2fe-4e0e-a0e7-a2cdad3c657b@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Iy9DaNs3qsXkaKFedalX4PdzszqSb2gg
X-Proofpoint-ORIG-GUID: Iy9DaNs3qsXkaKFedalX4PdzszqSb2gg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 phishscore=0 mlxlogscore=999 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130169

On 13.12.2024 5:55 PM, Akhil P Oommen wrote:
> On 12/13/2024 10:10 PM, neil.armstrong@linaro.org wrote:
>> On 13/12/2024 17:31, Konrad Dybcio wrote:
>>> On 13.12.2024 5:28 PM, neil.armstrong@linaro.org wrote:
>>>> On 13/12/2024 16:37, Konrad Dybcio wrote:
>>>>> On 13.12.2024 2:12 PM, Akhil P Oommen wrote:
>>>>>> On 12/13/2024 3:07 AM, Neil Armstrong wrote:
>>>>>>> On 12/12/2024 21:21, Konrad Dybcio wrote:
>>>>>>>> On 11.12.2024 9:29 AM, Neil Armstrong wrote:
>>>>>>>>> The Adreno GPU Management Unit (GMU) can also scale the DDR
>>>>>>>>> Bandwidth
>>>>>>>>> along the Frequency and Power Domain level, until now we left
>>>>>>>>> the OPP
>>>>>>>>> core scale the OPP bandwidth via the interconnect path.
>>>>>>>>>
>>>>>>>>> In order to enable bandwidth voting via the GPU Management
>>>>>>>>> Unit (GMU), when an opp is set by devfreq we also look for
>>>>>>>>> the corresponding bandwidth index in the previously generated
>>>>>>>>> bw_table and pass this value along the frequency index to the GMU.
>>>>>>>>>
>>>>>>>>> The GMU also takes another vote called AB which is a 16bit
>>>>>>>>> quantized
>>>>>>>>> value of the floor bandwidth against the maximum supported
>>>>>>>>> bandwidth.
>>>>>>>>>
>>>>>>>>> The AB is calculated with a default 25% of the bandwidth like the
>>>>>>>>> downstream implementation too inform the GMU firmware the minimal
>>>>>>>>> quantity of bandwidth we require for this OPP.
>>>>>>>>>
>>>>>>>>> Since we now vote for all resources via the GMU, setting the OPP
>>>>>>>>> is no more needed, so we can completely skip calling
>>>>>>>>> dev_pm_opp_set_opp() in this situation.
>>>>>>>>>
>>>>>>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>>>>>> Reviewed-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
>>>>>>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>>>>>>> ---
>>>>>>>>>     drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 39 +++++++++++++++++
>>>>>>>>> +++++++
>>>>>>>>> +++++++++--
>>>>>>>>>     drivers/gpu/drm/msm/adreno/a6xx_gmu.h |  2 +-
>>>>>>>>>     drivers/gpu/drm/msm/adreno/a6xx_hfi.c |  6 +++---
>>>>>>>>>     drivers/gpu/drm/msm/adreno/a6xx_hfi.h |  5 +++++
>>>>>>>>>     4 files changed, 46 insertions(+), 6 deletions(-)
>>>>>>>>>
>>>>>>>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/
>>>>>>>>> gpu/drm/
>>>>>>>>> msm/adreno/a6xx_gmu.c
>>>>>>>>> index
>>>>>>>>> 36696d372a42a27b26a018b19e73bc6d8a4a5235..46ae0ec7a16a41d55755ce04fb32404cdba087be 100644
>>>>>>>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>>>>>>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>>>>>>>> @@ -110,9 +110,11 @@ void a6xx_gmu_set_freq(struct msm_gpu *gpu,
>>>>>>>>> struct dev_pm_opp *opp,
>>>>>>>>>                    bool suspended)
>>>>>>>>>     {
>>>>>>>>>         struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
>>>>>>>>> +    const struct a6xx_info *info = adreno_gpu->info->a6xx;
>>>>>>>>>         struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
>>>>>>>>>         struct a6xx_gmu *gmu = &a6xx_gpu->gmu;
>>>>>>>>>         u32 perf_index;
>>>>>>>>> +    u32 bw_index = 0;
>>>>>>>>>         unsigned long gpu_freq;
>>>>>>>>>         int ret = 0;
>>>>>>>>>     @@ -125,6 +127,37 @@ void a6xx_gmu_set_freq(struct msm_gpu
>>>>>>>>> *gpu,
>>>>>>>>> struct dev_pm_opp *opp,
>>>>>>>>>             if (gpu_freq == gmu->gpu_freqs[perf_index])
>>>>>>>>>                 break;
>>>>>>>>>     +    /* If enabled, find the corresponding DDR bandwidth
>>>>>>>>> index */
>>>>>>>>> +    if (info->bcms && gmu->nr_gpu_bws > 1) {
>>>>>>>>
>>>>>>>> if (gmu->nr_gpu_bws)
>>>>>>>
>>>>>>> gmu->nr_gpu_bws == 1 means there's not BW in the OPPs (index 0 is the
>>>>>>> "off" state)
>>>>>>>
>>>>>>>>
>>>>>>>>> +        unsigned int bw = dev_pm_opp_get_bw(opp, true, 0);
>>>>>>>>> +
>>>>>>>>> +        for (bw_index = 0; bw_index < gmu->nr_gpu_bws - 1;
>>>>>>>>> bw_index+
>>>>>>>>> +) {
>>>>>>>>> +            if (bw == gmu->gpu_bw_table[bw_index])
>>>>>>>>> +                break;
>>>>>>>>> +        }
>>>>>>>>> +
>>>>>>>>> +        /* Vote AB as a fraction of the max bandwidth */
>>>>>>>>> +        if (bw) {
>>>>>>>>
>>>>>>>> This seems to only be introduced with certain a7xx too.. you should
>>>>>>>> ping the GMU with HFI_VALUE_GMU_AB_VOTE to check if it's supported
>>>>>>>
>>>>>>> Good point
>>>>>>
>>>>>> No no. Doing this will trigger some assert in pre-A750 gmu
>>>>>> firmwares. We
>>>>>> learned it the hard way. No improvisation please. :)
>>>>>
>>>>> We shouldn't be sending that AB data to firmware that doesn't expect
>>>>> it either too, though..
>>>>
>>>> Well we don't !
>>>
>>> The code in the scope that I quoted above does that
>>
>> No it doesn't, if the proper bcms are not declared in the gpu_info, it
>> won't
> 
> I think what Konrad meant was that IB voting is supported from a650+,
> but AB voting is support only from a750+. So we can add bcm nodes to
> enable IB voting, but how do we ensure AB voting via GMU is done only on
> a750+.

Yep, relying on incomplete data in the catalog is not a great way
to ensure that

Konrad

