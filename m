Return-Path: <devicetree+bounces-208003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C121AB314CA
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:09:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 81E0F4E6775
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 10:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC7D72D374B;
	Fri, 22 Aug 2025 10:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aRLhTNmw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A422C11D5
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755857362; cv=none; b=tPsrEXzqeNF4zkDiwOYaOsNuR8XyJ8dZB+CdPaCzffJHnJc8EwMnXPWyPV203D7DXq4anMQGCu4FyJ5l++IxEASYJUzeS1yMtHz86C6oZAIWVj+V9SWrlq8l0ydyFZozDh6s6JYxBZfKp+5onSRXqdLbu06NWRrHWTo5Y6WuYY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755857362; c=relaxed/simple;
	bh=1+cEJqEPnMhs0VGIKCr+QdXiw1/UgnnBPrisveWge2I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u8LxXvhsUD0pC0QwLyt4+bJGO6qxDq3+iSc1DA92uOUvgT8l0DjYT+T8gjst4iPKfvpy+i8JsaDbyHrMKCuRYB3ua8GzoZdcPuEtaf+qVdNXAYXeTItbo6AVtqBNGQJabbNz+XtleH3GMkEMQXUXGJ8GUDQ+IMGviYOwbJLjBJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aRLhTNmw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UI9p024018
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:09:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/CUwk5QH1ZSt+M+5NuLxUaiWmoXIPaE8loSJYuZG5tk=; b=aRLhTNmwMlgE6JQe
	tWwNf2M2oC4oojXabs2KKGwrhhStri5fyzPV+aU3lhp7Jbi3ypNE+l6O+n77w+Tp
	2+SNiqs/0+tfPliih6suw9tHpp0ffs+9zMvXNPDnj13DW/s9SKKdCdxxzOJF/6Cd
	2+pirkH5OE53jNtRqWAYvIT1QB/WQS/5kyUqK+EvwumVYk4v3hTDqjc62miMMSj0
	4B14/XgwMenyqdYSqstlznouGEBuD2xxAJJ9JnOfdMzbsleFWKK2Nn9Ue5BS1F8s
	y7j3e5mNRCzD09dwMDo+M9AcSE5/u8Ow4n4rCDWtFLgLegNNY5i3RDJyrHH0ucW+
	tyuQBg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52agw18-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:09:20 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e870316b85so388707485a.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 03:09:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755857359; x=1756462159;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/CUwk5QH1ZSt+M+5NuLxUaiWmoXIPaE8loSJYuZG5tk=;
        b=R2WXcYK6Ef+qmpzQhRTGywCYBOriRXGirKBYRGaot0v7hvasIuri/HE10IoCGVf4LS
         BZsh7dNbu3wT4gg5Lqg2vBdoN+DEov258fcUoEqoBYpbetmVkzUuAxjihThBgxrlW/WW
         ob7iv/8r/MzHkVRGyL5neEfNrTPW2t5zXk4dUxfMXm946t+zKLgYCKeqSlELGzumD3wJ
         wVc+hXgcSUgVfiEhHXSJyx5v++U7LN14HkC+ydxQal+j5nMUOCKa2astq73EfPDNy0fl
         a6t+SOgAm4UWJ+brh+V2/Z12D2IkAKMlgTq2KoYRddioyJoGAzaOgZofUtWaSCYzFM4E
         Z/rw==
X-Forwarded-Encrypted: i=1; AJvYcCVEtmU93nbL35J7I2bz/dI8qdXsqHXZFdbd7WfdWZY5Q1rS8ap4d1/xTYhQz9BftvXjlwUbwT9Eb3N+@vger.kernel.org
X-Gm-Message-State: AOJu0YzXkIJtqT6VcGJ5IJ912UnhF1VrCg5bo2GJvPMhdeV2zY3sThtR
	YvWdmAPwALb/8J/K/xGOsdqSkc3xiVwxl+BV6vHg6ZJNk74kHE2fo7EJPlOibbZtGdCIPqZ7l6X
	t1uXQQEdQYR0UsoJvQwSu6NiTK2ezoGil+OgpOJ4tEkokf0ojpUuMBl+PNE6MIgBX
X-Gm-Gg: ASbGnctfhy4q1+339xBtX8K29wc/r+a1b2EgjwdCGwhUjCp15n/xRAhNuwGgmPt70i2
	Db7NjjLiNdNiQAEjxx4NHjrY4lM705OJO+uX53FqKL9MvZz4qJz7ZIVAygIUvXgqUdaOS/kY55f
	GhAAXt3NVuhkb5RWkCN0uTB+4rim4fQyudOvxzm3sDrAT8wBFVF4Nq32mHX9wEb8jxdONL3RG/O
	ap0jZGm23PuO4SFH9eufqOPvRHuLE7ChbQsbroFdh1oS3mmbgoKsOCs7TB8fgh+g9opQ7c7pcrX
	nE3tTGXapFXt+XiOY1IYn+H3tZ7JwdW4DyybC6tz3M8HsCbdjhw9xYSeU7PzY+InsYliUIFZd47
	UXEZKXw4bcce4fA+wG0kTIW0SWxSR+XD2V93xajqozU3mtYClheIu
X-Received: by 2002:ad4:4ee2:0:b0:709:d518:74fe with SMTP id 6a1803df08f44-70d972f905dmr28319396d6.38.1755857358933;
        Fri, 22 Aug 2025 03:09:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjLDedc3TEHaa5fOfhQL6JH2lzExRdfVuK/adJjjF/AbJ1wFTlhwvAYsjorze1ggX8bWHyRw==
X-Received: by 2002:ad4:4ee2:0:b0:709:d518:74fe with SMTP id 6a1803df08f44-70d972f905dmr28317336d6.38.1755857354860;
        Fri, 22 Aug 2025 03:09:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-33650ea5f6asm3013591fa.53.2025.08.22.03.09.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 03:09:13 -0700 (PDT)
Date: Fri, 22 Aug 2025 13:09:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v3 08/14] phy: qcom: qmp-usbc: Add DP PHY configuration
 support for QCS615
Message-ID: <tdmjo5et4ohwg3g5z7wr4dhvvlqbd4z6nfo2hbzpyo77e6okdp@z5f7hlvyovx6>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-8-a43bd25ec39c@oss.qualcomm.com>
 <su3zkeepxaislh6q5ftqxp6uxsyg7usxmc5hkafw7yn2mgtqeu@wua72odmy7zp>
 <2e3c1559-7da2-4c6e-bcef-eb1e8dfd4c31@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2e3c1559-7da2-4c6e-bcef-eb1e8dfd4c31@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: UcDcx0yCABYjRtIUpn-Y_iHcINpbzRn0
X-Authority-Analysis: v=2.4 cv=B83gEOtM c=1 sm=1 tr=0 ts=68a841d0 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=VDbBU9HbQ_CCQpQHtSwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: UcDcx0yCABYjRtIUpn-Y_iHcINpbzRn0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX8yMetnFOTmf6
 bDsYqyvOh6cuQNsuDYW9XiciB25EFcTHQQ+LgSO3ycrN5hdtKvCsRK3pLwSI4pBBOJEgOuSWgAD
 hCw9mgRmSZUIILP13k4YsEGWfmrEDFBhsd8PANoC1WljL7HNY+1uakIhNw9ivKS9RJXdMYAQuVb
 AUjuF+8pYTdQ6rsehlHxX9i68LULocJRCYnGT52UaCA93AIqSgOSaJhgNDkSupodyDfw8Kx+77N
 Qb+YfQfvoGSwcehaGhd0TrXqeTd+ilILgoSV6sJ0bPoF6EmLlXUt5UGYMFA5LWToCxYMmaQPr1o
 FzFKSic+Zq5PX1Q+HvOUb/G/WZuJJjnCcgC09enESO8m4naQBApvskAsiheSKGTqr95HgQXYUhV
 IHLbl+sF0x1Ug6WTyojNeMKILExfcg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Fri, Aug 22, 2025 at 04:43:11PM +0800, Xiangxu Yin wrote:
> 
> On 8/20/2025 7:16 PM, Dmitry Baryshkov wrote:
> > On Wed, Aug 20, 2025 at 05:34:50PM +0800, Xiangxu Yin wrote:
> >> Introduce DisplayPort PHY configuration routines for QCS615, including
> >> aux channel setup, lane control, voltage swing tuning, clock
> >> programming and calibration. These callbacks are registered via
> >> qmp_phy_cfg to enable DP mode on USB/DP switchable Type-C PHYs.
> >>
> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h |   1 +
> >>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c   | 251 +++++++++++++++++++++++++++++
> >>  2 files changed, 252 insertions(+)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h
> >> index 0ebd405bcaf0cac8215550bfc9b226f30cc43a59..59885616405f878885d0837838a0bac1899fb69f 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h
> >> @@ -25,6 +25,7 @@
> >>  #define QSERDES_DP_PHY_AUX_CFG7				0x03c
> >>  #define QSERDES_DP_PHY_AUX_CFG8				0x040
> >>  #define QSERDES_DP_PHY_AUX_CFG9				0x044
> >> +#define QSERDES_DP_PHY_VCO_DIV				0x068
> > This register changes between PHY versions, so you can not declare it here.
> >
> > Otherwise LGTM.
> 
> 
> Ok.
> 
> This PHY appears to be QMP_DP_PHY_V2, but there's no dedicated header for it yet. 
> 
> I’ll create |phy-qcom-qmp-dp-phy-v2.h| next patch and define |VCO_DIV| and shared offsets with V3 will be redefined accordingly.

Nice! Thanks.

> 
> 
> >
> >>  
> >>  /* QSERDES COM_BIAS_EN_CLKBUFLR_EN bits */
> >>  # define QSERDES_V3_COM_BIAS_EN				0x0001

-- 
With best wishes
Dmitry

