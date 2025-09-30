Return-Path: <devicetree+bounces-222672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6580BBABCE4
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 09:24:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92DD816EA12
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88DA92BD016;
	Tue, 30 Sep 2025 07:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hshRb6I+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A703283153
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759217040; cv=none; b=HfS9fcINMpWI+HZD3RWAnS5aBf2PGlWAPWfUSs7dOivBwFGf7JXmJ2pskYKmvot6cZ5lEPbvCW9xZdnTl2N9IgJ3YLtesv7e2WgVJoUpBU0pwQ7YJv0rH+ykKKF5KZdAHkKbQN4bWoSDcxMP36TyKxeF18iFVmdxiBize6Aei8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759217040; c=relaxed/simple;
	bh=ZgA1xLujZKlEfvb+QrPulixK+gcPs02HgGMtQGdszKs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XjZI/BfTrW9r358BcBqGOoi6O3qNEUqA0ri2rc++iT88Ho79m90/nO6x21SwIyOTVC0ToUyWy/p/xiR/i45D5ZnmPY/PDG0zR5hoW3w4qXk17GEvBVYlB/caQ92mrr8cSapedTyxBAqluawtB0SNfmL4x8cX5l4eTsruAEVsq9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hshRb6I+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58U4HONl014790
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:23:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=n9P8C3EgLujC+SyMjcSHJMVn
	TiYYgF5ShDLErcRG4l8=; b=hshRb6I+JHtIlOsVBCil9QBuCchiZ2SvX49aR691
	j4cL9/QnIkuDfSpqQfv3+WCgl/DPub0oI/kSe4TthzAOFULW+uiCdcogm52iRZQT
	ZJZMdP9SO4crLjRvGAKOwb8uPNXgd7fEbD0GWG/Dy4X0ITKMT83EHGCT01XV5xWt
	v0FyH5XcS92EFEQ2jA5VleBvCdiKss+wqWZsuoMPqfd+fXQEoo8AZI4ejb2ings/
	i83BZxxS1ABWC/x2xWYdwe5BqWPAxA5t6rGFisSQg6B9zYc/1EougHlhZ0oINwMM
	cpA1JPQ23+P2stdnT5+A/9rV6lpQ0hvJ45owHmpF6LB7Pw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vr0211-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:23:58 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-871614ad3efso42433485a.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:23:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759217036; x=1759821836;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n9P8C3EgLujC+SyMjcSHJMVnTiYYgF5ShDLErcRG4l8=;
        b=TnGCKXOrzenQ74FNwAm4aN2eMYIqp0cUHwNWv8GcjmVSASqPitF2jjASiO1m+AQdeC
         TJ03Mo0uxKMIfIDkLkRuaVMgEmzUnkqzU1vgDyQwuG/aLYbseQ6hzlxEgYSVTIaCyJH6
         lypwLAVsCkwTweMyf0Rz1tmczY5lRnJGK6mdxBbxTNPLlDMJUGPief7mEZJpqa2UORV3
         8PGbGyZx6XqgyFoax5htKOZCbWwuflEpM3HTvTg4L15S8pfRH15TdeN1ryhDsU/KOc9L
         cekdxPWP5LRUofMaxa2NdH/inKh8lSSDd4oN+/fw58MrcxXcNKCfiS7yhY0PW5ChTh0d
         z6+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVZpxuVsHeaLGnvYaScCTTFhyh/HSmphkcxnLjkjDDXZLEv/2tQDR2ectzOVtOv+SaIjlwfjaCDRZ2k@vger.kernel.org
X-Gm-Message-State: AOJu0YzTmtvbTBXoM8HO0G+3V8TnT4eevMKFl5II4HLtAb6qXrVafMl9
	wYQlC3ui51PYLdJZ9sUQ5mFUGXVFr/NtewpotG2+45okilkw5mrGCkyV0KiYqq80HKlsUjKLkuz
	EwVR4CpRVNUOzjrC5kig/n493uxyM5wuABnsrcbnyFGijwvO/MyQl8jEfqNR8/j+x
X-Gm-Gg: ASbGnctsLawxU7NBwGUIC5NgVpjYy42UTpTKzBkhvmiGS/ubbKQImLIZygcgB4bHaUt
	7LfffRpeAuOoOo1oSjbwjA1mbC9h+cRFM51c/amD6YlBBtPPzrDjph2aVDKnAkfap6YtcLjv9By
	puzFFi+Pbj2jP5wC4swfYKbztf1Enzzit94hGw7l4HTuWiW5bxmA3W1pyZL8m/CMvnuWJr1SaWd
	eEJ8kktkmUgMcE7vQN8UpGnc9wEA+7XXCgM5wTW6ph4Dyze0QBvVxlvCvinUbb5oPCTUOShsE1I
	6rs+K8PbeI5+URH+SLOU8QXWF6sieXE7/mtnukJF1lFFbjQmmmhBACzTg7TTZwgTDQ2H3I//gHA
	Vf+m9karRA4dobMawGOPHWlM/aprBNUGxCQyHJ7c/iyOt4JyEcyoaYml6HA==
X-Received: by 2002:a05:620a:298b:b0:82b:3bb5:5e03 with SMTP id af79cd13be357-85ae033ce46mr2294500785a.30.1759217036286;
        Tue, 30 Sep 2025 00:23:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtokqh05kg7AoFYMORm7EciWzypwxfanES3STHoDORc8Badi06y8IJ5mTLaRxU8ZjwP/+wMA==
X-Received: by 2002:a05:620a:298b:b0:82b:3bb5:5e03 with SMTP id af79cd13be357-85ae033ce46mr2294499785a.30.1759217035829;
        Tue, 30 Sep 2025 00:23:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb771023esm31994681fa.41.2025.09.30.00.23.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 00:23:54 -0700 (PDT)
Date: Tue, 30 Sep 2025 10:23:52 +0300
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
Message-ID: <s4no2wy3yskk6l6igtx7h4vopaupc3wkmu7nhpnocv3bbs4hqi@uhie6j7xr2pt>
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
 <20250930-kaana-gpu-support-v1-10-73530b0700ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-kaana-gpu-support-v1-10-73530b0700ed@oss.qualcomm.com>
X-Proofpoint-GUID: eqa8XKeQ_HtwtB4Cwd77nQw24eAxfXsT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfX+5UNBJH/X+84
 QDuyLVJzBrSa7sN7BEAhdkh1pq6OV1FCYW2tGJCZA/rAmEWSnaxc1+wEiXycfbgxnhaRbjJD+hD
 sNM8oBP8rwpn4c1fap8sG8s/uxlW4LlpG/v4vVzQKTk7OkTTkqkXZTzW3W4gqWMlAawNvtFn8yH
 Ilve4nz2CoBnBXk93LYQO7ccHJ9Q7yaNO3pzaT6iZWll0UE++DPg91bcdqQDjlGi5KUUWzTvlHH
 S7sYrw+jAzlqJNI4fZwqBEQCxEjiKQTLF24B6fIHE77NoS6a5IUNI3tdHL1oSALWOFATw3mCjwx
 ILn3H6GNcezsyj82G6SDQ8rMY+ap96G4EhyxrO2Aj2F/s/2RCEtq65J4w3jMUCxxna+8tR88PEY
 xgchGwh4GbJKZa6T/ug6RinZgBi3uA==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68db858e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=xSz5tX2VPR3T1CvqFR4A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: eqa8XKeQ_HtwtB4Cwd77nQw24eAxfXsT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017

On Tue, Sep 30, 2025 at 11:18:15AM +0530, Akhil P Oommen wrote:
> GMU registers are always at a fixed offset from the GPU base address,
> a consistency maintained at least within a given architecture generation.
> In A8x family, the base address of the GMU has changed, but the offsets
> of the gmu registers remain largely the same. To enable reuse of the gmu

I understand the code, but I think I'd very much prefer to see it in the
catalog file (with the note on how to calculate it). Reading resources
for two different devices sounds too strange to be nice. This way you
can keep the offsets for a6xx / a7xx untouched and just add the non-zero
offset for a8xx.

> code for A8x chipsets, update the gmu register offsets to be relative
> to the GPU's base address instead of GMU's.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_gmu.c             |  44 +++-
>  drivers/gpu/drm/msm/adreno/a6xx_gmu.h             |  20 +-
>  drivers/gpu/drm/msm/registers/adreno/a6xx_gmu.xml | 248 +++++++++++-----------
>  3 files changed, 172 insertions(+), 140 deletions(-)

-- 
With best wishes
Dmitry

