Return-Path: <devicetree+bounces-170723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A89BA9C2D3
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:08:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5731E4C317D
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 09:07:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E34E023643F;
	Fri, 25 Apr 2025 09:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VK31//24"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523182356DA
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745571922; cv=none; b=RiV+fQMXHafHI7ibMjRaKWbkPp4x+Tg2b8HxL3Cn8y7zqQjyFafa2v8P+1eqLSuoLL512EImeeTC6z7Qbm2qB2VblxUuXiUDm1Pil1ImEG43/IxOu8jNuSkZDhp12xQBQ9KLQgsdt5DiRZXkKD2jA0wsmON2olLtJ5C2p5chPHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745571922; c=relaxed/simple;
	bh=sAcjzAuxsKz14wOdwYeN2vtA1y93MRiKA2xTQ7YT1Sg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WkVL0spnGhD+PTxVJNZhpUXRprLj7jnI5l2rUd2c0sOI9/zRsiqaDzW9JoACNZvT+/Zvbtla0WdI1d7mu/QuYr255a/0oeSwXOLsO23zy/eeUuBnGfOhismFEM7lafcuiH3NEpwv77b64a3HcvfKY2YAmGPb5BG39MQpvsQb0JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VK31//24; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53P8T7J5022988
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:05:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eBp/Sktf2CJhOpU3vnuL93wkEwguX+kdhkqReJ8UHEc=; b=VK31//24CTcu+YHy
	G2FqZiJIRqkAdrUZPK5ArXf1xd7AQWXw9b01MdWhNno4vzJf4o8zgARCjj1is6YN
	E0yQGAqF8VgD3E6Ejpb9Gg8Yi/96NdN2VSSGwBnxnFb01+3we8eIXzP5iftLyCXZ
	jVB9nRrgBuxQAIQ9qXrV2ZXbRhsBmt0hdL5pe/Zvi9FYITOoddNU2gQjJ6pUFdu0
	gJxYi8hZg0JiIwJma4DSo7opZPvLDDgG6PzFxmx5c61pw7xDh1lvivniIxRgVHEN
	JyLRIkbp4PdxYRq0REb/w8XJ52nFHvNBDp4C13kHg8XtUXbJcmySDiovK+lMdIIq
	mtHkQg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0gghu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:05:20 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4766654b0c3so4234091cf.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 02:05:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745571919; x=1746176719;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eBp/Sktf2CJhOpU3vnuL93wkEwguX+kdhkqReJ8UHEc=;
        b=OzbMN7XujvzejJVyBM6yQE/j70x0pds0tBl4u0Vr8aeR0um0l2BysdK2YA/uUdLTg+
         b2P2P0KCYooaF6YMEtm/firGjgRbQipyRQxrOzyS7dOBqP1NQ6uGm5xy2ju1sf4WBOuA
         5z4hs/ocjUWpBpNf2CacNDHV15W6GipMw+/6y3Zcsy268Pg2FL9hDmAe+vFMHqTef2kN
         zwymzeQTuJ6IUYWEmctX9xLin/CpGfApvgQ+I+Gak7f7pwoCkbSh4B/wkBb+cL/QlGF5
         aCnaSxxt931yGMPT9d73587f9UKsmxpZUG1bwvWZL845cCa/VXOu38JQCeagWbVTTnAC
         faDA==
X-Forwarded-Encrypted: i=1; AJvYcCVpihudA8gXjU7Z/zQlvnBTAuDcRm154v3bzCG3JVGILAZ5aVzi/9ErdQBttAN1LvfvJjV64/hYVcPm@vger.kernel.org
X-Gm-Message-State: AOJu0YziakBLmN7MR8z+ENkl68wBhkIFNqHFgBl6wsokwzr9XPmX7yRs
	1cXE5NJBOjv+0YlUPC3ICkpwFivrXvMiHh59HMAHbZLorWlRqDAJDMp2YUnD9yJizmUEQeVbpGv
	NwQnBvEPVDUf2DtqmhjWpIKGphxyMHZuO5BdIxpXv7X6nhp5GW7MotfkB44if
X-Gm-Gg: ASbGncuix33iIFIF2uKOV6lp9edypQC8YBlamWOaZWfdy8JDFrgPAC0MrPMYU+TA3FB
	Dz3eMggsZHjRO5dXLzYA0yqyZY7NLbcHAcPqIMaQ7Zex51G6BuFJvJLB/hPmZcU+KCsBje3g+LE
	aGduAKXVC+XPICR3OXnHetgDubjaEKUDci5vTcK04UDtrbJOAeQ241PKKHg2zbUjbiauX6d1n1c
	QKATXjZj9fMgmImWwo1WJKl4783yPXKCxaYVZjjxshLXVwFk7b23MI3IdMTvZ/kpFNMv44I1tAp
	us8UZu9RoqYmJIJ9YXU/v3ISwNxzf61Y9mda4dshf9eaZpE10ibEYHSLY3yNASVT
X-Received: by 2002:a05:620a:2907:b0:7c3:e399:3289 with SMTP id af79cd13be357-7c9607027e7mr84154385a.4.1745571918860;
        Fri, 25 Apr 2025 02:05:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZ4HrzculVF+OYsrWB/QeY6ey0mgBw9+RURDMEsUzYNwrj4ge+kGalkHQyVtPOx4qELkRAtg==
X-Received: by 2002:a05:620a:2907:b0:7c3:e399:3289 with SMTP id af79cd13be357-7c9607027e7mr84152185a.4.1745571918443;
        Fri, 25 Apr 2025 02:05:18 -0700 (PDT)
Received: from [192.168.65.5] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41bc41sm104938866b.24.2025.04.25.02.05.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 02:05:17 -0700 (PDT)
Message-ID: <c6cff2a7-4497-44b3-a019-60e3c6034d4f@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 11:05:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] drm/msm/adreno: Implement SMEM-based speed bin
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20240709-topic-smem_speedbin-v5-0-e2146be0c96f@linaro.org>
 <20240709-topic-smem_speedbin-v5-1-e2146be0c96f@linaro.org>
 <20240715200419.l47ng6efa25in6sg@hu-akhilpo-hyd.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20240715200419.l47ng6efa25in6sg@hu-akhilpo-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: t5xuM4RifIMcl7HGOEPHZo3mDY76GT3V
X-Proofpoint-ORIG-GUID: t5xuM4RifIMcl7HGOEPHZo3mDY76GT3V
X-Authority-Analysis: v=2.4 cv=Fv0F/3rq c=1 sm=1 tr=0 ts=680b5050 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=RALOh4QmxscuBpg08HYA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDA2NSBTYWx0ZWRfXylEJvxWy+1w6 SeOoJJfdffQ9T0w94ycQ/zAMjVhxflRnwZsSlMrRNp1wT8ruaS+o9rv2AnJVzptAL9HEwJIM2Eq DJMlX2pSYO1ZPCFt4wXZShsenybukszimWwk0ayynndsRKc8uQffQxlpYe1N9TsJPbj+RU2gM2v
 BiDWpqp6a6kdzBCcp5XvBhEvy7ImNUdgmdGOSPKqX5Zz+HZrKIbv8hPJnZkUFDYyDCYnsFU1YZ/ NQYE51taSQW1ZTugeGGaGoLfOJFWXoZAJWXgr6j3LAs0N8jQD4wDqCDqrGKa97zZ2V+W9pHdtZN Us2aVPr4SpJJsuq5zCZcMkkWCWe7McLEqDCGsS3JznTyQjCORyNIF0yStwLWf3NsUd/d/+t+k02
 c5Bja3YqZ0IdRc5vH4xhgwhMvFy6cqKHhd1PI3G4u6ohhYcGk5CYwoYwcQQu0336l6NTc2KP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 malwarescore=0 mlxlogscore=849 priorityscore=1501 suspectscore=0
 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250065

On 7/15/24 10:04 PM, Akhil P Oommen wrote:
> On Tue, Jul 09, 2024 at 12:45:29PM +0200, Konrad Dybcio wrote:
>> On recent (SM8550+) Snapdragon platforms, the GPU speed bin data is
>> abstracted through SMEM, instead of being directly available in a fuse.
>>
>> Add support for SMEM-based speed binning, which includes getting
>> "feature code" and "product code" from said source and parsing them
>> to form something that lets us match OPPs against.
>>
>> Due to the product code being ignored in the context of Adreno on
>> production parts (as of SM8650), hardcode it to SOCINFO_PC_UNKNOWN.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---

[...]

>>  
>>  int adreno_gpu_init(struct drm_device *drm, struct platform_device *pdev,
>> @@ -1102,9 +1136,9 @@ int adreno_gpu_init(struct drm_device *drm, struct platform_device *pdev,
>>  			devm_pm_opp_set_clkname(dev, "core");
>>  	}
>>  
>> -	if (adreno_read_speedbin(dev, &speedbin) || !speedbin)
>> +	if (adreno_read_speedbin(adreno_gpu, dev, &speedbin) || !speedbin)
>>  		speedbin = 0xffff;
>> -	adreno_gpu->speedbin = (uint16_t) (0xffff & speedbin);
>> +	adreno_gpu->speedbin = speedbin;
> 
> There are some chipsets which uses both Speedbin and Socinfo data for
> SKU detection [1]. We don't need to worry about that logic for now. But
> I am worried about mixing Speedbin and SKU_ID in the UABI with this patch.
> It will be difficult when we have to expose both to userspace.
> 
> I think we can use a separate bitfield to expose FCODE/PCODE. Currently,
> the lower 32 bit is reserved for chipid and 33-48 is reserved for speedbin,
> so I think we can use the rest of the 16 bits for SKU_ID. And within that
> 16bits, 12 bits should be sufficient for FCODE and the rest 8 bits
> reserved for future PCODE.

So I revisited this patchset and had another thought - maybe we could just
extend the speedbin bitfield to cover [63:32] and worry about filling these
higher bits in the future, when adding the platforms you mentioned?

Do we still have plans to use *both* SMEM and fuse encoding on them?

Konrad

