Return-Path: <devicetree+bounces-222685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 73371BABE4F
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 09:49:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1C81188B25A
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEBEA24168D;
	Tue, 30 Sep 2025 07:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mbPXCIfs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EB3239E76
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759218592; cv=none; b=Zx25MA59LOvbzF2YrfLVTVAd3nnDF2s8oWl6vYZZW2J/n+s0hIEcx7UC3TSHToPhJvCa1n9Wi/kFuSAaowETnRABilKjIjTBsSaVVG15cGA+OxUgtDc4RIDoJbJVnNS9ViIYxgyEGTx9U9xgPyGCG8XAzl1BzHpiAV/H1FFBmxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759218592; c=relaxed/simple;
	bh=vPPstQsecnnkIWa6DxFaHD9gRnqYStgZOVelTzbVHqY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mcbQ89a89ZMtabS7olglT3WINogdAda//hrX9ipk6x/k5TvvZKt29hbZ7A4tlHFpVXviQCPzOclSA4avqQmFPZS72kOvHdoc/JBkzp2Ee4i5z+VcyQW/C2WWJu8jQ7vzXJV1VU/P6gV8pz4xDgJ2pvVvYMXzcEGc8yEfGQ6eO4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mbPXCIfs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58U4Hhwn001149
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:49:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tcDYvvx/kWESRIwdIUfePzUj
	wXfd5DkiWsQQ0UqQcPs=; b=mbPXCIfsnKiNtisq0erGetEyK+l37muV+7YinheB
	bYj644FZBNuf1NgkhSgSbqRlm+TYG5UJuTdvExajM+vrUhtwvopVf/wSpTJ/WkqC
	hu2tYYX0OahWkjx/XHHgJ165uF0Hdl0hZ0NmfphU42nznbmNIJHNgJcE+NtGueab
	od5nvAuCN+cVzlntj3IJiIy7FHLagNgVuDVgefB2uDbvVHjVWmKsT3TunRetSyK/
	SXZxXbuQKgsXBy8egQfp4FHYNPv0FfnA5OKfkxqjjmN2DiFC/r0Lp+ZgdSNra7UX
	qUjV2tDvYdey7K8eKSeHm1dSYSwas7M8x+dBmnqjSl5Xfg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49fppr3k94-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:49:50 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e0e7caf22eso54677971cf.3
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:49:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759218589; x=1759823389;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tcDYvvx/kWESRIwdIUfePzUjwXfd5DkiWsQQ0UqQcPs=;
        b=kNd1Tbej6gQb73i49VbhPhS+WMkKWBiHrN0+9EbvrbDCgrDWct8VH12s+JUDuBFonX
         RZu6d3LogHQY+aowegfu3Wee7ZEBiwPUf/J/hmR3SGkZzEW81/vCz/n/RpMP4wsh1bXe
         YdfgT4YGgshAo+H3WTkMGGxsZ9mQd9CmNo+YP4mUpgQQ08cotuUErDurhDNf8+8wbVZ6
         hd4f/ui4L3pvTW0O4wtdxI98ZHwMvYdAzFRmxdxf0jEMnD6zzfND43gHGaFyBLzsptZs
         2r08/9pRgaen1PcrvEFUkJzhI+IWLNgWgAxOgw9mYSSZU0O6tp/QsMKgKGs/mBs5tZUW
         hn9g==
X-Forwarded-Encrypted: i=1; AJvYcCXzPnZ9HJJFKcn5jPqxP8f0c4tabKq/ZJ4xkYHi3G1uEuxx2HF2ItrSXeY5lmgiVju5lMN9YblW1J27@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1M/As8acWqaEmzQm1Ap2O+vNOuCGIZ7CflUl6PP1hq1tkj/0Z
	ZHv06t2bnOnlq8Q185adE00G4/C8heKFm/fcNkrck1PnfQgrAjI6iviM5aJl6KEVf7m/fjRLV3n
	/xrrQYfr2A8tsGxuWK3dlcOMkKSlK370xmO3K0DMUTIhVQZ+8r55b6tK45/eQznvl
X-Gm-Gg: ASbGncucOr3ikXpX2yu1ySNrAcr4c1BdO6KMtDRokczu5RRFaqhCpePhd0x3zKQ2KgS
	+Sxo2VqeBq0+zI+3yONfUECt0HmZfLAdj2hiK5KCUljA943/Lk2cnhsUrSYY6rsg9xqInRk+CJf
	bu5vN5Qtw+PbFtphd0Zm44M7hf4HOJnpUSQr19f6QbJl1Z9yRkco0YfUXkgQt81vtRD4zR07VFu
	iTAOXepu4pgUgYlcrhIAIeVwAGTm6xjx6kjCiGkj99KLMGojtFUNa0QlqG+w7iR9wqAz8EFHOR5
	KZfMTMhhbByiYkXMLKrn1BnZmMCVXdYnn4+J0C2gUFt5xi9nfJF+k6vYLIDGEjga9DFNKJBvvo5
	REWxzbdujYhLJIj3welyfoIBGDCr6KYw0CwnUUrcIDvnnD+OWSVw1y6kZDA==
X-Received: by 2002:a05:622a:17c3:b0:4e3:25d7:57d4 with SMTP id d75a77b69052e-4e325d772ffmr15078541cf.80.1759218589244;
        Tue, 30 Sep 2025 00:49:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1NOqQxAPdQp+Dh3rh+AoIDtXwXlBUdceAQk5B9YJWaQLrY/hOzC1FHHQS6Zz8p9Hkpk4YgQ==
X-Received: by 2002:a05:622a:17c3:b0:4e3:25d7:57d4 with SMTP id d75a77b69052e-4e325d772ffmr15078221cf.80.1759218588705;
        Tue, 30 Sep 2025 00:49:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58567242ef3sm2908507e87.19.2025.09.30.00.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 00:49:47 -0700 (PDT)
Date: Tue, 30 Sep 2025 10:49:45 +0300
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
Subject: Re: [PATCH 15/17] drm/msm/adreno: Do CX GBIF config before GMU start
Message-ID: <ae2ooybajk6mcjggeztumubht6auw5qlhmsdrblikc5ruoxtmm@oj5kvpxithva>
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
 <20250930-kaana-gpu-support-v1-15-73530b0700ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-kaana-gpu-support-v1-15-73530b0700ed@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDA4MiBTYWx0ZWRfX9DTsjWcBW9hX
 36pME5zaAlj5e1DOTQRhlxDKeQVNBVemblzgyH4KKt5uyUBpw0YjLUkqR29ABoImRDhlCMyh8zm
 ddv2ayWvEAvzVs6QuKej8pjFyVme0YHQMrSl8fcPBvf1aesxnpen2O8RqXZXdzx+kiSS4xVBCsU
 RkVUR0iIr4KN9KgZ4w1ANncDACk0KKerRTsVtXH8DIs4U0J1KuNWuKF7dLcHiQes7uzcwnUs0T7
 RaHlaG5d0WDrzTeKgMrLKSY6tCGG/roUdBhu2V/RkRJ9CwVVbBN9TcRP5KdDSo2p6UvDxjQlrZV
 HS9lBVJ/UCqTWU/FZOXt5J3MuMYvMr175A4Pbm9LC312e5Pk9cM6rrxpctj2ZW8+zMuyyEJ406A
 IUybeXocq2YoJcI9AcTejDc5pk1YBQ==
X-Proofpoint-ORIG-GUID: bAqsfzKrz568H5KGTDWyjJ5VWC7hPoMN
X-Authority-Analysis: v=2.4 cv=GLoF0+NK c=1 sm=1 tr=0 ts=68db8b9e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=219S4Ll1wpRkBpzXM0IA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: bAqsfzKrz568H5KGTDWyjJ5VWC7hPoMN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1015 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509290082

On Tue, Sep 30, 2025 at 11:18:20AM +0530, Akhil P Oommen wrote:
> GMU lies on the CX domain and accesses CX GBIF. So do CX GBIF
> configurations before GMU wakes up. Also, move these registers to
> the catalog.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>

Fixes tag?

> ---
>  drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 23 +++++++++++++++++++++++
>  drivers/gpu/drm/msm/adreno/a6xx_gmu.c     | 12 ++++++++++++
>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c     | 17 ++++++++++-------
>  drivers/gpu/drm/msm/adreno/a6xx_gpu.h     |  1 +
>  drivers/gpu/drm/msm/adreno/a8xx_gpu.c     | 10 +++-------
>  5 files changed, 49 insertions(+), 14 deletions(-)
> 

-- 
With best wishes
Dmitry

