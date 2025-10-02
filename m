Return-Path: <devicetree+bounces-223212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EC3BB2346
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 03:04:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ADD507A180C
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 01:02:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07F8D381BA;
	Thu,  2 Oct 2025 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IZphk4Nh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899A125776
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 01:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759367032; cv=none; b=YjYeYHGJdj4hkLU2SRoyiPUzwkWEmSse/wDmkdISjmgzoo63acFQLsEDcbtbC+Qf+PLQZn5R7rHi+sGBM7C4lF29VcdHV45OfFYPgEPjWmvPayAf2wv5y0PIMdS1r56OLGdDiZNRP5x2lZVBSCO6di5pGS1+2uUFzEjqmuW5Ir4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759367032; c=relaxed/simple;
	bh=5Ie8hS7ySudMhvrFQ120F+fE0XrbFcZOgEC5UeBk4IU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZIZwK2zTmnOiCrUAfezE+1mLbVXolnYYD+4b41PC1ZcQ4mqt8d1bqCVB4LmNPPBHMuvYSQx6cebYSQkHV8cQCWRxA6hCaVUtHBSgcSS5THAjFpCkm9sQ56Ia/U2KTs6XXK/viZw38oBQQENNCBSxIb6gpnzYakoM41EiQFeSFvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IZphk4Nh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IbsBT018665
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 01:03:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fHrr65lNXuCbU7GLecWRSzb5
	A4LI0xtyUM7m4ktwrdY=; b=IZphk4Nhg0W0DaJgkAk/2l6BgMbcMbaUAmi4e2Ht
	zf19C5MX1zPKhZOFpiLyarnSwJE4FCZ2/9iUjXgoTfvUPKGQpWBO0HPZFzEhpVFm
	qd+sPnWUvm0ei5lCm/U9NXCQUiCqgiYadMkQla56TJFVuNOYiuWrHHTVk8FvpyxB
	qqaJSTm6N02CJLa6o+DbETd0IHyz/bxBFo2F65K+1bJw2ccYTc0kpMh7Yq2pFNm+
	qUbPTcbjlatp84jBLUT++FCoZDsO62ewDaBV4l1KmU4JbXrVO68H03uww+Xa+vuF
	fALG5LzZCoGY2nYVuFutQWPJ/3if8tMPbU+tmxBtHMD4iA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49gyu1am04-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 01:03:50 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4de5fe839aeso11346851cf.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 18:03:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759367029; x=1759971829;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fHrr65lNXuCbU7GLecWRSzb5A4LI0xtyUM7m4ktwrdY=;
        b=fwN5MPgCUT8sP6SwHiOxu9k++YRMPr8AzLdT2svUhXpORWntCyEvPZE73d4U+hE5CA
         nffGO5eXiPeFkCTeOJbphSWeUMB31OgayVmHhQg6evo3FyQrqvfTeNP4+IWKOXbG9E3g
         c9AZjv1+3wO7NyAR0svjy542sQlG5mVdxhRxP6m3rMe4oQLGZaniwZwbJjk0Uj7DT7Xu
         kZwngqGjsO+nb3EYOsrkdWsaWdbKb/HkvqCxMX0utmtLCQXHQ34kiB+YISkykWgXuqua
         VZ1mfyajq4HiDNlezMfMqAwngYWg7GFYXBws5Behi5cihoujP9hKkNWmSP4Vm1q8uP8i
         XJog==
X-Forwarded-Encrypted: i=1; AJvYcCULyLsfmDkdRRQoEWex6MFxqLhWL0o85tV0PurJZc15D6B1P0Fg8JphKwn0x0BgzOx8zapoGm+Ddsk7@vger.kernel.org
X-Gm-Message-State: AOJu0YyUuULGnal0O5YMAaBxOVzeOjAHc9a748dXe6RXrITMhZmK/LqQ
	EN8m3JOhIEMAyJS7kAoHOetiqcqvivJikPrmSxQ6hC0HdD3AUcNmT+qbzOxChUw67TjlK+4WtIc
	fdlQpW5QFnw1pMyIK/8QeWTgtMQrfZoQ0jq+twjlTlpC52HEI9q2CaczrWpiZqz2F
X-Gm-Gg: ASbGncuyWNLSZ3TGyyh3sEUE1DgYY5mV3/Y/OViiVsAuyhmjuYr34sd1UvhR05ctuW1
	8WE7l1pbtfh+hlRhKtGC7vWmI5Y1WvVSAswj2Uz9SCJl05i8oRy7oA9Pcm6EEVcSeb4kV0WNhaI
	EE6eVcrZe9pqobd1S1yX2kjEogB378UMeKpehu5tbEJ+czumxckOKk3+20QLV5AgOzwfNla9pMi
	Sf6js69FpnbxhylYBjlzV3yZXBqUNdBxYxErbKPxx3n1+NI8IrXytMEP59ZqoWxepbVWSbx40J+
	KNwQli6hHOIuoPb/Od9K1u9PHeOfnD6jzIjRelcPzNYwUVdR14TmUEKWykbuzUXJxtBkOKK/O/+
	1gNcWFqvI+Va4sy+LNwXcJ6GspYNBoudAcwDi19RnV7pxPVqzATr3EC2dKQ==
X-Received: by 2002:a05:622a:1cca:b0:4d8:afdb:1283 with SMTP id d75a77b69052e-4e41e5453cfmr73046491cf.66.1759367028497;
        Wed, 01 Oct 2025 18:03:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+PPEgu5a9spnGcgbd8IPDdjH3CRYSnDJceqwk4HUzRW0WSjlgTwcpzIm44jNRFI2tTLMX0g==
X-Received: by 2002:a05:622a:1cca:b0:4d8:afdb:1283 with SMTP id d75a77b69052e-4e41e5453cfmr73045961cf.66.1759367028031;
        Wed, 01 Oct 2025 18:03:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b011b140asm337846e87.133.2025.10.01.18.03.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 18:03:46 -0700 (PDT)
Date: Thu, 2 Oct 2025 04:03:43 +0300
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
Subject: Re: [PATCH 10/17] drm/msm/a6xx: Rebase GMU register offsets
Message-ID: <eicw5g5ozli6tvcsvxdorvd5ymxizidodbrfitqezcezwlzdli@6koxrgnu2lj3>
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
 <20250930-kaana-gpu-support-v1-10-73530b0700ed@oss.qualcomm.com>
 <s4no2wy3yskk6l6igtx7h4vopaupc3wkmu7nhpnocv3bbs4hqi@uhie6j7xr2pt>
 <edb8b0dd-126b-4ed6-8603-119f1fd52baf@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <edb8b0dd-126b-4ed6-8603-119f1fd52baf@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=RfGdyltv c=1 sm=1 tr=0 ts=68ddcf76 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=93h1c-cikf9FHO0Tq-gA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: ijS04-2Ta2jUQa-3eSFhBXZkaSZtBlUd
X-Proofpoint-GUID: ijS04-2Ta2jUQa-3eSFhBXZkaSZtBlUd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDAxMDA1OCBTYWx0ZWRfXxDnEMfG4TdaN
 MWHivqmq+2Fg9l/ZgBggGkkie29PvXEOsbhJj+kq9eRFlvgbIMyJO3cAMKO4kQprYPD+ZDPsWtM
 7lJUqaW5JEOM6p47UNqLM35rfOU4v85Rk4RHsQ2XN55+p+GI4mbvqMMMCHWcexhLLuKnYaMS7st
 uLv80z2Xa3Kx5sRUbFSBYD26AN18ED+FWjaxQjyafPhXzV9Yvibok8pCeBtaKLbW2k21kWeR81Y
 0USbsjZmcoXSZe5cF+sAlvMTlMEpM7Y1P1kBf1QH4ZTFjqfIUcjWf4+rERumlW2uJCs3lkNWEAr
 VQi4gGPiLLEtc1LV8GX4ZZfrQ9wkV6IqwYWMEmvYmmh/kyGR3xjd7vuLgPlnlL6cld9QfaVJYDx
 3+3dsGfnHheS4aOrYWjvG6nvqcVrXQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_07,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510010058

On Thu, Oct 02, 2025 at 02:52:35AM +0530, Akhil P Oommen wrote:
> 
> 
> On 9/30/2025 12:53 PM, Dmitry Baryshkov wrote:
> > On Tue, Sep 30, 2025 at 11:18:15AM +0530, Akhil P Oommen wrote:
> > > GMU registers are always at a fixed offset from the GPU base address,
> > > a consistency maintained at least within a given architecture generation.
> > > In A8x family, the base address of the GMU has changed, but the offsets
> > > of the gmu registers remain largely the same. To enable reuse of the gmu
> > 
> > I understand the code, but I think I'd very much prefer to see it in the
> > catalog file (with the note on how to calculate it). Reading resources
> > for two different devices sounds too strange to be nice. This way you
> > can keep the offsets for a6xx / a7xx untouched and just add the non-zero
> > offset for a8xx.
> 
> It is not clear to me whether the concern is about the calculation part or
> the xml update part.
> 
> If it is about the former,I think it is okay as we have confidence on the
> layout of both devices. They are not random platform devices.

I'd say, the uncertainity that in future the offset will be the same. As
such, it's much easier (in my opinion) to introduce the variable offset
now.

> Also, we may
> have to do something similar for other gpu/gmu reg ranges too to
> conveniently collect a full coredump.

Don't we collect the full GMU register dump?

> 
> -Akhil
> 
> > 
> > > code for A8x chipsets, update the gmu register offsets to be relative
> > > to the GPU's base address instead of GMU's.
> > > 
> > > Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> > > ---
> > >   drivers/gpu/drm/msm/adreno/a6xx_gmu.c             |  44 +++-
> > >   drivers/gpu/drm/msm/adreno/a6xx_gmu.h             |  20 +-
> > >   drivers/gpu/drm/msm/registers/adreno/a6xx_gmu.xml | 248 +++++++++++-----------
> > >   3 files changed, 172 insertions(+), 140 deletions(-)
> > 
> 

-- 
With best wishes
Dmitry

