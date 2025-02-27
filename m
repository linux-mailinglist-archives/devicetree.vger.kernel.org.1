Return-Path: <devicetree+bounces-152311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9C3A489E2
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 21:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D801E166B3B
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 20:29:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 988BD26FDBA;
	Thu, 27 Feb 2025 20:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DrECWy27"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47205222576
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 20:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740688176; cv=none; b=giidLH+5hCVu7Rtbhr6li7FkFl79VOeXnfIfG2PlPGUbRJR6s64hK9Gy1NxKR9l66LDbxfpRx5t2JFI55LtmDhG6/fOYoOlffVCLjU3QIFL+AKSYl96GUyLX0pAk/o0FQpfdGd+x9xsMMy30XVVxtkQ6CdpUqNNjs8jr1CO6kMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740688176; c=relaxed/simple;
	bh=PQWN+lgxZqPxEPgdzTFGJuSHRJdqN3FGfR8dBOWtDkc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nPiVi6luUwRW1BNl+2SyomWarOee/LIaHtvFFA+wehL+118WkAeqvSKDNRH03TfRz0VvJBaRGn5EhZ80BHq144qXmi2RIAAHj30+Q6gs2y7D+w0MZ2/zd9FmuZAGRGbAGE68/vFT5pqDcyndOPsSukvNVGFiBH7XZYPTrTEWR1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DrECWy27; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51R9es0B005921
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 20:29:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rdz3BwWFGxS8sRJ2eAc3H5jI9A0FhVUYuzt3xIUmMfE=; b=DrECWy27O4CoUQ6B
	8yywe+p6u1m2G7Ee3kmUUCSZCqZ2Iw/rxM8Y0/M3zLlbv9Ifdc3QDvSEv8DxJzSe
	vuJ9A0SlzgpfUDrQ1Jt8lldC4QT2lQVeNEGET5d91FJrtAvvdXomkMPSe2/RA1bi
	zXOu1T+r2WabLv8uLZMjsFAPZE+PAj5U2pa8L1d4sLKNSVDfKDYrHpcMA9+goivA
	VGcQheO511LEgT8l7NgJr0Y8DkSnhy2MfSsyZwJIJ62fNzku1jefr9+hVxiC9eBf
	x8T5geQgLuTTtHJuZY5XYg6ckeiMpXWvJv0MpdpKjFqi5Ns8s/tNJ84o4sv4cjtj
	6ZojJw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 452nmqsvy5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 20:29:33 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e1b2251f36so2282196d6.3
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 12:29:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740688172; x=1741292972;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rdz3BwWFGxS8sRJ2eAc3H5jI9A0FhVUYuzt3xIUmMfE=;
        b=sqxRfowhZjSU1C34WCQF/koSVX/4/DEE2GoCKucDFYzrZgeNbQKw8vU557YqfDTtS3
         cEkfyedIVbs31/Tldgqh5/2CjFc5w37Hn4ZQe80yC4BTGitYQ8Tbs23SpzCLJtr2lBNj
         VqD211a8lNB+giaFTlheFObiOTOXv/LY2OSyZhxIrU22CLiauOsGWHeNN4/KL9kpuLTM
         0tejmxdCpAtQ8bgZO5l+KVZ11cToYy6MdV/+n3n70RmRrztoUZSVs7CqMuh/Y+39ethv
         CZiUq8u8JQJHbcPuziqQpqDhg1DBnSYQ/UHr4rw9gFFpHvApLYR5lr+5HI/hdclqWaeQ
         Pqvw==
X-Forwarded-Encrypted: i=1; AJvYcCW/P9hXT66yu3rJmS3R8zk2OYKKAYcsYk1Xlw/7u51IPSw4WfNQ2J2T6thxHZuLv7Qa8pv75o7f68QA@vger.kernel.org
X-Gm-Message-State: AOJu0YyfMGD80UgbBRhw6udEeWOCGCXh2K2g9PQUalKhy9FEw1PsD1HT
	oPsQCMN3gKrQEAoZHN4LcZDGuc/NmW8T0kiT+hTLWatcndBCbiLZcPSb7gumgCYfJO3HLPyhA/z
	JGeWOWba/8mBN6gKLA7b7GIgR7TCe1hx6IZPbeS68BHdHhqQP+cfZeNy9RG6c
X-Gm-Gg: ASbGncvFqlkBguzCwD7Ci47tYd0p9yZfZfZSvsuI3YdYWBan9lgWZuz4dp9ITj4XRSA
	C94IYuPB/7RcTKjDI9FmEaPP7irOWENJUMzO1a8AzVaQMS+EaGQ7WJiHPvEFS9OEcPE/svJqpu0
	jR8dh6zkNSd/4jQx33zZ8SxKOSBY29IKB4JGO91mfCcUsILghX8crKs+Ts/UBi0hEc/QPodNcCF
	gR6k/RU5POdE+qwnG1ctBOB0UdXBiI2GvDD4PkJrRXJAsPDnqtPqoVWaVgaMnFelPgtdbfPAkFe
	uwRVJABiCySREydXwTovPUaPXKGry/IJ089irMcpSFXMjGEtaoCRRm+x5kXQcqT+s390vQ==
X-Received: by 2002:a05:6214:5006:b0:6e8:9ac9:55b8 with SMTP id 6a1803df08f44-6e8a0c7d646mr4995826d6.2.1740688172069;
        Thu, 27 Feb 2025 12:29:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFp08iDf7beYh6+dvjAc+g6WR7kEIPaDwueuBvEdPQwdhLWHvqK0vAhDkPw7V5LNXpNIx57xQ==
X-Received: by 2002:a05:6214:5006:b0:6e8:9ac9:55b8 with SMTP id 6a1803df08f44-6e8a0c7d646mr4995516d6.2.1740688171740;
        Thu, 27 Feb 2025 12:29:31 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c7bc015sm173071666b.164.2025.02.27.12.29.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2025 12:29:30 -0800 (PST)
Message-ID: <7ffcc2fc-c783-49de-b01f-9ffb442d2a72@oss.qualcomm.com>
Date: Thu, 27 Feb 2025 21:29:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] drm/msm/a6xx: Add support for Adreno 623
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250228-a623-gpu-support-v2-3-aea654ecc1d3@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: yHWH5ufKjjZiPg9Q48jfY7FUnmLMnbKW
X-Proofpoint-ORIG-GUID: yHWH5ufKjjZiPg9Q48jfY7FUnmLMnbKW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-27_07,2025-02-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 spamscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 mlxscore=0 priorityscore=1501 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502270151

On 27.02.2025 9:07 PM, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Add support for Adreno 623 GPU found in QCS8300 chipsets.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_catalog.c   | 29 +++++++++++++++++++++++++++++
>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c       |  8 ++++++++
>  drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c |  2 +-
>  drivers/gpu/drm/msm/adreno/adreno_gpu.h     |  5 +++++
>  4 files changed, 43 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> index edffb7737a97b268bb2986d557969e651988a344..53e2ff4406d8f0afe474aaafbf0e459ef8f4577d 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> @@ -879,6 +879,35 @@ static const struct adreno_info a6xx_gpus[] = {
>  			{ 0, 0 },
>  			{ 137, 1 },
>  		),
> +	}, {
> +		.chip_ids = ADRENO_CHIP_IDS(0x06020300),
> +		.family = ADRENO_6XX_GEN3,
> +		.fw = {
> +			[ADRENO_FW_SQE] = "a650_sqe.fw",
> +			[ADRENO_FW_GMU] = "a623_gmu.bin",
> +		},
> +		.gmem = SZ_512K,
> +		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
> +		.quirks = ADRENO_QUIRK_HAS_CACHED_COHERENT |
> +			ADRENO_QUIRK_HAS_HW_APRIV,
> +		.init = a6xx_gpu_init,
> +		.a6xx = &(const struct a6xx_info) {
> +			.hwcg = a690_hwcg,

You used the a620 table before, I'm assuming a690 is correct after all?

Konrad

