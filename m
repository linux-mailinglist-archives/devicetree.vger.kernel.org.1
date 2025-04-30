Return-Path: <devicetree+bounces-172547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B28AA51CE
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 18:40:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E38DE7B69B5
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 16:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 426F6261589;
	Wed, 30 Apr 2025 16:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dY8dmIfo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95DA22609CA
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 16:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746031203; cv=none; b=bTwe3Hp31+K8W1+ADw7oLRjFq87p/JEuuEoF19zk7yYzHkdVFXR5/dtYpRUVA/4erSarY/7Xbb7wJCM+G9n0UBuygwFE8+koIvZSApk1zZc1awZ6MzhhPvZdi6ZarCWdX35VX16oyMI0CgcBsICZBkBZAjHyLX2gzMToWeTN7Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746031203; c=relaxed/simple;
	bh=hpE2nCHoR0H6iCq7k+ZGZmcWxen76l9qwzrh5eW3pcY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uGfLhYDamUi+fTOMz8oLsVn/KtQj+0X6ka/IWneZW3YI1DmTDNSVIDefXk7Lzp9jZc0Y2kcqJKJBNSgnNf1dwMTZUssc3NmjMRtkQ8evb49F3zRrmyIsiGrRYwzarTtsIZbfrRtDcypecR4c3Bm01uiqJHCw9JeAQTHRsct7j5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dY8dmIfo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53U9CS4o023003
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 16:40:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0IybLpUDVoXrbVMSePl8o57sK9UNIaXw3/isvQ/riIs=; b=dY8dmIfodJu511kr
	3eIUUxkRfmvOrKME+2epqnqJ1uLKpyqQqXfcD+2eTGaBYc6BpvRXYdS/il0ytb9I
	+FpW1MEpRjVYGUZPJlXxqCla0PljBDBAFlX8q/BMAKggCr/B8RqpPLSoSKhit/x8
	gnM4m4wO9TEOSv4JulpwPq0nu57uKAuH+2eU18a0lCtveWb3wTK2mzN6UVvaARGB
	66pPKVzFYoCjUbuXXJdn4PxeEDhsnSDESEsmF5vTAqCcNWuhVSguqjp7mNoNsOdz
	r7CuaNV+AU9MK0tx9LacBUxycr9scRwteoO131x2DqwqrRW65mZBffY5p5Xo3WOR
	/icVPg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u72x7a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 16:40:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4766654b0c3so199421cf.0
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 09:40:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746031199; x=1746635999;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0IybLpUDVoXrbVMSePl8o57sK9UNIaXw3/isvQ/riIs=;
        b=V5kfeaNVoor1ivpniOKUkkzceU3Mlr5aycKHb84y04tml5f1RwIjeUdfEM5m06+qi5
         breL2UVkA2Akb2yx7jJu/vmaK5V+XFbXcObKxQOQEfw9e6WurhzgC1goOaX5IP/TN0mP
         hRIq+tghhZ46Enmq3oPMS5pxN/YTWba5OCRCuEayVKB6z46+5f/4EvWIx+aj5QTCutvx
         kP+yvehLWiVrFz0Z4m9vw7gSKzB5lXeXspMG3CDHZbP1Vg5cENK7hwjqDfzXTepoyV95
         iEodwudSGsXZbENaWegxrlKodfmgk5Zfsh96+MfruqmC8uH60Lbppc/2DJMRA+b12HpP
         qefg==
X-Forwarded-Encrypted: i=1; AJvYcCWor/Pp/IG774jQ8ZVqrTfI+Z88MD4vz58IZWAyV3P/nRQZKpl1j7SHDGrMSLwaJIy+5jAkxZgja9wV@vger.kernel.org
X-Gm-Message-State: AOJu0YwI6S2QeYfRV2p6+G1PqS0B3sHmDEtUFyznrlgqkqSYX+yP7IdJ
	lGSPktu49jzMOzpujD7wG23jLm910ox2vcCAANoiviHsrbS/cdCr863ldekGXct5C7wQo53I25q
	Kny9q5LeNvum/GVH1vS4zxQXlG7rcMNgoezv4Uq6Csp/QB6olE3s7SIBDxXrr
X-Gm-Gg: ASbGncsM4TiDzgsfvUbL/Ma6ieiF9u29662fK4WsRfoFTr3K6jUB0FCzw9NKhKPDyTp
	3KXgiA78lVW5IDHQJj1x7vFwpAlztgP4LzGTGh43qLR3NB6xixKHyewRF7B/x9JKC5DVnkOBsqe
	fSk0RAElvJOaz7Y7JCy/VT5BxVg1nwT63YvbdJhZe4vAZiEhsRPQqA1GyJ2MRuG+8Mw3KcIrmbg
	4kab875OectpLfDfJ9bILuuIMog4I9gIyh8qKxUO9qgAURKMCxtQU9kMSiS4Zrb6gYLUbH9o3RL
	gCU1wF/ao+ACU3+DQS7+FHBaEUF6BmNcjT2/P2n2odGOqhHdL8cCHS2AN7XTTpyTsTM=
X-Received: by 2002:ac8:7dcd:0:b0:47a:ecd7:6714 with SMTP id d75a77b69052e-489e4e70aaamr18107241cf.9.1746031198634;
        Wed, 30 Apr 2025 09:39:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFEh2bOPNWRF8KmYsuXVxcvL17E8iNqVQrHEwU12VALDMgDENwfbhdQrAkhqW8emKmyyAuo3Q==
X-Received: by 2002:ac8:7dcd:0:b0:47a:ecd7:6714 with SMTP id d75a77b69052e-489e4e70aaamr18106871cf.9.1746031198046;
        Wed, 30 Apr 2025 09:39:58 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f703833c8csm8852270a12.72.2025.04.30.09.39.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 09:39:57 -0700 (PDT)
Message-ID: <892fc1eb-efd3-4fb6-9110-2df3349960a6@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 18:39:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v6 2/5] drm/msm/adreno: Add speedbin data for SM8550 /
 A740
To: neil.armstrong@linaro.org, Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, David Airlie <airlied@gmail.com>,
        Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
References: <20250430-topic-smem_speedbin_respin-v6-0-954ff66061cf@oss.qualcomm.com>
 <20250430-topic-smem_speedbin_respin-v6-2-954ff66061cf@oss.qualcomm.com>
 <13cd20c6-f758-45ff-82d1-4fd663d1698c@linaro.org>
 <886d979d-c513-4ab8-829e-4a885953079a@oss.qualcomm.com>
 <b838f9bd-0537-4f8d-b24b-d96700d566c8@linaro.org>
 <98a4ad20-c141-4280-801e-015dafd1fb39@oss.qualcomm.com>
 <a26213ec-808f-4edf-bb0d-ab469ee0a884@linaro.org>
 <281ab1b6-498e-4b29-9e15-19b5aae25342@oss.qualcomm.com>
 <63105bce-6b8e-4b99-bca1-3741f27ea25a@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <63105bce-6b8e-4b99-bca1-3741f27ea25a@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDExOSBTYWx0ZWRfX8avfxEEt/MwT Oycu1Q9qRvpiQ76qs5/pD6KMv/Lfy2ZYusxZVeiIXoHZHaeArEfU/Xta71MsNsx6aVv1We97Zik J7CnEw54Dbg03Pxpa3bPnjvqP2f+4oEGIvrtMWB80AjA7Do5OUVIv4BXlD23KphrvqJdYjJYh6z
 jQbck5Ld1EJlmLmvaoQTZvyUfCxCgaYKN0tyo2kXRU0EUK2jbZ5VjXB2qSy9sGad21x/awMNbfR NjyUM8Sy2rOt3LyKwANmmFzH4Ok0VuD6Y4bmckCgR2ISAbwT9lOVFIT/LBfvKksv2iRuTDU1bDb SqLqH8+PG6g9CDjXOx1UMhFylPJ4R9xFaGGtDF0lmr4lnhoaSkiTf+XvurFeF67M+YebRYBDgCe
 tqFIh81f8oNhBLsYGmzOZYi8WLOY6GYehMPRApiXFD3u6p5+8PVgobj3ufxZkGdyZxpScz75
X-Proofpoint-GUID: cLTMAyCXs-A8CkuHbv_6BkorJZdUuOcg
X-Proofpoint-ORIG-GUID: cLTMAyCXs-A8CkuHbv_6BkorJZdUuOcg
X-Authority-Analysis: v=2.4 cv=b6Wy4sGx c=1 sm=1 tr=0 ts=68125260 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=bavVSKjQvIFP_uUPWtcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 impostorscore=0 bulkscore=0 phishscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 adultscore=0 suspectscore=0 mlxscore=0
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300119

On 4/30/25 6:19 PM, neil.armstrong@linaro.org wrote:
> On 30/04/2025 17:36, Konrad Dybcio wrote:
>> On 4/30/25 4:49 PM, neil.armstrong@linaro.org wrote:
>>> On 30/04/2025 15:09, Konrad Dybcio wrote:
>>>> On 4/30/25 2:49 PM, neil.armstrong@linaro.org wrote:
>>>>> On 30/04/2025 14:35, Konrad Dybcio wrote:
>>>>>> On 4/30/25 2:26 PM, neil.armstrong@linaro.org wrote:
>>>>>>> Hi,
>>>>>>>
>>>>>>> On 30/04/2025 13:34, Konrad Dybcio wrote:
>>>>>>>> From: Konrad Dybcio <konrad.dybcio@linaro.org>
>>>>>>>>
>>>>>>>> Add speebin data for A740, as found on SM8550 and derivative SoCs.
>>>>>>>>
>>>>>>>> For non-development SoCs it seems that "everything except FC_AC, FC_AF
>>>>>>>> should be speedbin 1", but what the values are for said "everything" are
>>>>>>>> not known, so that's an exercise left to the user..
>>>>>>>>
>>>>>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>>>>>>>> ---
>>>>>>>>      drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 8 ++++++++
>>>>>>>>      1 file changed, 8 insertions(+)
>>>>>>>>
>>>>>>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>>>>>>>> index 53e2ff4406d8f0afe474aaafbf0e459ef8f4577d..61daa331567925e529deae5e25d6fb63a8ba8375 100644
>>>>>>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>>>>>>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>>>>>>>> @@ -11,6 +11,9 @@
>>>>>>>>      #include "a6xx.xml.h"
>>>>>>>>      #include "a6xx_gmu.xml.h"
>>>>>>>>      +#include <linux/soc/qcom/smem.h>
>>>>>>>> +#include <linux/soc/qcom/socinfo.h>
>>>>>>>> +
>>>>>>>>      static const struct adreno_reglist a612_hwcg[] = {
>>>>>>>>          {REG_A6XX_RBBM_CLOCK_CNTL_SP0, 0x22222222},
>>>>>>>>          {REG_A6XX_RBBM_CLOCK_CNTL2_SP0, 0x02222220},
>>>>>>>> @@ -1431,6 +1434,11 @@ static const struct adreno_info a7xx_gpus[] = {
>>>>>>>>              },
>>>>>>>>              .address_space_size = SZ_16G,
>>>>>>>>              .preempt_record_size = 4192 * SZ_1K,
>>>>>>>> +        .speedbins = ADRENO_SPEEDBINS(
>>>>>>>> +            { ADRENO_SKU_ID(SOCINFO_FC_AC), 0 },
>>>>>>>> +            { ADRENO_SKU_ID(SOCINFO_FC_AF), 0 },
>>>>>>>> +            /* Other feature codes (on prod SoCs) should match to speedbin 1 */
>>>>>>>
>>>>>>> I'm trying to understand this sentence. because reading patch 4, when there's no match
>>>>>>> devm_pm_opp_set_supported_hw() is simply never called so how can it match speedbin 1 ?
>>>>>>
>>>>>> What I'm saying is that all other entries that happen to be possibly
>>>>>> added down the line are expected to be speedbin 1 (i.e. BIT(1))
>>>>>>
>>>>>>> Before this change the fallback was speedbin = BIT(0), but this disappeared.
>>>>>>
>>>>>> No, the default was to allow speedbin mask ~(0U)
>>>>>
>>>>> Hmm no:
>>>>>
>>>>>       supp_hw = fuse_to_supp_hw(info, speedbin);
>>>>>
>>>>>       if (supp_hw == UINT_MAX) {
>>>>>           DRM_DEV_ERROR(dev,
>>>>>               "missing support for speed-bin: %u. Some OPPs may not be supported by hardware\n",
>>>>>               speedbin);
>>>>>           supp_hw = BIT(0); /* Default */
>>>>>       }
>>>>>
>>>>>       ret = devm_pm_opp_set_supported_hw(dev, &supp_hw, 1);
>>>>>       if (ret)
>>>>>           return ret;
>>>>
>>>> Right, that's my own code even..
>>>>
>>>> in any case, the kernel can't know about the speed bins that aren't
>>>> defined and here we only define bin0, which doesn't break things
>>>>
>>>> the kernel isn't aware about hw with bin1 with or without this change
>>>> so it effectively doesn't matter
>>>
>>> But it's regression for the other platforms, where before an unknown SKU
>>> mapped to supp_hw=BIT(0)
>>>
>>> Not calling devm_pm_opp_set_supported_hw() is a major regression,
>>> if the opp-supported-hw is present, the OPP will be rejected:
>>
>> A comment in patch 4 explains that. We can either be forwards or backwards
>> compatible (i.e. accept a limited amount of
>> speedbin_in_driver x speedbin_in_dt combinations)
> 
> I have a hard time understanding the change, please be much more verbose
> in the cover letter and commit messages.
> 
> The fact that you do such a large change in the speedbin policy in patch 4
> makes it hard to understand why it's needed in the first place.
> 
> Finally I'm very concerned that "old" SM8550 DT won't work on new kernels,
> this is frankly unacceptable, and this should be addressed in the first
> place.
> 
> The nvmem situation was much simple, where we considered we added the nvmem
> property at the same time as opp-supported-hw in OPPs, but it's no more the
> case.
> 
> So I think the OPP API should probably be extended to address this situation
> first, since if we do not have the opp-supported-hw in OPPs, all OPPs are safe.
> 
> So this code:
>     count = of_property_count_u32_elems(np, "opp-supported-hw");
>     if (count <= 0 || count % levels) {
>         dev_err(dev, "%s: Invalid opp-supported-hw property (%d)\n",
>             __func__, count);
>         return false;
>     }
> should return true in this specific case, like a supported_hw_failsafe mode.

Not really. opp-supported-hws = <BIT(0)> usually translates to the *fastest*
bin in our case, so perhaps that change I made previously to default to it
wasn't the wisest. In other words, all slower SKUs that weren't added to the
kernel catalog & dt are potentially getting overclocked, which is no bueno.
That is not always the case, but it most certainly has been for a number of
years.

Old DTs in this case would be DTs lacking opp-supported-hw with the kernel
having speedbin tables. The inverse ("too new DTs") case translates into
"someone put some unexpected stuff in dt and the kernel has no idea what
to do with it".
In this context, old DTs would continue to work after patch 4, as the first
early return in adreno_set_speedbin() takes care of that.

Konrad

