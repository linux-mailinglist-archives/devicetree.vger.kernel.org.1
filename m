Return-Path: <devicetree+bounces-223152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 732DABB1A76
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 21:55:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A5CFB1789FF
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 19:55:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3DC12D7DD7;
	Wed,  1 Oct 2025 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZGd5f1Br"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD27145355
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 19:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759348493; cv=none; b=lRVeFv5Mk3H5bR9vSZ7j68sbVZj8wl1fZEnRzyOLb3+B2kVKbDfDHXH0J2lBZp0U4xwHD8cClGXxBg5j/HdVxzlDFvyEbkmejmc2XRgVtU003tiJvatYatWs+FbhyweB8UZa1xhKCVHpJc1dKh7R3rOtUP60cBRE6FVfUmdHeys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759348493; c=relaxed/simple;
	bh=qnUGsAf9QwPxL8kNSHvcwGwC6szSZfsbKOkPF7PNNGo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FMayzYDirp+H63lqN1Rxpb2SnJtRwU/hddscbQ8qYA8t0Xl6w/Et/PmpoPACy9/DvCbGK+BcZac1EZsbnZfwSJSlzaHLxwS4ER0ujfJx9H/NCjXbHE1YreywUfE/sBucyLpD19rVhZKK6BsVfJZ6Ckvw7k0rc76HIhuJQODwe1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZGd5f1Br; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IcHnS022897
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 19:54:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	brS60HbFUtOuWxvnUIY4WzudlEdGwstrPazqVvcT3+g=; b=ZGd5f1BrVBZ6J0/d
	GYp9HNUCicoqdgxC6Fn4OMf68pMQQnYq5zgVOTJTfA9rCaPc8cIrGVwlCIpNh3qm
	tmm009Me6aoJTVIH91yL/3FWIH5QAyAxwiE44y2kKrxEu58dusLLuIDhjQqhdB64
	i5cZfKsWtyVQqnZq1zrJPnxf+treMgaPlW9mawts3sNw3Ab8hXM/PPxyxat/3h/A
	LQaS8Vo3RTZkoVloD7PfwLYYOHUx6EmaZM/7hyq9apE9NlTeMZvHTV7U5EoilAw1
	7u/rddjgU3YyWt3ydzBg5XvJcv30JWPxbO8m0aTUPMFWvFgFCSw7/Sl2q1Dw13sw
	FCoVwQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59n63fs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 19:54:50 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7810af03a63so499550b3a.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 12:54:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759348489; x=1759953289;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=brS60HbFUtOuWxvnUIY4WzudlEdGwstrPazqVvcT3+g=;
        b=Hy0VCqxzeDg8WIn+MXg7GGZTHJz+xIPCfhEiGGCG86JEbBcsT+FTQ747fdKZRokXcj
         jkY7ARDL3EiiHc2vz31IwADz6QPm3tV5hoQy2PlLijupfjJW62B7yMuafZj6bqq9eGak
         5UUZsuFYM5zQY0idAuBOyvbCcxGf1787fkIh/RT98seL/BNeNB6rXjbiLAe+NobEQXpr
         Vjf3+80UVMK04AiQCxVxWPXRN8t3jR4gn0G/yEQdTknO8rsYRNT3PU6JxL5KymNgUcBM
         V1SLJ/jRNxbtwHVnHZ4m633T6I1WkD1goUhB7/v920HhiwB+/kIGRxxB4BVkA6uFTdDL
         WmFw==
X-Forwarded-Encrypted: i=1; AJvYcCUtKZ8ivpu3N8nj1T8OeqFSLVzOnC0bHhICz+cyBa1YqWzs77yNK6cT2pD8+cRtksyMRJk0lv2bCEqC@vger.kernel.org
X-Gm-Message-State: AOJu0Yyul5wQlHSzdyu+0xXvELNMse4FwKqX4Vyxz/6IBaSaIRysrWe1
	OkktOiePQHUcEO/N2hKFkA6OnlUiFzL63Swa8m9uoNZN5OFTA54Cuiakq0v1FW5naHsR76pQd5q
	dEJkVQIrMGOUdruN2CbErblg3C8HjCiZi8WtbYBy8xYURXmzbpftcKuYcHiNKBKys
X-Gm-Gg: ASbGncuAa8cjimw4BwJHv1mtkPy/nFGCFDQ0oTVpNLxgNBAfybRagmDsYKfRGpX0I8E
	WCnvNYtCntiClmz4iZ8afzjiJSXe6qq6uo4uLpidNPW2ktvNGF5vR+AvMO8G8l9r/ktp9laTSGo
	/OQOJZ4puBl8ncjSZm1cxFZs2HTmS6xTeX4e/dIknhh9nW9qtCJWoBAQxls5n8GxjOCszdNk0SK
	ighNfLPAPwjeEVi7hhv852NQhNIevpN3hakGgSiBdMYT7RejtuWbgBSHbYmSWh+lOtjQzfaJE7U
	Xsxm2z7BRWejVptMlPwjIRwK/miRQBbMMwiA/cYxjCqQ0AEUaJXda9Mn/Uyz9s+y8HA=
X-Received: by 2002:a05:6a20:258f:b0:2b1:c9dc:6da0 with SMTP id adf61e73a8af0-321dfc7f1b3mr6835307637.46.1759348488856;
        Wed, 01 Oct 2025 12:54:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsIg+XF+b3CzfwLXlkZJJwTtOF3hWxO1NYUBnIl48kRjZPlbxjVEtrqF7B3r6dPLdbru/a4w==
X-Received: by 2002:a05:6a20:258f:b0:2b1:c9dc:6da0 with SMTP id adf61e73a8af0-321dfc7f1b3mr6835273637.46.1759348488399;
        Wed, 01 Oct 2025 12:54:48 -0700 (PDT)
Received: from [192.168.1.9] ([117.211.42.17])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099f729c3sm297566a12.46.2025.10.01.12.54.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 12:54:48 -0700 (PDT)
Message-ID: <82cd8782-b2ee-46ce-9964-e564ab6a0199@oss.qualcomm.com>
Date: Thu, 2 Oct 2025 01:24:36 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/17] drm/msm/adreno: Move adreno_gpu_func to catalogue
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
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
        Thomas Zimmermann <tzimmermann@suse.de>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, devicetree@vger.kernel.org
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
 <20250930-kaana-gpu-support-v1-6-73530b0700ed@oss.qualcomm.com>
 <cp7djnezyp4whhfqcnsfpes5kxfbyvqvc2ceimdrnrl7s7agyk@z7ozx6oihezd>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <cp7djnezyp4whhfqcnsfpes5kxfbyvqvc2ceimdrnrl7s7agyk@z7ozx6oihezd>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: A0GuJ86RdEsv4eis-m-2jSG5ZHjtO3B-
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68dd870a cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=paYLq2NZIH8GVbL4gQAG2g==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=Qop4gD_cnJnpb7o7aosA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: A0GuJ86RdEsv4eis-m-2jSG5ZHjtO3B-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfXwb/YFnWHaPNo
 43YAiR0QbEEBVsKhFzAEdKk9I0WNoPvVBAv7439b9p9q9IQBhhjyZN0ap96RYaEeDHL207RVdc3
 6V4kuX1WY5M10IlciQI1lYY4hZbSz+7VCyPjGOiQu4wpqSOGaPOLO+QczgbTMMBkjYhNEb2I1Mn
 xH9O64LFb4P+Hoq7nPuUF6KO76G3ekjuZOLMFvsaNMhcBjk8DV6pg5/7VMLatEWfwv4t82IpVbe
 wunBcfCwySMNHPjsiBgHt2jrKDYx/SErdqw4aCkaBoERzNRY4+HslOykUlWIvrn1uRIBcKZsKPV
 9kHLLO3qntyJdgkiBbWDPwY6vLUhTJKxoXP0DU/RlOO1vKx6jxhwaQgZA0NJl/64PhhVUn24tjR
 joayO7gCNNzXV/sdtBB9h2Zvh+mH3w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001

On 9/30/2025 12:39 PM, Dmitry Baryshkov wrote:
> On Tue, Sep 30, 2025 at 11:18:11AM +0530, Akhil P Oommen wrote:
>> In A6x family (which is a pretty big one), there are separate
>> adreno_func definitions for each sub-generations. To streamline the
>> identification of the correct struct for a gpu, move it to the
>> catalogue and move the gpu_init routine to struct adreno_gpu_funcs.
>>
>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>> ---
>>  drivers/gpu/drm/msm/adreno/a2xx_catalog.c  |   8 +-
>>  drivers/gpu/drm/msm/adreno/a2xx_gpu.c      |  50 +++----
>>  drivers/gpu/drm/msm/adreno/a3xx_catalog.c  |  14 +-
>>  drivers/gpu/drm/msm/adreno/a3xx_gpu.c      |  52 +++----
>>  drivers/gpu/drm/msm/adreno/a4xx_catalog.c  |   8 +-
>>  drivers/gpu/drm/msm/adreno/a4xx_gpu.c      |  54 ++++----
>>  drivers/gpu/drm/msm/adreno/a5xx_catalog.c  |  18 +--
>>  drivers/gpu/drm/msm/adreno/a5xx_gpu.c      |  61 ++++-----
>>  drivers/gpu/drm/msm/adreno/a6xx_catalog.c  |  50 +++----
>>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c      | 209 ++++++++++++++---------------
>>  drivers/gpu/drm/msm/adreno/adreno_device.c |   2 +-
>>  drivers/gpu/drm/msm/adreno/adreno_gpu.h    |  11 +-
>>  12 files changed, 275 insertions(+), 262 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/msm/adreno/a2xx_catalog.c b/drivers/gpu/drm/msm/adreno/a2xx_catalog.c
>> index 5ddd015f930d9a7dd04e2d2035daa0b2f5ff3f27..af3e4cceadd11d4e0ec4ba75f75e405af276cb7e 100644
>> --- a/drivers/gpu/drm/msm/adreno/a2xx_catalog.c
>> +++ b/drivers/gpu/drm/msm/adreno/a2xx_catalog.c
>> @@ -8,6 +8,8 @@
>>  
>>  #include "adreno_gpu.h"
>>  
>> +extern const struct adreno_gpu_funcs a2xx_gpu_funcs;
> 
> Please move these definitions to aNxx_gpu.h (a2xx_gpu.h, etc). LGTM
> otherwise.

This is a special case. These symbols needs to be visible only here.

-Akhil

> 


