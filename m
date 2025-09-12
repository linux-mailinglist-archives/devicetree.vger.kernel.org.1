Return-Path: <devicetree+bounces-216376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBAD6B5487D
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:56:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8096B3A9CF6
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:56:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87FAE289E16;
	Fri, 12 Sep 2025 09:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QHzpERss"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3942877F7
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757671007; cv=none; b=FXrNcGCyBlshlJjUWPbzsk3jq7+4beOsnR0qF9/CTJBkvls5BRs1MAMnTcRpsCQ59U3HZ5zp0ow4weXnIoXIZvcM46qgtaRBsoaj2EjzckFg85hnYT4zahFWuxWDrqnwcF/ntPera0WEkIruyDI1JlqGoELU7cPePZ6P5pZlRKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757671007; c=relaxed/simple;
	bh=SlOs1DS/YlC686LAlZecB5zz12ropOMVG2osPw6RNW4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=inhXLqA1tU8O5VxVGSUMLbo++uCA8KDmLvAa2k59aC9HFvxJep6tGZcMC3eBoN3fH1vy1y+K4t/X7op6s+2ghJHE1Cn8LC6gEA0UYENRnJTb2DKnTzrBqeEddFxbEBqR5Af37JNdunC0Ea1FuADhLReD4qRDe21AYbTeQp93Vb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QHzpERss; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fD37018532
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:56:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OD9Udd7rbiexckZHIpahTYqB
	LCmCWRywICtA7wRkc1o=; b=QHzpERssArGdpxOQxFRxqzVwLfUS1u4bDarSxvg9
	e8jIYhrccYF7cecxuM0xPfW4v0nx8yrzK9OWVW57dfQgyvi2gMY6IvGw1DPxZfj8
	9MA05eP12GFFEe4N+yFUTnbPASptLC+grOZPNEhbM5mkOsIHcQbPVw/r6YZc5JhI
	XF7BGfqr6yghI1d+z9x9bXKUx/rUifwwBStb3cECb2UJb9D/4syH/gAB/lKvpEUT
	4X7Hn2D4viFh9INnrBXQPhkzG57ts9lJY3/zXxI36dFQicdshP3vAH4WwpCUURY/
	+YtFtceIBMW5bW6p9EZUuX50eUgVdySpPTPElq78/fMxGg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8ak2w7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:56:45 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b60dd9634dso42994351cf.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:56:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757671004; x=1758275804;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OD9Udd7rbiexckZHIpahTYqBLCmCWRywICtA7wRkc1o=;
        b=H9grU5JhxUct3EeHRjbDuJdTC0QI7ttFZ9y4YJcZkgAzVNCE+gTC61Gf117OVbe9pD
         NyEV05wORgWffdBWp/HR0htUS3LedqtPN0jZat1IqE2f/Yi7UXofB2fKQaDB/uJULUmM
         sOk9ZrfkOBqxcvJfmLVrBRBpJXdPTak897SvO+qa+UiBvjzZFTRVMXaDvwcCXAdQWWpC
         1+geYtqSYOG4D1Rv9F0i6/BBfA/Ig48uUAJaoTOr8aEqY2A213VMhh8Ft5aSrd+C+2iS
         bTO8nXMobuTDMAytDMvaWl26ekz8wv9yesupb1IBqHUUbd9zk83Z9felhkHgHVinkwlP
         MMHA==
X-Forwarded-Encrypted: i=1; AJvYcCW/bOxP4v+Yc/L278bicKdITTPpfLPy4AEoq22di+/Xl1aziEynsP8M7t5ZgCejPaATfCRtbCh4WVhB@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz2lJI3hky753IxCGmigpKKf02LyHFTNVEbD0dJBPEa9RRV9Aa
	o5Q9lvAVKm+x/1pPd8ND8n8mFYyAkPhiiupsgwJbgKMbFCK/n6sPYVH3SRcxlOz+0b6riBCn+X1
	0VrfAPQfn8M0ZiQXuZxeQdXaXd0zOPD2pdErhvBBiowZHBEo7O3WV5kYiAQQroPTF
X-Gm-Gg: ASbGnctXD5gkj6ONN6ahve/cIbHWwZpyh8bZuXgDvl6iyQ3WfFLWmSrFUW48RcFkRkY
	vo6F866Cn5z+jtV8zrQppndZB0iKWrFsH6DyJP4/K4o3vHHvqXXaLzqlVEdE92mswLgbv1MG1ML
	ZlAUvDm+39HE0YA4DLlB6vRsolmFR8cuMGeVXcDws0UNvTzt0f2/9s4sAq8siwxuxVl2YOIMe0z
	Hmzg9m/ROnZkySUZtBSoA1d/9NZQF9YMEAxJRJPb9MxO62uh++g1J7eh1KsTH7LNAk/TgdVmh5Q
	mNhJ2Ss5m3hLiOl7dqUzWWR202EUUtnKBYcut3wRzRYV2esUJY/nxmyC2PKpFu+KO3DSD7zxL6y
	SrrbPffKZ6hEN7flntArWQMZmaETyaYm+DUlMx3LkJFqyZxp+j8On
X-Received: by 2002:a05:622a:289:b0:4b3:f3b:6b14 with SMTP id d75a77b69052e-4b77d1d50b7mr29032651cf.79.1757671003800;
        Fri, 12 Sep 2025 02:56:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHrg+eZkUE6kJIyOVqREfUPXquzVktUgoDHxmRV3RNRm2kAXVXWPWukFFYePEL33rxXTVJhig==
X-Received: by 2002:a05:622a:289:b0:4b3:f3b:6b14 with SMTP id d75a77b69052e-4b77d1d50b7mr29032261cf.79.1757671003214;
        Fri, 12 Sep 2025 02:56:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63e3csm1057056e87.83.2025.09.12.02.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 02:56:42 -0700 (PDT)
Date: Fri, 12 Sep 2025 12:56:40 +0300
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
Subject: Re: [PATCH v4 06/13] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
Message-ID: <ejwrkogssqdzxraacvxdbasxg2ud4t53rb6da2g4vdryyjuzoi@evdibveq7w46>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-6-2702bdda14ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-6-2702bdda14ed@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c3ee5d cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=kgVMhnFeOIEbK27hWpcA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: o-7KyHSv-HsziaJmOZFaf7AIH4BWbDdM
X-Proofpoint-ORIG-GUID: o-7KyHSv-HsziaJmOZFaf7AIH4BWbDdM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX2FQB5ipQHX8L
 L1FzyJT5zytoLUez8uNSFS4HSKrjSfih2akdKmSyfRttbfUoR6pzWh0VpNNcgXbGCzshco3KpAO
 fYU5qYLqn7BrP1pknCkqdsiCzhs+FpM6GuNKa4hOJO0sWnUDYrHaOqu269IQFZtrdOyIV1c7SZL
 p5bEpIQfHtxWeQ8p2Omd83e76qCXeNE0YsNyLc3ICb1iNr284P1+mavGJPnC03FyuxR4wPpm8Ox
 4+PfJIMQD1vMptXY1DW6WwXwkwKCNDULbgwvJ4BiiGwNvwDDykjC3AzvODP9p9E6KwDdKyIvkFv
 5jxCFzITboceNAiO6UUf43nFaZO/a4O0VGfna+Y47oWx3D+wd1FIcq8apwv4yxdV3hLw36n++vY
 YGSUw0N7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039

On Thu, Sep 11, 2025 at 10:55:03PM +0800, Xiangxu Yin wrote:
> Move reset configuration to be managed via qmp_phy_cfg instead of
> hardcoded lists. This enables per-PHY customization and simplifies
> initialization logic for USB-only and USB/DP switchable PHYs.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 56 ++++++++++++++++++--------------
>  1 file changed, 31 insertions(+), 25 deletions(-)
> 
> @@ -1147,11 +1159,6 @@ static int qmp_usbc_parse_dt_legacy(struct qmp_usbc *qmp, struct device_node *np
>  
>  	qmp->num_clks = ret;
>  
> -	ret = qmp_usbc_reset_init(qmp, usb3phy_legacy_reset_l,
> -				 ARRAY_SIZE(usb3phy_legacy_reset_l));

You can not do this, it will break compatibility with the historical
DTS. Legacy code should continue using the old list of resets.

> -	if (ret)
> -		return ret;
> -
>  	return 0;
>  }
>  

-- 
With best wishes
Dmitry

