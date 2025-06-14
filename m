Return-Path: <devicetree+bounces-185966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CB3AD9F7A
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 21:31:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22039189969D
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 19:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF1702E3389;
	Sat, 14 Jun 2025 19:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FixSNMyp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AFF19C546
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749929488; cv=none; b=Eip0UsrfmK5IGEiMINM/GY8jWAORlX/YUSSedy1VtkTYA0TWU55mLYepdnKElA5XVcUb9cA0gIWd/kHboeZuxIhYPBahtnFq9gqIXizr1EnM5UQmfuc7Sg9Bnn15T/SZnSWsAaKOdbG7kfzuyQ51F8BpSCBiMsJWDXz6pSo/UdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749929488; c=relaxed/simple;
	bh=6wGaCAB/yIhoaUvyyK/d54sw5+H0cGEiYk19Zi4EpmY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rqejnMxXgYoM8jauDcNfYF7oeCmIIxCS71h7roXCDX9KhPO+5oi+5nzi1Yy0j0mtVJm3uPbkwZx49Dn5kuC3v7m8ljhGCJyMkN+XYa4kbIcaXisQLdhbm6gGD6Koa5MTBi4Iv+tQS3+kuqa8E8+GoUoDfpKm3yHOR7un4Ip+ES8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FixSNMyp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EIUJWh010966
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:31:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Mbw1P4iXCotc1yh/8nVbKSU0NE4NDWyxlScBFeQNPNs=; b=FixSNMypvlcekly6
	9CgCLhV4YCpqlJr4U99JLRgV8n+K3ZogPSYaC+Mz/YbMRWsg8eisRDDpV4d7wMTd
	q0OFpjc4NqY0nH1C4ddHNuWc4+0Cv4kf+rVvbOAjhg5NqB7eg9spAIK9454E0S2h
	+kDf56NkLwZJGPpLtQ6WFk4+DXoQ3SXeVFykuHN2VoMNMlDx5zJ0WcuObUBGzO5c
	/wnh//Q84LS4GCadibCO359gIWBynOfVLG0dO2Ga9jj01rdmiaYh7xO690XjXawv
	BOeNX0atjQzpLva5YwjZCDZjYMNWH5BsyE0xWmmtLaXQp3JeBM9R5bCLcj8lYB9b
	VQ6dgg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791hcrxkd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:31:26 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d094e04aa4so93114285a.1
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 12:31:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749929485; x=1750534285;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mbw1P4iXCotc1yh/8nVbKSU0NE4NDWyxlScBFeQNPNs=;
        b=eXdeiqwEPs5SVnjYfbzDeeJhZPJQut5amtF66LkOYhEixaLmvMtHxTGe7kKlhT4Cu5
         ajh46SFV1zZBSfEdVRxfZTbL13LlKZt49YzXUgl39EcycA1JigFB/4sYJ4y8CEmKT9FL
         jbVI1uNxMUFT2cYA7tdW4iZFwdxbd/261FdICHx3/treBph4lbvZKNeIpsbNcAoTM94H
         zpkeGbVJOhbb0bcHx9WyT43BMCvLqf3chWzTx+ow3zXrUhfOOtEKCYPtYFfpjM0GKlHr
         aXSe/W5S9JoGWDnMENUyZMjRG21YmWVUEAfV+TAV3Fw5wIeX6xxKb5PZyJrrRbIXa1Au
         201g==
X-Forwarded-Encrypted: i=1; AJvYcCX8LRBL6ah5/z89VaD1GrPEW+Y0wMFgCbHE2tNpm10yKTUuKiLY+ZUOQPeHB6ta9ufT3JDR9L5zGjwJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwSxqEeMVZF8hkPIPlMo9NJpAyoxt8kQju2sNi+Pz9CF+k1KTzg
	odJoBdeluSK4q81F13HyqyrgIa8rSFpkyEZkLAq63FahPQVtBhWBz8kicKhhYzh4fipKkDcS/rQ
	xeoLVF/ka/Zg5rnXJzJT8CLxUlZgf8NESkLC7RLoJeLanjnJPCRkgiE+Vg7g+iwkX
X-Gm-Gg: ASbGncuA0d24/URsqDgJMWEo6pWhm3qJSEF1keGhyvt3jVW/HU6Pa083ER0E8XBgrMI
	hZfiOYvR2XtuPG/EY0RQKbLDTqqd3vIIagJe1AvQ1wVEsm5TiBsH4CNXhqgiMy0v888ZMzlgNCj
	vyFRHL5OHkkY3LVb7a686yWP7lqotZJfuH74DzD2x/LgTBAjmjt8MfzLMSAOWQrHM+r/A73C2LF
	l1l7qXpkRqYCCQyZLG2OybmhZwP5cKyrYL6mKGevQx68IfcI+Vde2EuctzqIGSB1swqDb8Vrtue
	UZBpZGbtFABtYf1nMjIH4WSqsezVj8S5T19pyP0yV+xKv6Qo6ZruUctHycptptwETSG8dq641yL
	hsrk=
X-Received: by 2002:a05:6214:f2b:b0:6fb:1fc:7889 with SMTP id 6a1803df08f44-6fb47834635mr22006006d6.11.1749929485072;
        Sat, 14 Jun 2025 12:31:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQrPaKrJs4xim+Pui0DuU9UY0DDQ3xWTfjg2bIlpo0NAve4AAaX9mVrjanKcHXaWRaFkpqHw==
X-Received: by 2002:a05:6214:f2b:b0:6fb:1fc:7889 with SMTP id 6a1803df08f44-6fb47834635mr22005846d6.11.1749929484685;
        Sat, 14 Jun 2025 12:31:24 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec88ff5ffsm354178566b.106.2025.06.14.12.31.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 12:31:24 -0700 (PDT)
Message-ID: <9e383935-a10c-40ec-a63a-243cd028374e@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 21:31:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] dt-bindings: media: qcom: Add Qualcomm MIPI
 C-/D-PHY schema for CSIPHY IPs
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
 <20250612011531.2923701-9-vladimir.zapolskiy@linaro.org>
 <6e411e89-ce1e-4d6a-8d48-b800554f830e@kernel.org>
 <e9afdd0f-7842-4780-9044-d5afa6a09d7f@linaro.org>
 <b96f9cca-cdd4-4456-8ced-f4a8fd810ff1@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b96f9cca-cdd4-4456-8ced-f4a8fd810ff1@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE2MyBTYWx0ZWRfX/jQ5fDAC+6mp
 WfDhKMQasH7fxCiRO83RgulHZM43b1YVR4nSKG9uo+PetXDm7JwrYkj0itYPEOUroXyYAi3eEMi
 2B7bqT2ggqpFQPGt2y5JkkI6HzVm6rVAVElAbIbVUfnsSAtkfCqHH+LRfxHkPsoPmZUjoyqoquE
 4ldMH+O+0AL9t1RcCugDlLwFrzN9tE1RrNlGnvWbtSStGJvYmRHwVvqB6S77XLfFyNBMr1sphkq
 JV5ew80facwyuz7FwzA376NHFa1nXyFHnAzpXK1fEGb+yq6Q0f2m2/TUqLSgJ/v7kIOO7IwlWYQ
 DKiC4ULoxYsY8eiIA7qygcvF4Sny1Cx+NaUSz+5gl6bKvpgDqxKCTQ1fEQUQQwXGEblxdI71gLG
 v6qz4iC0gFka5q4vusIjHPvBauE7TSjWUEd1ZVuIYKrvpGRQZdijVn0c+Ft3br2U3/ndCEn4
X-Authority-Analysis: v=2.4 cv=PtaTbxM3 c=1 sm=1 tr=0 ts=684dce0e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=LZMvtdFs93sqpN7HcN4A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: glmhDkJ0GUYfYK8EQdJYIRXyOUurFBAU
X-Proofpoint-GUID: glmhDkJ0GUYfYK8EQdJYIRXyOUurFBAU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_07,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 mlxlogscore=999 suspectscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 spamscore=0
 priorityscore=1501 phishscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506140163

On 6/13/25 8:28 AM, Krzysztof Kozlowski wrote:
> On 12/06/2025 19:13, Vladimir Zapolskiy wrote:
>> On 6/12/25 10:38, Krzysztof Kozlowski wrote:
>>> On 12/06/2025 03:15, Vladimir Zapolskiy wrote:
>>>> Add dt-binding schema for Qualcomm CAMSS CSIPHY IP, which provides
>>>> MIPI C-PHY/D-PHY interfaces on Qualcomm SoCs.
>>>>
>>>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>>> ---
>>
>> <snip>
>>
>>>> +
>>>> +  clocks:
>>>> +    maxItems: 2
>>>> +
>>>> +  clock-names:
>>>> +    items:
>>>> +      - const: csiphy
>>>> +      - const: csiphy_timer
>>>
>>> Drop csiphy from both, redundant. And this points to the first clock
>>> name not having any useful name. Name equal to device name is not useful.
>>>
>>
>> I got the rationale, but I have no idea how to correct it, since it's
>> literally the case, the first clock name on the list in 'csiphy'.
> 
> What do you mean by "list"? You can point me also to internal
> documentation if that helps.

So if you do:

"csiphy_timer" - "csiphy_" you're left with "timer" which makes sense

however, if you do:

"csiphy" - "csiphy_", you get "" and Vlad is wondering what to name it

> 
>>
>> What could be an alternative name then?..
> 
> The real clock input name, signal name. You can also drop the names.

I don't have the docs before my eyes right now, but I would not be
surprised if it's also called "csiphy" in there..

Konrad

