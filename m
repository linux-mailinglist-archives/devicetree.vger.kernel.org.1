Return-Path: <devicetree+bounces-243732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DECFC9BCD3
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 15:36:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8BE024E3A47
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 14:36:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35FFA21773D;
	Tue,  2 Dec 2025 14:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DXNCICc7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iZQQmc+m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949A6202C48
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 14:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764686181; cv=none; b=FGiHE+ivT0dPFtxrpmp5syvZtqaaKMM4RuZc7nivF4myxu04sKiuVeX8yjVW2Vv+axWLfNenrCNOq/Mo7QTTH1qlHUGqX4LlunVzt78/y8rT7CVZHNChFoejDYZtABKrUPqdS7EtW3Mu2ocyjmF0/IgvwrNO8cpoN++N7gLG2Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764686181; c=relaxed/simple;
	bh=La+hniVgzf3D66S+1F5MtThrL11X6coY+6OEjdFY2aI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EnEewE9Tq3w1n3BDQ9Ge3EP9M7tUE/0bHpj/CldaDYdEf15yUsrnLl95iqfKgiud+Jdyga+/RvjPEUIyd8L6nzjV8nawScbo1Dp9hAFHNMifer9Jhh6OIydWEZ+L1H21BHpg5BQUMI1c5v1w7B4rPC5Jseh8YcvzRm5TTnRFSzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DXNCICc7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iZQQmc+m; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B28DJOs1491718
	for <devicetree@vger.kernel.org>; Tue, 2 Dec 2025 14:36:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RGg6svcB8WSn59/25/V2C8/V5hGMCVXDiLfVAExTZ0I=; b=DXNCICc7lZX8b2v5
	Lyez83gztwxi9SOWxoKQ8eyIjJGHu6x/w3Q2LaBKcwFK/4sneffPQ6akfGFEINAg
	xo2OG6p0lOeVBBncae7KthUeaCieYX6yKlWa+eZ1+3hKhdFJCcngDbVhW0LBYOAv
	nckEXk6BqOAfqYt5fSX85/WEzd8mzyDNKZXjI31rWhRVlLxSLFiIrwEE0tur7/Kk
	a2WbuOc0rSRE0qe50eynWMZa5eH0KxNTncqoUzcikZyY1vPb4U0S516ZAiw5KyKF
	5qBAoIzt4ZumOz9rF42q05lDzGF+95z11XcvmmZN6CQ7kBLX0uqzBKRek9/BDmeR
	L2YBmg==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4askbd2qen-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:36:18 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5de05befb05so587778137.0
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 06:36:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764686177; x=1765290977; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RGg6svcB8WSn59/25/V2C8/V5hGMCVXDiLfVAExTZ0I=;
        b=iZQQmc+meBt7utuN9ekgwYXS+DASQFjmd6sRx24JrSy+LpG6skCU3QMbkTaYLZ9i07
         9Y1Ks5DJs/ZMm2ZVXSmyIYHn7l2aaVGkkvGymSBFI4pV6qA6kzYFFf0IKjUZAZK2VUqI
         1K2GRQHfFUJU+Q5WgjVFMkJfiYrsfKMRWUJ+mUxr+Sry+WRgDLSuo3OIECDhYI2oYPU5
         1Z57BBfkdon8F4Mmna0G410hCIPnAJ3KZATVDX1GAjvtpHh3+jAbzEyog336UnB0sfVl
         k4lB50Wpt99NAZGh0/rIIVhkjlfaeqh1X1qkssP2hoP37oUpD0y/eDaB+Vuk4QsKd95c
         hk/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764686177; x=1765290977;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RGg6svcB8WSn59/25/V2C8/V5hGMCVXDiLfVAExTZ0I=;
        b=VGrqK6bwg8Wb/fFghAMPqv+nSqZ6yzNViPzuKBLMOc0YbJ8pQjCZIZMhWqLXmgmPYB
         osFKhYv/lZwPvPTaizImJLm34eYxonOSNL5uux8Fu1MIcp5/8PHQ3/3SwpUrEa2CVgS0
         EzXeBs3wv1LYpt3Tzfg0M8m/WaCsr4q5Rgmh8V/ThVMDt038YHOrwJXw0m0oVsssDu5O
         cm7N74WdywlsWpQOTH+PJoQ2gscRB/wlXgtdCv6SVpQc5Sxh/yOYVjSKAfXjUV3h6I/C
         6v1O8zxePggO5DzziiHE39LewysFpkamrS0Yx/nH0Z60JWpvKiEimHqMrVBL4CEqnKyj
         3Oew==
X-Forwarded-Encrypted: i=1; AJvYcCWr+RbdGiDThr7F+Mcap18qmEIz0yI+TRk1UQ3bEHAej4my/a4cBTHSzXBZKbB1lNzgNgvnoaLTZxmv@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3Cv/uXdm1pCNT6rNyC/+X5ke6obQjNWZBPvwpaUY7iMtzEfrk
	fUvg89mKPkleYaMbNhTnlyY+J20BZ+18L0ZFKIDgmHWN2ACSTvXCjMC/bT5fZHs2DVHYuRGhHIG
	PdJSD6NahCP91W4Lvm/nfQGSO977R+FMZVj0BX8HuzAjWVrK6ONEw9bpT4FtwMz7I
X-Gm-Gg: ASbGnctcdCdzgPBPgzx4rlAVDa0MYqUKpzRGd99fIMXFCHuE7Hu7KLc6Mfyr7TY2YTN
	mUYyobDSnpR0+keYMbokkLBv0dwArcIbuMHopkPqdbmKK90VgspZoSg1319wsRGP6z5i+lxq6eO
	wz/1iFp5oDj5y7QoMgyLJtmTFOtWrTDKe/VMafvzaYSeIeMF6wDE8b81AJjf6uKjmvq8dz+Agfj
	FX+bBGAJzGpKeywNw+rcNYyzxVddRmLRiq4R3wm3Vcw60Z3S84OAFCIQPWbQFMNWdLlFmhmHQDZ
	dS+zZtCbiDGvMap36U8JRzmqxQ+YsPtPjACLRBXc3dV4Zdy86/dEdCl8Jfs2TRFNvijaitz1Fp9
	svNco72KLxdTnD90thOsce4VFL/B4PAZNNOUNC1qaUaQhmbUVZ0VVJRcnLvteuTccBg==
X-Received: by 2002:a05:6102:290e:b0:5df:bde2:676d with SMTP id ada2fe7eead31-5e1e6a5b09dmr9499296137.6.1764686177604;
        Tue, 02 Dec 2025 06:36:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHm0Td9bXw/4mnbNwbZwhvWFhq+qGr7bZGDaxEptZ4Su/gfab/n7VQBzerwW1hy+Fi5844YBA==
X-Received: by 2002:a05:6102:290e:b0:5df:bde2:676d with SMTP id ada2fe7eead31-5e1e6a5b09dmr9499280137.6.1764686177128;
        Tue, 02 Dec 2025 06:36:17 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f51c68d0sm1560837766b.28.2025.12.02.06.36.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 06:36:16 -0800 (PST)
Message-ID: <c9b872c3-b891-419e-b380-32b405229668@oss.qualcomm.com>
Date: Tue, 2 Dec 2025 15:36:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] clk: qcom: gcc: Add support for Global Clock
 controller found on MSM8940
To: barnabas.czeman@mainlining.org
Cc: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Adam Skladowski <a_skl39@protonmail.com>,
        Sireesh Kodali <sireeshkodali@protonmail.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lanik <daniilt971@gmail.com>
References: <20251116-gcc-msm8940-sdm439-v1-0-7c0dc89c922c@mainlining.org>
 <20251116-gcc-msm8940-sdm439-v1-2-7c0dc89c922c@mainlining.org>
 <793d5039-0506-4104-b4ce-64bfa3cc00eb@oss.qualcomm.com>
 <5C7A10CF-910E-448A-8BFD-F2A46782D3B9@mainlining.org>
 <8faa0c8e-6f21-4025-bbdf-d4ec18eb7628@oss.qualcomm.com>
 <869028d628bad9e1c37c3d9ea8346ba0@mainlining.org>
 <2220aea0-6139-4534-8c42-1331a642ab62@oss.qualcomm.com>
 <f0be91fdde1b542b2c18702b0c91f26f@mainlining.org>
 <13b44a8c-357d-4f98-8762-640179fe3ff3@oss.qualcomm.com>
 <14c40512a19b20199acd902bbe5f4598@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <14c40512a19b20199acd902bbe5f4598@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: bQ4sdV9ekXjhemuscWYmJdNxjIi6cvrB
X-Proofpoint-GUID: bQ4sdV9ekXjhemuscWYmJdNxjIi6cvrB
X-Authority-Analysis: v=2.4 cv=fLg0HJae c=1 sm=1 tr=0 ts=692ef962 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=__3jS35VPPOmPwVsJIIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDExNyBTYWx0ZWRfX+2mYstFlrhIw
 upP2o5Xh9wKlO88akAmlTdc0FbVFotT+r+8hNJ6ygourWYb5II+XZRqz4Nwvjy8igBR9q9dwoKr
 28FjRFC5XTkDtZ0Bln9YXyD7sLPeHDAYOkarNIWKhSpwO7mbcurnGi+s6CX1Wu5Pkd3NewFY4xI
 AivW35GHs8W8AX7ShKFi5Gev/VHkyP+aTboh3IcKwktoSwk1jwrB7Lr3it+i7fm3c8vFT+TYQpD
 ymrT7ZGoDmCwikbgRqXqSVI3Q8xVrVanPehPTIBGgstEs+WsSAYHU0CSBiT2jYg1v1Y3uYeSEYg
 RQ/eDDvjBYZlOZh6QCG0D5RnMNBrcSt3EWtRoe40PPX4VA1IDKzdHU89lEw/nN415WY9paLQLiS
 GGMxqqfriNvaZ4SG/srZWc0W3Xj9hQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-01_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 phishscore=0 adultscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512020117

On 12/2/25 2:40 PM, barnabas.czeman@mainlining.org wrote:
> On 2025-12-01 13:26, Konrad Dybcio wrote:
>> On 11/30/25 3:50 PM, barnabas.czeman@mainlining.org wrote:
>>> On 2025-11-17 15:17, Konrad Dybcio wrote:
>>>> On 11/17/25 3:02 PM, barnabas.czeman@mainlining.org wrote:
>>>>> On 2025-11-17 13:17, Konrad Dybcio wrote:
>>>>>> On 11/17/25 9:51 AM, Barnabás Czémán wrote:
>>>>>>>
>>>>>>>
>>>>>>> On 17 November 2025 09:03:53 CET, Taniya Das <taniya.das@oss.qualcomm.com> wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>> On 11/17/2025 3:05 AM, Barnabás Czémán wrote:
>>>>>>>>>
>>>>>>>>> +static struct clk_branch gcc_ipa_tbu_clk = {
>>>>>>>>> +    .halt_reg = 0x120a0,
>>>>>>>>> +    .halt_check = BRANCH_VOTED,
>>>>>>>>> +    .clkr = {
>>>>>>>>> +        .enable_reg = 0x4500c,
>>>>>>>>> +        .enable_mask = BIT(16),
>>>>>>>>> +        .hw.init = &(struct clk_init_data){
>>>>>>>>> +            .name = "gcc_ipa_tbu_clk",
>>>>>>>>> +            .ops = &clk_branch2_ops,
>>>>>>>>> +        },
>>>>>>>>> +    },
>>>>>>>>> +};
>>>>>>>>> +
>>>>>>>>
>>>>>>>> Is the TBU clock used on 8940 by a SMMU driver?
>>>>>>> As far as I know no MSM8940 is using same smmu driver and bindings like MSM8937.
>>>>>>
>>>>>> On msm8939, the clock needed to be turned on for the GPU SMMU
>>>>> I have not got any qcom-iommu issues on 8940 but i think it could come when i try to add ipa2 driver
>>>>> for the SoC until i do not know where to check it.
>>>>
>>>> I can't find a definitive answer, but it's most certainly going to be
>>>> necessary to turn it on
>>>>
>>>> Konrad
>>>
>>> I have enabled ipa2-lite for 8940 at downstream and it can cause gpu to crash.
>>
>> Really!?
>>
>> FWIW the clock on 8939 is called GCC_*GFX*_TBU_CLK so it being related
>> made more sense. Here, I see no connection :/
>>
>> Konrad
> 
> I have find out the issue was caused by the interconnect, removing sync_state callback
> makes the ipa driver working, the ipa tbu clock do not needed to be enabled by smmu.

That's bad. Removing .sync_state keeps *all* the interconnect resources
enabled, and more specifically pinned to their maximum performance state.

If you need to remove .sync_state, it's a good indicator that you're missing
a vote one of these ICC paths. I would imagine it's precisely the IPA-MEM one.

Konrad


