Return-Path: <devicetree+bounces-256037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E733D307AF
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 12:36:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49474308790B
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A144376BCF;
	Fri, 16 Jan 2026 11:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EKDM+ota";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vod1QmzX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D97F36D504
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768563024; cv=none; b=nAr1tP+NUHNA2kRDrspJT7hQrWvb1BkkzDQ7XoDS2JTV/3rzVFfbdSCrTNC6bBO2YRnq9w7pNgx0Ic+BJzMAKEw38JqSihZI2EhxgS6QBdtrIhepw1U9hHbGPgnMxlT/kkWirdOk0ZuNMU0U6+h0IMyo79GduvyaAWj+4L7IINE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768563024; c=relaxed/simple;
	bh=TQTvbgiBG+SKBmDtt/7Qz10lccsxtBeY3EJYQbt/5ik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XhCeLPcbLoSBFbvZOogzdH9aVOcfNveZnai2uXdWetiOJSF89gpigxnXyisRc47nUA9vpFj9U7PPE8Y81hyUPaOFd2HLWIqQznhjihoeLGanv70LEHiEhESYLosJN+GV5asWoC/aho6TzH8KdYxlgHQYMNeXERrAgmA5Y9r2df0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EKDM+ota; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vod1QmzX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G8RIwP1240858
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:30:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	09h4tPa/kI/gXdQi3NlmGSOnFal6CqO9SCpG9ObzGqg=; b=EKDM+otaqzpTsTFA
	a89rMF/q7ULUU7gUWmU7o9AqUkG+2q1cUlfYNuW+/2aovpB9/kNM8O7Ieoxaouex
	ihjYuB56RU2C4U19LMsDVCi+o3M1yIjJICA8GZPQy1dLNgvuETB8lar0nd+IGaA9
	4DaGbfARlhv8jY0tnLXy5Mnh5npnjDq6N/Dt7K92529MoQoqBLlRg8DeSWmgU/86
	flVAksWe7iSF+RdClH/xIE4bYJLySa1daCGBuwByR7FhodX/WVWytTsnBJhGThYW
	KfUvGNfx456A+k9ni7uXk42pngMUSxvmvsLFafUV/4YrNE/Ru8X6jGgDrNOXVR8T
	P+chMw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq96ssxkb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:30:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50149945d26so6295611cf.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:30:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768563018; x=1769167818; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=09h4tPa/kI/gXdQi3NlmGSOnFal6CqO9SCpG9ObzGqg=;
        b=Vod1QmzXu7uxSyKNXo9K7dOO5TAIM5cWG4lrmVxI/6Ym9jlkrt8MtrbjXj5CYoCcy0
         Qe/BVwrGgwtbofCfQkf8bYFIEl6f7yK5kGEyA08saczYVUPQJTffDreMLz9satv5SzQ3
         y7ZqtW70MJzBmui5VQ2ol+QML1jSaRU9o78ULpB/hKSUAhxHWSI4l38quluffybI7Mcv
         2rJCe3mDnR35nACRJf+FCOPIXQId2XcKcAmyi/9YMuS0edK6eP1zjmCD4rgr8U8rg3Z2
         L/pwIe4ua+RMiaCUZtXkREqk7H+p4NZZejqnQDTplqEwrZd/n8ouCRE6O2dMO1zBt9cR
         d0Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768563018; x=1769167818;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=09h4tPa/kI/gXdQi3NlmGSOnFal6CqO9SCpG9ObzGqg=;
        b=VpYlB7p07LsCWb7OM/WHarC4GjwrRI9Ky8gSD513CJev/dW7GD+pCyM9FlXayxJRNz
         emfy742yB5mZ1io3OlZge/T2sTyYzuqwdRq5vHkgvQsJTOnHICv69ASNaDARY0b0WAl3
         Yc+dY+zKb7hf3JrySfYtDBf76Ob/uf4DFEB6o4mJx4dArnDXd6pElh+Jw78PhcXz9HeA
         D9Fjpskmse1I5kbkvA1fc//U3SW0BlvXcfz+U7tnKsmyNlFgS1+2ewEMl8FrmPn3ZGOD
         DcLmq2NqlgXP7ihK7FVYEzJEOJykNr1HITC+VAxgafUqzBVxlI/tSenF6SID/leNhmU5
         n7+A==
X-Forwarded-Encrypted: i=1; AJvYcCW3/AeySZiH9jMeaquLg50j7bKnP9UfX1R5jPKj5RyNlwjC7lmNBN5utnu8maQCTBtjLx+jvwo4lwaa@vger.kernel.org
X-Gm-Message-State: AOJu0YxEWFTfbqWogGTv0a3iRCmX4RBpj8o+RbETRtuEctAFXzkn6XMZ
	JWEP9Ztrx9M8NkduVp67oJVSwn1sb5NbGaJUmF1+k5ZFi68jwuB8k5FFxEUn3YXHiFcl7ZyzaAb
	Pp2lpaSPmcGZ9X6ERcbgPN1/pKsDNdcuJvthiBs0XNmU+Dio7QlOLt3Ef9yOrPupx
X-Gm-Gg: AY/fxX7r9o/3iN/G2i9ctUy0VVdVoNOFnUfS0jvWSxwe1cDkepiSTW34URCCJIKeqiE
	1qtRidj+j7s2uMGm/kmDtQ+ytV5qYWB4ABvsqcnxQxwc2sJk8SLWxqdOIvfBcWQsJdu39DsiJcG
	APFLg1i2ZjciN/SnybRLOnablmji0MTW3ivwEPcUZeYM3firttRCwH1ZMsPCeBb4jsMfRJJ1anD
	JzLaovQlFFHBu5ptdl2j6TCUxlwFzKICispKnynkngO9K9Jx9QgbpP+n4tdbaapMlOoYY28Zm2c
	pe0B58YaxwPydQgu2RimmECXW+EjjDhVxz6GrL1OMEhf02r7fCfBQ2NK1v+vENN1gqFCUm/VOHd
	hOCH0aASvkFqsYCFs5HkuMFI4ud6RQVWt60D9cYlmZwPmH9jgAzn6oynVf2paD5sO4LY=
X-Received: by 2002:a05:622a:1794:b0:501:4767:a6f with SMTP id d75a77b69052e-502a16043c2mr26336881cf.3.1768563017777;
        Fri, 16 Jan 2026 03:30:17 -0800 (PST)
X-Received: by 2002:a05:622a:1794:b0:501:4767:a6f with SMTP id d75a77b69052e-502a16043c2mr26336231cf.3.1768563017270;
        Fri, 16 Jan 2026 03:30:17 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b879513ed07sm226392566b.3.2026.01.16.03.30.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 03:30:16 -0800 (PST)
Message-ID: <42a0e768-c217-44b2-81ba-1237d9f983f9@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 12:30:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Correct
 reserved memory ranges
To: David Heidelberg <david@ixit.cz>,
        =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20260112-xiaomi-willow-v1-0-8e4476897638@mainlining.org>
 <20260112-xiaomi-willow-v1-2-8e4476897638@mainlining.org>
 <723357fc-a785-45d6-8d49-4c00dd4f340c@ixit.cz>
 <ff4d697c-2007-4b2a-b66b-dc86053a20a6@oss.qualcomm.com>
 <0da3c96e-4f20-4bd0-836e-73d20581954f@ixit.cz>
 <e0f33ac2-331f-4ab4-a960-6bd8bcac7306@oss.qualcomm.com>
 <d90872ae-968f-4340-8348-aa83de92a3de@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d90872ae-968f-4340-8348-aa83de92a3de@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: CYap52Xo68laEIj1I9IOlcu_dhI-8Oso
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA4MiBTYWx0ZWRfXyy60wYKZ0HNo
 FrGMweoHoZSszbYMO+nByo/SleNUmT9eKJGWXxk3kiDUHDsek9+jR2cxlsqs2gpv/+9naQHw1pR
 ZUaoBEE9MdZcgIljjdF0Kbvo4BGVF1CdX2NCsOrXgwnggP2NfgBC839Tx+4Vv9bscuSsbkNWwEe
 BSGZu7O61+8ZAqR1krU4WYDdlusquweKNj1rEP2yfagZK0dkSXZ3F8rwD5+IMpgg4qfavRsoKQd
 quIuHGFa0IBsuR2J0bZbIwahNcPPQ1dxEvvPRlR1wcJ3Rg1xRIM1LN161AaqL86yiXx8DNbebYb
 aVk9x6fAHD0KN+a0hneTxL5U44ZfVyOkp4fXk5hWGijL3KWaQXv+M7Rwi5SxguW2D690nEmVQtO
 fFqOLuMSWXSfZcb6s7Wlw4r0Rskwi1wzyaGwkqzD6kLT1+854WuSzu7KVcqiUBsigOOeXCm0IFN
 wr6arDYw0Tm4EdRe97w==
X-Proofpoint-GUID: CYap52Xo68laEIj1I9IOlcu_dhI-8Oso
X-Authority-Analysis: v=2.4 cv=M9tA6iws c=1 sm=1 tr=0 ts=696a214a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=WKeohOAsuF05E7y8TmsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 malwarescore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160082

On 1/16/26 12:21 PM, David Heidelberg wrote:
> On 16/01/2026 10:52, Konrad Dybcio wrote:
>> On 1/14/26 10:55 PM, David Heidelberg wrote:
>>> On 14/01/2026 11:28, Konrad Dybcio wrote:
>>>> On 1/14/26 11:15 AM, David Heidelberg wrote:
>>>>> On 12/01/2026 21:13, BarnabÃ¡s CzÃ©mÃ¡n wrote:
>>>>>> The device was crashing on high memory load because the reserved memory
>>>>>> ranges was wrongly defined. Correct the ranges for avoid the crashes.
>>>>>> Change the ramoops memory range to match with the values from the recovery
>>>>>> to be able to get the results from the device.
>>>>>>
>>>>>> Fixes: 9b1a6c925c88 ("arm64: dts: qcom: sm6125: Initial support for xiaomi-ginkgo")
>>>>>> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>>>>>> ---
>>>>
>>>> [...]
>>>>
>>>>> Hello!
>>>>>
>>>>> I suggest one more nice to have improvement:
>>>>>
>>>>> you could label framebuffer cont_splash_mem since you already touching the node and testing the series.
>>>>>
>>>>> Then in additional commit, you can replace manually defined `reg` in chosen > framebuffer node with
>>>>>
>>>>> memory-region = <&cont_splash_mem>;
>>>>>
>>>>> For example you can look at sdm845-oneplus-common.dtsi
>>>>>
>>>>> Tell me what u think
>>>>
>>>> If you wanna do that, please call it framebuffer_mem, "cont_splash" is a
>>>> Qualcomm-specific name for (roughly) flicker-free bootup
>>>
>>> I have feeling someone recommended me to stick with cont_splash_mem.
>>>
>>> I think, since we'll be doing the mdss reset anyway in sdm845 (which I used as an example), I can do the rename in our sdm845 too then without any harm? (no it's not flicker-free takeover :D )
>>
>> It's not flicker-free because the OS must cooperate in that process,
>> whereas we currently reset and re-initialize the entire display subsystem
> 
> Sure.
> 
> Previously I was thinking, that after doing proper panel driver with proper initialization sequences etc. etc., we could have device-tree property such as "linux,takeover-from-bootloader", where we could skip mdss reset, panel reset and just continue from the point what bootloader set (for devices where bootloader does the right job).

I don't think there's a need for a separate property. Once MDSS is
powered on, various registers could be read back and the state could be
largely inferred from there.

It just comes with an infinite amount of edge cases and it's not top
priority for now, I don't think

Konrad

