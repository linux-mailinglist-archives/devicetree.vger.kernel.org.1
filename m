Return-Path: <devicetree+bounces-239723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F07FC68B97
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:11:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7C4D54E3C9D
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AB143321D9;
	Tue, 18 Nov 2025 10:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GzmP8zWb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ol4v3Qwd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794C333436F
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763460591; cv=none; b=ESUEwEA4o15xfFajGNcoG89/pT3DO4hl2yQF3ETteFOPa14x7hxpbYFlBgdwG+efyP5keQZeE3OaUJ1MTwhbSTrG7sDrJOSuD1SqgNEPca/h4FS/GFRg42fnGOWT7CetQ4SGtR1Di0ovuAQwCMrcAfOd4bksJ7QD5Sbflyu5ljQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763460591; c=relaxed/simple;
	bh=OqUORvbTuc3X0J/VSCAu/hr2s9Hhv+URzk8dOXhc72o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SjdZit2H/xnsPLV5q4/sJ2jLP1p24aAXf0lO/oYncJ0b4ZY78CJfluZMfuPm97m9RiEed34i6xsY8PnBQpOhvdl0PUyvU8wZWLPzOzmATLzfYu+VQcbfdrSsoYMhP7VBX7IWotrfZt48Z9mbHy4SgSqaurrXmaWLwv7W5lPYuok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GzmP8zWb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ol4v3Qwd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI3BPb8375679
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:09:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TpA86malWsoC8khMUULp/bosX8u9eRqCjiBugIRYxnY=; b=GzmP8zWb6LZ+TQYq
	2YlKVJKFLi6qZA9tSJfMbgKW3CE5waFIrbAsCTuu6eIScK00r33Pv233EF/Fk8Ay
	w3qTpZ+PkhXLgVtpU6kaRSZbgRJs/kylg8B5HejSwP6W2hBmhk7Hc1vKrJGZQ0Id
	7yXn2grV5te3qPGf2XFw9jSu4XSAZzgAM83S8WeMQj2U7KeJf7+wgnD3oNKmVfcc
	dlWxyJR64rI+CPrnwT4JtkHTrGClgLj2RxUo8dRBvqeXYHnaXTJDBWAhx8ePvJMd
	nJEwc3QXWs+JFonu7sDhJCo8sQHNr2bDRmiugJV9b8Qziw0tETjFFGNfXcx3lzch
	5d+unw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag76njrcr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:09:43 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed5ff5e770so13332741cf.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 02:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763460583; x=1764065383; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TpA86malWsoC8khMUULp/bosX8u9eRqCjiBugIRYxnY=;
        b=Ol4v3QwdAGkWKFSrlYKqLi1aIb/Wu5vIbWIkZujYf9kiVd19iFDtLMGOUI5VsBmBFa
         mojexrhxbjY69Wz5RPPSzHa9McE1YfgjI3haoBBLPvy1ISarDul2n2qvoS7WtjrThG9Q
         Ai5JgQzrp+OJS1muAqO2EQyHdoEB+nWTSqXu3DY48N9Sc2Eq7chNpCNCBtTQhQKZs1L9
         49Xe+oPFbhOy+k6elSYPIj5yqCMRg7YQ3vPsl6P8gsJkWn72ryFcs1JN6sC5LtjedVzA
         i8/TdKu45vH3Sq+rodJIOVnvVZtV11Zh2yiB9wakbcR3gbXxPZvGY72cdqSG0XkfTTxW
         wJUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763460583; x=1764065383;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TpA86malWsoC8khMUULp/bosX8u9eRqCjiBugIRYxnY=;
        b=ilnp4+gWGDRVIOvWIRMQp6SXqFiDLe1JcRtCfV31L4zUoq2V84/uimN6NpP4BWadJX
         RPj/o8RtH8UUGGopt0H/iXUsRZe7bAyK6O2jWARhBY5cjfkuGC2+M39ihVXPv42nCm4X
         rRLbt/k/y1PSbo5UrV/LC+njpCzcQtmEI7gcP5jRQYodfijpDqJ/sC7IXPqTW3BOSkau
         hpLkRBzNkrRS5NirzUUbuhEwVhHRKtxAmayBTz7sH8BmktVTKC2Yk4XzQpfGywgavAXx
         O8cO1gcOvTHnUzCpZz2qoAnPk42wD2usP+I5C8hpGO9gmHQ3QM+H1Zeo1o6VmTX4PShq
         qv+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUjmTuCPBhDMdfkJ1XsR8579PBXAlOs84HY7Sf5pQaXZvkI2SArVspLCH5OkZSZgYAEbq9bnOVhBsiC@vger.kernel.org
X-Gm-Message-State: AOJu0YwwsdrIc/YCOuz3mRe/s+/hr39EFaoMNALzGOqggOwnfzEyXT+c
	PjhIzbs2/zOF20wWmCEYpBLGPFkajXSSQCIShqLP5gLrbOz8HSk17uPjegvxKHZhneYnG+uF8j6
	yYOjJBrdYGlZiQXuNtmwPsIALXgTiy+w2xs5fHLAA2o05jvIk0Fs+TTxNiian27KU
X-Gm-Gg: ASbGncshP1S2JYlMNMRQ84MKl+uVdSYfJj99kgmLDgHK40yvRxHngBRuREs7CLCzaHc
	85vTuOqmfvLXYB0mEk/bSQbubcciluN0EthlKpKC1o2G0elg+7KYoKtnUZNoKv0rq9uYIEy8m5p
	igV83MrTZ8er1TrRTNZJ+D/oJAvMlWiiFiLC6IyJ9h5bZGjtHlAucmcTjsRdad27XhZKk/JdVze
	+MO3qcymByZ/nJuljV4FFJzwSq+jrsuUkWx7VhF/TXp5zURfOzB5Jq781+zBEq/+ifnJ/w3W/6B
	yoYdEEjSgT/rvF40v4LzWjKpH04fpGhNqmT2wuFqG2jlxOwc6HqCLafE7d8Emt5OmRxdpJzRSpp
	I/CXRCFUE6n8BbRmLOl2CIAnnhrG+vwyL1wrMXK/av/U0WH5t8YKHfP5NE8o8HdKnhc8=
X-Received: by 2002:a05:622a:10a:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4edf2087991mr148537431cf.7.1763460582682;
        Tue, 18 Nov 2025 02:09:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGN59Q61Eb2CNlYDxQpBWVtF5VFujGxsR5/ckcEtaIq+KMFxkfUpWv8DK6msTFYM50HKOrU6g==
X-Received: by 2002:a05:622a:10a:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4edf2087991mr148537121cf.7.1763460582152;
        Tue, 18 Nov 2025 02:09:42 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fb11d94sm1306025766b.30.2025.11.18.02.09.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 02:09:41 -0800 (PST)
Message-ID: <0167a373-79e2-49f7-a765-d3a770ff2395@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 11:09:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 01/22] drm/msm/a6xx: Fix out of bound IO access in
 a6xx_get_gmu_registers
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
        devicetree@vger.kernel.org, stable@vger.kernel.org
References: <20251118-kaana-gpu-support-v4-0-86eeb8e93fb6@oss.qualcomm.com>
 <20251118-kaana-gpu-support-v4-1-86eeb8e93fb6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251118-kaana-gpu-support-v4-1-86eeb8e93fb6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA4MCBTYWx0ZWRfX3YD5kaQo+aBV
 RsY+2vqUDWJa5GXihfHpM+v+b49f1vKNk9ydlOrmTVrZYDtsOrt50icWh/XEYbU11G1Sq1KqUGG
 yjvFXQP9Br211nK2CZofc0dODMS6zzp/ziV89E8737s1bzDWnuBPcMZh9J3ZYVIFcDgj0CJaOfp
 HwgzVLoq5KiFFAXKqEo0ZkG62QiTe/I4TC49WuO2YrA51sDMibo8A6tWz4Ej13ad2ILpe3w9VKS
 myZcVkHMDvlWbNabryQaSE+r2kb4csayUlwY067yOeWJKTseucympLXXjGiSZfVQvmyZcli+yAK
 VOjkGwuTIBvE6yd7G4XlfnU3mXVArHpOmFX+/DYQqusM9dzbIgb8VySjoM8bp2qNyc+szt0cvM8
 b4jqnauPzrW+fKkv5W1v6TTXnIJ8zQ==
X-Proofpoint-GUID: rnwxBDV7OQVNpzH7U6Qi-g-0CuWsSRtV
X-Proofpoint-ORIG-GUID: rnwxBDV7OQVNpzH7U6Qi-g-0CuWsSRtV
X-Authority-Analysis: v=2.4 cv=a4I9NESF c=1 sm=1 tr=0 ts=691c45e7 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=MwKg9OkWFYoYUW3DDnkA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 clxscore=1015 bulkscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180080

On 11/18/25 9:50 AM, Akhil P Oommen wrote:
> REG_A6XX_GMU_AO_AHB_FENCE_CTRL register falls under GMU's register
> range. So, use gmu_write() routines to write to this register.
> 
> Fixes: 1707add81551 ("drm/msm/a6xx: Add a6xx gpu state")
> Cc: stable@vger.kernel.org
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

