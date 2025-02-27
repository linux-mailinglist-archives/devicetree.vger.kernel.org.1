Return-Path: <devicetree+bounces-152327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 85667A48AC0
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 22:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3486D188C746
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 21:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5362427126A;
	Thu, 27 Feb 2025 21:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="byUc7cDF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980E1204C36
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 21:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740692714; cv=none; b=NkNPjgBFgs/UD1edz10oEWLJrCYG5m7QcZMvTZAHfFxe3+ID8XtwdLQWt4SeF7vwO9U4pllbowpedgJ3I9QoUGkGN6Jn9YUUH7W6r000cbPAn4nnBNpCMp1yUTriq7cAknTVU5TMKoWDCfahp56ZmsRzyUdHg7clLH+nF8qpsG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740692714; c=relaxed/simple;
	bh=C8qfB6+wenyjSqnbDL3aZEselLtVlPaffdmp9czXrAk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yd356/RwbuFqlIoafmrqSvORXbZmYNLH5RpafY4CFVkXDVTK2/dAnJjnFK2e0L/m9h/ZqokZzsG5xzwnckrHwhGYsq8ZvtMgjx4ULPQ8Pu11mQpZZ02nlH4TokBPRW1HHO4H+BPpiY2cz/fGoKmXAaLpsCSVdc0AoA340GBWEys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=byUc7cDF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51RHfofc018544
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 21:45:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pPBKVO+2HKSAMc7Se1bC13bCptlwACdJvuRTzPMifj8=; b=byUc7cDFabjRDYma
	2ED9iqovTOEpSD2UVewCDm+HOWFJnTYLUgnX2puyPhPfHY3pXrB/nyl2fz3kz8Jk
	oGkDDrB0O80taq43Raf6XsMdF1ySqJthhAaHgWi0n6PchthQ/wPg+JFCvpO3aJ5+
	bhmdr2uX/lIzzgN8W4R68H10xaGt0JglEaTZm0ABT5f7AjOpLSlVY0oTHy2pCgXR
	Zbq+A4O/gcV2ha22CYHxZJkKCifo5gxez6cot/GNaavDw8gdnrakGn3o5eZyk1vS
	DWKcKpvNZbVhDL80H/XhhUDl4PjsKuXmcRNE1SU2TP8CGdqxkpkURIW7LiXjjaAe
	WpV01A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 451prn761f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 21:45:11 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e88b3d5d8bso2511486d6.0
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 13:45:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740692710; x=1741297510;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pPBKVO+2HKSAMc7Se1bC13bCptlwACdJvuRTzPMifj8=;
        b=SWhxiBD826rIObzObENK0e0PsJbZu1hQsSw149mNrpTG2ZKd5Dj+UhGlsHv7/OOhOG
         iA5h6RKEeElPUMZTVxFpH/0wJRlzBPtydRVrr9MIGuxRgXrFwhoVeZPT+pLhWM9lxg+4
         tOREWf6zN+QY6cDsnxjV4ZgP5Ds8zxhIqfKk83g8v/MIZ+C6PsKZqx1fqUD34xfVNSov
         KD8xXVHRRAJ9KddSzmPJLYvof6MltOjZe8j02SCBxHuKFjRB1Ar8tfkBEQNyyUcFgWsP
         bA4dcKMqHPThNy6rLQ5b6KLgHhdhePRiTbKYxCCmoiu2lyFl0gRUq28T+ZTSCElhYcoI
         kNKw==
X-Forwarded-Encrypted: i=1; AJvYcCUclsu6a4zUbs+pTilOUoNjxiR2sDaFjFBSmrqRTbynp1+z0zL0bHDZA8lt7arTvszv/o+KtjNeYg9b@vger.kernel.org
X-Gm-Message-State: AOJu0YyR6Bo4qaTtWa5CowSkn0zTgHzLI+97/J4bV0haDP6aQlfnKyLt
	qMoqEuSt62E7TCrUw1noE9g6SFTtTBzVtkHt5unZOZRXLBlGRVVRmubviF8m673W9e6OGUBFmzC
	cHL6TtV1wsw7GO+ZHRiL71jVtNxNG4JjZiHr0WOwTPlRGyvU4gHx1uiQaHQJr
X-Gm-Gg: ASbGncs+0fwCw8tBfit+zciAbzP4SvSNk8sdF7G0PUZQC5UxI0PykoOVCrKNvZ1DSrk
	LEHXEhZOjoS2lxX35O7cSxhIR6IQ4ZayTClcBmzKfEyZvxeRLJ/Da/9mupujqxjnxj2EK3DQeWZ
	Os/F2ItIW4KpUvgD0Kl9qKr2yOw+uSj7q5yB7r8vO8Im7ZiPIFmbSx673Exs/d8//Qha6JmOMHf
	h/XvgwKaDtSEKX5Lnuua1f19lkQQ/2kvjr5AHlrhTlr0eQ181y/1pfockzGnNMT8Gh+jtX7eSsT
	qODV7+KqjT20lSmQohpIKPZ9SRq/pNF+OX3cTO9/f5rlqlm85cI3Q7OR/E0PjeecoDBx6g==
X-Received: by 2002:a05:6214:2aad:b0:6e4:2e03:c54c with SMTP id 6a1803df08f44-6e8a0d9dac7mr6020926d6.10.1740692710358;
        Thu, 27 Feb 2025 13:45:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHL2H3h1fXY/M+zGEyzBHinGXz7e+qU8JKuFYeji+RiUMLgw7RNmuLoI3TzZXEd8LNSaq4xjg==
X-Received: by 2002:a05:6214:2aad:b0:6e4:2e03:c54c with SMTP id 6a1803df08f44-6e8a0d9dac7mr6020696d6.10.1740692709869;
        Thu, 27 Feb 2025 13:45:09 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c0dcb07sm182253466b.47.2025.02.27.13.45.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2025 13:45:09 -0800 (PST)
Message-ID: <234cfd96-04f9-416a-84ee-fe127f81f49d@oss.qualcomm.com>
Date: Thu, 27 Feb 2025 22:45:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] drm/msm/a6xx: Add support for Adreno 623
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20250228-a623-gpu-support-v2-0-aea654ecc1d3@quicinc.com>
 <20250228-a623-gpu-support-v2-3-aea654ecc1d3@quicinc.com>
 <7ffcc2fc-c783-49de-b01f-9ffb442d2a72@oss.qualcomm.com>
 <70c7f4fc-137c-442a-b65e-3743d7b1b736@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <70c7f4fc-137c-442a-b65e-3743d7b1b736@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: LFp22-m6yFtn-e_9EQVyMXXBgzb7o00R
X-Proofpoint-GUID: LFp22-m6yFtn-e_9EQVyMXXBgzb7o00R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-27_08,2025-02-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 spamscore=0 clxscore=1015 mlxscore=0 adultscore=0 mlxlogscore=999
 suspectscore=0 phishscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502270161

On 27.02.2025 10:06 PM, Akhil P Oommen wrote:
> On 2/28/2025 1:59 AM, Konrad Dybcio wrote:
>> On 27.02.2025 9:07 PM, Akhil P Oommen wrote:
>>> From: Jie Zhang <quic_jiezh@quicinc.com>
>>>
>>> Add support for Adreno 623 GPU found in QCS8300 chipsets.
>>>
>>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
>>> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
>>> ---
>>>  drivers/gpu/drm/msm/adreno/a6xx_catalog.c   | 29 +++++++++++++++++++++++++++++
>>>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c       |  8 ++++++++
>>>  drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c |  2 +-
>>>  drivers/gpu/drm/msm/adreno/adreno_gpu.h     |  5 +++++
>>>  4 files changed, 43 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>>> index edffb7737a97b268bb2986d557969e651988a344..53e2ff4406d8f0afe474aaafbf0e459ef8f4577d 100644
>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>>> @@ -879,6 +879,35 @@ static const struct adreno_info a6xx_gpus[] = {
>>>  			{ 0, 0 },
>>>  			{ 137, 1 },
>>>  		),
>>> +	}, {
>>> +		.chip_ids = ADRENO_CHIP_IDS(0x06020300),
>>> +		.family = ADRENO_6XX_GEN3,
>>> +		.fw = {
>>> +			[ADRENO_FW_SQE] = "a650_sqe.fw",
>>> +			[ADRENO_FW_GMU] = "a623_gmu.bin",
>>> +		},
>>> +		.gmem = SZ_512K,
>>> +		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
>>> +		.quirks = ADRENO_QUIRK_HAS_CACHED_COHERENT |
>>> +			ADRENO_QUIRK_HAS_HW_APRIV,
>>> +		.init = a6xx_gpu_init,
>>> +		.a6xx = &(const struct a6xx_info) {
>>> +			.hwcg = a690_hwcg,
>>
>> You used the a620 table before, I'm assuming a690 is correct after all?
> 
> Correct. a690_hwcg array has the recommended values for a623.

Thanks for double checking

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

