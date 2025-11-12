Return-Path: <devicetree+bounces-237525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A283C51C07
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 11:47:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B021E3A77E0
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 10:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6D3F3043A2;
	Wed, 12 Nov 2025 10:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p0Oz30K3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VEE83gR6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D08288537
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762943855; cv=none; b=sCFGsdLUxCc35dFClJBxrY5JtbIOWe7eKYh4EMVsSJ4Rq4LdQH2iRCDCA68AHJ6PbpESorG93+7j0d+dl4iLp3Qx46+SLDGuSPaV+jSUqqxFig966Mh5oscOXVYwS3FCWOhQI+j+dNdIkPEM54lV4ZDQN70SsFTzmTEfLcQH03I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762943855; c=relaxed/simple;
	bh=dx6zm7iYDFsu+uW4HxvS1RA6sCHD+I68rch7mq06/pw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CFFCRWcmVtMhmR3qWMiVXTfwiJe+RJosfh0z0u6kE39Ubi0fO+sKl/zvTCiu9VTIwfdbviQ7fMO2JeiULOayNvC6L99bq9QoFC6lSimZuXcmuUAY2IjtROMdpa0acqTy+MryNJfX0wqQ3BrJDegWqFTwqr6wmBTSgQCBkvxjGqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p0Oz30K3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VEE83gR6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC9ghAf1109118
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 10:37:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yEvEVaysBiDJvqu7zSpO/ven4wuPjiUA9FzLjPjO1Lk=; b=p0Oz30K3ZkEWwuzp
	iqiim70ICP+vQQno+zYJnXP3FiLNW/NqOujPtIY2anc++sqN5gaDBPycS0NGFyFX
	dpaoAHlUUwgvFGRmEFlte6Q8mA+lKrD9UJkcg1RWWZA4pZpilpZt69WCHX9kZaoz
	3iG3mxKT/mv/TWO1givhucRFRitwKYp92KbL6yeP7RnsGST1HSYK6DeJ8D2z78pf
	fLH8OFRFwugXCRlNnTYSgmUaLMsZMHKuIBbKB7GCEQEYfqshTC+LviPVOOA7SKdX
	CXobtf7q7JlojXQJW4Mn8oAhLcQ+baKjrmDIsLWcCpZC6lJXo78vrDERvDKQ13HS
	/bV64Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acqum05u4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 10:37:32 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b10c2ea0b5so29414385a.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 02:37:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762943852; x=1763548652; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yEvEVaysBiDJvqu7zSpO/ven4wuPjiUA9FzLjPjO1Lk=;
        b=VEE83gR6V7jtim28gTs/PCIFOLUi9MFEcCGi4zuC1QmE/TgAjPAAbv3G5b0Y74LPJ+
         dCGSwTwi0JD16zsuuRmg1js1utJv379J5aYUF1IVOC8+4j94O1NvH/NqQDs4hvh9ODwy
         UTArToPX9DjwV4bGi3mJ3UtQBqv6tv+CYkqCQGmaTLVSI88jwGgKqU9nvO3B7Bnw5Kp6
         ppu1P8wYMe084IIucPGuYKr7v/hhouW9mBeUUNWInBE/5w+zJFppt2JbkwhBYQqGbBmi
         eDEbAz/+/Dn2gN0tWC7v7J5KF0pr2KZqFd2xr4vfX94yJZe2APTjQ7SGmuRmL7lOWnZl
         UH2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762943852; x=1763548652;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yEvEVaysBiDJvqu7zSpO/ven4wuPjiUA9FzLjPjO1Lk=;
        b=rBITqsmINS4JRpRsEPQvU4bSNiwCEyeajUBjJBhjkLEHQ0iV7QkznyGUvXRcdl07Yi
         Hpa1ytyVOmkT+ZcXJCn/tq1wKrJG8t8IKzuPfRMqX/qSiA5N0Jrjz6XEiAV65msfKfvF
         177cog2HaHBqdDKLv4BgfVkfg7x4/U09pfBxrOPqGo1Fxb4UJi2rWWA5QRcu4tyiAPVC
         lc2nxbKC6M9y566D25MJTWvzQ4cAs9cedm7mSDT9spbCNN+spq7fr4zlgOz/1mlcqf4r
         0wPJ+b06n2HWvQLJDlHP26DHO9Zmdbnt98OnbBrx5rSUvIk/jJ8U1zNSUrPMiFeblck7
         74DQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCwLRyrsSz8I4aH4I8rYItlOmQY2Qj7ckVqF99jafrilHdygeUmCo0Y8KgwXskpwpHbgMksLmy0dBz@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhk/cB3iXDcQWrEmq9jbIUn6UnV2ekTRuiFM9+BIM+CIgu50XE
	/Q4YqvDhrj1edd6Lihoa6sLrrawoZJxPi8zWWctQ2c0Oq/Uybn0TosnlyyKMGhEj6NhiOc7GYsN
	j8/k+t2WzLwfVQ2vb+kEgB4RFzje57G+pj2mUDYXUjCy/9gLcpTqXmjJC6ex01loC
X-Gm-Gg: ASbGncsBQxCgkBfcK9EI16QNP6NhuD7s1dRLUdGpoc+YsdcBxI1ocimhAD2zC78ibT5
	TqLlXF5jZ1ANk+F2sedaU4BT1aRNvDwKTnfAjJoqoY25KAROygfBSly9i2hy6drSCWyuf5vcb12
	Ju5qSRg/sFFNzQRftJUNXgq1OJ9QgH5Q7G9QMWeYPHYi3QQo5OWrroaa4OhtDPSl1O6RxGBxag6
	JocF3W0ZHdFWOePSGtUw243xUpUDy32QgrXN6QIvcyw66c1lo3LesUR0CEwR/OcAPxbWqnLqrSq
	rC0XuG+QF0yS51pxrR9/h0PBe8CUoz8qqkUDHr/FIpKcUhCwYICFdssazWnkAvfuTRbR+4jAamr
	aow4+JZOQvQALStF2w4KSEyJkAnFizNVjibGbXSK1XfcBsxIP5RSGdu2j
X-Received: by 2002:a05:620a:c44:b0:8a2:eb35:8df9 with SMTP id af79cd13be357-8b29b96bfacmr174329985a.11.1762943852377;
        Wed, 12 Nov 2025 02:37:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHnodYPH8G4uSHNNb8nQWE1cE1kx1PmZfPb6CE/gBIDzIV9Um7jRFbvxAfRziignE7KgxTdXA==
X-Received: by 2002:a05:620a:c44:b0:8a2:eb35:8df9 with SMTP id af79cd13be357-8b29b96bfacmr174327385a.11.1762943851866;
        Wed, 12 Nov 2025 02:37:31 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bfa0f37csm1559184066b.64.2025.11.12.02.37.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 02:37:31 -0800 (PST)
Message-ID: <ae21a963-696a-48f3-af91-ee72aef4b60d@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 11:37:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 16/21] drm/msm/adreno: Do CX GBIF config before GMU
 start
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
 <20251110-kaana-gpu-support-v2-16-bef18acd5e94@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251110-kaana-gpu-support-v2-16-bef18acd5e94@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA4NSBTYWx0ZWRfX80//7VYLxdJn
 uW1Vn7sWl+6rv5GzLisvnrA4OHQlK0reO0zzVj4loPm9yeRZmZPsGVGrCxis+w94fmRDNwXJvDx
 IbkBs378hkingvPS3M7DGCukyDoOPimoXnN+oJTRMhBJ7SmJ3bHXtPeati/10Y+CjKtqavugpGF
 iN1ImDCrjstjw1RciHtyHbJMmTMFnOJZcTP50lKkIDGWCqCdpO3OzUkyV4MDe1bgeiVxEKg40ZH
 h2nPq8R0YL1YIn+byXN7dPYuVCibf/Si1x5aguCOh5tw9HdJxnkPvxxzuyQ9synG4DrpPScH396
 Vfury3DY8JdhRs7r0OQav5a93wzDkkMvPolPcUx5tFCnZysj9np3EprIboxyBgfRiDKkZ4pAEfc
 mtseHfGLECpOFo8sD1v4a+P2ixxVUg==
X-Proofpoint-GUID: 1fUXQHYQJ-zP86xqOQJa54io1KvpuRG5
X-Proofpoint-ORIG-GUID: 1fUXQHYQJ-zP86xqOQJa54io1KvpuRG5
X-Authority-Analysis: v=2.4 cv=KeTfcAYD c=1 sm=1 tr=0 ts=6914636d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=XltbfQAJAwjtl7jyp1EA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120085

On 11/10/25 5:37 PM, Akhil P Oommen wrote:
> GMU lies on the CX domain and accesses CX GBIF. So do CX GBIF
> configurations before GMU wakes up. This was not a problem so far, but
> A840 GPU is very sensitive to this requirement. Also, move these
> registers to the catalog.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

[...]

> +	/* For A7x and newer, do the CX GBIF configurations before GMU wake up */
> +	for (int i = 0; (gbif_cx && gbif_cx[i].offset); i++)
> +		gpu_write(gpu, gbif_cx[i].offset, gbif_cx[i].value);

We haven't been doing this a lot in the GPU driver, but adding a
.num_entries-like field is both more memory efficient and less error-prone

> +
> +	/* For A7x and newer, do the CX GBIF configurations before GMU wake up */

duplicate comment

> +	if (adreno_is_a8xx(adreno_gpu)) {
> +		gpu_write(gpu, REG_A8XX_GBIF_CX_CONFIG, 0x20023000);
> +		gmu_write(gmu, REG_A6XX_GMU_MRC_GBIF_QOS_CTRL, 0x33);

Either set this prio value here, or in a8xx_gpu.c

> +	}
> +
>  	/* Set up the lowest idle level on the GMU */
>  	a6xx_gmu_power_config(gmu);
>  
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> index 029f7bd25baf..66771958edb2 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> @@ -1265,17 +1265,20 @@ static int hw_init(struct msm_gpu *gpu)
>  	/* enable hardware clockgating */
>  	a6xx_set_hwcg(gpu, true);
>  
> -	/* VBIF/GBIF start*/
> -	if (adreno_is_a610_family(adreno_gpu) ||
> -	    adreno_is_a640_family(adreno_gpu) ||
> -	    adreno_is_a650_family(adreno_gpu) ||
> -	    adreno_is_a7xx(adreno_gpu)) {
> +	/* For gmuwrapper implementations, do the VBIF/GBIF CX configuration here */
> +	if (adreno_is_a610_family(adreno_gpu)) {
>  		gpu_write(gpu, REG_A6XX_GBIF_QSB_SIDE0, 0x00071620);

a640/650 family GPUs didn't receive a .gbif_cx addition in the catalog to match

>  		gpu_write(gpu, REG_A6XX_GBIF_QSB_SIDE1, 0x00071620);
>  		gpu_write(gpu, REG_A6XX_GBIF_QSB_SIDE2, 0x00071620);
>  		gpu_write(gpu, REG_A6XX_GBIF_QSB_SIDE3, 0x00071620);
> -		gpu_write(gpu, REG_A6XX_RBBM_GBIF_CLIENT_QOS_CNTL,
> -			  adreno_is_a7xx(adreno_gpu) ? 0x2120212 : 0x3);
> +	}
> +
> +	if (adreno_is_a610_family(adreno_gpu) ||
> +	    adreno_is_a640_family(adreno_gpu) ||
> +	    adreno_is_a650_family(adreno_gpu)) {
> +		gpu_write(gpu, REG_A6XX_RBBM_GBIF_CLIENT_QOS_CNTL, 0x3);
> +	} else if (adreno_is_a7xx(adreno_gpu)) {
> +		gpu_write(gpu, REG_A6XX_RBBM_GBIF_CLIENT_QOS_CNTL, 0x2120212);
>  	} else {
>  		gpu_write(gpu, REG_A6XX_RBBM_VBIF_CLIENT_QOS_CNTL, 0x3);

Downstream seems to set QOS_CNTL at the same time as QSB_SIDEn for
these targets


>  	}
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h b/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
> index 031ca0e4b689..cf700f7de09b 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
> @@ -46,6 +46,7 @@ struct a6xx_info {
>  	const struct adreno_protect *protect;
>  	const struct adreno_reglist_list *pwrup_reglist;
>  	const struct adreno_reglist_list *ifpc_reglist;
> +	const struct adreno_reglist *gbif_cx;
>  	const struct adreno_reglist_pipe *nonctxt_reglist;
>  	u32 gmu_chipid;
>  	u32 gmu_cgc_mode;
> diff --git a/drivers/gpu/drm/msm/adreno/a8xx_gpu.c b/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
> index 2ef69161f1d0..ad140b0d641d 100644
> --- a/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
> @@ -500,6 +500,9 @@ static int hw_init(struct msm_gpu *gpu)
>  
>  	gpu_write(gpu, REG_A6XX_RBBM_SECVID_TSB_CNTL, 0);
>  
> +	/* Increase priority of GMU traffic over GPU traffic */
> +	gmu_write(gmu, REG_A6XX_GMU_MRC_GBIF_QOS_CTRL, 0x33);

Kgsl (later) added this for A740 too - would it be beneficial to enable
unconditionally on gen7+?

Konrad

