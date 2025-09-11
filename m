Return-Path: <devicetree+bounces-215948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFD7B533C3
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:30:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39E0F3B2738
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10AF9327A19;
	Thu, 11 Sep 2025 13:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IUiT6jJz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F8CE314A65
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757597399; cv=none; b=m1HiM5qjrkif+VWGDwhXB7mQXMyx+ILNXrrgigR301QLIFnkViis2P7cpL9tP+xdNoL0q9O4ug3sRCYxFCfWFMG+AIKZ69xj5YlIuQcapgkmUGy7RbeOEmoSDl+Va72AEDYRRyi4uPOGlwAZj7QO9Qg1sta/KLU4U91XQzO9Iiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757597399; c=relaxed/simple;
	bh=PmlOO5iv5f9fXOncJO2MDvuoQfGMnyKJMo22ffxT/S0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FBY6xqLG23OztwytmHgvHJIU+yb53jXl2/ECsEfvuGy754ePx0+8gdpe5KDZVjilvilrBs5MqU59g0OR+Wc3NqCKAjftiYcbgEhqJj2cOReYEGzjziEd8kQwK7PmOgWf4pldugMSES7gzkY6EzIz+xt2x1F5hmD6w/8zRa3hlWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IUiT6jJz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BBXvC1016087
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:29:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ey2Z4JMsId+WF9VnovhxbF+7
	8pVNuM6IZRJDnfyjy2I=; b=IUiT6jJzIUMzkChyaP0MALicLXWe5kSE8M37EaXc
	/mgBwHrMxAmKtBjT0Vr0FlrxLbmVRH2evnfOqk/tj5WHnDLAMX1zze4sHhcqTuF+
	gw9bTymHdDo1qRGZZdHoR38rncoHRpzWuyXwBO4ndj2vXbCHNkLIr8WJf0HacWCL
	fmAEWKKZdlgqvSKvHb0k8uMdl05K8/rdeKo7sKvLDxlObBPFV4aaaJkipSbnB84N
	pyyv9MOk03u5IaaF9/eKO1lH/gl68ChvV5+D6InBUDSlRPwsFnt3gPRvjbQsImmc
	87i/SHOhIMJzkGSa9YU14HC93lqV7ig+1wACQSMDrrx+aA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t38480p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:29:57 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b5f4e4fe41so25957071cf.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 06:29:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757597396; x=1758202196;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ey2Z4JMsId+WF9VnovhxbF+78pVNuM6IZRJDnfyjy2I=;
        b=SqSWLKPlzAwLw3zLWA7jlhTMsUaY+jI5l4j72Gl39f9MAr6vBy4DWg4LID/FGnL7de
         MOnmG4dGqhfyb28q78F0PwpQmT2zj7k7a8HLJ7RN4UVeT0occI52xCb3UmbT9HE5ZxKb
         RuRAIOuTTBgg59EauKFnciK6bEsbUwMIGhCerwmN0XzuhSQdcYgDLnjrfI4ybezjUQwg
         aWLiL1EHfY3KtgrQOrgDwLSZu+Iy1ebXnQMieykKkOpTj+XAO7HwSJYzQPIAzJohKvO1
         E4CxJGIOgTx2aUfYyRyAw/B5+R7uOCE24kYS441VCIBXL1FJi8XFiyVZH4hrNgXeSDCY
         lcwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhAVbzTvMQx3iEh40TQDKxs02BTwYgDF5GCbRgtvx+cGhCbd81Xh299xuTRA5svKuE50xa0nyhcp9q@vger.kernel.org
X-Gm-Message-State: AOJu0Yxfl0zqyps7ijv+VN/ozZikbZfaD2HXRQbcRDc5WgMmGYVEcE3D
	Yxpdc3nv/fUlCRZYmMER64i4RZd6Md/qRFKq9tCw9KIWJNstkcBHym+PWLMUIBDbf+8XJNxKV5m
	AyqclC2D+gj6MKIl9bq9o0r9Q/HtOQGbPkip2ebVCoGTlxraKFIarXST4X0YdrxBX
X-Gm-Gg: ASbGnctvEygh1cC6RM99nnKmLwWqfxx9+2hUSRPgzHrzNKOMqmspEYXDh1168WfS16S
	+4U1FKlfsSjYh4wwOPeJ9NbC2YS6bPEQPou+ynhm2n7sbKFsOfPbSGzrtuWYFtCHwGI+qF59ev2
	/S/ss2jMjTMKUAd+vmDz7eQkkuBpswpyhBV18/4sSUx/3nKnY3PeisI0MIpP9upCJEXn3whL/OK
	Gh10gqsSETpdd0thlO58nQFUJCLVUN+ywQXTWyL8dcJXxnT7vx8wBZziNoO/GrCAwnks4HhNU4y
	B8MVVJc9dV8BPMgP+g1XyX8+k7BbnzMmcYMGdQH42p5U62qJgYOj/g399cEKPq0y6IbmSYmwYRX
	TirdMV+HlTZdYmsO3z5+wZH4LiYJdbYlAPDbUnCdUVrCNjwQsL8EE
X-Received: by 2002:a05:622a:5c92:b0:4b3:122f:89d6 with SMTP id d75a77b69052e-4b5f8445a73mr256204481cf.45.1757597396317;
        Thu, 11 Sep 2025 06:29:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOBNwwY5vu2F6YDZFmUYGcnQ9hxKYIQ7ZgYbQqAmh+km6PDS9gBX8NbKd9eTG/XrE/5BOGWg==
X-Received: by 2002:a05:622a:5c92:b0:4b3:122f:89d6 with SMTP id d75a77b69052e-4b5f8445a73mr256203741cf.45.1757597395496;
        Thu, 11 Sep 2025 06:29:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5c3b5fadsm438580e87.6.2025.09.11.06.29.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 06:29:54 -0700 (PDT)
Date: Thu, 11 Sep 2025 16:29:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/6] drm/msm: Add display support for Glymur platform
Message-ID: <4qrmzpxbuptm2x42qa74hbulb5k4sfyxmu5ji76j232elo7dnm@pkclmnxb2ijx>
References: <20250911-glymur-display-v1-0-d391a343292e@linaro.org>
 <xjtg6emrb7svloz2fkaotfbj4m2wzmddxdsdnjk5wkbmocqzmd@l656suk46pkd>
 <kasmte3rxr3ukz2eqbwlzbpeam2qq2qimzdqta5dl5xsthnokc@smvts77lhirb>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <kasmte3rxr3ukz2eqbwlzbpeam2qq2qimzdqta5dl5xsthnokc@smvts77lhirb>
X-Proofpoint-ORIG-GUID: 42wfIgSaW8QHQaBVnNfm8K2O8h3dR815
X-Proofpoint-GUID: 42wfIgSaW8QHQaBVnNfm8K2O8h3dR815
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68c2ced5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=E1lcnybXH_NDbzajFtMA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX1kHPfzTFasWX
 kE4u+qWa9/BFskpMEuxUlYmWgF1WAwAT6Qu7LBRuYuDZ5HG56m/DWiubJN0F/RzkMGkTraGta+9
 vfLqyxnmpCByt13+yTxsq7Y8xNfjvVyXoEwl9uw12/0hLcfPJQ9UXfpVWZoWshh5AT979KzddfK
 HOULZJoL/RtW1AQLYRiM9IXXrSp9vdIx2+1CZyGMJuSgreSFyhB1hznsTOaDI7gCwf4J3eZ1zyo
 T7QiAjLXM5X3D6sMXS8U1i6vbkd+Ln5IYMxnUpblPHK6x96oZSmrP5XvzbfPTgyBjTI8K6oYPZs
 VT4gBXzjDr1Y1zrZMhZ/vaFzwbORofVUJrGsxBmZ0lwKsWgPcmW8IrXWfmWZ9znCP0C/aTk4b58
 KS8wlSUY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066

On Thu, Sep 11, 2025 at 04:10:50PM +0300, Abel Vesa wrote:
> On 25-09-11 16:02:40, Dmitry Baryshkov wrote:
> > On Thu, Sep 11, 2025 at 03:28:47PM +0300, Abel Vesa wrote:
> > > The Glymur MDSS is based on the one found in SM8750, with 2 minor number
> > > version bump. Differences are mostly in the DPU IP blocks numbers and
> > > their base offsets.
> > > 
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> > > Abel Vesa (6):
> > >       dt-bindings: display: msm: Document the Glymur Mobile Display SubSystem
> > >       dt-bindings: display: msm: Document the Glymur Display Processing Unit
> > >       dt-bindings: display: msm: Document the Glymur DiplayPort controller
> > >       drm/msm/mdss: Add Glymur device configuration
> > >       drm/msm/dpu: Add support for Glymur
> > >       drm/msm/dp: Add support for Glymur
> > > 
> > 
> > This will not work without the UBWC config for this paltform. Please
> > include it into the next submission.
> 
> Ofcourse it won't work, but wouldn't the UBWC be merged though a different tree?
> I thought I should send it separately because of that.

That depends on Bjorn, currenyly he has been Ack'ing those patches to be
merged through drm/msm.

> 
> I'll add it to this patchset in the next version.

-- 
With best wishes
Dmitry

