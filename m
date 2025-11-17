Return-Path: <devicetree+bounces-239405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A6885C6493F
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:11:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C6B553649D7
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:04:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD771333441;
	Mon, 17 Nov 2025 14:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fDTM5GSl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BhouL75c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5838B3321A0
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 14:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763388191; cv=none; b=iAbm3MWw0aMYVnEVqVyYwDFN139+NMkURelCz8Y0K+fAs5aFREykEG3WeKzSwZ9wcbnMD0ZrfurFGmYwmc5ByU4FB9Nyv0IlrTeP5gS8tiicw+g7M6V5uXaJcvOXl/kXLMK/jUq7wLYW0u07jIWK3Ndos7rE5cc6Z680Ocrh9Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763388191; c=relaxed/simple;
	bh=zBQN61tksf2025UCtOB0ANMv1Fzpi+dfcrv4CPkZ9hc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VfNuLjQm8rFL3q8z2E0KUawjKXECHCHFP0eLjZrqQjugrAlfD9ns09ZOEfcVB2xnPTQ6qwA6IW4oUewSxftakCuTNcy26o6kuv5Yl6m8iw5O4W1ls5Mw5FBwSE+52j3vyM8liOt62sUi7lDzB9imiSXdarzSAkurP8rL1K4MmCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fDTM5GSl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BhouL75c; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHAC2uW3571499
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 14:03:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A4gh/KiDMiXP6GtsBD0jV44i4prQwi2UZjkTQnAGpfo=; b=fDTM5GSlpZlpE+F/
	Yll2WAWkbz5B8FIvh+LLqnK1wha3+V5evOq5StyQ7/yXVwQT99HwrK/QQ4DYrHib
	YtYZPmUrhDwQm775l1eMYeL7T7GtlcSFk7oBYn7+4zKsHI6uYcAVX9OQxSwoefKf
	GjtudtcbJIo83ojArDZNAUoHitTo40vVyCMMoa7qn+VvQ+tsj/XAetXK1E39DJGe
	347eDqJ2DEZjLYzsHIsLIm15nbZSeUeOoQMsLTF8ZU1pYIgtJZXDewAui6xuE33p
	LG63nW6tGf1brkpBHO8HJtDS6ySSN5V9rFmrd2bcDUCkKiSzLN/dM+qUNgsYgVAp
	t+ki2Q==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag1rbrm3y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 14:03:09 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5595ecf10deso307686e0c.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 06:03:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763388188; x=1763992988; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A4gh/KiDMiXP6GtsBD0jV44i4prQwi2UZjkTQnAGpfo=;
        b=BhouL75cjtBzffRI1V7cgsDvabsC90vQvkhy/x8sfFV9mNLG8KxRwYIQf9rIO3LNYJ
         HR/xjOp53uhcdR/jiI8IWo0YVzeDvesZyyalA27d5vE8jClFteOQH1BTWWpgt4bafvgO
         0ZU6FIjgdPVg5gMPHwdg1uPu8foF1itnVYqQ3+SlceH1lI7T7sj9EOiQ3fkZLY9QS+/8
         GpM3LU2P7BA0c8lXlEhD5b4paWHAYq2ewxPCrrGuC58wpMabjjA+rVme4QU1Lc2Jw/o4
         fHl0Y6QJe6OMXiy8vsLqWP1DcErSQl3zIWJeVzY2zm7aJ5ORpya2xJ8vmGogxJVAROu6
         6jAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763388188; x=1763992988;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A4gh/KiDMiXP6GtsBD0jV44i4prQwi2UZjkTQnAGpfo=;
        b=qEU/mcyTO03Gw6RRBWcetRHdGd208FCKq3qbDLCPingBryWveBSW0KuajNFb5NT5Kl
         pZ2qZo0v6DwaXT5/3dIzA9maZd20r1tOfa/80m4oz9hx67qbSqMyaKYtu3JENXn6ITu6
         WAtgspJFM7sIchLFO4e7ygLUCGcOj9FvC03ysokgbaT3/Uwkq1DsqW7WyUep7cE8cE1O
         P7hrS8vtyXHaQ0wTIDZ/D238myCWYgCn2Q72i4bsKx/cc+MOgAl+iLD3AnjdMMISuiFQ
         dTOprlGDId1FwBTBirs9VvFe1m8FGv6M9WqqeCznhHRbf8o2kUaTwCYRkgLQJqmDys+V
         TcpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzQBHTvrt3MsHmY13OsXY7QmRe5jOTb+bf57nQ+pOPImTjd7wF4L65RD+1FgVIl+6MO8NFbLOUC/8b@vger.kernel.org
X-Gm-Message-State: AOJu0YxGqB4VoztjjrhpTOGw/MLrKB4eB3NRl6QuK3U7Sckc3xgTEWib
	IcpdIjVugteYs5TT9fxd1RTvo8i0LHlFZOV2bRN2bExymKpustq/wY3/Xme4ZthMpQLyDeGpkXj
	gp477kGqF4sSd6ZsUE/5VitSBUGm7P/cS73i72snEgsLpJ5/g9QXhfec+fJTVlRK0
X-Gm-Gg: ASbGncuDGcDm1bGKp7pleKQLFi87YqdUiCL102hTJ3RA0nF8Yp0eC7uh3zrrfstB68Z
	HOmBWiEBWUfV06wQLd25m+gZJ23t/UPe3wDadRd872qJG61dKgeBXpZl0hoU3LoF0PeBkPE4kjp
	RIxT+QA6/lbeg9aOHzg3VBLVr46rneYI2cxoQ3hafAku/L1C7xS4/zJ3pg7oWa12Ba+Rx2ds6U8
	wSaqIeM22dhAyKfwgPiYoWylh15MWerKbwtBGtnguFmwbz1UXV3X6yd7V6POU9q9Ir71TxRuHaX
	ALZ+kUt2x4PztkHJQvGNoh540jSBGqqz3r7Tif/xUaMXrKspErQBo0w4WuDdPHilKtoZnn6Zdo6
	pgYz2mBnDsiREsfWZqQWkOebgnxz81yjq56gkWuixvH4337+ixBfWW7h1
X-Received: by 2002:ac5:c5ad:0:b0:55b:1668:8a76 with SMTP id 71dfb90a1353d-55b1ebefba4mr1296472e0c.2.1763388188153;
        Mon, 17 Nov 2025 06:03:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEZZTHOOdfEqa9ER8hemxiu6HJtbROxsxg4EQg/rySnc9YSfY+WhVEbc35EghFcBXcleB9lbg==
X-Received: by 2002:ac5:c5ad:0:b0:55b:1668:8a76 with SMTP id 71dfb90a1353d-55b1ebefba4mr1296341e0c.2.1763388186109;
        Mon, 17 Nov 2025 06:03:06 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a3f961bsm10428680a12.14.2025.11.17.06.03.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 06:03:04 -0800 (PST)
Message-ID: <922abf06-c75f-45b6-9653-492a00d414bd@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 15:03:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 14/20] drm/msm/adreno: Support AQE engine
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
References: <20251114-kaana-gpu-support-v3-0-92300c7ec8ff@oss.qualcomm.com>
 <20251114-kaana-gpu-support-v3-14-92300c7ec8ff@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251114-kaana-gpu-support-v3-14-92300c7ec8ff@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: jIgL-anbWEWI5dkOzCYvLWAnhGKNH99M
X-Proofpoint-ORIG-GUID: jIgL-anbWEWI5dkOzCYvLWAnhGKNH99M
X-Authority-Analysis: v=2.4 cv=FPAWBuos c=1 sm=1 tr=0 ts=691b2b1d cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Vi7wF31NLlcTFLqBoF4A:9
 a=QEXdDO2ut3YA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDExOSBTYWx0ZWRfXwmh1MJm/3MZm
 +9Dcc0drzqfFCwuIkq6eZGeY/aWr11XBBmsXmNFlUvGuIJv4PavS2ezjocpKCpDBVSnc2MrsOBp
 stATilnb/uEQDJJQby1P0ZqXa55idjDSOXc7CAA+nITKuHimmNJdFb3YEU6VG50kLWexppLLovR
 a9QWsqzdRtjzCN3H48asGhVJLa27S92D2+GrL5vxljKyakT2IgGrOnXDkbb7L2fJxnxPQIhNqID
 M9rNskLcoTdGFRPkpmwbKsWXJaIhpwLNpLZRKnEooPcZB5My45d2FJBtC1bvBQ0JBqpEPBGepUS
 b+xjUvsZVYyBD/1z+OwUC/e2dkKo1z9i7s7uoQpoJ4PeKqbAe5OpjqehtHXEBdmGTFLApdx23i+
 YBvrnIj4EDVEAk3lPq+ahb/CFTPsTQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511170119

On 11/14/25 12:29 AM, Akhil P Oommen wrote:
> AQE (Applicaton Qrisc Engine) is a dedicated core inside CP which aides
> in Raytracing related workloads. Add support for loading the AQE firmware
> and initialize the necessary registers.
> 
> Since AQE engine has dependency on preemption context records, expose
> Raytracing support to userspace only when preemption is enabled.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c   | 17 +++++++++++++++++
>  drivers/gpu/drm/msm/adreno/a6xx_gpu.h   |  2 ++
>  drivers/gpu/drm/msm/adreno/a8xx_gpu.c   |  3 +++
>  drivers/gpu/drm/msm/adreno/adreno_gpu.h |  1 +
>  4 files changed, 23 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> index 20dbdad6e2e8..ef79f4cfb80b 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> @@ -1104,6 +1104,23 @@ static int a6xx_ucode_load(struct msm_gpu *gpu)
>  		}
>  	}
>  
> +	if (!a6xx_gpu->aqe_bo && adreno_gpu->fw[ADRENO_FW_AQE]) {
> +		a6xx_gpu->aqe_bo = adreno_fw_create_bo(gpu,
> +			adreno_gpu->fw[ADRENO_FW_AQE], &a6xx_gpu->aqe_iova);
> +
> +		if (IS_ERR(a6xx_gpu->aqe_bo)) {
> +			int ret = PTR_ERR(a6xx_gpu->aqe_bo);
> +
> +			a6xx_gpu->aqe_bo = NULL;
> +			DRM_DEV_ERROR(&gpu->pdev->dev,
> +				"Could not allocate AQE ucode: %d\n", ret);
> +
> +			return ret;
> +		}
> +
> +		msm_gem_object_set_name(a6xx_gpu->aqe_bo, "aqefw");

You need to unpin and _put this in a6xx_destroy()

Konrad

