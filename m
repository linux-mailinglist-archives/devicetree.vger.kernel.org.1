Return-Path: <devicetree+bounces-238331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D0994C59E45
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 21:01:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9F1E3353950
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D27130C605;
	Thu, 13 Nov 2025 20:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fuAxD8wc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ivj5YT6r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB34313E29
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763064016; cv=none; b=RAr3BFhmBU6s+L23+kCxEP4a8GTJUr/JFW7yv79TqYntk0m1xGB3ZWOoXBzCbrIbXSVR+DkbzULEVrG16zDaAd8sjbrRpAWiR0ThJjiVwNP0UWYx3ME2tY9DnrflNRtFZribXj5oErPX9lFy71/9039RqS05Ga9cEYL/sha0N0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763064016; c=relaxed/simple;
	bh=1DAdQVK6CcKp8rIYP9ca04DjW4Iqw5yNG0Th0nmNrzk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sZaffEi0EUzGaK+PAAB/RFkNuOinH4tO9ZX2aSzAfuEwqFcYRz1kRlVAFi4TwbgFq6c03dvE6++3U2uVGM0H5VPwe52Dx9LFBLPTv+JDtjCT4Yg2o6xePcNbkPiJnJNIU0wQQWG6Mgi6WS/j4iY0Sz6LOeH+PFOoQQ+SGR7AWwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fuAxD8wc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ivj5YT6r; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADJN4jZ1061866
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:00:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OJ7w+mpX/9CJl+Orva8v96dQySUzco1O64PcH/xD3KI=; b=fuAxD8wcsAEwL5NV
	bh1wPbEpv+tKK62AaSEWu70KnScWrWuMyJUhri/6SUyYJmD2GISZk7hmQjrkZAIW
	bKcoENtov0aleRgOVMYAQ4JDtwgqewpHJ0XSY1NSKTu4HAPlNyjVCtjjguMSFGgx
	Dl+3aF/RDg6aysVhZW1VLTpk3CzGeybZYPnOit2k/Jd9mzdf84wifHdfltosinqb
	N8O4SuZaBpnlNEAa0SXtAkWRdqN9Ks65fzTVcjUmlyJRTdEDLF1yGAMAjWN+MnJ8
	YN+RVQZwBxSKx+YAXAlZcWkeG2oPDHRXnvJ05PBji5dMGfCYFjl1qjuG6Qx18FiK
	K9/mRQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adnen030j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:00:13 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7a26485fc5dso1208644b3a.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 12:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763064013; x=1763668813; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OJ7w+mpX/9CJl+Orva8v96dQySUzco1O64PcH/xD3KI=;
        b=Ivj5YT6rGOpwW414PnQpphcuyID6EIZIeL2lSQ1pAZ4RUXI9xx2ARqItCatUeC42OQ
         SwjmUrVQ4+WHYGq6vgFEW0qv5ezq8n91+SjQQ0O0dCUz7Raqn6s4csAjNrDed/J9N2Yk
         Lo5looPB9VLvlYAmP4zQLBDy8c9WszP3cypTXy6KBBwtgffvxKgaSheC4ZQXGbXHFmnT
         6mGiVd5z8l5nW8vXvbWvq3ROH59by6Zs+XfjcgAJ6Tbv6G1co4DYsPvKgQQ4LRbjdest
         o9ugkqJzgSkms/yhCsnuVmOsDOMfxJwTd0JeCCntAuoMCyK9/gmaxKQgrTxajqT5noog
         n2GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763064013; x=1763668813;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OJ7w+mpX/9CJl+Orva8v96dQySUzco1O64PcH/xD3KI=;
        b=s93RZniQsIPuu/7zFwh28Pd/PJy/IDBEF5ji8xT4YGv9PnEHcNjqv4ZX591zI+QH/g
         wIbg0SwNEXbVAHpPHExWcnH1M9XazEHpoBJerH4LUd9734mNPefiJ4lOZKBcCdtM7n8C
         d28wsNM0/sIM5m+gJHL5LK3D2qotvTyrRPvpGkGV9IEc2ccst0yW8BE9T1wE2JKavo2I
         iz7iwpdCLIZviu83xorovjIV4r81BBduUUjJWJlC1B5MuXavw5/WnEs+1bzaTUyBN+QP
         3khzL1STVh2q50gJVeJjPFx4pWDIPNBRtgqvHBhpz4TC9HVkw7ZL7AD+5eXIZRaIDL1k
         BmRA==
X-Forwarded-Encrypted: i=1; AJvYcCVdVNRmhf99l/Ojjan7G3/e+j1y0uam/rk+L7HyT6ZQbRyg17v418VL2GwSziOzcqIoBdncGHxsDe7V@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4cK/lbzA+lMO9JbWBbVwEBsm6TVWeE3Xr3kQw1gb7kmvA20qq
	FStIlhzTKEVvfBTIIo7MO2UL3BieceL9tmhSTQXCQwOEBDlEqfCfN6aA/y+dTzuR5DC9KJOc6XW
	eHwFZyB/SZdBFwSHIVB4DB0Ztx3LuNyGMZblgYvPpqh+URVnVgz4YjpE4DlS3vik0
X-Gm-Gg: ASbGncsHBNpE/WxiTkXWTuI4iNPpFWgqsA2AeAFrDyWi4LIfkIu2yRa4SgH01MyakPq
	BA7abM1D4XuBNN0IStYMYzAncQjVMJnH00Ef9y5bsUjdWTzUeAbuINVIxIPxarD/WB1uRCgWVSL
	Uu5HNPoRgM50XB/V0I158gXdbQscpluOnBVGGrSd+HN3u4X2V7uCCGzuZDtrGA2TNnxjOlYzYYZ
	Wkl8BjEmEg8PzsmYgKGyeZDFqcBnF/Ao3+Gc8PE6L2hV2knVm3s7BfmTtB1pmKWDkJoiTxV0xpj
	2P3cGPtcLyJR5FodQf4RjSHTnODaziaCxAAuBwlPnjp1z4bfv5dFHj2OPZKXp/koJ20O7UYlx5Q
	rxmo1bC+Hc0eU7dw8hUjrNA==
X-Received: by 2002:a05:6a20:5483:b0:353:1edd:f7a with SMTP id adf61e73a8af0-35ba30634a3mr896592637.59.1763064011778;
        Thu, 13 Nov 2025 12:00:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHZ3uM6rWYFMlAKzZmNJ84R9H/A3/jUV3dWp4GW6Y6VWrqLNpi1YOXm3417OaJPss+ncsmlsA==
X-Received: by 2002:a05:6a20:5483:b0:353:1edd:f7a with SMTP id adf61e73a8af0-35ba30634a3mr896525637.59.1763064011030;
        Thu, 13 Nov 2025 12:00:11 -0800 (PST)
Received: from [10.204.104.20] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bc37507fc7bsm2929570a12.23.2025.11.13.12.00.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 12:00:10 -0800 (PST)
Message-ID: <fcd703e5-d483-4369-8149-a25cc733bc2e@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 01:30:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/21] drm/msm/a8xx: Add support for A8x GMU
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
 <20251110-kaana-gpu-support-v2-10-bef18acd5e94@oss.qualcomm.com>
 <f7e204ac-28b6-46a7-903d-30b7f31dff8b@oss.qualcomm.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <f7e204ac-28b6-46a7-903d-30b7f31dff8b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Zpfg6t7G c=1 sm=1 tr=0 ts=691638cd cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=tMg4Ou186bfY0pTZoTsA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDE1NiBTYWx0ZWRfXyYHwDRZ3QgsH
 ZGMeDVDwEnHuk5g82dubrGoOvkkbXXHXeOdIdUUSeKuhWkM+1uGlDoplmwIjYbuRkNj+BGbW285
 6xIHVcuFPu3ul0DDkQG/7pYv8b+ZO5fWCVgaEBiZelnLAMmt1CzHdrM8DzbWCe1AnLKuLLf0JNK
 OxIOOc00NEvUIde12o7CL7yFOzrF/6Qv29nlVR/tDI0v4upYiFB7AXHCC9zcbo39PkJ5QxCg6hE
 wVRlsQYM7yfjEa5VmuVhwCks5A3Z66bHxYPfRU6+5mFqGagpNIqmtNE0ME9D0nYvW9wTevDSkyh
 nq+BiIu/+F0A9EWuAURfsarzo4ENwn+GVfkeHeiDWFwR2T8gwlwttCgFgHB+/4wSIWqG+286N0T
 NTOjygyj+TZ/0TKe92yq3PyucU80jQ==
X-Proofpoint-ORIG-GUID: gKQ-PnCP22kVMzSmCgkR_pc4vj6oor6A
X-Proofpoint-GUID: gKQ-PnCP22kVMzSmCgkR_pc4vj6oor6A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_05,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 bulkscore=0 phishscore=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130156

On 11/13/2025 6:40 PM, Konrad Dybcio wrote:
> On 11/10/25 5:37 PM, Akhil P Oommen wrote:
>> A8x GMU configuration are very similar to A7x. Unfortunately, there are
>> minor shuffling in the register offsets in the GMU CX register region.
>> Apart from that, there is a new HFI message support to pass table like
>> data. This patch adds support for  perf table using this new HFI
>> message.
>>
>> Apart from that, there is a minor rework in a6xx_gmu_rpmh_arc_votes_init()
>> to simplify handling of MxG to MxA fallback along with the additional
>> calculations for the new dependency vote.
>>
>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>>  	/* Make sure there are no outstanding RPMh votes */
>> @@ -990,7 +1022,8 @@ static void a6xx_gmu_rpmh_off(struct a6xx_gmu *gmu)
>>  	gmu_poll_timeout_rscc(gmu, REG_A6XX_RSCC_TCS3_DRV0_STATUS + seqmem_off,
>>  		val, (val & 1), 100, 1000);
>>  
>> -	if (!adreno_is_a740_family(adreno_gpu))
>> +
>> +	if (!adreno_is_a740_family(adreno_gpu) && !adreno_is_a8xx(adreno_gpu))
> 
> stray double \n above

Ack

> 
> [...]
> 
>>  	/* Check to see if we are doing a cold or warm boot */
>> -	if (adreno_is_a7xx(adreno_gpu)) {
>> +	if (adreno_is_a7xx(adreno_gpu) || adreno_is_a8xx(adreno_gpu)) {
>>  		status = a6xx_llc_read(a6xx_gpu, REG_A7XX_CX_MISC_TCM_RET_CNTL) == 1 ?
> 
> You skipped writing to this register above - can we count on it
> always being in the right state?

Warmboot is done differently in A8x. We can explore that later. This
fine for now.

> 
> Do we need to map VRB, or is that a topic for the future?

Yes.

-Akhil

> 
> Konrad


