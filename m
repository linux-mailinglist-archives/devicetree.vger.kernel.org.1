Return-Path: <devicetree+bounces-137122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4BEA0784F
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:57:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72F4D3A7966
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 281E0219A78;
	Thu,  9 Jan 2025 13:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O+Jrucou"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 744E5218EBF
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736431064; cv=none; b=PhpmFgXAPBLLY5Xc2eWDZcr2Hpw2Dvy62GVjFOLqYy4BT49pFDezCGQhvdxwWfoMn9jz41YXy9/x4ZjQ5jANmCrSvSw7b3xwVciFiVssac/beMkDsI+TNnmscLvdxer1Op7ubmwix4pFRokF0zN0LTdECcXmJFak+RnKUFkkIpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736431064; c=relaxed/simple;
	bh=bSf7dIZlDqFalGEhdvDUvV5XX/SbSYGVS+et2u2KpYg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HrWpdEZhtVhkmQFc8svQl9Ai0J9QAgyJsO6oUIOLZL6PZF9qnZTP41MSmwBu01ejnw/Dr1s1cNk0Y4KeIETP5UV2cJjcVrvCOcARuSZE4IkUQ8xuEJbmfEEe8uVn2pnb0daDfVGWFwNT30YuqcOMwUnc6g8JVq5JzWSVIY2iflk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O+Jrucou; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5098wc2u007282
	for <devicetree@vger.kernel.org>; Thu, 9 Jan 2025 13:57:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JF0AHoOXM/Omt1W9DsxEmuSnjvh5YmVttxjnDNqIHSw=; b=O+Jrucou7GQu6Gk8
	mvpM9O/P0I3Sbm5plAmC7W03BZ1Gauf7CMtg0qxbezqhR5tcGQCkpc+fMCcX3fVW
	4i8m+zkaJML/2nY4S6q0DS+QVzeEJowQ4gpWETycY3wpKmD6rYekopUif8T/cQY3
	Er6F9Tck6BoHpM8BCQ3EpJ6RgSGuOqmin3KezBzJ7T0dRwb3313khvtHcGBJd/Bn
	fofgLlZs86NQb3hjMr9rMHt4nY2BUycz5Df/KCfJdHCrFVVUIezdcGIYix3XZ2Je
	MFUxVyTBaQCPAZI+4420D3gDLh70kI41KJL6vU0Jc1ZZuiUSKMgTQeeoX+JUw0af
	mt+pvA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442bdxgp7d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 13:57:41 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6ee03d7d9so17808985a.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 05:57:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736431060; x=1737035860;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JF0AHoOXM/Omt1W9DsxEmuSnjvh5YmVttxjnDNqIHSw=;
        b=jhwyEVshEgf5DOmea2qVDERBbeiWZsn+ffv/Wg/jIp9x8L3Xuk37fdpdRvNFxMgG+E
         lENf4FjnOtssnTjhKCGS65Sbjniu8BQXTCpxPqGHHpkyZ9UuXjGk2d7x1yFwV/2eEMAU
         fw28brW+xejJQ2U0hzSnGmUQkUBJsO51ooldjmUyXLDRltRCeAaNr4yT+Hba6Okh0fFk
         CQQEGx+gNCpxrmq/Bh9LGVeX1YX1CkV/YXUBpxnrWAWWHSVJA32n/raigaUz6I+JGjw3
         GyOCS9OJdbSIUl4iGMXaxMWDLSsmzw5muF/BziHR4R+/CrMMyCnuItMDcR1UzP0ehl2V
         BVKw==
X-Forwarded-Encrypted: i=1; AJvYcCUbv5ousHS0qja3HWYXuR6N3BF39Va/dPAsW6xvEXrBwM3blm8z1NdNV7lH+xnIigM1ESGp80mDepvf@vger.kernel.org
X-Gm-Message-State: AOJu0YxVLBUfRmHe40sxVaS7uJSDYChQHoPEfLXlI5tSm+nAyU4PBXGI
	jm5Il0mw11vON9SHxoytpXHN7PSASqxrt2ViACcvcpXTVKOs1yfxIr8H3wp97jcbiawaUfcc4Jo
	yZCBwcOkNSr5lSCdAAr3MYmpRzByBOVUYHlOneUVrV2YAioCnvSwNah0HIBHK
X-Gm-Gg: ASbGncv9n388VlsEGMjAKHQ8vnOAO7LlrWC7SI01s9Nl0PtLz2WGjFSXnwCj18JOu/H
	wVhWXTlBsN+eK8xYj+GjiwY4qLtIIjyV9yA6p+uo4J8dp4s2iAUVaoxmEY1t7VMsnCYNtqk/U3w
	5X+1zcMyvsJZn7CDRJ+eDUCZu7Hy2PrlNyVf4zt//nqxI4IpR5B6JKsndh8nYC4scPIfcq2rwMl
	/SN7eVCanx9hkuEHsvrPSc91JXLrgrjwPiMW+W6kGuhGSnY2Uj4YI/9dddrE5W/0rPj5aODygVc
	wo5EYKA+ds3/eooxCB+IQSoeHQXzMNOPvjc=
X-Received: by 2002:a05:620a:40c1:b0:7b6:dc4e:44a5 with SMTP id af79cd13be357-7bcd973a062mr387281785a.5.1736431060081;
        Thu, 09 Jan 2025 05:57:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEvEFQOSMjPEdcmaa6JUHa/5+PkuCwquAgHnceMKaOpZSDG8+5Zh8OYxiwJczUZrYpLlO5jQA==
X-Received: by 2002:a05:620a:40c1:b0:7b6:dc4e:44a5 with SMTP id af79cd13be357-7bcd973a062mr387278285a.5.1736431059674;
        Thu, 09 Jan 2025 05:57:39 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d99008c3b5sm641951a12.12.2025.01.09.05.57.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 05:57:39 -0800 (PST)
Message-ID: <356986fa-e66c-4e78-ab92-2593b037ab9a@oss.qualcomm.com>
Date: Thu, 9 Jan 2025 14:57:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/4] drm/msm/adreno: Add speedbin support for X1-85
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250109-x1e-speedbin-b4-v1-0-009e812b7f2a@quicinc.com>
 <20250109-x1e-speedbin-b4-v1-1-009e812b7f2a@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250109-x1e-speedbin-b4-v1-1-009e812b7f2a@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: BCFWQILMTQpRb4d8C7WLKQcC-weJdLQX
X-Proofpoint-ORIG-GUID: BCFWQILMTQpRb4d8C7WLKQcC-weJdLQX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxlogscore=993 impostorscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501090112

On 8.01.2025 11:42 PM, Akhil P Oommen wrote:
> Adreno X1-85 has an additional bit which is at a non-contiguous
> location in qfprom. Add support for this new "hi" bit along with
> the speedbin mappings.
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_catalog.c |  5 +++++
>  drivers/gpu/drm/msm/adreno/adreno_gpu.c   | 15 ++++++++++++++-
>  2 files changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> index 0c560e84ad5a53bb4e8a49ba4e153ce9cf33f7ae..e2261f50aabc6a2f931d810f3637dfdba5695f43 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> @@ -1412,6 +1412,11 @@ static const struct adreno_info a7xx_gpus[] = {
>  			.gmu_cgc_mode = 0x00020202,
>  		},
>  		.address_space_size = SZ_256G,
> +		.speedbins = ADRENO_SPEEDBINS(
> +			{ 0,   0 },
> +			{ 263, 1 },
> +			{ 315, 0 },
> +		),
>  		.preempt_record_size = 4192 * SZ_1K,
>  	}, {
>  		.chip_ids = ADRENO_CHIP_IDS(0x43051401), /* "C520v2" */
> diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.c b/drivers/gpu/drm/msm/adreno/adreno_gpu.c
> index 75f5367e73caace4648491b041f80b7c4d26bf89..7b31379eff444cf3f8ed0dcfd23c14920c13ee9d 100644
> --- a/drivers/gpu/drm/msm/adreno/adreno_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.c
> @@ -1078,7 +1078,20 @@ void adreno_gpu_ocmem_cleanup(struct adreno_ocmem *adreno_ocmem)
>  
>  int adreno_read_speedbin(struct device *dev, u32 *speedbin)
>  {
> -	return nvmem_cell_read_variable_le_u32(dev, "speed_bin", speedbin);
> +	u32 hi_bits = 0;
> +	int ret;
> +
> +	ret = nvmem_cell_read_variable_le_u32(dev, "speed_bin", speedbin);
> +	if (ret)
> +		return ret;
> +
> +	/* Some chipsets have MSB bits (BIT(8) and above) at a non-contiguous location */
> +	ret = nvmem_cell_read_variable_le_u32(dev, "speed_bin_hi", &hi_bits);
> +	if (ret != -ENOENT)
> +		return ret;
> +
> +	*speedbin |= (hi_bits << 8);

Now that we're overwriting speedbin, we should probably have some checks in
order to make sure somebody passing a too-wide cell to one of these won't
result in cripplingly-untraceable value corruption

I guess we could just introduce nvmem_cell_read_variable_le_u8() and call it
a day?

Konrad

