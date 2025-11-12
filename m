Return-Path: <devicetree+bounces-237831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B958C54B29
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 23:14:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DDC6A4E1707
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 22:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D10AB2E975F;
	Wed, 12 Nov 2025 22:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YaOQ2gMv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QTkng/g1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5785E2E265A
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 22:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762985380; cv=none; b=bMkSrP8lzpgbTIDYLqDu39Yy10kLHB3rGqS+bBYDsMXwsH6kwo5V1GFNASyl/ImAnl7pHQDvdMv7kM2qXLyIP6okqdjcg3jpHI0MueBH50Yzrj4/CxFqoY8+0phmTZPm2Hc05ORxc7ShPplOMOGQ1p1Zzb4pEkdbjC+Nr4/NiRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762985380; c=relaxed/simple;
	bh=uu/OVGsmPgjiqEif9CsqNjLeyI55qyMfIViXNJbj+t4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GaSe443xhw9suE3SOcmi/Z47+dTFfiGXIgNGwtw39hUPHMq5ANPnKmmc5tGrnjvehoKwEB6p36JGp41BC31i6Hu9b0NxZMgbysmBNVZLX750XO31PRwCS9t6WoAF/lgpmKInKKg3BX2slwB0gMz4RNh5g1G77Je3y+EVpvp2sYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YaOQ2gMv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QTkng/g1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ACGY5bR1757225
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 22:09:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PKqNXD1DollfLI5h1J2Xseqpi/6Yas+Ng79HmXPNvu8=; b=YaOQ2gMvd3/T2S8/
	MFfA/GNKngL5oDoYFpGPtoDfaZtgNEd3XKI7mFuEDVr3AoHNMLQ1RveVof/P4K1C
	MBTr1vFrsSX3rd8CT/nDm0Cx7/HQSUMMxBkD2xD/pggoeQbc4UdQ0At17NM7gWW9
	5m2RJOwq74SAEruoLtIqCJDADeMt6FI2XMOwC3eITawkofhDN8nltztqtxQRHftW
	foR+RMjQpLY4n/Nag8BcHwprobmGjkMqulU/Feeqm5lHY85HMukVa2nwk57pu4Nv
	QPdO5BzUJ37cd+3xC7xlgxq0B5paVicxwtHp1lLFddI5EtFgX5NYPRo3fQUlSEkf
	j0E5tQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acwve8wu4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 22:09:38 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29845b18d1aso1437235ad.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 14:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762985378; x=1763590178; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PKqNXD1DollfLI5h1J2Xseqpi/6Yas+Ng79HmXPNvu8=;
        b=QTkng/g1cldqYYWBCXldZBZtM1KY+hci//ggW5SZ3YwYxCqsstE+EWyoB+Ndy+SpR7
         r9wCn/fhvAftx7q/Su1Te0WPUvt2h/y3OYeS4C/TChsISAJCuQhDIVpezRdRDS4aDXlA
         ilJeolnVcoSGl1wlL8c6MPyOZSyEIJuwSisNei89n5Wqyk1mxYry4xNg5hWU3ufJwL7f
         n/527KshRVQZ24n5QJh4svwdG3DJ7nq0F7V9z4gYKTR/agESIDAwugvl5CL6/XMqrCwI
         cSUN3MIGG7lANHB6nvQGiaRbn1P1ycqNSv28QNKmUl8tXir+Ji02qXFSy1s2Xa8Fshyu
         T19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762985378; x=1763590178;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PKqNXD1DollfLI5h1J2Xseqpi/6Yas+Ng79HmXPNvu8=;
        b=PQv4yfDJQLN/QZ4Ga2DV75MsH0yKYrFyNEzKXgXMO9wz9e7WSwYB3cxhOMjIWAl/cv
         B4g3ueqepmBS5aX8dwBcOyKg8GEg/HQo4SeTAaM61DEzJI4xuOqoWzThB9dF9hXaqWAp
         uvNGlTBM0Uac2CdD4bWfQXixIrFvlle8IL4fO9eogal78EMT3zwFPLIGuBjS67F9sv27
         /94ZxMpbfGdFCyrHqETOGOYz6/zoWPxECcqfz1ieNJ5ZaVnU8fPJsKfn3hvfpX3Ds6ak
         iqI2xQlshQ248gPAUaLlgcPDSECv9Xi0dLsdNBVFJ8u31v4Ffl1ycFmDA8jSVT2E9p76
         jf2g==
X-Forwarded-Encrypted: i=1; AJvYcCXlLplVyj8OgQCkkYLcjWM8Mm5c0gMtjWPm2AfKgO3YwshWWeegMv49WGXtCCLQllUixUk9Byd8QdUX@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx48X7u5p9U7PwNvP5iejRBFTyFMhK9KuI6Syv8T9Xg6qNkbXO
	Bj4dghOHQkLDuB52LfWc1b2Sivlx6C72J4Y3wNE23LK4XAg1g7ZpVpKpKL1vXD/BEhhqgucFot7
	U8Y/HJ9tuHS57lKjBTPjoCJe0TDnO12Rpklt531rfkru30/jogfZc+7CwyuguE/Ii
X-Gm-Gg: ASbGnct+pzwXpwP3UPEW//2A8NKrAlzVKalXfDVNRjX5/EbfHxyRWxQ2Zc2r7NUVhN3
	KOrI4dWXN8YksGAhF4z9ByC/Hv1vXdgghfdvMb2vqDuamp56On/G4+CSU9TxWT7vTDeMviK7GxW
	Pr+W7aQwN8Gvx30GgTe/+SRxHWsuMWwYA4fcBAjihWmTo0xYwRKMg/osnwSKjb+S1H61DPa+NPO
	qqz2NPDA0QpOiuY1QvtrW6RV0JWOahIvkDBDqGQflQBSDCiQL5V4238taGdqQbte7oF8K7fM9zF
	MYG9LvTqjQ2UOz9ZJmw7Bf9ZDfq5po7ocE5UX1/0KVzwU2ZQngMJ3cr5BcnIgNNDQxUlOsf5xYW
	x5OQIkDOqv23vWHRVG+e/vg==
X-Received: by 2002:a17:903:1b6b:b0:295:4d97:84dd with SMTP id d9443c01a7336-2984edd59fdmr58284515ad.51.1762985377577;
        Wed, 12 Nov 2025 14:09:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHbDPQwjbxvdgWkQp34t9iHfLbIFLfFbNnosXkOr7CJTuwb5+1HxivTIaNHyQXba3NQUZhkaQ==
X-Received: by 2002:a17:903:1b6b:b0:295:4d97:84dd with SMTP id d9443c01a7336-2984edd59fdmr58284135ad.51.1762985377049;
        Wed, 12 Nov 2025 14:09:37 -0800 (PST)
Received: from [192.168.1.5] ([106.222.234.47])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2b0c9dsm1704455ad.67.2025.11.12.14.09.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 14:09:36 -0800 (PST)
Message-ID: <d4753c6b-b3cc-423b-912e-61f8b7bc3c1a@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 03:39:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/21] drm/msm/a6xx: Fix the gemnoc workaround
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
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
        Connor Abbott <cwabbott0@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, devicetree@vger.kernel.org
References: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
 <20251110-kaana-gpu-support-v2-2-bef18acd5e94@oss.qualcomm.com>
 <a1273bdf-d926-48b4-877e-48d5ff45e7d9@oss.qualcomm.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <a1273bdf-d926-48b4-877e-48d5ff45e7d9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: bf0aLUWNYSIAUG6xSSqoaJNc6384xmss
X-Authority-Analysis: v=2.4 cv=F7Rat6hN c=1 sm=1 tr=0 ts=691505a2 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=2IP1oaZ8+KUWsYovLW0HHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=vAHTylR2Z3b6qOykXHEA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: bf0aLUWNYSIAUG6xSSqoaJNc6384xmss
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDE3OSBTYWx0ZWRfXwlbFnkx1waaa
 4FDi/xTj/lWg29qw025l/vhfxgMFrNkmbC/UL0X8/e3x/IFI1cAi/ZRqZJncJB0gwB37orOeb8u
 X7eosAPWNsgr8fbju4NIzYyR0HJKiI5WlyrLedj6qwXndwGLxofwxBeDLodO/oGlM4iBz7x6Ufi
 dADPTMsEwU1kLKkdeVVzvxw0LAwnI3DADGcRbLwYSTaOrrbHltxc+1C22CPNaN2stYEEfY67mUa
 0Q1owcMbYX0sMRhKathuwRzSqP2Kf/5xD/iv9T8tFFazil8o8an08M3l48KGSE8QlT0w2PpN886
 7Mer4NyL4B7yNBgP4Q9+Pm7ZPQb5zHDAazVGN7P/njK6pdkUqWanwIdzS0sF/GyIAsluhpObjrR
 Dbulw0xXBSbWStg8k7hsZVevsK2Org==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_06,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120179

On 11/12/2025 3:48 PM, Konrad Dybcio wrote:
> On 11/10/25 5:37 PM, Akhil P Oommen wrote:
>> Correct the register offset and enable this workaround for all A7x
>> and newer GPUs to match the recommendation. Also, downstream does this
>> w/a after moving the fence to allow mode. So do the same.
> 
> It does so for _notify_slumber(), but not for _pwrctl_suspend() in kgsl,
> but in my understanding, making sure the bus arbiter doesn't gate access
> first makes more sense

Yes. I didn't change the order in a6xx_gmu_force_off() (equivalent of
kgsl_pwrctl_suspend)

-Akhil

> 
>>
>> Fixes: dbfbb376b50c ("drm/msm/a6xx: Add A621 support")
>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>> ---
>>  drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>> index 4e6dc16e4a4c..605bb55de8d5 100644
>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>> @@ -485,8 +485,9 @@ static void a6xx_gemnoc_workaround(struct a6xx_gmu *gmu)
>>  	 * in the power down sequence not being fully executed. That in turn can
>>  	 * prevent CX_GDSC from collapsing. Assert Qactive to avoid this.
>>  	 */
>> -	if (adreno_is_a621(adreno_gpu) || adreno_is_7c3(adreno_gpu))
>> -		gmu_write(gmu, REG_A6XX_GMU_AO_AHB_FENCE_CTRL, BIT(0));
>> +	if (adreno_is_a7xx(adreno_gpu) || (adreno_is_a621(adreno_gpu) ||
>> +				adreno_is_7c3(adreno_gpu)))
>> +		gmu_write(gmu, REG_A6XX_GPU_GMU_CX_GMU_CX_FALNEXT_INTF, BIT(0));
> 
> Arghhh copypasta, thanks for catching this!
> 
> Konrad


