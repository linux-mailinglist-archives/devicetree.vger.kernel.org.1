Return-Path: <devicetree+bounces-199235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD0CB10138
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 08:59:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DD73C7B0F29
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 06:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB6F0221555;
	Thu, 24 Jul 2025 06:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FDqeVuAH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C061A08A4
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 06:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753340347; cv=none; b=gxt2Y5xARxwU5RUN4Unq7J5OigYLipUNTyjwHmF+NWokR3gwLRORXMFDSAwXlqicd0yPORU5E82NZfJNP0RjzRjrzALT1IOm9nNx5eHDLGiuCHc/PZPuFyRBS/J0MtT/X6gByWJ2dsgvXISh3W0cN9eXhuzaVxhXDELK0LVUTqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753340347; c=relaxed/simple;
	bh=+yILzwFo/vLcC/23zbY4nvnSyr41gpPHH0cSaLYpt1g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y0+oTdCWXMiOjm+4kKAG2m2l+WJfvZXeAFGPzKkkRcAywKlQTLtG2Wblv0z9Z2rYy2YKJE9qHUz10LF92i/SuzSB7aNjJq9/1Uu7IupOfzTPj0EEPayTre6VX1GF4oITNEIU/tloxJbfFSfxDI1dWVbXLLC3F8m63I4BxLI/0L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FDqeVuAH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56NMXdM8018368
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 06:59:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LJLV9y6DAFvprSCjH4CLC3U/qcxOb+AXlx3u+EDpR9E=; b=FDqeVuAH05RgmGV0
	EoJh1q4G+gwLO3u55Iy5+Zk1puce159J78ZZ/N2qBuQ+QNDSsiIxRB2lFJGQ+bOF
	xX7kAgcUOaKYgvZ9XIq8/+urztEY2C9ZlIql7ncZl2a1tKGI0VYOXmfTEhXtfMQ6
	fDIa2VM5ttsFJuEXxldqj1xeIp6IVkrI5xtDWB1Ugp+i+hlZm+LsYxggJ1EAcEEK
	4e+xrzRtyvzqu+wPyrZ1UqIJtA5+RpasbDGSDPhtUg/foYUwkgX+AU08Cyg/X4CE
	W+XyESCWQ5kpG1r9ovgMfDnCdZsnrgtAyjYZ5ScNn6BmtPAgfoJdx4UkPctIs/rG
	N25cJA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481g3etjm0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 06:59:05 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b350d850677so563859a12.2
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 23:59:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753340344; x=1753945144;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LJLV9y6DAFvprSCjH4CLC3U/qcxOb+AXlx3u+EDpR9E=;
        b=QBv83SSUMcp+zhVkwXrCj0Ltr+itmFRdiZPFVBdqweKb4RJfiUMx2pwuHX95hQeIuf
         x6idgof17U43PXSUBNZP71ifJvy+aPu+h/q7bs9+ntRQhnG8bEHxHI/CxLJ4JE/Dih48
         EqkUQFFlKwzMxDbcp1mihzuB9LgWNiq6gZtwqdSVJFP9KUUhwWCcu1mz3/vc0Ylk0SFG
         hSsBz8WbWVQgCnVcWTqPZiakwS9wwl6T59+rGeZ3RonkkGcelbs23OcPTz42cq4iCYTq
         XDXXaOJuESq74WwvnfiT6TSV17YqGUq7M1/HGXN3AdmJmgp7oH1ByZcgaAYyIYqG8KcM
         h6lw==
X-Forwarded-Encrypted: i=1; AJvYcCVHRr3fd1NDA9WvK5tmWZmnPqaJad4oOqkKl/lot/X7ycWuiGFoR0iIqCHr4kGqlgudvS22AuvDhGR1@vger.kernel.org
X-Gm-Message-State: AOJu0YzDYwCgdY7WFX1q7BE+gmZ94hNc52datHxzWa/IRSQfxp7uASj2
	Z5GR/0yX965Zonz2AqX/iYCOMXT6vayQk1fcQ0ZV+qC4M45UmXV3KI5q2lilX8MdPTf07BWKeDe
	XAmD1u8qbNaqPhom8C8ciJSc4Q39L0SS1o8rUfFoe88IdjFekpNfpCnmPIsgIlyCL
X-Gm-Gg: ASbGncu1hF/1pu9jqF6/ihPF1MVO75ti4oNGPbgNHi959B4scDJOv5b9pOFqeCiWb4Z
	p+UGcYr/8nQhLG94QxcT+0wgVZg6A49jTkK5hi1ayaD1zG80+5OQ4ZNrowxi1izrjcsavaAuAl4
	/Y79FAK0k2yWvQJmUiG8/887h5LXbDuvYPzZAdE6qUj7RnkCL+lpJOVRkeD/KUwCqvM9GoVeIzQ
	skaS0qpme23qXf9BiyNavTt6uDpy9/r8386rIo3qzJ7fVmiTfvr6PHIEg3C7mi6qUqhBkGANq7E
	r5Zsl4f4FY40gTcV/sGBH/G89hveL2g5FMq7gcdExUoX5sv2z+23p2bMn6Lm4z38z6AlBxRXea4
	SwScnFvsi5UfBSIQ=
X-Received: by 2002:a17:903:2445:b0:234:9068:ed99 with SMTP id d9443c01a7336-23f98203dcdmr87152615ad.24.1753340344276;
        Wed, 23 Jul 2025 23:59:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKcm8oYoOanaAm12F5fP1f1haS3gxOMzehTBR38a2e8qMjyLPtKfGSbghtnx0VPvQBOw39pQ==
X-Received: by 2002:a17:903:2445:b0:234:9068:ed99 with SMTP id d9443c01a7336-23f98203dcdmr87152395ad.24.1753340343813;
        Wed, 23 Jul 2025 23:59:03 -0700 (PDT)
Received: from [10.110.12.211] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fa48bbee6sm7918125ad.102.2025.07.23.23.59.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 23:59:03 -0700 (PDT)
Message-ID: <2949c950-71d0-4560-83c0-d49bd860b387@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 14:58:58 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs615-ride: add WiFi/BT nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250707-615-v4-0-1a2f74d167d7@oss.qualcomm.com>
 <20250707-615-v4-2-1a2f74d167d7@oss.qualcomm.com>
 <smnw6whsw5todddsoveeanohcaesfip27udzkbw5wk5dwlztzz@ic3xemwrbjwg>
 <a63cab56-2d32-4d38-83f9-911561807e9d@oss.qualcomm.com>
 <7117b159-6743-4db3-9ae5-1cf4ae051601@oss.qualcomm.com>
 <469e2e9c-b950-4ecc-bfa9-82aa9178b65d@oss.qualcomm.com>
 <fym6hgenzzpct3kbat4iz42o6nyavfkrp6z5jkf6vjfnwo2u55@of7pgzoxbgej>
Content-Language: en-US
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
In-Reply-To: <fym6hgenzzpct3kbat4iz42o6nyavfkrp6z5jkf6vjfnwo2u55@of7pgzoxbgej>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: uD2cLqZ2xAk9gYeCvjO5PqPnON6uWKfT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA0NyBTYWx0ZWRfX2+u5ivdUCYIP
 BaGoBRAxivjPA22uGZBq9XZmUzfQm3WvLEQzDwBGWTUwvoHiaQioa23kDR9bCnxCIFFTw8o7tnd
 df8UpcAiSmH8F8vNW6bH2NPpTI+Ziaigfx5Pc2pmgYGCXptio/65u4P5YiiqqHdhOM8oK4ZyxSR
 LoWK5VXTTV5XEG6TlDnA7bzqxmAK486NP72GUy4jxgJmPrjnzP6ztRfZeu272h3HZpB+hChoWYe
 24TgTNqpLDrdUAlKZdoz/986HvdzTughWr7KHpiPSxF0bH9pWo3Tvz1QSgL9oxe2mE5f6Z/VH2j
 9zFFOn0k2SRlxg1cR8NkhIeuWEM7kr5n9GezxFAdfikklh+/7MjrDToUeJoMFFEnJxruhUrdy9X
 ZAeeFrsr0gYkhhbs/e4JZ9QtTCXi6XjQBA5LUZbkbEgnbQiaHID7sPPkyG+3iYe9wS6BaObN
X-Authority-Analysis: v=2.4 cv=Q+fS452a c=1 sm=1 tr=0 ts=6881d9b9 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=gtneBsfJDwcf013Ok-4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: uD2cLqZ2xAk9gYeCvjO5PqPnON6uWKfT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_03,2025-07-23_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 phishscore=0 mlxscore=0 lowpriorityscore=0
 mlxlogscore=999 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240047



On 7/23/2025 7:31 PM, Dmitry Baryshkov wrote:
> On Wed, Jul 23, 2025 at 10:02:36AM +0800, Yu Zhang(Yuriy) wrote:
>>
>>
>> On 7/23/2025 1:36 AM, Dmitry Baryshkov wrote:
>>> On 22/07/2025 18:58, Yu Zhang(Yuriy) wrote:
>>>>
>>>>
>>>> On 7/19/2025 6:13 PM, Dmitry Baryshkov wrote:
>>>>> On Mon, Jul 07, 2025 at 10:51:06AM +0800, Yu Zhang(Yuriy) wrote:
>>>>>> Add a node for the PMU module of the WCN6855 present on the qcs615 ride
>>>>>> board. Assign its LDO power outputs to the existing WiFi/BT module.
>>>>>
>>>>>
>>>>> What is "existing WiFI/BT module"? There is no module in the DT. Not to
>>>>> mention that PMU is a part of the WCN6855.
>>>>>
>>>>>>
>>>>>> Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
>>>>>> ---
>>>>>>    arch/arm64/boot/dts/qcom/qcs615-ride.dts | 135
>>>>>> +++++++++++++++++++ + +++++++++++
>>>>>>    1 file changed, 135 insertions(+)
>>>>>>
>>>>>> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>>>>> b/arch/arm64/ boot/dts/qcom/qcs615-ride.dts
>>>>>> index 011f8ae077c256f079ce1b07720374a9bf721488..2df8e7e3c1d3b6d6353a6753b8387c7411edd927
>>>>>> 100644
>>>>>> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>>>>> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>>>>> @@ -18,6 +18,7 @@ aliases {
>>>>>>            mmc0 = &sdhc_1;
>>>>>>            mmc1 = &sdhc_2;
>>>>>>            serial0 = &uart0;
>>>>>> +        serial1 = &uart7;
>>>>>>        };
>>>>>>        chosen {
>>>>>> @@ -47,6 +48,85 @@ regulator-usb2-vbus {
>>>>>>            enable-active-high;
>>>>>>            regulator-always-on;
>>>>>>        };
>>>>>> +
>>>>>> +    vreg_conn_1p8: vreg_conn_1p8 {
>>>>>
>>>>> No improvement. Please try again.
>>>>>
>>>> you mean should be "vreg_conn_1p8: vreg-conn-1p8",right? I'll update
>>>> it,
>>>
>>> What is the node name for the previous regulator device? Anything
>>> preventing you from following the pattern?
>>>
>> Do you mean the prefix 'regulator'?
>> I just want to keep 'vreg_conn_1p8' and 'vreg_conn_pa' the same as in
>> sa8775p-ride.dtsi, because they're using the same module.
> 
> That's a different device. Please use the style of the file that you are
> patching.
> 
Got it, thanks.>>
>>>> thanks.>> +        compatible = "regulator-fixed";
>>>>>> +        regulator-name = "vreg_conn_1p8";
>>>>>> +        startup-delay-us = <4000>;
>>>>>> +        enable-active-high;
>>>>>> +        gpio = <&pm8150_gpios 1 GPIO_ACTIVE_HIGH>;
>>>>>> +    };
>>>>>> +
>>>>>> +    vreg_conn_pa: vreg_conn_pa {
>>>>>> +        compatible = "regulator-fixed";
>>>>>> +        regulator-name = "vreg_conn_pa";
>>>>>> +        startup-delay-us = <4000>;
>>>>>> +        enable-active-high;
>>>>>> +        gpio = <&pm8150_gpios 6 GPIO_ACTIVE_HIGH>;
>>>>>> +    };
>>>>>> +
>>>>>
>>>>
>>>
>>>
>>
> 


