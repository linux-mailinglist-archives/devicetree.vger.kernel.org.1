Return-Path: <devicetree+bounces-164960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEC7A8304D
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 21:19:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2A663A4B0B
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 19:17:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0E5B1E25F2;
	Wed,  9 Apr 2025 19:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P1ZaGMYu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498C91BC073
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 19:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744226262; cv=none; b=s3pD9IOz9ggZ1FDQ3iW97tcNepPFc9vDNM3WaL5BQfC780dxMhjUGOPeXEF8ixc7uQ73q+TlxhdeAAnDF3p2JlSBglbSoOf7js/OqCuVjhd21g0pZjhFWwv5NDd4Y0JpYrmjeaOOK7Z7lAWAP9s/9ZtAwIqXB6fSxl1Q1V1vBhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744226262; c=relaxed/simple;
	bh=9AOGJ16kRt3tVGIANi9OM2YSv2giRzrvMBRJunLNMic=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=de68yOhm2klYjyUhRqSVzSDpsGbFpvVyoKgEmcjrYaXbiPYp/U78BdkqjxtyEhGpM1yW7HL7n5tRwOHVz1+eepvSwLg2NlgbnEKMRekiiZkdTdF4BZ/2ZK+cRIBQ+Yr0M5Qg1Q7ahTQfo+8VRFjv1r5tGWxAuiwLts7Zrz4nWdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P1ZaGMYu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539HvWaW032302
	for <devicetree@vger.kernel.org>; Wed, 9 Apr 2025 19:17:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lqcvEHgtU6uy6Jy9R3xfK2JQeeSFv9Thsxw6q2/X9Mc=; b=P1ZaGMYuZPrZL5KR
	XZiKtavnC4AyIYCh6dOxImZoZXu0m7BNx7H4elJ23PoihUL+Yuv1xQghUfUqO2yf
	EKskcXY3S1OMlYHl4wwRuTX7zoGuXZzmGgDflk31KBTTRY+Vof/kGRj3+dduSnIe
	VsUIZ+BbUoLuDCKXJ1OSj3p7XnoOaBPUgA+l6bsI5ihatCLcgzebo8Mqv7RYeBuS
	vEshVJZfQa/qOQXvTmQTuD9U5qNFhJcfIneHe4AjsA7GH+LKOpjUiNlznAqXqLAB
	w+rAT4Hsg5XGv7T0ykTAkm0d2S5jDG9F7IzVICI/v8yzG400QvZcxRBCWTIfUv6C
	0MK32A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbeckem-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 19:17:40 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c547ab8273so512185a.3
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 12:17:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744226259; x=1744831059;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lqcvEHgtU6uy6Jy9R3xfK2JQeeSFv9Thsxw6q2/X9Mc=;
        b=eJ/I8AFxLVD0C4McyXAntvYbexMZ78zMOai7VwC56cfzFwSbG4C0ttCfRBSTtLOh9o
         +psF7y5UxjpC7oRTk7wCa14f2xrNAF47uiMYD6meAVHC8pdlHVoBJnGRDjE22rhIO78b
         wgFlDhE3kIl2CxJ+pQyrtG/t+7XbGUGIJrm+DCJ7YI56DPACKOvm0c6ZmPtiOe61aOFT
         s+P//yQGtRbKkI1bGQfeIZaIdK2DUxCzLMgd3CeFysLyECiT4qfD3nCxatvaSPcQv9Lw
         UysuwVOT89GlD5/Q9nSyze4XP9BF2LVYh93Kg9XHZqwjNT32ak102/DQiRHwDamK6cLi
         q1mg==
X-Forwarded-Encrypted: i=1; AJvYcCVzuYOkUXmFHXfxjV6lGv3FJ2jU18tGYzN6vFawmqMduViyrH/xtkp28TdiQM3sDD5Msl9RgWsgxH8L@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb9DtgI3BhLHuxY4Rb/1IpSMl6jchUJCZoHgYdKIxMnZyH1TXb
	s1KS0cV9FZUJM0V7pwk3EppjpuH9B+um6Croe0fQ5AkZ15CJzGDZcF2rjtsLwsLS+YnFRDj9asp
	yaV36/zbNPnkRLy+QermdPYY8ww7Fl/ELYVsPiLlkXPoixTw0I3uS2U/DDZfl
X-Gm-Gg: ASbGncs08+Cyt6shhaxWN+s2qmPv8E40j5WskPcxAEOzgzZSb4fS2u0RqMVBj++p3Q+
	SvD9sA/JPjDtXutOXDT+zDGpT9m58L6T9E+lOZHbjN/p+bZb/D70R+ZRJjVjyIZJUqFRMock0PO
	MHNj41KcLhDidmdmWGZleCXF+6NtiNoTo6nM4CgVHqZvNJc328OctFOfh0BHGA2IQ4fQiERJFXA
	p3gGljKaOYl6g57IYF4S56Ba/OhkDtitrgNr4NwIgoPnxwpwIdZckYWjeYlDb6fwimssSj4gEkQ
	0Fosy9r8bGw2an2Twx4bGRJ0IDHAW2hMPlMeuhZ4WQg7+EEwAM1ScLucG3mlL5z8ew==
X-Received: by 2002:a05:620a:d93:b0:7c5:606d:dccd with SMTP id af79cd13be357-7c79cbbe2bbmr258668685a.1.1744226258820;
        Wed, 09 Apr 2025 12:17:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNs/f/dMR7v4+f3J7T8RQuT+APxl+MlHJ8DyM2bYtuDetjuAYExfOKY3Pr7QtPXMMvnZoJgQ==
X-Received: by 2002:a05:620a:d93:b0:7c5:606d:dccd with SMTP id af79cd13be357-7c79cbbe2bbmr258665385a.1.1744226258315;
        Wed, 09 Apr 2025 12:17:38 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1bb3553sm140768266b.29.2025.04.09.12.17.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 12:17:37 -0700 (PDT)
Message-ID: <e3faf128-6a36-428e-8e34-55d87d4686ac@oss.qualcomm.com>
Date: Wed, 9 Apr 2025 21:17:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/4] media: venus: pm_helpers: use opp-table for the
 frequency
To: Bryan O'Donoghue <bod@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Renjiang Han <quic_renjiang@quicinc.com>,
        Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241219-add-venus-for-qcs615-v6-0-e9a74d3b003d@quicinc.com>
 <20241219-add-venus-for-qcs615-v6-2-e9a74d3b003d@quicinc.com>
 <fde279ad-27ed-4947-a408-23139bcd270a@oss.qualcomm.com>
 <351a9654-ffa1-4727-b772-95d4ed113c81@quicinc.com>
 <ac145c57-1db3-4747-88e2-02825f958d5a@oss.qualcomm.com>
 <6f11921a-4ee8-4f40-9131-529f548f681a@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6f11921a-4ee8-4f40-9131-529f548f681a@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: EdKsnofw2o2MgSLKJqRYcbhhm0ztsFaj
X-Authority-Analysis: v=2.4 cv=T7OMT+KQ c=1 sm=1 tr=0 ts=67f6c7d4 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=6lrxKQdraE29tqtzjYYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: EdKsnofw2o2MgSLKJqRYcbhhm0ztsFaj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=999 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090128

On 4/7/25 5:39 PM, Bryan O'Donoghue wrote:
> On 09/01/2025 13:05, Konrad Dybcio wrote:
>> On 2.01.2025 6:38 AM, Renjiang Han wrote:
>>>
>>> On 12/23/2024 10:17 PM, Konrad Dybcio wrote:
>>>> On 19.12.2024 6:41 AM, Renjiang Han wrote:
>>>>> The frequency value in the opp-table in the device tree and the freq_tbl
>>>>> in the driver are the same.
>>>>>
>>>>> Therefore, update pm_helpers.c to use the opp-table for frequency values
>>>>> for the v4 core.
>>>>> If getting data from the opp table fails, fall back to using the frequency
>>>>> table.
>>>>>
>>>>> Signed-off-by: Renjiang Han<quic_renjiang@quicinc.com>
>>>>> ---
>>>>>    drivers/media/platform/qcom/venus/pm_helpers.c | 53 +++++++++++++++++++-------
>>>>>    1 file changed, 39 insertions(+), 14 deletions(-)
>>>>>
>>>>> diff --git a/drivers/media/platform/qcom/venus/pm_helpers.c b/drivers/media/platform/qcom/venus/pm_helpers.c
>>>>> index 33a5a659c0ada0ca97eebb5522c5f349f95c49c7..b61c0ad152878870b7223efa274e137d3636433b 100644
>>>>> --- a/drivers/media/platform/qcom/venus/pm_helpers.c
>>>>> +++ b/drivers/media/platform/qcom/venus/pm_helpers.c
>>>>> @@ -43,14 +43,20 @@ static int core_clks_enable(struct venus_core *core)
>>>>>        const struct venus_resources *res = core->res;
>>>>>        const struct freq_tbl *freq_tbl = core->res->freq_tbl;
>>>>>        unsigned int freq_tbl_size = core->res->freq_tbl_size;
>>>>> +    struct device *dev = core->dev;
>>>>> +    struct dev_pm_opp *opp;
>>>>>        unsigned long freq;
>>>>>        unsigned int i;
>>>>>        int ret;
>>>>>    -    if (!freq_tbl)
>>>>> -        return -EINVAL;
>>>>> -
>>>>> -    freq = freq_tbl[freq_tbl_size - 1].freq;
>>>>> +    opp = dev_pm_opp_find_freq_ceil(dev, &freq);
>>>>> +    if (IS_ERR(opp)) {
>>>>> +        if (!freq_tbl)
>>>>> +            return -EINVAL;
>>>>> +        freq = freq_tbl[freq_tbl_size - 1].freq;
>>>>> +    } else {
>>>>> +        dev_pm_opp_put(opp);
>>>>> +    }
>>>> I'm not super convinced how this could have ever worked without
>>>> scaling voltage levels, by the way. Perhaps this will squash some
>>>> random bugs :|
>>>>
>>>> Konrad
>>>   Thanks for your comment.
>>>   The default value of freq is 0, and then dev_pm_opp_find_freq_ceil is
>>>   used to match freq to the maximum value in opp-table that is close to
>>>   0. The frequency values ​​in opp-table and freq_tbl are the same, and
>>>   dev_pm_opp_find_freq_ceil is used to assign the minimum value in
>>>   opp-table to freq. So the logic is the same as before. I'm not sure if
>>>   I've answered your concern.
>>
>> We talked offline, but for the record: my concern here was about
>> clk_set_rate() not scaling RPM/h voltage corners, which this patch
>> fixes
>>
>> Konrad
> 
> Konrad is this an RB from you, do you have any other concerns with this code ?

OK the comment above was misleading - back then I must have thought this patch
changed clk_set_rate to dev_pm_opp_set_rate - which is not what it does

I won't be blocking this, but I'm not super keen on thoroughly reviewing it
either - there are a lot of raw clk_ calls that are hard to keep track of.. 

Konrad

