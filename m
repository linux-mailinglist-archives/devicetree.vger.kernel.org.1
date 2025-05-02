Return-Path: <devicetree+bounces-173204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B48AA7C59
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 00:43:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9224178401
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 22:43:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 099F421B9D1;
	Fri,  2 May 2025 22:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gBZRc5D4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5DD21ABC3
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 22:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746225813; cv=none; b=Ly+YC13Ett8z5YFMUQdDCnJR9yLJk2HsGtqa3S32m1I4VroaHE+Ws8r6bcewp05B/BPSSQJfrxfesIeoBPdL6L16YmSOuBFw3l2l/e+3eosemqZegCxs2UwALc6rBJWGt11HnkC/TB7g2fPhOqgbP9nOtI17ApFCbyyLaMF3Nlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746225813; c=relaxed/simple;
	bh=cT8nC8mZfOCD7lTXfvpIEpKdy39UtRQgSpJDhtuMs84=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iVDYx+o3UVi9+bdlELbFQTYaGKA1CzlcI9P7+zPOpm9qcvAgfWB61mBU3soLcgycXsb1NJBpHGAZcm8ZoCYOzuJa44DmQwOPHZxvFy6qs+ECUofrWx9ntb1mPUbsJXIuG20kq9JverfXstSKCAvVagBisBM3UPZm8qmgexjNN6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gBZRc5D4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 542KB493002204
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 22:43:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CN7xAI5RxauZHSlfvB2dYCQh
	k2oKQHJwg6cw+tFAgxI=; b=gBZRc5D4VtIwHTesw8c96N0We8YMT9B1/H4e/S5U
	3oYIKUD8+rjDiCJYS++0hTrSNHQW/yllkOhaeAZk/5CFoPZ4d+MT8AfjwirCgHs6
	keSX1ZnmoOhr/N229UAKoi36p9S4gALDRHCM5wf8i56AOMMRFKn3QibqUPe4liG+
	jtBYahA/Kus2Ldh89xMnaJmhQ2eGqVwNY0yf4LW4/PYI0AMLoeZuXcfoFjbi4fF5
	a9wuRCyDx0X0IZmc4yZX0XnXFyjGine1RWPxsnS5iaXVv4KoIJIedI5EEcgWJqTt
	Nf/GOisGHzNcLKCwGaqC+IhZT6Mx7orcvLEihyJfnaPuzA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6ubskf2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 22:43:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-47693206d3bso64743581cf.1
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 15:43:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746225810; x=1746830610;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CN7xAI5RxauZHSlfvB2dYCQhk2oKQHJwg6cw+tFAgxI=;
        b=U7KiJ2I8mBJrEzdG6vslXCNQ6LAMioZw6WS3snO+pbbrSAAON15YDKWFyA85BaKxUf
         IDGRW9CZuDU7154UVtgXPhI7C5SNW0VKIfOxfNu9GjW4GsivyLr3ssHYT/rbd37s1Fvo
         r5Wq0iyXHSvA00kPRyVhHkY8/3lHX6+GWCXCXr/tCw6C0wuYDSjHKGgT8ytLdSveY8GG
         GSZnJXfrFT6KODnIvA/7iALjg3MXO//Z/NjpEaOpMqJw0Xw1rc7+Ix4AzlYNe+lhOugm
         nVU2lV2Oz/6X6sZ8WVzUqgF59lhdV5GxJiyW55hM5aWw/GqXursfP1DeykJ2cIssK2r2
         bxHw==
X-Forwarded-Encrypted: i=1; AJvYcCUn3BSqNrBrQbVcoUrDe9D6rlxcjzTuMHBbxH9W4xDeI5yrla9kE7GYjFrqLMuR2Ck1Nf4+MXllM2b6@vger.kernel.org
X-Gm-Message-State: AOJu0YyvK7X61ct2RZq3MgpEDjNXLVCmttdcZQ0Ud4q+m7cc7p0rywpD
	aahbMa9mY9kc8502S+YDZGYgc/xNrbsogZbykj4YbB1Ts+TbLnyBLaKG1QQoTjWNg+onyCTF3/f
	VZFwR7BcFMacr8PjG8koeeEUrB2gpEQObH4/68C/AQnsDj8GLTgMtEhuTuJ3r
X-Gm-Gg: ASbGncsm8V6qsikJaGh1jcH2YMUBdICEslzXhDCy063lj38xB0uhWyKDz379qVH8uY1
	Sa69urCUnq1sMtC6+RGsc+92sCOTAkJT4vJ2dTOwc5FaySnWDEhNJhw/9NDlo3sqAUCm32OlzKx
	SjkhKmi5oGJvyc/MtyblcFFDc9Gudk5yveyNAgc8poNFadkwwzoUxQPMtUP5ngD7lJnBtMMTzfq
	BmOqOPZUipaWFUq8CiSVWCEqsF/uUZhoYUvyOQDMJ5cTh+nXPESCXM8II6rPF8Sn8qqZyiYVrHC
	ejjAdjqoABziAC8gnzr9/+83JsbUslQOC+y5The/cwaP0QPu1UCKABzUSY8dqwxtWBExOEjpmA8
	=
X-Received: by 2002:a05:622a:5c14:b0:476:b480:e440 with SMTP id d75a77b69052e-48c31a224a3mr79130431cf.23.1746225810289;
        Fri, 02 May 2025 15:43:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGyDC/ycgAmMGrAX3PIpDNuTMextZpMxyJBxhg9RzguKAZ/R/C4ebf5Fg9mF7ewzlpaMNVwpg==
X-Received: by 2002:a05:622a:5c14:b0:476:b480:e440 with SMTP id d75a77b69052e-48c31a224a3mr79130141cf.23.1746225809891;
        Fri, 02 May 2025 15:43:29 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3202a897cc6sm5072491fa.70.2025.05.02.15.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 15:43:29 -0700 (PDT)
Date: Sat, 3 May 2025 01:43:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
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
        Dmitry Baryshkov <lumag@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Clark <robdclark@chromium.org>, linux-clk@vger.kernel.org,
        Srinivas Kandagatla <srini@kernel.org>
Subject: Re: [PATCH v5 14/24] drm/msm/dsi/phy: Toggle back buffer resync
 after preparing PLL
Message-ID: <b3dbtmqigdrazkhlu55r5tzo5w7ixf65m6y56nvqnaetkv6onk@xsakfzc7mmzu>
References: <20250430-b4-sm8750-display-v5-0-8cab30c3e4df@linaro.org>
 <20250430-b4-sm8750-display-v5-14-8cab30c3e4df@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250430-b4-sm8750-display-v5-14-8cab30c3e4df@linaro.org>
X-Proofpoint-GUID: UfDwm3RvRk-KVgHP3lz_UGt_P9XUehiS
X-Authority-Analysis: v=2.4 cv=bsxMBFai c=1 sm=1 tr=0 ts=68154a93 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=XEkVnyDaZeylL3GQtG4A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDE4NiBTYWx0ZWRfX+kEF43tlzVhE c+ba6poYFHTCIzmHlNp3ExGSUJ1cjk/r0PS43zYG0n9qkWs2051HKs04ljBfpO8phZ/tVwXgyfJ r0x8k/7/gMK3+PK7aYMpP7RUPwclj1TiKYh2kgz/X4/lLQsUrUGpstct6q6c+Gd4kGaoJSRACPT
 rWo96wPdgLh8+tlnxumzDGldg/s6MPVe/ZfNdFIBIT13SblxAE1xK/eM7d3oGWjyUzIwkamoyQy ZTUVhUE4rS32TEXFQEDub2kONsNPh7ULIBKCe4KmU1JZaluCT/yft5H10aQqCetTD2WUFxiOAUq XOe0YOgIyCSWBw0fvo0bnCvvi2vdrRotWvvYSauSJWjIwR8mxlJS+BHrlVBMMknLjSlBhqvja9U
 vQF9KQFKpfdWcwtrWfS+p3g6e5ZzTTLQZNJV9S6r8/4hQFV9sRJ1mVLbPaXSbDAGWpvzMCsl
X-Proofpoint-ORIG-GUID: UfDwm3RvRk-KVgHP3lz_UGt_P9XUehiS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_05,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 adultscore=0 malwarescore=0 bulkscore=0 suspectscore=0 mlxlogscore=746
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020186

On Wed, Apr 30, 2025 at 03:00:44PM +0200, Krzysztof Kozlowski wrote:
> According to Hardware Programming Guide for DSI PHY, the retime buffer
> resync should be done after PLL clock users (byte_clk and intf_byte_clk)
> are enabled.  Downstream also does it as part of configuring the PLL.
> 
> Driver was only turning of the resync FIFO buffer, but never bringing it
> on again.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v5:
> 1. New patch
> ---
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

