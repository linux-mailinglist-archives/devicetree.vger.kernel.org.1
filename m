Return-Path: <devicetree+bounces-185950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65815AD9F17
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 20:43:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E784173BFC
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 18:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D4D12E62AD;
	Sat, 14 Jun 2025 18:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E4BOk5zd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9338E79D0
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749926581; cv=none; b=jELnjY3c8S2QLgyKLE+Jjp4C+ERfAvxcn4klIpRbwnCJY+38jxPL1WYNzADjcMQUDzgRBrLP/4CtW/f26EF51iHfRPHwkabav/8YJD7tXKgW0Nm5T5VlZzXl5eamzhMjcU6p4hQ0G7FlaX1X57KA3bGB3E1L7g4eOdjXCfqljDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749926581; c=relaxed/simple;
	bh=s6E01uA7mvRz1DP/q5h1Kgs+cAsIQRRJGrCjFTML+PI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YauQbRbyzPGxj3VNUbRsfv7UQwOVuNE18HyyIK4ZeDyV2PDvxbeI42vWVsmaS1R8KVvh87fnuG2dpUK5jJyUWTGkvXvt49jcHQN5KosV0oB2sr47dxFKjThkk1fvCEsGj6EG3HCn4P/u4Htle/I7khkHnhXin3szHTOVF8Wsae0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E4BOk5zd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EF9mlL016743
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:42:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iLwHJ8QhRIGYKyF4YaLlo9Wwe+HrqcTZDg4UUvCSfuU=; b=E4BOk5zds0DrD8NF
	shEEzA0umYdl0+l2QQoDtHcBw3muKjC9CdF0eGWK2JNLFxH+WubblyadPNBhyJDt
	pdj9Gee4bbCTyNCIlObEgpXkd7ae/0BTqpnVCZO3Lfg+SK3uhS8vvoWziYgusxa+
	AuIiZnsYaItRG+Bt+CubgkgVNA5IuJUqElDU9TdWnFjjt3Ay5s+kVdp3iQefFfX4
	NqnCqEKE6ZAA6hwZMQRhN948mAJzLL9KTH6DGyLD3iCANdTsO0kLGUGTATNwArcs
	AuVbw/3v8ac2hLPzkgBQSO6Z3HDhsqFdkZOOOmUYkmgR13zR9ZbL9JPWArBm5Qjs
	vN4WOg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791hcrvw9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:42:58 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a5b3aac5bfso8181971cf.3
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 11:42:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749926577; x=1750531377;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iLwHJ8QhRIGYKyF4YaLlo9Wwe+HrqcTZDg4UUvCSfuU=;
        b=emD9WSTLSBXJM0KYuWWiqDaJorXhsUVC5f7JNCR9FwbGDOFI+pFgEA//LgvCHUE7p+
         I8lvFhLLlpyX4M8QPhmBYg+6hU0uIJZ9LCuBUrsg3FmMSX7FlGTijQvVfWlyBLzxvnFN
         BFOpT8dejUv3tTie0ZLFwkHjf6kDcwHN5m1l0nNUR1GfrRJVSBUHslqN3xp3t+IboBg4
         0HXKQzYsEXRQKfI0tuHFK6qTvrvyqGCrGG9L19wNyoCm46ZjEa8KSrVmOBtt5b+HcGzk
         X9HEj36OZLubDLQ/q6+1FM5lggNBkyao3HOjRdTlwyuXBAgcR5/a5Yxd/KA9SsRGWr3j
         cWvA==
X-Forwarded-Encrypted: i=1; AJvYcCUet9J3SzQRIGuIpCNDWWngKFfxF0iV1WnVdWH2rW56mL92UewH1F+4nSsdEhWHlWYteDZPBOgPEqh9@vger.kernel.org
X-Gm-Message-State: AOJu0YxWO2UWgIXm4R+aFX5SHjArJBuV5oqmQ5cBeNw5+Bx2bFseMIdZ
	rtsjF5hW755FYNXCXlQifyRGv/JrciM17K3Ug/OvKqfeaxdgZyesr7PqNW3MwOsVWFupKv1VHir
	XuizUWQ39I1HpKLRFxypqWtDASVl/Qh9SGlCRRmX0YJ2uUvlZqsNtb5L2Ja1P/g+H
X-Gm-Gg: ASbGncvP3MJDQvTX7VDyIsPlZyWqAvrB6YC/0yiJwibkAsVy9DXPQ7vNE3BPCC5vRrU
	+IiHey8/n0n1ft3vdBUKDTKdrsbFrv5oeQAWD4AhaFYmMTCK5Yc/jHLOJF2RYr4mEh0GndUVWtA
	ETMnJxyRJyTBg1ZR0iClFTnduftFcow7jtjWHnX9S69oVepLY9VL6JZ9HDUfZAdOlZec4oqgQkD
	1b9EM2ja+iWDSucJpjbPKcml0t+k426dqFZ873jD6Haz4m9/+ZicC2Lmjyu0VPqY/TP1sGqAw3o
	MTk7zP8zcvKXcl5DuilILe/HiBsY/cAen/qhXgUI86wvQXAfc2U7LRsim+lLzUwZ9DYaAUbb5H4
	CYhM=
X-Received: by 2002:ac8:5d0f:0:b0:4a6:f809:85d6 with SMTP id d75a77b69052e-4a73c568fd6mr22439071cf.4.1749926577345;
        Sat, 14 Jun 2025 11:42:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkYi18BH9yEJbdfQSZZnPYYS236AqGcoTRf5C7tWQLhoDTwPCEtKNQkvCzqxnaF0WVubY/jQ==
X-Received: by 2002:ac8:5d0f:0:b0:4a6:f809:85d6 with SMTP id d75a77b69052e-4a73c568fd6mr22438731cf.4.1749926576868;
        Sat, 14 Jun 2025 11:42:56 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6090063ff9asm293673a12.21.2025.06.14.11.42.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 11:42:56 -0700 (PDT)
Message-ID: <29f1de05-0e55-42b2-9bf3-894bf4f07808@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 20:42:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] Support for Adreno X1-45 GPU
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250611-x1p-adreno-v2-0-5074907bebbd@oss.qualcomm.com>
 <0e6fd97d-9a56-426b-8b98-dc8aa50d02d2@oldschoolsolutions.biz>
 <036e739c-54e4-4252-b6f0-c8eed5557d15@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <036e739c-54e4-4252-b6f0-c8eed5557d15@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE1NyBTYWx0ZWRfX1fKMl6qgno0U
 7exRriSp487t9b2pPdibdZAcKjqANj2tESkQLK+pAALCfqTjpkSmpy5F1FHQLWq4VqVp0Km/+iG
 jo/PIFY13pxHoHKF03Q7sf157ktGLvAR6TEdQYMCGT+jMMGFcXIfJXIZbqfxmsECxn9bvyBQOdp
 HqkISiW+CzEEHNTwEn6MWs4olV0DJB32AxD6FkZ3Jts3iXtC7cERptPWLXQOcqKVwY+8qly5Siw
 16k81+7cVo2Fd29LhcbHjtir4gw1qCpFStUQ4SCFZ7NJRgxGSi9wuMtdgQI0Xfb9uTD7wuDYwOh
 i6NXJmSLTyNftnF/soo8xIv+ww4M7i9U4PkwfIQgYEP7te+VvXdyU1RsgvjJfoVvHzBG9xTyoUH
 LKZTmSdYyBDXzQXV+jkfzfzfsWTokPnteQ4yUiEst/QQKuNoTZ1SOM7nA9B5meTq4WSJDeCe
X-Authority-Analysis: v=2.4 cv=PtaTbxM3 c=1 sm=1 tr=0 ts=684dc2b2 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=phG8Y4mLfM-ETw-KuG4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: 4m5Bo7ghdEFFkKjlpjPohpY0vvVkyuxY
X-Proofpoint-GUID: 4m5Bo7ghdEFFkKjlpjPohpY0vvVkyuxY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_07,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 mlxlogscore=999 suspectscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 spamscore=0
 priorityscore=1501 phishscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506140157

On 6/12/25 11:19 PM, Akhil P Oommen wrote:
> On 6/12/2025 5:32 PM, Jens Glathe wrote:
>> On 6/11/25 13:15, Akhil P Oommen wrote:
>>
>>> Add support for X1-45 GPU found in X1P41200 chipset (8 cpu core
>>> version). X1-45 is a smaller version of X1-85 with lower core count and
>>> smaller memories. From UMD perspective, this is similar to "FD735"
>>> present in Mesa.
>>>
>> Hi Akhil,
>>
>> when loading the driver (still without firmware files) I'm getting a
>> speedbin warning:
>>
>> [    3.318341] adreno 3d00000.gpu: [drm:a6xx_gpu_init [msm]] *ERROR*
>> missing support for speed-bin: 233. Some OPPs may not be supported by
>> hardware
>>
>> I've seen that there is a table for speed bins, this one is not there.
>> Tested on a Lenovo ThinkBook 16 G7 QOY.
> 
> Hi Jens,
> 
> Could you please try the below patch?
> 
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> index 2db748ce7df5..7748f92919b8 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> @@ -1510,7 +1510,8 @@ static const struct adreno_info a7xx_gpus[] = {
>                         { 0,   0 },
>                         { 294, 1 },
>                         { 263, 2 },
> -                       { 141, 3 },
> +                       { 233, 3 },
> +                       { 141, 4 },
>                 ),
>         }
>  };
> 
> With this, you should see 1107Mhz as the GPU Fmax.

I see your dt entry takes care of bins 0..=4.. this oversight worries
me a bit - are these values above (post change) all in sync with what
you entered into DT?

I'm not saying they necessarily aren't, but I want to avoid
inconsistencies

Konrad

