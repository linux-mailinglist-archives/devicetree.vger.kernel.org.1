Return-Path: <devicetree+bounces-137158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FD3A07BD7
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 16:24:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EA5787A34C5
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 15:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EEA721C9F2;
	Thu,  9 Jan 2025 15:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d5u2vOHn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940B421CA1B
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 15:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736435937; cv=none; b=KirXte9GhVARcj05iFeTrfzBjS9skwRoHrnQKhYpzYYA3Xko4Dtoe+FlbSsVpO2Gywe1GcMmv9Iw8KX9Uc6+zJxOTbtrPCMJy/TdmMbxhU1lawAX9JxL0ce5GVyuWHHIhRiV7CNI63sfO3PEtt4PABRH921HJRhOn+dORHV+C4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736435937; c=relaxed/simple;
	bh=lqV7NlC8CBmeyM4CZrYL3BO5ti8mgWBP40C3kOcztYc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OBOEIF4hkB7exVUVliqRoNBSwnlFedQMpPLz5fqK0q3eXv+MPp8beNBnum6zPx6LcxQVXKrwMOQhy59Dq83y5cq3lgKeXfoQNeYD7Uc0KhBMd/cCvzopX5M/12/qMZy0bw3z7RwhZ1cNYJ6ajX6OwVgiDF0Snn3eCqB9g0ndbm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d5u2vOHn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5096hk8m022415
	for <devicetree@vger.kernel.org>; Thu, 9 Jan 2025 15:18:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IpE0gQ3lYM8L+L6h5NNjVxyVSfLJ8rsbS1M0Hbdpwqw=; b=d5u2vOHnRWJFBPuD
	RajXG6+04T4kZCjpQoLdBca6hRh8+61H9zuXHw7N6Xxwqj//ER1w+D8RgvsUcxsI
	qslwbAmqHkGrfg3rIXAbw4laiq1MoCBf1I6oRAeNea6VfLaweAGa/lUHQmmhNu4J
	0FV1P2bFNSLS+kn0c1PL31lOTFGdwj6jq4q45PTXjyU99dhkMwtMKuSOiNpEZt1Q
	5Ywk57+y20hHC0vxbSBuZbF0Ox3eLuS5jLeOQm6tQ97tZrtpju+YOnmsTGKuKQG/
	CPn89qd4bL+8Yjvee0iKzdVHwYQcOUk4NGovX1PpIrJNLJu1mAahgNKSie/zj32i
	ORC4DQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4429eph6qh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 15:18:54 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-46b3359e6deso2157621cf.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 07:18:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736435933; x=1737040733;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IpE0gQ3lYM8L+L6h5NNjVxyVSfLJ8rsbS1M0Hbdpwqw=;
        b=D6r0f0vITd3/+Zmdy//20zAw81F5s+0RTgoNvtEzMf8uL1Zzc+918DT/Nfoq619NV3
         9+jLH4urvqN+K7igLXI/oXXCvjqgJv0UlIMUxcsC9lKqUCLYkl8qdr3CRnmxs1lTZj4i
         jYe7DzPsFfoBMWm4TJySUyJVWRUk+pT8QLdHHtG5w/Ndfww0vxQVAv/4CKrdYgpeNd4y
         +3yPBScvrecwtYjurLGpvI79rPg0PArBpRZjgv3LDcF9y2kWvwPadIFTGT57GBX9OHVP
         3+WbowgqTBuNfA5+hbiQS49vwc64IT+/S/yrHwDkZzPk3/wKgfrSjW0ISVCIvdvW4TCM
         62NQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWmjqmYDQ42OB1ZlPxKVoFcR9FZxw1/mMAvfEqeki8k7q4vQjOI+OUvfPXcAwzv2bYppKS+aUHx75B@vger.kernel.org
X-Gm-Message-State: AOJu0YxEcS0lg76hprFrXACuy/5976kh6DgtcCsDWW86RRPnSD5JZd5t
	UgONEVPfdGYDaVRr90uXVkXfAkQXkk+pEaMb/2Uf48V6qLyG2JT5aIlBuRYLk0iqh1qXNZSRme4
	GWaVcn4cABv2anrv+L49eJIE8vUJWlh/F5sgO7jghzwv8bahE5CCCs/41t7RR
X-Gm-Gg: ASbGncsCdxnoLOnYk1wta8VqDWTNr77dwkewbAudqCGoaWg3gUJqxldt9Y6eFxGnGor
	JEzcZIEbD40r3d63ZFLorfysL0Ka8V9tpKd1rv1USQF/IG1p72YtNxn2X+0p0tnxqHb9V0oqe6d
	gBaO8Dh+cs3ww0E1nxMrdxnwBinF3yWLEJPaeuTcs3EUcwg+WtxAaGP/h/09NtrZDPYMJ66d+By
	7IqmppO6NFa1/YzEeiyCjcbNIKgZLN/m46FmgYqi6mcYjRkTBex59NsrTm/K6C0Xcp2/8V2fLQc
	6opsqEzvLUJxpYJP1KtAYHn/hufsqvsw2FE=
X-Received: by 2002:a05:622a:8028:b0:46c:7148:ded8 with SMTP id d75a77b69052e-46c7148df03mr32244931cf.8.1736435933515;
        Thu, 09 Jan 2025 07:18:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFQdM1xAAebtpapO3eH0OrmElKNtsuALMsy6JPzokd4FMS9zD7xkRDNVKgwgpbbloAePhgZuw==
X-Received: by 2002:a05:622a:8028:b0:46c:7148:ded8 with SMTP id d75a77b69052e-46c7148df03mr32244781cf.8.1736435933161;
        Thu, 09 Jan 2025 07:18:53 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c9564873sm80499266b.111.2025.01.09.07.18.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 07:18:52 -0800 (PST)
Message-ID: <66754bb1-44cf-4f22-af7b-450d4fede20a@oss.qualcomm.com>
Date: Thu, 9 Jan 2025 16:18:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8650: setup cpu thermal with idle
 on high temperatures
To: neil.armstrong@linaro.org, Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250103-topic-sm8650-thermal-cpu-idle-v1-0-faa1f011ecd9@linaro.org>
 <20250103-topic-sm8650-thermal-cpu-idle-v1-1-faa1f011ecd9@linaro.org>
 <qszkxmtrqr62wgd3qx7uctu22w4qrkietasvffinzwmzt7ccum@r26dikuqp7a4>
 <11ca788f-67e6-4e5c-9ace-083b730bc9ce@linaro.org>
 <2xp2xz4w7drpnql5khevz4wenlmiu3omwcilfisb3vvq2jlnwg@tcmjb475kghk>
 <2fcd9a10-ae9e-480f-87a1-5b49e5082ef5@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <2fcd9a10-ae9e-480f-87a1-5b49e5082ef5@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: NWkaqRIG-I2lIhYSFVbO9Qg_I28rrTqC
X-Proofpoint-ORIG-GUID: NWkaqRIG-I2lIhYSFVbO9Qg_I28rrTqC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 spamscore=0
 bulkscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0 adultscore=0
 mlxlogscore=999 phishscore=0 priorityscore=1501 clxscore=1015
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501090122

On 8.01.2025 10:15 AM, Neil Armstrong wrote:
> On 08/01/2025 04:11, Bjorn Andersson wrote:
>> On Tue, Jan 07, 2025 at 09:13:18AM +0100, Neil Armstrong wrote:
>>> Hi,
>>>
>>> On 07/01/2025 00:39, Bjorn Andersson wrote:
>>>> On Fri, Jan 03, 2025 at 03:38:26PM +0100, Neil Armstrong wrote:
>>>>> On the SM8650, the dynamic clock and voltage scaling (DCVS) is done in an
>>>>> hardware controlled loop using the LMH and EPSS blocks with constraints and
>>>>> OPPs programmed in the board firmware.
>>>>>
>>>>> Since the Hardware does a better job at maintaining the CPUs temperature
>>>>> in an acceptable range by taking in account more parameters like the die
>>>>> characteristics or other factory fused values, it makes no sense to try
>>>>> and reproduce a similar set of constraints with the Linux cpufreq thermal
>>>>> core.
>>>>>
>>>>> In addition, the tsens IP is responsible for monitoring the temperature
>>>>> across the SoC and the current settings will heavily trigger the tsens
>>>>> UP/LOW interrupts if the CPU temperatures reaches the hardware thermal
>>>>> constraints which are currently defined in the DT. And since the CPUs
>>>>> are not hooked in the thermal trip points, the potential interrupts and
>>>>> calculations are a waste of system resources.
>>>>>
>>>>> Instead, set higher temperatures in the CPU trip points, and hook some CPU
>>>>> idle injector with a 100% duty cycle at the highest trip point in the case
>>>>> the hardware DCVS cannot handle the temperature surge, and try our best to
>>>>> avoid reaching the critical temperature trip point which should trigger an
>>>>> inevitable thermal shutdown.
>>>>>
>>>>
>>>> Are you able to hit these higher temperatures? Do you have some test
>>>> case where the idle-injection shows to be successful in blocking us from
>>>> reaching the critical temp?
>>>
>>> No, I've been able to test idle-injection and observed a noticeable effect
>>> but I had to set lower trip, do you know how I can easily "block" LMH/EPSS from
>>> scaling down and let the temp go higher ?
>>>
>>
>> I don't know how to override that configuration.

I'll try to get some answers. SDM845 seems to expose a couple SCM calls for
this purpose and it's already wired up in drivers/thermal/qcom/lmh.c

>>>> E.g. in X13s (SC8280XP) we opted for relying on LMH/EPSS and define only
>>>> the critical trip for when the hardware fails us.
>>>
>>> It's the goal here aswell
>>>
>>
>> How about simplifying the patch by removing the idle-injection step and
>> just rely on LMH/EPSS and the "critical" trip (at least until someone
>> can prove that there's value in the extra mitigation)?
> 
> OK, but I see value in this idle injection mitigation in that case LMH/EPSS
> fails, the only factor in control of HLOS is by stopping scheduling tasks
> since frequency won't be able to scale anymore.

If LMH fails, your SoC is probably cooked already, anyway :(

I'm not sure why idle injection isn't enabled by default if no other cooling
methods are found. Perhaps that could be discussed with some thermal folks..

> Anyway, I agree it can be added later on, so should I drop the 2 trip points
> and only leave the critical one ?

I think sticking with critical=Tjmax + critical-action = "reboot" may be the
way to go here.

We may want to give some folks a heads up, so they can wire up skin sensors
on their devices ahead of these changes landing tree-wide.

Konrad

