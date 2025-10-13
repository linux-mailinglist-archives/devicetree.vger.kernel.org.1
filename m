Return-Path: <devicetree+bounces-226286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE77EBD6C50
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 01:46:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 623B53B8AFC
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 23:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97B122BF016;
	Mon, 13 Oct 2025 23:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hPgki7Z5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01370271459
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 23:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760399203; cv=none; b=j/UVSUC/uAcJMmVRiWVjuub92+tkPr0OLruJLuXNQ4+YtY1mGtYKM2b/H+vc7bc2XFWvDr/DZkyNxRcWWlKY44xKx383gbe6bmNtW/iWq8wAxWMi8AP2uwsC3BZENy9efGBe/wk7E8CTYwupaP2Xsi+fHEA82a5q4jOKO3ncVNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760399203; c=relaxed/simple;
	bh=YnzpM7Y3mBbh8bZ2to50Hng5XokBr3pWjqm6tkmbauI=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=ZCbkrYBfjDp4L5Pi0N8s2Bm18+kNvovve27LtfYh1oqUCNGJuWfkZmOZTpAlGnvcGIapeuCXYcWHcRr2fwSFU095fPLrCzbybmfv8atylgypN85a7mnWsB3A70El6H5KVOvahkVBvSj2O/u20rSN5qvRYR5tqMJ5y4pZKG3K52I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hPgki7Z5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHD9ND003045
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 23:46:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0gy/eN2/a4rW4UleojofitvwB4RNCpSUHYOp2DX/Fow=; b=hPgki7Z50ZRq9hOS
	T0nU3sRtj5IwJhU54lR2Ukes3zX+phYc0nNsOojUpxwBphdIFvIuAKwxB9/u0kSX
	0gHzwEqq4V7MM6Ua+JNVpUWEloc6KdRMv193ISgAbr9iZrwMh44PbTQgR7kZVChC
	oeWhFKwEqx9Xy/E42igqPdtpgM/Xb+ajdnQ4OcReHQIrARHp9HiPnVo3CBX2y1ST
	mWM+Oe2kKEnltiecr8PjuX9Ji+TJUjuAsADqBCN+ctUMsutIMi8h03NMIJXeYYFX
	Hy9xIo9kT0U5cB3wEPUbFYS2tfnTHOnoh6UAkjCkI7LWhE9ZJFL2g0MPvgZUwzqw
	y27OoQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0pgfj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 23:46:41 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-28e538b5f23so90345245ad.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 16:46:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760399200; x=1761004000;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0gy/eN2/a4rW4UleojofitvwB4RNCpSUHYOp2DX/Fow=;
        b=cdq3IfUQhHjGOT0UPEDyK7IsTndPX5h/jaLDvZGzkSuha+7ctoeTzE7EeRlFAbXfW0
         C0m/SP16bGzOy/I3bOpgfK2raMAO6ovntamIUUP7cBTBUzMNVjy/jrrBNFnst5rQM5St
         +MRMmGKI2xzqzBYKrniRT6KbNydI2fquiMDdyEtdrKBKoCSEEm2To9eKM1+h8JMWIEfB
         HbmSKzSBZVUIRbFCZerNeclaNXeXMJ4mEr6xihFabtQ9WY4r0XhPte8aVhgTZMANlOAx
         P6dIWavcNAhS8rAbjm7zYbG8tCBtmOm7EOI64YT1hX4U/NZd7Vs0tx6uDk+YXAwka/K8
         jVlw==
X-Forwarded-Encrypted: i=1; AJvYcCWHL9cfyJfyuXeMzS+4PHinliDT+8uAEpGdn/lkPU+s86LJCJm+icFVUBNlm+vJnuUOH/He5fx1gis/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/eZkoZVLbCsyFtRHS+nKEX7OKKKbsux653DGrwA/vaRH0mCga
	twPtv6zf9IvYZtj4KnyzYGPwXGoVp4QrzqD8+sUblc1o3hMqxPhjwwupH10KeVE4QyaFg6Gjy6Y
	5c4HwhXImoFmQ3vRnYikC8CRheA8of3/TPOn23O6iCv7799jED7OQkOwaWabife4n
X-Gm-Gg: ASbGncsLzeXE3FP1rE8uubL9k3wLDIdLZ4+7k4wlUFCrrmIA3K1/3f0G3W9J07UTZZU
	Pcq0nXJr/ftagVIzgaHTzblBv6nEwfdg9eRqN6XfrUvXfts4w+94s/QugHUWIOxxDaaJhlke5eI
	1E87LyZIOK9eQjSw0F8lLh4E5OA/CUE2NmYS66MAt8wBO6tT2WVyvmsYRnbFjlgVdkoukWOtb57
	zHd/raxeHmWF4sJ1BjvDKJMSflE19ncZhJABcPc+20CQ7KaKgkh2xkTN0Brzs6R6zuBbmoiOYkQ
	KqJyDCNKDQ5uwJWSCwfK14LPZAcPt3Ih5kRaxt0rqM1eYe6wekv/0fQKh2cIRGHGlxz9Oz6Mtin
	c5I99GA==
X-Received: by 2002:a17:902:da85:b0:26a:f69a:4343 with SMTP id d9443c01a7336-29027216513mr239372485ad.4.1760399200285;
        Mon, 13 Oct 2025 16:46:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnOgt3lwzbUvcJDvzNbU5nzvH3UjGpjKLKhZpUQXp9HGXcUzbD6NyyhTRMy3UAHlSc/tkmkQ==
X-Received: by 2002:a17:902:da85:b0:26a:f69a:4343 with SMTP id d9443c01a7336-29027216513mr239372215ad.4.1760399199808;
        Mon, 13 Oct 2025 16:46:39 -0700 (PDT)
Received: from [10.73.53.19] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29076d7af28sm10202415ad.118.2025.10.13.16.46.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 16:46:39 -0700 (PDT)
Message-ID: <14bc2a85-0f1d-3834-9b9c-32654348603a@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 16:46:38 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB
 UNI PHY compatible
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, krzk+dt@kernel.org,
        conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <20251006222002.2182777-3-wesley.cheng@oss.qualcomm.com>
 <f5e4ae02-b8fa-4406-b2e0-3602b07b7e23@kernel.org>
 <00408896-2e25-2dd1-6e6e-2195317ee7fb@oss.qualcomm.com>
In-Reply-To: <00408896-2e25-2dd1-6e6e-2195317ee7fb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXxZpgmrpLgOEj
 0X7vwRqeXDjuOw0meiFKyVMkfyu/LJRQBryesrvI7wwloZEVEo9sADm9DJpU/6YsmpMVla2E2g9
 4nJBC+zIVQKJ19y7EbXPv+AhM8/sId3DKL4wcXm29o1jlGatRCRvU7ixFNnz68tkHtj4BA8JXu9
 sNIdl5Zv6jZ2bUpSUNEGtgtGamFmpw5LvI34wllhCJisctJd8jhcBvKSQtnM5VwRGJqVfz+73H0
 rK/9b8p59XV0itFlqC+D9P1EAAtDvZGKR5fsV9eODey8hU34t6XxGkBvUKM1CIe1TuzNOgMNjeD
 FfJmxVoxqhWaG0jyxPOuG/veipBQNSqV2AR9j7FshDQJvLo4nVf7uhQGgLt1p6blH35yrV3f9vX
 j25cvp+YX934dRshVUgRRmliUc1Ggw==
X-Proofpoint-GUID: NRRMdntvx9eOGpSf8Lkbduem_kNtk0qw
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68ed8f61 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=qShf3X6Dcnx_eSjzdeYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: NRRMdntvx9eOGpSf8Lkbduem_kNtk0qw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_08,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018



On 10/13/2025 4:44 PM, Wesley Cheng wrote:
> 
> 
> On 10/10/2025 5:04 PM, Krzysztof Kozlowski wrote:
>> On 07/10/2025 00:19, Wesley Cheng wrote:
>>> The Glymur USB subsystem contains a multiport controller, which utilizes
>>> two QMP UNI PHYs.  Add the proper compatible string for the Glymur 
>>> SoC, and
>>> the required clkref clock name.
>>>
>>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>> ---
>>>   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 35 +++++++++++++++++++
>>>   1 file changed, 35 insertions(+)
>>>
>>> diff --git 
>>> a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>> index a1b55168e050..b0ce803d2b49 100644
>>> --- 
>>> a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>> +++ 
>>> b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>> @@ -16,6 +16,7 @@ description:
>>>   properties:
>>>     compatible:
>>>       enum:
>>> +      - qcom,glymur-qmp-usb3-uni-phy
>>>         - qcom,ipq5424-qmp-usb3-phy
>>>         - qcom,ipq6018-qmp-usb3-phy
>>>         - qcom,ipq8074-qmp-usb3-phy
>>> @@ -62,6 +63,8 @@ properties:
>>>     vdda-pll-supply: true
>>> +  refgen-supply: true
>>> +
>>>     "#clock-cells":
>>>       const: 0
>>> @@ -157,6 +160,25 @@ allOf:
>>>           compatible:
>>>             contains:
>>>               enum:
>>> +              - qcom,glymur-qmp-usb3-uni-phy
>>> +    then:
>>> +      properties:
>>> +        clocks:
>>
>> Missing minItems.
>>
> 
> Hi Krzysztof,
> 
> Won't the minItems be inherited by the base definition?
> 

Ah...are you saying to define minItems to 5 as well, since we need to 
have all 5 clocks handles defined to work?

Thanks
Wesley Cheng

>>> +          maxItems: 5
>>> +        clock-names:
>>> +          items:
>>> +            - const: aux
>>> +            - const: clkref
>>> +            - const: ref
>>
>> What is the difference between these two? Which block INPUTs
>> (important!) they represent?
>>
> 
> clkref is the TCSR reference clock switch, and the ref is the actual CXO 
> handle.
> 
> Thanks
> Wesley Cheng

