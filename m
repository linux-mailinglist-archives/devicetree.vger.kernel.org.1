Return-Path: <devicetree+bounces-132829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 094889F8402
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:21:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 65A71188858A
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 19:21:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 588E21AA78C;
	Thu, 19 Dec 2024 19:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jYxpnsYQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41BE19E985
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734636050; cv=none; b=aBePIIwRfhzyI+OYTR8FHX4RSwKhv91SSLR9YI6mJq/og0xEhf+ux1jhvbGC3qXgrqZBk2FVW+iz7PgPrbNha+nsztk1Y/dXfDsUnWUSDIB6BQOMG2o8WNZZjexT1zJZUyvVT17/xfVwZvQg06gubIXLsdpjgaE/RgvuHM5FTLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734636050; c=relaxed/simple;
	bh=cs6YCPqsZYU6fvkivr14ruEqgx1q6NQCzqBJLAN+tJI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jLAExc52hqggFhjnhRvsxSgffDW2opY7o9siChUsYCPozlfbw2odKR4mviaFAPbpUKoYMrXdckt05NthBDRGBE8e2X9vTqDN8StdLCAVRDQyIg0oY5tvTvKAFs1SGPPtI2/LN4H4T0hk1oJFQUfq3gkuQU4AwSv+1QPKkKs/iXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jYxpnsYQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJHKrCo015075
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:20:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wBvXbwp3Z5qAtoea1jtuRITtWRYZCZbCO+D7z8/6g6M=; b=jYxpnsYQU1NXYnf+
	OS4B/DC3iZo19qU8SJ59F/5gJnNa851l8rx4gV2aUBhVR6vaB3+Ev5IbcLiFqPcI
	v51RSNZgaVcK3KqPUU7SHo/82UTsHIyTgR77gWgujIbwqCernvPhBREZ16t2uDuf
	LADaSlryPCMUeVqLAAgM2lo2uzN97OxYlwJTTF8jaM+b485z7k4ZUA30anYGd0k3
	zWrbNV4qFybCo+H3urNI/d6P/BbHt9B/gJW8MOj2mBz5apbVgtbNHWO2NgRe6kvl
	WJgu/26zJrPKGWZoF1HO7whiqTcoCKMsaFONBx/rz31siy30nrG3ngG4iH1A17gx
	0fYgHA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mqt808we-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:20:47 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6db1009a608so2345836d6.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 11:20:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734636046; x=1735240846;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wBvXbwp3Z5qAtoea1jtuRITtWRYZCZbCO+D7z8/6g6M=;
        b=go5C3E5Y0wxbnHopy9RENUYCTKpjWYIXGZZo0lW9gCS5LiesgfYcwS/57eJD/pmZ+a
         qi0RQGuZgf6y9T7gjcnEz0weIOSYtJgUXV0X/19rGsEWAJOiy2fV3Ii0p9hXIcgBXT8J
         uleSwH/C3OwSjzldSmq202XZ9+0sqvTRsu7fSULa76o6ef0xXoFrw2h+4hZFIAB7P185
         B0TZH+oRVRYcriUS+LyMPlky+H6I/NjlFG+OvB9i3UFD50bCjQ5mioA8ccU4iL1lzixR
         YNq2jsig5Ce4Cdy3zQpGN1tJRg5lyT2IOXz2S+tc5sGzpUIrBipwVYiAmwgjfYCWKGxw
         Ryxg==
X-Forwarded-Encrypted: i=1; AJvYcCXO3P7wxEXDOnbbadgpvxacfWkyqyVbTQ2zb4N6Fln8q1mN86ENSt9ZKgt9mdmcU/IJDItOHUAbGwS3@vger.kernel.org
X-Gm-Message-State: AOJu0YyBk7dBWGwDDUUbIqNO0qGijCblFYowIA/h6WdErmfK1QxdyPSK
	D57u3Rpp3aPblua+9oYXuk0jtHQj2um42EAdU5dUr4hHcjI8YeIwpqR1Cx3KToNvBCNa4CDnNOk
	t4rCiuuYKhOfHOiyEnjtoz7k0o+5gZ922D3W4GcdW6L8T7mEHFSZrITFeJkL5
X-Gm-Gg: ASbGncuWiMM3j9UkvD6d/5tYvaCp2G/eLsNs494EjgHIjcW4d4aDu4dzH/955Y7Tb20
	uVX/ZHnyAN/JzUJrjDHgG6W8yCNeytr3v5Twjc5V5cjNMy03Dl7HcfVc503qq2GZuJ/RhP3xVT3
	lteaSD3juZ9tvgpEAUrmHf/Qd05VUjZGkqHTQpZxAqUaXYSyUB6NEBqBr9vBBOweB9EX/khOCzP
	Qtqb2UGqabd3XZPnNtoR/iPhRGAljLHnXUpJFfXS+en6Olmf6hW0NTrwxD+0HWkoxsKSkMWcUFD
	EPpIegoVsD/yMxU9c3H7fpnGCARvzXrvKCY=
X-Received: by 2002:a05:620a:1a9f:b0:7b6:dc5c:de2 with SMTP id af79cd13be357-7b9ba7d3b52mr2375685a.13.1734636045996;
        Thu, 19 Dec 2024 11:20:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHfFJI3SfF9+L7vj78AuMQmMSoSWSb61NRFSwB4APgCi4WHPaENCa1K0rLdNwFxiCaOZHvbBw==
X-Received: by 2002:a05:620a:1a9f:b0:7b6:dc5c:de2 with SMTP id af79cd13be357-7b9ba7d3b52mr2373685a.13.1734636045439;
        Thu, 19 Dec 2024 11:20:45 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80679f0e4sm921709a12.42.2024.12.19.11.20.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 11:20:44 -0800 (PST)
Message-ID: <476c1d1f-08d4-4413-ad24-a22cca569d7f@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 20:20:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Allow specifying an S2RAM sleep on pre-SYSTEM_SUSPEND
 PSCI impls
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Sudeep Holla <sudeep.holla@arm.com>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241112180118.pcn7sf6r3mswwwxf@thinkpad>
 <ce1d2196-cf09-4d27-8b41-372948a59e89@gmail.com>
 <20241112184301.6mlwpfzzowut36pn@thinkpad>
 <eeec6eea-edb4-414e-9c11-88054e3624e4@gmail.com>
 <20241113080540.mtm7nu7nqrfz27yj@thinkpad>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241113080540.mtm7nu7nqrfz27yj@thinkpad>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: lsEhBScpRF8_EHtkfXD5Ub6TFoWmnyiR
X-Proofpoint-GUID: lsEhBScpRF8_EHtkfXD5Ub6TFoWmnyiR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 mlxlogscore=999
 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412190153

On 13.11.2024 9:05 AM, Manivannan Sadhasivam wrote:
> On Tue, Nov 12, 2024 at 08:04:34PM +0100, Konrad Dybcio wrote:
>>
>>
>> On 11/12/24 19:43, Manivannan Sadhasivam wrote:
>>> On Tue, Nov 12, 2024 at 07:32:36PM +0100, Konrad Dybcio wrote:
>>>>
>>>>
>>>> On 11/12/24 19:01, Manivannan Sadhasivam wrote:
>>>>> On Mon, Oct 28, 2024 at 03:22:56PM +0100, Konrad Dybcio wrote:
>>>>>> Certain firmwares expose exactly what PSCI_SYSTEM_SUSPEND does through
>>>>>> CPU_SUSPEND instead. Inform Linux about that.
>>>>>> Please see the commit messages for a more detailed explanation.
>>>>>>
>>>>>
>>>>> It is still not PSCI_SYSTEM_SUSPEND though...
>>>>
>>>> It *literally* does the same thing on devices where it's exposed.
>>>>
>>>
>>> But still...
>>
>> Still-what? We can't replace the signed firmware on (unironically) tens
>> of millions of devices in the wild and this is how it exposes that sleep
>> state. This is how arm platforms did it before the PSCI spec was
>> updated and SYSTEM_SUSPEND is *still optional today*.
>>
> 
> I never asked you to replace the firmware in first place, so don't quote the
> fact I never said.

Never implied you did. I'm putting pressure on the fact that we can't
update the firmware on such devices to expose PSCI_SYSTEM_SUSPEND.

> I see this approach as a way of abusing/faking PSCI system
> suspend.

And I disagree. I can't stress this enough, calling PSCI_SYSTEM_SUSPEND
is literally internally equivalent to calling PSCI_CPU_SUSPEND(magicval).

> 
> Moreover, I heard from Bjorn that Qcom doesn't want to put the PCIe devices into
> D3Cold during system suspend for future platforms (based on their
> experimentation). So if drivers rely on this static information, then even Qcom
> cannot achieve what they want.
> 
>>
>>>>>> This is effectively a more educated follow-up to [1].
>>>>>>
>>>>>> The ultimate goal is to stop making Linux think that certain states
>>>>>> only concern cores/clusters, and consequently setting
>>>>>> pm_set_suspend/resume_via_firmware(), so that client drivers (such as
>>>>>> NVMe, see related discussion over at [2]) can make informed decisions
>>>>>> about assuming the power state of the device they govern.
>>>>>>
>>>>>> If this series gets green light, I'll push a follow-up one that wires
>>>>>> up said sleep state on Qualcomm SoCs across the board.
>>>>>>
>>>>>
>>>>> Sorry. I don't think PSCI is the right place for this. Qcom SoCs have a common
>>>>> firmware across all segments (mostly),
>>>>
>>>> This ^
>>>>
>>>>> so there is no S2R involved and only S2Idle.
>>>>
>>>> is not at all related to this ^, the "so" makes no sense.
>>>>
>>>> (also you're wrong, this *is* S2RAM)
>>>>
>>>
>>> What? Qcom SoCs supporting S2R? I'm unheard of.
>>
>> Maybe you're thinking of hibernation, which is not widely (if at all)
>> supported.
>>
> 
> Not hibernation. The Qcom platforms I've aware of all support only S2Idle. I
> don't work for Qcom, so I may be missing some insider information.

I think this is the main source of misunderstanding in this entire thread.

CXPC is S2RAM. Not S2idle.

Shallower sleep states on QC platforms are S2idle.

>>>>> If you use PSCI to implement suspend_via_firmware(), then all the SoCs
>>>>> making use of the PSCI implementation will have the same behavior. I don't think
>>>>> we would want that.
>>>>
>>>> This is an issue with the NVMe framework that is totally unrelated to this
>>>> change, see below. Also, the code only sets that on targets where such state
>>>> exists and is described.
>>>>
>>>
>>> Well, you are doing it just because you want the NVMe device to learn about the
>>> platform requirement.
>>
>> And I can't see why you're having a problem with this. It's exactly how it
>> works on x86 too. Modern Standby also shuts down storage on Windows,
>> regardless of the CPU architecture.
> 
> It is not just my problem. I'm expressing the concern that NVMe folks have and
> already expressed over the similar solutions I proposed. And I cannot just
> overrule them.

Sure, but if PSCI_SYSTEM_SUSPEND implies S2ram, why should the behavior be
different purely based on the architectural idle implementation?

Moreover, if the same platform can be booted with ACPI or DT, why should
power state switching work differently, considering both would describe
the hardware accurately?

>>>>> For instance, if a Qcom SoC is used in an android tablet with the same firmware,
>>>>> then this would allow the NVMe device to be turned off during system suspend all
>>>>> the time when user presses the lock button. And this will cause NVMe device to
>>>>> wear out faster. The said approach will work fine for non-android usecases
>>>>> though.
>>>>
>>>> The NVMe framework doesn't make a distinction between "phone screen off" and
>>>> "laptop lid closed & thrown in a bag" on *any* platform. The usecase you're
>>>> describing is not supported as of today since nobody *actually* has NVMe on a
>>>> phone that also happens to run upstream Linux.
>>>> I'm not going to solve imaginary problems.
>>>>
>>>
>>> Not just phone, NVMe device could be running on an android tablet.
>>
>> 'Could' very much makes it imaginary. There are no supported devices that
>> fall into this category.
>>
> 
> Agree that there are no products in the market (yet). But having NMVe on
> handheld devices is not something I would quote as 'imaginary'.
> 
>>> I'm not
>>> talking about an imaginary problem, but a real problem that is in a forseeable
>>> future
>>
>> Keyword: future. This issue has been on hold for years because of 'issues'
>> that are pinky promised to happen eventually, without anyone suggesting any
>> actually acceptable solutions. This just undermines progress.
>>
> 
> Not true. There are solutions suggested, but then it always takes time to reach
> consensus. One of the approach that I'm about to propose is to have a userspace
> knob that specifies whether the device can be powered down or not (leaving the
> default behavior to put them in low power state). Because, the decision to put
> the devices into power down or low power state sounds more like an userspace
> policy. It was discussed at LPC 2023.

Sure, however I believe it is perfectly reasonable to change the
default setting there based on platform capabilities.

Konrad

> 
>>> (that is also the reason why NVMe developers doesn't want to put the
>>> device into power down mode always during system suspend).
>>
>> This is the current behavior on any new x86 laptop, and has been for a
>> couple of years.
>>
>>> And with this change, you are just going to make the NVMe lifetime miserable on
>>> those platforms.
>>
>> Fearmongering and hearsay. See above.
>>
> 
> I can only wish you best of luck with this approach!
> 
> - Mani
> 

