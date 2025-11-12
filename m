Return-Path: <devicetree+bounces-237538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9326DC51D65
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 12:08:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8ACC14F96A5
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 11:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B92F2307AD2;
	Wed, 12 Nov 2025 11:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BWkNdcEX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bZkPjDn7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CFE30B510
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 11:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762945207; cv=none; b=GrFnHeLgTMROm7MUkjkSMLMHBbged0Inm/+B9g4A/p8Ea0CPQGoYeMPyJtXlCsFRW+zOZrl0FbvoLSbskV1xt/TmOZXXjp6RxRaDW556ZYxvzN3vvzwNxekC54tIQPssBAX9YjfLP79PsXdXI+HPVM2sMApuWyCUBcGdTZwqSVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762945207; c=relaxed/simple;
	bh=TFLc54SJ3hznOHqg5xQKimGAc2d0SPS0o0jmHMIaXiY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qDpJgCeI0INInltoaRDpcT13KQBBd5MeOFHyri06d0SijHCyiAhEz+k4WEEN7YHTLQmUMPIgsMn6AOOn3x/6lgRgbkcXsLIU3+QZIusInd6sy1qmhMD/AhNc5sw05pVktpZwbdbM0SJSGCVjcMSQFiG4XnyJlaDq/7nTG7W6iAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BWkNdcEX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bZkPjDn7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC9qja54053039
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 11:00:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TFLc54SJ3hznOHqg5xQKimGAc2d0SPS0o0jmHMIaXiY=; b=BWkNdcEXNbmvdMhA
	wpqPJkQIh0O7Alnurz09elQuFC8wHmaYte3OrEOvcuVvv0YZPVFbtFjqzJ8UkdeP
	r0G6J0q6z6O5tIE8eGuaJRg++Nzc7WFYSdyugY0BuMIkAQ6EAc99Aoyo5cbJZysH
	PiVwgKicNQgqwflDNDOU01bQjh4F/DKBHnuOO2pkjUP7BuvW16oh998Mg2Ub2usL
	wHIq4COTTLFZ0xtsyny0pPn5EUIsXc4Pc/JoBnVEs5QHUWC5VZVJfdOBP4ukokAE
	J76PP3DU1jQfLO3q5kzE/JWjklHmSVzA8xRomrLaZ0VpEWIix6ANU53NCDGKwsg5
	Vf0nRw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acj6v9dnv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 11:00:05 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b21f4ce5a6so19566085a.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 03:00:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762945204; x=1763550004; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TFLc54SJ3hznOHqg5xQKimGAc2d0SPS0o0jmHMIaXiY=;
        b=bZkPjDn7uY3xSkxWOWC/yaecrXng3m5yV46MWFgJ8EmMk1InJk/lLYQ6Y8u8kmp2Of
         X6bMDtStG5jQjyzQCxbod5hNiwc+WwLhQWaS+ErEHKxfyBRN9YahHI3OcI4KKsY+Wszp
         L1iBGMUC0YbjygCzVA5CVRrTWgtx5maH3mDqdJQJSdwwJz8OOrIyeyIy0Pfe+n+PF4I4
         bnw3GjEnYuBd3L+pNGnMD0EHbE3XhrxmT5ySYm0Eit7dLb7A+OenY9WQ9SvzppjLm9nK
         0zLDEiokKjkEVcs7D4KijWQm/dgr8AhUnCE2sb54L+pw+SwD4je7VOdAFbfq4jVoE0be
         8nkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762945204; x=1763550004;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TFLc54SJ3hznOHqg5xQKimGAc2d0SPS0o0jmHMIaXiY=;
        b=dL/iaJZDfN13gZU4ywKZLKPnQVk5Gs4MWlJ+ifW3iC9ID6N8x3dqmUNpx/0IRLm9zp
         qBMavabkRjzwn2Yacfb73c9SQYH/iSwg0V37FqPIgjCwbT1nlLXjKOn2WImVQdfX9/E1
         anMlzC7Gqs4D+LjNop14bg5cGccJfQRdmnKXC7ixcG69H1hUoNGE50r+VB1JVALWvcH/
         3QwN4Ti23pLwjvco5tOIzn+wD4sKECDpLyC6q+qjE426x5DGT1eLBVCHVlLfNSQRtCPP
         o3HGJImGXKDMigpAQiP3z7ObQ79RaYHhj8GjD5lJr87Cn7s1vq6Mo2T68CNcTcqZVpe5
         UVMg==
X-Forwarded-Encrypted: i=1; AJvYcCW4TtlZk4eOSR7JUkUDqFXvhr8YvJOWafBm3Eimc0X4nyZuer7vV76hPF/BHgm+b95jllEFx/NF/GF5@vger.kernel.org
X-Gm-Message-State: AOJu0YwN9YxT05v91pEohVSlBNqhO+QOQWNzmM180zYgkCVGD5xg4dr2
	xY8jlBb14KHzLdqGL9N+95AQlzJwfJJaarclphS/jBxC5+slujGYNa6GusL/udQI47nDmlQqZg1
	85NXDnYt4/+mmnhGV2rsF32XxhV/4GheGw7QgWE4RmDWBwnuG95Bmhs5/gYvKNQU2
X-Gm-Gg: ASbGncua8DfPw0a1MV2U+ArVkb1A0YQLMe6ZvZvkMO2v6bToTfH59T4kuBLuqr4r1wh
	Cyu/EgGpsgaXxLm1NP1Gk0osGEqapEAgwgdIK5HvD9mzX5YmBvC9LaMBiWBkyuCMlUgqJ8Lu2/3
	CVuK8hoqV8Dm/Z8JB65rdVsoZc8MofjMZK9E9pq53Jl6xBCWSo6ceFNINZEbf8ZUADRyuxCePUi
	AeU5mK8Lhu2hjUK5n7/n6dQD4mOizZjARGo5yZSy/tI2d8Mg0+hP1hT0jS8yH6r0+85McU1o91/
	qTHEYz+o6oFuKFlP254uM9uChYK4kxiEgMi+QcUKi8p/EqQPNXXSSA4FgCpItD8fSKxhWbhvu9H
	fMYSs9OhK5CHs0+eC99fLMR/QsmYW8E4uHdlktNUt8gHMJJZ9V6iyq1tr
X-Received: by 2002:a05:620a:2892:b0:8aa:8473:42cc with SMTP id af79cd13be357-8b29b8490a1mr202774485a.13.1762945204219;
        Wed, 12 Nov 2025 03:00:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFICFl1Bei4gFTCtGVVbdiZWnf2m+A7V9QinbX3AbPXIfmcfEzvl/LVm4b+p5mwxeUaPgchNw==
X-Received: by 2002:a05:620a:2892:b0:8aa:8473:42cc with SMTP id af79cd13be357-8b29b8490a1mr202770885a.13.1762945203662;
        Wed, 12 Nov 2025 03:00:03 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f713959sm15601265a12.5.2025.11.12.02.59.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 03:00:00 -0800 (PST)
Message-ID: <dd32a5e0-1dd1-484d-8fb7-8f6c506c8c83@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 11:59:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/21] drm/msm/a6xx: Improve MX rail fallback in RPMH
 vote init
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse
 <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
References: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
 <20251110-kaana-gpu-support-v2-11-bef18acd5e94@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251110-kaana-gpu-support-v2-11-bef18acd5e94@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: E7aMrss2XmJsSq144UsXiJRXXIetyjkR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA4NyBTYWx0ZWRfXxsjnDcwx9nkF
 JLA0kTLWNROW+LMUjVXS8MAdvBWbsNFIU5QqZcs4Ns5S0WkrJHkUtM+MgRSKdjMf14GIZxgWyRT
 LDc5Lf8qtEU3aTSRKFwBf0+31NosmJ5t9oDfyoAJdU26enRAMsWja+GFzgorQmxzeggm6iTIPeA
 Fp8lJ3u1HcvWain0+UqvjhN6uFMYz9w5eyprjToyyS+dVzmscwg3EAr61kp4PUuVUtb0AlYcL64
 r1y9Zkt+OlZv1W5DNkeX5rqY9n6fu8YOW9gr+Gn4udYdNWy2IsDeGj/SuBB9IHw2MKNULeLvRqB
 smOFQP94hnSU5R9Kvgnpi/Hh5+dhT4Pm7n8hwaI/4wNzQKydTmosSwLJLGejU2tCgd/Fit9iVRw
 zvEA5QXX1VbwrCUlDQZ92/mTIOiAVw==
X-Authority-Analysis: v=2.4 cv=f8dFxeyM c=1 sm=1 tr=0 ts=691468b5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=sL9_24WXM6ABxRF1V6wA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: E7aMrss2XmJsSq144UsXiJRXXIetyjkR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120087

On 11/10/25 5:37 PM, Akhil P Oommen wrote:
> Current logic assumes that the voltage corners in both MxG and MxA are
> always same. This is not true for recent targets. So, rework the rpmh init
> sequence to probe and calculate the votes with the respective rails, ie,
> GX rails should use MxG as secondary rail and Cx rail should use MxA as
> the secondary rail.

Is GMU always on Mx*A* and never Mx*C*?

Konrad

