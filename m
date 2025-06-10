Return-Path: <devicetree+bounces-184243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D618FAD3610
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:23:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 666D13A568A
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:22:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95EC7290D99;
	Tue, 10 Jun 2025 12:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FPrOUMtk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D38290BDE
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749558149; cv=none; b=Y9eeKVemGS2402+L6Ob6WNy2bLHLEU6vSsTG4X9OXrakcFDRjZbl3J1VPNvSm6IMxg/BuAAxnM8uHl0Ak5GW8sfFU2FxY+BLexBXb/YlB68H3Fu0hYhJLqiU9zMJEqogvGi5AMnHfSAZeL9ARP/oRE2eyeTSsdY+TTedIi420uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749558149; c=relaxed/simple;
	bh=3nov+w/79AwM+k5VQ8ISrPEvTChWKftWH47/vtAg6wM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DYRQ+Gq3E6gvA6+FMvT4Q2RpqgHTfwCog7TJe6Cj4it9eyb1egVmkV0UpDoluoiuEoV97UkFTaM7WLarArZCjmDHtWkSyMmncpG5RiI1A2l5hB7RR6ldtInZxbtRFt1Lu/fR4X1u58tU3FXtRm/dlKYAXR18VJiUOYl8t6m0aXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FPrOUMtk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A9EmmG009416
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:22:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8+4GZCvZhqyfrSQa1jH54+D2CYSj2ei+fDIMKlD+3+I=; b=FPrOUMtkFOEZnRW/
	k65P0MVJ+tKJPY2J6w7H6qFQK7vcf1T9qrhM9C5qgRDmxa0E9zrj8w2v7SkQCA6L
	b5NgBFHu9MD82+Rtug93nKmWcX7VZNQGtQvrPIJgKorlaBJyIiTN6GFudRUBP90U
	3Kp4188+oJwGe6d8WHw2E5ulIBKQdPw0c16r5DBiFQi0mZqlYCSGsh7umsa3oiRZ
	vl7TjFQUovUoktHwr/fyIvX7LM3I3vvn5Ng6Z+dNEP57KotSdxeEDExyrOWlso2r
	SzwcXsSPpd6995iwS4aOS284L7wc0D+q7JF9moUOrJPwKZJ1op1fEo1CGFHAlPXJ
	FyucPg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ce9ses4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:22:26 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fadeceb4c9so10413176d6.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 05:22:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749558145; x=1750162945;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8+4GZCvZhqyfrSQa1jH54+D2CYSj2ei+fDIMKlD+3+I=;
        b=N2MYYohn3zmGKN+IB4LGMD0KwkNuELfAtotu2tCy7OC8df3sWBtQYqn1d8l4781OH8
         B74fa8aupDAOlWFRQ5RUwxYUoq6640YEp40FJpnIFllgjvIC4H1EBa96uSJXi1xNbc4R
         fLy3eiPMvJVcVZyVH0F/0KwxKx3sf6Jp3vN0kUI0jLP4UL8OTIct6nRntWvcKUSFmAVY
         upp+4krK538qyUBrlLMO7udcy4rRiMJOYsEbdZ3qzyajj8FqqKf+uVTxd/hYRFg/SsED
         xSEwubeP3jf6QHS9OrNjl6EEJGA5X+xKJvAuAUQ1w/PCpmWolOckbA3TzinTeD4L+fxJ
         tXDQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3ovLrekLkKu0dvX2Ffqkn1DMs3fPqwuAOlCWaf3PQeVAfrjkfZLER521xY7dtIv/myUDFc2+xfe6/@vger.kernel.org
X-Gm-Message-State: AOJu0YyjF6yZ7B9RaLe24P0dskSnXxviulrgOU9NoWswHfxiwNd79kz/
	dV/hF0Bjd4pCdYmi42kpYO54B1dLgIJfji0L6z0kS0ka6UKuFebmT5QwEFmrm4dPslbaAk+iWYd
	78uoMWYsh7VLeVnc+Ktvh9rtsSxmef6xh2ZTkG2a3VqYeKUI6eImha7BRAu0yGu8DyELWq4tb
X-Gm-Gg: ASbGncu2UwZe7Zew6MCbG5ZEAgE94Xg4WZI4xM+n0nTrrkCYcU0q1XAFYUqlBjiDYiw
	sl02YodbrJhRnAv01pQUnuYY4BtiHNWbkoGIP2v5gyouW3jahZX8XgzaqFcr5PFH0q33EjXyR9f
	wpNGPCdTsPbqKFR67E++4ZcAITfjZLe0+lJ9cXm/x3uCZuDCr5dwY28g+GmjOH375F2wjwh6e1A
	AX9tzkoLWmqn26TIry8OzbVP9dO79RehKZ7G1RJa4S9T9h8nIg83ZiZ5JNrqYrZ3aPdQUiXGAoQ
	bq0/i1gV9HkLMQrodvL/cKYU8mhrMRw5wtwbSu31BJ9mDU8UtaB+AQM6dT/jHUjhH7v7Usn7K8p
	d
X-Received: by 2002:a05:620a:45aa:b0:7c0:cc94:46c4 with SMTP id af79cd13be357-7d331c130dbmr936369485a.2.1749558145248;
        Tue, 10 Jun 2025 05:22:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4oLcbxXyO1xJ2NayVpeZmZ1NXXp1e08tUxMVaRB6TMRHASLUCAd4tOqY6AsJIISpCrsxCnw==
X-Received: by 2002:a05:620a:45aa:b0:7c0:cc94:46c4 with SMTP id af79cd13be357-7d331c130dbmr936366685a.2.1749558144803;
        Tue, 10 Jun 2025 05:22:24 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc38a11sm708732266b.116.2025.06.10.05.22.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 05:22:24 -0700 (PDT)
Message-ID: <024285a5-734a-4543-8a7b-897f8186904d@oss.qualcomm.com>
Date: Tue, 10 Jun 2025 14:22:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] dt-bindings: soc: qcom: pmic-glink: Move X1E80100
 out of fallbacks
To: Fenglin Wu <fenglin.wu@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Sebastian Reichel <sre@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org
References: <20250530-qcom_battmgr_update-v2-0-9e377193a656@oss.qualcomm.com>
 <20250530-qcom_battmgr_update-v2-6-9e377193a656@oss.qualcomm.com>
 <4e093835-af3b-4a84-b42f-fa7d3a6f60a1@kernel.org>
 <14cba9ae-e3bb-46e8-a800-be5d979b2e06@oss.qualcomm.com>
 <b07200a2-4e7b-480e-a683-d116e7da8de8@kernel.org>
 <c4be4b97-6104-45e3-b555-6691e369c3a4@oss.qualcomm.com>
 <bcf487c9-e522-44a3-b094-daf98823a195@kernel.org>
 <a840aa80-75ef-4527-bc17-226ba5157a85@oss.qualcomm.com>
 <898e998f-11b2-4b08-9580-263046c0615a@kernel.org>
 <9f332148-57ef-4716-8866-36c702a9aeb6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9f332148-57ef-4716-8866-36c702a9aeb6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: pt8p6lqcw3osxOepOi2wHMlXf08W7PGl
X-Authority-Analysis: v=2.4 cv=drjbC0g4 c=1 sm=1 tr=0 ts=68482382 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=A600xkEho2GeGM6nczkA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: pt8p6lqcw3osxOepOi2wHMlXf08W7PGl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDA5NiBTYWx0ZWRfXyqP9ym/Ww/KW
 X/bK0e+vmbtjaDqASKEgLJWZsl8x1J06PT4o6bGcYQ9syF8+TqZ42fQmwWQJ6zPbQSn4HfjEVKe
 RozmWBBDGVGDGkFQwqez6SXZytpRwF02jZxJcaiWYndCYO01uqZan4yNUhsp2K00P7TyRH411xy
 LmpW9++VDeCdeQeIvVz3JdOHfAIimNd/O54Llt/V+GPXXflI3sXlAb2ZRuibjgHwIKf6NZduWzy
 HYztnWc3c0jpfegS6R84uSZ6ncoYfceDSnl8BJtRHQSyxDSW7t8ZnTEND1ywYor/zXlSlFu8TBu
 Oy6RUi05IKKcpprWrbv+2IpvIqh2K9sPC7K/XETgG93wgXJ7Na7lp0nIGeqy8BCf8ihdNhU3Q5d
 kYVzrWoliH1SxCsKwEY6xqYek7+VmHyXnaek4PIt8gHQ/QB2EuLuyF0dtjy0LC7h/MDf3oV/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_04,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 bulkscore=0 mlxlogscore=999 adultscore=0
 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506100096

On 6/4/25 11:40 AM, Fenglin Wu wrote:
> 
> On 6/3/2025 5:34 PM, Krzysztof Kozlowski wrote:
>> On 03/06/2025 09:41, Fenglin Wu wrote:
>>> On 6/3/2025 3:06 PM, Krzysztof Kozlowski wrote:
>>>> On 03/06/2025 08:59, Fenglin Wu wrote:
>>>>> On 6/3/2025 2:47 PM, Krzysztof Kozlowski wrote:
>>>>>> On 03/06/2025 08:42, Fenglin Wu wrote:
>>>>>>> On 6/2/2025 3:40 PM, Krzysztof Kozlowski wrote:
>>>>>>>> On 30/05/2025 09:35, Fenglin Wu via B4 Relay wrote:
>>>>>>>>> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
>>>>>>>>>
>>>>>>>>> Move X1E80100 out of the fallbacks of SM8550 in pmic-glink support.
>>>>>>>> Why?
>>>>>>>>
>>>>>>>> Do not describe what you do here, it's obvious. We see it from the diff.
>>>>>>>>
>>>>>>>>
>>>>>>>> Best regards,
>>>>>>>> Krzysztof
>>>>>>> Previously, in qcom_battmgr driver, x1e80100 was specified with a match
>>>>>>> data the same as sc8280xp, also sm8550 was treated a fallback of sm8350
>>>>>>> without the need of a match data.
>>>>>>>
>>>>>>> In ucsi_glink driver, sm8550 had a match data and x1e80100 was treated
>>>>>>> as a fallback of sm8550. There was no issues to make x1e80100 as a
>>>>>>> fallback of sm8550 from both qcom_battmgr and ucsi_glink driver perspective.
>>>>>>>
>>>>>>> In patch [5/8] in this series, in qcom_battmgr driver, it added charge
>>>>>>> control functionality for sm8550 and x1e80100 differently hence
>>>>>>> different match data was specified for them, and it makes x1e80100 ad
>>>>>>> sm8550 incompatible and they need to be treated differently.
>>>>>> So you break ABI and that's your problem to fix. You cannot make devices
>>>>>> incompatible without good justification.
>>>>> I would say x1e80100 and sm8550 are different and incompatible from a
>>>>> battery management firmware support perspective. The x1e80100 follows
>>>>> the sc8280xp as a compute platform, whereas the sm8550 follows the
>>>>> sm8350 as a mobile platform.
>>>> Not correct arguments for compatibility.
>>>>
>>>>> The difference between them was initially ignored because the sm8550
>>>>> could use everything that the sm8350 has, and no match data needed to be
>>>>> specified for it. However, now the sm8550 has new features that the
>>>>> sm8350 doesn't have, requiring us to treat it differently, thus the
>>>>> incompatibility was acknowledged.
>>>> So they are perfectly compatible.
>>>>
>>>> I really do not understand what we are discussing here. Explain in
>>>> simple terms of DT spec: what is incompatible that SW cannot use one
>>>> interface to handle the other?
>>> 1. x1e80100 was a fallback of sc8280xp, it used "sc8280xp_bat_psy_desc"
>>
>> No, that's not true. Read the binding again:
>>
>>                - qcom,x1e80100-pmic-glink
>>             - const: qcom,sm8550-pmic-glink
>>
>> No fallback to sc8280xp.
>>
>>
>>> when registering the power supply device.
>>>
>>> 2. sm8550 was a fallback of sm8350, and they all used
>>
>> Also not true. The remaining fallback is not sm8350.
>>
>>
>>> "sm8350_bat_psy_desc" when registering the power supply device.
>>>
>>> 3. x1e80100 and sm8550 they are incompatible as they are using different
>>> data structure of "xxx_bat_psy_desc"  and other “psy_desc" too, such as,
>>> ac/usb/wls.
>> Look at the driver and bindings now - they are compatible. It looks like
>> you made it incompatible and now you claim the "they are incompatible".
>> No, you did it. Look at the driver.
>>
>>
>>
>>> 4. For charge control functionality, it's only supported in the battery
>>> management firmware in x1e80100 and sm8550 platforms. And the change in
>>> battmgr driver (patch [5/8]) adds the support by using 2 additional
>>> power supply properties, which eventually need to be added in the
>>> "properties" data member of "xxx_bat_psy_desc" when registering power
>>> supply devices. Hence, "x1e80100_bat_psy_desc" and "sm8550_bat_psy_desc"
>>> are created and used separately when registering power supply device
>>> according to the "variant" value defined in the match data.
>>>
>>> The main code change is in [5/8], I am pasting a snippet which might
>>> help to explain this a little bit:
>>>
>>> -       if (battmgr->variant == QCOM_BATTMGR_SC8280XP) {
>>> -               battmgr->bat_psy = devm_power_supply_register(dev,
>>> &sc8280xp_bat_psy_desc, &psy_cfg);
>>> +       if (battmgr->variant == QCOM_BATTMGR_SC8280XP ||
>>> battmgr->variant == QCOM_BATTMGR_X1E80100) {
>>> +               if (battmgr->variant == QCOM_BATTMGR_X1E80100)
>>> +                       psy_desc = &x1e80100_bat_psy_desc;
>>> +               else
>>> +                       psy_desc = &sc8280xp_bat_psy_desc;
>>> +
>>> +               battmgr->bat_psy = devm_power_supply_register(dev,
>>> psy_desc, &psy_cfg);
>>>                   if (IS_ERR(battmgr->bat_psy))
>>>                           return dev_err_probe(dev,
>>> PTR_ERR(battmgr->bat_psy),
>>
>> This explains nothing to me. I think you did not get my questions at all
>> and just want to push whatever you have in drivers.
>>
>> Such ping pongs are just tiring, so go back to my previous email, read
>> it carefully and try harder to understand what compatibility means.
>>
>>
>> NAK, you are affecting the users and ABI with justification "I make it
>> now incompatible, so it is incompatible".
>>
>> Best regards,
>> Krzysztof
> 
> Thanks for the explanation with patience. I misunderstood the fallback behavior.
> 
> I was worried about if the compatible string matching would work correctly if both the device node and the driver declared multiple identical compatible strings.
> 
> I understand now and even if the device node and the driver have defined multiple identical compatible strings, the best match which is the most specific compatible string will be found.
> 
> So in the example below, for X1E80100-CRD, the battmgr driver will always match to "qcom,x1e80100-pmic-glink" which is the most specific compatible string defined at the beginning of the device node compatible string, and the compatibility has not been broken.
> 
> In qcom_battmgr driver:
> 
> static const struct of_device_id qcom_battmgr_of_variants[] = {
>         ...
>         { .compatible = "qcom,x1e80100-pmic-glink", .data = (void *)QCOM_BATTMGR_X1E80100 },
>         { .compatible = "qcom,sm8550-pmic-glink", .data = (void *)QCOM_BATTMGR_SM8550 },
>         ...
> };
> 
> In x1-crd.dtsi:
> 
> pmic-glink {
>           compatible = "qcom,x1e80100-pmic-glink",
>                      "qcom,sm8550-pmic-glink",
>                      "qcom,pmic-glink";
>         ...
> 
> }
> 
> Let me know if my understanding is correct. I will drop patch [6/8],[7/8],[8/8] in next version.

Unless we have some mobile-firmware-specific calls/behaviors that apply to
sm8550, but not to x1e80100 (which I don't believe we do), I think this is
fair

Konrad

