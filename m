Return-Path: <devicetree+bounces-200273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B24F1B13F0B
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 17:46:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7D7A164782
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 15:43:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26857270EA8;
	Mon, 28 Jul 2025 15:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F6gBhE+m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2DE824BD03
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753717435; cv=none; b=nb5kPyWE+Bmv1iJg1clRR2bQy0tejYFPc+A1iw5vEAFoZL6GyZ/BDJvuGAUqXnRSS6Php9iUozPJtc9pUoiQG7bNpE5T0LPQocG4IrQgrqHwaeg4CHFZkVdd9iudKFPhOdgRf+JTCKNyqDmrAlg82q8wjzJ6h7tLtl5eFhbpzxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753717435; c=relaxed/simple;
	bh=p6jswuQ+V541U00bNC2MfY/rFbL8CPYowUsgW1LTeZU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JR46ymSkYRtB/6WyxZ9gMpdLZG5fJhdUpEiVEmUteX5+BBr7E9+ibvrjMMV0+9MuMLbbGaf003FjPAqFmjBizOPlG8RmjLKTOdpyfzomFIfl5X6yjCeT+RifnJh0Hh6Ea32jEWe/2ug96kRfkQGeVA/sgO5ZGok2GDqOzqQniys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F6gBhE+m; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SAlMaQ023465
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 15:43:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vravO/6khNRvhlPxzNQ/FnndOxyVsrk4qImwPP/3MTs=; b=F6gBhE+m6cQWFMBS
	FNPdejfcQVQlLWaI3KZQmslLdIpzC/Gp4sxo3nLGPPnL+RzpeMbm8WFmbyVaumOy
	oEx54W7hUEzCC9aH5hgyko40SF+WlBJieNNXiQ5zTT+HaDv7f6zLdSLqRDo8rJ16
	h+YF1v6YCp51kVWV9IcaQQFIBMxNOtIAoKxLkpzpF28T1yB3KdGq+LnrPGxOzx/Z
	V5nHCmMkZRXJRtpRlaIxdvl/1vuVKtOp937tqTOd/Ybocf78AxMJ1voGCnqu7BSu
	cWg2cFAO+4RfiJVCeL/ljOaJ2UZwiU16cXwUGg5fKWBT67b3Z9KwLJOlwu8CrYNL
	J/SdNw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484r6qn11r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 15:43:52 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7074cb63bccso13577456d6.1
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 08:43:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753717431; x=1754322231;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vravO/6khNRvhlPxzNQ/FnndOxyVsrk4qImwPP/3MTs=;
        b=eG85TTP2fe/HlEXfVbqI1yVUTjuKRJz5muymGbYHBdu4z8ynsOUmhptbav6HmD7w4i
         5ku/nQe3MV3Z7kfL+6/Fti4WeWMohAe7Z9axvbXSRhgTmTNnsR1MeiGM0/Ir6kncw5VS
         fUaOXKfjWOuUUiZjUqgSrWAh/7wyVnx5W86UsVR+8y0dsq0GHC6Ljg7Z/EaIIZuZVcy8
         hVl7ZLlHpNxBLkmCVF/Htld3vx9Srz0nBGgWchkitPts/4tUsMyox9wUjYRMUa/WHxnH
         Ue/gsGZBtkMmhRDPFuoK/f6YyMmApW9MAfNtOAXiPhrZkcxrXTRb4ZQj2l2MLAdtjD8V
         5jbA==
X-Forwarded-Encrypted: i=1; AJvYcCXvuU/+0HIAd4HXJ/OF02e3GL042EPArYaoaURbIutScEZN6ichqsP5IuGmoyWDAGj59VGcj5VRxgnF@vger.kernel.org
X-Gm-Message-State: AOJu0YzSnjAHAH4+TpjiY0IBM2dsWY8VFLCSRSYsf4GLErzjNy+EactL
	UiLWdXjBOwChplo1ZY8/l87+ROtS35+sSmCeUYRPmSnmt4hFWOrvYpLUImpu6YfGxjuw98Mjoit
	Cuhf6ufg0Vsxx4ISNGII/AuhrAkCLR2jOmb4Z6/qdgVKIATE4U9fMjYXvZxbjBgRe
X-Gm-Gg: ASbGncsKLCMwMr9lnHWrMEI1x4+b+Nx9Mi/IZSL5OH7JssO3Oud3Act+bCZA9J2lF/c
	SokrTkK0MNxYjUNQchsSx6d58npx1MMZvhcY3h2E+N0HeHi3xMwPnrs+H6mOS+WqBkW7ijDeaqE
	nZhQ6nBP4jeAai3qsrSsDAvR8z5ty/+bw8opMwaQjq4phewnW7DLrUQtsnVgcbiDu/uj3BgP9Ca
	7G/nnea11PY29JI7dIWwBcd3/I62q+ocXuA2gQUh8A3b3vMbNMRKuGEIhwq3ysbKalo2ME+R4gW
	tSwQbUZkY96Vm1g2sLfuQ/vHoC391oAgYadQf+zJrhq7VG4CXkD2CbBv0MJMv/Cp/YH9fb8oHoP
	voxlUGmQWAQfN3ClsQuAtOPKk2xMT9MyC0kqRw5QKW50HgImOMCH8
X-Received: by 2002:a05:6214:2526:b0:707:49d9:2580 with SMTP id 6a1803df08f44-70749d928acmr45930346d6.32.1753717430542;
        Mon, 28 Jul 2025 08:43:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9IABiVxzBbfc7hwa3mCRlg2TuSRU6F+DG1TSpnai1vC7ywlpehy/nsTnNAXNFPNLKo10uXQ==
X-Received: by 2002:a05:6214:2526:b0:707:49d9:2580 with SMTP id 6a1803df08f44-70749d928acmr45929666d6.32.1753717429713;
        Mon, 28 Jul 2025 08:43:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b6316db8bsm1325177e87.5.2025.07.28.08.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 08:43:48 -0700 (PDT)
Date: Mon, 28 Jul 2025 18:43:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Otto =?utf-8?Q?Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Kevin Tang <kevin.tang@unisoc.com>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 05/12] drm: sprd: register a DSI bridge and move init
 code to pre_enable
Message-ID: <h555ivhoyfykmw44xch6y3bwlqtewgqks33j4rqw4zkcbdkxih@y4pori4lff6h>
References: <20250719-ums9230-drm-v1-0-e4344a05eb3d@abscue.de>
 <20250719-ums9230-drm-v1-5-e4344a05eb3d@abscue.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250719-ums9230-drm-v1-5-e4344a05eb3d@abscue.de>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDEwOSBTYWx0ZWRfX5iB//1dbT09c
 KF8yYZNSjtznRsRaRv62N02IMytNIpE7BI7OaeuR63cn4Kkpv/ao87bm6s0uKPVZbVryS5a6fSq
 /MdYnWv3/BhkuletbFzDNB9y/MKHDaDIK1roBR/sOGUzmg4mMW3e8xxiPbTdYMXpykoxv4Xk+sq
 6tqB2Oxv7s5bbaeisuqLdmOLR8dh07WVnAE1ulWg3M1xgr6xeRkeTvJ6kQJYzAOqHBTmBHRSMfG
 OUs/OTXggzvASkn6S1x3mDTAofwIqk3JIdOvhariwl6fLTu42LkmmcMXcsucmG3FKSDdvzgWUPa
 FNyeLks5Jf5XBSx/K1b2XascFaCDln/8Rr2m9LbgM0WRpNZ9zFnlE5Im8y959NuhgjuCHGlXRGZ
 FXy7HGbLoJT/vedHqOP8y7v4iKklbNAA96JIaIytP95x7WbMjaNwHo6xkmm40WaZ/149ENSA
X-Proofpoint-ORIG-GUID: bvkm8VatQ9Z3IUoa8W42om5qrBaU05qq
X-Authority-Analysis: v=2.4 cv=ea89f6EH c=1 sm=1 tr=0 ts=68879ab8 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=Wb1JkmetP80A:10 a=fR7qSs6sQ28PYmOJ40wA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: bvkm8VatQ9Z3IUoa8W42om5qrBaU05qq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 spamscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507280109

On Sat, Jul 19, 2025 at 02:09:41PM +0200, Otto Pflüger wrote:
> If a panel needs to send DSI commands during initialization, it sets the
> prepare_prev_first flag, which allows the DSI host to initialize itself
> before the panel's prepare function is called. To support this, the DSI
> host must register a bridge and perform the necessary initialization
> steps in its pre_enable function.
> 
> Implement this for the Unisoc DSI driver by moving the initialization
> code from the encoder callbacks to a bridge and simplify the remaining
> encoder-related code which no longer needs any callbacks.
> 
> Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
> ---
>  drivers/gpu/drm/sprd/Kconfig    |   2 +
>  drivers/gpu/drm/sprd/sprd_dsi.c | 143 +++++++++++++++++++++++++---------------
>  drivers/gpu/drm/sprd/sprd_dsi.h |   4 ++
>  3 files changed, 97 insertions(+), 52 deletions(-)
> 
> diff --git a/drivers/gpu/drm/sprd/Kconfig b/drivers/gpu/drm/sprd/Kconfig
> index e22b780fe82248296a7153d02269faf8cd63294f..1afcdbf6f0ee3304f2297835241c9bb10d422154 100644
> --- a/drivers/gpu/drm/sprd/Kconfig
> +++ b/drivers/gpu/drm/sprd/Kconfig
> @@ -2,6 +2,8 @@ config DRM_SPRD
>  	tristate "DRM Support for Unisoc SoCs Platform"
>  	depends on ARCH_SPRD || COMPILE_TEST
>  	depends on DRM && OF
> +	select DRM_BRIDGE_CONNECTOR
> +	select DRM_DISPLAY_HELPER
>  	select DRM_GEM_DMA_HELPER
>  	select DRM_KMS_HELPER
>  	select DRM_MIPI_DSI
> diff --git a/drivers/gpu/drm/sprd/sprd_dsi.c b/drivers/gpu/drm/sprd/sprd_dsi.c
> index 23b0e1dc547a5023ee6ad7d5e1c49e2cec986bf0..43fff12d73f12619da57606a3c4785924e2c1507 100644
> --- a/drivers/gpu/drm/sprd/sprd_dsi.c
> +++ b/drivers/gpu/drm/sprd/sprd_dsi.c
> @@ -11,8 +11,10 @@
>  
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_bridge.h>
> +#include <drm/drm_bridge_connector.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/drm_simple_kms_helper.h>
>  
>  #include "sprd_drm.h"
>  #include "sprd_dpu.h"
> @@ -778,19 +780,53 @@ static void sprd_dphy_fini(struct dsi_context *ctx)
>  	dsi_reg_up(ctx, PHY_INTERFACE_CTRL, RF_PHY_RESET_N, RF_PHY_RESET_N);
>  }
>  
> -static void sprd_dsi_encoder_mode_set(struct drm_encoder *encoder,
> -				      struct drm_display_mode *mode,
> -				 struct drm_display_mode *adj_mode)
> +static int sprd_dsi_encoder_init(struct sprd_dsi *dsi,
> +				 struct device *dev)
> +{
> +	struct drm_encoder *encoder = &dsi->encoder;
> +	u32 crtc_mask;
> +	int ret;
> +
> +	crtc_mask = drm_of_find_possible_crtcs(dsi->drm, dev->of_node);
> +	if (!crtc_mask) {
> +		drm_err(dsi->drm, "failed to find crtc mask\n");
> +		return -EINVAL;
> +	}
> +
> +	drm_dbg(dsi->drm, "find possible crtcs: 0x%08x\n", crtc_mask);
> +
> +	encoder->possible_crtcs = crtc_mask;
> +	ret = drm_simple_encoder_init(dsi->drm, encoder, DRM_MODE_ENCODER_DSI);

The drm_simple_* components are being deprecated. Please open-code
corresponding functionality.

> +	if (ret) {
> +		drm_err(dsi->drm, "failed to init dsi encoder\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +

-- 
With best wishes
Dmitry

