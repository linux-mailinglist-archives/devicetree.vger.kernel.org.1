Return-Path: <devicetree+bounces-172411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C61AA4B5C
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 14:36:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BF6E1BC7C71
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 12:36:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68D8D25B1E9;
	Wed, 30 Apr 2025 12:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kCOo2aW/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93D31DAC95
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 12:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746016537; cv=none; b=eaBbORJXtbkv5mFV3v9WcSzElmsvOCK62NbAaGbsdwOvtBXXBAm8UfDuhGqVeUjC+ErM+FjRmHVxGgyO4T8qoCWzra9wgCoT+YqwQNmTEOhkUyE3iKqD113mKV1brCRcE44CvmhqfK3KiHuciDGkBIC1qgVlUqQ4B/N45F2w+bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746016537; c=relaxed/simple;
	bh=jEcC9UGE/YqMYrqwTIiNtzaSZ07n6/H/NMhDizZasxQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Os5b9anZL/gH1j0nJPXboPGYkKq4gHW7ML1o5ltW/dDsXzf7hGC7h6aE4wY/uJ3fbF4lXA2ULowg4rAeLNqMwoKTM1Mwe79e0hy/uGnjyGZjjibS7ZyDFqpApDJXBWFbUJNsyK05AZVg0OnBpVWvkt/3O8n2h2SEjaSJmdqHOg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kCOo2aW/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53U99Ick001138
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 12:35:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cnlo59KsvGmoAJK5ykVOnV/qLVIIalGNC4+OxntEXxE=; b=kCOo2aW/dNR4HZBi
	hTvCsRcyGXI6Sr5fc1x0GWYvFjc6V9Lq1WrSbyvVXEAapiPIGUqnXXq/Eneyuds/
	eMmWZvRyBYy7LH6j760UO+GOoWz7Ab76FhnNgd9hfZiKGT/EmUqy2/A+B1GxZkbD
	oLmAVhlvc1COl6Sd7pBlGZI89TgZ1fpax5qbsPgvdi5viqcmMLugbxWBgQSBiYRA
	uBfAg2trRUMJ1ISyL0mbv0s71nUP8F0BtGgvTISxIBaTqIE/BrhnQa/hAnXVBjg7
	BImfF0zodWtqi82nB3kQbmOe+b97rBBh5RtJKXPxdUG71gIDeY9mqGq0SFfdu87b
	QevxqA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u72785-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 12:35:34 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4766654b0c3so14869571cf.0
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 05:35:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746016521; x=1746621321;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cnlo59KsvGmoAJK5ykVOnV/qLVIIalGNC4+OxntEXxE=;
        b=h2EaH+fp4fWBLUO8OxX8Qkj3yiKkHz/hKqzn12O3k9uJ66JAe/DnoHvpTinKRvG6X4
         IYfdWLxtEsJtted/jYF0dqggK2vecgoGV9qYTSwEpXQZafs0wHyXgGKhHegqugeyz3G1
         txiDVGhChgqjDzhRy8EgGeowyWK6f/Kgk3a7e+QzoiZ41F7TuJHRHhFRBChrJ+dSBSYc
         PmNq7jLf7YCRYPWZLMpa4gVNbOriUc4haiLqJqQmxXeqjgv5SBnlaOqVMJzYLcvN9YFu
         y3+MpDldbQmigdiS4dwk/h20+AgFKGW8rpvagpbQRe9nRtK7K/zvKzW5TCjefigKdWCt
         vL8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVnsX6EYvwvdtLQozq21ucII2cFFXCMJ5Fo+dwAPfAy1LxllGHrTpOflG8QzCf7+RclN4t844b6/GMU@vger.kernel.org
X-Gm-Message-State: AOJu0YxfKGjI0qW1maB0kYXpeed7QLLg4JLKiqP1WvO24VNnBSAblCwH
	PTjPSX896zlfmAXOVI8mI6oA+eDkeFB1QRVrZxpV3ioIrJ7ClXqNi1Dk/7zXCz8mrdlb95XAzh9
	bzfqwn1OvzxIVr0cf35v1tCIPM9zINAWhjrqyoedE2ATh3OcnONNXhRL9ecvf
X-Gm-Gg: ASbGncuYQkWsj0Nu0zyfSmBidLQqv8IurMfFvubPMZu5OS9af2VxJp7Aqp5Er5iL4mb
	H93l08437ie16yHVcRoeE5h8CkMLLGjYjThg5IKRDR+pQMdcQApW/I/+0llToPR9IsWIV+O8AzK
	AVSbXQ/F82xiqSIeYd/1X1nVKYeD4QKVYMPr/O5kzbH6IrGUVSntO+FthJuT0sfKnV9vA6qeLgs
	KH4jRDp9UNPlPA8ny+wuzYTRF5pwOD9F5uXs5ITCss3yHwubN9B2GjjuyF5HQF+kfZuV1tBg28D
	KilmVmo/105uZq/sxRZrIX8GfqI+I2y9Sd+C3NxQWy8ISavDscEVDSDj4WLkJj3fHNc=
X-Received: by 2002:a05:620a:2722:b0:7c5:e283:7d0f with SMTP id af79cd13be357-7cac85a0299mr123370885a.8.1746016521547;
        Wed, 30 Apr 2025 05:35:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5YnBbAS+ImgEHeNjfO53rm94FOWqBYpnXyEX6Ie1ldv17RmYfaWc5AhrZsf2uYwjVaJF4eg==
X-Received: by 2002:a05:620a:2722:b0:7c5:e283:7d0f with SMTP id af79cd13be357-7cac85a0299mr123368385a.8.1746016521141;
        Wed, 30 Apr 2025 05:35:21 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6edae042sm913931766b.169.2025.04.30.05.35.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 05:35:20 -0700 (PDT)
Message-ID: <886d979d-c513-4ab8-829e-4a885953079a@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 14:35:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v6 2/5] drm/msm/adreno: Add speedbin data for SM8550 /
 A740
To: neil.armstrong@linaro.org, Konrad Dybcio <konradybcio@kernel.org>,
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <13cd20c6-f758-45ff-82d1-4fd663d1698c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDA5MCBTYWx0ZWRfXyRk9ECeTSUTC gwC/YhlzEIUw0z3fqKmUMjUpi8JJ5gNgAy9YW4YQ0WRux2Gs7YTV/QrSTT6cf3G7ot8O/5uhqYx yF8kFpIYwoZdbOMJWSdui7eTKchxjRiHNtkqrSyuXl4KBdjtolWRqGQvrDWDl3nFrlApWuCyLEA
 4mzD9tVN1c2Q30iFnkxuq8wgR/wF4ug+QqjtZBq5HSHPXsyUghT/NiFaP2XOoyhSpmfH4ZUmyuZ 0xKos/8X/h8dF4WUdVLA2cxQhOM8E6d2djwMGn1ICo5/T54p5zXXCmtG0Yn5yOGdQscsuBAs0uO 0loN/2nzFywFDU/GxlMCtYJtl2HuSTBfvLDQQjfpi8AJDPvJLlBZxb+iwCKCWUTC1sMawWqrF7K
 1I5zIm3K4ld93fHQ6EkL0CJi4T2QOXBpQV5wQjYUIizkbnJZQqgk133rPVB4zzUKU0BQUofs
X-Proofpoint-GUID: YrSBV7yt2Nei40crQLtLfnpB34JKs8PT
X-Authority-Analysis: v=2.4 cv=W404VQWk c=1 sm=1 tr=0 ts=68121916 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=_6aSloehX7qqCDj74gYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: YrSBV7yt2Nei40crQLtLfnpB34JKs8PT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 bulkscore=0 spamscore=0
 clxscore=1015 phishscore=0 impostorscore=0 mlxlogscore=999 malwarescore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300090

On 4/30/25 2:26 PM, neil.armstrong@linaro.org wrote:
> Hi,
> 
> On 30/04/2025 13:34, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@linaro.org>
>>
>> Add speebin data for A740, as found on SM8550 and derivative SoCs.
>>
>> For non-development SoCs it seems that "everything except FC_AC, FC_AF
>> should be speedbin 1", but what the values are for said "everything" are
>> not known, so that's an exercise left to the user..
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>   drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>> index 53e2ff4406d8f0afe474aaafbf0e459ef8f4577d..61daa331567925e529deae5e25d6fb63a8ba8375 100644
>> --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>> @@ -11,6 +11,9 @@
>>   #include "a6xx.xml.h"
>>   #include "a6xx_gmu.xml.h"
>>   +#include <linux/soc/qcom/smem.h>
>> +#include <linux/soc/qcom/socinfo.h>
>> +
>>   static const struct adreno_reglist a612_hwcg[] = {
>>       {REG_A6XX_RBBM_CLOCK_CNTL_SP0, 0x22222222},
>>       {REG_A6XX_RBBM_CLOCK_CNTL2_SP0, 0x02222220},
>> @@ -1431,6 +1434,11 @@ static const struct adreno_info a7xx_gpus[] = {
>>           },
>>           .address_space_size = SZ_16G,
>>           .preempt_record_size = 4192 * SZ_1K,
>> +        .speedbins = ADRENO_SPEEDBINS(
>> +            { ADRENO_SKU_ID(SOCINFO_FC_AC), 0 },
>> +            { ADRENO_SKU_ID(SOCINFO_FC_AF), 0 },
>> +            /* Other feature codes (on prod SoCs) should match to speedbin 1 */
> 
> I'm trying to understand this sentence. because reading patch 4, when there's no match
> devm_pm_opp_set_supported_hw() is simply never called so how can it match speedbin 1 ?

What I'm saying is that all other entries that happen to be possibly
added down the line are expected to be speedbin 1 (i.e. BIT(1))

> Before this change the fallback was speedbin = BIT(0), but this disappeared.

No, the default was to allow speedbin mask ~(0U)

Konrad

