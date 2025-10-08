Return-Path: <devicetree+bounces-224518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6CEBC4AD1
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:01:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 98C2D1896FB6
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:01:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C101F2F656B;
	Wed,  8 Oct 2025 12:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eIMRSor3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5486F2EB84A
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759924873; cv=none; b=lXlIV3LVeixgOj2KPrXHdXcWf5lyfdxfQinqeLSS3/bQtwRaR8b06XBj7FEKioZpzscmF834bhjBfykLocfQ8tHca0XCTe5SJPf5swRwgXifhZiNPZv/ITln0VKa9qzW7fgKVkDZ9WrQaZptCX8ZbRUwUQyXYJl75+qnKhIAwDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759924873; c=relaxed/simple;
	bh=QfUT1DtV9d+QVs0WgbumZs0pdJWkf14RDIdQPku/mm4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=momoolIL37fULkqc2wtZWJ78PNl45YsUMAW6fUS6MvVydRcZJIwqbydwBpz/kLLYtLXN4t1yNoEx2hd5J192E40hRp9YZttGhedUrgD3lCoF7Q4pRcKGI7pm1ON/dEIGRsUBYyGF9tPss/vwHL2FthQNKL+uauXhZLa5J/5fAcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eIMRSor3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890T0p028979
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 12:01:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YUe30woE5xEimZOnT9raXvhiVzii7F5/lJXV/+rQmpU=; b=eIMRSor3s8f0HqdA
	pkeP+CNNNqq715YMCOKDIEvIXhzK21rEAyE8AKxeGV11sFtZfcRSEWqiWYOV6l31
	CLFJOgcKqXCKvLzgnXLH0MLaL1IiJjrT58mDzQvQZWYfiOmU1MSSdWVsnCF/0GmF
	24SSvVe5dkZRObBoMxoeoc6XnfDZJoTq5N5OC7hOgDuV2LrGeLjqslpcpdvtsSBv
	PaXMMVUSqf8eH7v6YNIhQ2uNOdysGj8ioXnzOt1TGs6jNoNQNQnjGVfPLyCMnGdk
	V1EDZok9m9WVpHqCc8TtZuOo+U/kvJtxr0J1HRlQ2GVaXM6DoXflM1gj63gLWR/X
	j5vGwg==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49js9e2gkv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:01:11 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-8e48b01c70aso103219241.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:01:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759924870; x=1760529670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YUe30woE5xEimZOnT9raXvhiVzii7F5/lJXV/+rQmpU=;
        b=E0AitCBFNTMkuBJ9kaIS4E/PNhrRUEK/KRadb/dkFPU1f9GrPSz4tigmJURRt+Tan4
         rdWUejM81evBcbjGX/uVGcePCbpvS4hPsxOlnwRSP2ecVz0qKqhwtTUAnBSaWOt5Zpt3
         DUsm9T++Tiu46WWUBJkuyrm9P8/U58wTmatfbOHIj6cAwcvDfIxAwyPXycYR2o64/Jmc
         bPbvgDHJ0atzTg/PoEYQfCwCgvp5uPcmWsFzkhFsiAOhAv6UjFtbO0MP3XjR/P6URl4c
         w5+CtsTUgnRxynXXezNttQGCG3Q3JaJlAO7Yzw5LlMV87DsE8AUXs7SnGPID0t+O4Jh0
         OZuA==
X-Forwarded-Encrypted: i=1; AJvYcCX8BTmcE2k0DBBFADddYSdlInV3AjCy32hdsaan29g8Cyo5aySlsxyF+SJJ7VP2LcRDvS9v7xd895x+@vger.kernel.org
X-Gm-Message-State: AOJu0YwAEB0EuI/0D4JY0obZ3WIAIPuZOxc5Qv69tfCgCVNzDgjD3JLa
	kbg4ikGLKd88yw2o8c0E8jBYMHpD4YoMQ9S9LFiWYuVSvrE9jkptij/fkz2aCbyLnzECtKPS5RX
	KDAXFDmd1PsTv1p9fbdOeHz0Pk3MEzYNjyOUvIN7USQuH1TpYqdxt0HeExfVK2BxK
X-Gm-Gg: ASbGncvA8uUJsQ9twbyBo7l8hAYS4PT+jSq9PKT7JBVky9bwGBeNs9U6QwHeaSh2Df4
	WNw0Gi8amFYbWsfU8qrpLHyJAIrQXwLe0RZQKxVoWAxOi0lwAFJXHCF6lUcLI28ECWdNDZWXoOP
	xxh0Vs0RRsawATN3lPHjrCxwo9i7lW3f6AOly4+jMxyoiVt99bKciGlwSxOAS0FU9jgwOSEqUgh
	ZjaHQGJeWXpLodI33MuUaaMB8vS8p6l1qr5rCVcex+wBTHItAq+jWM4MEZDdgcbKw2V4v/EnR/W
	GrGKnCPNJTmAQXyoETXlAa83+dAHQqSeh4fqDHH3w1sHKnBDnloEf6TDFoCnuHZ+cWjin6omYJ4
	bYtWYmlLi4+CExHQgPtnX9+t4XtA=
X-Received: by 2002:a05:6122:6c01:b0:544:6d56:eef1 with SMTP id 71dfb90a1353d-554b8b9dafcmr382783e0c.2.1759924869680;
        Wed, 08 Oct 2025 05:01:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFT9kYombhVn9vLwV8HVqDP5rHDdMKek8m1Ph8xI5IlH4fvXAiDJcCahZY6sxIbEptqVVlYDA==
X-Received: by 2002:a05:6122:6c01:b0:544:6d56:eef1 with SMTP id 71dfb90a1353d-554b8b9dafcmr382725e0c.2.1759924868891;
        Wed, 08 Oct 2025 05:01:08 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652aa040sm1634050866b.20.2025.10.08.05.01.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 05:01:08 -0700 (PDT)
Message-ID: <f7f2189b-b182-4616-bba3-ad1a0af3e4da@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 14:01:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/17] drm/msm/adreno: Introduce A8x GPU Support
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
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
        Thomas Zimmermann <tzimmermann@suse.de>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
 <20250930-kaana-gpu-support-v1-12-73530b0700ed@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930-kaana-gpu-support-v1-12-73530b0700ed@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Hrl72kTS c=1 sm=1 tr=0 ts=68e65287 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=C_0j-PAzlxBuy3Ei6pAA:9
 a=QEXdDO2ut3YA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-GUID: JMsIxjYmRJshA_U6wAlYxuIP6CM-Wi7q
X-Proofpoint-ORIG-GUID: JMsIxjYmRJshA_U6wAlYxuIP6CM-Wi7q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwNCBTYWx0ZWRfX9Hn38fMz8o6u
 gclz6Vh2ZT9fXjShAkmjEKQ64QtIl0zJTphD7PPUwmX0B9WsD6f3SzTIUPXTj22XHKWK4w8q2wB
 tLDymUbEQdymnBFtPBgXHltvC/8FSai1psU9hpJK+Wz8gtnTtkdKW0zXnF98LJCZpPsbbTscUHB
 YIonU3WnXoAcAABegDQw2x5h3Xuu7Z5zmeQV+KHtxFi8EphRX6ajm6iOmgpqeq2usxVCQUnOw9u
 +5S4FJLzuuTd5oIlHhQD1nugav+7Lal1z6oAnRmcWa7FAtTPX3x4S87WV8duG90U79/rUIgRkKa
 qNmBQVTHdizIMVf/NZxOEVlXvyvo2SzpOhzmGs7g9xVJNhGvc8QkX9frjGz4exSkUcbScFHhrWc
 S2SS7gtO+FB3/Di0iFEWgM9o7JUl/Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040004

On 9/30/25 7:48 AM, Akhil P Oommen wrote:
> A8x is the next generation of Adreno GPUs, featuring a significant
> hardware design change. A major update to the design is the introduction
> of Slice architecture. Slices are sort of mini-GPUs within the GPU which
> are more independent in processing Graphics and compute workloads. Also,
> in addition to the BV and BR pipe we saw in A7x, CP has more concurrency
> with additional pipes.
> 
> From a software interface perspective, these changes have a significant
> impact on the KMD side. First, the GPU register space has been extensively
> reorganized. Second, to avoid  a register space explosion caused by the
> new slice architecture and additional pipes, many registers are now
> virtualized, instead of duplicated as in A7x. KMD must configure an
> aperture register with the appropriate slice and pipe ID before accessing
> these virtualized registers.
> 
> This patch adds only a skeleton support for the A8x family. An A8x GPU
> support will be added in an upcoming patch.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

[...]

> +static void a8xx_aperture_slice_set(struct msm_gpu *gpu, enum adreno_pipe pipe, u32 slice)
> +{
> +	struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
> +	struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
> +	u32 val;
> +
> +	val = A8XX_CP_APERTURE_CNTL_HOST_PIPEID(pipe) | A8XX_CP_APERTURE_CNTL_HOST_SLICEID(slice);
> +
> +	if (a6xx_gpu->cached_aperture == val)
> +		return;
> +
> +	gpu_write(gpu, REG_A8XX_CP_APERTURE_CNTL_HOST, val);

unless the effect is instantenous, this needs a readback

[...]

> +static u32 a8xx_get_first_slice(struct a6xx_gpu *a6xx_gpu)
> +{
> +	return ffs(a6xx_gpu->slice_mask) - 1;
> +}

#define instead?

Perhaps also move it closer to the user


> +static void a8xx_set_ubwc_config(struct msm_gpu *gpu)

You modified a6xx_calc_ubwc_config() earlier in the patch

is one of them unnecessary?

[...]

> +static int a8xx_zap_shader_init(struct msm_gpu *gpu)

You can borrow this from a6xx_gpu

Perhaps moving such common functions to a separate file would be
even better, I glanced over the change and there is probably some
potential to commonize

Konrad

