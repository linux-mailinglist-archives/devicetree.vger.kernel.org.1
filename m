Return-Path: <devicetree+bounces-222667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D99BABC11
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 09:08:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5F7E67A8874
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:05:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDA082BDC03;
	Tue, 30 Sep 2025 07:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iTnzXzJC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED9127875C
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759215950; cv=none; b=IArXsSABlaaCKLlyQ18xPPti2l8xe7cTE2kMKYVbKK1aQJt6VYhtcEnOnTXhD30ELtQ1ko9P3Yei/S6adT9yDrH2OuQfos3UJOYrk3t32B2KOojCLEnuCEi1SLAaLeCHbpa7GfXSlCEwizPvO/W44bYi/z0zVniJts13t00Tps0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759215950; c=relaxed/simple;
	bh=/mCXINsouksdvH8ujJuWt7bdhP4SnZEy7otbguluseM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DuaYCFLz8WaR/gEKqeGOXsylQOyTKpgeA1Kumf+bPNP8n5sfk3RN7dX6lG/qlgrdetFIvLN4whpVUQUWM4PhunMuGSmPyvR+RSwvgl1Kg4k3HyKBfza6Wi9fOwre/BEWNy9EeHIb0r1XlXeeT/KhtEfwh/v5KNHVB1v/Fyi9tOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iTnzXzJC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58U4HRSn016877
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:05:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YkcyM04R0DD+Qr3GHQ8OUnac
	Su7NvjdL0Knj9f30K/M=; b=iTnzXzJCCeI4G/IXM3iCA+u1U+kUCgpTbDDW0j9i
	SJOj5h9+3BBYuyoaVL1NretVK72heIAARIz51/FwbeZ/ZuAPpsj7EtkDeSN2FN8K
	ovbqZYPQ1C2V16I6gZ8kPRaiCcSe7qdWBCr2bXXVcT+iMfYP5zbLA2kgKoqzfJdg
	Qg0jmvNIqTjE/pAjEB6xZBHOndn8L0Zv3F9m7dx79YQ6K2mDJGNZTZa+AXRhD9zw
	r0EHNJ8bJvzKGyIi40foXUD4B1EdWSQHU+xSs0DSFqziVw6HE15k+h4DPaoe8x4u
	lVP2BKMTF34+zeRtgF3xcOCeEdvj+uEGgeyUv5DljuYhTg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e93hfrdw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:05:48 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4de2c597a6eso129902191cf.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:05:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759215947; x=1759820747;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YkcyM04R0DD+Qr3GHQ8OUnacSu7NvjdL0Knj9f30K/M=;
        b=Tfv1zltsBA5+L/0S4ZBCFcsr80BnaCUUQ1KyV58yphb/1EtH/5MoewkultTpdDEseE
         ilF8jXvGbfvEjqgOZkizdBuzuhE/EztJrutIwVzilZ+XPob+/RZFzPpRus530msNt10o
         uOOWueodXcbaA4lvsOnDOG2XLyBQb2OwzLMFNT7eMSlfMm2MuIU4WyyW8Y8DkIn9wBLr
         McoKUgeUhXeJYcjN82u/UYmf+8uKjnT+V+HTU0mP64tvizNYeTYOJrLWgcVWDRtpALwi
         ik7YlzQpJ1GXPWHPewD7MFhD7vvXWLNzoiru2N2WXwNIa1c7EqbPTrErLTL7fkkcLdtc
         LjgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWaOrNx1QxnRMoHbdoRzMM2KJeYut38PhIf5X2lsMyLKOErinef/XXfSsVFrpFRtfJPixvjtuNomoX1@vger.kernel.org
X-Gm-Message-State: AOJu0YzZL4WvifakXt93MgLoCH73RXqM7tMeEZWu9OkrSrTXe56pn00x
	gqx4fgWcsYFIGYQuPTQ3olnmbwVcfwSDN/mOOzCOjMGlQ6GE2fi4YEWmgQsDx/W8jlWZEaCiyKi
	dYm2zf2tZ9JS2CgUoavO6JfKYC2UI8LE2XWNk7KaNNhUyTOj5TM83dWsTEQeErBiR
X-Gm-Gg: ASbGncv6j3EJDtUyuNzHpuPJOadlizML5tZRSR3xOFDWfD8Uyym0tZrTmcbiIBWu/ny
	n3ZMoW+4BJSxhAMogZ2hVol2UyrvMGzNCt3fl0BbjvCjUvw3yYy2eccYgb3G0iFP1k4+AVmpbNc
	iL493WW9D9EYKt/cVZzE0mC7Knp/+/dGjno6xmT9ouKk9p8u2eXak4ZdYeIUf5jIB53lS7+ZJt4
	VbbsSMEBXxBmPFsc+BQM5Qp/QfXt0O8+fdXkhvYYWyQVNwpIyxfrS0RLpJrAX03QOT2xG7NCdvq
	eBxH2cVFSoID9w1bVoXnzzv7gy2vJivGiA/1D7pss6UGrVyKrokLb8KymN2jUyjBPycG3mxXdi2
	8402vHn02WKDseyQeNT2+nXmr1N33yjNeGXWeaw8JftS9EZLkwATYDLcaIw==
X-Received: by 2002:ac8:7602:0:b0:4dc:d94f:d13f with SMTP id d75a77b69052e-4dcd94fd62cmr145860391cf.72.1759215947146;
        Tue, 30 Sep 2025 00:05:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6np5FgFR3yiAoIV4w+0+a5+/kCzcX9eD5vqs8OqsXllqsDXGgjrxwAtZPkSL/3P7NcRUnlQ==
X-Received: by 2002:ac8:7602:0:b0:4dc:d94f:d13f with SMTP id d75a77b69052e-4dcd94fd62cmr145860071cf.72.1759215946624;
        Tue, 30 Sep 2025 00:05:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-587748b15d2sm1648013e87.7.2025.09.30.00.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 00:05:45 -0700 (PDT)
Date: Tue, 30 Sep 2025 10:05:43 +0300
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
Subject: Re: [PATCH 03/17] drm/msm/adreno: Common-ize PIPE definitions
Message-ID: <xsgnpvswvkyuxiviv4uyb6pxbpi646fut6dy54kpyfisqrxycz@tyfox3zdi26e>
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
 <20250930-kaana-gpu-support-v1-3-73530b0700ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-kaana-gpu-support-v1-3-73530b0700ed@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MSBTYWx0ZWRfX3u0TaTFsjQAQ
 cI82KVmAjkhd2YaXiZ0tawsYyfD/HTsQQd6+iu4vpcS4UlQyPBZNV2RoyvNc594lVj264ifiK9l
 TfHy17L9MUgcrNPZnOdgHrxmnAc8PsRThjVknpC+gkSAG8Ux2cr/JbfDkLSJjK1/T0XuCigtIlT
 0/RR31iqpg1DfA5HKt9m9faRrnzjlVxoEHA2eYn3y0mzj00/5AmmO/BD41DBH60aGPCKVRn/IPk
 +1REFFFhK/Ec2vjhlaXQVZ6qxUSyPNXI63QizwlOCHHConpNaHGwxXDErJgfkhgNbHmQMgbcPmp
 /JKQRyGupSFkKAwjL8WRlV6lMNB+X/6Dz1mXsPtdmaUYmoZT5Cp8e6cqGpxftqFeQvB2KctfHFT
 iyJ28oa0riMQscNmlRZ98/DwkBCk9g==
X-Proofpoint-GUID: ZXsx3-7lKSCnsqQGr5_oBxIOP00wjs6X
X-Proofpoint-ORIG-GUID: ZXsx3-7lKSCnsqQGr5_oBxIOP00wjs6X
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=68db814c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ffTnwjXrKXMzwz1Z5d8A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270041

On Tue, Sep 30, 2025 at 11:18:08AM +0530, Akhil P Oommen wrote:
> PIPE enum definitions are backward compatible. So move its definition
> to adreno_common.xml.

What do you mean here by 'backward compatible'. Are they going to be
used on a6xx? a5xx? If not, then why do we need to move them?

> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h        |  10 +-
>  .../gpu/drm/msm/adreno/adreno_gen7_0_0_snapshot.h  | 412 +++++++++---------
>  .../gpu/drm/msm/adreno/adreno_gen7_2_0_snapshot.h  | 324 +++++++--------
>  .../gpu/drm/msm/adreno/adreno_gen7_9_0_snapshot.h  | 462 ++++++++++-----------
>  drivers/gpu/drm/msm/registers/adreno/a6xx.xml      |   4 +-
>  .../gpu/drm/msm/registers/adreno/a7xx_enums.xml    |   7 -
>  .../gpu/drm/msm/registers/adreno/adreno_common.xml |  11 +
>  7 files changed, 617 insertions(+), 613 deletions(-)
> 

-- 
With best wishes
Dmitry

