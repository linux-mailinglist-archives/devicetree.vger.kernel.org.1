Return-Path: <devicetree+bounces-206844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36889B2DBAC
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 13:50:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A28581884AE0
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:50:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B956F2DC333;
	Wed, 20 Aug 2025 11:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XRFmaEMs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BEC2BE7BE
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755690580; cv=none; b=miyu93WrYgbjTrvFpB1f2GkD4Xybiy0NSQsI7Kd337V+mdPYNllBXG/YUV4bKpx5/FAEf9c60k9ctLTxpZ3wTbDC0be6G+iCSbm/0Uw82eRLDbmdJDcGKVFnpSUacxF+/jbaKwLzDwJDAHZx5bHn+Jj5jAfXxwV4gnLpZxEWAqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755690580; c=relaxed/simple;
	bh=/W3GAMjxb6JXpBcaXEk9zeYaG0UOfu4lsuIRPhBJ840=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vE47/bdUvWm2m7YteWLpOxIZlNEpWQmIG/gK8cYJbR5RWoidGXpvcPtCTRWaJ1GTO9fYr9fdrM9CkhxkOf/fsP4JKg06NSIDZo8hBLcFbUEJ4KqH2v1MdQ40njUegTnq1X+SbpwLUqlkwYFNYQyVcayl6E8dhiKz1vKn0FPUfUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XRFmaEMs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K9tJVW025306
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:49:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eQi7QofWcWU158eHa77hdKaL
	MtA3y2gGZ0Eyw0PH0w4=; b=XRFmaEMslRE5X4uO/ji+OsjfJYFnH5j7tKnrndUM
	jgnyDrwLaMjFnRz/WJDihtq5/NFBqMRvz8soLQa6BPccpTKet3utuvHsCK7FFeTS
	ihb7boZRAiH/eP4PIfDN9naahMao0qhYEch625dtktKtYZQ8OAT5PMV+NtFNM8jI
	flLUW7OapLaVLcyKx+x+paCwMpfDfJxOZpycrTJrRQ2CGrCAwD0GbFwQs3jBGNQj
	WnlJiGrLgfcTEmfBRYP79gjZeIAWkGBD7IzmZm5L4jJy22E8Zl29IBWUy3OHsitq
	aqF4QhbAQJYqoXURUqSltZcDkjaiR6ediEVV8foif/wYKg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52a9kts-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:49:38 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a88dd04faso223272286d6.0
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 04:49:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755690577; x=1756295377;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eQi7QofWcWU158eHa77hdKaLMtA3y2gGZ0Eyw0PH0w4=;
        b=tKWZw7sgzUunAXvdEXuBXVUz4hkRXt8wDGygyCLU2Gk2psUqh14aVpYwMLaThRB5ht
         yV+8+1JRNsNX+AR1ZWvT7oP4tuf3q5pJozmoo/Q2zfr9OyMStbjkD9OlanwNfckiFqxo
         mapwOfHkhkEE8+Hb4IVZhkhvwm2Z/FqkClS3qCxt3AIdF19rmtXu+XN+N2gpN+TUaRsF
         d4R3JkNak/0b34tGoTz9TYNaw3KkJlDO53uqo9fimXuMCYaECkDzOFu86/Us0jHmuYqe
         1f8ObhwOJAIR+6CYTpjoAwxoF40FCAQif8LPrZjguhjK3nLMkz0+RednMU0u/uJzpoE3
         eK6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUloCZpPPA9GWRHr2rejx5mwxzquf+jJc1INU1pa8Iat+3pRy6qXzVXVcG+80iUvsu1g/QWYO93YYLe@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp4NU8p8aLQ4H6giLEGiL62j+NAtu8oqLa+3v3fcH17xbuHMjQ
	ZeHNROvoGUKs9OfAyv3uk2T0vpvXeTzjzTiZfdyDOCrDIwk5YUnYgl1DxU/GbVHYDLdzWQtrWLp
	+lD4HbGsVoJE+/HGq8wNlDt4BDtCLLyvs9QibKKp8MzUMXnjjPDCDh8B3MNbBzlUw
X-Gm-Gg: ASbGncsahc7b4mUzCjFN4dkhtLJL520n0+l0iffBP5+x5ncUI3DvBYiGa5RT5ri01mS
	6HG1EjEVT1ltemqY8RMsOBNOgDMUUUoH9yL5V7xSKdB7SwDn/OsozE/sUdW5ZTT9zwQ6c4+6PAO
	hB44RGBAqOKoA39nCPxaGp9xys/i2RVhqravJX/Bh+z3qWzrVzEnjBrWn7+HvV/NJxeyO/O+Mxw
	FX1ZZYYTDYEIqUT9bknpL3MV+tLRrt8f8wOm8az8AY4esIkckqsdYRWjn2+tYBmayXPbjVSfaB2
	pKokjUsYEsOBw8+uEv8m0NMw6DhGmPflqi9niM2XE1nDzLJlLg+9DFCcJ4b7cbciHxV3b7eEoJP
	BCltWaxriFfSYZjmVjkNRUvkQMRlSjMlaLX/nqP0Sr9L2DGV8tSnQ
X-Received: by 2002:a05:6214:20e3:b0:70d:6df4:1b03 with SMTP id 6a1803df08f44-70d77170c76mr19313176d6.65.1755690576813;
        Wed, 20 Aug 2025 04:49:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHmrvdHhyhkjHia2f4r6fnsTTnjiCF/kpkKVlmq6+LLt1eyY0mOs8rxItEF+MdJz7nJEs0lug==
X-Received: by 2002:a05:6214:20e3:b0:70d:6df4:1b03 with SMTP id 6a1803df08f44-70d77170c76mr19312816d6.65.1755690576172;
        Wed, 20 Aug 2025 04:49:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a625af7sm27271481fa.60.2025.08.20.04.49.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:49:35 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:49:33 +0300
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
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 14/14] drm/msm/dp: Add support for lane mapping
 configuration
Message-ID: <wwn24kjpwexl66hd3wufa53lkqojb2bkpdogtxwr3uqotjpf3u@hclfgsv64ajn>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-14-a43bd25ec39c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-14-a43bd25ec39c@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: irlleArbEtif0hReQBaYX2IH6zs3YlM8
X-Authority-Analysis: v=2.4 cv=B83gEOtM c=1 sm=1 tr=0 ts=68a5b652 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=mR71zFEkwuVZQDQknwQA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: irlleArbEtif0hReQBaYX2IH6zs3YlM8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX3hfdZACX/6Vw
 sb1Lb5EYKnckakGnUpXan1VcK4h25xUiKpFTddg01R7lAP0eWOejZvVHAIP13DoYCy3/3nDsbzn
 OwjOS0Juplx9ClyQY6JxrwG4eT0XurpurvQZMYKo0j7y/+rNZyIO3qKfy+HMd16vLg2fNd0BH9G
 PVumfhJ2oxqKxwIxfNxk1lkZUp7sRcxmGhzWoV5HGWWQhV8zYNS6L3C7RJYsO2w+MEU+bFQLDsZ
 P9a9XkdJTx6EkIPCnnPTQ8kJzW3zwk7KWmX1ndJNn2/EdlCuKvnfpp//qL3c3FrPsAzAAhn0EkN
 86sEctYz3++novYqgZ1KQh9LxU0IOssYTeWSPHCw+laAeJzpD8QG6Wbu+NrZaKcnQ0psEGGHwVC
 pSIPJkhfbx4zUL7KBW8onu+iv61fdg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Wed, Aug 20, 2025 at 05:34:56PM +0800, Xiangxu Yin wrote:
> Since max_dp_lanes and max_dp_link_rate are link-specific parameters,
> move their parsing from dp_panel to dp_link for better separation
> of concerns.
>
> Add lane mapping configuration for the DisplayPort (DP) controller on
> the QCS615 platform.

Separate patch

> 
> QCS615 platform requires non-default logical-to-physical lane mapping
> due to its unique hardware routing. Unlike the standard mapping sequence
> <0 1 2 3>, QCS615 uses <3 2 0 1>, which necessitates explicit
> configuration via the data-lanes property in the device tree. This
> ensures correct signal routing between the DP controller and PHY.
> 
> The DP PHY supports polarity inversion (PN swap) but does not support
> lane swapping. Therefore, lane mapping should be handled in the DP
> controller domain using REG_DP_LOGICAL2PHYSICAL_LANE_MAPPING.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c  | 10 ++---
>  drivers/gpu/drm/msm/dp/dp_link.c  | 71 +++++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/msm/dp/dp_link.h  |  5 +++
>  drivers/gpu/drm/msm/dp/dp_panel.c | 78 +++++----------------------------------
>  drivers/gpu/drm/msm/dp/dp_panel.h |  3 --
>  5 files changed, 90 insertions(+), 77 deletions(-)
> 

-- 
With best wishes
Dmitry

