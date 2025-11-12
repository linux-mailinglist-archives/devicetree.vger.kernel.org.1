Return-Path: <devicetree+bounces-237541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 98210C51ED7
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 12:23:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F25F34E4293
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 11:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE64A30BF73;
	Wed, 12 Nov 2025 11:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AbFmXmBT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H9Ft7HR2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B0D30B514
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 11:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762945669; cv=none; b=Fu6cI3u+PO5PmUcMxT8wnORX0Gd9grqZsw5C1o2yscrBghmqD2MTkjUmGVuXJVf93bQ0dU73SFEmuqmUIPNc3mgnqKKdrUpJW/mWI0FYRJcKFcSaIxRgJV8nNYjAPD9L8kCGz58PpXzwZ72kSaIccqkbd4XINVbdEWqpzGG4O5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762945669; c=relaxed/simple;
	bh=GHAbyl4yETBScmi+Spn18VZXHiQdet69r8rooFugvlw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FGwdcwKGuAxEvBPvRWEFcgsgRf/FHGKlpaW632b/LJO/a0m9VaM0vapN9L3hwzxSes2v5FFzvEdjcg3hm0qKVtz0wIm/Jn/TnSWoF0/9x8hVj5h5sD9MGoDbqx/Q9gJXsIDFuRq2NunFO4yvqj5WWn9Qg406AgFoF2YaBAI1yQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AbFmXmBT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H9Ft7HR2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC6SqqN350358
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 11:07:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fhpeU9U5S/hGeJg9f9bTT5WPcsYN6w1Wj4PWqyqzdyc=; b=AbFmXmBTta7gKjns
	M54/EkecUo+B6cPlccmI4n5Aj9/wqRd2an+bzFJ+ms700a4OajXZeUEs0gXWQRLc
	etsB8+PdB0dKId8+lOeFMHY7TYoDx1ABopbYg7tBtpG6H6xL3S35HNvLdVM/zgAq
	yfYjYPBDelBKRb0j2yq5sVRydVg/9Wase8IyulhN4dEeUlmoH2zYiu39rd5AJymA
	5IfH9hlH087LSQuSPibn+jT/AI985QAaVn+au/GJ6aMhUMY+rDwa++KEfRyjYwxK
	dXGbWqcERW93lnoYSWvH1QxycRclRX0ECjE89dnAtVJyZcIgPp1aXQ1KNS+XJChv
	rcbN5w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acn0nrycr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 11:07:47 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4edaa289e0dso2646341cf.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 03:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762945666; x=1763550466; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fhpeU9U5S/hGeJg9f9bTT5WPcsYN6w1Wj4PWqyqzdyc=;
        b=H9Ft7HR2e43dvOcW3wqk2JMmR6GSZqe8kUCXKq/LcDL22M8gF2iJ+IgYSqg8XHDkP1
         7wP3RmgHgdidmGODm39oP6mumFX2+sv4ODN/PtpmE4At4xO7FpbybqgLtMQTFf92T7y8
         OQ+c0s4BuH+Vz9H1mExiQsQax2RHhcY/iW+y0Rz76T/wYVzZRqySSR1/8BAbIuoS1Agt
         nnKCPj9bzryFJuKtyskr59TXTOPCg9QRYJD6eOPU6jZuk/V6PCTKdc763F/+mnDoDIX7
         AHh0lb2UW7iVI3XHVNfoaK/6wjKOYFh2Dhgvf10/xfmCpdimWcNdEDcZnvFilkr1KMRY
         FQAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762945666; x=1763550466;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fhpeU9U5S/hGeJg9f9bTT5WPcsYN6w1Wj4PWqyqzdyc=;
        b=Yxd58jE5VSbujtKW7jF7dL9028pXSlVRCTio4en+uYoZzrRF77J4ciizI0D181cvCP
         ox7e1RrgCEm32b3IIKUNPvcs5dLEpw/HVxJYD+o5EQLBBOKiJPbL5zwnrL2Q4wZONfZh
         tlDEkFoWLoKE4ZfsTHG0Ov68i11iKsHpqcN0XzZmuNm0rMMn4YVkgSdXAshPwFKWdenI
         i3325n/b+ShGn+Y2eyFZDYcRYOXT+TBML8c57K+ZUmN3gsvuYSKQz1FThKAe5o1UWW9w
         tuCbd3Uik8o5lMco2c+joNYepYKvYVOgFpYSxQJrft+M0ypVdiq1g5ZqfTdhG2UswDng
         FRQw==
X-Forwarded-Encrypted: i=1; AJvYcCXVf5mo7VGEXEbKk+gnxF5S5KbDOGsMNHQMIgZmQ040acLdkS8yop6CLvgjYVEQxUMPcBOeC6c+OZQE@vger.kernel.org
X-Gm-Message-State: AOJu0YxVOspxV4UlTC27D9MqNx2Phw+1VF7dguupI1c3D37Ga6MzVtKS
	nPUikHg9thkMywBLF/x+QqB+Iom3aOOjsTa27i1E78B8JUESuBJ4pPWB3HmZdQHhlgB57oMLOtK
	444el0GZo+APTfKTKEzXotPp3RCCaC1qWRC+OPccuwx1qjeOZFN5PJMpzfnqNJaD0
X-Gm-Gg: ASbGncsrAUYBvs9SeDbgxgDMhVmfkXFSlP8NT+AxdXU60bFdDDOZkxUqfGrirc9KeKR
	vbxfkQwSLO7EfsiF5l5Mrsja2Y9Jq2XVanI0XiQj3Met+ipgWJLHB1THGHpmDx3amcfaqGPxPRH
	IqnPepvOAuLHqGGkiwvWpv0dKCxUTJUjO4Zd9fosETrSu0wOAN5QEjBZc6i88H2fsoS7c2a5Onm
	MNRhG/aa0OzjHXpwH1qfe9EXIzHUi/AsipL4l1A7JzEMm3uWVjQ0KXw5H12asfXHlxnxzd+ZTep
	UwzL9dBFRpJJueD4Q6WZ65pHzN2v6NKcOQIYr3gpQ7/Dnc91XtC/yQzqc1Wn1JAkyEqu4z30SRZ
	GRO45luSMKL1J5ojyjZ8Z0ZERlJ6Qmw3TKpA0gYYBpuLiIH+sPbfN7Wnq
X-Received: by 2002:a05:622a:1a9a:b0:4e8:a001:226d with SMTP id d75a77b69052e-4eddbcc8ccbmr21834591cf.7.1762945666345;
        Wed, 12 Nov 2025 03:07:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEsThee/kJ9PQlX1eMjNVcf3pwMggayYjNqOtdauF4RKz6aTdQHNiSCZ2A6kK70/XwvxAErjQ==
X-Received: by 2002:a05:622a:1a9a:b0:4e8:a001:226d with SMTP id d75a77b69052e-4eddbcc8ccbmr21834301cf.7.1762945665887;
        Wed, 12 Nov 2025 03:07:45 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64165b2aa03sm10031978a12.6.2025.11.12.03.07.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 03:07:45 -0800 (PST)
Message-ID: <1202b66c-6d4f-4909-a010-7e5e3ec7f0c7@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 12:07:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 14/21] drm/msm/adreno: Support AQE engine
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
 <20251110-kaana-gpu-support-v2-14-bef18acd5e94@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251110-kaana-gpu-support-v2-14-bef18acd5e94@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: agwXqHzcRdbZMaPhL7uYfrCIS0K5jp9W
X-Proofpoint-ORIG-GUID: agwXqHzcRdbZMaPhL7uYfrCIS0K5jp9W
X-Authority-Analysis: v=2.4 cv=acRsXBot c=1 sm=1 tr=0 ts=69146a83 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=XSWwlsXGtsdNaMXbhvkA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA4OSBTYWx0ZWRfXxLebXJJ+GhGD
 8xkOXSaTi5q4HxpgemVlxbGEJ2AvNUj0Dxgbh+FKxDSUMnCEMW3tM5rwE/4xRZXG1MPvmS2c1Wk
 yGmzpOtsW136imJj1OI5EENhdX4pyEYj+2iA6JvUZKsO/6sBBdsYAt7aGvQVGNHx6H5xzn1bE6J
 XeodjysnS/MeWC5918qCGZhCaCcsnWYFD1L5TNpRJP9XWCZ02Nf6+HEfyif42B7AnhoPiOaHmQU
 3cUQd/bochoQRb7MdtqGj8shli1TCrislkdWqWhBFS0wFCN3ZD95IGmJOl2aDLGjMpV4ODM5oN8
 ohck3Ccmwa91J1NQiLkdM39nfNdYwMqT6cXijQ83sy77hFW7ifPTRGggv8qThS7qp3U5h6ye7oV
 rGr8ksO2gSfH4qc4lH+ZL9ENir4W+A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511120089

On 11/10/25 5:37 PM, Akhil P Oommen wrote:
> AQE (Applicaton Qrisc Engine) is a dedicated core inside CP which aides
> in Raytracing related workloads. Add support for loading the AQE firmware
> and initialize the necessary registers.
> 
> Since AQE engine has dependency on preemption context records, expose
> Raytracing support to userspace only when preemption is enabled.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Side question: is the AQE fully functional on any gen7 targets?
A750?

[...]

> -		adreno_gpu->has_ray_tracing =
> -			!!(fuse_val & A7XX_CX_MISC_SW_FUSE_VALUE_RAYTRACING);
> +		/*
> +		 * AQE requires preemption records, so disable raytracing
> +		 * if preemption is not supported
> +		 */
> +		if (gpu->nr_rings == 1)

"nr_rings > 1"?

> +			adreno_gpu->has_ray_tracing =
> +				!!(fuse_val & A7XX_CX_MISC_SW_FUSE_VALUE_RAYTRACING);
>  	} else if (adreno_is_a740(adreno_gpu)) {
>  		/* Raytracing is always enabled on a740 */
>  		adreno_gpu->has_ray_tracing = true;
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h b/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
> index b507ff4e1756..7921b4a68937 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
> @@ -58,6 +58,8 @@ struct a6xx_gpu {
>  
>  	struct drm_gem_object *sqe_bo;
>  	uint64_t sqe_iova;
> +	struct drm_gem_object *aqe_bo;
> +	uint64_t aqe_iova;
>  
>  	struct msm_ringbuffer *cur_ring;
>  	struct msm_ringbuffer *next_ring;
> diff --git a/drivers/gpu/drm/msm/adreno/a8xx_gpu.c b/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
> index 78dcb9bc3377..2ef69161f1d0 100644
> --- a/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
> @@ -616,6 +616,9 @@ static int hw_init(struct msm_gpu *gpu)
>  		goto out;
>  
>  	gpu_write64(gpu, REG_A8XX_CP_SQE_INSTR_BASE, a6xx_gpu->sqe_iova);
> +	if (a6xx_gpu->aqe_iova)
> +		gpu_write64(gpu, REG_A8XX_CP_AQE_INSTR_BASE_0, a6xx_gpu->aqe_iova);

I believe you should also set CP_AQE_APRIV_CNTL per-pipe

Should we also enable AQE1 while at it, to reduce potential backwards
compatibility issues? Would that require solving the iommu woes?

Konrad

