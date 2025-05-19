Return-Path: <devicetree+bounces-178541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 759B0ABC1B0
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 17:08:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 62E8B7A57E6
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 15:07:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37B40284B36;
	Mon, 19 May 2025 15:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n4J51pG8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33102820C2
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 15:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747667301; cv=none; b=ZC5tBXWgNh3OnhDyS3IBjhEHheVW5q+XlDhTnzwXVSo7aeLoDvGNSD7RnIc5wRtxPSmv6Zsf5L+YbTG0O55RKgX7T51lDQ/SoSKH8EojD0EHb7ux13aEcJuDXITEoUD0bJbxrYQeL3yh3XAT5nRFrTX2QY/pTJcjOuNH0DXKGGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747667301; c=relaxed/simple;
	bh=ILrvKtqjno8XWN3kqUgdsY+HZftdvQtnAfXlAoTjKFM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ninbBbnAj6Sdwxc4gRR0VyBEqi1gjvFGDYQXXmuvLpExQhZIQMKRVjVcZFxicKWTv7/AsuG/bNnCSYqtohOyBuISK4bYrgsfbLCb/wGca1nIz4KeWA4UNBFG6jMfZz/6RGO4T7xcSv2Ievjd9flQqDDUl0SCdJw2Iqey6m/zN4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n4J51pG8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54J7GcmA023185
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 15:08:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pnbK04rSw5LfgSejzbkh3QJ3
	tYtMCLEGOFKCm7S1tuY=; b=n4J51pG8BVZa1SayKI0SpSjmp257mTlLVz2mPke/
	GP4Ws9bG81sl4rgTq/gVV2Qabr1qPr27513kQ4Qr9364x0oL4oSEBbHeJXg3XCds
	8fOo03NrIYOPGR95kIvQzlE/buW2JkN4Y5c7UgiIdGAUXPRs+BvKJyyLbTtPhn+b
	uJOuOg1fBh6vihIbR1syPZDRUJ81nMZzHWucLdijEGSwNfGO6bQCEzXPcmptBYLj
	KvtjpHs4ft9EMQpYmevTyn/E3DC6gIuZgeFCVweO0/bMSvJssF6chY8LOklWV9Xo
	Mct3swrsEpuvpY25JZHecb13xCTn+x+cVimMyLMFVtrkXw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46r041sb7t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 15:08:18 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f8c8a36d8eso42205036d6.0
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:08:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747667295; x=1748272095;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pnbK04rSw5LfgSejzbkh3QJ3tYtMCLEGOFKCm7S1tuY=;
        b=I1rx/kqabzd2yP5n4DxhqV/KQSQg3CfLfRAOrPp+Z96j00sPR5Bf89rmpRIOz523x/
         HPCejtAiuXa0urhgUO9nmYrnnliqRsH4KA8ggj+6Q2imlORrm3v2EwLgzvqoUlvuw5iJ
         CfdShkoanSV+ZTA7mtIqaFW9ZVGe6J38b5PZowD9f4UAORpaWmY6rpoak1vyOMM/2V1s
         Q62W5f4MPHCW+O6m7H80eYkEbK9bBCpkOvE69BFjxfIwahR9aP9mg4iLzO8ertgIJFXI
         Qiz8E7KGRWn4hNZ4ABvKjm5MBJ1powwJE38FOKeIf0ghU5+HPohlx18z+DGbOlDJ+kPl
         Y6kA==
X-Forwarded-Encrypted: i=1; AJvYcCWjk3yQ0Whq0ogQg+L1Yrgv9Ec/DwFKQ9KHktBreh2zfmkJzE5bpZMlc0xF9o9FYyF1pYmbKy/QjCtP@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv5/X70obv8vA82P92KheajAU/kDXAVD9Et88vgFqh1+MTkhWk
	3Fuv+q9LJ6j7QB94mnEyLj3RgbxpRt/pNoY4+gXGucDdLNtPh3RpHaN+V8zAEw0qScjkpu3L+qw
	lqkUXXqTWlwaSEmy5DVRRMfAdcj3Ep6Hiq5Fz+2AkJUsIFWYE3FI498Dk2QFDpgePS88lgg/1
X-Gm-Gg: ASbGncvcZsjFDsvXP+n92DEPW3v7KRv/yazHekn+csk4dUYjNwA1RwIvgmRdNj89J8p
	KuqMktappmgUiZmjZjI77mgKX2EPrCdOULPaaPmuCwrCIrwbe+jZFhhC/VT97dQzYOTu2iMgNRd
	eGEuaHxHRQNvl+SzAC63tnZKn1qGbPeB9uzOYeAm/n0j4yGl1mHLGqJnT1SSsL+PMtoHMZ4lFQT
	yT8iOsgU/o+nMa1PD+hzNfYhMXqYxUBmR92CpODPGHzoQDLJ8eaeCzTTgaIEbq8CpJ5ME0TQpVa
	1s3Y7DmFG9jhiZ2GwEOGnNQCmEjiGecFThBczH9ChRGXnav2rAatiS20OgHSAJCFY3CKc+z4ecM
	=
X-Received: by 2002:ad4:5f08:0:b0:6e8:f166:b19c with SMTP id 6a1803df08f44-6f8b08ee744mr189006086d6.41.1747667294336;
        Mon, 19 May 2025 08:08:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFS7ZI9iTUTS3skWTcOcofhzUOZ7bKXIr+bJqh1BroaJVamHikSdw6gyrDyo62FkE6ExDiHnw==
X-Received: by 2002:a05:6830:488e:b0:72a:48d4:290b with SMTP id 46e09a7af769-734f6b88831mr9233068a34.26.1747667282670;
        Mon, 19 May 2025 08:08:02 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328085f097bsm19317971fa.110.2025.05.19.08.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 08:08:00 -0700 (PDT)
Date: Mon, 19 May 2025 18:07:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Clark <robdclark@chromium.org>, linux-clk@vger.kernel.org,
        Srinivas Kandagatla <srini@kernel.org>
Subject: Re: [PATCH v5 00/24] drm/msm: Add support for SM8750
Message-ID: <pbg537yuu3sy2ueho5gcfu6cuvgmkobzgvtfemghvp5w6errtv@f4gbobbeqosk>
References: <20250430-b4-sm8750-display-v5-0-8cab30c3e4df@linaro.org>
 <75f503ea-e8cf-48f3-b39e-388ac456821f@quicinc.com>
 <24e49307-7d75-4736-9b5c-2e6286fe57a3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <24e49307-7d75-4736-9b5c-2e6286fe57a3@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDE0MCBTYWx0ZWRfXyuDSzLTxB+8C
 NVYD3/A/CLHXaigdfQEtwsB+nb0kNi0qtFEkSIzhzp/I6rRdSZXybaXw5zCn8nD2x+0hn0FZdce
 93aAoQd4g1Y9qFd9cdzPpIgjysUJM7UCNm8+673NyKkAC/hwHKc+37GuAndK2KRDEZp5vi5It9Z
 uk/Ea45hoNZF2sCL7327aEQbsDxaBerowaHVQvdqAVPTwBQy2T+Xc5Uma4htTeQok6GJGmGPsgC
 OYZAo+iMlPhG2kEFmooKcJV4B9c4h2+KQxjtWkfRnjHsPwSnVj4oTRPpm2XjAEOkBphUbl2MCy2
 CTE76BzRR3C9FYX0Bwe8z90x5PaSH4e7g8/y3rPReAO5/LzSJmv65Ydy9cGqYh2J1w4/NiYOR5x
 saSGuz0Mi05988G4WJ0yhb2tLgBngQVmiIb1FCMG0eIAm1vJMOyCk0ILBCtxTZnmvRFuqrm3
X-Proofpoint-ORIG-GUID: gauZOLooYzLwgujQHc9sHe-EFTuGbZVN
X-Proofpoint-GUID: gauZOLooYzLwgujQHc9sHe-EFTuGbZVN
X-Authority-Analysis: v=2.4 cv=HIjDFptv c=1 sm=1 tr=0 ts=682b4962 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=mreiCzLEixqGZhZwl8gA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_06,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 mlxscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 impostorscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505190140

On Mon, May 19, 2025 at 04:52:15PM +0200, Krzysztof Kozlowski wrote:
> On 17/05/2025 02:08, Jessica Zhang wrote:
> > 
> > 
> > On 4/30/2025 6:00 AM, Krzysztof Kozlowski wrote:
> >> Hi,
> >>
> >> Dependency / Rabased on top of
> >> ==============================
> >> https://lore.kernel.org/all/20241214-dpu-drop-features-v1-0-988f0662cb7e@linaro.org/
> > 
> > Hey Krzysztof,
> > 
> > JFYI, I think there was some discussion on IRC (specifically #linux-msm) 
> > about having the feature bit dependency back in February.
> > 
> > I believe both Abhinav and Dmitry agreed that you can keep the changes 
> > to do version checks and drop this dependency.
> > 
> > There are still some ongoing discussions regarding the feature bit 
> > series, so this way your series isn't blocked by that.
> 
> I was asked by Dmitry to rebase this on his rework. That was quite an
> effort. Now I hear the dependency - Dmitry's rework - won't come in and
> I need to rebase back, which will be more effort. Can you all ack this
> so I won't be needing third rebase?

Please wait with the rebase. I still plan to get it in, it is an ongoing
topic. Anyway, I think there are several open issues even with the
current version.

-- 
With best wishes
Dmitry

