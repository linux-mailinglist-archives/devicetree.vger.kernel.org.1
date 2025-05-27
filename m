Return-Path: <devicetree+bounces-180850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E9215AC501A
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 15:41:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6863188824C
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02425274FF4;
	Tue, 27 May 2025 13:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oz/1jUbP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF0D253F13
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748353291; cv=none; b=QSiwcrtbu9YFQqr1+kv5yeg53CxY5Wm8E6XTSUyrk2X1Bw0hCRj/YVGHmiSIlP8v/ju3AFrka1ZUf3Hf2tc2kTC03n4WUc59u1lP/Wsbzfp/Xv5/btK1uZQ3P3Q5SJQFENpJnIeqKByFnf2q6zhH/g5eKwFvLh1qTJh+D8DV3Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748353291; c=relaxed/simple;
	bh=eqrnG1lZLmsW/y+K5POXZAg471BAsSXO8VWTa+x9WEs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XEOPDlKd0KIx8i6T6EJo7F5tpaJcxWprFSpwNs0Y3gMhhN8ON3AOQfHHX2xwneP5OtlyMj7rUN4Zf2Ns1GRM+198nKILBTGRwifgRV8z/HSRfve3gfFMLUzWAu/QJ6do8448VXBt09X0LyQSJPROvSgEdUKaAw6K5/n9ZPXXZcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oz/1jUbP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R4TaYn013944
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:41:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ERfDT1p+bjimwu7UE0keI/XkAbZ8gsveAmakce5jzjU=; b=oz/1jUbPk71hvr8K
	SFvCeOgzjdmvLzpWF5DGRXrCI1Wkf1QkebuvBPown1H0wI+2+Z5vwPCtDRKgODh1
	ZDLNmWMe4rLs73oNP0yjjNtXe2tHECwOkY4Xhv2RqKfQY1drp7LDeyBYatYjrx/U
	UOJwmJBz+iPqAK62OARQnW8VgLTuamI/Hc0UcgusEKB08yGbZ9fPBZ/QBZ+yjRLY
	IFc7SCPJjoHY0ibauyYXqvlMuubxE1jYgOQjv2MZcdilvYyXCfKnEDU1T6104lqF
	PEBte9UI/YyLHAftW17MAmMHXA4PBQlFcQL7Gj2Ir9I42yW1hl4HLWmTtHk7IOvt
	Ms45hQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u549f1a0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:41:27 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6faa8342503so3621776d6.3
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 06:41:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748353287; x=1748958087;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ERfDT1p+bjimwu7UE0keI/XkAbZ8gsveAmakce5jzjU=;
        b=jETm6ekp7Y9jU3Hdi3TA8ECJPZsTvJNs0ib4bSEzo3Wv6ptagBO7CFsiRcvqulc0CS
         DiHvUbKpUA/nD6KKxbrXyeIc19iNmGd/2NNqQryBNFuJ0Ox1Z1A5d/MgHdKdNYw9wN1N
         owLUBVU7Jde2m7gTMOU1wpWxioe3eoPV+52VyqQK5MQC+UJZfXCoTFNVr6WAE25pdzL9
         vap9sDkLRUCHalCVBiflWdAHnTEjwhVGMA92uMkNdITDwK9FegT7dZ+Rrli8/TeOGrdp
         0qU5fWKCMvx6IwERoWVC/9pBjr6AOrzOS0hS7q9FVRn5BG/P6m2b1K7Fs9ODzMVv76dc
         FbWg==
X-Forwarded-Encrypted: i=1; AJvYcCWvBwid3Vx24GceTPe4h50eJBQ6BxigQz/9t2DYfVncwMVaFIORKT15Vx6qo4m5Zl1+y9moTWgxqxSH@vger.kernel.org
X-Gm-Message-State: AOJu0YxscQ8leN/Q9kcCcWuOlqQM6bMJ1nJrrFDx1HMahikQKZjTHlh7
	+oZm2veqrhxasLWKK80hRY3E2zXcO/g3IkQdFJEJTC5CsN8yqaW4KqrK1KUFXWFC4OSFsIdnbRy
	q2hkN3UDv/CZ6nAcmmu2j0TWqwur+lvlYpB7kmHjZ7vsSAmzbekVvl9jALgR0Hzfd
X-Gm-Gg: ASbGncsyLliLw89LboKTulKl0FD763RUdiAjpY4HaYIGgCP6jITbubVOfToCr050G5m
	AspIoTYzun5H7dGeCxWG0rbIyLahofhzRwkHHvixeLd1Qk85pHBdD96tum37JiujNfjDAU1o8tT
	/C+CncRStv2uXkVkmicvJK1nAsOGzcP3FlNUOnqANQSqPwb79QHQXEJxLr1yT3KUKtQxXErayKH
	vvlTtKyrFoPFmVYtXlRjEes+VvLSVjX+KunjoYeiYEDIF97P/mfI/zbKwqvJkCoJteJyXxXO6Zf
	FrIVyyKHrfeyTq/8Fw+NxZlgQ+ge3SxojDgn5XZiADlbc9y+f7rPOX8MfpGb/ujekg==
X-Received: by 2002:a05:6214:f2c:b0:6f5:4259:297c with SMTP id 6a1803df08f44-6fa9d322aadmr73791316d6.7.1748353287144;
        Tue, 27 May 2025 06:41:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEjqXPi+7vAd88Ft7f9PnA4rmMxmVtVhyeYRYjMeWxtVj3a4v2wV20uTm0Pohz8zd9qMGjP5Q==
X-Received: by 2002:a05:6214:f2c:b0:6f5:4259:297c with SMTP id 6a1803df08f44-6fa9d322aadmr73791086d6.7.1748353286612;
        Tue, 27 May 2025 06:41:26 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60306f0e39esm4940959a12.33.2025.05.27.06.41.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 06:41:26 -0700 (PDT)
Message-ID: <62380db5-5f01-4652-85a3-4dd213deba5c@oss.qualcomm.com>
Date: Tue, 27 May 2025 15:41:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: net: qcom,ipa: document qcm2290
 compatible
To: =?UTF-8?Q?Wojciech_Sle=C5=84ska?= <wojciech.slenska@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Andrew Lunn
 <andrew+netdev@lunn.ch>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Alex Elder <elder@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org
References: <20241220073540.37631-1-wojciech.slenska@gmail.com>
 <20241220073540.37631-2-wojciech.slenska@gmail.com>
 <5bba973b-73fd-4e54-a7c9-6166ab7ed1f0@kernel.org>
 <939f55e9-3626-4643-ab3b-53557d1dc5a9@oss.qualcomm.com>
 <CAMYPSMr2JCQCX69PGUk1=7=-YfBcyFDpqQ6tMQzFP040srBA7w@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMYPSMr2JCQCX69PGUk1=7=-YfBcyFDpqQ6tMQzFP040srBA7w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: TuKNNzK_WmW8Sn2kip7vXyLMMb-qx7jF
X-Authority-Analysis: v=2.4 cv=E9nNpbdl c=1 sm=1 tr=0 ts=6835c108 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=NEAV23lmAAAA:8 a=pGLkceISAAAA:8 a=Mi87qWPe0p8fJGbmGX4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDExMSBTYWx0ZWRfXxSP6YhBjrSDX
 j2UTnyBrttR8nnRLnAn8kCcsBt79LAEyANJZrS8S+LIwqAglcTrA8umPVq77EIpOei6ZIuB2/zb
 ynzP5BzcgD3mBzSZhHz7yDj2Hn8S4i7yBaRn4rtzZrpOKYYuugXZPIt19NLO1jq9RsebxHiqN82
 HtGDiLUkhQIhPEWsB5iABwQg4jzuNj/yj1Sa8mZUetsbuqabDJRCD5ur7sPQYrDsRTJ3UQ5Putb
 zls375eUgtF3lgcef0yVZC102p7wdthuLmb+eeFrEHscEuxRbc6KgGEiuZHjkEVXv6gBmPt2grU
 MOBhcGyViumBVrpedGj+QkBfqqlnn5n1mjJSaXxAJcdwOMu9EVQhZ3CyRGGpzs6Qirhc55dUadb
 Eh+mFF+fPb24XnCT+k3lpS+2g9amYOrfp9i1i33em9c1XT2vBl1TCNRVP5j5mFz/wL2GSr/P
X-Proofpoint-ORIG-GUID: TuKNNzK_WmW8Sn2kip7vXyLMMb-qx7jF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_06,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=999 spamscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270111

On 5/26/25 9:39 PM, Wojciech Sleńska wrote:
> pt., 23 maj 2025 o 01:30 Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> napisał(a):
>>
>> On 12/21/24 9:44 PM, Krzysztof Kozlowski wrote:
>>> On 20/12/2024 08:35, Wojciech Slenska wrote:
>>>> Document that ipa on qcm2290 uses version 4.2, the same
>>>> as sc7180.
>>>>
>>>> Signed-off-by: Wojciech Slenska <wojciech.slenska@gmail.com>
>>>> ---
>>>>  Documentation/devicetree/bindings/net/qcom,ipa.yaml | 4 ++++
>>>>  1 file changed, 4 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
>>>> index 53cae71d9957..ea44d02d1e5c 100644
>>>> --- a/Documentation/devicetree/bindings/net/qcom,ipa.yaml
>>>> +++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
>>>> @@ -58,6 +58,10 @@ properties:
>>>>            - enum:
>>>>                - qcom,sm8650-ipa
>>>>            - const: qcom,sm8550-ipa
>>>> +      - items:
>>>> +          - enum:
>>>> +              - qcom,qcm2290-ipa
>>>> +          - const: qcom,sc7180-ipa
>>>>
>>> We usually keep such lists between each other ordered by fallback, so
>>> this should go before sm8550-fallback-list.
>>>
>>> With that change:
>>>
>>> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
>>
>> (half a year later)
>>
>> I've now sent a series that resolves the issue described in the
>> other branch of this thread. Feel free to pick up this binding
>> Krzysztof/Rob/Kuba.
>>
>>
>>
>> Patch 2 will need an update and some prerequisite changes.
>> Wojciech, you'll need:
>>
>> https://lore.kernel.org/linux-arm-msm/20250523-topic-ipa_imem-v1-0-b5d536291c7f@oss.qualcomm.com
>> https://lore.kernel.org/linux-arm-msm/20250523-topic-ipa_mem_dts-v1-0-f7aa94fac1ab@oss.qualcomm.com
>> https://github.com/quic-kdybcio/linux/commits/topic/ipa_qcm2290
>>
>> and a snippet like
>>
>> -----------o<-----------------------------------
>>                         qcom,smem-state-names = "ipa-clock-enabled-valid",
>>                                                 "ipa-clock-enabled";
>>
>> +                       sram = <&ipa_modem_tables>;
>> +
>>                         status = "disabled";
>> -----------o<-----------------------------------
>>
>> added to your DT change
>>
>> please let me know if it works with the above
>>
>> if you're not interested anymore or don't have the board on hand,
>> I can take up your patch, preserving your authorship ofc
>>
>> Konrad
> 
> Hello Konrad,
> 
> I have applied your patches on top of the 6.15 kernel.
> I used the following:
> Konrad Dybcio: arm64: dts: qcom: qcm2290: Explicitly describe the IPA IMEM slice
> Konrad Dybcio: dt-bindings: sram: qcom,imem: Document QCM2290 IMEM
> Konrad Dybcio: net: ipa: Grab IMEM slice base/size from DTS
> Konrad Dybcio: dt-bindings: net: qcom,ipa: Add sram property for
> describing IMEM slice
> Konrad Dybcio: dt-bindings: sram: qcom,imem: Allow modem-tables
> Konrad Dybcio: net: ipa: Make the SMEM item ID constant
> 
> Two corrections were needed:
> 1. A small change in the DTS:
> -                       reg = <0x0c100000 0x2a000>;
> -                       ranges = <0x0 0x0c100000 0x2a000>;
> +                       reg = <0 0x0c100000 0 0x2a000>;
> +                       ranges = <0 0 0x0c100000 0x2a000>;
> 
> This was necessary because, in the original version, the following line:
> ret = of_address_to_resource(ipa_slice_np, 0, res);
> returns -22

Ouch! thanks for noticing this and for all the testing

Konrad

