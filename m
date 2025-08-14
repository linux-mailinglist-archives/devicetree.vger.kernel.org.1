Return-Path: <devicetree+bounces-204611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE68B260C5
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 11:25:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 101CB17049A
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 09:22:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEA532EA14F;
	Thu, 14 Aug 2025 09:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RPoCU6+v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37097271465
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755163357; cv=none; b=Lw8RVcikEjsX8hJeWObsL6SsPioNFOn6Kb3QpD3k/vQv55SaKSm64zToBDy5AkiE+qbj931ZkIyiCzp1gh3fdG01zhrZ84XjMyyP5VdA3L8fkgsUmOILfLR9L/8QMLtKp2i/zwrl+zbeChM+TFV0HlypFrxJSOqnzkdOBtZ7uFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755163357; c=relaxed/simple;
	bh=s49HL7/bLHdHJpcalZIgVtBqRvt78dyeuJMWCJeAdHs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AMpe42rscfJIFVbzdQQjjFzNBg8Ei7c8vAryFgUfYAYjRvgpdvLnKtexsN63isSe/ByR5f9TUFTXh/LJmVsOleu2Btnz27VHxWocUbWytEHS98qnqZafpapUZK0z2qN9Yh4XiOHdoO9wnjsk+fEuGt5RGoSuRk7M8as23l/zl9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RPoCU6+v; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57E9ITiT012182
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:22:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QJ6/FNrbXINXT+uENEUe8q0L4h+wvX79RTpEz2Y4Ltk=; b=RPoCU6+vwR7AsMkL
	F1NA15aHXWFd5rt2OT3nhVLQl1Agw/lOQj3rJIcNG3Bsnt7JyybzpgJ1JLQbjm7h
	m7hBf62gmRaSqedMb2KGyPrume7iG+fCdixc6VXrYfo8+O02pmPsXYEu+2niEEnm
	hP6trzG/jbVlJlaNovE955XRaxkIEPLID1MmEfUwV7j9jYfIl8q/8Ee7bX4p2obn
	CmyeogD9UnLWk0wJB2YcaYNhTUjNylo7PJcXTO2tAxdoSTPHuojOAqgJHe7nIveg
	RhRAihZwolPu5jaEL6R3WAx9fNe7SSV67eyMAlU8CBI6HX2PLtKHZ6kjyhYlSNG1
	dBjuIw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48eqhxd9f7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:22:34 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b109adce15so2833451cf.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 02:22:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755163354; x=1755768154;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QJ6/FNrbXINXT+uENEUe8q0L4h+wvX79RTpEz2Y4Ltk=;
        b=Bo7bezbRbXPRAN0hdkUbv5sU3LJXaCsrO3GknUrsxYiElyLpYJXRAfqnl13gA+jtyZ
         rmxLUN4O10+WPzypNDitKhp750XSkNvjMkLFx2AYAECICIR8tyca0l5P7BA2il76JaeZ
         okpOXMHcLvFb7ZDsWz5zv1Y4x6u28/izHQLRc2Fjn7y1pT0iNKS6BZN/AL3LoNBJZTDt
         Cj9LY0PE0MhnKwhDhvKL4nHdsYsn28oKdIZWhAQ4zUjCdLZQICUvU84Qh1qjunqtNx8p
         h8sbaY3MFbXSb5c3rOzSd6H23Zu8fO9gi+2bScTvD4c1O2z4OpBmfAK2fjQwIFAmGJhO
         zkNw==
X-Forwarded-Encrypted: i=1; AJvYcCUGiQ/klvdAv8/fJGcVPKJMBMMi3ndUwwhF8hAfjhOwaaG1Wa6Z3NvKbKkHKAXPG65MH3FKR1a3C8ey@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs78sp2fsmvNrtMlY77WfTXvHs6sqvWoYxygOS6P2973cs5OIt
	0t68JMGlp/0ScLKiz3kIK6GPaDvzxiqWPgs2KQp8Is/8h43IBJ+62g/j00gNMGhTna5gGklhewJ
	16YocBMPuziBak6Von2AQaBR1X/XMQYe+bIyL6JYhn8X9428Q1NtBh347oP+U02rh
X-Gm-Gg: ASbGncuii/COAJQwrM7QmHAYceDj1jd8eSM5OkauMfnmfEBqDmbtg9d3VfFKmepFXmv
	ghBu5XG/9Mc4vG008xdmx8VVU3iOeqZeNzNjjgaBL7eQcDISq8odoZA9BObDkomm+uKaXutlhiE
	3FjUGLZEr/Jly6eFSdF/etYa8NCjKcUsFJdsEAndyH7hihdlcWIPIp1NCSIh/ZedWfiG6fgNQeJ
	IoQA3gky1J23SKd7PUYtVbPkYNFphncJwY5ebfF8e9RPgo/LI6/h4bYhmt1ihEZSFiPQHbAB6y8
	WyMw/2BBhK8c9sQXW4KfgAIsERV87gWgHvtsbgu96Yrm1kVimXnaI3j4CcBor+LTvIRTCxvh1OB
	/NpS+ZTgaEuqbokB+/Q==
X-Received: by 2002:a05:622a:110e:b0:4a9:a2d2:5cd5 with SMTP id d75a77b69052e-4b10aa7c696mr16254561cf.6.1755163354014;
        Thu, 14 Aug 2025 02:22:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHaovu+UsVZJS4lKl04sg931xBYBvbcoaHSVfWBwnxzo5yJfyGkDSpfa7CkedYAK8XXTLYluA==
X-Received: by 2002:a05:622a:110e:b0:4a9:a2d2:5cd5 with SMTP id d75a77b69052e-4b10aa7c696mr16254391cf.6.1755163353555;
        Thu, 14 Aug 2025 02:22:33 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af928c84154sm2476125466b.84.2025.08.14.02.22.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 02:22:32 -0700 (PDT)
Message-ID: <6683bd67-1f81-47f7-88c1-bdbf9a589bbf@oss.qualcomm.com>
Date: Thu, 14 Aug 2025 11:22:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] arm64: dts: qcom: x1: Disable audio codecs by default
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
References: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
 <5de00c2e-2b81-42f4-ab17-6db0f1daf7ff@oss.qualcomm.com>
 <c4a63197-9fef-4261-a0e0-9d57e009263a@linaro.org>
 <aJ2jUDaBAgeRcYfz@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aJ2jUDaBAgeRcYfz@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEwMDA1NyBTYWx0ZWRfX194pdR+0McDO
 U3Z9xBbTWFWcWOZecP3cHeFBO5278d+iVePhU9jILTHHfNsERJGf5sd7+2j832qujmvZTW7WGv+
 bSGE02ce0ceKE/35Ih1i42S28+bjbmd/p7M+MdXzRxBZMxOzR7PeobFe4/ukSEUr8bYRODgEQ2/
 F5+RE6dvFFP3llP+czxU2UMYZ8pslWqBuTEYDgd4PvlIa454A0grnS8Es8KEAUIJKr+vK4fmd9f
 fYq/Mt5eEb20LRBtpsCdsWEpXzAJo55w98g106UFDDF+YV9pzPhV0ZOgRzrQMwDrC955zfqhI9u
 /Dx/gJ+rJLNpCN/RqU889Mu7ZeDlqLVcXr1EKAFk6/0d8oJK6lc4SYcTj016uMm9SOVy41FS6yf
 jE+gsJJ3
X-Proofpoint-GUID: a56uW2GTB-AAe9L0WINDVSRRKCLF3pGT
X-Authority-Analysis: v=2.4 cv=aYNhnQot c=1 sm=1 tr=0 ts=689daada cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=jMPNYyMxw5xcEw4wFiMA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: a56uW2GTB-AAe9L0WINDVSRRKCLF3pGT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508100057

On 8/14/25 10:50 AM, Stephan Gerhold wrote:
> On Thu, Aug 14, 2025 at 08:07:17AM +0200, Krzysztof Kozlowski wrote:
>> On 14/08/2025 01:09, Konrad Dybcio wrote:
>>> On 8/13/25 5:58 PM, Stephan Gerhold wrote:
>>>> Currently, the macro audio codecs are enabled by default in x1e80100.dtsi.
>>>> However, they do not probe without the ADSP remoteproc, which is disabled
>>>> by default.
>>>
>>> FWIW if the ADSP doesn't start, you can't really consider the platform
>>> working.. It just does oversees too much of the SoC to even seriously
>>> consider using the device without it
>>
>>
>> I agree. ADSP is supposed to come up for every or almost every platform,
>> because it is crucial for USB and charging.
>>
> 
> I agree with that as well, especially because I have an upcoming patch
> series that allows reusing the "lite" ADSP firmware from UEFI for USB
> and charging, so you don't even need to have firmware present for that.

Really nice!

> The question for this patch series is separate though: Should we enable
> the SoC audio codecs by default? What happens if a board does not make
> use of them?

Then they (should) get parked (powered down, or re-programmed if
necessary)

>> It's true that LPASS macro codec nodes need resources from ADSP, but
>> still these are resources internal to the SoC. We disable nodes in DTI
>> which need an external resource. That's not really the case for LPASS.
> 
> The reason that triggered this patch series is that I was seeing an
> error from the va_macro when testing on x1e001de-devkit. That board does
> not have DMICs defined, so it doesn't make direct use of the va_macro:
> 
>  va_macro 6d44000.codec: qcom,dmic-sample-rate dt entry missing

Perhaps we can print the error if there's any sound connections, i.e.
if it's "really" used?

> We should fix this in the lpass-va-macro driver. You could take this
> case one step further though: What if a board uses none of the audio
> functionality? Apparently, X1E is also going to be an IoT platform. It's
> very well possible we will end up with a board that doesn't have any
> audio functionality. I would argue it's valid to use a minimal kernel
> config in that case that has all of the audio subsystem disabled. That
> won't work though, since we need to probe all the enabled audio codecs
> to reach sync_state().

Because of the resources being driven by the OS, I don't think removing
information from the device tree (i.e. cutting down on the plumbing
data) is fair.. Enabling all the hardware (minus firmwares) should result
in only a couple hundred kilobytes of added RAM use, but will get rid of
a huge number of edge cases where sketchy combinations cause annoying
issues.

> This might be a Linux issue unrelated to the device tree, but in my
> opinion an audio codec without audio inputs/outputs is not
> "operational", it should not be status = "okay". That's quite subjective
> though.

If the codec is present on board, there's no less reason to disable it
vs leaving it hanging, unaware by the OS.. cutting the power by hand is
at least predictable

Konrad

> At the end, I realized that x1e001de-devkit actually does have DMICs and
> I just need to enable them properly to get rid of the error. I only sent
> this series because I believe it fits better to our conventions. Given
> that I don't need it anymore, I'm also happy to just drop it. Let me
> know what you prefer.
> 
> Thanks,
> Stephan

