Return-Path: <devicetree+bounces-237829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1F2C54ADD
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 23:07:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 17B934E04C8
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 22:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1D922E8E12;
	Wed, 12 Nov 2025 22:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cHA0o/fh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D/ToLOzg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F35D72BE7BA
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 22:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762984984; cv=none; b=uZpkraC/KNELBTyG2iCz4oWuC5i/GPMxi62ztZRhKaTEudrEQIrB9m67nSyrAzRBzbB9WBoo6IxY5feiNh36xiPVzFHIbVL0Mr+U0E7kCARhXPkJzNwBonJynTflJRQP9xsd5AreMvrElA/E9+fwge+WFRf27p33ryDSNqILaIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762984984; c=relaxed/simple;
	bh=RkPfHlmwsqwzHclliKqi/Zquq2J/tXBfOO8ELda2TsQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OpUXmpZ/JAdtUMlGdZBcbZKs4NbAPRiccLbmA0HkZtGcIWNAHqK1Kn088uSb/hUcF1OKbBbYeoIzKKEQQSuep/BelHe2TAWEtJQE81DRKFjmaejIO+Q1di4A2RcDlGa4BW/Os4Udmfg5h12OgD+SdtwEEWwFAq+vLf0iATBc34k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cHA0o/fh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D/ToLOzg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ACF2OiC1614587
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 22:03:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	d/nTs8LVBJqSn132QZVwYlosV14mCj856uKAHF6W+UI=; b=cHA0o/fht6HtoqNI
	X2cYYYSs6rD1AE66bCG5GhR0LOm9LtO7Mobjpxoyh3U95AlY29yom5E7WGfeb6kW
	UZhdWXha5de685yIUOUFbiGYTJL1cifGUzOVgzEHA8tMX81I2u1DIhyu3vfXk7gf
	PiNBbBzVjBv5J4JD+tvjbGU+6glXD2zrN+SItouNpSIDY2egKFY2EzgIONn0u2Kv
	bO5ih6SjmiIh8J+TftgLVC8WyCxiZiWrXt6albknM9MMXu8nHASqw5x2mx41WUYB
	H9qA70549eBQUyzq6ZtpLH/hCI98INtheCd15AVSEtGZPZJkZQb/jSRiy0CJ9Fo8
	a31FmQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acvhfs84x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 22:03:01 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-ba265ee0e34so118897a12.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 14:03:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762984981; x=1763589781; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d/nTs8LVBJqSn132QZVwYlosV14mCj856uKAHF6W+UI=;
        b=D/ToLOzgqsszDmPqKKQVijHaRSlooJJ2z2c7mjJoDi12EYgZ3jORx7B/Wmp8G52pUR
         Uslq0O2u4plUybSd12xjydILJvbEqEQZ1sC4z9MmO32EydfkUfR/Q5jwmDYyIMpazKyy
         cqHB0Z+aFs5LPbFOCBpVqaLUkZ8BDw7SdfZ8Kz7w0FJfDVLIM9tKCFLq0dqNt6jtAkF9
         FrekCzZI2QBhdy1PHXiu5WhwjzAy6i6D8BRloFuk6wNuWr8EJZI6yg5ZvxRQ7FAOrBjW
         P9jtY/x80/4zjSIsC6ca0BFhG06XTc0JEk+iOUbtEEz5Bb3S7znbBRcotlUq8lAmVBDK
         YFJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762984981; x=1763589781;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d/nTs8LVBJqSn132QZVwYlosV14mCj856uKAHF6W+UI=;
        b=RSZt8vTSAy76hWKKkbGveikSDxwr3Ys+/pFPR62S/amLsDRwuLpnq6nYtep5JRs29A
         mDcb4XvHM3De8EsffrMIv9Dc8EVGTJ8XQqNguu5r0fxRc3gChcoo4K1d88AKrdtdwBpE
         TSNMRhMyHbdg5bgCKPccCrf3aLDQXFLOUVMbD7bmD/k7VbJaGJseMfy/ky9Ws5W0ueb/
         TBxpFdI1JUWDr6kFPBrHF8NcqHJr66dA6HZA/oO9upZOFVVHeljT+MHIIvATNv4wZ6bx
         WcGkvyrXPMv1aa0Drui0xSoBdT2n1FrhZEdfHfYdwq6N9HU4pyu8PYpeZ27lOvpthf8y
         vOXw==
X-Forwarded-Encrypted: i=1; AJvYcCUVndU/9iI/2pnQT7a64KAtxY9nzgC7YVPsF2uFqjllH5PcMm8rVzI2Qt8P2tTbrbfRY2pPa5MmKaP1@vger.kernel.org
X-Gm-Message-State: AOJu0YyQbYVTJteZNvw83FhoT26TD4hRhD+bj5EoRo9zgGZN6/hGgrMi
	aoyhWNwATq2fAl9LWKRT9vU2XLMrySohifL7H6Z416Jb+LxycJFD2TWai6LWds673OLcKs1X8O1
	YzzWXIm05yXFzzi0uRViWSbCsb63NH6CnnSlZiysFYbmr3wuPPlZj3y74ZmyxFSHm
X-Gm-Gg: ASbGncuDtomfY2uBem3O3p5pRBxKsSNlKrZHud8Iij4KwqssDcI3Co/55jrbgY6euy9
	dZyEri6+0zDTjWrkyJ/qC6+xScEH3f0+VbXDEObu2cnMsqZuC+BERKduRy0u2sAYsUuVLvt5ZB8
	isWCUM9xOVChGKVgAAB5c1N4mGkSjYJkOOeRTVcjZ0ue4TgEHBGRyka91ThLwhNe1yqz3LndWs5
	DGZsQJfYukVIkaopZz+J5OqiLD+2az220Ue4bOM9gf5cnQKSGgHab8our7Niq0YmgYWl3stlo6D
	msxaUGJtWgJ8IOch02gTvH5FzZYdO8QKqbfVrldDOVcTwO2LKQAqsUvOc2/BQIoSyMNSIiFAtsf
	+fgtFcGyIE1R0VcKyOsxyOw==
X-Received: by 2002:a05:6a20:a110:b0:306:2a14:d0d4 with SMTP id adf61e73a8af0-3590b514a27mr5686015637.43.1762984980839;
        Wed, 12 Nov 2025 14:03:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHn1u1Nzkjc6Q6wIjoT4YUJ/liTOuUsOAfbNf14qAseJxfRuSew1Z6BWUptugvCHiHCrtJQpg==
X-Received: by 2002:a05:6a20:a110:b0:306:2a14:d0d4 with SMTP id adf61e73a8af0-3590b514a27mr5685964637.43.1762984980255;
        Wed, 12 Nov 2025 14:03:00 -0800 (PST)
Received: from [192.168.1.5] ([106.222.234.47])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b9250d28c2sm54557b3a.26.2025.11.12.14.02.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 14:02:59 -0800 (PST)
Message-ID: <12e6f588-e422-4803-ae14-56e5297e564d@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 03:32:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/21] drm/msm/adreno: Move adreno_gpu_func to
 catalogue
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
 <20251110-kaana-gpu-support-v2-5-bef18acd5e94@oss.qualcomm.com>
 <28d62905-c191-4c3a-995e-a4146ffce619@oss.qualcomm.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <28d62905-c191-4c3a-995e-a4146ffce619@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=D49K6/Rj c=1 sm=1 tr=0 ts=69150415 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=2IP1oaZ8+KUWsYovLW0HHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6-R1E5pqECOcxGsB_ukA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: i0cEHFSY5vHtImQREu3cPBBMtTtg79cz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDE3NyBTYWx0ZWRfX/BbSdr6W4gC/
 rPeX9jj3JsudPeZ25X6kRB95FNqTwo8wGN0KLdg/LcxAVOWflV36y0VHo+C9VVxx3TYcZ3r6Mh+
 iEXMZg6NCjh+3xtPuyBix8bzWffzby60vOryluEZr/I7BLdicGkezrwXkGonz8Uct1IHXvPSEOA
 DfRyy2gFrCx4CDq5sbym6a41Q8224h99MiE9kt4BIOAEcYgz4l+QXL6WPOr4bzNdvx1BL0s8s/a
 32EugYzaR7brjLHM5quS+pJ1Ds6KDPNpQDPYbQUj1YT+gr+sIbR6yEW9CStBLw6EukSGZHt3e75
 XVa+FwlrbOlEeO3fkERcxT3xxm77Cy4P/mnwH85iC8DzRLUkXrfp0tXYoZI4yZcf+tGIaes5Ze+
 5hBOGHtBurLljuDlk4pAPpN0YSfDag==
X-Proofpoint-GUID: i0cEHFSY5vHtImQREu3cPBBMtTtg79cz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_06,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 bulkscore=0 adultscore=0 suspectscore=0
 spamscore=0 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120177

On 11/12/2025 3:52 PM, Konrad Dybcio wrote:
> On 11/10/25 5:37 PM, Akhil P Oommen wrote:
>> In A6x family (which is a pretty big one), there are separate
>> adreno_func definitions for each sub-generations. To streamline the
>> identification of the correct struct for a gpu, move it to the
>> catalogue and move the gpu_init routine to struct adreno_gpu_funcs.
>>
>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>> ---
> 
> [...]
> 
> 
>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>> index 44df6410bce1..9007a0e82a59 100644
>> --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>> @@ -683,7 +683,7 @@ static const struct adreno_info a6xx_gpus[] = {
> 
> Somewhere among this diff, a619_holi needs to have gmu_wrapper funcs

Could you point me to the holi's devicetree? Currently I see only a610
(sm6115) and a702 (qcm2290) uses gmu_wrapper.

In the driver, adreno_is_a619_holi() checks for both 619 rev id and the
gmu_wrapper.

-Akhil

> instead
> 
> Konrad

