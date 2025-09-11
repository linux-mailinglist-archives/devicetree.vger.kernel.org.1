Return-Path: <devicetree+bounces-215930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF7EB532E6
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:57:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7D1917A2A30
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 12:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9220322DA6;
	Thu, 11 Sep 2025 12:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LOFpioyS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E153322A33
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 12:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757595450; cv=none; b=stW9CUd8T+tdkfCCkoWWH/+BguX6dc8rG57SVqBfnbXmXMTsV5gYuAyOQ3aHWvhhomc5yHXXpbQZRZSwIcxg1Z1vEmYJ8z+Ag9OmDCPa4jqLVIg5PJjRycKUEHJGQRQJVWbTogBLpkpzp3OFF3+iHQeV4mNR6pX8+odCyK90kjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757595450; c=relaxed/simple;
	bh=eYP9ldOr8fFehKQpvW8BhB6kTjTJQtw4xncb4uUpb7g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qIV98ocJ85TH57SK0JdCTBK/KnPZQGfRC22p1Uba/4Ga1W1yFB51UdiQG9lTua4+b3CJEdS5Y8f+KY/nchNsVb+20kH9Lp3MJIOS9OCoDh6nhhrtu8l/0mRVZ0zDmxE7tegWrMTt85xW3/LtWu6fgAxpPhPwUc2AnV+4LpbFwGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LOFpioyS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BAQbBV008244
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 12:57:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5F4kfREjeTfa3WqC2b/52lNM
	yv9yD3hosyjF57uJTA8=; b=LOFpioyS9HMKxtSXT1eBG8itb3soeCkkvdviL5y7
	r7k7dvSbrqFumJfMv129e9MLbytCrCNOlkgq/BzGfpKPyQYRXDQfYYsnyhfQ2LzC
	jiFiHMPazPyXNf87ca9RgMd5JlYmblWTs0lIbK7JtevSbJR8Z7XTwpnQI/jZSucv
	CYzI3gpj3CMVywF4txmp9Bo/ZzjqOhO0AhvGbgf83fcSaBLBnI9I1/YT+Up6Y6TP
	PUEG+Lwb/UC6OjzgHy5B4W/pWH4zOSEY4GVR+Gf4t6NDeAcWBOT4ED8XhNLc1Sc3
	il3+Agv3M2bXsMT71eo23InBbrzEKBBlyLkAKgWpuSOylQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapqy03-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 12:57:28 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b3472b7efeso13581061cf.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 05:57:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757595447; x=1758200247;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5F4kfREjeTfa3WqC2b/52lNMyv9yD3hosyjF57uJTA8=;
        b=fR8wAnJew1Ep0wr/a4aWNEuLyDWNH7rJ/YnX+aNXY1Pni4m4SIbr5+4t9d73fJnJl6
         8kIPjZNw2HXtQxl1lu31reiJcAzwYye/luyfs/1OMCQN/nPkwc0GWklm0IDArc2wHKRe
         kheD0ZZSmEI4D1fySFk3TvOWR7TuQw0rhRmigLwUHiMdBHPK6aaB1bXR/B/BTBEAnFxp
         dEFTrdNut9E0FxzBlJOXgKLbcZlJ5VdIzVrHQlpjfIBK/JHKMa7XHTGvBch9AxqgjUpY
         3C+Rv9DprRTl1o8Rlo8+LvZvDXoeKxac7LHKTQkAK/iwpUKcYQuMx0iDE43gHNnKe2YK
         EQmg==
X-Forwarded-Encrypted: i=1; AJvYcCUKFl3G8wVbk9DieUMuY6AHx4RFHK2cvBbwsHNTbh7Lt0gWIYNHtYoBc+i0WA2andmJQcgcOzzE/tYo@vger.kernel.org
X-Gm-Message-State: AOJu0YwVBurJCfBm+UKvpPdaEfzoQIRUWktKHOWm+J1He50MFmpYs4RF
	a7KJ7DgXsp30mcpMJ87cd9BmP7Vpoi29E0UvgAwWQGdHNXptr+AcPtoJJebsRgtgToCX7JluVAo
	vJN9tSa4ITnLCuxPJ4TKIiXU3lK+jT29woIFJo8huBZBp7NzkeFeFtxH1/Vjn2nhY
X-Gm-Gg: ASbGncsLnfw8941sFYHDB5Ue3/uytpVZjeT0L3/S7+0n6tsRu1gK84hvr9QIW7qoe+t
	RaN/vSrf+hvPric8CszHi9LwFxPQ645w/r6WJspmFpiI87Y9Wp1Fr6tsPEFzjhc0Ww/GxEAbmtp
	Kll+qLt9cR3K42/OTKIFo10DSID1dKfPCyedBJBlbEmdi3T63ffSbhy5UFCdxOEAQUBuYvTdZM4
	BvnvFY1hDqM1vi/xGenzl/Evkd4+xvRJP3zcXsWg0YOrxzXXijXk3NNYuIk96RJQ6MPZxLQOw1n
	iGsrU7wqBfD8XnVd8GgKYl0e6Mk9JrqlN44ryOXTbdBpmCiz3LNyb/9Yf7SWHnwCaoKLDQ9tbNk
	2dlL3aInL8YSw/ZoA/zMjASoOMBHd118GN77ft/ABphbZXCAzm1cO
X-Received: by 2002:a05:622a:130d:b0:4b5:6f48:e55a with SMTP id d75a77b69052e-4b6346f39e1mr42311741cf.12.1757595446927;
        Thu, 11 Sep 2025 05:57:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmfeR7fqbYQsz/Cx0vhB0h7BtieRzZWfwREik41OqRawcDy0H0xPFZm8LueVdNLZmIIf7boA==
X-Received: by 2002:a05:622a:130d:b0:4b5:6f48:e55a with SMTP id d75a77b69052e-4b6346f39e1mr42311341cf.12.1757595446424;
        Thu, 11 Sep 2025 05:57:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5c3b5fadsm422254e87.6.2025.09.11.05.57.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 05:57:25 -0700 (PDT)
Date: Thu, 11 Sep 2025 15:57:23 +0300
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
Subject: Re: [PATCH 5/6] drm/msm/dpu: Add support for Glymur
Message-ID: <d7his4r3txgmpgptl6ohnjzslm5s3wquxxsi67gli4wcyszlsd@klru2kjlk6i4>
References: <20250911-glymur-display-v1-0-d391a343292e@linaro.org>
 <20250911-glymur-display-v1-5-d391a343292e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-glymur-display-v1-5-d391a343292e@linaro.org>
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c2c738 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Z5WwtQVXMiuTecYWR00A:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 6-Y_ivCh9LYpJ_S66pOYQj1K8t3_67Pw
X-Proofpoint-ORIG-GUID: 6-Y_ivCh9LYpJ_S66pOYQj1K8t3_67Pw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfXxv6dcDvvVaQR
 xAQRd+IHgI4A5aWEK5pd/n4cTTdOWVC2Q+eHv92c7gqkLSy2EXldlpk2R5EJfqPzJRSa8i5tYKH
 i5XAk0cWbIMkss0ZNUPS0tr/S+3PJxGfimZAYxcy3Fa2FVItXt5sDDeatL3NRyZ64BH5Yx7BzYm
 7QSZevcfHEosGWn8KqtQlzalGVX+CpmL6uy88EOeeSnY/gPvHfF2rFV346tYcnMSFMBkk/fy613
 H8l0cEVeKnOjqa78vV5JrMvA9vMTwRbOmWvyEG3yBr0lIrSatbWqcq4Cnm/krNT512oAMZi20br
 /fRLruXP29dbHoYXc1eZ4LdfQjCMeFmWPl6XaetvBgpU7HPWLEVhliR4tpB1/nmUUOugI2gXoSq
 P8T/CCU0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000

On Thu, Sep 11, 2025 at 03:28:52PM +0300, Abel Vesa wrote:
> Add DPU version v12.2 support for the Glymur platform.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../drm/msm/disp/dpu1/catalog/dpu_12_2_glymur.h    | 541 +++++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h        |   6 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
>  5 files changed, 550 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

