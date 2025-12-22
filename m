Return-Path: <devicetree+bounces-248817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F2DCD5F06
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:12:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B70093017659
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 12:12:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A9DF26ED35;
	Mon, 22 Dec 2025 12:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bu8l7sgq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ObJ6O55C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17C423BD02
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 12:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766405543; cv=none; b=Itzevyb9FLn1LpuOR2jzEEPHhWkwDRE5bwVbG62gy3c3m9xW/Y4o4Y7+MERwn5LFFsRSfo2gNvFxQVawepOGelAaIAmzaVk68Im2A/ow0ieKx+YErq7H+/Md/WiCrKnQcQpESP6lKuSDZY+m+JhFYbwM+ylEtN35WVPFTeuzlxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766405543; c=relaxed/simple;
	bh=AA/H1AwMu0/+HGYb42u80iYLOfuHJUzLVpfiRBlUCl8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YIWb3Hk1lOARhJlcPZeuovTS/+uOtgDB8st7GLQBS40shBrMuF6TNkffrMpXIKQ9bu8LpouomtJJ5ItApX2944gHmbgItPucqFUIUC2/EznM/E2+fUq3bAQwv9fohn1yyahanKeQAhdC3q7yhQpt6QewcsMC4yQmsC+sZc4aT3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bu8l7sgq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ObJ6O55C; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM5g5vv2189486
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 12:12:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w9A2rpTt2uE3PjipyspjAkGmTHHrWLfeNYFHtdiCOzY=; b=Bu8l7sgqGSTJp37b
	6auUGnrwa5A71zvgLn9RENLm5UTQKAnt80WFqnU4AZjZvnb4m6rw1vOEl2e24Y2z
	SmNgU6KhbAtwR0p4mr5IWsXzIWOvmQwCK/s/Tjx+DoVEBQqS8WsD6RVi+VyqW84X
	OZvwh+vYMUFOGl8TfnK/e3i8hw+TogjBWt0YdJGluPVfr2UYkmgTRrx1xmnArrCn
	Yiq6GZ1lo+6NPqmCyBOFrV8BegGeiPEJdKoHeLOJEdu9TkuBWEIH0njZki1Pr/Xv
	3VZqXEG9P+6wgMMH1lSVo9rQ+EbsOXNhRp5FkNfihMtgQL2F6pxoAIip7kvYpOO6
	ka9DeQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b702t94rb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 12:12:21 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed82af96faso77536461cf.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 04:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766405540; x=1767010340; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w9A2rpTt2uE3PjipyspjAkGmTHHrWLfeNYFHtdiCOzY=;
        b=ObJ6O55CZ9EwT0BqmmkFgfMO+IM1ECVErvneqx1prSRBOgMPM/XJDoYio0sOII6UD1
         1vppv/Q1Flq2DFhMaZwAgMDQH4ePP+FaOtB9ofluWKudlMO1mwPHFNl3s9+k6+moz0MZ
         LVmWFpJ+wY5Yb+J9RJk1ItRuRtcyzoYu4YJvk0Ha0Npw+rH0TDTFyMZxTJ3cZU1L1BMn
         fGEoRysq1Ndhs7e/XMo55v1LikU87vDGmvSz73zpoZVG4lUbA0JBZLaG8zB2/PqVMVGM
         SVi3Ll9FEzRyohj9kL0jm8jJeF9f9pqNnpYa0FgwwdSHQWcuttNL99Pkq5iLJeiNFKDI
         xL/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766405540; x=1767010340;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w9A2rpTt2uE3PjipyspjAkGmTHHrWLfeNYFHtdiCOzY=;
        b=Cmn1Gym53ep8jT6yB5DNg1ETmVYzR5yK+4yYi+S22iYki+iepmx8z9MrouGj0/Yc+E
         YTbobPXDiXLoWq3LlhpiLUW5pMtQSI9vlBjpx4jxQPR3qiHg5xgVUYtdCHnZUKVXlHkJ
         oJDz/xvtreWyavuRyYBt7YeWRyy8d+nldqvjBdV4K6+HXdicgD3MHxzQzEVke7oae6/H
         ostPd1kVTVYFErpJdBGWqEmjSJa8oQmvdWjexACyBophrliObL3qNVehRo0h+CgI+WIn
         E3PLS02XSQkMHxTt8JMHDgNJSsMiPh3UlUZ092fSK0OoPbIoBp7YgJEK1pA8m6tBF8qn
         Y3Ww==
X-Forwarded-Encrypted: i=1; AJvYcCW8y0PAjrxmQ5rBay22IeSrUWaBBiTWLgMzxrCevaDgzFz6HJLsUP18mhnksjmYbo+a+CbejI+eBL2q@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+8tKcuoSNzsjx+JoBcSRDGhjG4bSOsVTqPq0Pj+xD8CQGuCRe
	yVvsXX3/M2p4O1RnASkjz2hefXCPsnP+ivj6IYbvfcaJX2oIjC3hF6b6shgMfL7tHO1MgF91rAh
	mldjiybZuynDgbkV4d8s/qFGlHZLxfiyM5Zf+za5zWKSV1OHMthy+HP9iyrC21xi+
X-Gm-Gg: AY/fxX7ohIE46IXZs5juV+oaIgAW2Pz0x5IGSLU3haCInFoiQXDSwj+eN5bYDnjfQNN
	5gJh8es/zf0kk/DIu42cJMXlVm+9NjFEBl9MsOhiacX9Is6nHWeU7bBjlY7b6qYYPH0SixdwWST
	Kb3SQxXjYOG7eFVk4vignGEBbKWTDV3s1tyN2+af5lmPj3IorbIVM7fxZKH1yd1ZBbzFuc1yqgl
	K9vnBMvhgzGt+HyptS8AJXj0g9uT2pd2iUXhSnmZkF85+Rtw/b04lU8z7diL/hl8jRywo6nb5vw
	UcguX3nwqP9+L83/ucLK3N76hPbVXm7e4SrxWQF6vivWE4dnOIk0zJu5hTW36mWkLTPYZxm+VVV
	X9HK13OdWKog+W/iYugf8u3dovR15ZAxUDAyTbUMDEbFxLZLa3f/2bmWY0PGnoKwL1S6j8DWy
X-Received: by 2002:a05:622a:1c0a:b0:4f0:2378:59a1 with SMTP id d75a77b69052e-4f4abdba1e1mr143600851cf.72.1766405540141;
        Mon, 22 Dec 2025 04:12:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEetvXA37qUNAKlm0YVtJ0qQ13Cm52fDVIhm0qqQAfEAJpzxHGDJOG+J/9gsIp6zMV8sNDsAQ==
X-Received: by 2002:a05:622a:1c0a:b0:4f0:2378:59a1 with SMTP id d75a77b69052e-4f4abdba1e1mr143600481cf.72.1766405539785;
        Mon, 22 Dec 2025 04:12:19 -0800 (PST)
Received: from [10.38.247.176] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d997aeebesm79120156d6.35.2025.12.22.04.12.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 04:12:19 -0800 (PST)
Message-ID: <8b265a82-4470-4f13-9959-0dec32cd99c9@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 20:12:12 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: i2c: qcom-cci: Document sm6150
 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20251222-sm6150_evk-v1-0-4d260a31c00d@oss.qualcomm.com>
 <20251222-sm6150_evk-v1-1-4d260a31c00d@oss.qualcomm.com>
 <43efa6fd-53c3-4680-8aca-7b37089ca295@kernel.org>
 <68dffe33-fe4a-4c4b-890e-87e0229d84bf@oss.qualcomm.com>
 <196d6884-4ad2-4b74-8aee-01ba252072c2@kernel.org>
Content-Language: en-US
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <196d6884-4ad2-4b74-8aee-01ba252072c2@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=SIhPlevH c=1 sm=1 tr=0 ts=694935a5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_QOpqvZ3r_VspIhoNjUA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: jXdMM-K7smw2WQhOF6Rl59THXEZbJeqf
X-Proofpoint-GUID: jXdMM-K7smw2WQhOF6Rl59THXEZbJeqf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDExMCBTYWx0ZWRfX/2U8k0Jn1UCT
 hvS2/u/JE4XQjUz6xV9oCLNQ4BOvsb1qzDpYdcesDHeM61H4WAvXGPAwX9yu46BiosDDTCmBXDO
 2YmrdjJEotUF5PmKduXsbUQjspcBZD9qepyTxd361bGx53Keg3+3GnoXematq6eyvXNElCd57+n
 wyOStf7+dsGVWyF3zyYj/a+Ueobdvrgzt52124lhoHdG6joe2jWAORuTnCJmKdgRENMnsM2831U
 SfNx21rgBvgo45vC5MEKSpzNGcRbpz2zJpFlv3z07niaCQfflL8drYyvKY5uq62sNaLUqgnE9XJ
 u5lPJHcuzLmFwiz8ndBxjIpTGd4yt4mg2Z81sxpq+XjfaJwJOJB6UdmlE95fgFcb30OsnXm8AD+
 mVlZdPVYH81BnLj+ciLQj1VI/HY/NhUtTgIZte29EeOQwewqu4dRnD3zv7CFE820SoxrSNixIbb
 u0VuXogkWoKJTxXSYwA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 adultscore=0 phishscore=0 spamscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220110



On 12/22/2025 7:58 PM, Krzysztof Kozlowski wrote:
> On 22/12/2025 10:13, Wenmeng Liu wrote:
>>
>>
>> On 12/22/2025 4:58 PM, Krzysztof Kozlowski wrote:
>>> On 22/12/2025 09:44, Wenmeng Liu wrote:
>>>> Add the sm6150 CCI device string compatible.
>>>>
>>>> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
>>>> ---
>>>>    .../devicetree/bindings/i2c/qcom,i2c-cci.yaml          | 18 ++++++++++++++++++
>>>>    1 file changed, 18 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>>>> index a3fe1eea6aece9685674feaa5ec53765c1ce23d8..cb5e6fd5b2ad1de79a9b29d54869d093c952d778 100644
>>>> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>>>> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>>>> @@ -33,6 +33,7 @@ properties:
>>>>                  - qcom,sc8280xp-cci
>>>>                  - qcom,sdm670-cci
>>>>                  - qcom,sdm845-cci
>>>> +              - qcom,sm6150-cci
>>>>                  - qcom,sm6350-cci
>>>>                  - qcom,sm8250-cci
>>>>                  - qcom,sm8450-cci
>>>> @@ -263,6 +264,23 @@ allOf:
>>>>                - const: cpas_ahb
>>>>                - const: cci
>>>>    
>>>> +  - if:
>>>> +      properties:
>>>> +        compatible:
>>>> +          contains:
>>>> +            enum:
>>>> +              - qcom,sm6150-cci
>>>> +    then:
>>>> +      properties:
>>>> +        clocks:
>>>> +          minItems: 3
>>>> +          maxItems: 3
>>>> +        clock-names:
>>>> +          items:
>>>> +            - const: soc_ahb
>>>
>>>
>>> Isn't this just camnoc_axi for this device (pay attention: to this device)?
>>>
>>
>> On this SOC, both soc_ahb and camnoc_axi exist.
> 
> Hm? That's not the question. Pay attention to the part called "pay
> attention". I emphasized it on purpose and you just ignored it.

--- Isn't this just camnoc_axi for this device (pay attention: to this 
device)?

For this, yes, I think so.
Also tested replacing soc_ahb with camnoc_axi for the CCI device, but 
the hardware did not function correctly with that configuration.


Thanks
Wenmeng



