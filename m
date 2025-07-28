Return-Path: <devicetree+bounces-200186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE3DB13A48
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 14:15:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0117617C2DD
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 12:15:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23A45262FFF;
	Mon, 28 Jul 2025 12:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D9jdOPch"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F6AEEBB
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 12:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753704937; cv=none; b=tk05THl9WsAzea8Y5Zw7bXdKy9RyexAxp4x8qR2NUKXa1qflrJsSVoP+AFUTg0YGgwKYPZDziVgFfrF7xIEEeh3H4oavkko4TVFjWrQpgNoLJXw8HJjjZcQzGU9w88ot199hmOPh8AIn/+WJj6HPmerSXUyTjAsFUOAhyF86FaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753704937; c=relaxed/simple;
	bh=pdDl8nLT0rFDnk4KkdktFdEnsyajVbvBfHRG2jgKTUE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o7G1rmBV0CqD07C0FkyF3fWWrIlmfR1lNVNy+V7yVJvir38tVocNFcUnouQiVIjbUqcWPU0umWi+Z1q+jr4/1MEnT3C8Lt/pkb/pivwI+rVfVIJ6fxCXtKezia4Mai3eOnFvjUJKBClKxuEEJJSLE0VbRi6zSkMqOdjCbnufHhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D9jdOPch; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SAlPun031267
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 12:15:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x2gviWJmNpeCplZxjlsp3nVn1LXu8j3oj2AUy90cz3Y=; b=D9jdOPchnnnuai+E
	+RE2tKZv1xMAHmGwwUgD0U7jp032uGeLVIEfJT6kxorHc8AbXi0+BGz1Ja99r1R+
	q8TTGXN6wmD9bSfyAGr+/14tCKI4dAz7WQFBnCOHWTa6iqtwLZxEHNmq51LPlZ1v
	3NRMeFbB9V8g3/Nf2FkACxCeRHdHcEzC+l/NhFvxYMwj1OavQS5IRnZ15kFCPP3F
	VkEMx9UlSwKwriXupM9CmqZzBEgHloT0/dumY2SCVDi0AY1+Saf4N/nyeOZFf9Bc
	X3ECYLfRTgjrsUYYnlb5ELdbuebaQS9dIEPX2NvV87U+psvpwr3tZKxfdkgGwV5x
	O2z6oA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 485v1x9vxx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 12:15:34 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e2b5396898so6939085a.0
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 05:15:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753704933; x=1754309733;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x2gviWJmNpeCplZxjlsp3nVn1LXu8j3oj2AUy90cz3Y=;
        b=k5N9LvdZsFLCUdRa16VPgReexZg0eag6bQ5ikC+d+EYcWKH//XLIPYO2UlYXpqGHUC
         i04kX763RRbF0KjqUMi24ob4KQSgSXBHMNAGNqNanOhCSwm7PnZTS6nyToZVVyrj4GY2
         4MtlauA8EAFNP1f2LDAbjY0rC8Y1Y0WYtVuk4lJl5Htwj9Nc2fV3XKqPZtRN8CjPQJg8
         kNTiuZd6bWOiNw2xmbn2naUZaDOpy4KWQi07qCQ8R9ZogzKvC5WAu6F2UROXu5Kjqm1K
         C2TtSQ1EZoG+0ER5vyeHRfZ/3wZ4bwgj7bZdKPacWsQwc+D65Ys81/0J72w95wL2HGwy
         IlOA==
X-Forwarded-Encrypted: i=1; AJvYcCW03R1SZ3T70sqqmkLMWf3+9DbYG0K/oGog7IlBbP2nsC1ifdT2y2ujAAEsHVuauFxeQ0YXoF8XDuYe@vger.kernel.org
X-Gm-Message-State: AOJu0Yze0d60jbEnkSSQ/Zm6oDwI5tbkV8o4/IPBdBJKPRpZkDvADZ7o
	BSapwHNrBwp/kSLXcEMmdjrNlte5+ik2MPIpLRpnNdDxYs5mWg+gbCt1Bb19gPLjtmJPtLravBC
	D9i6fF+HERu6LcUOXdY1+nDHoZyLGj8PQY1qsAUHatKW6Dd1dGfnP7yxgHIttNHwR
X-Gm-Gg: ASbGnct7Bf7gT+RGkLpMaXL1+ULiXl0fil+P/k/4VjSmj8q7XUu1AL80TtXxbotXDqn
	3wewJeZqnztK2BnUfkZzkD1zh/WUhMnpzCtrJpiET+B8n+AoLYe4UYDSRb3dVQWxDUlQ31I18U2
	NT7310hRDAREsOhBeK/G1QwN4R/jnCMqSLcOyvOw+6V7bw2aOwUTh4pJRYRUySEC/ZfFBYQH2aP
	lLG01VJNMRyv36sw3KnFbtZv3QL1GeTwpzvEyIkaGr0eArrtqdhfw4C9BP8WvSqeKR5pr0NLchh
	twcHYW5nNwdxLIZ0/lH00RVoiKC6x7Tiji0YMuNHcNd/diF/4UN6Zld90GEzCOS3LbciirdgUzN
	i/Ci1qayQIniVhisKEg==
X-Received: by 2002:a05:620a:470d:b0:7e6:28a9:db0d with SMTP id af79cd13be357-7e63be3f76emr623983685a.1.1753704933065;
        Mon, 28 Jul 2025 05:15:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUoYr5uioDlZfrjVtli7EFzl5Qyf/iN/jG9k6w+bh0ZrxI9cy2a6TTlnzT3lV9S/AskSiU4Q==
X-Received: by 2002:a05:620a:470d:b0:7e6:28a9:db0d with SMTP id af79cd13be357-7e63be3f76emr623980485a.1.1753704932407;
        Mon, 28 Jul 2025 05:15:32 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635a62acfsm417921466b.66.2025.07.28.05.15.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 05:15:31 -0700 (PDT)
Message-ID: <f508e576-38d2-4040-82fa-4cba108d511a@oss.qualcomm.com>
Date: Mon, 28 Jul 2025 14:15:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: qcom: Add SM8750 GPU clocks
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250723-topic-8750_gpucc-v2-0-56c93b84c390@oss.qualcomm.com>
 <20250723-topic-8750_gpucc-v2-1-56c93b84c390@oss.qualcomm.com>
 <20250724-blazing-therapeutic-python-1e96ca@kuoka>
 <54b617c1-bd1b-4244-b75d-57eaaa2c083d@oss.qualcomm.com>
 <5b8d42d5-d034-4495-9d28-27478a606d62@kernel.org>
 <dda5b873-4721-4734-89f4-a0d9aeb5bdab@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <dda5b873-4721-4734-89f4-a0d9aeb5bdab@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDA4OSBTYWx0ZWRfX4XJa2E0jHtQG
 2VVdgKT4wCi8S6Ya6ccQzT9NUAIQNXR+EE/0B67aPbpZ2401OACIJllg6JHBgKpDbPIYoWISIw2
 pp9x0HkqQLzSSt3Ccu9NrcNBy5Y/QUaYLrRA0d+G8neIHOQOOUELYNvFK+cYHPzrMxehRFBKahU
 2QBtv4T+Dqkj6QmfhU9oxsPErcEGHW7dTjoUaKkHOhI4j/CSLq+Zran8FbRp8aqa7cRW270TUHH
 rsoq2OtA5UmqwE6FxeNZcaLpCexw71rkK9N0tUdXfKe/MaQgW4KVaygbGaWqVvX2KAVKcT9F3uN
 3ey5+ls149FcN1ayXmEUW9VYsY4WsIX3V1F6ZUz72kDsrNjjJHMNnXEWXJOYZohWB0GerfvFvPq
 lnoFUFnBv1dI+k0bh095R3hj3cBZjj7XyRYYaYbdb+6euRcG8XdyFnE9cA9Tecjqx85dz821
X-Authority-Analysis: v=2.4 cv=JKw7s9Kb c=1 sm=1 tr=0 ts=688769e6 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=WpjJ9PWMYFXYRfV5F1YA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: DbqhUOfMz-wWG9DUr4OeHaHU-Fpez3GY
X-Proofpoint-GUID: DbqhUOfMz-wWG9DUr4OeHaHU-Fpez3GY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507280089

On 7/28/25 1:02 PM, Konrad Dybcio wrote:
> On 7/28/25 7:01 AM, Krzysztof Kozlowski wrote:
>> On 25/07/2025 11:30, Konrad Dybcio wrote:
>>>>>  
>>>>> @@ -40,6 +42,9 @@ properties:
>>>>>        - description: GPLL0 main branch source
>>>>>        - description: GPLL0 div branch source
>>>>>  
>>>>> +  power-domains:
>>>>> +    maxItems: 1
>>>>
>>>> This should be a different binding or you need to restrict other
>>>> variants here.
>>>
>>> Actually looks like this is the same case as the recent videocc changes
>>> (15 year old technical debt catching up to us..)
>>>
>>> I'll send a mass-fixup for this.
>>>
>>> Some platforms require 2 and some require 3 entries here. Do I have to
>>> restrict them very specifically, or can I do:
>>>
>>> power-domains:
>>>   description:
>>>     Power domains required for the clock controller to operate
>>>   minItems: 2
>>>   items:
>>>     - description: CX power domain
>>>     - description: MX power domain
>>>     - description: MXC power domain
>>>
>>> ?
>>
>> This is correct and should be in top level, but you still need to
>> restrict them per each variant (minItems: 3 or maxItems: 2).
> 
> So I was happy about how simple it was, until I realized we also need
> to poke the VDD_GFX domain. It does however not necessarily exist on
> all platforms and I don't want the binding to become a spaghetti of ifs..
> 
> CX & MX is present on all(?) platforms
> GFX & MXC's (any combination of those, unfortunately) presence varies
> 
> Is there anything better I can do than creating a separate case for:
> 
> * CX_MX
> * CX_MX_GFX
> * CX_MX_MXC
> * CX_MX_GFX_MXC

Doesn't seem like it, turned out this wasn't as terrible a mess as
I had imagined..

Konrad

