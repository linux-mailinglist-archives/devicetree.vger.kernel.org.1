Return-Path: <devicetree+bounces-214868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8328AB4ABB0
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 13:24:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2AF513A1ACF
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 11:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04438321451;
	Tue,  9 Sep 2025 11:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="isSJbq0u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408D431C571
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 11:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757416886; cv=none; b=UpGY52r4HthgacfxXZ4mEVX9YrMHQSBWj/NnUWFgOX31Lsg0dl5C3vbJiZUmMKkVp3GU8OnRlCJL5pCmHdYXSm+6DIJ3X5LeDocHlvLNfYijcNGZSZgh5inqyE82zQbLoo+4pIeG6zi7PZTkMrCIimE2YNIPxtJOFcsUivo9fnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757416886; c=relaxed/simple;
	bh=bKfd83EGW+aiNvmlRY0fMI0vO1ztB5ex52PNFvOrP0k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Di1KzSEEDG+fHwQs1RsAxNqf98jTL/vYvgCrj320QUajsFX65oMKs9+A5/LAuNUdPZWzjbydmZWnYE6yTdWldwIH/fsJyg2F/NYIkW4RqlNlYoJN/k9a3vuVaCOWC9jcKRWEJ9BFgC2axR6Lk088rDf92A4MK2J7+8pZKLwtS6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=isSJbq0u; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LS6d030498
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 11:21:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HIY+rDS/Ojh2ctDZQPuEjHteQ4Q9hFu4Pzq36e8Lb/g=; b=isSJbq0uSQPg7bI1
	J++DRhdfA1wMOKF8wC6+yo/pPFQu3k4CDwUcXSoc5ObmLQXl9E70sk4RKnMFIGOc
	olmaXQZVPuuXBaefCSMrROSjUV7kmskNtYCTgigLdAtrq6xWYz9LRwOH3HSrvZWQ
	4GHVfkxuzav8yKD9+689rK8hMQ/0DMmNoZXAzq/q55n02/QZU/qq71qqFispxdQL
	IRa/n2AkajKGlR/tHHG6ujXwZ5E4dkK1o8DgnvnxLHk3D9kklXWlPfRldA34IBkU
	vVXxSS5eoIDnNoBlexLLMQexZ4T61Z2+ZRJx2JSxwPv3GKtpCN5adCIrsTLxN+Cj
	d+oCNw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490c9j83vx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 11:21:23 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-80d884c99e2so93869485a.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 04:21:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757416883; x=1758021683;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HIY+rDS/Ojh2ctDZQPuEjHteQ4Q9hFu4Pzq36e8Lb/g=;
        b=jpnarcIgxqnC+ZFHuUwseolYxGwctP1VjGg7mKbJzFkmBoxpI2Ee8FH59qNha9LZdu
         eQfdhLSVolshVtqYkpoY50mGml8dxErLbwHFGyWNzOavupMAij0gMCMoZVfdOHd5XPCR
         Od5guhJdOnAUPDki/XRrTmQL+ELyPF/j9PeEnyz0GJS40UsjU5UZrnwxwSDvBjGfshb9
         NPbFJwW6lVwtFCUBY/9HN3/vko9YcF99UgLRG/XLx4d4DuXAxYZpjEFzDxKwUBoJoveu
         H1ImlJqbJmToSvVzIEym8RK1/svSawn4SGhJ5t8akI4PsBJkRQUZh3hvnv7Ww6Y8LLvF
         0S9g==
X-Forwarded-Encrypted: i=1; AJvYcCWyBcUFKmSfbgtVVyL7JigEUtCOwdkMH2nV3Rw5ykRMRHZ/bmcApA9JhrcwC8FOmdj+nzkTqX8qTfKe@vger.kernel.org
X-Gm-Message-State: AOJu0YwjWyX7+dKsl2KHK4llEV8V4KIpqeZdkKPI13QLqNAJuFps57vg
	lpMA68IKtHs/9DG45suTjgTORyo84umXOnpONJ0tOzQdHqwbOgUlwdf2Wn1w4fkd4mU6H7S0Uh3
	7jq8bXNd1EFYw9Cp4M6RGyX8hbW9DnKlbtF6mmxVVxm5QTfiNngZLsZplzfs1BQPk
X-Gm-Gg: ASbGncuOI/gdLl7YKBMlwis9/E0Piwq1TBdkfz5csCg95IZTR9GGFKw01zbrClp713e
	JtiBT28961uzPvIZTHBuKwIK5UDCmo3eZaAxcxX7poY6Anak2MCLxAogjVjSJl9ma276G6uBpOG
	Rf6TZ8LX/Vo5255XgQKExRVVNHui/j7EmcS6z3hce2Ac2l0yvVTc3dIQ0o5QWasTlJk1Yd26WSK
	zzIdFnOFod/c1dwFOaBCeF/F/pdEEk0xiQIDnbO32d3uH82HEeO7F89dHG78GUJt1GrmyWYFJ8B
	XwJF0V3lTA96ECaJk1m6Rm1teCbYk4rexpKKgGgQbS8/G4jWpmkmlXQ0ORvzQJX/GXdBaArLEYj
	7hzjR+333QTauD+XmrdnGbA==
X-Received: by 2002:a05:622a:488:b0:4b5:f0d8:c265 with SMTP id d75a77b69052e-4b5f83570d6mr84969931cf.2.1757416882883;
        Tue, 09 Sep 2025 04:21:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqTKupwZi6BVen7gNsper3VxyomXaAVS6ZWiqIWE5W+J094ukf4dWiZ+B5kiS4EVU2QEVOjQ==
X-Received: by 2002:a05:622a:488:b0:4b5:f0d8:c265 with SMTP id d75a77b69052e-4b5f83570d6mr84969561cf.2.1757416882146;
        Tue, 09 Sep 2025 04:21:22 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff08b86833sm2622560666b.48.2025.09.09.04.21.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 04:21:21 -0700 (PDT)
Message-ID: <da984d8f-85ae-44cf-8de4-208bfc9e292d@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 13:21:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
 <20250908-topic-x1e80100-hdmi-v3-3-c53b0f2bc2fb@linaro.org>
 <7dzfcuvr45h4iailtjutqjev7lofoqu7w6ob77gehgmy7mctpk@k7oob4wj3c7a>
 <14d58c6d-ca20-4349-8031-9906a4539fef@linaro.org>
 <c25kbb65aijgolxjzunydvhupt774pfmbcz5lvfvl5f74rrxtr@vboh347gdvdp>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c25kbb65aijgolxjzunydvhupt774pfmbcz5lvfvl5f74rrxtr@vboh347gdvdp>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyMiBTYWx0ZWRfXwL0Y9pSsNG4u
 BKDQwIHX5F4Ezq3SedCOn3JRJwXcO+ejCM3RK0vmFF/VuP86Oh1+ng5aBWgCMTngVxctKKf5MzY
 Zc6HXPV9mDMLH+75fO77+tQj1FJhlwok6Ar0M4ySpr4u+OYlILFcrNhGyZzInoCue/Ac8MW7yi7
 fK3A4L8ElR1uU/zagj4lpSMfkwxgXJY/hI+7oh+W7udOVfnqhpbROR+Ad9j4MPeWt4oBlDk0aHO
 r5P1+UK2IzHWG/OiixEeuHrnARr1RkrO/sX4F6MUHCeR3W0xFDu/YGAgHPK48dB/OCvcvcLFhtk
 WnpNDsnrEZnfxsjJkSTDiaM50oJ8NKF361guTX7ScWYl3UGU+rc9VbhT9KolVmiNmfIXhO/QIqU
 C3xuGtjJ
X-Proofpoint-ORIG-GUID: 6Q7s1IAQjKrVxIZ3zvjm15_lUROLeHfN
X-Authority-Analysis: v=2.4 cv=PpOTbxM3 c=1 sm=1 tr=0 ts=68c00db3 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=iAPsCBKfci-S516yzPgA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 6Q7s1IAQjKrVxIZ3zvjm15_lUROLeHfN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060022

On 9/9/25 1:16 PM, Dmitry Baryshkov wrote:
> On Tue, Sep 09, 2025 at 09:14:49AM +0200, Neil Armstrong wrote:
>> On 08/09/2025 23:14, Dmitry Baryshkov wrote:
>>> On Mon, Sep 08, 2025 at 03:04:20PM +0200, Neil Armstrong wrote:
>>>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>>>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>>>
>>>> The routing of the lanes can be:
>>>> - 2 DP + 2 USB3
>>>> - 4 DP
>>>> - 2 USB3
>>>>
>>>> The layout of the lanes was designed to be mapped and swapped
>>>> related to the USB-C Power Delivery negociation, so it supports
>>>> a finite set of mappings inherited by the USB-C Altmode layouts.
>>>>
>>>> Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
>>>> connector, DP->HDMI bridge, USB3 A Connector, etc... without
>>>> an USB-C connector and no PD events.
>>>>
>>>> Document the data-lanes on numbered port@0 out endpoints,
>>>> allowing us to document the lanes mapping to DisplayPort
>>>> and/or USB3 connectors/peripherals.
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
>>>>   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 59 +++++++++++++++++++++-
>>>>   1 file changed, 58 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> index 5005514d7c3a1e4a8893883497fd204bc04e12be..51e0d0983091af0b8a5170ac34a05ab0acc435a3 100644
>>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> @@ -81,10 +81,67 @@ properties:
>>>>     ports:
>>>>       $ref: /schemas/graph.yaml#/properties/ports
>>>> +
>>>>       properties:
>>>>         port@0:
>>>> -        $ref: /schemas/graph.yaml#/properties/port
>>>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>>>>           description: Output endpoint of the PHY
>>>> +        unevaluatedProperties: false
>>>> +
>>>> +        properties:
>>>> +          endpoint:
>>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>>>> +            unevaluatedProperties: false
>>>> +
>>>> +          endpoint@0:
>>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>>>> +            description: Display Port Output lanes of the PHY when used with static mapping
>>>> +            unevaluatedProperties: false
>>>> +
>>>> +            properties:
>>>> +              data-lanes:
>>>> +                $ref: /schemas/types.yaml#/definitions/uint32-array
>>>> +                minItems: 2
>>>
>>> Nit: DP can work in a 1-lane mode. Do we nned to support that in the PHY?
>>
>> So the PHY already supports 1-lane, but the QMP Combo only supports
>> mapping 2+2 or 4, but nevetheless we can still decscribe 1 lane in DT
>> int both in & out endpoint and still should work fine.
>>
>> Do you think this should be done now ?
> 
> Do we support it in the PHY hardware?

I don't think the PHY cares if it's 1 or 2 lanes

Konrad

