Return-Path: <devicetree+bounces-232016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 85484C13AE0
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 873571A6603B
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 09:05:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C04242E888A;
	Tue, 28 Oct 2025 09:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pTxfZJ3t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373652E7F11
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761642290; cv=none; b=jeW1LBQ+c3gSJ0OfQLN4LGyCX54iWPYN91nqJzWvpw0LNRs2B6e5BgZkFKiPpLci9XK96uVAqUUmgAeVgZZJqHbXvVguEW+4VWVw5DReBMS1fuTJvg9QDyi28OLB5bOpXHTxD203K+d8qTZRpSw4/jW35nZIYLvV4iTpH5pfH7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761642290; c=relaxed/simple;
	bh=gJL/VQkEebJZeilLCE8uIPc2mNo+c91Tynj4Uuw7Jx8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ThAmTYBHlIO8zhS7rvk4iGGOTNf+rePwAuqutkUR4VaQ1sAFLvhGyDUwwH08/PGroiWoMFfNg4YtdaOKVQ0QDunXSMHQfA1FixIewgikrFEO1OE36hDqwaeBwqRB57kT1XFU60dnsqi5mPPFVOq5+VJF2yo7m15GUAIxkNeEABw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pTxfZJ3t; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59S8FZAY2752121
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:04:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kgjycyY05GqmtglQxd9XJy3hOTKLwLYP/qRgt/w4UOo=; b=pTxfZJ3t6EtY2/GJ
	F5v9qkUTzh1ABl/3z8zDmBdAFd0ezVjSMroliqwBzOB1HyYeDRFwwWngxNNKb6Ee
	eci0he05mEsQlxI0Z30R12H1sbVi5eXqmZn1LAEjKYLvMeIo0uBzly62/sWgSM3D
	Jxqc7RcnPdoFEWCqGarYmN/UCiU7gSCnSelgtIXCju/ygfgxPO0RJdVyppRuKzgI
	pylKX3bIwaz6dQfb1wHwhrce18+twMqsGwdJ3Q+mnGxl284WIag+ExVPaipwE8ap
	0hq7cVIiCvBhxGbHIxyAgtak4Cd8goUTCOJyhhFvDT0swxmSQwsDpMvPuvk8F9IL
	tlZOIA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a28nsucgu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:04:48 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-826b30ed087so17504956d6.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 02:04:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761642287; x=1762247087;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kgjycyY05GqmtglQxd9XJy3hOTKLwLYP/qRgt/w4UOo=;
        b=rQL+qM6bwP+a2o6dyBpTnnogALi17zQVf5RtRAUpCUfqQLJ3kZgTOZpnOMb//mQsSW
         d1SV+JmePbUaGRFduqGwEYETtKZTAJGf4UcZd2HCtGgVVbucdX9X7ju3j805bEEJ1eIV
         Gh9luRh1tio0klksOD81FQ777BEAegoA9e3w/OTSmZOM/WtEauJEjbi6I9SGslO4h5Ay
         o18U0pzIjmR9xQiPjVJLXU9JKEUb9bwGz7uMWM2Zf011JFB8SSfxSXwTbzql52lGhz6U
         WHjVhdfn0OQXsKsiqYZ36XEKi9+9tQnm1MnIh+VhvXb8ogsdSUqWltl4pyhJvOUBLHn0
         aPbw==
X-Forwarded-Encrypted: i=1; AJvYcCV4yqnlMbLFbeCj8KzptJv82/IBAtL9d59vz1dBp6lULziwubDws2ciwfE7zOGUrR0fO0t3rQveUoz5@vger.kernel.org
X-Gm-Message-State: AOJu0YyvZe+vuYOi00gAUnYA/UOukMPeLgi1ql5C5njgobi8Q5n/tavV
	fjGxlreFuSs2yZoeXPI2lVM/laKfQxR1CwKTJ/VDZuN9rZZET9aWC3CDTN2zzhYDs3vc9b//HN7
	ckzqqREvpTefxaog76MqpGSr58rXEQ8jqabRd+O9JqSTJqzCeiYqTbB0GklFhoRzl
X-Gm-Gg: ASbGncvMDZRpuGG5jv5mD3JtobJa7+kpxlduzUro/3mVbuv6uCVIksmlVcpxh3HbI2w
	90ViOLOe8XGdRJjoLFxNWJLsSwILlE52mNPRMGd0+PDP6RUxDshT509QBqaWP5p2vlxbVUBmwI4
	6A0P4Hhm6L+S+omTS8NJyFnTFiE7yOiUw8XsygcIV1CI7Muh/CooDD/JmtEE4tLjlXHMeUHFDP8
	Dl5ewNZ5EiJEF8J9jx9W9bGsHFKvtcyL1YmnydedNNIhFRRwWR85GqX6zgFBnwBGiLrP7wChZZT
	BgcSxdI389WSWBkAcJruo3ngh+epH/2jcsv1TXDcjV/iFDgdOXxHGkU2rJpyN14E6Qlvq1HFjxS
	vWXcMvjSGAMrNuWh0upHt9EKohiSpch7oNXAYLPd4GDenxiOVSLEHu0tT
X-Received: by 2002:a05:6214:2681:b0:876:2e1a:e77b with SMTP id 6a1803df08f44-87ffb15347cmr19874836d6.7.1761642287140;
        Tue, 28 Oct 2025 02:04:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGQpFCfAyIuLZ3osfOfScjn4ZNf/jIirr/F3GlO3TYl9NHKnRmcgJmbEit6T1kcw8HvVBZjA==
X-Received: by 2002:a05:6214:2681:b0:876:2e1a:e77b with SMTP id 6a1803df08f44-87ffb15347cmr19874636d6.7.1761642286662;
        Tue, 28 Oct 2025 02:04:46 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d853e5138sm1036189366b.44.2025.10.28.02.04.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 02:04:46 -0700 (PDT)
Message-ID: <918fc9d3-2cd5-4442-8bc6-b930596d95c1@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 10:04:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: soc: qcom: qcom,pmic-glink: Add
 Kaanapali and Glymur compatibles
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251027212250.3847537-1-anjelique.melendez@oss.qualcomm.com>
 <20251027212250.3847537-2-anjelique.melendez@oss.qualcomm.com>
 <20251028-private-chirpy-earthworm-6fccfe@kuoka>
 <4cb41e69-fb32-4331-a989-529b5af0081c@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4cb41e69-fb32-4331-a989-529b5af0081c@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDA3NiBTYWx0ZWRfX/AhLzRAPlXu4
 Tjo8G7gR34VaPb9Y9/KSeQtIvCtRZacHZqN48cBdB7GBoj9HB3J4zLTL0ERY5TYPSEjenEy+11/
 DT9pl6ljOOp2lXP6f+ux9bZWdU9zVuh5UdgLsio6EwY/a+K/Z5R0I68h4pD+EM5z5q0wGuNedpV
 9Huy/4D2o/xHnuXy2GItGlawLxg/UcfrwnSgHmOO2iTLcKdSyr/Hxek8QGEl21yFMPfDdJg+6zm
 MIjmOipAD0V9WU+91AiZDrw0KJKl604DGd3kOEdkmpwe/e3fTV2mdThjsqPH7WHYJWLFWKhCDGc
 /ASgZ2Afr9hnGbP1wwx9LoIBTv5Z0kPkrhBb07rOaxddXqNV7kE3NDY6kzlS3Lih8DniIQDlrRR
 milf0cggkKaxEGj8lTyv/bhxYT9AIw==
X-Authority-Analysis: v=2.4 cv=RIW+3oi+ c=1 sm=1 tr=0 ts=69008730 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=PDJlN-RuetHZVnMxc_UA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: gV5Ke9y2chp2Qhz3c_2_Z1gmV9qtpN5I
X-Proofpoint-GUID: gV5Ke9y2chp2Qhz3c_2_Z1gmV9qtpN5I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280076

On 10/28/25 9:36 AM, Krzysztof Kozlowski wrote:
> On 28/10/2025 09:29, Krzysztof Kozlowski wrote:
>> On Mon, Oct 27, 2025 at 02:22:49PM -0700, Anjelique Melendez wrote:
>>> Document the Kaanapali and Glymur compatibles used to describe the PMIC
>>> glink on each platform.
>>> Kaanapali will have the same battery supply properties as sm8550 platforms
>>> so define qcom,sm8550-pmic-glink as fallback for Kaanapali.
>>> Glymur will have the same battery supply properties as x1e80100 platforms
>>> so define qcom,x1e80100-pmic-glink as fallback for Glymur.
>>
>> What does it mean "battery supply properties"? Binding does not define
>> them, so both paragraphs do not help me understanding the logic behind
>> such choice at all.
>>
>> What are you describing in this binding? Battery properties? No, battery
>> properties go to the monitored-battery, right? So maybe you describe SW
>> interface...
> 
> Or maybe you describe the device that it is different? >

Certain versions of the pmic-glink stack expose services (such as battmgr)
which support different features (e.g. 8550 exposes state of health and
charge control, x1e exposes charge control, 8280 exposes neither)

There seems to be a similar situation here

>>>
>>> Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
>>> ---
>>>  .../devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml      | 7 +++++++
>>>  1 file changed, 7 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
>>> index 7085bf88afab..c57022109419 100644
>>> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
>>> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
>>> @@ -37,12 +37,19 @@ properties:
>>>            - const: qcom,pmic-glink
>>>        - items:
>>>            - enum:
>>> +              - qcom,kaanapali-pmic-glink
>>>                - qcom,milos-pmic-glink
>>>                - qcom,sm8650-pmic-glink
>>>                - qcom,sm8750-pmic-glink
>>
>> Why qcom,kaanapali-pmic-glink is not compatible with
>> qcom,sm8750-pmic-glink? If Glymur is compatible with previous
>> generation, I would expect that here too.
> 
> And again to re-iterate:
> 
> If X1E is compatible with SM8550 AND:
> SM8750 is compatible with SM8550 THEN
> WHY Glymur is compatible with previous generation but Kaanapali is not
> compatible with previous generation?

The announcement date does not directly correlate to 'generation'

Konrad

