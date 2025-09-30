Return-Path: <devicetree+bounces-222575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FE4BAAF50
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 04:12:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F80B17E0BF
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 02:12:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC83720C461;
	Tue, 30 Sep 2025 02:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DlOC+0+Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5261C1A5B84
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 02:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759198359; cv=none; b=ZOErqcpJN1f6q8gZpcD7W7ZddgdkLahBNNuX/lL7bS11pgMy7rJWYCwTIV9nA+RKoKObR+a1bPkpGoEXISDCYfWZo6sV8Ui+gq9yYeV+eWZ5+YgO+dcahGGBtW6g7ufidpHl5zZSsOduBWm62/q9t+sebkT3rak75cvUuRHugT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759198359; c=relaxed/simple;
	bh=eLkWUXoCaCSYOJVRWYPyfUfBZa/KowRnoSnZfDqdakc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V58GQKfAd0T1EaJSce1pnTWcugyVyIoxN2+23zybksSDybGwpshFseS7lpUjH+pXihheivr/+JNQ00x2nW1Jbw/7qrmngBZulmzSlytwNf1KBDp8MLxoAvWQQassKEa+OVMDdT5vIosbSuq8LgLJSThpaXi7j0boOzI7o2hGy9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DlOC+0+Q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58TI4GkX025389
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 02:12:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A6GRfmUtqPqpB2FJ5uC5Ju/FfBquJOIH9/NAMhzKqDU=; b=DlOC+0+QCke00+oo
	Z1y6h7KK6u+PDJaNyR5MpRq/fqM9eRTB1rXzISGmvMnUJQe2ttA5B1iwyxi10Hs1
	i52EHXlbpMA5yrcgCMu43uy5jFCnEL/Sh+elyrslkSql0Th3xBPXrEs8iU+XCii6
	zNe/o2I5/NvBvQLDUDYAcDADriObpVEaHjVGJddy75SjRDoiqNDahJKOoqf+BE+B
	Urs63IawyMritwOomk6NbdQOp5e7FqToIp7+MWmv2fSnmKzDl0VMiqRdnPx4LTd4
	r1mVAlk25ihjsMos9tTZePjch3gHzKggxpsC0yPFvMseBFtvFypQlbJc4tIfzp/c
	kQU+DQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e80tqd9u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 02:12:36 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b55283ff3fcso3860356a12.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 19:12:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759198355; x=1759803155;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A6GRfmUtqPqpB2FJ5uC5Ju/FfBquJOIH9/NAMhzKqDU=;
        b=Yl6xT4PfLNgrjPre84tjsRZeVRlMzTHckNXv+f0/4sCAG6qixbIrqU8z+4YMVxpLDI
         AgBq4dwdzVFGt8kGS3Vc8gALTBbMnGa1XGktT8ms1dV7g9i31PFwpqbqWTIgpt4VRpSg
         zqyuY4UEATFQ3KWz38/lZied4gB1JbN1K+/6zyNFOfjddolkKrUYsccfnxEEjkzfSBmU
         BPcxDk7fI7KWMMnJVFXKAZ/5DCodgPPMvKLOIzM9Fg9TDUvdIW9YCKCjpgPGh2wUGDYq
         dUYuInRvfTHqlN7TZSlzoNFJLUu7m3LZQuD78wu7skK6/2fAPk64D091KNHu+KpOxoBB
         S8Vg==
X-Forwarded-Encrypted: i=1; AJvYcCUgkDO0wwDaPd2kDVmUCfPxQEUb1praucdib4CpyMtWUmLl9l7RFQSw8wnsYtCyTyOl74ZY+DaS4pbm@vger.kernel.org
X-Gm-Message-State: AOJu0YysxE184tSKOodimDxN0hdTVjzGR7nV7HaGW7WSLnvTWkuftDJD
	7iIcV0qg5r1mF52GRQ87fWdy841wnIM2FyQh4Vfk/jZmtMlWNJbMg5WqGwCuwu/S6wJMTo00PAU
	d6n2kWGidj+wIAv/w12m9SWskezgQjOzeWkiY0yOK4P1IwUmGulCyIpOsjzgRdYUybMpYIzOkAm
	E=
X-Gm-Gg: ASbGnctI7o+F9Pc3AeDE5HiIFnLincu3opujUAQzCkUYrRGXMnhw4tI4vo3ZSxAuzKa
	1IV4M2XXz71zt/Vq0xTzfnpbd/NDXrBM3RhginOWplaKe2AvmfdxPLvcqozctzkXZjrCmWHY/7N
	0WHVQEWVjW4BF3Kt9xFt2jhH/yn25Dj3zVLaefY7SS1sIN2ch1s3TVHe6mOU5SVRDI/c+LUKmrT
	HyZlaSv44vkC3kty/qCSzGSQV3qBPsCpfecP+WPERSTGQUIvjFghtJ+Aky/+X4zoZJnb+Mj9pfZ
	4F1IyT9nFSaGLq5Wcz7+7TYVTYSm0wfM8J+WsFaHUC8jmnyKxFXmA7h70PnWMIe+CIXKou7hysG
	k32be/Tr2AwwJ3IqT06GveccX20Vm0Rcxaw5W9W+Z
X-Received: by 2002:a17:903:41cf:b0:266:3098:666 with SMTP id d9443c01a7336-27ed4a2d5bamr204898285ad.32.1759198355467;
        Mon, 29 Sep 2025 19:12:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+ZBdJe/uUt5YHPNRGt3iXlQ4rJR0AJ3N2YKDWJWwd3GJoVy+Kj5yMLslYVxmL6MZwLGY4fw==
X-Received: by 2002:a17:903:41cf:b0:266:3098:666 with SMTP id d9443c01a7336-27ed4a2d5bamr204897885ad.32.1759198354886;
        Mon, 29 Sep 2025 19:12:34 -0700 (PDT)
Received: from [10.133.33.234] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac9ae0sm144096465ad.140.2025.09.29.19.12.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 19:12:34 -0700 (PDT)
Message-ID: <0209a062-2763-4e50-adfa-3cbdbb35eaef@oss.qualcomm.com>
Date: Tue, 30 Sep 2025 10:12:27 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali ADSP
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
 <20250924-knp-remoteproc-v1-1-611bf7be8329@oss.qualcomm.com>
 <h4lk5psnwx3ma3um2sozhcdccwhmgmbje2lgjks2czcrzn4mre@svtnbyzvrivw>
 <d374036c-1263-42f4-b9ae-13b21427b01d@oss.qualcomm.com>
 <maeobo6qukgzn3acwtvhfrvwrfwo4q5pzspem6htbybr5xuwlm@opagojsav6ey>
 <4a25e085-39f8-49dc-85c6-7a4267689dd1@oss.qualcomm.com>
 <go2koxtabrktc2noyrgehgeddavvsdz6qu6bnwkzqtnb2k4du5@3m5le25bfmpv>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <go2koxtabrktc2noyrgehgeddavvsdz6qu6bnwkzqtnb2k4du5@3m5le25bfmpv>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyOSBTYWx0ZWRfX5FU+mQNwFj4A
 XZQWf3FyG4kI/mChEKHVfbtpUHXB6W4x7ZLvnUZ2XohIx+/h5fRQDsukuaM+SCFn324cjUCjXJO
 W7KRP/fRR+I63uEH1xWfpkrSHs5DbZZ2XiaU/XHG1XPaNR9JXEwZM4ZrO7QU1oyHS8SwPi1jDS8
 w9bh7bmaGT0qFrRuP/qIx/HhgS4/5yW0eeNmVet9rv+r6oD8mOCMWxYgSDK4mAHhnYMSIPKRDtL
 oU9dJBZ3jb90Vj3MOXL8aApD7k7cTPC2mKNcIgdToMKUmAaiB9vVbPxCYyt0CB77X2JSTn077BG
 WGa27JfgaBmVHT6xPJ1WAp4PLcDyGAQHkg7oMBHlNtpYTT90UKIMlxA4mplmQ4G4IFWPYjUOHd/
 Cs3tclWoyWBbiMxd+ok5dVz1jz+Wzw==
X-Proofpoint-GUID: naoctm9fWKsgqmLWCQ-7NrbD32Z6jqz8
X-Authority-Analysis: v=2.4 cv=OMkqHCaB c=1 sm=1 tr=0 ts=68db3c94 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=vrGrQp32DgmUd1UqvcUA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: naoctm9fWKsgqmLWCQ-7NrbD32Z6jqz8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_08,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270029



On 9/29/2025 8:22 PM, Dmitry Baryshkov wrote:
> On Mon, Sep 29, 2025 at 06:11:23PM +0800, Jingyi Wang wrote:
>>
>>
>> On 9/29/2025 5:39 PM, Dmitry Baryshkov wrote:
>>> On Mon, Sep 29, 2025 at 02:06:11PM +0800, Jingyi Wang wrote:
>>>>
>>>>
>>>> On 9/25/2025 10:19 AM, Dmitry Baryshkov wrote:
>>>>> On Wed, Sep 24, 2025 at 04:37:22PM -0700, Jingyi Wang wrote:
>>>>>> Document compatible for Qualcomm Kaanapali SoC ADSP PAS which looks fully
>>>>>> compatible with SM8750, which can fallback to SM8550 except for one more
>>>>>> interrupt ("shutdown-ack").
>>>>>>
>>>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>>>> ---
>>>>>>  Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml | 6 +++++-
>>>>>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>>>>>> index 2dd479cf4821..be9e2a0bc060 100644
>>>>>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>>>>>> @@ -28,7 +28,9 @@ properties:
>>>>>>            - qcom,x1e80100-adsp-pas
>>>>>>            - qcom,x1e80100-cdsp-pas
>>>>>>        - items:
>>>>>> -          - const: qcom,sm8750-adsp-pas
>>>>>> +          - enum:
>>>>>> +              - qcom,kaanapali-adsp-pas
>>>>>> +              - qcom,sm8750-adsp-pas
>>>>>>            - const: qcom,sm8550-adsp-pas
>>>>>>        - items:
>>>>>>            - const: qcom,sm8750-cdsp-pas
>>>>>> @@ -95,6 +97,7 @@ allOf:
>>>>>>          compatible:
>>>>>>            contains:
>>>>>>              enum:
>>>>>> +              - qcom,kaanapali-adsp-pas
>>>>>
>>>>> This one and the next entry are redundant. Do you see why?
>>>>>
>>>>
>>>> This one describe the interrupt:
>>>>
>>>>   - if:
>>>>       properties:
>>>>         compatible:
>>>>           contains:
>>>
>>>>             enum:
>>>>               - qcom,kaanapali-adsp-pas
>>>>               - qcom,sm8750-adsp-pas
>>>
>>> It's still redundant. Don't you see it?
>>>
>>
>> sorry I didn't get your point here, could you explain more?
> 
> For you device you have two compat strings, kaanapali and sm8750. This
> schema block is covered by 'if compat contains sm8750', so you don't
> need to add kaanapali to the if-case. You already hit this check thanks
> to the fallback compat.
> 

Hi Dimitry,

our device contains sm8550, not sm8750.

Thanks,
Jingyi

>>
>>>>     then:
>>>>       properties:
>>>>         interrupts:
>>>>           maxItems: 6
>>>>         interrupt-names:
>>>>           maxItems: 6
>>>>         memory-region:
>>>>           maxItems: 2
>>>>
>>>>
>>>>>>                - qcom,sm8750-adsp-pas
>>>>>>      then:
>>>>>>        properties:
>>>>>> @@ -185,6 +188,7 @@ allOf:
>>>>>>          compatible:
>>>>>>            contains:
>>>>>>              enum:
>>>>>> +              - qcom,kaanapali-adsp-pas
>>>>
>>>> This one describe the power domain
>>>>
>>>>   - if:
>>>>       properties:
>>>>         compatible:
>>>>           contains:
>>>>             enum:
>>>>               - qcom,kaanapali-adsp-pas
>>>>               - qcom,sm8550-adsp-pas
>>>>               - qcom,sm8650-adsp-pas
>>>>               - qcom,sm8750-adsp-pas
>>>>               - qcom,x1e80100-adsp-pas
>>>
>>> Likewise
>>>
>>
>> indeed, here is redundant as "qcom,sm8550-adsp-pas" is added in
>> the dts. I will remove this.
>>
>> Thanks,
>> Jingyi
>>
>>>>     then:
>>>>       properties:
>>>>         power-domains:
>>>>           items:
>>>>             - description: LCX power domain
>>>>             - description: LMX power domain
>>>>         power-domain-names:
>>>>           items:
>>>>             - const: lcx
>>>>             - const: lmx
>>>>
>>>>
>>>>>>                - qcom,sm8550-adsp-pas
>>>>>>                - qcom,sm8650-adsp-pas
>>>>>>                - qcom,sm8750-adsp-pas
>>>>>>
>>>>>> -- 
>>>>>> 2.25.1
>>>>>>
>>>>>
>>>>
>>>> Thanks,
>>>> Jingyi
>>>
>>
> 


