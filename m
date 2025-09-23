Return-Path: <devicetree+bounces-220553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A96B975F6
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 21:37:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AEE0216DF4A
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 19:37:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1317F303A2A;
	Tue, 23 Sep 2025 19:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ixd2zA1N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DADF27B4E5
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 19:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758656220; cv=none; b=liLWrLw0O7Dt9MUjppvVNvhpTflKz/FeLXcbvZLpVc94QDdKa2IRAqPMoMk4LXU34DZntQrNwuRhIE+/Ll3ghdSEwJYtZ+eSXIRYyRi5P0rSiJFNYMA8BUl8b/Lp9MbsWTQrFJxPct0lYgdGaONJDKD8NGC3pRzkYSAm96tCHNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758656220; c=relaxed/simple;
	bh=1iqe1y2ibI+fHdNR9WdsYwRbrTafRFMRYIggoMNDtII=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KqmsfFoQRXsrC5sUYcfe2eLyZ6Me7RmUUIm2I1GhmsKd84V6VGohaphdS1w9Zq+NNcF0SZoWDJ8PiyXuIHV90DRSFTtySLWx3dFKdhJ3JMNlvjWgbTkBvIP6nZsejhy+FSOAUyzbDodZW1lnOPICBhi04vd2YnYflaOwTM+KBDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ixd2zA1N; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58NFt1ni007392
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 19:36:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aJneKB6KUlYtnPIPcPrOqQOo+8uP80oakK/pn7zFJCw=; b=ixd2zA1NnKzqnOhq
	d2ZzEpMjcuwg+2EHlZrLhD8oW9qTrB7WEKcN6uiBS9yzBJL81zzoF79Z46pj3Yev
	Wfq6KidPBDuUDUgq+1SPcO9qXZdSfyXugG/yGi+SpJTTsXn1hIFKfi71D33lRw3w
	BBzPWnTxHDuGMG0IABoE1Xl8mZkqutkvketAZXxdsFFKNw797+VM2X2k8sOJbRIO
	JYUFDiinEErxwpPb6jqrXV5pOtNxgeDZ1PjifQSObGwhNO6MnJ3ikpAOXd2G+HMG
	hAmFe3klh7x8gTlUlo37/ivHd4RWAMVV5lwoQhGQ+Dt/RP97nqVE3BVI6BeHTd3B
	V/3/RA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98hv78-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 19:36:56 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77f5e6a324fso1063817b3a.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 12:36:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758656215; x=1759261015;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aJneKB6KUlYtnPIPcPrOqQOo+8uP80oakK/pn7zFJCw=;
        b=j91DVSBc8RT09zdY0tRa64rONHJ1wajSyAYax6xyXpHvk27/X1xrbmLHHRfRyXE7Vj
         TVO7UI7400eQH7uC3RzfAyQoyehYOm2v2XQsNry7v1BkS6Qwot3J0MXN4uXaiA5dvHgl
         vJ3Z+fTimRec/YhLaNI/SPGNfPu7/1E3LKr67AAvkZjCSgA3/7jypzu9kSZWOgaXlBmO
         D4GEh2NYIl88X987+6GUmssa7/TefZ1PH4JbmvBfJ+j1ilT0LDK7Wqun0lWlJHP+qrBD
         l3DsXnG4pVVgvZ8dv2ARgm0xw2dbQrsiNzASLEylzSY0xXwXyi9m17jX411CVGpEd0V8
         atxg==
X-Forwarded-Encrypted: i=1; AJvYcCVM48pu1+WPy53j4ip8QqHpGmf2cbqVBvwzgjbIMmClJhwD976UXYzJctPgAG+e33kQ5AJuWmcaJzjz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0yqmRDWWIz30NSo7i8kGd1I0mh8gScOnU8L14mL7BLRjrq0Af
	X1HdnAmBLjUWTOK1QTBIBjzPv7qXJWqsG6nUOM4BzjP6UMhP3MA/yHeLqvWexlGe2xrUYARkalE
	TAl+46xwSCKkCvOhvsmqcTHZOhP5buontS0VjvJj2XK9iZ/bDA3uZaltCzs78sfa6
X-Gm-Gg: ASbGncut8heRE4fVufpdTGEZoyrNfdm8vDL4fdHABKKR1emBQqkemyv4Uy3dlYYc38l
	2NlgYq0vBPsdW0hDOhlIL+8MW/UrVjCUGoHM0rX//eWHbS4KxSGaP2SelOlkRbqZwLCOUr0I90I
	A517+1Tk2B6i/P+ARcF1Sd2Jxq0rLzgly1V3YOWFkIKtfiJ1DGMHxaskym1IXfPCV6UU6/PGqI3
	SisLn/IO2U3zwA/j0KlJpZxC0zCayvpGaNHfAl1g0/k1r5OUat+j50inwGkCDcSXlObLJIUCBd8
	T8guUbYTapM7nLcy4FJ2P4rX66awqFf9LsS5bFpo9iWg5A1au1NnQEbrEw9VaBOchlvMgfbEqDl
	WH49aHQ==
X-Received: by 2002:a05:6a20:3d1c:b0:2ac:7567:c069 with SMTP id adf61e73a8af0-2cfdac2f25fmr5659665637.17.1758656215460;
        Tue, 23 Sep 2025 12:36:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFS/UpqR/9Of4sY1TBzz+iudIRPwp/SAd9XDBUzr/RWXOhBvNioYOHJ1X+iG1pgZNxz8t6Mhg==
X-Received: by 2002:a05:6a20:3d1c:b0:2ac:7567:c069 with SMTP id adf61e73a8af0-2cfdac2f25fmr5659637637.17.1758656215026;
        Tue, 23 Sep 2025 12:36:55 -0700 (PDT)
Received: from [10.73.52.96] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f315254edsm7397688b3a.84.2025.09.23.12.36.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Sep 2025 12:36:54 -0700 (PDT)
Message-ID: <f1b53a1b-ff29-38a9-db54-8acfd1abac7b@oss.qualcomm.com>
Date: Tue, 23 Sep 2025 12:36:52 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI
 PHY compatible
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-3-wesley.cheng@oss.qualcomm.com>
 <7gvp6pshp4eiugk3qodg2ub3azu365loturidbkxqly6nhtgq7@bxnkxeqzarkv>
 <4116b593-d36d-df10-6101-4e3539b8b812@oss.qualcomm.com>
 <pvma73qs7msh2qkoaqhfv5v57f3asduuutwf73ceyrxbpsv4sl@fd6fs6yrfjp7>
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <pvma73qs7msh2qkoaqhfv5v57f3asduuutwf73ceyrxbpsv4sl@fd6fs6yrfjp7>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 6rG39QZaU_XVSErvpzcDzNm6Um8j31_k
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXwbPir9OMfNXY
 in+kXIYUNN64+RJb4Gy/xJi9T+GsxfLuIO8QaMSjoL3zH+d89eXdItlXNTD+PoEso/7rcXxr3mZ
 Y9x/djQRTPQIeadKcCwIlopdcH4b3mzwKFs7+U347xj4dDVzHlt8zO9Ws+UDMxaUECX/CtHvbr+
 S++PHNbWpvkXhlxO3Ffw3FqnySTWMEhatxbG2W3IefBEfa6JN2wv8ZViIiF2LzQXxUrfI/sI/z0
 HnzWo41sfM4O1oFyrZrV+jrHAIdYbUcxilYP1TA3RJxW/3Olsn4In7PstpagdDOQgDSnitZJ5vq
 p8Keb5ilf3I0dodY0/IFVpqDM8cEdb0n72wFCyUTYOJ46qdsiJ0ZNY3hOJSRNoPya3HP59HOiTl
 RSlHQE5i
X-Proofpoint-ORIG-GUID: 6rG39QZaU_XVSErvpzcDzNm6Um8j31_k
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d2f6d8 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8
 a=ySdWX0gGKps6jh8XKZoA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_05,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018



On 9/22/2025 8:40 PM, Dmitry Baryshkov wrote:
> On Mon, Sep 22, 2025 at 06:00:04PM -0700, Wesley Cheng wrote:
>>
>>
>> On 9/20/2025 8:22 AM, Dmitry Baryshkov wrote:
>>> On Fri, Sep 19, 2025 at 08:21:01PM -0700, Wesley Cheng wrote:
>>>> The Glymur USB subsystem contains a multiport controller, which utilizes
>>>> two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.
>>>>
>>>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>>> ---
>>>>    .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml       | 7 ++++++-
>>>>    1 file changed, 6 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>>> index a1b55168e050..772a727a5462 100644
>>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>>> @@ -16,6 +16,7 @@ description:
>>>>    properties:
>>>>      compatible:
>>>>        enum:
>>>> +      - qcom,glymur-qmp-usb3-uni-phy
>>>>          - qcom,ipq5424-qmp-usb3-phy
>>>>          - qcom,ipq6018-qmp-usb3-phy
>>>>          - qcom,ipq8074-qmp-usb3-phy
>>>> @@ -62,6 +63,8 @@ properties:
>>>>      vdda-pll-supply: true
>>>> +  refgen-supply: true
>>>
>>> You've added it, but it's not referenced as required. Why is it so?
>>>
>>
>> Hi Dmitry,
>>
>> The refgen clock isn't always required on each and every platform unlike the
>> .9v and 1.2v rail/supply, which directly power the QMP PHY.  It only really
>> depends on how the refclk/CXO network is built for that particular chipset.
>> The refgen ensures that we're properly voting for the supply that is
>> powering our CXO buffer.
> 
> So, it should be marked as required for those SoCs that use it and set
> to false for the SoCs that don't.
> 

Got it. Will fix.

>>
>>>> +
>>>>      "#clock-cells":
>>>>        const: 0
>>>> @@ -139,6 +142,7 @@ allOf:
>>>>            compatible:
>>>>              contains:
>>>>                enum:
>>>> +              - qcom,glymur-qmp-usb3-uni-phy
>>>>                  - qcom,sdm845-qmp-usb3-uni-phy
>>>>        then:
>>>>          properties:
>>>> @@ -147,7 +151,7 @@ allOf:
>>>>            clock-names:
>>>>              items:
>>>>                - const: aux
>>>> -            - const: cfg_ahb
>>>> +            - enum: [cfg_ahb, clkref]
>>>
>>> Why is it being placed here? Please comment in the commit message.
>>>
>>
>> Main reason if to avoid having to define another IF/THEN block, but I can do
>> that as well if using enum here is not preferred.
> 
> Is it some new clock that hasn't been used on the previous platforms? Is
> it actually supplying the PHY rather than the controller (note the
> CLKREF clocks on SM8550 / SM8650.
> 

On the recent mobile chipsets, we don't utilize the QMP UNI PHY, so 
those would be n/a for this.  I checked x1e80100 and sc8280xp, and there 
might be an error with the x1e80100 MP UNI PHY definition, because I do 
see that there are TCSR clkref control for both MP QMP PHYs, and we 
should be programming those...

In short, yes, this clkref is technically "new" in that it adds the 
references to the TCSR handle that controls the output for the PHY 
reference clock.  With that in mind, I think its better if we add a 
separate IF/THEN block.

I will submit a patch in a separate series to fix the x1e80100's UNI PHY 
definition, once I get a chance to verify it.

Thanks
Wesley Cheng

>>
>> Thanks
>> Wesley Cheng
>>
>>>>                - const: ref
>>>>                - const: com_aux
>>>>                - const: pipe
>>>> @@ -157,6 +161,7 @@ allOf:
>>>>            compatible:
>>>>              contains:
>>>>                enum:
>>>> +              - qcom,glymur-qmp-usb3-uni-phy
>>>>                  - qcom,sa8775p-qmp-usb3-uni-phy
>>>>                  - qcom,sc8180x-qmp-usb3-uni-phy
>>>>                  - qcom,sc8280xp-qmp-usb3-uni-phy
>>>>
>>>> -- 
>>>> linux-phy mailing list
>>>> linux-phy@lists.infradead.org
>>>> https://lists.infradead.org/mailman/listinfo/linux-phy
>>>
>>
>> -- 
>> linux-phy mailing list
>> linux-phy@lists.infradead.org
>> https://lists.infradead.org/mailman/listinfo/linux-phy
> 

