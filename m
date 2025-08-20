Return-Path: <devicetree+bounces-206827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D87AB2DAEB
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 13:28:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01FE85E53A0
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91A372E4242;
	Wed, 20 Aug 2025 11:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="deKVPfql"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB0B227563
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755689128; cv=none; b=oKAn+Oan8tavsZILaPRCMC0VMFWzEN6GmJBWHFxvbyxSTkJfRx+rTtU8bCP1nLoleNC7FaZnzH8l1Os/3s8bmw95Jll9bQWYiquvslT+7c3aITH6u95TYSQsPF4IQJiHyVoR8ufdAGM4jgR0sl86Pjyr71foDso1Lx7I6A60sd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755689128; c=relaxed/simple;
	bh=Dh1+UR+680GmsGGxUKQtBHFQnBCR6qxR71IDUROcn6Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jWsnp4+A4jytEf+zmPvXAE1blB5Gd5khekKTQrFv1v8HTPlfu3KKcfu5bGneLpYeOglDCYNits5OtU3ANQMLiPpoYvPIrKkxp367V5dZk43skl0Mbn93QXwGAWG18tpupiHp8/5lsGxxFkQA5O1/ERRc9U3t7E2w0GvwbD4Y0ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=deKVPfql; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57KA9Acl002743
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:25:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pM3IqereRYgkro22T8SG9mTJ
	LbTJvmRyFErAXFuHomc=; b=deKVPfqlLNdOJrVI6aCZh1L26hLIpF8gcwwC9Qz+
	lOXkzdJYZ6zMe27WebkL/uZOy1/7IAYyR4VO6yiBUYEFTgvTQMi0NB4yPsy69VRc
	wwz+HJnyMC+WmcmYZJZWW9R5iuJTxJRNRTTJRl3fBCFNfz97cCqlz6prbv/epetS
	DN6L9R+Etzrth5KJqP3SoUbYIoI9W9olRSEq2S3htNqkOAb/MipAz7XUJeJ2ez/k
	eXCtKSbUdckGiUuMta1kaW1pgivmSkmuk65dR6MFwWet5N41vQLyYyda1LwzmjLk
	vuAmGJxbr17EgZOZ3kDoglBWPUgu400DHNmNwX8cKk3Q5A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n528sg7t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:25:25 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b29461f7f5so12359431cf.3
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 04:25:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755689125; x=1756293925;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pM3IqereRYgkro22T8SG9mTJLbTJvmRyFErAXFuHomc=;
        b=oHVz1RkgHVeayu15gEe9x4SnCP3XuaTXoe9s4gP2XkZqnejolwvriPLYZW2o7KV7gZ
         ZRwKWpXdYJtlH5hm76Eh4vaud5bwZVvmTWBVsJhm6l6HV9vrEfRaJRKx2zN60BkvXUKM
         E9B/ZGDRd7CfK+adUPTtdWa9ghrjGoibJzRUPHviyqmYjMIIJ1B5HiNdtGT8WrEGOSyG
         D6sSzPsvTKcIiL5bM8yOncM9g1A4Q/9UElKUA2x9KJmRa821bWodiaLDlXUcVqww6JvC
         G3pmPYjsgBNGVA9OWG2FF1mysmr8cL/SOn8ct03S8PAqVWFWahkr+MLho2QlbXKQq+Ne
         BheQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUU3QTo0rJ4DRm7jyjMUKrZhtQgotGCITSmC1vpDqRN8mgfbNq+h0Y09/Niw3jQfsHxfZGfn1l2Q/2@vger.kernel.org
X-Gm-Message-State: AOJu0YzUDZwtcc3cnWT8ZAj9mViNpzzjvEdzt2nHuqF0xXmwJvBYybgz
	n/mxGs0TSSQPwvj5oeNKsX9QbWXIOUXJw35gedGcWuwmCuZTsnEtkT/O3Cn3gw92bAlrIYoos54
	UqNtclTicaVUa20Syosbvdj9g2t2ovHhK74tXHaMm5T+cnkE8acoGDSy/lRSqWEJL
X-Gm-Gg: ASbGncup9XM+hm0gzlhZkqtxzMT19n2zeSMOuix0hoi0txwNxhryBgrnjWqHHsluTJS
	Lf1zNXU53sjzpQQUcbOHYzK0f/ehlfVINz44+p9M7x0sJiQzOFFLxeT4Do3//zbgtqoyDao+XXh
	VdIYBd5ipLqiR6iBWKrqRao+f5Ocd1TF0w1YOLoUis0+THV1AaeRkvaa6x2YrIEFGUDk8k0Ca+S
	oDM4bnxpPnrIbciyXCyQ9k1B5kTogt4Xs1diBJ6PO7BkyLDK8snNKI6TnUbM6AmMloaLdp7ZnT0
	nEOLdaq0i+hdWCKT4wRveKSupA3qnZwpcOd3Wyd1+8Lfu0txv0V90jEa4sa5k9YTtEcS8fyVc3D
	+7FxKd5Rer09UV3Dsk78ZEhdQChu0MWAVZvo1amHKxesO7qSTEmwC
X-Received: by 2002:a05:6214:2304:b0:707:4d17:e280 with SMTP id 6a1803df08f44-70d76fe844cmr28308736d6.28.1755689124610;
        Wed, 20 Aug 2025 04:25:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFo3x0vG5bWavr75XQbzze8op4sOboUWHZRciWylwkkn+WCE6mKciGuth4WwgeOOu0+W+czaQ==
X-Received: by 2002:a05:6214:2304:b0:707:4d17:e280 with SMTP id 6a1803df08f44-70d76fe844cmr28307826d6.28.1755689123788;
        Wed, 20 Aug 2025 04:25:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3f3568sm2520633e87.117.2025.08.20.04.25.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:25:21 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:25:19 +0300
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
Subject: Re: [PATCH v3 06/14] phy: qcom: qmp-usbc: Add QCS615 DP PHY
 configuration and init data
Message-ID: <bx3cumx7ej7taour6zhqufrzjdxuhvlx23ga3vmvokrlekayem@e5rfjbcwle2r>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-6-a43bd25ec39c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-6-a43bd25ec39c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=fpOFpF4f c=1 sm=1 tr=0 ts=68a5b0a5 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=w_ydXb1fH3eDB4nJsVwA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: xkhGGy7Em592B_0D2r0PWjLTPrcaxPNz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX5e+5t/UOAkfn
 5aB12besUq3TqjCGGIDISX1ou7EDKXWVYeRaLEdqnqmvkf9saKt9gU/SRet5RtH8Qhc2g9i00sX
 9MIphBGZ6R/FlktzdwGzKaD35XF2xMarpZK9k/Ic4orIfvT5s7c1gu2hPXVPXgYoUYWE4/W1oAl
 rFoq2p7FrckTa4u9c0zs7cE7rDs1fntJ7yhYiIqTZCtiygdExSv5jbUr8nMsrrJNtcYn/B/HwW0
 BxN/3Xzr/i9tZfi8xUFdy5ZfudxI7utfMfvXgqHC0hE8zyPUagbiKX6cDLLHemeNiIQzo1rHTgw
 oarig24jIzlPc3WMdbb6N8I50CijvsSq4d9eiKSIRdwmrd0soYFH18D8ss0+wcQV1kLh2xMnPl2
 EdoZNnMk8CkY+NhtmwDL2dlRbHgL5Q==
X-Proofpoint-ORIG-GUID: xkhGGy7Em592B_0D2r0PWjLTPrcaxPNz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Wed, Aug 20, 2025 at 05:34:48PM +0800, Xiangxu Yin wrote:
> Introduce QCS615 hardware-specific configuration for DP PHY mode,
> including register offsets, initialization tables, voltage swing
> and pre-emphasis settings.

This will trigger unused warnings. Please squash this into the patch
adding compat string to the driver.

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 139 +++++++++++++++++++++++++++++++
>  1 file changed, 139 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index 6b0e86ec43ded3d850f68f248a74c39f74ecb5bb..61128d606238321d1b573655b3b987226aa2d594 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -284,6 +284,86 @@ static const struct qmp_phy_init_tbl qcm2290_usb3_pcs_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_LVL, 0x88),
>  };
>  
> +static const struct qmp_phy_init_tbl qcs615_qmp_dp_serdes_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SVS_MODE_CLK_SEL, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x37),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SYS_CLK_CTRL, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x3f),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_ENABLE1, 0x0e),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_BG_CTRL, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_BUF_ENABLE, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_IVCO, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE0, 0x28),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE0, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE0, 0x0b),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE0, 0x40),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN1_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TIMER, 0x08),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CORECLK_DIV, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_CTRL, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE1_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE2_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_CTRL, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CORE_CLK_EN, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x02),
> +};
> +
> +static const struct qmp_phy_init_tbl qcs615_qmp_dp_serdes_tbl_rbr[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x2c),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x69),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x80),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0xbf),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x21),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_LANE_MODE_1, 0xc6),
> +};
> +
> +static const struct qmp_phy_init_tbl qcs615_qmp_dp_serdes_tbl_hbr[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x24),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x69),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x80),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0x3f),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x38),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_LANE_MODE_1, 0xc4),
> +};
> +
> +static const struct qmp_phy_init_tbl qcs615_qmp_dp_serdes_tbl_hbr2[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x20),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x8c),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x0a),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0x7f),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x70),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_LANE_MODE_1, 0xc4),
> +};
> +
> +static const struct qmp_phy_init_tbl qcs615_qmp_dp_tx_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TRANSCEIVER_BIAS_EN, 0x1a),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_VMODE_CTRL1, 0x40),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_PRE_STALL_LDO_BOOST_EN, 0x30),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_INTERFACE_SELECT, 0x3d),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_CLKBUF_ENABLE, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RESET_TSYNC_EN, 0x03),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TRAN_DRVR_EMP_EN, 0x03),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_PARRATE_REC_DETECT_IDLE_EN, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_INTERFACE_MODE, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_EMP_POST1_LVL, 0x2b),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_DRV_LVL, 0x2f),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_BAND, 0x4),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_TX, 0x12),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_RX, 0x12),
> +};
> +
>  enum qmp_phy_usbc_type {
>  	QMP_PHY_USBC_USB3_ONLY,
>  	QMP_PHY_USBC_USB3_DP,
> @@ -449,6 +529,34 @@ static const struct qmp_usbc_offsets qmp_usbc_offsets_v3_qcm2290 = {
>  	.rx2		= 0x800,
>  };
>  
> +static const struct qmp_usbc_offsets qmp_usbc_usb3dp_offsets_qcs615 = {
> +	.serdes		= 0x0,
> +	.pcs		= 0xc00,
> +	.pcs_misc	= 0xa00,
> +	.tx		= 0x200,
> +	.rx		= 0x400,
> +	.tx2		= 0x600,
> +	.rx2		= 0x800,
> +	.dp_serdes	= 0x1c00,
> +	.dp_txa		= 0x1400,
> +	.dp_txb		= 0x1800,
> +	.dp_dp_phy	= 0x1000,
> +};
> +
> +static const u8 qmp_dp_pre_emphasis_hbr2_rbr[4][4] = {
> +	{0x00, 0x0b, 0x12, 0xff},
> +	{0x00, 0x0a, 0x12, 0xff},
> +	{0x00, 0x0c, 0xff, 0xff},
> +	{0xff, 0xff, 0xff, 0xff}
> +};
> +
> +static const u8 qmp_dp_voltage_swing_hbr2_rbr[4][4] = {
> +	{0x07, 0x0f, 0x14, 0xff},
> +	{0x11, 0x1d, 0x1f, 0xff},
> +	{0x18, 0x1f, 0xff, 0xff},
> +	{0xff, 0xff, 0xff, 0xff}
> +};
> +
>  static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
>  	.offsets		= &qmp_usbc_offsets_v3_qcm2290,
>  	.type			= QMP_PHY_USBC_USB3_ONLY,
> @@ -500,6 +608,37 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
>  };
>  
> +static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
> +	.offsets		= &qmp_usbc_usb3dp_offsets_qcs615,
> +	.type			= QMP_PHY_USBC_USB3_DP,
> +
> +	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
> +	.tx_tbl			= qcm2290_usb3_tx_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_tx_tbl),
> +	.rx_tbl			= qcm2290_usb3_rx_tbl,
> +	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
> +	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
> +
> +	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
> +
> +	.dp_serdes_tbl		= qcs615_qmp_dp_serdes_tbl,
> +	.dp_serdes_tbl_num	= ARRAY_SIZE(qcs615_qmp_dp_serdes_tbl),
> +	.dp_tx_tbl		= qcs615_qmp_dp_tx_tbl,
> +	.dp_tx_tbl_num		= ARRAY_SIZE(qcs615_qmp_dp_tx_tbl),
> +
> +	.serdes_tbl_rbr		= qcs615_qmp_dp_serdes_tbl_rbr,
> +	.serdes_tbl_rbr_num	= ARRAY_SIZE(qcs615_qmp_dp_serdes_tbl_rbr),
> +	.serdes_tbl_hbr		= qcs615_qmp_dp_serdes_tbl_hbr,
> +	.serdes_tbl_hbr_num	= ARRAY_SIZE(qcs615_qmp_dp_serdes_tbl_hbr),
> +	.serdes_tbl_hbr2	= qcs615_qmp_dp_serdes_tbl_hbr2,
> +	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qcs615_qmp_dp_serdes_tbl_hbr2),
> +
> +	.swing_tbl		= &qmp_dp_voltage_swing_hbr2_rbr,
> +	.pre_emphasis_tbl	= &qmp_dp_pre_emphasis_hbr2_rbr,
> +};
> +
>  static int qmp_usbc_com_init(struct phy *phy)
>  {
>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

