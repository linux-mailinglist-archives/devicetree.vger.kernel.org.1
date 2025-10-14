Return-Path: <devicetree+bounces-226302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3CFBD6FA1
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 03:20:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C28D54FB21D
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 01:17:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8DAE2877E3;
	Tue, 14 Oct 2025 01:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HqHUwIXZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413AB26F2B2
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 01:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760404568; cv=none; b=MRS9FFXmu0a+S/vFO4Sb9h/dtgOHelbbzCb2CZv4l+cAYfzmpTZQJjI+4xksoIOqU3Pzlxy1oywD/1P43SF2yvDxXdDWwiwu101rfS/UFYl8AAzr7vUPYWZnTqlsCUn4SXWamAvITul2QbuWCy5Du8egBoJOrVpYTsB6TLR2Yoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760404568; c=relaxed/simple;
	bh=EP0dab8QWVw8F2Oho9PP3xZsSiVZ6Hs0NI1VFXmo3zI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SrnvgQ0wUwKhNTHo6RXUI5N8jkTPLTpd+891i+GxeBfHcuO7O3NqYiXPQYHISKqxdoUU2ZU6pa9cCHVbAEvpI9FnH5UWLXNtAifUCdzCSFRO1Vc+MrckVjngLuCB/yxAL1GAcp0yOSzIdMScYOkBwehY7jRWLDa6khzON7bo6l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HqHUwIXZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHD9b4020640
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 01:16:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aBxsTtnZ+1IYc29HTC1+91xtqulsSxhtxcQZF6gRcXU=; b=HqHUwIXZoBKQoLm1
	pp9KPIkA1VbhXLJqkbHHet1Mv+qQv6VU3XDUH5gCVQHInTgSTfDpS0Dn4HQSeiqA
	Dl7uf3cqUEfMBxGJ7DDx7B/2egqqQ4ZGG64EdWyj9ymBlg2UJX1CuFFRbFiRY/xt
	CDN0EfpocrBqJ942MJ8IEoPp37DvHcBzpZWY8NLbETyQLxwwV5wfdPSAOJr5YudF
	0rKubX8CwqHS61Fdrh5oQNXnEqKyIxUInCQ9Na0sLW7vHct065Q/wAFATzbHGV1G
	cjpAiZBkMdMscImjpnb+UvAfWpqB3e3lXl//XoDswk5c08YQh6InX+oE/+SLqKqW
	oXBa/w==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd8xr87-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 01:16:04 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b62da7602a0so8321939a12.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 18:16:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760404563; x=1761009363;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aBxsTtnZ+1IYc29HTC1+91xtqulsSxhtxcQZF6gRcXU=;
        b=ZRjOP52oiRNoWuRiZytNZjySmuGVW278oHmtYpf++qrDHXTVIY//ZfxZrvkUzCP5uY
         AKlSK9e2m3WY0JfIZNpOtERptmWBaxfAAatKDjrgrKjgt0VQAjDZD+shYfPGKliupVax
         RVJJjxQNKwRb5MZ9BEpEBEe4TGOr1D735Iqw2pkoUTKOn4qja6UFYsTlZYKKQ2noitqr
         xg0RaNcICV+AeWXV6/vCgUvgSsK3mV8zgvcVGFmglm3zu70SNaprBZcAT0bcmB18oyeR
         N6vNIH49404bfHZydna33rFqhCKXSbbPuKux0SDTBQQG6jlWfVikcQNCi8cQZ0z5oJW1
         7DFw==
X-Forwarded-Encrypted: i=1; AJvYcCXQkrRnAbGPMALZqdCM9Xt0ZgmjLm8yDp7Mqc5TXztYwSL2HUt2pxaSMseOnXxm5ADdJn67ZCICedaf@vger.kernel.org
X-Gm-Message-State: AOJu0YwyQ6PMmxIGl7r4GBTavynZ4mU7jHW1hmGNyTrwfUMayBA0nwOA
	czBUOUR7FrZXxCEIFDFb/yhKVBAONXzu+U96Mp8u2zpFXjUc9LAGvFDFG8yqUKtrDi542HkaUsl
	PgM2gJsby4kAu0xjtDXV8w2rfhzq4tUkVRMjWw0CluaKDLA6tz1DTU9LVWzLLfd0x
X-Gm-Gg: ASbGncu/UEpGDuBmspMACIIxpwJvZDstATF2+xRoIjbE4lszHPSVMfdq8Iug3J0iQP4
	s1b+jw7QShWgfy245qRKr1c8ODD9EDOvPbjVHFS/AVE9fbfVaNB6b7xZiRM4l9yY6RI0joO954g
	9cMkAGiNXuCH7kf6sPHt2EGwT/WKhmmuOyneCKk68JrvUW16rinZIG9fBLVAwVKbaA4pXaNiW/y
	UW/5TG70tA84q/26qppjf2BHYDDck4noRa6jhyOFA3xuGKbpUGEpvfM4XE4ZfSWCSLVWNuA9P4N
	Z6exrCAYiQfe8VpM/a5/D3QhpqO6A8ePf3Aaqogwf24c3b9Dy84sEw7vBQGQ3ou1HvE0tZLpYhi
	r9QeCrw==
X-Received: by 2002:a05:6a21:3394:b0:2ea:41f1:d54a with SMTP id adf61e73a8af0-32da8540764mr31709130637.55.1760404563422;
        Mon, 13 Oct 2025 18:16:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELt/YGsVm2PjjEZ477lrGaSp2HNzDVReiR0NJSLQK9e2H2AIf2ucuUQKdNf5z06//FvgGKdQ==
X-Received: by 2002:a05:6a21:3394:b0:2ea:41f1:d54a with SMTP id adf61e73a8af0-32da8540764mr31709094637.55.1760404562901;
        Mon, 13 Oct 2025 18:16:02 -0700 (PDT)
Received: from [10.73.53.19] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992b065c40sm13045573b3a.10.2025.10.13.18.16.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 18:16:02 -0700 (PDT)
Message-ID: <2a70f878-269c-1b40-2e8c-77b5851de9a1@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 18:16:00 -0700
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
 <14bc2a85-0f1d-3834-9b9c-32654348603a@oss.qualcomm.com>
 <387c707e-613d-433b-a76d-16ef10dabc59@kernel.org>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <387c707e-613d-433b-a76d-16ef10dabc59@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: AURUsZlGgRM6zWEefn0_OJNv6fJrbexX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX9uRsYp8Nz9Bb
 hA3Xl0x2y0J5BtgAJLoHbyxm8M7fFywhRm02SNdEvBaiYTys5Uhb5I709y6kaNfdsUKA4iu++bW
 pb51tTbFqvzSzPTRzcT+2iwynYeSSXCOg2tAEYq0Hypj1Od2XK15GVOgPxQKQnksM3jxlhOtr5T
 qWCHqy+6w9YeI8M8/EHDUJEEKtA/xluiZl8ZqpA93rR1wrz0Wzm1NHfWbRrsNZ1j3Xo9SImPtD3
 sV2lWRXuro+UvwX6Xk6ri/BocOubb36oqAfuY1dqQ4PaujkYZPre6Q+vZzD7dmErgzsPnpwZY94
 VS5Kfaz90IY3vCgYHcCAuJ036PbpIdNsLgcQDXfTkG1m/HgmKPP5zpzdwicfD4fLBCHyqKhPS1s
 NXb+jO4luX7xDugOysGXsbkpRufFjA==
X-Proofpoint-GUID: AURUsZlGgRM6zWEefn0_OJNv6fJrbexX
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68eda454 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=sZIQVmb-xcyDnIycNOAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_09,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018



On 10/13/2025 4:50 PM, Krzysztof Kozlowski wrote:
> On 14/10/2025 01:46, Wesley Cheng wrote:
>>>>>      "#clock-cells":
>>>>>        const: 0
>>>>> @@ -157,6 +160,25 @@ allOf:
>>>>>            compatible:
>>>>>              contains:
>>>>>                enum:
>>>>> +              - qcom,glymur-qmp-usb3-uni-phy
>>>>> +    then:
>>>>> +      properties:
>>>>> +        clocks:
>>>>
>>>> Missing minItems.
>>>>
>>>
>>> Hi Krzysztof,
>>>
>>> Won't the minItems be inherited by the base definition?
>>>
>>
>> Ah...are you saying to define minItems to 5 as well, since we need to
>> have all 5 clocks handles defined to work?
> 
> 
> You need the minItems constraint as well, to define the dimension
> accurately.
> 
>>
>> Thanks
>> Wesley Cheng
>>
>>>>> +          maxItems: 5
>>>>> +        clock-names:
>>>>> +          items:
>>>>> +            - const: aux
>>>>> +            - const: clkref
>>>>> +            - const: ref
>>>>
>>>> What is the difference between these two? Which block INPUTs
>>>> (important!) they represent?
>>>>
>>>
>>> clkref is the TCSR reference clock switch, and the ref is the actual CXO
>>> handle.
> 
> 
> Then this should be named somehow differently. CXO is clock. Reference
> clock is clock... To me it feels like you are describing the same clock,
> just missing some gate in TCSR. But in case these are not the same
> clocks, you need to name it accurately.
> 

Technically its all handling the same clock branch (CXO), we have the 
TCSR clkref register that allows us to gate the CXO to the USB PHY, as 
CXO is shared across several HW blocks, so it allows us to properly 
powerdown the PHY even though other clients are voting for CXO on.  Then 
we obviously have to remove our vote to the overall CXO, so that it can 
potentially be shutdown.

Maybe we can rename it to "clkref" for the CXO handle and 
"clkref_switch" for the TCSRCC handle?

Thanks
Wesley Cheng


