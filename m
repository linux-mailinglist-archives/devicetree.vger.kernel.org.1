Return-Path: <devicetree+bounces-230557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D3FC03BBD
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 00:59:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A41F1AA4725
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 23:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2540428A72B;
	Thu, 23 Oct 2025 22:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SW34gp/f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0922741A6
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 22:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761260384; cv=none; b=WClZGvig5Fy0c0yqv7FtdDCZ+qKF/llR606Wpxdpr3DFs6mM3VZ+BPKHC9wlqVRmGtEfIL4r4UtLFDj+xkUF5Egq4Scld+/ynCKWeiDvsuKFtS57cEGkphdTUrE2Z3j5FqUA/Qebq5rGqENwTf/FgHiOK+fp03AQsCJvzseLEv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761260384; c=relaxed/simple;
	bh=bFeH/C4FMR4iuNXtRq7pzw267IeFmnHLM0bg3L8ikOM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t4PTK36/b0fj5y0679WP95ks3RsTRhEd7r5LS6EZYTdJUNhsjpydX2N+L4oDCez69Jzv4mPQPO78mqZdaJZX2sdqNmzBjDHNrpuKONdbGA/G/VC/W3FS2vwWqtWOR6gWSTAymXDYMt3bQCGfF0MceZdd5wwcHV51SzwRoiWSn2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SW34gp/f; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59NEAppY014643
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 22:59:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	469MVkdM4tlBeR1KDgd7vEW2/LS3FomPXkmwr2wH4Xs=; b=SW34gp/f2bfuWLb5
	btmLFbgoz/D4jEB1LvPR1PGuzlEe8Xa50DJiHXqMN1PXWwoEp570EAjzL/pvqf32
	zRZSEtMzi/vMj+RA2lYepTaMGaHe0SuiBoUEELypApunGplBpHrMW5yvtlb4luH/
	nUDEu7S2kEOmtBrIAzVzn4dnekeE6Mfd5BuJL9lgI611KYB1pzNqJwjG0elo4FDV
	AQ3dp8YqG6PINCxfWcNICvSqtVquUxbaNBxTjZui6DRl5eiubzdj67H5T2nXH9GL
	T3j7zWi0F49Urmr/5KognNXsMePFCV1Rd31Wke3Kx/jhJw5pAQTWVzb0EWAseFZr
	06d2dQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xhe0r46g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 22:59:41 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2930e6e2c03so14343965ad.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 15:59:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761260380; x=1761865180;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=469MVkdM4tlBeR1KDgd7vEW2/LS3FomPXkmwr2wH4Xs=;
        b=gssL54284cneeOBQwzhWJoIskwLNl+FUTo+EBmYD+dtnsnCS0zSbWHWHx+pFmSFlIu
         emOGGVnV5fYCKgepNcbaEsozK+7bJL9KjM2iJcH4TKcEBeDSlOQ0U6xU6HHxUounL5sV
         4Zr/c1ARRnT6hLWmD2RIh25v/ULWkPsA4Y6CcTy+1RSUkRmiGS72vxmNLL32wkLz/hDv
         AiUelSLTK0Ik9XbSTOCKzXv/fLudS+MPDrfnpCwLbcbXy9nJPLB/H7FFW24VKECPeXJp
         IIBvnvKQ4tO7NGUsRC4LYasKRpGAdQxaGYPXCNeNns+fn5Din60o4BGPJMHoZdWYlIhS
         PK/A==
X-Forwarded-Encrypted: i=1; AJvYcCVi/nChPKm4KcPudmUtLQ7GgwWIgX5NYbi48STb08X87k+bnsQqK0jJ6SREH6BH3KScsyTYS/dRMi+c@vger.kernel.org
X-Gm-Message-State: AOJu0YzeiIYxCZJHKNLoYCMzEQpDa0vzMz6tw6B2R1919sv4EFCT0TMZ
	9NP7XKdh26Xu78RtEhqONKCpbcdSMsnrTVTlUEd4kRC4ENv7KFH07rNXX4QQQZthRzc2Z8/RdFl
	3+k5yYALkNahVkLPMELAoYz4dzYmFNa3gd1j4ddaOHdB+seTpb5r9ubBBOyuAT9BG
X-Gm-Gg: ASbGncvetklyOD7p2YwBONXFsQ6nfR7ZzHgRF+adWUhJM4XLrnodGhZCdBuJfwxEsfS
	SoslewpdZXG9qroE9xUhXenMM0Jjb8Ebuz1G8Kbk/pC7sHozDc9P5iWs+Tv+amp+g7atWSvZZlN
	P7nW22kDicO5z5Yp2zto0RROCOUCjBCapPydBPrZ7EHvmZOi3euIT1iKve/wKA0HNKLxlQ+obkG
	i+9IQ/EVp6Uj8Hf/dPpa/3qQr52IiL+cxKmKwPHY+n4C6WLm3cG/QXSUdofmv2lk/fZLnQsJRc/
	f5i+vPHqTwf9JdLGP6Ri0zhN4MReYyX+YaczPLK5zTbVjJzwbMijpuTH5QVW/uHsP8rZBXfJn/M
	NNuLBxH5ab1fcJCH2EyJFjpM=
X-Received: by 2002:a17:903:2345:b0:28d:1815:6382 with SMTP id d9443c01a7336-290cb65b674mr335551695ad.46.1761260379735;
        Thu, 23 Oct 2025 15:59:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJbBbKKW0DFk7iDHJKQ3h/G/P4s0gD6I2OLQk44UpbQebnNfbRHLEqoXFR2CkmDt6YK8syMA==
X-Received: by 2002:a17:903:2345:b0:28d:1815:6382 with SMTP id d9443c01a7336-290cb65b674mr335551455ad.46.1761260379120;
        Thu, 23 Oct 2025 15:59:39 -0700 (PDT)
Received: from [192.168.1.5] ([106.222.232.102])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6cf4bb9259sm3169412a12.2.2025.10.23.15.59.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 15:59:38 -0700 (PDT)
Message-ID: <b7b1648f-91b5-4259-8d7d-6d4645f065c0@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 04:29:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] drm/msm/a6xx: Add support for Adreno 612
To: Dan Carpenter <dan.carpenter@linaro.org>, oe-kbuild@lists.linux.dev,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <202510212140.4YWihsB7-lkp@intel.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <202510212140.4YWihsB7-lkp@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE2NyBTYWx0ZWRfXwVzFqWBa1BFQ
 JiQXu1ZCd198UABZXOc9brWoBOHL3SZeq8udEWj358PDCRrybBQDF8qA8GjQ6Y14J7iDfw+KDhz
 k8Smh5Rg6uAHUAvT/Z5uHphp9g0mBeNQOvCI//n8YMFCI3BP3oMqRrB4qtVc8rryjuw0hrE5nFc
 O5L42x1Br+ziurYwgwekgEKilycwMYpg4G0SXtktIMTg4nynprtR8vB+fKuwAl1ZB+RJeCq1Y8v
 jD/MXYyzgJHxDDVa7h6Mw4dt08diwmE4fRif02cocvi5bhwEqvhs1epsWcIEs4WKqrr/h0Npvp3
 qfnMMh5lbFSitvbSKgV09odzn6XScrRmIHk/guSKICnexFOCM7pF71tiTjtpIsA2KouKnS6vpuT
 5tfJbO04n8Jg4EGFPjHfWWcTilM1UQ==
X-Proofpoint-ORIG-GUID: 3uLA_RFI6gEqw5_Mds3EWHqOq_0R9lm9
X-Authority-Analysis: v=2.4 cv=WYUBqkhX c=1 sm=1 tr=0 ts=68fab35d cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=OORdEvYNKPdDRPFHMUl15A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=i3X5FwGiAAAA:8
 a=QyXUC8HyAAAA:8 a=KKAkSRfTAAAA:8 a=IvkCWOmhgfTTPoLh6GMA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=mmqRlSCDY2ywfjPLJ4af:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 3uLA_RFI6gEqw5_Mds3EWHqOq_0R9lm9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510210167

On 10/21/2025 7:45 PM, Dan Carpenter wrote:
> Hi Akhil,
> 
> kernel test robot noticed the following build warnings:
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Akhil-P-Oommen/drm-msm-a6xx-Add-support-for-Adreno-612/20251018-011020
> base:   cb6649f6217c0331b885cf787f1d175963e2a1d2
> patch link:    https://lore.kernel.org/r/20251017-qcs615-spin-2-v1-1-0baa44f80905%40oss.qualcomm.com
> patch subject: [PATCH 1/6] drm/msm/a6xx: Add support for Adreno 612
> config: powerpc-randconfig-r073-20251021 (https://download.01.org/0day-ci/archive/20251021/202510212140.4YWihsB7-lkp@intel.com/config)
> compiler: clang version 16.0.6 (https://github.com/llvm/llvm-project 7cbf1a2591520c2491aa35339f227775f4d3adf6)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> | Closes: https://lore.kernel.org/r/202510212140.4YWihsB7-lkp@intel.com/
> 
> smatch warnings:
> drivers/gpu/drm/msm/adreno/a6xx_gpu.c:641 a6xx_set_hwcg() error: uninitialized symbol 'cgc_hyst'.
> 
> vim +/cgc_hyst +641 drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> 
> 4b565ca5a2cbbbb Jordan Crouse  2018-08-06  600  static void a6xx_set_hwcg(struct msm_gpu *gpu, bool state)
> 4b565ca5a2cbbbb Jordan Crouse  2018-08-06  601  {
> 4b565ca5a2cbbbb Jordan Crouse  2018-08-06  602  	struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
> 4b565ca5a2cbbbb Jordan Crouse  2018-08-06  603  	struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
> 4b565ca5a2cbbbb Jordan Crouse  2018-08-06  604  	struct a6xx_gmu *gmu = &a6xx_gpu->gmu;
> b1c53a2a2d395d4 Jonathan Marek 2020-07-10  605  	const struct adreno_reglist *reg;
> 4b565ca5a2cbbbb Jordan Crouse  2018-08-06  606  	unsigned int i;
> 40c297eb245b1c9 Konrad Dybcio  2024-08-28  607  	u32 cgc_delay, cgc_hyst;
> 51682bc4abf4b55 Konrad Dybcio  2024-08-28  608  	u32 val, clock_cntl_on;
> 4b565ca5a2cbbbb Jordan Crouse  2018-08-06  609  
> dff2f69f3e8a6ea Rob Clark      2024-06-18  610  	if (!(adreno_gpu->info->a6xx->hwcg || adreno_is_a7xx(adreno_gpu)))
> b1c53a2a2d395d4 Jonathan Marek 2020-07-10  611  		return;
> b1c53a2a2d395d4 Jonathan Marek 2020-07-10  612  
> 66ffb9150b00f3f Jonathan Marek 2020-07-10  613  	if (adreno_is_a630(adreno_gpu))
> 66ffb9150b00f3f Jonathan Marek 2020-07-10  614  		clock_cntl_on = 0x8aa8aa02;
> 5cb9695ccef2305 Jie Zhang      2025-10-17  615  	else if (adreno_is_a610(adreno_gpu) || adreno_is_a612(adreno_gpu))
> e7fc9398e608a7b Konrad Dybcio  2023-06-16  616  		clock_cntl_on = 0xaaa8aa82;
> 18397519cb62248 Konrad Dybcio  2024-02-23  617  	else if (adreno_is_a702(adreno_gpu))
> 18397519cb62248 Konrad Dybcio  2024-02-23  618  		clock_cntl_on = 0xaaaaaa82;
> 66ffb9150b00f3f Jonathan Marek 2020-07-10  619  	else
> 66ffb9150b00f3f Jonathan Marek 2020-07-10  620  		clock_cntl_on = 0x8aa8aa82;
> 66ffb9150b00f3f Jonathan Marek 2020-07-10  621  
> 5cb9695ccef2305 Jie Zhang      2025-10-17  622  	if (adreno_is_a612(adreno_gpu))
> 5cb9695ccef2305 Jie Zhang      2025-10-17  623  		cgc_delay = 0x11;
> 5cb9695ccef2305 Jie Zhang      2025-10-17  624  	else if (adreno_is_a615_family(adreno_gpu))
> 5cb9695ccef2305 Jie Zhang      2025-10-17  625  		cgc_delay = 0x111;
> 5cb9695ccef2305 Jie Zhang      2025-10-17  626  	else
> 5cb9695ccef2305 Jie Zhang      2025-10-17  627  		cgc_delay = 0x10111;
> 5cb9695ccef2305 Jie Zhang      2025-10-17  628  
> 5cb9695ccef2305 Jie Zhang      2025-10-17  629  	if (adreno_is_a612(adreno_gpu))
> 5cb9695ccef2305 Jie Zhang      2025-10-17  630  		cgc_hyst = 0x55;
> 
> Only initialized here and not on other paths.
> 
> 5cb9695ccef2305 Jie Zhang      2025-10-17  631  	else if (adreno_is_a615_family(adreno_gpu))
> 5cb9695ccef2305 Jie Zhang      2025-10-17  632  		cgc_delay = 0x555;
> 5cb9695ccef2305 Jie Zhang      2025-10-17  633  	else
> 5cb9695ccef2305 Jie Zhang      2025-10-17  634  		cgc_delay = 0x5555;

Aah! Looks like there is a copy-paste bug that missed my eyes. Thanks.

-Akhil

> 40c297eb245b1c9 Konrad Dybcio  2024-08-28  635  
> af66706accdf5af Konrad Dybcio  2023-09-25  636  	gmu_write(&a6xx_gpu->gmu, REG_A6XX_GPU_GMU_AO_GMU_CGC_MODE_CNTL,
> 51682bc4abf4b55 Konrad Dybcio  2024-08-28  637  			state ? adreno_gpu->info->a6xx->gmu_cgc_mode : 0);
> af66706accdf5af Konrad Dybcio  2023-09-25  638  	gmu_write(&a6xx_gpu->gmu, REG_A6XX_GPU_GMU_AO_GMU_CGC_DELAY_CNTL,
> 40c297eb245b1c9 Konrad Dybcio  2024-08-28  639  			state ? cgc_delay : 0);
> af66706accdf5af Konrad Dybcio  2023-09-25  640  	gmu_write(&a6xx_gpu->gmu, REG_A6XX_GPU_GMU_AO_GMU_CGC_HYST_CNTL,
> 40c297eb245b1c9 Konrad Dybcio  2024-08-28 @641  			state ? cgc_hyst : 0);
>                                                                                 ^^^^^^^^
> Uninitialized
> 
> af66706accdf5af Konrad Dybcio  2023-09-25  642  
> dff2f69f3e8a6ea Rob Clark      2024-06-18  643  	if (!adreno_gpu->info->a6xx->hwcg) {
> d2bcca0ccccfa5e Neil Armstrong 2024-02-16  644  		gpu_write(gpu, REG_A7XX_RBBM_CLOCK_CNTL_GLOBAL, 1);
> 


