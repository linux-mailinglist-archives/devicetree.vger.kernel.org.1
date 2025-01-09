Return-Path: <devicetree+bounces-137059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA2EA07654
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:59:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E61C01884283
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3487219A76;
	Thu,  9 Jan 2025 12:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R9hQfC78"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8334921884A
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 12:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736427446; cv=none; b=IuPPYZSqbrkwHRh7SC0Aub+Hy1bgfPQ+hy8B+p8TPw7giX+bbCrY+7hC19XnY95peyOwOLz+u30APHft2qg9Tb+PycgdizjC706WtfzCm27kjoj9ol8qIk3vSLyORp+hqjNT4O6fSQvh2Kv0I6CZC8JcConbLPpCTK3Lcf7UrN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736427446; c=relaxed/simple;
	bh=EQRNeTk+hBONpa7+5D0zMr2pGV9NPKrhECuScjn30jU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=muCGkCvWc6YdgUKfjzpmdJTL4MdQoFRXqu4UrhI+89+wOvpF7r36lB0Cj+Fu0pPAy0cJAH/fEHG5L3HbNZmWHoGzIQ3RXAtzDdwPjzQNyzI+nZKs2hCdA5TiPqeABjbnhwbtnnj6JwW01IkTOcpoJYiEZmJGSNdQXeBEymNH4kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R9hQfC78; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 509B3oVO024528
	for <devicetree@vger.kernel.org>; Thu, 9 Jan 2025 12:57:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Wdrt8+vy10d3LeMY2xaFa/Zw6kJZLY+e+LjMIzLlwmE=; b=R9hQfC78Tqr2WxXg
	0ZrN2MebST3KPrZ7u0awjf4U24Ev6fRjzN0TH66Agy4923+y2PJAv4mWS9//XJ2e
	Wrh2747eo2BAnkUAQZsUCpa1EfWvLWN9x2++55G1D0sL8YoXQL4N4c7BhcfyT9im
	jsbI/mvE3p+iC50XHdtVBgg+WuCf3g2z0gme9iYHXiwfYOIHxWD1jzoI1Ikkp7xd
	3vT6tV+4dC+15EHkzHHOMKGK7dLfGcTLJpVpQRKZBZfGoLNrlPPm8ldAki87rPbP
	gtwP4oX+wbvhZKBZCFTu3kSlYY9pzR7lOSduaNZgRwkKwGu8w6Ct5YGyL80YVrBr
	aPicvA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442d8hg83n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 12:57:23 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-467a0d7fb9fso2181631cf.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 04:57:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736427442; x=1737032242;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wdrt8+vy10d3LeMY2xaFa/Zw6kJZLY+e+LjMIzLlwmE=;
        b=E9VRVhDJyypcNcbLMRo1MV8qan48RJDw9+e9LRO7aoBCwXPaVagbEvmh35LZWY7aCm
         72Ma2yXt3vYWMRz/ujJFi624Z3VqV38x+7EdYhZIZ4Wq6WOKTbHcnOGGVQ+NDaZ0cs8d
         OP4yNYhwF2v9DhvaLmMcD0dZL8a6WG/0q5p3q1ulg3iFo4xo2ZIftDDzgdIEy00izR9i
         NE4pWNd4sHm2rznAx8YMcZza+ZB0DhvKT4XlE9fnKqhIkMF0042vnj4vu7wRGi02Ynrk
         uxchp/L/MMPR0R+FVFb284kclzvIqd/mBIBFjrI/LX1exz3m1ruAWxZ1truRownSOiPI
         PSlw==
X-Forwarded-Encrypted: i=1; AJvYcCWxfbYmJ+1fznzUjB+VHyIDArfmCrUkoriZX299oOur9eSl7VbE2uY2zvSy7/7HisvjfaNSiWpehTX/@vger.kernel.org
X-Gm-Message-State: AOJu0YwgmnxNSFJ7y9cAqpRgUKtXtM2AZbNz66lpufJDvfohdZnNgFGZ
	pB2spjglcRudEWRw6GgSZmQGGsS9YArQRusqNfoCGujIQl1dyvQj5EgHPiYMUxZOfFm05zO8JSf
	OMtb8Hj/9XEIHI2+N0QBoX7GoMnYk5jw5YY+azJXkxMjrkouHQjDYbtXRwzMN
X-Gm-Gg: ASbGnct79goYQqCjDrz2AMz0QdrR4ujMj64HSbBfJ+U0F6NRsD3/f2jUmVeClRfwNVm
	/EwKvbIo98q+r/mcekpeY9sV2Og4RjLB3N/VyUIOIOmc79b91T6NPGZBEW81yr6UoVwrk8wPPL+
	0Ao8k0PTaS4jfKu9rKAMyzGfct3mEFjftBMFFIpv9n+zMZqxnmBLRX8kssy3FJFR7/ZFAW8PU2L
	rhjyIkxbsHmJYDJUbnAYPJImCfydj1zfZergctgLWM7wWfmdfWxw2KD0UnspYG5VN2DPZu+TqWt
	vQ5ZVgWOlkD7gmABGKVTfzsv7hQVIaYv5j1B
X-Received: by 2002:a05:622a:413:b0:466:88ba:2026 with SMTP id d75a77b69052e-46c710f9f57mr30736411cf.14.1736427442371;
        Thu, 09 Jan 2025 04:57:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEcu5W+7ZgRtg2ylSZnOMnR6OkKgSahUtxRQxSwNm8om6gJaZ1fGlL6jQic93YoEugEd2X3ZA==
X-Received: by 2002:a05:622a:413:b0:466:88ba:2026 with SMTP id d75a77b69052e-46c710f9f57mr30736301cf.14.1736427441915;
        Thu, 09 Jan 2025 04:57:21 -0800 (PST)
Received: from [192.168.65.234] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d9900c4368sm568178a12.22.2025.01.09.04.57.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 04:57:20 -0800 (PST)
Message-ID: <0f9e456b-cd54-4496-a2d2-795aae744385@oss.qualcomm.com>
Date: Thu, 9 Jan 2025 13:57:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100-crd: Drop duplicate DMIC
 supplies
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
References: <20241203-x1e80100-va-mic-bias-v1-0-0dfd4d9b492c@linaro.org>
 <20241203-x1e80100-va-mic-bias-v1-2-0dfd4d9b492c@linaro.org>
 <f65e1559-b409-4906-aabb-eb24b5b0fcf2@linaro.org>
 <Z1ATxAsXFhQraQwH@linaro.org>
 <afd010c9-8c24-482e-a479-2396f08c972b@oss.qualcomm.com>
 <Z1H1BHAeO-0832Ea@linaro.org>
 <6vfrlwir6sfommhn3met6wnjm76lnnxw4rdwzq75b7lzcy4jep@2cbcfvb3tvr2>
 <Z3-XoDgUgdS7DDvm@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z3-XoDgUgdS7DDvm@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 0z0NaCHcdLAZAaW6wymLvSD-P9o7-kJX
X-Proofpoint-ORIG-GUID: 0z0NaCHcdLAZAaW6wymLvSD-P9o7-kJX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 adultscore=0 malwarescore=0 suspectscore=0 mlxscore=0 mlxlogscore=999
 spamscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501090103

On 9.01.2025 10:32 AM, Stephan Gerhold wrote:
> On Wed, Jan 08, 2025 at 05:07:47PM -0600, Bjorn Andersson wrote:
>> On Thu, Dec 05, 2024 at 07:46:28PM +0100, Stephan Gerhold wrote:
>>> On Thu, Dec 05, 2024 at 06:11:47PM +0100, Konrad Dybcio wrote:
>>>> On 4.12.2024 9:33 AM, Stephan Gerhold wrote:
>>>>> On Wed, Dec 04, 2024 at 08:20:15AM +0100, Krzysztof Kozlowski wrote:
>>>>>> On 03/12/2024 18:44, Stephan Gerhold wrote:
>>>>>>> The WCD938x codec provides two controls for each of the MIC_BIASn outputs:
>>>>>>>
>>>>>>>  - "MIC BIASn" enables an internal regulator to generate the output
>>>>>>>    with a configurable voltage (qcom,micbiasN-microvolt).
>>>>>>>
>>>>>>>  - "VA MIC BIASn" enables "pull-up mode" that bypasses the internal
>>>>>>>    regulator and directly outputs fixed 1.8V from the VDD_PX pin.
>>>>>>>    This is intended for low-power VA (voice activation) use cases.
>>>>>>>
>>>>>>> The audio-routing setup for the X1E80100 CRD currently specifies both
>>>>>>> as power supplies for the DMICs, but only one of them can be active
>>>>>>> at the same time. In practice, only the internal regulator is used
>>>>>>> with the current setup because the driver prefers it over pull-up mode.
>>>>>>>
>>>>>>> Make this more clear by dropping the redundant routes to the pull-up
>>>>>>> "VA MIC BIASn" supply. There is no functional difference except that we
>>>>>>> skip briefly switching to pull-up mode when shutting down the microphone.
>>>>>>>
>>>>>>> Fixes: 4442a67eedc1 ("arm64: dts: qcom: x1e80100-crd: add sound card")
>>>>>>
>>>>>> If there is no functional difference and this is just redundant, then
>>>>>> there is nothing to fix, so drop the tag. But the point is that users
>>>>>> might want the low-power VA. You claim they don't want... sure, I am
>>>>>> fine with that but there is nothing to fix in such case.
>>>>>>
>>>>>
>>>>> The fix here is that two mutually exclusive power supplies for the DMIC
>>>>> are specified in the device tree. You can only have one of them active
>>>>> at the same time. The Linux driver handles that gracefully, but the
>>>>> device tree is still wrong and IMO deserves a fixes tag.
>>>>>
>>>>> The functional difference is that we skip briefly switching to pull-up
>>>>> mode when shutting down the microphone. Users won't notice that, but
>>>>> it's not the intended behavior.
>>>>>
>>>>> I don't claim that users don't want to switch to the low-power pull-up
>>>>> mode (VA MIC BIASn). However, we would need a different mechanism to
>>>>> give them the option to switch at runtime. "audio-routing" just
>>>>> specifies static routes, so the current description does not allow
>>>>> switching between the two modes either.
>>>>
>>>> Is there no existing mechanism to alter this at runtime?
>>>>
>>>
>>> I don't think so... Since it's currently exposed as two separate DAPM
>>> supplies (instead of a mux or similar) you can only choose between one
>>> of them in the static routes specified by "audio-routing" in the DT.
>>>
>>> I tried looking at how downstream handles this, but this left me even
>>> more confused than I was before. :-) On CRD we currently have the
>>> following routes in DT:
>>>
>>> 	"VA DMIC0", "MIC BIAS3",
>>> 	"VA DMIC1", "MIC BIAS3",
>>> 	"VA DMIC2", "MIC BIAS1",
>>> 	"VA DMIC3", "MIC BIAS1",
>>> 	"VA DMIC0", "VA MIC BIAS3",
>>> 	"VA DMIC1", "VA MIC BIAS3",
>>> 	"VA DMIC2", "VA MIC BIAS1",
>>> 	"VA DMIC3", "VA MIC BIAS1",
>>>
>>> MIC BIAS and VA MIC BIAS are mutually exclusive, so this is not correct.
>>> But if you look at e.g. SM8550 downstream they have:
>>>
>>> 	"TX DMIC0", "MIC BIAS3",
>>> 	"TX DMIC1", "MIC BIAS3",
>>> 	"TX DMIC2", "MIC BIAS1",
>>> 	"TX DMIC3", "MIC BIAS1",
>>> 	"VA DMIC0", "VA MIC BIAS3",
>>> 	"VA DMIC1", "VA MIC BIAS3",
>>> 	"VA DMIC2", "VA MIC BIAS1",
>>> 	"VA DMIC3", "VA MIC BIAS1";
>>>
>>> Note the TX DMIC vs VA DMIC. So they specify one of the supplies for the
>>> TX macro DMIC, and the low-power one for the VA macro DMIC. That would
>>> be fine.
>>>
>>> Now the question is: If we can use the DMIC through both the TX and the
>>> VA macro, and we're not doing voice activation, why are we using the VA
>>> macro in the first place?
>>>
>>> @Srini: Do you remember why?
>>>
>>
>> What's the verdict regarding this?
>>
> 
> We started discussing this, but did not come to a conclusion yet if we
> should be recording from the DMICs using the TX macro instead of the VA
> macro.
> 
> The patch I submitted is still valid though, independent of that
> question. Since we're not doing voice activation we want to have the
> "full quality" MIC BIAS supply, not the low-power one.

Can/should we discuss a new sound API to make this toggleable?

Do these microphones physically connect to muxable inputs, or does this
depend on board wiring?

Konrad

> 
> It looks like there have been new users of this pattern added upstream.
> I'll resend this patch with all the new occurrences and will try further
> clarifying the commit messge while at it.
> 
> Thanks,
> Stephan

