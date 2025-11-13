Return-Path: <devicetree+bounces-238037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E1371C569B8
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:34:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 283DF4E7AA9
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 09:27:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 593DC2D739A;
	Thu, 13 Nov 2025 09:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DZ2znY/d";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZVbeVO53"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5FC72D63EF
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763026039; cv=none; b=u6hf9exvv5EvcnnXnxTgkG/hXpXrW7mKwy3HONSLOlhBgX82qMalHBt38T2ns543sstLrPcyiD6CLvYKl0ihHzisWH0SGjLgKUXtwnL2sqZKgbkDfwNX0Zs0NleyXVZ3Fj8yrJji/5KZZ76kjYYp73Up0IFxTTN24dx749wrr8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763026039; c=relaxed/simple;
	bh=/iePmsUVjvQOSeWCJzhMKiUEulix7/M1KSmizMWl2jE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EPgfMcgOSO0MMvPGjcCs2OvK09MMUtg43yvEhmNR/m2EXKb2qe2Wd43W1a42iXWmxbeLVyu15FIII4YSyfrH2aBlF8WOzCzoRGJ3Igzna1Wlm2boSjl2ZBU3gJXMrk5UehhpyOnyZ/DrlmdlS3K1Za13B4rnE3UwxVs0jZjc7ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DZ2znY/d; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZVbeVO53; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD4wJaw3336560
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:27:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hBQHZTyCsz2E3OEb1ZqiRZ3GGm1s7VIXPos3wQ/Oo+o=; b=DZ2znY/dexHHqMHq
	9UkWyfkyA6sxniXfSVzQ3mjIGhqO9rwCQKTW75wPB3nlkpUsS0OtYu8UxJQXenRk
	pcC/7jHqrzkDz1W3+4SVTQy5RvEhR1a1BLews3b1dTMnuu5k0dQ020YVVJy2DVN5
	sZMi3oF9NrfocKv5ItoZdY74rweVMQxLL2DnVYQHV/b9nofgv98w5BqsQjFYHz4L
	iDylQbuQi84kF6BdGMY6P+BalSzQ5+T0zJ6ubsI91moQLfbQiSMla/AmjbyqcdGf
	5NG/PtPFaRkLM+oxZm3TV4c2B5cWISuXHS5uwwv0W++sQfpde37Bk9ymdiBQgomD
	05IFsQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ad8sa0try-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:27:15 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b23452ec2bso16142385a.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763026034; x=1763630834; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hBQHZTyCsz2E3OEb1ZqiRZ3GGm1s7VIXPos3wQ/Oo+o=;
        b=ZVbeVO53HISFFT6yHWPQQkW2preZJl+OlhISnoXQK5thLprh8Do2YeqMI4csbPIxef
         a3pfPhbKTA0TyXVlUBrtOfiAgtBMT9NQ87ZYi2sqBEfloTpVtkahl/tRPLfcgrqHsJ6G
         9Q4wfZVHS6yZc7G2zgbdn4XRvjs/Fe7glwqJ2giBdY4pnUzyiICAOQPvvAuvmwz37EVV
         7JiUKcuZ1k2m4nB+MAo2oN+Fc4VNPl6V3OuIwDYGFX/dMl9cLNtHk35ruBQOhwuAhiSw
         iuAfty2PW6H/sI8OnNudfo6xnW3y/66wHMIaiCsFGbAR0t3nrUQxF/1Qzi/pYzF3q65j
         W8kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763026034; x=1763630834;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hBQHZTyCsz2E3OEb1ZqiRZ3GGm1s7VIXPos3wQ/Oo+o=;
        b=f/HZHkMmehYKhrrM6DcMA/JIxDYnmcAxB/GqFrxAZ70gnJ1FEehBnZH2SZYSkHxdSs
         RUCYOQ0nCxj1ZmVipddXjG4PCUDllqQHymeM14JXgemmjtULNvAM33FJlWmCVNllyHb3
         tRR2T78DXkaPM0tk8hsNPl10+VpLXTjR4oC/wPxdCrCfm+Ku5vo5z8FoRRjsbxZJcnLI
         ZWyPo4xfD/I28yfCtmn2a7a3c8W+sWV2gWmDNrnar/4Ebz41rSOjgvy889WeoQzXEkU/
         tXR9UMKBir10wsz8U4/GegUChbGMyn9evdJSy4xHe0JQr7EWxNGGxKNxwoCI77uWI8Pv
         Sprw==
X-Forwarded-Encrypted: i=1; AJvYcCW4/ho0uk4ARoMn+X1+wFGCppIK72NbCngtBCoKK3BFLKwbt8duDmA3Q7FI8cZ6ZYGQGYZ5l0RY6cGl@vger.kernel.org
X-Gm-Message-State: AOJu0YzXGLaId9+PyFHA0kWxiJ06H3eR64O0Khx0w/i/DfRM9edFtgyh
	nwFJiFIPr69HItmj68UYFYttVCjo7TCl8mPG5O8IDLZb6XvB4NnseqmEqgNTdLNFN2ndt/ZAvvC
	lVLUzOR/M3q+VtJtXQfS/vyksg8zAc3gIKVNR7n0LRI510G+qfpHwJy+h6zM63jSj
X-Gm-Gg: ASbGncsSACk1Sua6KNCfZBwn8uY04kv263G101Sk6kb6x5MXUnX/ty4xozLnGq9gbLU
	A/I4xKmeRx6A1Dlf5SezgP5TbxzQAsbSHmkjtkdTrojPWtqQAzJ50ttomPSJ8honBxX/ggsgX1l
	R9x71Hl/0NbOcZQh8cPAtjMRGFcm6+h6kXYiMXUbxrdADwkQAlhW0A/6+c+7ix8GDTcoyBojLOl
	LOd/ujJOQWn0vQg5YyokBrbQFG2inXjV4WermxmzX1+E6AuFcgy1Uco/oIBrnTuR0Th20Q2EFpd
	MdFcrHr0fU3H1JfneK9SQo7hCMHknfbRwLjf4XsaX7X4P+mW7YCQDZpYCZ7GLg/+VbHs+CBs75P
	bUn9pLrAVrQtcDgr4Iy2in5j91RtEPga7hVZINYEFH9J8OaudAPe8fwc6
X-Received: by 2002:ac8:57d6:0:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4eddbd957bemr55093111cf.11.1763026034609;
        Thu, 13 Nov 2025 01:27:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHoZxoEy/JmKlmxIOPZpqL8nflJ1JnawU4oD4ovv9bKA6hPgIGxSwD69qSzkbCaaUf89Ywfyg==
X-Received: by 2002:ac8:57d6:0:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4eddbd957bemr55092921cf.11.1763026034164;
        Thu, 13 Nov 2025 01:27:14 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a4ce83dsm1028106a12.34.2025.11.13.01.27.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 01:27:13 -0800 (PST)
Message-ID: <d87bea02-1a89-4854-b760-617c3655b287@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 10:27:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/21] drm/msm/adreno: Move adreno_gpu_func to
 catalogue
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse
 <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, devicetree@vger.kernel.org
References: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
 <20251110-kaana-gpu-support-v2-5-bef18acd5e94@oss.qualcomm.com>
 <28d62905-c191-4c3a-995e-a4146ffce619@oss.qualcomm.com>
 <12e6f588-e422-4803-ae14-56e5297e564d@oss.qualcomm.com>
 <os7rpbynyoeolwvbrocx3yrrxzhextx3srywal2i54jj6dw3mw@n6fbt3pzjvj6>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <os7rpbynyoeolwvbrocx3yrrxzhextx3srywal2i54jj6dw3mw@n6fbt3pzjvj6>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: wy_1YLRMaGC05RvCJcEhlKn2y6VyXwd5
X-Proofpoint-ORIG-GUID: wy_1YLRMaGC05RvCJcEhlKn2y6VyXwd5
X-Authority-Analysis: v=2.4 cv=dcGNHHXe c=1 sm=1 tr=0 ts=6915a473 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pBDOg7y053Z06RvWvLkA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA2OCBTYWx0ZWRfX8hj5Ggfshss4
 b8Ijj58QIBfMC0YJAF+LRIQedlGU04wGQnrZutqYrdZGlN1yfnpwj2cyOmxLEQwQxQh2Mrb4vA6
 SZP6Zqf+NiI52CVe9KhvrzEmqFHNtsoRa3o+LoTnHb+R+qxsmX1WXZCQHNw4fX/0BvaH3N23JpC
 +DdZlltvcbbNzTIWttr2WFGrJhAP+TI5jILiC3gQNaSzR5AKHElzsq+HEWLMMNFgRH7seqxQIrH
 9QZWdSAPTPqw+acUEUDTMN6YvpYZkQpF6IqP5AviKRSSb8yUXfvi38W07uEpnqm+OKXlmQibZ8n
 UppX3pZWE2+hyarWPQF7/LyfyizaDkIa7RL+avvwBw3dXyNpJoJkOXkA0CXhBOGh27Xnpc2LNRn
 oVViYiUPIIPllpnGw3T1gTAnGfhRfQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_01,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 suspectscore=0 clxscore=1015 impostorscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130068

On 11/13/25 4:38 AM, Dmitry Baryshkov wrote:
> On Thu, Nov 13, 2025 at 03:32:51AM +0530, Akhil P Oommen wrote:
>> On 11/12/2025 3:52 PM, Konrad Dybcio wrote:
>>> On 11/10/25 5:37 PM, Akhil P Oommen wrote:
>>>> In A6x family (which is a pretty big one), there are separate
>>>> adreno_func definitions for each sub-generations. To streamline the
>>>> identification of the correct struct for a gpu, move it to the
>>>> catalogue and move the gpu_init routine to struct adreno_gpu_funcs.
>>>>
>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>>> ---
>>>
>>> [...]
>>>
>>>
>>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>>>> index 44df6410bce1..9007a0e82a59 100644
>>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>>>> @@ -683,7 +683,7 @@ static const struct adreno_info a6xx_gpus[] = {
>>>
>>> Somewhere among this diff, a619_holi needs to have gmu_wrapper funcs
>>
>> Could you point me to the holi's devicetree? Currently I see only a610
>> (sm6115) and a702 (qcm2290) uses gmu_wrapper.
> 
> I don't think upstream was ported to SM4350. SM6375 should need the same
> hook, but I don't know why Konrad didn't enable GPU on that platform.

I'll try to fire up -next and confirm it hasn't bitrotten.

Konrad

