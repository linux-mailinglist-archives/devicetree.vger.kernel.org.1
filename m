Return-Path: <devicetree+bounces-223211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E880BB232E
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 03:01:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45A423B0197
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 01:01:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 365152E401;
	Thu,  2 Oct 2025 01:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pzJAo28G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B46FB22097
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 01:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759366912; cv=none; b=nMHgEnzHT6osqvIY0koLzEONK3WWJ9Ql4TOM4WFAQtlsh+LRgheS1SR1vpQ7Uw2jdzujm+Z/Yqq+VAyoBwLLWZ+kh2MDaNPaWIu33akXRewpHEImPXY84Bg2BvsbKZjVMk4qLiyHGXZpFh+fc8s2n8TYz82iA2gSbvEE2qpLFW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759366912; c=relaxed/simple;
	bh=HCZdNAoMBnXI97RBUrQ9js+GcawBirknDeCnyIBfdF8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qDx/tTX7yB486RKO88wx2TK5jpvU19Pw0XKHFeX5SMx9D22cllVoD7yVx4YNDJLvO/tg731LCsjrNVGqdQs3WkaNSeyNS+5aJ/Swe3JX3ZheFEmlJkrXzu3DVztZs5gRZWOQgdQXL4S8IJfTduJ6ewdAz3+mGMXu4k7CTZaId44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pzJAo28G; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IcUfx024838
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 01:01:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+uuV+cAEUShNKUExukS8Sgyd
	D6777ETGVMv3jAdKCJQ=; b=pzJAo28GyVqZx1sMk+eBu2npT920kGL71Izeb9ie
	5Sv1dzeXKseKZQpR6MRLHAUdZTQhn9lZI1VA2Tr1CG/guG4ptPbv/EqNjdbZ3lBI
	YS2+vGtRN/g1FHQ8A4vvoHJVpYXOo6BWE5NE3Cpq/joefc9THzWLWwERRU4TzW+O
	aU3+Qqn1/Ww3pk6dJoz1LNFZ/b+SrxJEhks3p3a/vxYFJqGXT/5ARVCMZBk+WTeP
	Hmt2YUjhWVZDtdpfjHfbcwsEvCQyHDsUncpSkhBSRjpcee/3ZFTVM4QGPyksrPOI
	9RUUmlmKcRQakxMFYTFiIG9oNgZG035AY3j1TEyNGLCeYg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e977x4p1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 01:01:49 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4dfe8dafd18so21065281cf.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 18:01:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759366908; x=1759971708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+uuV+cAEUShNKUExukS8SgydD6777ETGVMv3jAdKCJQ=;
        b=hUCP5Eg9G18mifUu+wpgDndajQtcgyBXEiCFsYtXAvmr1HCQTvN6rvfdA5l6+7a3Ge
         cmUUvkNcIumdhOIulFGHyGOy0GTAmNQ9+RXO95oifhlUF2QyyRNL60dMd488QxCFgg1A
         AlorD2qafRgVIfWwYnEWWKXQcgd7cDqsQSBoxp4H3xgz0EVB8Z9GQfwz3nP61/hXFO7P
         qfVTYNJpw5oJse1ZXwsXBlKWGZAnyB+e92LUZwbMUIao5N9N862tScpIMwNCCEvCq4cJ
         xY5F+aBz87Ibf3J3OGV4SDd8wH723lbvT2F5yByXEdBN29mLyG6k+ldOHtjiuKBf9Wn4
         UkNg==
X-Forwarded-Encrypted: i=1; AJvYcCUEY7zNlk1ga3ZMoRSRDueqdDarvUuMmDODO4ssuBhsvsruInvVzDNloT5Pr+MbmGNe5tgoX9guHFMS@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2nDy9Zxzcv3HI+We7WLv+Jv0nyZ5IpXSjv7UCqeE6pwMtx3rD
	nCnPjU8fSluUjACmUUOLoABXXwUOLsiqvIIeFzilw3TYwWKt5bOXkgCB2rDA1c6+YLbSnYMCSGn
	n5PBoKXBeqrMHsn3RISuvY15aDeJh12Notey4682XP22eWeY8pnHn30AM+A5ukDd6
X-Gm-Gg: ASbGncv4H8922lRZcri0+LMjigjaKte9+/4untfwDeoqMcDEsG/a8XRff6l5gbv2L2b
	LVpAwvOy52o3HEbsbHIxmp88fC8KxFhuhiyn3bT54Agt2/e9Rtytb+sJs+D4gZMU/TOQJGmXrQ+
	AV5/HFNfb9NeGWnvjAcnampfpTgFBqv7w/TdkKsrQpGhpqKj+RGsH5cbdmu9W9OVEoMJXAH6oXb
	uVvL1d6nL9Cf61x2PPVRBlBXKfmRFuF4lw7gM9oMuBJroU7F5V7uOxn5gGXuR2gBjWFbEzNFAG1
	jDYM47g8sliGO97xnTlw5CbMsBWxsy8mCgsRuM1fbtdpHF784Hc5+7D6GemqUDlPiSjzK4+aQEB
	Qg1PvYTRGJ8DY48vmuCb/CUtQHLC0QfOyOlHWJNJjEgMPJP/j/IaYQI5yew==
X-Received: by 2002:a05:622a:7c0d:b0:4e5:c50:54c9 with SMTP id d75a77b69052e-4e50c505d71mr35071971cf.14.1759366908201;
        Wed, 01 Oct 2025 18:01:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFn+cgowdIyCiT+tSd84oPTNAKVxBzdxq8x33fvDr8hPGJVsiMB7AsHFEUbdO1IdCvcYvE2oQ==
X-Received: by 2002:a05:622a:7c0d:b0:4e5:c50:54c9 with SMTP id d75a77b69052e-4e50c505d71mr35071211cf.14.1759366907553;
        Wed, 01 Oct 2025 18:01:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0113f3ddsm344791e87.52.2025.10.01.18.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 18:01:45 -0700 (PDT)
Date: Thu, 2 Oct 2025 04:01:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
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
Subject: Re: [PATCH 06/17] drm/msm/adreno: Move adreno_gpu_func to catalogue
Message-ID: <edfc7ke5ktoah7ftjbwk7dzihsgh2mq7tatfy6a5oxbn6yt7d6@yf6nz7b7jrmx>
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
 <20250930-kaana-gpu-support-v1-6-73530b0700ed@oss.qualcomm.com>
 <cp7djnezyp4whhfqcnsfpes5kxfbyvqvc2ceimdrnrl7s7agyk@z7ozx6oihezd>
 <82cd8782-b2ee-46ce-9964-e564ab6a0199@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <82cd8782-b2ee-46ce-9964-e564ab6a0199@oss.qualcomm.com>
X-Proofpoint-GUID: 9UBDZfOhJ1sGXF0AJIiEnixFq7ie8dVU
X-Proofpoint-ORIG-GUID: 9UBDZfOhJ1sGXF0AJIiEnixFq7ie8dVU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MyBTYWx0ZWRfXxuiVPUL/jdlB
 7FAY2VU0IcJ9V/MFmJ6hNb2VUeolrtEn/hgipTGhPkROx7q4dj5+fW3Qa3a4coi5WouYcr3Inza
 HhA/R1aGchZO7UsVwGwRz+jcOHwWjxxuBEq/I7mNAxCCCkIFufgffHJ93tw2QcpIrWLliYpbDF6
 S6PRMOEdD85U2fGKKwkeN5xVzHY7edcaqlOXmBmrrzItPsfVacCeq8WL0v5X5uOzQp15yFFOkDQ
 A2Bag5a87gRXUbQmZdQo3XzGtqyBUYMN893eA2FKwstJ2KNQpQeAr3MEfGOFngjf489naMI1eJJ
 twU47zdKp/7PhlE+hsctK6gItTwTnqeFrJCz3Nshy2HUJ8qD/XKlbhnjcX31TATBc05yN7drO7Q
 x05hZoXMvzeLp/Fh5BcTO/dlvBIKdg==
X-Authority-Analysis: v=2.4 cv=Sf36t/Ru c=1 sm=1 tr=0 ts=68ddcefd cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=RvmDfw1ThOOzoc4muVMA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_07,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0 spamscore=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270043

On Thu, Oct 02, 2025 at 01:24:36AM +0530, Akhil P Oommen wrote:
> On 9/30/2025 12:39 PM, Dmitry Baryshkov wrote:
> > On Tue, Sep 30, 2025 at 11:18:11AM +0530, Akhil P Oommen wrote:
> >> In A6x family (which is a pretty big one), there are separate
> >> adreno_func definitions for each sub-generations. To streamline the
> >> identification of the correct struct for a gpu, move it to the
> >> catalogue and move the gpu_init routine to struct adreno_gpu_funcs.
> >>
> >> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> >> ---
> >>  drivers/gpu/drm/msm/adreno/a2xx_catalog.c  |   8 +-
> >>  drivers/gpu/drm/msm/adreno/a2xx_gpu.c      |  50 +++----
> >>  drivers/gpu/drm/msm/adreno/a3xx_catalog.c  |  14 +-
> >>  drivers/gpu/drm/msm/adreno/a3xx_gpu.c      |  52 +++----
> >>  drivers/gpu/drm/msm/adreno/a4xx_catalog.c  |   8 +-
> >>  drivers/gpu/drm/msm/adreno/a4xx_gpu.c      |  54 ++++----
> >>  drivers/gpu/drm/msm/adreno/a5xx_catalog.c  |  18 +--
> >>  drivers/gpu/drm/msm/adreno/a5xx_gpu.c      |  61 ++++-----
> >>  drivers/gpu/drm/msm/adreno/a6xx_catalog.c  |  50 +++----
> >>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c      | 209 ++++++++++++++---------------
> >>  drivers/gpu/drm/msm/adreno/adreno_device.c |   2 +-
> >>  drivers/gpu/drm/msm/adreno/adreno_gpu.h    |  11 +-
> >>  12 files changed, 275 insertions(+), 262 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/msm/adreno/a2xx_catalog.c b/drivers/gpu/drm/msm/adreno/a2xx_catalog.c
> >> index 5ddd015f930d9a7dd04e2d2035daa0b2f5ff3f27..af3e4cceadd11d4e0ec4ba75f75e405af276cb7e 100644
> >> --- a/drivers/gpu/drm/msm/adreno/a2xx_catalog.c
> >> +++ b/drivers/gpu/drm/msm/adreno/a2xx_catalog.c
> >> @@ -8,6 +8,8 @@
> >>  
> >>  #include "adreno_gpu.h"
> >>  
> >> +extern const struct adreno_gpu_funcs a2xx_gpu_funcs;
> > 
> > Please move these definitions to aNxx_gpu.h (a2xx_gpu.h, etc). LGTM
> > otherwise.
> 
> This is a special case. These symbols needs to be visible only here.

Why? They also need to be visible at the point of the actual definition.
As such, I think they should be a part of the common gen-specific
header.

-- 
With best wishes
Dmitry

