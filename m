Return-Path: <devicetree+bounces-238091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F32C57166
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 12:06:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BD1564EC6C8
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 11:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5677B339B44;
	Thu, 13 Nov 2025 11:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RjbrXA50";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="joYBJEgN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A249533859B
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 11:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763031649; cv=none; b=KberD6Wh8ks8x5qe/JFdlQIalgvbjypAGrYjNY+Qur2bHGjW/7crqKfbC1BcTQmDpIIj2/3sSJa/F0wWvOYMvoP9kihKHmmecRk9V6+yTk4ZIwffe2Aoc/Jm9+eeX3L2bM4aJMCJ2W0pc9DDB/yWDxgvXhJTu5I2q95b69nr6d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763031649; c=relaxed/simple;
	bh=m5MeXEG3jZ6w84sxyLlnVWrLy9Qi9HUWIDgjc4XX0dk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bDLApCFYm0xkQWekUzLZzIN8zuOsH6g2O7AP74hcrGlroSxoXkvSQdNeYWXTJc8Jf13EE+Z06/CUuDgSdSdykP832RAG2gg9dcHj08TxGTkeqVcg9ZYzmAlTs7V3TZlmWfjrP1MzD0souRiWjVEhAYSX7gVVHAZeJu79I+GRr5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RjbrXA50; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=joYBJEgN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD5S9h13440489
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 11:00:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Dctm8dTwaNPV9EO1BqVmXYSJCSP7ANhI7WYmBi6vq2c=; b=RjbrXA50z6h7NNvg
	jOCNuSSFppBjleq/dMjJ6ijGPRgNDSWUbjMfByueEa18RzFDKdyhNbzY/l8qkkVE
	FBTEl0I/4TMpsiCyaAdwDROO+BLSNJOU8EQCmDotWjsW/jepZRq2C48sRc0Ph3wT
	ChkTBLlZL+/Yglk1uQTJoSIo9jDXEYRql3QF1INXtKAgMEziQkGwu8jMOHtDkT7t
	X8KB2KJcTGh3QEGxFF1taxqg2LlrxDvSUh3z9livUcPjBfFsRnfGItETb/9SZe3q
	LzlI0P8HJsuMFvHcrHT7Haf6kE8oLJXRj9sT7me/jpaNyATHWUOd1XFbFpqUTCdg
	6Vo0pQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ad97891ge-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 11:00:46 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edaeb11630so1575221cf.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 03:00:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763031646; x=1763636446; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dctm8dTwaNPV9EO1BqVmXYSJCSP7ANhI7WYmBi6vq2c=;
        b=joYBJEgNPr0Tn3imDasr75grsem/t8CV/rJPIMzd+vXK8hX3QXR6Gh+hG1HHCjDg+O
         1/5+GYtOJF2x3cQRmzymN9iDozoJvpyppL1nPHoIKcUWLP5nvKOmyhCtM3+FrKMtsMpj
         dJvWgPs3BatIaLfy3mAcG4NOM4XTqJ6xlAuBqawPSdaL4Onb85zg+OvgX1D4n7ENmKwA
         8NctrUtxULljvlkN65zEmuJnuCpPH9FI9w8Anc0drJIxck0P9/ewkdfsCpu5LxbKAmX4
         c8GAxyAUBKSiF2AFRj024wvNH+EQa1wtMKVe+6/eLEm20R1L+yFWZ6frzDXo0n3AQdAE
         YgYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763031646; x=1763636446;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dctm8dTwaNPV9EO1BqVmXYSJCSP7ANhI7WYmBi6vq2c=;
        b=IGO0mQDR+NEuwss9ONTCD0wW4tmjrDVt9JeGZoNu0K1Sobhp+tDxdBjSnk91ef0fgQ
         fM5krrQOWFg+Y/RnMPK9GiRIeg+Ov9Fz9usRRSNz98R17ob/jPQiBBzrZTq/RGQ2vSIV
         GsQYOIhlAPhE5XEJ1wE/B5OuNPtZHgZzEWlb1mAVg0d+2jL4how77D5Qp2n+FnepypN5
         0z8xavwA5b8UZMGI6o7R4YS2tyOym+y6MeX9dUhSUIQg8DPZblMeN5WoH4Ptb2I7QHDP
         BpIJSySzWEVSB3wXbobaqFa+ue3rOuoEZxAPJGgD2nzXWi/Njt6/5VgvTygTi8pXw02M
         HsfA==
X-Forwarded-Encrypted: i=1; AJvYcCWeNTOVikj+njM3W2AuoAYvyzIUvCOZUARNWezzfTt+PKRTZaoSIo91qa4X87CigTZ24p1Lr9C1GOHo@vger.kernel.org
X-Gm-Message-State: AOJu0YwGU7UaX7wu/ADABty2oo9ABcJ1VkMfvB/jCJXQY8TJRi+Z95AH
	8UXuXU8WHr/PETLSf8FWSCgMfoMyLIYB7AjnQ6fiEgGeMPH9BdV9ij2XWkgJ7pZZKRdqqQZCzlD
	Ct6OBk3U/6In99D5zUPQYoItVIoWT1bWczft/L/DhK+JCDpISI+RPPWNhmGJ6rN6s
X-Gm-Gg: ASbGncuvCzDYHyUXc2C1mCsVzNTXPcGWFklDvV+YWrDg9MlukZ+uykq/FFSWXH0dsxz
	YTJ8Zr9P5696XsQS0yWyZC4wEIHWsg1s04KTXo9Op+RKOIUTkbV9K2cx0EUnatwTOzSIyckqAVQ
	cYpckhn22qb5izi1H1/mFqrDqIEEItHiUHVp0TfeFNF6a0AtcItSj/bb7aF1SWtjjCNZmEezQ1r
	bQTRPwEXR1678yLO1BI6rtx5fz3brdcaPYq5RKiUXkp2ZNaKEoPeI2AEBhU00MeOiXEPW5UXHHm
	Xyolc0b7Io2JSPrjZGr6P99VSJrW+TBMO4mQbpf65IJZR8aefl8nXUbv+PozTrpxQXn/YNfIxpv
	aOsXYejga44pjfU4VmOUtAVXxDuJT6iKABmOOec5xI5Lw8F9ZCwCxUpPz
X-Received: by 2002:a05:622a:1a18:b0:4ed:afb4:5e30 with SMTP id d75a77b69052e-4ede794dc16mr20378581cf.11.1763031645548;
        Thu, 13 Nov 2025 03:00:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFlVsSXjGAfEYJjZnev0pvnXR+ZCVmOPqmdnlNGvxTXW2vNS2YbvXEmH1mcjxmr+DTcdG+UNw==
X-Received: by 2002:a05:622a:1a18:b0:4ed:afb4:5e30 with SMTP id d75a77b69052e-4ede794dc16mr20376831cf.11.1763031643184;
        Thu, 13 Nov 2025 03:00:43 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734ff75e4fsm137001066b.12.2025.11.13.03.00.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 03:00:42 -0800 (PST)
Message-ID: <fcb093e3-05e6-4e77-9150-25f9a76f8937@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 12:00:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] dt-bindings: firmware: qcom,scm: Document reboot mode
To: Bjorn Andersson <andersson@kernel.org>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        sre@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251103182006.1158383-1-loic.poulain@oss.qualcomm.com>
 <20251103182006.1158383-4-loic.poulain@oss.qualcomm.com>
 <aqoxdaq72prkeqwxmmohlmbpx7icuc32sej7did6vt6rzrgfib@bvmt7ppkvloc>
 <CAFEp6-2GGA2gvBKfO0fZemVmJmjQpTQEJ0vLfEewfhHKOYQGSQ@mail.gmail.com>
 <be0a418b-5e8f-4895-a3b8-482b6ad6a40e@oss.qualcomm.com>
 <sdhnchve6r5i4frhlx5q7lod5npzosbfdjjyd56l2z5ksoe4t4@lhm6d2pzsztm>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <sdhnchve6r5i4frhlx5q7lod5npzosbfdjjyd56l2z5ksoe4t4@lhm6d2pzsztm>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA4MSBTYWx0ZWRfXxz08eHPQLi46
 5O/4QOB3lBaJFZ67Z/Eou8t0CNDP/oFRnABh9JlX0lKq8BqGSTYySqgaW5G0g5B19dYHkwyJGyc
 OXqUZKTFEy2okLVv1DDambqcU4S4yW28j0bxUsHQZ4VH/6PM/+mnAt/6Qkn/1aMErlYESsH2aAq
 1s8rst4w87DxIRcAvNwXBqAo1MhMpUq4Z2mibVQdcx/5TjlQZxhtrK0Eh3Ez0aZZdoDMAcjg+M1
 DLGI3QwEhqkSOtg6oQIaTxg7QH/xbn8sxQgGvNgXJ64SmU0J+NiWeJq0Ir05emjnrneUa5JaI6G
 yl290xono9HJj8LIFNn3pmh51e3DmRe++dfSNdaAnhvRtGBW/yvhz3XBQOKR9XWB+y2AuNLgQVx
 HUmM7QGpmnV9X+DR/uIGGCXZOSeblA==
X-Proofpoint-ORIG-GUID: z0jM4uxK_bi9cYI-YMUFGR_miMM6Q5Hr
X-Proofpoint-GUID: z0jM4uxK_bi9cYI-YMUFGR_miMM6Q5Hr
X-Authority-Analysis: v=2.4 cv=PIYCOPqC c=1 sm=1 tr=0 ts=6915ba5e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=hsPK79fdjXi5lFZ4yDYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_01,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130081

On 11/12/25 5:36 PM, Bjorn Andersson wrote:
> On Wed, Nov 05, 2025 at 10:44:05AM +0100, Konrad Dybcio wrote:
>> On 11/4/25 10:19 PM, Loic Poulain wrote:
>>> On Tue, Nov 4, 2025 at 3:12 AM Bjorn Andersson <andersson@kernel.org> wrote:
>>>>
>>>> On Mon, Nov 03, 2025 at 07:20:04PM +0100, Loic Poulain wrote:
>>>>> SCM can be used to support reboot mode such as Emergency Recovery Mode.
>>>>
>>>> "such as"? Do we have any other useful bits in here?
>>>
>>>  I heard we may have different EDL modes supported like USB or SD
>>> based EDL, but I don't know much about the details.
>>>
>>>>
>>>>>
>>>>> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
>>>>> ---
>>>>>  Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 4 ++++
>>>>>  1 file changed, 4 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
>>>>> index b913192219e4..c8bb7dacd900 100644
>>>>> --- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
>>>>> +++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
>>>>> @@ -121,6 +121,10 @@ properties:
>>>>>            - description: offset of the download mode control register
>>>>>      description: TCSR hardware block
>>>>>
>>>>> +patternProperties:
>>>>> +  "^mode-.*$":
>>>>
>>>> I'd only ever expect mode-edl = <1>. Do we have additional modes that
>>>> warrant the generic nature of this?
>>>
>>> We may extend this to mode-ramdump if it makes sense, but as of now
>>> it's indeed only edl, will fix it.
>>
>> Would adding ramdump here be a matter of:
>>
>> + mode-ramdump = <0xmagic>
>>
>> ?
>>
>> If so, please add it too
>>
> 
> But what does that mean? "Hey computer, perform a graceful shutdown and
> when you're done, give me a ramdump"?

I.. guess?

Perhaps it could be useful for registering a panic handler to reboot
into ramdump in case that's not enabled by deafult (but is that
possible with our fw?)

Konrad

