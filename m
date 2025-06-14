Return-Path: <devicetree+bounces-185965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2645AD9F74
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 21:29:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27A2C3B8B8B
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 19:28:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 226B52E6D31;
	Sat, 14 Jun 2025 19:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bCr5qJjF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CFB01D9694
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749929351; cv=none; b=SxpMf5XY9EQHcdBWuhX2NELH9nQNyA4hrk5/3k5yZ5wiHDMAgts/XYiv0lNkPAx+PzHCzkwjdyBcpKtDrGW/aJqZPmIgNjgdxeWDV3a3EypGOjwZRN3VVSMsWez1nbojRoOPsihLv+B4l0JBCMkUcgnRnd1yax8bpzz4pBhuDnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749929351; c=relaxed/simple;
	bh=xBWb4Vx+9iYeEzK+u1HVql964u9ityny0CkbK7SzumI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m5LKsInmAeDRWmf3rGdnFx6+PW2wFo2FGAHmtkmC+7AdaqD/F8ixT4h8Yp84eapeF224Z3lQpLUn1vXdYsT9s5KpyP75qk3K2Xauut+WHkvwjuaR7kQ95gNNhCiLjEfyzKv5Pwxi42PX39XStn42GgkxpQyexrIR4Z9MXxsiLT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bCr5qJjF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EHvOnU028554
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:29:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RmDl5XdrxtUmGgttdm0D/Ht8p5oObZ7nQYXHWGILly0=; b=bCr5qJjF0J6SsMvA
	HrPmlNzCZPo38Rcw4jd6fDI6nxDYgrzxRr4e2QW4WYtQr/L3ia8XK+WYzQEY6vjb
	7FMzydgwrJitDQOv9xFBhzE+jADVnN5nhaiE080pxEY1jyeP1T8Zhr4yzvT4iH1S
	OdWE5Rr+Dzy5UdXHyqTCkyTHmn7hrhQNX1Aok3JUdkrXqineR34JZxr86goV2qpq
	Jgvab2eAZIrifMrjAqkNOywqzDXVdmuVyTDF87Z29DQMm0NcCB80pfGUFPAd7Omv
	UE7O8Sc6jizSFa5waEJePPxR34lY7lu6IlL0ZxTwcOzdYrYyzVPCRKd9nnsJP7q0
	WjzgbA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47928m8w5c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:29:08 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a5a9791fa9so7104161cf.1
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 12:29:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749929347; x=1750534147;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RmDl5XdrxtUmGgttdm0D/Ht8p5oObZ7nQYXHWGILly0=;
        b=XYGXUeETwccvGUL5kGldRgpqh8HHl4WrRKzS6T4Lzj40TbeOZ+gIFVz52SuFu27HPf
         J1ZEcEpT3Kn16y8FtoC2hbHS8VQY2yl8BHAjqVtVsuk7ZjZ74foeReCiV+QP+Y/v4ZnV
         BlCQlQepbm0bjwVVwPO/5Qb+vjNn9SivgcoTTtz/T0BzuiO5TO7cjmBzjSURbwdzC1oB
         f7DA6HwpVwzZNKeXCIOTuQb77WOgvQalSdwX47NCrbA0xkFSyOVySV8Bl7GmYP50crMY
         Qg05SN5H7Q1sYCQfD7c0b8rxTYSUSDhw0WcqPQfkZmQXmBhhYOmqZilgCMuQAyxT3zoE
         tuAA==
X-Forwarded-Encrypted: i=1; AJvYcCVAGpEBtPQdIiGu+KMPtggPJvJ1mWoZ9s7PcfSMBuZcAYT6eOBYR9nExSFiJsewgBTuogecPPFyUnv3@vger.kernel.org
X-Gm-Message-State: AOJu0YxmtOkHb1FfrSjEVmzhCcN7zj+ULNI/WZkXpsRoYp5q9SqzEVsw
	4PZJSvdB3ynuSZQsazFYKi57tvHoR2djQFtJUDYV35n8VDvMAYgZ2OOYmaP8NFzWvNUbdrzO6XO
	sMTKlELXdXME3nbVBtEPcZs4Lpx8PQEiaS1UWaKkQf8B9r0AoEBhz/9sE9ua8rg9E
X-Gm-Gg: ASbGncscS29yP4ecpsqAdKwHYO8bqC3z/J+YOzn0zR/hcPmZWI/h9k3bcrBoT2/LxUq
	OYe1M9/ChUfzIgA2iEjwlt1vJuHzOCm5eYSYqkctuBNT2GJ2mzuUHWRiO8eHv2wvlkCfNZAr+pi
	QdLgG6wIjG1Y55BUGT4m1dqGUK0PK4RO4CnGMtFLTZvOwE3SZ6PkoAkG7JpDegi93be9aLTH8e9
	P/9lafu15gepmO2s2veIlEMXpPAxVhSPSMILjH9/SzDKPa5fVEAXcOLAX95scTmQxWrrwARQgb7
	o4eEwBJ9Ephj5hskeKoUnE3JIhmX1LwjAYTs3PtqxU+ML3oUwtPg0vrOrMlH+B41JFhWO1xO27/
	Dz+o=
X-Received: by 2002:a05:622a:1903:b0:494:5984:1022 with SMTP id d75a77b69052e-4a73c5a4600mr22418541cf.11.1749929347183;
        Sat, 14 Jun 2025 12:29:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGsVKnNQLpvRnu1ZQSmUOek/Q9FOFzcJQZRaWYRHRFg0qSnSfgW4C3Go5265XFYUDWcy5Q2w==
X-Received: by 2002:a05:622a:1903:b0:494:5984:1022 with SMTP id d75a77b69052e-4a73c5a4600mr22418361cf.11.1749929346692;
        Sat, 14 Jun 2025 12:29:06 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec88fee81sm354561566b.91.2025.06.14.12.29.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 12:29:06 -0700 (PDT)
Message-ID: <d22f7815-c76c-4bed-85e1-bdd43df6a79c@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 21:29:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] dt-bindings: media: qcom: Add Qualcomm MIPI
 C-/D-PHY schema for CSIPHY IPs
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
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
 <e02cead0-665d-443a-a884-c3a307409c66@kernel.org>
 <9e38a09b-1521-4196-b179-d29c62e143bc@linaro.org>
 <4848f13b-3b2c-4210-933c-b4f28d7c6ae7@oss.qualcomm.com>
 <9bd4ff5d-7c51-4e21-91e8-17c6bcab7f67@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9bd4ff5d-7c51-4e21-91e8-17c6bcab7f67@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE2MiBTYWx0ZWRfX02St+bbrynpa
 xw5dfRk9Cr4GYMWwa/4CbncydViD+GDWxPCtzwc10aoc6YJBf6ITJTHmkZ2Y+RlDOhgk7GabhdR
 9k8xFXZLJRME0RQyVB6cZ9XU/lMVSivJUtfKy/VGHN5kbLzlu6pxOtRMeAVF8d7QRN598DiSIAX
 HQ/b4fvugT+TjDVj/XmctC0y5vJlL6ePF2MbFymBJvlRg1fHJ89YEFS6tFIPiLg5BM5G0lRSEiY
 RwEVzazQYppZXoCAr8BNQe6acRjB9Ah45lLfRjVF9FhaOQ6czChddcvh3EURl8vCSXFm3sqTobO
 WMzcmtu3cSz5u6ozD/prM4ORBTu5Ui2JNKgOLAn6I0ToUJng0wsOYVlp0IVlE5H57ZR06XX6gHI
 /xtQF+VlLyLr2DFgMkLe/CLb586iPKORmH86bzrwhmsc7vQeT+MXTrLYpIpMf7L3TvS3xrls
X-Authority-Analysis: v=2.4 cv=fvbcZE4f c=1 sm=1 tr=0 ts=684dcd84 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=b0AXgi5J3pU-1zpc9bAA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: M6PuvNKM31rYNuXYVmmGPDTwv8BNxJu3
X-Proofpoint-ORIG-GUID: M6PuvNKM31rYNuXYVmmGPDTwv8BNxJu3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_07,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 clxscore=1015 mlxscore=0 impostorscore=0
 adultscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506140162

On 6/12/25 6:44 PM, Vladimir Zapolskiy wrote:
> On 6/12/25 19:17, Konrad Dybcio wrote:
>> On 6/12/25 9:57 AM, Vladimir Zapolskiy wrote:
>>> On 6/12/25 10:39, Krzysztof Kozlowski wrote:
>>>> On 12/06/2025 09:38, Krzysztof Kozlowski wrote:
>>>>> On 12/06/2025 03:15, Vladimir Zapolskiy wrote:
>>>>>> Add dt-binding schema for Qualcomm CAMSS CSIPHY IP, which provides
>>>>>> MIPI C-PHY/D-PHY interfaces on Qualcomm SoCs.
>>>>>>
>>>>>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>>>>> ---
>>>>>> RFC verion of the change:
>>>>>> * https://lore.kernel.org/all/20250513143918.2572689-1-vladimir.zapolskiy@linaro.org/
>>>>>>
>>>>>> Changes from RFC to v1:
>>>>>> * moved from phy/qcom,csiphy.yaml to media/qcom,csiphy.yaml,
>>>>>> * added 'clock-names' property,
>>>>>> * removed SM8250 CSIPHY specifics, a generic binding is good enough for now,
>>>>
>>>>
>>>> Now I noticed this... weird change and clearly a no-go.
>>>>
>>>> Device binding cannot be generic, so it is not good enough for now.
>>>> Please write specific bindings for specific hardware.
>>>>
>>>
>>> Can I add platform specific changes on top of the displayed generic one
>>> like in Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
>>> etc?
>>>
>>> The generic compatible is sufficienlty good for adding the enhanced
>>> CSIPHY support to any currently present in the upstream platform CAMSS.
>>>
>>> Obviously I can rename it to something SoC-specific, but then a question
>>> arises, if a selected platform has to be a totally new one in the upstream,
>>> or it could be among any of platforms with a ready CAMSS, and a backward
>>> compatibility is preserved by these series and the new CSIPHY dt bindings.
>>
>> A YAML file hosting common properties will probably be very welcome, but
>> the compatibles must be specific to avoid having to redo this dance in
>> a couple years..
> 
> Right, that's a good way for sure, and I keep this option in my mind.
> 
> My concern is that it might be not a perfect fit particularly for CAMSS
> CSIPHY IPs, because likely at least all currently supported in the upstream
> CAMSS IPs will get one in one equal hardware descriptions, despite CSIPHY
> IPs are obviously different. In other words I anticipate that there will
> be just one platform prefixed YAML file with a long list of various platform
> specific CSIPHYs, and therefore it's just one potential $ref user of this
> hypothetical YAML file containing common device tree properties of CSIPHYs.

One big YAML file may be okay too.. think:

compatible:
	enum:
		- qcom,csiphy-v1.0.0
		- qcom,csiphy-v1.2.0
		- qcom,csiphy-v2.0.0

clocks:
	// if oneOf then that many clocks, else that many

etc. etc.

> 
>> Then, the camera ip is well-versioned, so you can use that as the 'specific'
>> part. It'll also make it easier to resolve the unlikely case of a SoC using
>> a mix of different PHY versions.
>>
> 
> Many thanks for input and reviews, regression test results of the given
> CAMSS driver changes will be also very much appreciated, it may be helpful
> for Bryan.

I'm afraid I don't have any board which would be both unique and
with working camera..

Konrad

