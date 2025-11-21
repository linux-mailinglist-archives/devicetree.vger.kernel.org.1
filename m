Return-Path: <devicetree+bounces-240969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE2CC78201
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 10:23:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id F1C462D58B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 09:23:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2D0034104A;
	Fri, 21 Nov 2025 09:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o5wR2HXt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M3FxpTtP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3024C33C184
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 09:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763716779; cv=none; b=es7wW8O/EQ7kkHYIS/bpIlecNtYUvIBRDwlKkyosQGcf+aJXLsu+9xCQ88aAkvRzIw7BZVTlgUe9SgSRg6KurHE+/sQmoBuWL1+TjyU6TaiJ2R9TMP9vEaXG1mNimSVjYyRPVHBPzHeJv6QcnCWWfrwrFM2jnGGlHBJJDbArMkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763716779; c=relaxed/simple;
	bh=93pp6K5KRJ0nOULLGFyNsHHqNK/ssHzPkmeZq5LEK7s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XJExgGSp9asZr/KzxfVTMdhXfbIkKwfBAt+VWaQCxA9v6e5g0E1VCqOZrMNMW9Vkh1b5p9h0uqdNN/6uG+InC1/r8fwq5evseMb2CWcJBwxkGxZt5yHd2zoP9Pal8tBorvF1fb6M7KO+1ZYgREqMvbQlZKVTDb1hu5JR2HZPRtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o5wR2HXt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M3FxpTtP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL5RtrH2756749
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 09:19:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C8ThIwuK59MSjkJYMBHga8gJe9326S5J7eRXrlnJw1w=; b=o5wR2HXtfvbjsLBf
	3Shqp5dNFmnEEdFMbhXWNEa3iWL5pEIgrw7ir8h0Ez4VoPdS90t7lEVR1O4J6bwy
	OE8/QXU1D5p10AANBMsZD2riEjlVnAJMbNa72fj3/DBt/WyKOJCgTAlUJXU3zlbv
	MNnCoQiHLL9ENd8SEAMLpRw1qDBLF+vKuz7m77rrhJOcKzrrAXoJgkCxTXjLC4dD
	c3Pcf/ZRHq5CdFUH+hORunZrzin2S/IBDvay7HGfJvJ0Xv9MNgvBu9vdVc7BCqwM
	OuoflmvibRUve/b/X0a2LM/wvgJGdbHIGXmNvvvMzW5gcgg1wPz5sLJ37NNsp0mA
	41VLrw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajhy60tmj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 09:19:37 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4edaa289e0dso7734461cf.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 01:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763716776; x=1764321576; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C8ThIwuK59MSjkJYMBHga8gJe9326S5J7eRXrlnJw1w=;
        b=M3FxpTtPjLs4QU/QAuWzM/tHWSzRVWGJlnV6tWzRZ+I0V0L2Es87nicjCIzL/LQbqa
         HI9JqW5uuqq8GpJ0IkWzkK55dCmPe2+JaR2qa6ZPiN921olQ3TU6ML9ECkS+LwEZrIcT
         9MAFzQ8X/xkq9T1CenFSbrREh2dRK3dirFpxviux2sQyaEE9TDqx+/svXpv5KfTrqpgb
         +rrPMNh9VvYcQCiEkn1ngYN62p/0hb1gZ522VeKjcPg78meQx5aFr1WPskBkMzc5O2ik
         /4vF6GqnaeQE37zIlZsBOVNyj1igRwEur/X0uDo/PMtzo8gPOfiXmT4xWJhgWOkgk1kY
         5PnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763716776; x=1764321576;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C8ThIwuK59MSjkJYMBHga8gJe9326S5J7eRXrlnJw1w=;
        b=hvksPOFl0byCS1fWLO5QQxmHxLNYYr31BdK23DylRrtAAlP+ZDl3YdTRNpDBJ5lrZR
         DDSYuBXSmO3+aKXY1+HBsVyB5+qw+lK5cKCVQjxQN1jG/ndiZu/ChrJLl4hlmccaGfG6
         YvmctK+DMXormPwA5JtiRV3SmdDk4klisUnHxo16rlWa+dJ1KVmJ1E+5qZWrtP8o4qkb
         dxp6p/dIwAtQVQ9NfonnYb5QYggk5kYqpVw8jMsrilYwArtx3UcAE5f308qwbXJDIcMK
         h58CEKa81bczWDXo2NsdB3rqcy12Uf3AC7o2H585IYLJRz0ifTa7dwJT75tm2DsfvmOP
         ykJw==
X-Forwarded-Encrypted: i=1; AJvYcCWe8xA9jBGbwCn7pICXVHgHugZwLqCgqFaXNZEx9gP0aO1h3vYL2e7oxl+bQJb4e/RZd1du2yO6ZX7/@vger.kernel.org
X-Gm-Message-State: AOJu0YwNwaqCz9De0Koqvn/UIViq4MfwuYRnOHs4grrJS3nZ7RbjGt6m
	f5LnWirU9Q/ATOMxuew3gSkGXQNJnYVUNfOhPs36vrtqNXDqk/XvBhpi2V8lr7dGVev4b4kWZLV
	ASJtswWB6NnfYUBEnQg6/a+ofekAKDN5oPj+ssTU5TlLPU5uq591gWNAnyixzCKK6
X-Gm-Gg: ASbGncs3ag3o6CA9bU6S7WMvlqATqxasC90bskYq2ZCt5qc+IVypMAqzR6KHV4b4UxP
	+OPAc5gDyiMSfCq4EWO/utoDPq4z6iEJjrIXbjzG12e2i0d/IG2R2xeVehn2tFunQ4me9AjX1rw
	ystNMqqvzKElBAmSRkGXdR8aWpnKd3Jvni9EZEX5hiCjasH1leqY4O0I/GdlEwSm2UgdO21q6Pu
	ync697LCV7gbT1HfsBjLGZgjU09ixF6Fj3AJLN+KK1Xwht8LxC+WFhsCwzog84eB+E8x31kaVAD
	UHewKvYeJ2NpcyDNKXQNnduFprfpCXfWiaclwFZpDqQNsSbLnHzYuFvCvFj0FtH5TYHMXz9vbor
	nQ0dgdF2uftAAQEAPLieaq1ZyQJxUWsT25dJ/YV861ZFONC67o7UH0nHmG2GM+JxkmB8=
X-Received: by 2002:a05:622a:c3:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4ee5883ae04mr16435931cf.2.1763716776382;
        Fri, 21 Nov 2025 01:19:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFm/JGHQ40fJEftfT3CcvrQpmlf+U6w8IwlHK/aospVSRLrwkNSqWoX994rgeL5orZIkHPZtw==
X-Received: by 2002:a05:622a:c3:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4ee5883ae04mr16435791cf.2.1763716775832;
        Fri, 21 Nov 2025 01:19:35 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654cdd62bsm419357466b.5.2025.11.21.01.19.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 01:19:35 -0800 (PST)
Message-ID: <5ee9f41b-979f-4c44-a009-f0d94f6854b6@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 10:19:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: qcom: add ipq8064 board variants
To: Christian Marangi <ansuelsmth@gmail.com>, Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251120135435.12824-1-ansuelsmth@gmail.com>
 <8e75be2b-643e-4380-a018-3cb718745101@oss.qualcomm.com>
 <691f3465.050a0220.105096.7667@mx.google.com>
 <20251120174119.GA1586641-robh@kernel.org>
 <691f9aee.050a0220.138abd.0f33@mx.google.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <691f9aee.050a0220.138abd.0f33@mx.google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Lb0xKzfi c=1 sm=1 tr=0 ts=69202ea9 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8
 a=9UnCyIbBERiO__AbIc4A:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 40h7xjykT6wP9EsFSXdx5HQhQXQ0vkjr
X-Proofpoint-GUID: 40h7xjykT6wP9EsFSXdx5HQhQXQ0vkjr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA3MCBTYWx0ZWRfX0piLRRvJMFtr
 4bcOgXkuQGLDP5HCn6e44DyzjEa1UPd7TpdVDbGqWBXPobqazODWZQRtWk0i0nRrhAephVg3om1
 XFqgNjyG+XsQ4xBucXpvGiysvnIxCOW/a2AFH87DjEe3aiYKOL6Nh3DRozum5bMu+P6/xZbEhQ1
 XRlMHVkxOh3IQPTLbCZ7UhvsJMWezpHTFyRiT54x3liwsUwwcYYihLUXhZB/UFhAA9PfkMJ8xDS
 2ULmJttlqv37A0Ca+wdPMuyxlMsAM4c3qu02ZbtrlFW604gQboHH/zes5WXp8Yk/Lh6o3oI2RU5
 y5IgylLYHH8+/fhM8yIyyN5KlJiHpoTDRyUci6/Sgj1q4g3WKsnBGa0T3+izH+frIfi49Pr9Lp5
 4x5iKk+JYB4655Ndb5CqYy8ormSF/w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_02,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210070

On 11/20/25 11:49 PM, Christian Marangi wrote:
> On Thu, Nov 20, 2025 at 11:41:19AM -0600, Rob Herring wrote:
>> On Thu, Nov 20, 2025 at 04:31:47PM +0100, Christian Marangi wrote:
>>> On Thu, Nov 20, 2025 at 04:25:37PM +0100, Konrad Dybcio wrote:
>>>> On 11/20/25 2:54 PM, Christian Marangi wrote:
>>>>> Document QCOM ipq8064 board variants ipq8062, ipq8065, ipq8066,
>>>>> ipq8068, ipq8069 now matched by the QCOM cpufreq nvmem driver if
>>>>> socinfo can't derive the variant from SMEM.
>>>>>
>>>>> Suggested-by: Rob Herring <robh@kernel.org>
>>>>> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
>>>>> ---
>>>>>  .../devicetree/bindings/arm/qcom.yaml         | 20 +++++++++++++++++++
>>>>>  1 file changed, 20 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>>>>> index 18b5ed044f9f..0eb1619fede8 100644
>>>>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>>>>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>>>>> @@ -299,12 +299,32 @@ properties:
>>>>>                - qcom,ipq5424-rdp466
>>>>>            - const: qcom,ipq5424
>>>>>  
>>>>> +      - items:
>>>>> +          - const: qcom,ipq8062
>>>>> +          - const: qcom,ipq8064
>>>>
>>>> Since 'items' requires that all items are present (and in this order),
>>>> we would normally have a board name go first.. but I suppose this is
>>>> some sort of a fix to the issue that sparked this (posting the link
>>>> for others to have more context)
>>>>
>>>> But since these SoCs do exist, I wouldn't say this is necessarily
>>>> wrong..
>>>>
>>>
>>> Well we can see this as a ""template"" for device that might be added
>>> using the ipq8062 or ipq8065 compatible.
>>>
>>> When device with that variant will be added we would have to just add an
>>> enum with the real device name on top of it (as first element).
>>>
>>> Honestly I should have added these compatible long time ago as on
>>> OpenWrt we have tons of device that are ipq8062 or ipq8065 with the
>>> compatible structure
>>>
>>> "device,name", "qcom,ipq8065", "qcom,ipq8064".
>>
>> If you don't you have any boards yet, you can do:
>>
>> items:
>>   - description: ...
>>   - const: qcom,ipq8065
>>   - const: qcom,ipq8064
>>
>> Just to prevent skipping a board compatible.
>>
>> But you said you have tons of devices, so...
>>
> 
> Yes the problem is that it might take a while for the DTS to be picked
> so maybe it's better to push for the description solution?

DT depends on bindings, it's not so stringent the other way around

Konrad
> 

