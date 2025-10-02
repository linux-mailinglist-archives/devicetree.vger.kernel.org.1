Return-Path: <devicetree+bounces-223321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CADBB36E9
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 11:19:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6CCAE7B2075
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 09:17:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 537E630146C;
	Thu,  2 Oct 2025 09:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="prmAcJmC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D5253009ED
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 09:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759396719; cv=none; b=h5YiCOsRHs9Y2gwZhha977RyihuVPMAUQm9HIgtKoZhLULIe1MJYUAfboKhyuQfV2t9/LG4H+3y7aOSsFHYXh585smf7gVs1+6dDmA3eCUQ+6wUJFpvi8yvVk0OBSwFNVIgy669DgI8S9dMdPxVvX56MUXvkLqZAyy6JmGdcdQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759396719; c=relaxed/simple;
	bh=XkSkdSXsgfMPXwsjXUAjZ04k2p3MHMRytxkvvCYY3q0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tJbXiqFjmwjBnkKxpP6Hw8hGEZDzcwVZrrE9/3yJXa/kyHxviDUsxPVUYP4TeE65yluR/oWazM9+t1/Nvs5s2BuR2WVbIDp7QU7z6iCkQvwYiNnemIITnX5nGKMkpfmvOExVGEIUe7gjeQm7ky+lIev8YX7h4wUzO3H+linuloA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=prmAcJmC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59291ggI017629
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 09:18:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LcvvFnzF0KOwaNSsgzDBR4ph/iQHXswkEDteYkhjnf8=; b=prmAcJmC/9eyxhA3
	cOXvEZxzo44+I8iDKa71qx2BT/Tq7KhyaOkIJ09JtUDrFVHHOIWyPkhdI3bp6fGu
	Xb+3d0OZO0o5AYld8+k/71Ie/KlvsICLI10SB2zWTuQU/oQmSTsCscGYAzWWTkEQ
	LwKDbwyAkhwUwQeQ0PVM/G2p+Ql3/UcAfv8BvNg7eXmhqpixVNbgHni1WVzN66QJ
	yMN5bsHerlSHo9CKrTaWlw46xJ2VmSWeQa0VldGNCxk3kFpPTnumSO8xnCcCsGuM
	Sbss1nKJchEB53JT7gsirGMyr9yQe9Ai2iOnsMJbgCCW7wxtK9VBmh1gzo3rliLU
	nqxyYQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49fyrf8vg7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 09:18:36 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-28bd8b3fa67so7847825ad.2
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 02:18:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759396715; x=1760001515;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LcvvFnzF0KOwaNSsgzDBR4ph/iQHXswkEDteYkhjnf8=;
        b=jiDUKSJrWBtjePpqn6UuxsLYNicnd3ea0cr02X02NErnIGqphRNMMqWWclWQQiZZrg
         tqVAwmHBmR160HOG+0O/uzYfvpdNM4YxMRGbIuUtigW7gi84JfMqsvXxhRwpJE5syEXV
         aQoK5azBLFn2ZLpRArfhxacnhhGP5khpc/yNteYA7o4qcZEmOPErO5UmmDNwAvgTbAlY
         mBAfuqPm/VxP89W50l64uXY2rAFPk9sOgC0GIoWABy9ER/YqZfuKyOc9Jk7249LtjUHT
         hG+G12duq1smg01MoOuxZotR0LRjZbb4yofX/MB4+gSHgtTrmcRACZyNmY0gWABvt3rf
         6Siw==
X-Forwarded-Encrypted: i=1; AJvYcCWExwib5zCexED38SMQnWDe6jcJrgXtg973cx6h7d/frY3p5i3lf4tF9T+hXCZZC1mpv+byaWCkAN8a@vger.kernel.org
X-Gm-Message-State: AOJu0YztK/gtpa3YEo1SCwK8KQFKE01rYvXlMppv3gUDrsVb5VGSFVuu
	JRGFoJj4mpxa5008gs3p5h1gd7qtdDthPY/CApwbwJYr2RevJl4qmQmcNsAroQ6EvZsTDPuyjOq
	wICY/3QB9+hgTKRyFkgApcCWkYfOxuImq8nBI4Hl5UOa0HnvjM5361QPmlD8+Na5o
X-Gm-Gg: ASbGncu+xI3Vae+iOrXGiYZgVwXfUZEo2UsQFnXddMAgC+ghqYxyrS9fXwbMfhJc0uL
	F61OToWry6cPIxoTZ+Mi5IzRJJ7uA4NTQ42rVQRdC10tJ98QJJZvKqmcuQ9VGcA0UtdWOtkViKK
	+cXEGKYqOkCqIr6mcpZTlsmaiM9ZxNOG2v824PS63uQyBi8aISLwygnhqJkRaQczgGp/Ylh/1aR
	WCM2x8NHDZQttaULjtYh9ZxEwEvO6UH1GWnU1eLFL/l5cPZIyn52fRfLgoq1tmvJUSKXDgXiKgV
	K+nXIGg6e3P68x56aofJAS4LLMK62dD8Cdhfd2VaBMM6kaBRaKDcQMhbAyoujKhwAJqDW2zDBtq
	4eb4=
X-Received: by 2002:a17:902:c406:b0:24c:7b94:2f53 with SMTP id d9443c01a7336-28e7f2a10demr93931795ad.6.1759396715224;
        Thu, 02 Oct 2025 02:18:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhzYstjWYoZe4E8zCtSfv3ZRHZZVXOJF8cEMsJj62R9ZlNmbcFVK5dMFHa1B45c75k5qPfGg==
X-Received: by 2002:a17:902:c406:b0:24c:7b94:2f53 with SMTP id d9443c01a7336-28e7f2a10demr93931415ad.6.1759396714718;
        Thu, 02 Oct 2025 02:18:34 -0700 (PDT)
Received: from [10.204.101.186] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d128132sm17746935ad.44.2025.10.02.02.18.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 02:18:34 -0700 (PDT)
Message-ID: <27381eb6-18b8-774d-5171-6326dc6bd9b4@oss.qualcomm.com>
Date: Thu, 2 Oct 2025 14:48:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/8] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
 <20250925-knp_video-v1-1-e323c0b3c0cd@oss.qualcomm.com>
 <nuunkv3xwfes6wed5xf4re2efakndvvrfl4lhmenilkic4sjiy@5cb2f5ygegvm>
 <522d7244-0003-a42e-9be0-1d353df8d5bd@oss.qualcomm.com>
 <oimuo26ohcye74j6rl5hfbmd4ip5wzudhyiaibf74b5zmjb4vl@xh3dnp7gmvq7>
 <7c6ab647-0c54-4480-9eb2-5c2bbf5f857d@oss.qualcomm.com>
 <b5d465e9-e84c-fabf-f275-3d0a5abf764f@oss.qualcomm.com>
 <2ppixuzddqmpa2d7nkvwwbfn4dnt7j7voyqfqcqeokbkzjg2lm@mokv4cihiuw2>
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <2ppixuzddqmpa2d7nkvwwbfn4dnt7j7voyqfqcqeokbkzjg2lm@mokv4cihiuw2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ZxI1MgRE-g-nErTs7FhRGGLpX456V0WV
X-Proofpoint-GUID: ZxI1MgRE-g-nErTs7FhRGGLpX456V0WV
X-Authority-Analysis: v=2.4 cv=etzSD4pX c=1 sm=1 tr=0 ts=68de436c cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=gimbRapRy-hzlna9Oi4A:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDE3NSBTYWx0ZWRfXylfd03NVP4ML
 6TD4yW0geLLjyRgPcRNwRfiU6xS7r15W7J3FZExHx1CM134aMbzB7IBRakUB5xcIHBqi4op6+/C
 cxfJD2IYE9oBavPIRpndx1GjsRXWeur/WvihyuVKY10wdmdEFU+6+dTpxd/AZwcxpahpxruXQQ1
 /VLXQeLnyJJSfhTjTIBXKh2NKpx40RDT/Ro1WcLtpheLlhmnjOReebfOTtlHhO7uHNptiZgsbnF
 R18+BYK1gvD83NXv4nfaj7CMmCaIEv1WOBCTFhi6WkIf/1UnIfh1GosT24L39G1FeB2kyOu7AR7
 RkYs1VI58qtM94sehhLnCfeDVdYiQ+ZSJzaIhRBQx4blp1rcYpGh+v2O8+jEPzxIVm+eoCBqAiM
 ZUfzbQN0QWWS3aV2/DmyoDcrmLfY0A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_03,2025-10-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509290175


On 9/27/2025 3:55 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 26, 2025 at 07:25:30PM +0530, Vikash Garodia wrote:
>>
>> On 9/26/2025 5:17 PM, Konrad Dybcio wrote:
>>> On 9/25/25 9:38 PM, Dmitry Baryshkov wrote:
>>>> On Fri, Sep 26, 2025 at 01:01:29AM +0530, Vikash Garodia wrote:
>>>>>
>>>>> On 9/26/2025 12:55 AM, Dmitry Baryshkov wrote:
>>>>>> On Thu, Sep 25, 2025 at 04:44:39AM +0530, Vikash Garodia wrote:
>>>
>>>
>>> [...]
>>>
>>>>>>> +  power-domains:
>>>>>>> +    minItems: 5
>>>>>>> +    maxItems: 7
>>>>>>
>>>>>> You are sending bindings for a single device on a single platform. How
>>>>>> comes that it has min != max?
>>>>>
>>>>> I was planning to reuse this binding for the variant SOCs of kaanapali/vpu4. If
>>>>> we do not have min interface, then for those variants, we have to either have
>>>>> separate bindings or add if/else conditions(?). Introducing min now can make it
>>>>> easily usable for upcoming vpu4 variants.
>>>>
>>>> No, it makes it harder to follow the changes. This platform has
>>>> this-and-that requirements. Then you add another platform and it's clear
>>>> that the changes are for that platform. Now you have mixed two different
>>>> patches into a single one.
>>>
>>> Vikash, preparing for future submissions is a very good thing,
>>> however "a binding" can be thought of as a tuple of
>>>
>>> (compatible, allowed_properties, required_properties)
>>>
>>> which needs(asterisk) to remain immutable
>>>
>>> You can make changes to this file later, when introducing said
>>> platforms and it will be fine, so long as you preserve the same allowed
>>> and required properties that you're trying to associate with Kanaapali
>>> here
>>
>> Let say, we have a kaanapali hardware (calling it as kaanapali_next) with 6
>> power domains, instead of 7, given that one of the pipe is malfunctional or
>> fused out in that hardware distrubution, should the binding be extended for such
>> variant like below ?
> 
> This comes together with the description of kaanapali_next and a proper
> commit message, describing the usage of fuses in the nvram for this
> hardware, etc. My point is that you are adding support for a fixed class
> of hardware: normal Kaanapali device, no extras, no disabled blocks,
> etc. This class of hardware has a fixed connections between IP blocks,
> fixed number of cores, power domains, etc.
> 
> Only when we actually add kaanapali_next, kaanapali_lite, kaanapali+1 or
> kaanapali-minor it would be logical to extend the base declarations, add
> add if-conditions for both kaanapali and the new device (notice
> if-conditions for kaanapali too).
> 
> I can say it other way around: the bindings that you've submitted are
> not complete as you have not bound kaanapali desription according to its
> actual hardware.
> 
>>
>> power-domains:
>>   maxItems: 7
>>
>>   - if:
>>       properties:
>>         compatible:
>>           enum:
>>             - qcom,kaanapali_next-iris
>>     then:
>>       properties:
>>         power-domains:
>>           maxItems: 6
>>
>>     else:
>>       properties:
>>         power-domains:
>>           maxItems: 7
>>
>> Also, what is the downside in existing approach where we say that the hardware
>> can be functional with 5 pds, and 2 are optional based on hardware having them
>> or not ? So all combinations of [5, 6, 7] pds are valid. IIUC, the optional
>> entries are made for such cases where some hardware parts are variable, please
>> correct my understanding.
> 
> Kaanapali hardware is not variable, is it?

By variable i meant the hardware is functional with or without those bindings,
hence was keeping them as an interface but optional. If that fits into optional
category, i can keep it existing way, otherwise will update to fix binding.

Regards,
Vikash
> 
>>
>> Regards,
>> Vikash
>>
>>> (i.e. YAML refactors are OK but the result must come out identical)
>>>
>>> Konrad
> 

