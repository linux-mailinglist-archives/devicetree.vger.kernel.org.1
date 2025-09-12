Return-Path: <devicetree+bounces-216391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 57930B54A0F
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:39:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C76E5851A7
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:39:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ADD22EB5DC;
	Fri, 12 Sep 2025 10:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CWrtb5M8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82F48A41
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757673584; cv=none; b=S2kMCnsce7gFLlchSHjrzuk1EJ6CQJy10zpGGMXFWPFzj0qNpftHsS1zrXafO9F2M1jMsuNArOxqA7m11AxHR1EPKaDJxnof8SaFFQSUPBMvjGS8zQneWn51C+rH+w3PUpqOdHPYZ9sjXb3kVyoB4oGXErPAM6ZMwKo//fjDHnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757673584; c=relaxed/simple;
	bh=EPRqwnvVq7RFG6+168lPn3q1JyblPKu+9pU2ZTAP/d4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UCZUGMC6ghmCveJQu/C0TOkFQq/g5/0uXnSgomlPnlyWJ42Cs2ZITRUWlMZIQN63pFTQkaq1VTGA1VySIgGvm1dt27g1rNIv3cvZ6NMfYTiBSepEeTNGLVeEdH7dJBek7EZbG2QUgktFUvEcVR+kjN6IMFInj/UUhC8VxgfPTDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CWrtb5M8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fOGa023392
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:39:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JZO37LOsBsf5QkQB3SdvehHO
	fE6O/aUfSqad1UHXEXY=; b=CWrtb5M8zWyJSZV0/SCddrssbyxp3WZ1WDxot9Vg
	96inzXhFYQOhvwakMdUZGf4q+RGMpVo7jrokQVN28Bd6Pj4++FlJOsPI/v6TIjYt
	y3VcRTNY/d+4FI8e/A0duerWbuBDAluaxBSNPVUTmSnoTFbcYkR0gX77Hig1Busq
	uEbHxm6i+l6yaBF38szdLXWwaBMKXxZDVslxqxwHRzVNzSFCpC/EluaZdWFETvcy
	R2yW+EYjq1d3sphNTXfe8e7Dyz8KGVc/W61OCSHI6h22VdHTifat51MXBQ8bJfJ+
	hNtxjJj5WrImWUPVWIrPcnogCkToZa/z9hLDmuLUy36HHw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491vc2f9p2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:39:42 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5f31ef7dfso54867791cf.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 03:39:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757673582; x=1758278382;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JZO37LOsBsf5QkQB3SdvehHOfE6O/aUfSqad1UHXEXY=;
        b=d4CasQjG37stV6Uko0SUbn1iX2ZdzrpR4lxCzIhj4ZnRcoJ824NyYIf+miSnyHAoc2
         9i/4j331QPtp3JEmSzOvN1ajwuEjswTVB8gFzyUIz4++WygCAUvKmRgTHYFxCgbKf+FK
         G+4jzRSoPXB3yDQHrENh9pSU5egDNye/mXoOlv0kmJ1MmharwiwJs3AHMLNJPa34eSMH
         lRFj/Lg4UebVlzyvPmXjWeE4hlW5/GinFCHjJ5BQbanr7lL1kvC6xZqfSmTePSwjtDid
         cffy/1lIadmCiT26w9//LDVV+CcIEuQuLm8dhdREEmp0iuBxT5kPi331f/YPyGgrkGCq
         mljg==
X-Forwarded-Encrypted: i=1; AJvYcCXVbQ1CrO5QXqFR6fzfNGed1MgqMU8RpYzz3v7eDMx6jlJQMYCaV4/X7m/4Xc/Ij6FTSeLwVTJJtYMM@vger.kernel.org
X-Gm-Message-State: AOJu0YzIt6Z9n4NyslDgwurP3aYxoCim2ezD45bLhkjtlfC8Qkelle5t
	r2V4BwOQPlFaR0XOPLkpxjDFpIb1wEP8CiBuUQc+zgd4vXHvxci/GNtwArFHU3c8YdOyl+ZM7DV
	l7+iLCNy8p7J4tOu3lBXK+HzJIYQKvtLm+BykKZyqNQke7E0AlMaZePGjZ8fW0TSz
X-Gm-Gg: ASbGncs7qUd68iyFrSzMfZy7Tzv9a3T+lDTNyaD/4Zdr0eSP1OXKYUISXpPc7eq1O6x
	z+qK55sK7YIC0lWagFxVq6mNzLNqt/tN2NkZVofAxOQyDf9ncg5TfYzQqD2dpMJ59CDevYvjj4a
	HUaUqXGKM08nFu4yoaQKsYiyBGs6F0w9j0Zotr5ZSYmqn7IWKRbNeOG54b9rugC11b5D7M2iS8Y
	RYy4oTE+4a5UmNz6tuosxMHfezm1WsvDIRHEQkDMVwgwZKYPb/O09hZwY/x/vv7KGLd47t1Obtm
	5xjMyGfTfztgKSu1vmY6ERFKA7/URFxX9IfIIUhcR7DTM88W2XE1/18jvhkRyrOXZO9fymI+jLo
	FxchPf0ILLrUESRiwyb2RO43ieEn5p7u5C6hk/B4+3NFWfxJSL93z
X-Received: by 2002:a05:622a:590c:b0:4b3:4fa9:4cd2 with SMTP id d75a77b69052e-4b77cca8d4emr39186051cf.33.1757673581466;
        Fri, 12 Sep 2025 03:39:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IElx+sIo2TyNNDSZKhdIXfRdT6OrkK5agLSxJeNhZFAzJExqCsm6/N6pZpW9c9ZnhxyWSL7dw==
X-Received: by 2002:a05:622a:590c:b0:4b3:4fa9:4cd2 with SMTP id d75a77b69052e-4b77cca8d4emr39185691cf.33.1757673581028;
        Fri, 12 Sep 2025 03:39:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e646135b0sm1042248e87.110.2025.09.12.03.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 03:39:40 -0700 (PDT)
Date: Fri, 12 Sep 2025 13:39:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 12/13] drm/msm/dp: move link-specific parsing from
 dp_panel to dp_link
Message-ID: <4kajb4imv4mvpf4bdzoqfw7f4qoqxsu3ca4pbgsunhxnortfig@kmsqgsj547hi>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-12-2702bdda14ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-12-2702bdda14ed@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=FN4bx/os c=1 sm=1 tr=0 ts=68c3f86e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=qgWfkWmIk_iXozLJbygA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: OAG-Osaiy3rxU-YQxAiYTzjWUKZ-SD63
X-Proofpoint-GUID: OAG-Osaiy3rxU-YQxAiYTzjWUKZ-SD63
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA5NCBTYWx0ZWRfXw89gpHtXyc0S
 W6hnUtmySSBPwndcfZunsb/MTYgGzeXxfKpLC1vQzFnvgQWG7lSHyCURiOcrRsEsAo3Y6B3PMOZ
 JwznV+rFOHhmzHa2aBbnKNGZmBl+mTzQXJbMSxx1eFnLUcUeQKzwmVv+OuFt/CNgeI3OuUoguXx
 PU98MUgKqQjcVOKfQBUVTfpCyvpWJMRX/+QQ32wCHhcX9tQP8PIKz9nEHoZnotZdXxkKrvXRZZQ
 T9oHucViFL5UMwmFYLt2SXWZ7TS59AkvOFisqvJNR/61m/voZ6mUL7Y0IIYjTiCwvxQ75cuoXdl
 UTTvxalSttv0tYM3Qr1cBigdz+iSglG/AszZjQ8E1nfZoawFTfzbR6+gMvsJGu3w8A4VRmfsSYZ
 /kp7j9Sh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080094

On Thu, Sep 11, 2025 at 10:55:09PM +0800, Xiangxu Yin wrote:
> Since max_dp_lanes and max_dp_link_rate are link-specific parameters, move
> their parsing from dp_panel to dp_link for better separation of concerns.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>

I thought that you've split all DP patches...

> ---
>  drivers/gpu/drm/msm/dp/dp_link.c  | 63 +++++++++++++++++++++++++++++++
>  drivers/gpu/drm/msm/dp/dp_link.h  |  4 ++
>  drivers/gpu/drm/msm/dp/dp_panel.c | 78 +++++----------------------------------
>  drivers/gpu/drm/msm/dp/dp_panel.h |  3 --
>  4 files changed, 76 insertions(+), 72 deletions(-)
> 
> @@ -1225,9 +1283,14 @@ struct msm_dp_link *msm_dp_link_get(struct device *dev, struct drm_dp_aux *aux)
>  		return ERR_PTR(-ENOMEM);
>  
>  	link->aux   = aux;
> +	link->dev   = dev;

It is only used during parsing of DT data. There is no need to store it
inside the struct.

With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


>  
>  	mutex_init(&link->psm_mutex);
>  	msm_dp_link = &link->msm_dp_link;
>  
> +	ret = msm_dp_link_parse_dt(msm_dp_link);
> +	if (ret)
> +		return ERR_PTR(ret);
> +
>  	return msm_dp_link;
>  }

-- 
With best wishes
Dmitry

