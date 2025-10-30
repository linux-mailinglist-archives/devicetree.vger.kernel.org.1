Return-Path: <devicetree+bounces-233169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0321CC1FB4D
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:08:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A62113AEC23
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:08:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6036129C33F;
	Thu, 30 Oct 2025 11:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SqK81fQL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B38ZA2qA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B1219006B
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761822481; cv=none; b=hyzKxkOnpF2l1HBHEUkqruACdthzkGKLHFeYAZm0Iskh8VXMloiA7V89SLtfaLUnh/kE0xaFzCZwipUNggfRf83z5E6DyQtIOMWYGvRX5wOJY4VazQ2vw9MMrpqReYdaxogVwmd5TIRGsa+FUy/aDGnXduPy9y7YlKwe7b+cSQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761822481; c=relaxed/simple;
	bh=IRKNYtf1vJEwsLDdTQLi5CxovY/yweeQLsKQmUuTsBs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p8BkZNtktI4RgTKCNx+SITmgli9y9DWhvtAGu+cQBHcCZdytsfIzEnvt/4vNpOgrJHt+HdCu9T9w4K+FsP9gKpy+ifM3U/hYu7z//aLWZpqZ6COsx53lzhEkIxE6Qgv+blWplz3V+DwIaG+wJciMK9BTNIRORHZQU+fmfAqqqA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SqK81fQL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B38ZA2qA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U9WJTe3117016
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:07:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K4396cP+NWBPFdj0+tdDVZrkdA3f1TxyUKHP58p9tTU=; b=SqK81fQL7OnZIxji
	pEfmpGJXtZEIftOjOc5OjMlDiHzngwx0kA4Fy8DSvrawR8+/yWvmq3M3Rn8kGYrK
	ZWI3RXoxNGAuTIFV1l3IGrR03PLLubH+WnuHFDtg//VvbNpj+vOP/XYGSrvLFEoJ
	BljeapyzCa36atlWFqIUdVzrKR0fZNX8rzOW9n4GULo3jsJSYjtok+VtsPvRQuMD
	hzfqgWg4h3d05sPTRwJd8QtKU0uDNmn1sd3cbACPUNrROQPkVNMqP6MqcaMymH9p
	7ULqt+EQmLKRpEWcVl4Cm0tpfyWnbv42WDfMEmpIkTWq3x3SZ7oPOJcuEfN+AKe1
	hiiOeQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a45frg8xx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:07:58 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32ec69d22b2so958990a91.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 04:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761822478; x=1762427278; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K4396cP+NWBPFdj0+tdDVZrkdA3f1TxyUKHP58p9tTU=;
        b=B38ZA2qAjNcQZkCPBAOfAw+wzVkZDsgMzm9OjsI7DFA7oiIWh+Dk40B4tDzaGndtW3
         B87m5fu4jtsklJ4hw2KV2AxzyvwaiiH4tu3q+Un+fJ2Coq4GVsxb8cbW+ZszXW2ojrmw
         81BjQGnxPOcjkGMGt1vXalC2LWUfSYmBLBsJYSqBcOgFtYKhxsTwCokOmFwOcaLWt4nS
         ieVhOBDrxfMDlof/8H6ernshooF9+DrxmHHZdCSAgObD4gsb2+JI+BYZT9dASJAT4w1w
         4CcIeyz07KA7dyNSZf1TQI6qReog4spM8TZkx3U7LAasUYgvKCVUOCCBnhmMJFLlvHhg
         LxqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761822478; x=1762427278;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K4396cP+NWBPFdj0+tdDVZrkdA3f1TxyUKHP58p9tTU=;
        b=JstBWh0vGA/X25xn/27YnYS1zB+biu1BENqXZk6zwkadmkadzVtCG3mi6blKyCUbCy
         zPzWnrfaffeFGkDv+iHJGw3z6EfTFDzZRa7ARCNpNt7GYPIAi8sF5rxiotZRSFS1vMw6
         UVu48p9evPgHkIa+uNF37JhXvCmQU7w1/GAn1VtsG3w1dUg+i+cPdP5B1Df4oNYwXJmn
         jfw9E/6Bx6f/HftL6QcoLooxjkp7P7o7WaJXDa4V1W8wqRswLtl6+A/UqJizI/bj1Qqh
         YyMn5lOF5EiR5JSm/ONF1HisquEIKwYVxxZrmLynPPvweK9jxO9lT+A1PGw+WGF5HSjZ
         Hcvg==
X-Forwarded-Encrypted: i=1; AJvYcCUvvm305N4dcDCD4Atlx8paeAmMLPvgSjhi3VawerAR2T1QSCqxqCyv1oqXRN5yPsO9ON+Y7dOQS7Mx@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw1b4eskYG2twBVWMjM0bXvFK4eDUbOip1cNcPwenk/HQ4q1Rg
	dNSHmq3AB0PqaONJlnlVXyXkDu7d/EGqRMwEKTkbXtihIs9QKKQqdG9cOnk7dheB1fSsKy5un6Q
	9J9ZK3MeV+kwGqEAW8jVEgBqSifIbyIHadTmo9afq4HKOnC3b99GXXQiyJaFetjCx
X-Gm-Gg: ASbGnctGsaCLph26CbWSfmSgNDXroOjJNPW0NkAMvkXhKOA9FpidEjo/RZ5rhHYz/lN
	KdihDZqSTEkKuYVRGtnLLxe4PaCF6uvC1ZOdbR90Ymdm8W5K/zGEiQHsdW9qoBCmj7BI4YQxx9O
	soafL2kvb8rdrRdqtfw67tydmFN41JucBRZVVVEd1KuYsRNH2tI9DmclmgR2lDhCjfMdjcbmDAK
	jXc4QEomYigf8ZI8349PuO1vZj/8JhlMXHZBShjUjlR9PJB/b+RGo7bbwnPwxX3LTXXoiPsowfC
	36BYaE2Vh9N1nazFIhUmiKJVlH5Kq8zcQxhQXDbQ0kP5OOKLe5cCuLE6EiI83rpqQauM55kt8Yf
	ZzGB3Z4V4Fc3VorABlVaohlYPB0mHIo3MXYpNOJGMM9qunVhXVVY+UYZ/pXv14NDMl7Wnhw==
X-Received: by 2002:a17:90b:3ccb:b0:340:299d:f746 with SMTP id 98e67ed59e1d1-3404c3d7690mr3680408a91.8.1761822477517;
        Thu, 30 Oct 2025 04:07:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnPeaFBA+lcam7IsugHvorTigV+88PHITZ9ftmVx6VcbOITX10+z6BNS3781eZvJw0PKFtPA==
X-Received: by 2002:a17:90b:3ccb:b0:340:299d:f746 with SMTP id 98e67ed59e1d1-3404c3d7690mr3680356a91.8.1761822476895;
        Thu, 30 Oct 2025 04:07:56 -0700 (PDT)
Received: from [10.133.33.50] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-340509e95a3sm2234442a91.19.2025.10.30.04.07.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 04:07:56 -0700 (PDT)
Message-ID: <c33ae377-454e-4f7c-8af3-0738cf0cf701@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 19:07:50 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Add backlight support for eDP panel
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251028-hamoa_dvt_backlight-v1-1-97ecb8d0ad01@oss.qualcomm.com>
 <b5d9d47b-7fb2-4ce4-9bc8-0d28395b78db@oss.qualcomm.com>
 <0cf2521b-8d05-42f0-aab8-35cd370e599e@oss.qualcomm.com>
 <8caa1cec-d881-4e77-8d77-be043f8d13d6@oss.qualcomm.com>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <8caa1cec-d881-4e77-8d77-be043f8d13d6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KupAGGWN c=1 sm=1 tr=0 ts=6903470e cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=gZJ2WMP_fuF1vj9OyeAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: OsXKUsJ0myFiAWjhLzBvE98HLvBz9S-y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA5MCBTYWx0ZWRfX22PrVF1zJRhD
 JwQnTXdfPcQzeqt/b4O6LM7VmTUoOkdZ2amlNs6rfjC+hd82NLVJtjSQSV/oeHEZb9RhjQSaRs5
 6Ze7/Y0DAyYWgE8xXlTbIpMKOKMnFbVf5DmS3ZIRWPaV1hW9VTnQro6T2zGQUlvLyVYA4Jz8xET
 IOmVL3Qt1BzjR/HdPKRPOjs3U45zWV+9kuWKpxWWMM4xcBJTskmV76bYISzajy8X+gXk/dacLAZ
 Bd+japN2eRPk/hkFAeLZqcAxj8XP23HNUCG1Pvb4vwdOgm7SKGoVrSQamXxnd8ebE264ZZ6fDf8
 WMcoLM6T62QTXwX1u4fb8f2MjWXBIJamL5wrB1XZ38KJpzrF5HMdpTiGxH08X1WIaNBIxejvj/5
 gJjRvQCB0NZ2plPOrpSsBBXia0UixA==
X-Proofpoint-GUID: OsXKUsJ0myFiAWjhLzBvE98HLvBz9S-y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300090



On 10/30/2025 5:41 PM, Konrad Dybcio wrote:
> On 10/30/25 10:08 AM, Yongxing Mou wrote:
>>
>>
>> On 10/28/2025 5:08 PM, Konrad Dybcio wrote:
>>> On 10/28/25 8:04 AM, Yongxing Mou wrote:
>>>> Previously, the eDP panel backlight was enabled via UEFI. Added backlight
>>>> control node in kernel DTS due to some meta may not enable the backlight.
>>>>
>>>> Aligned with other x1e80100-based platforms: the PWM signal is controlled
>>>> by PMK8550, and the backlight enable signal is handled by PMC8380.
>>>>
>>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>>>> ---
>>>
>>> The subject must say "hamoa-iot-evk:"
>> Thanks and got it , will fix it in next version.>> arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 55 ++++++++++++++++++++++++++++++
>>>>    1 file changed, 55 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>>>> index 36dd6599402b4650b7f8ad2c0cd22212116a25fe..fda1b3a3c7673be74832c27849231cba4bc1f25f 100644
>>>> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>>>> @@ -17,6 +17,16 @@ aliases {
>>>>            serial1 = &uart14;
>>>>        };
>>>>    +    backlight: backlight {
>>>> +        compatible = "pwm-backlight";
>>>> +        pwms = <&pmk8550_pwm 0 5000000>;
>>>
>>> Try adjusting the backlight value.. you'll find some funny behavior
>>> near the max level.. which reminds me I should send some fixes for
>>> some laptop DTs
>>>
>>   I tried sliding the backlight between the maximum and minimum values. It seems that at a certain sliding speed, when approaching the maximum value, there is some brightness flickering. Is this the phenomenon you’re referring to?> [...]
> 
> "maybe" - for me it was the brightness actually going down beyond ~80%
> 
> The issue is that the PWM hardware can't really do a period that's
> == 5000000 ns
> 
> But it seems like this is no longer an issue since the driver now
> rounds up to the closest supported value, see last couple commits
> to drivers/leds/rgb/leds-qcom-lpg.c
> 
> Konrad
Oh,thanks for sharing that. I saw the phenomenon you mentioned. 
Previously, my baseline had already merged this patch series: 
https://lore.kernel.org/all/20250305-leds-qcom-lpg-fix-max-pwm-on-hi-res-v4-0-bfe124a53a9f@linaro.org/, 
so I didn’t observe the ‘brightness actually going down beyond ~80%.’and 
just very slight flickering. After I reverted patches, it indeed 
appeared.  So here i want to confirm,
pwms = <&pmk8550_pwm 0 5000000>
can i keep the value 5000000 ?

