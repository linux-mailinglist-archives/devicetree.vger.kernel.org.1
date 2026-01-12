Return-Path: <devicetree+bounces-253717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEAED10D35
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8833D300987D
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB97E32AAC5;
	Mon, 12 Jan 2026 07:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hNqwYHDk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KcYb+xZ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7909031A044
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768202098; cv=none; b=UPIfg7FVPRm87imY9l1jxqWDv/E6ew9gh+NJ+towJYamnTScgrtJc9WisHyGSCM+okGBY/bF4pabo6WLEMB7OkO3FF7GJJg/W7RmBQJcSHtQE8cwtd3H2PYcFGM/KGLrQHDIexQJ54Boy+A1U7kuFUCF1LPjrOnzeo8/Ig5Fzh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768202098; c=relaxed/simple;
	bh=oe0zdQ31sKVrqQX67MYatzmbLE1OU0+JlNjvK+Kg9QA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hQSNlHQwP0217PxTRdgKGnpZ+5+tZocZXrc6Fiz7JPbtuM5FejBM80k2a+DMZ7h5TnaAFclJNEz+fxMruRccOX2R4+Ms9Q6MAgRtyYmQCHxTSf36l4TnjDWDhMKxV/EKLYoktzsFX/i6qispZsu3s6HuQ2apQ90hEYsYXx0LD6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hNqwYHDk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KcYb+xZ0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C2O1ST113540
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:14:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	61sz1P9DUBPPIhlFcpugdDM2PaZEgojWhWVX/0vXAsE=; b=hNqwYHDkjZCRc+uN
	fxVxiRBRamj2qsfbXjdiRXeiLSYiqwFd9DyRmuX3CSQ7YACV0bqyhZN2GDeLJzCQ
	zfatcuPGhK//pbwpPXYY18uYZnMbPpuFYA73T4G9MdlbvhN0us13L2XHo5DCDTpY
	WRf/SigixpUrAOSGdpJFAq3jUvL0juYI6b6mwrOJwSLt4NrdpRMIitgJFWbJXwP/
	4cN1fyq8MyVHnsrZd/rID9Qn4KQO2zoCXd4icNfKllPImtuFxvmBUvOWE899Hmwu
	FxFdjZQyZXeXHdYaQn+7+f6poy2NQ3ciAETD/5boFcrEG1iQGwHqExPUFgc3g591
	K1VfeQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmr4ugqny-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:14:56 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4fc0d0646f9so255879741cf.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 23:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768202096; x=1768806896; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=61sz1P9DUBPPIhlFcpugdDM2PaZEgojWhWVX/0vXAsE=;
        b=KcYb+xZ0RbydvQvPD9IxIw+vYqJ1CAzcfIsflo1ntabr9rYguOZdwsRwSyWnnvheL1
         CWyaVHyIGzVl3wDFVz9HqmS5EUDNorFx1uQG2B/IVaDsm4BAKPNgW4bYrJ9S92ysAqEV
         1WUdByYRiyf75N7PBDhG7R+Hz4x/QXZgl3jjROMRNsK7w6Z2J6IA6c8YwNEhO/FUbs55
         U7Hxs82YpHpQCBl5ffOT7aTwzkh8DoFviFnu9ihdtZHchO5X16mOiF2KJiFDmkYscK8/
         P1tGTj7nOaIyvgmZVkUTLh+RdcKsY1XPUrXZOdfJ0iZ2FI9XU00ZgZsrw8W7yEbV+6nV
         qGQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768202096; x=1768806896;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=61sz1P9DUBPPIhlFcpugdDM2PaZEgojWhWVX/0vXAsE=;
        b=H0nS1LYBy4lsflydGU8UuMG6eiYd2/3hZxzpg2SX+caOj6ughkZL+9GxSaFryN7xL8
         Z1Z5q8OiiGcXJ2oWWhq/psuZ4KDizjDpg/SJ50h+ymjn/g/W34IQTEkGfd/V5RNpIchc
         EPs2Kv/uUBpAbtgQSHRdPLyjOuMg+fdLErtKYMK2hu8rZjmh8E4mhdzvFvA6oLCQFBcS
         GpeyQhCIXl0KjojZ0jNOZFniApk0CbQxiCS5QC4CNVWruzIJBYxJbn/fVVFLIe4YRSDA
         lzYLT6cXNSCgCzIlIyIKJM3vJOWDRTw7HQlQevEPNNLaeAc78wTJL6/knkzFFjnRTAiO
         y5rA==
X-Forwarded-Encrypted: i=1; AJvYcCWOND8douZc8BuRuqWbJgAwLRfRgc1oNsgzs5lmZ7ofadYTZvo+DxLQ9XSKsgxymprS9Pd918k2/x8u@vger.kernel.org
X-Gm-Message-State: AOJu0YxedWRkQgp7lL5FzdTf4bx3TEzTVvPy3MbfM0FXR3C0XwY8rY0Y
	u8/jubbUenJBqPezzwm9F9zcc9brXzZlZpj7/rlhGHT2bOyYHf7R2RtRNh0dQu0S5uyKnfqjLTg
	ELo1/8K105mptV+5CQhf1J7NyiZgbFjogi6a68gfUw+9yd0jdxnhu3y3wGRgKBHyB
X-Gm-Gg: AY/fxX5G5pHp4LqJTSOO6CB8E1ano5NcfcvKHJIddTjR1GLW6ypk+VGRUS7/UF9U0Uj
	XdTrHRVOnzI+QHphi1MRhB8+fkHA4H/5BSLcPYD4wndAZV8afr/80Eyn1A55m+AEWNFXwhgGScz
	LIKx+jzbdS5K2gwcuyzb3G52VPz8YgAaZN0jq/h0DTEtBFM5JTxAtmvsyVDtPoLy/D7GICJKTr/
	/Ljql3DUHYLSPiYN6rfLI6UN1OoaYHkKhb/lcfTP31lZVXo35a2k1keHfjz5/H/HQna1rG5bP53
	NvMUifFkWCXmDWUCnNkKFp8IFndlF+y6i0tfKNiubjDaDz+CV3GFXnE/vIt0HRmO0XyDnV2RD5n
	WowvcOKuOnS/ZxEpOa7PDZfyTzs3DeDsbRjCXHg==
X-Received: by 2002:ac8:7e82:0:b0:4ee:197a:e80a with SMTP id d75a77b69052e-4ffb4a1d231mr229689361cf.77.1768202095787;
        Sun, 11 Jan 2026 23:14:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH/AKsWJUj2GJQlVB/oRGTZBexbiGtibRZPhGC14F/8euSr81m2ti5pd+EYNdXl2sxi2KVnWw==
X-Received: by 2002:ac8:7e82:0:b0:4ee:197a:e80a with SMTP id d75a77b69052e-4ffb4a1d231mr229689191cf.77.1768202095323;
        Sun, 11 Jan 2026 23:14:55 -0800 (PST)
Received: from [192.168.1.29] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a5180bdsm1800440766b.57.2026.01.11.23.14.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 23:14:54 -0800 (PST)
Message-ID: <9b564eec-bea7-49d6-b6b4-614250ff0503@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 08:14:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
To: Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
 <20260109080000.606603-4-yijie.yang@oss.qualcomm.com>
 <6e8e6583-033f-439e-bd92-b24fe432fb96@oss.qualcomm.com>
 <3959a318-aca3-43e2-a431-4a9ae40f911f@oss.qualcomm.com>
 <ak6xsow3cobhe64y2koa4v7w5dkdc4v3zlmpokws4nxmu5c6rt@kdgm2oqxxvcl>
 <d5d1d6c0-87ab-42a8-9816-359a64b9112e@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <d5d1d6c0-87ab-42a8-9816-359a64b9112e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA1NCBTYWx0ZWRfXz4rxDyVb6DIS
 iOVrBy0v9PRgRXASHbsi2aFz2csV0pVFl/FJFupCbuaZG//iHGnC000Q19gm8h+8iXAsXRTS1Sg
 57uIDt8eI9IyTJ7gZHAbMdI1nhX57+k9sD0es4kAvV4SkFq/RLnRQJ5hMimvMbLWh1QJPLMyYpo
 0qgO6doQzHhZ7DZFuD1FSpaBMz5W+81mFX4B50kwbZyuZ2Dxl35CcPoOmkOq9BZ2/HujvRG2LAf
 p+INjyM3BHhw+q+XMVNgyEXjeQXsCUH9+PExp6Nmo47vhkw6RHx5bOfE3lFzzYO95W/KzsEv2zL
 iuO43b+WJYpkjVjBDdSz5YGb1BEeKJc0Ux+waM+NeM+hzxgmgC5fuLPBnlRKlmQlA2OklvlbhYL
 ygduCtzN73gBf3Q8SM8/monj8aDogNz0esDEjYDM3VKRcj61iQYK1iemAVRNFsK0SQEUKA/S8dB
 n3s84ut5c/QnS/xaYYQ==
X-Proofpoint-ORIG-GUID: M9FG4yQe5IH-80kveR30FQ2Q-PHfNIYu
X-Authority-Analysis: v=2.4 cv=YocChoYX c=1 sm=1 tr=0 ts=69649f70 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=5p-L8BiwTOc0Zqi8YbgA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: M9FG4yQe5IH-80kveR30FQ2Q-PHfNIYu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 clxscore=1015 impostorscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120054

On 12/01/2026 06:51, Yijie Yang wrote:
>>>>
>>>> Is the backlight infra different on the Purwa IoT EVK?
>>>
>>> As you can see, this Purwa file was copied from the latest
>>> hamoa-iot-evk.dts. However, not all nodes have been verified on Purwa.
>>> Therefore, I need to retain only the functions that work correctly and keep
>>> them aligned with the nodes from my initial version. The deleted nodes will
>>> be updated later by the respective authors from different technical areas.
>>
>> Please, only delete nodes which are not present on the Purwa IoT EVK.
> 
> This isn’t a deletion—it’s just not ready yet. Why do we need to include 
> all the nodes like a mature Hamoa platform in the initial push?


Because you said it is exactly the same module...

Best regards,
Krzysztof

