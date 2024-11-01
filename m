Return-Path: <devicetree+bounces-118199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B869B954C
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 17:27:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B832282391
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 16:27:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 734F71CB332;
	Fri,  1 Nov 2024 16:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="KkkA25H/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384BE1A2C06;
	Fri,  1 Nov 2024 16:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730478336; cv=none; b=lQwmHVpGulIshBIg195UmtioEQz2TI1wV1XPnukB7nMW1i8PgjuaTJ/CQNJ1XeoCa31cZxk7DPG5ZxaAL2nAXZzZ01xAE4Yh1JJNjLk1HAgFnwc4Tqt4WrwefN4MF2rh692KIztvRe9MsRnMofEWg+aStk/SdOnVWbMTihAc6ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730478336; c=relaxed/simple;
	bh=eiFJJz3NFpwQ5pgZCqJOggjzQkyn2X13e8Jm3oofInQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=pbgLNG2pgRheJ4Ba9MnZbydeaAh29JlCoiOdi4m1FZR3kAwINmQC/QZgj6IBwg1PUvp/XHJNcFPLeqz6j3KfR0URBNoubxAGMWWYc2HVicmlmoHjpkFxRmF0gJgIe69iOQMm0Ir7OJokgExsuc7Y06JH19i8qnygzb+MyalQ6iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=KkkA25H/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A1CZRRg002303;
	Fri, 1 Nov 2024 16:25:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4QWx/7MUGYS6k2cD1W8BMEcfbzad37g6V5wvlkxyisc=; b=KkkA25H/GpanQOaE
	7XRfHjuafIqbuwXCM4S9peLl/e1VFXiUiOzzi7W7KL+35MX1I89QbTLlImMuue8o
	GFyWcAklb6+A47uJltZfahxQT0DOFL5JDLF3dp1esuAITbZUz8hJRILjDuYayJ2A
	RUYHwcuIpSPoj1WVPiP1k8gUKEVojAiRMaDhZWcbanD7KwjyPemxCzDfcD5ZdNJc
	P91yVG3E8JBLV6A7qePwfNUfzUjYUvv2Ut/q0t5AT+qn9bRNrt5E5WLyAAsrFwUW
	RN/hzoAv3jrGgtjLshybBAH+S5CSNvnOWnfOF0YG15nHL9EPFigKGQUkyfB6uP8g
	T/w+GA==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42kmn5fwjw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 01 Nov 2024 16:25:22 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4A1GPLBZ011343
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 1 Nov 2024 16:25:21 GMT
Received: from [10.206.104.82] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 1 Nov 2024
 09:25:05 -0700
Message-ID: <c5e868e1-2dae-466c-a6fc-ef0f247fa0ce@quicinc.com>
Date: Fri, 1 Nov 2024 21:54:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: opp: Add v2-qcom-adreno vendor
 bindings
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Krzysztof Kozlowski <krzk@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        "Abhinav
 Kumar" <quic_abhinavk@quicinc.com>,
        Marijn Suijten
	<marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, "Simona
 Vetter" <simona@ffwll.ch>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon
	<nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <freedreno@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
        <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>
References: <20241021-gpu-acd-v2-0-9c25a62803bc@quicinc.com>
 <20241021-gpu-acd-v2-2-9c25a62803bc@quicinc.com>
 <mz4zpcr4tqh2w7vt75f4ofxjzfve54ozzgpdbi2jjzk5pdxbk7@t36tlt3mmprt>
 <d858dadb-4098-4c9f-b4f0-393dc988db5f@quicinc.com>
 <4426b4kybtac6rc4twa5pgm3hvlegofemvqjcrvh6ni7f5z2h6@5dnlv3hgywh5>
Content-Language: en-US
From: Akhil P Oommen <quic_akhilpo@quicinc.com>
In-Reply-To: <4426b4kybtac6rc4twa5pgm3hvlegofemvqjcrvh6ni7f5z2h6@5dnlv3hgywh5>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: TGlv0mkW86Mz3fw9HgDqilPDJ4q9NQOF
X-Proofpoint-GUID: TGlv0mkW86Mz3fw9HgDqilPDJ4q9NQOF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 spamscore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 mlxlogscore=999
 priorityscore=1501 mlxscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411010119

On 10/25/2024 11:58 AM, Dmitry Baryshkov wrote:
> On Thu, Oct 24, 2024 at 12:56:58AM +0530, Akhil P Oommen wrote:
>> On 10/22/2024 11:19 AM, Krzysztof Kozlowski wrote:
>>> On Mon, Oct 21, 2024 at 05:23:43PM +0530, Akhil P Oommen wrote:
>>>> Add a new schema which extends opp-v2 to support a new vendor specific
>>>> property required for Adreno GPUs found in Qualcomm's SoCs. The new
>>>> property called "qcom,opp-acd-level" carries a u32 value recommended
>>>> for each opp needs to be shared to GMU during runtime.
>>>>
>>>> Cc: Rob Clark <robdclark@gmail.com>
>>>> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
>>>> ---
>>>>  .../bindings/opp/opp-v2-qcom-adreno.yaml           | 96 ++++++++++++++++++++++
>>>>  1 file changed, 96 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml b/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
>>>> new file mode 100644
>>>> index 000000000000..6d50c0405ef8
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
>>>> @@ -0,0 +1,96 @@
>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: http://devicetree.org/schemas/opp/opp-v2-qcom-adreno.yaml#
>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>> +
>>>> +title: Qualcomm Adreno compatible OPP supply
>>>> +
>>>> +description:
>>>> +  Adreno GPUs present in Qualcomm's Snapdragon chipsets uses an OPP specific
>>>> +  ACD related information tailored for the specific chipset. This binding
>>>> +  provides the information needed to describe such a hardware value.
>>>> +
>>>> +maintainers:
>>>> +  - Rob Clark <robdclark@gmail.com>
>>>> +
>>>> +allOf:
>>>> +  - $ref: opp-v2-base.yaml#
>>>> +
>>>> +properties:
>>>> +  compatible:
>>>> +    items:
>>>> +      - const: operating-points-v2-adreno
>>>> +      - const: operating-points-v2
>>>> +
>>>> +patternProperties:
>>>> +  '^opp-?[0-9]+$':
>>>
>>> '-' should not be optional. opp1 is not expected name.
>>
>> Agree. Will change this to '^opp-[0-9]+$'
>>
>>>
>>>> +    type: object
>>>> +    additionalProperties: false
>>>> +
>>>> +    properties:
>>>> +      opp-hz: true
>>>> +
>>>> +      opp-level: true
>>>> +
>>>> +      opp-peak-kBps: true
>>>> +
>>>> +      opp-supported-hw: true
>>>> +
>>>> +      qcom,opp-acd-level:
>>>> +        description: |
>>>> +          A positive value representing the ACD (Adaptive Clock Distribution,
>>>> +          a fancy name for clk throttling during voltage droop) level associated
>>>> +          with this OPP node. This value is shared to a co-processor inside GPU
>>>> +          (called Graphics Management Unit a.k.a GMU) during wake up. It may not
>>>> +          be present for some OPPs and GMU will disable ACD while transitioning
>>>> +          to that OPP. This value encodes a voltage threshold and few other knobs
>>>> +          which are identified by characterization of the SoC. So, it doesn't have
>>>> +          any unit.
>>>
>>> Thanks for explanation and other updates. I am still not happy with this
>>> property. I do not see reason why DT should encode magic values in a
>>> quite generic piece of code. This creates poor ABI, difficult to
>>> maintain or understand.
>>>
>>
>> Configuring GPU ACD block with its respective value is a requirement for each OPP.
>> So OPP node seems like the natural place for this data.
>>
>> If it helps to resolve your concerns, I can elaborate the documentation with
>> details on the GMU HFI interface where this value should be passed on to the
>> hardware. Also replace "few other knobs" with "Delay cycles & Calibration margin"
>> in the above doc.
> 
> Usually the preference for DT is to specify data in a sensible way
> rather than just the values being programmed to the register. Is it
> possible to implement this approach for ACD values?

I am still checking about this. Will get back.

-Akhil

> 
>>  
>>>
> 


