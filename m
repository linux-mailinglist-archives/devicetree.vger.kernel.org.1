Return-Path: <devicetree+bounces-237505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D340C519BA
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 11:18:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 11B7634BFB1
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 10:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB8D23002A6;
	Wed, 12 Nov 2025 10:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XHG/U/xg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hSDKofYN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EE020FAAB
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 10:18:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762942693; cv=none; b=bqL5BDc02CfBO/6grbrrcmq+Atl9v9j3ohldKEH0biN35+tusBuvnOwWK+esWXZ//uSfA5bFa4k+PM25m/HqvqdjG4OkccabEJz6L5IfxMnr6Juuc3tZh49LIk9f+O9K1PQkElT8x+rs0rJdI9n5e0A/Pb95oFDVo3BEWJ4G0A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762942693; c=relaxed/simple;
	bh=6ExUaprOrb7bYmHFnlrq+UtunG+UsbsFRXBeLvcjM0Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X/JqWemY2TPvgTdZpAmmPSfpe457AQmle2cjViFm19m7ycN6+AEp5MWZHxgI0OagaoBc220NOzgk+emSl2KT9IqHiVL3VJoiAw4l17jUo0QP3Uw14316ChC+u6gAmBwNbUZ2YBlM0Ds+zb1bizBHR5u5JDi7mU8zsapFrraOYCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XHG/U/xg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hSDKofYN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC9D93K511165
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 10:18:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s/lopT9opyCf90Ve+odq78rypOpIc2a0jmLTtA1UVZ8=; b=XHG/U/xgXOWnwci/
	cbr10cJY9Vt1KgKxrd5wTZGGN7zmOyK3bgcF4K16kGw2s+flbPOVsa5yuY+U9C71
	GUdBTbMP0/9VrCf6+FqRxann05mQXG1D6YLuLAQXMEIFZSf0AUa5FG+JoX3RiyAB
	RR2hEBqBi1jo18d4cxDgheO984q1tR9tsiBCi6yksRqG1uO2QaOVtW+GxTpRASn+
	Rwl5DE0SBlnvtnEfMDP1pKUdc8H4naeKgABrfuOEZOvelQhB6UKWgk69l3UKWmIF
	/z5QGbCOmHcBTIBO7rx0gkghX2PaWhX3rGTitX/HYNfaSywUOHYw6jsPsXOxVZwS
	PykLqQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acqdgga2b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 10:18:10 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed5ff5e770so1369261cf.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 02:18:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762942689; x=1763547489; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s/lopT9opyCf90Ve+odq78rypOpIc2a0jmLTtA1UVZ8=;
        b=hSDKofYNWze5tcK0sSYaFi57CPDlREcU0jGeJg3//+YBBd+Oi6mgB7CthlCBB0uFhR
         hMPmyB3yDD9tnUPxGnVqq006MyT6yPsrPG93LNukq4pXlvzuQd3IMMc7NJOtC3pYjuFw
         Vb1xnzH7kICiHp32XEh291fiR0dTAKJqQmXAL7NCgKlztqkf2Cj1OkQJQ/srUb7Mjdpq
         YG5cHKVJ69J95KvCZ2bD/PWPEIz+DLevZMu6o+xQNDi3AbL8EBZi1ZFTf1Q322VsX0+P
         IRj7Nj+wMgQk9F1ByYfifDIrh5okKgzuLv0VQWuJBrMLk+vx+Yvn3ik4/GrSs3CKVbX3
         Bd0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762942689; x=1763547489;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s/lopT9opyCf90Ve+odq78rypOpIc2a0jmLTtA1UVZ8=;
        b=WjiGYdAYX933isEUF7UBKMv+K+/kTpjbZKs6XY3PWyvpByvsgQCuygRNNzNT8xcbJ/
         XiOIhOFYT6NZLzFjKQKYh4o4NQt6H7GCD/OLTlND1Z7th6ZVQooiFXtZ6NQZF4B5rn4H
         oABrFAu+IlZ5tvajq1VUF15XDZ2UHcKewPthhccCpNF3HPinnpc1DKuJKiiTpNs3j077
         JDY1zGR7vhEUFW8eoSkLFzm2NeVkpsMWEsTlYHgxgWHHgUbial88rJ65UohIGPED7gdd
         YNFoTvvI4oQns9a+nGKb2Zn7kX6YBHDznnsUCVvThG2UHbhbNz6H5ughxTDqZ5oBCgy9
         TJag==
X-Forwarded-Encrypted: i=1; AJvYcCWv433+XJAu1zdBKdOsJhI95NC9ogYaoUG/F4oSwCh4P40B+wUFblWioLJ0qWg7ZClEFYjwOS2CH+oF@vger.kernel.org
X-Gm-Message-State: AOJu0YynRlRBlu6VdkjfWIfcIuigBPBqzEoV4hL7nmFoDgVhwykDHlSO
	ggi+43kUZp4EXlV98rE9Z4yUZ2z+ELRByyX1KG1hA+Pswf7pNIcHa+7JWx6xhTHHdWfA32cG1z5
	NPhKCgoAwm9+OSiCep3vNd85rJ8G0Avsi42yxIjqHNU2GOdFdNjwdgTqk0dqMIlwL
X-Gm-Gg: ASbGncvUo/568fqv/7OGPRWgURsy3iFeO2kRlZCQJG89Qa/gMLwLOKi7BDa9G5zjOZ8
	KhnoWN1PI8VmduV9idfZlTgNkSNFoGDWY4nvNHWC2yQD9fHGthkD+Mt1NGCER6TY2MZTX6fSuGT
	hBx7aZUm4OZEhso06K5b3nnzsizhmx2uHpgpBqYGuoISbQWWlQZJ6Ouv4KdtuBLhH9Cgy5aBjj7
	6r/F5ZNyqYcO2yLb/habMcC/wMCfS6YRST1vDva/tToobOTm6IAnP2H+4R/+ho2Sbvja+eru1+K
	yRwJGW8LQxSPe+zNkzfZ+bk2L93hJSFmx5UJKB3XaFNh98kTvNpEzM8KBLqt6gNtppw/gBri2ex
	u3O/JqmGplF3qUufv8PFokigzloVLWAQJknIWkpj4Nx5w7w2gObRRRh0E
X-Received: by 2002:a05:622a:2cd:b0:4ed:70bd:d9e2 with SMTP id d75a77b69052e-4ede41f17b2mr892451cf.0.1762942689303;
        Wed, 12 Nov 2025 02:18:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHYtQ29X5tXvxSDaU/JA+AKkzXH/dnj2dUKb+nxLC9dFOdNM6v1tgVxXnY84nYUEM2+bTg7cQ==
X-Received: by 2002:a05:622a:2cd:b0:4ed:70bd:d9e2 with SMTP id d75a77b69052e-4ede41f17b2mr892001cf.0.1762942688856;
        Wed, 12 Nov 2025 02:18:08 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f813eb6sm15397422a12.14.2025.11.12.02.18.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 02:18:08 -0800 (PST)
Message-ID: <a1273bdf-d926-48b4-877e-48d5ff45e7d9@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 11:18:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/21] drm/msm/a6xx: Fix the gemnoc workaround
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
 <20251110-kaana-gpu-support-v2-2-bef18acd5e94@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251110-kaana-gpu-support-v2-2-bef18acd5e94@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dtrWylg4 c=1 sm=1 tr=0 ts=69145ee2 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=B6ldIsYNqgrP1okBzpgA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: 5qox56TBPaH1KyltzLS8Nqoq3Yck7ABj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA4MiBTYWx0ZWRfX4R3GJC5lpAw4
 FEAz7ZCL5yxFORSgyZEaEsKjC3z8LmM3Eqc+A36RcQm2xYq9L7Em8JmFGpd5ULLa2rsr0/Tsc69
 k7xM0hZBIXJluzthzNwwh45yzA6n24a4SzmYxEydkUa51tSsK9b9dlu4g1m8oTBOhd81VCV1tLY
 m2V832dqlmZWmxMsH7+L11+vKMGckUIjojK+h7brXsHo1O0oYLpNHTA9ryapCZYqAUfSWPommpS
 67xkUjDF86YW0ZhmN+rmBFUMRmnfytADM9cvcQyYSq9GeN3ztwFdgIfMCTYWXampzt4fgB0Amo/
 dB6ALi7Mr9hEp1kkdRqE3Ui+k0+H1xT+yRtlSQjY5VB8dtRaqGZmv6yiQjUeH527/cCacEjipnE
 tv5lzdLO0i2TergBuUCLkHvLFaR3MQ==
X-Proofpoint-ORIG-GUID: 5qox56TBPaH1KyltzLS8Nqoq3Yck7ABj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 clxscore=1015 adultscore=0
 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120082

On 11/10/25 5:37 PM, Akhil P Oommen wrote:
> Correct the register offset and enable this workaround for all A7x
> and newer GPUs to match the recommendation. Also, downstream does this
> w/a after moving the fence to allow mode. So do the same.

It does so for _notify_slumber(), but not for _pwrctl_suspend() in kgsl,
but in my understanding, making sure the bus arbiter doesn't gate access
first makes more sense

> 
> Fixes: dbfbb376b50c ("drm/msm/a6xx: Add A621 support")
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
> index 4e6dc16e4a4c..605bb55de8d5 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
> @@ -485,8 +485,9 @@ static void a6xx_gemnoc_workaround(struct a6xx_gmu *gmu)
>  	 * in the power down sequence not being fully executed. That in turn can
>  	 * prevent CX_GDSC from collapsing. Assert Qactive to avoid this.
>  	 */
> -	if (adreno_is_a621(adreno_gpu) || adreno_is_7c3(adreno_gpu))
> -		gmu_write(gmu, REG_A6XX_GMU_AO_AHB_FENCE_CTRL, BIT(0));
> +	if (adreno_is_a7xx(adreno_gpu) || (adreno_is_a621(adreno_gpu) ||
> +				adreno_is_7c3(adreno_gpu)))
> +		gmu_write(gmu, REG_A6XX_GPU_GMU_CX_GMU_CX_FALNEXT_INTF, BIT(0));

Arghhh copypasta, thanks for catching this!

Konrad

