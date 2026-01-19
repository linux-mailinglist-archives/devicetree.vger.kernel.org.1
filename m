Return-Path: <devicetree+bounces-256749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 11857D3A39B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:47:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 98A6B3010E43
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 09:47:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5222D302773;
	Mon, 19 Jan 2026 09:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d1pTL/Y3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hN5edDQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A62283CB5
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768816041; cv=none; b=pvCKQCzq433+QW1iVcMZlajy18BsoT3teMcj5M1M1WzsNQD1G6t+EaYYjfgHX1jJ9usYvmcQUrZYX1KfLTqe1PAGj/vF9hZVDkMfesMu9RuZ1VQKJT3uxVe7dsBEtvEkiLG0xCxWLMRWS90kHn/ZHCO4ol87uaQfRaSyw3T3jkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768816041; c=relaxed/simple;
	bh=XsH1bfTGYDFhTSfXoSV/6/z5UQI6DTgAp4D57+hOilc=;
	h=From:Subject:To:Cc:References:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=o+AZ6g6KEcmz8QhaEBOfRCp3RhX3mf1NIzRMVeXWSSW9VsGbIcAQn5fr1b9CbAm82R46oW0H4YxZfFqCW5e8RdJOhaFIImuo9NYKo4W0g2L9OutZqzoDZ7T3TeL73WVmAK2Zn3HMo7c6KUtKCx0mk4ittwF/KmTM017Fu3EIcNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d1pTL/Y3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hN5edDQF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J91Kbu1354080
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:47:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8dqBNZCR/M8hHAdLNjN7hayt7keNTPjdXK8X4OSX7ZQ=; b=d1pTL/Y3znrojW4H
	qAaxg4NYCPKc5ySs86cVI++uIn9UM5RSZEtRsUq/lQOHagG2Y+NGobL3J78qASNr
	22qKY5gVtc0wrcHrGUO2/mFlujgWGt1uvPjD7d2QR9odCMltF5203lN9nGm+kprO
	fjEJibEeWaLgGfAgjuC73jP6PKkmRfvP9iB2w79lz1QDpsrY0jIBcInBS2hZxoy8
	RYvgpILSk8V2cbYgFjgo4gNprKBVEdks3DY2Qjs07L9HM9jy4RMPE2+MX9rAI45y
	0jggP+qo2r99sCJYlC7fgfJRB6GFquUOGkk54OZzWfA+/Yde4LvKLfR9frCnpS/E
	k8/lBQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br1cqcs9t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:47:18 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a58c1c74a3so34919065ad.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 01:47:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768816038; x=1769420838; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:subject:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8dqBNZCR/M8hHAdLNjN7hayt7keNTPjdXK8X4OSX7ZQ=;
        b=hN5edDQFx2eqJZmVcuK7G5zjGrUgM1s/e+UV61TXp0kqeImUoGXUJ4dI96kQclNhN+
         5kCQrOPMEFiBP0FLa/OkhcI7bTOTuGl82p5TtZLnVPeBRgHl478aapQXWzXYtj05wrjN
         hWvrWyOhBrJWePzMKzVjh4+Cha82WyYLqtKV+m6bjwBNNrxGcFK4Hg2Ejbim+r3lrA+2
         C8TfAIBydiSql/BS1BCVWhXaUHLHqQ7sMZcnrTNR9fhhvZBbJqXzfjQqwgq2gnDBYSMO
         lXlTE8O0XWNALmu+tu0Xo2+/328mGuov7VEc+UpHIIhZq3D9XnjHvccvNbX15aQIc2gY
         z/oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768816038; x=1769420838;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:subject:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8dqBNZCR/M8hHAdLNjN7hayt7keNTPjdXK8X4OSX7ZQ=;
        b=Edph5HVtCzbzJp4cOEPoodUwzPJKGiy6DV6tAndjbDEV8KtCBmf5+wxsoV7/H/ef00
         hMnE6dPjrDOnLkC437FbZmJY4rpy7K5Q1PAwZNt42yPXt3UwWchZjNGhhPzW2j5E6zRo
         6gv96ygeSgL+IA7Lk+jHY+DLWTPIaR28azDux2n0MxQ5a+45tNVjVvU2SqaoxlKGrbE9
         1jfNM6fsLLarMC4G/KJAB5NQ58e25A4p7/mGDwz/Ol8udeb5RtS1irZqIkc/TYoNw1xu
         5bcmznfokk3Gk0hVVgJ+zIZda5wznioiuZNF55eNvcQzFC1R5DASaTopFz/Dxqg3usr1
         bgYA==
X-Forwarded-Encrypted: i=1; AJvYcCW/yERfp9BZ1qtvkAKRwXD79PhweAto0xWY0Q0E4BDtqtpYtw1tbbtPKUih7o/KeXji86k5E77BuEUw@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz8k+jE5aFTke4fR7+rUqghXdYbLH83/bv7BTNVU7QwE+xsReR
	XOsP/L7onj4Wvo9zqXPtyZqaUinGnkl0mm2X2Yde2Ns7zg3DzRkq1mz0GyoksyQY/yjP1D4nJ4N
	V1HbsphdGffQ0UNijNngmcYOyV4XF1ojT4wP1KmX3TVmS4F3SQj8NSG/wKGv7WC6U
X-Gm-Gg: AZuq6aKOWsUcs4qJcBt6PIN1ARzjwur7kt2szjTEBvuCVCEqJgpvmXimB5UwLCYurt5
	wU1ViV6dTwWYVQx1zb8BQlXckgvbP4RDZTb+Drb1N6x+2k1adMIAT2BsOJoSez+qywcmRXo6DZG
	WZf4md9pQBXArq9gMRal0ACqfqxSn3Hy2uSXMWdiCE+Z6blKLJhFKaHoG63zLs6ns2q4Vqw2hZE
	fwUjAOz8wIG6UWHZbaC9BtEYShr5T8AlPheMc1y8c73snXtl/xfY8KI92Ulo4W4LG2tRH+J3OgB
	nOOn74H77eB9IJBCox8ZF+NUAJzVC0VIXv5CHvmnGm5IkUVYNGsWxppOl6cSRzRArjOVwwca+cT
	fmJOcjyOfchYoezdKdGnzG9qynCcsjU+A6/CvEH4=
X-Received: by 2002:a17:902:f545:b0:2a1:e19:ff4 with SMTP id d9443c01a7336-2a718928c5fmr100311915ad.29.1768816038145;
        Mon, 19 Jan 2026 01:47:18 -0800 (PST)
X-Received: by 2002:a17:902:f545:b0:2a1:e19:ff4 with SMTP id d9443c01a7336-2a718928c5fmr100311675ad.29.1768816037598;
        Mon, 19 Jan 2026 01:47:17 -0800 (PST)
Received: from [10.217.223.153] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190d14cfsm90608995ad.38.2026.01.19.01.47.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 01:47:17 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: sdhci-msm: Add ICE phandle
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260114094848.3790487-1-neeraj.soni@oss.qualcomm.com>
 <20260114094848.3790487-2-neeraj.soni@oss.qualcomm.com>
 <20260115-intrepid-space-meerkat-d44ec9@quoll>
 <ce49730e-75d3-87fd-3190-44e45cf83fe0@oss.qualcomm.com>
 <6d14abf7-da78-4ccd-8032-d0197098982c@kernel.org>
Message-ID: <c6200c33-29b4-7bfc-1b07-6a04383f8dd1@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 15:17:12 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <6d14abf7-da78-4ccd-8032-d0197098982c@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: osphxkXeXyHUtSTyM5IxKWbyoPmRBdcJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA3OSBTYWx0ZWRfX5Po7B0ecyzk9
 wRHQllRbvxkezIo/7EqzVMaEJ0yFNcckjNA64NLH0OooxLdqhtJQKjwt4N651uHRQlhJIk+7D2M
 H4RJGSNzY6kwFn0IkJQiT45zesc+K8p3Tw9v04rohIHc2zrxoROV+MEFG4asTjlakBoGIA/QUf3
 ShmhY/6ePdtsUeqNpwih95O/OZ7nIrMmKd1X0I4jJwFdyKc+fqSDJ4152a1ZIdM9/diwVC8d7Jv
 vuvs8qAb1ikhJf5i1sethUTIo6DpEzylXg1VGiHT4fGfTbYaaEO0x91IEQYBKOpnUzN/QlpQOpF
 Lgs367dQuGkWRYF0dudTQtzWqiVEGOdsdB3MeO/jznQQ+/pXD4WytFcT7c8k3atlsWRoh9tl4ol
 6P6ezS6tGDTLHBKNq8ZkAetqUkXjCzYL6FS9W1AM4yda9gBDUqycdDvvGzc9pMmlW3lbmG1PnQ2
 GXBOr4tEbFaqOE6//LQ==
X-Proofpoint-ORIG-GUID: osphxkXeXyHUtSTyM5IxKWbyoPmRBdcJ
X-Authority-Analysis: v=2.4 cv=NfbrFmD4 c=1 sm=1 tr=0 ts=696dfda7 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=3812jFcG6ygySvv41uwA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_01,2026-01-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190079

Hi,

On 1/16/2026 12:48 PM, Krzysztof Kozlowski wrote:
> On 16/01/2026 07:50, Neeraj Soni wrote:
>> Hi,
>>
>> On 1/15/2026 2:33 PM, Krzysztof Kozlowski wrote:
>>> On Wed, Jan 14, 2026 at 03:18:47PM +0530, Neeraj Soni wrote:
>>>> Starting with sc7280(kodiak), the ICE will have its own device-tree node.
>>>> So add the qcom,ice property to reference it.
>>>>
>>>> Signed-off-by: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
>>>> ---
>>>>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 4 ++++
>>>>  1 file changed, 4 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>>>> index 938be8228d66..8a6a25ceabe1 100644
>>>> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>>>> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>>>> @@ -140,6 +140,10 @@ properties:
>>>>      $ref: /schemas/types.yaml#/definitions/uint32
>>>>      description: platform specific settings for DLL_CONFIG reg.
>>>>  
>>>> +  qcom,ice:
>>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>>> +    description: phandle to the Inline Crypto Engine node
>>>
>>> Description should also say: for what purpose.
>>>
>>> You either have this phandle or ICE address space on sc7280 and newer.
>>> You cannot have both, so your schema should encode it properly.
>>>
>> Sure. I will update this in next patch.
>>
>>> Otherwise you just sent something which already was on the list and it
>>> even was reviewed:
>>>
>>> https://lore.kernel.org/all/ba3da82d-999b-b040-5230-36e60293e0fd@linaro.org/
>>>
>>> You even copied the commit msg but did copy the authorship!
>>>
>> Sure. Thanks for pointing out. I will fix the authorship in next patch.
> 
> If you add if:then: cases, the patch will differ, so make it your own.

Okay.

> But sending exactly the same patch with the same commit msg as what is
> already on the lists under your own name is not correct.
> >>
Okay this was not intended and have taken care of authorship in my other posts but i will ensure
not to repeat in future.

>>> Anyway v3 and v4 were not correct and probably v2 should be used after
>>> adjusting it with my comments.
>>>
>> Okay. As i see your comment in v2 here:
>> https://lore.kernel.org/all/c8eea30f-5ea2-cfc9-273a-3c6e99a316b9@linaro.org/
>>
>> i guess what you want is not to drop the entries for clock but rather capture it
>> in the "description" of the ICE phandle entry. Is this understanding correct?
> 
> Clocks should not be touched, but reg should.
> 
Okay but In sdhci-msm.yaml file:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml#n78

the currenty entries for "reg-names" do not specify for which hardware register range they are added. So shall i add something like
this:
-if
   required
      -qcom,ice
   then
     properties:
        reg:
          minItems: 1
          maxItems: 3

        reg-names:
          minItems: 1
          maxItems: 3
    else
      properties:
        reg:
          minItems: 1
          maxItems: 4

        reg-names:
          minItems: 1
          maxItems: 4

Indicating that reg: maxItems: and reg-names: max: will be "3" if seperate ICE phandle is added since the ICE register entries will not be needed.
> 
> Best regards,
> Krzysztof
> 

