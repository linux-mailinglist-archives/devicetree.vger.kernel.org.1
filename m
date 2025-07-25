Return-Path: <devicetree+bounces-199784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F15B120C1
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 17:23:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DAB201C841FE
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 15:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DD4422D795;
	Fri, 25 Jul 2025 15:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ATzB3/mc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D538677111
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 15:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753456985; cv=none; b=AotYPpZAts/M/e4Al4t1kjOsFGFziI/iYG16sD+hWyYnqqU85NYgs9NGNJYpXInLg4HgzRftqFi5HYzvSPaiqz6jZIQUUxXCwaBesT+OrT4iDUdZUYU36veSyDlLhSxIW4ZGp2ezkAaOIbGF0/7cTiTGm/sTLUIzxYxrJYklV1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753456985; c=relaxed/simple;
	bh=JjfQEpEcDJYlL8sZrWJ4hNkuZZvv9FQs9CUKa4SDujI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=naCwE1aJdxdW9F6CaXJlPdO/XGM5I/OVDqvg7Xn/8MVzw51dRY+lzucKR61eTVJ0twIdlF4M/Jkp1+NRvsI0eVUlq+q6RPy5I4slm+XJq43OAh5iB8XTtpbync7M0EGcJ6wHjapGD0DzVKBdE89hrrgpZOeEbPYRfH/PLZDq890=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ATzB3/mc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P88n0p008715
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 15:23:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eTjMO6ThCzwsibq1lFHZiZoZ
	coN7Cs449c4GQQHgyao=; b=ATzB3/mcmVV/zkia8P/vSXPv93q3nC5wTBFv+1r/
	5uWPW6GrxvL87y7HUByOa2Ttbk4hL7YBaSfy+DxR6b6lUfj0hX5m1kZvmc5AvxO0
	AMpk2yriLI+GTqVwMWwKvaLrL9SlYgnNF8fnqP85/fwYXqQM2c9y+m0xSD27g1mf
	qn4ZuW6BvJd25PDtjqTvkXpYWx1twdBna5bVHpx/j7zs+shz3AksF8RMdWsOFnFS
	YA5sstgBn4/XGQR4x7ZwuLRDg/bKcxtdrpcybdIgzboAZ3w17aki59yy5mP/qni2
	EalIrVPMU2SqA1ni43Fo7HJRtYrOo/20XSu3gg/hmb1jNw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48465916hc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 15:23:02 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fb5f71b363so45057916d6.2
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 08:23:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753456981; x=1754061781;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eTjMO6ThCzwsibq1lFHZiZoZcoN7Cs449c4GQQHgyao=;
        b=tU259Z5dHHIFNmSXBrP4Lcr4GWDm+UwhiL+uTEjmKISwqtoabUJ/5BM9Kmolxk2glW
         qj40A1iED1LkeMHBkXfybP55jkGq6QmNSu+WnFAWvatHWmW/oHo2csTxLcOJRjClhv1k
         hU5SMlMxcWwn7/opEW3kNV2xzWjUdd0jqP6gAtT23ENPDMkiWnd7DM0k+ysgS/TYdy3J
         a+Yp13jz76Qvh08+tmQzYxiWiL8WGo+POVoF1tUbyYu8uqFVVUclUP5BErQGuyaBSoYZ
         Jaq9Sd43U3icjAnPkKFXQ/PpK+esODj+aKwRD0AAFaajxjrp7rP2yjotKG3pmfW9+EUg
         nJsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUI3p+I+n9KdQjH8Tpp/Z0QRWy6nY6uMjY0xETN47pdFO7ktiYTL2puAIYsrus4YKHnPDzV003VHeOd@vger.kernel.org
X-Gm-Message-State: AOJu0YyFcd1fHjw8o1BVRKQqr3xMPCbtH8aNTp+tPIjsMGZmhZDd0J5n
	LP/4l/Yt2bTse8Gcvb1zdfkqKR2FbM+SWEIXyNYKwwyakoJuiJX7wHN2Ac71JzKYO5wU4V3n83e
	rDMRz3ZNpHWwSFRu2t95EvVtb4DzSdtAkugdPphaDdOnRNUYWEuJDIGoHD7Gb5QcL
X-Gm-Gg: ASbGncsEYN6h0nPVdQcAuui48X479AQcP4MiKRTd4OpTBoMZjIAmTfjVXbfxC9S0kgB
	VH+o2leGp+vVfkAT/oUd3y9wsQE1v2JcXlYLiBDyxpNKGrWki/hckUZu6ZvSi3Ti+vmXReez6z/
	cJ6Ro9byASMUCSz/Ju1uYAo7Yr6kuuX6QbDJcCOAWgMMZMKxwGh5JY/l9p6O9B5hK7D2/UmbNev
	FR0lgKJymGjz9aBkL7uHeQFB4ciETM0l/0Tix7Ht0LSCYN7dljtC01IRPxlhtdD+W3FxSZLRLyp
	kEvubkqXp8h3SqSArMeYnqwT+GEzUZKLIlvg8Y9R07yvoWxeyuHieQlwtXUNVdJITAkA6VP9g1p
	v2xi1Xp+p36cUx6PGBd9C22HqcPf7c+H+Sb5rVjiIud6tRMNAD6O1
X-Received: by 2002:a05:6214:1cc9:b0:705:538:65ab with SMTP id 6a1803df08f44-707205ea86cmr34752006d6.39.1753456980687;
        Fri, 25 Jul 2025 08:23:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHK5LDQ3JiR87dSBEdbMLaQa7N1rf2mWwVfPEnOCbZ2F/UBqPcJrWvG8vZus18ZIxSK6RRVlQ==
X-Received: by 2002:a05:6214:1cc9:b0:705:538:65ab with SMTP id 6a1803df08f44-707205ea86cmr34751036d6.39.1753456979758;
        Fri, 25 Jul 2025 08:22:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b6336355dsm8672e87.86.2025.07.25.08.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 08:22:57 -0700 (PDT)
Date: Fri, 25 Jul 2025 18:22:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, mripard@kernel.org, naoki@radxa.com,
        stephen@radxa.com, cristian.ciocaltea@collabora.com,
        neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
        yubing.zhang@rock-chips.com, krzk+dt@kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, robh@kernel.org,
        sebastian.reichel@collabora.com, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v5 02/10] drm/bridge: synopsys: Add DW DPTX Controller
 support library
Message-ID: <svn2p46qguxrpn6fhqnjffqpgv7keabwgld53uw6ckkn4piu47@gedy4t22cqfx>
References: <20250716100440.816351-1-andyshrk@163.com>
 <20250716100440.816351-3-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716100440.816351-3-andyshrk@163.com>
X-Proofpoint-ORIG-GUID: _egIa-oQ8bft1n1IB0qR0vW42HlYXxHy
X-Proofpoint-GUID: _egIa-oQ8bft1n1IB0qR0vW42HlYXxHy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDEzMiBTYWx0ZWRfXxRdmY48EX9RG
 eIB9RGbvk1rU2V2nzRLBHwBP/0LCYPtEMlFF8OTLUywhM2YXG5BU6biknX2//19rfLfDOfJ9h2g
 cufco1lV3B+fF6LHigrPCILJg3bvgqtCp94i+8zS2jk+dMFTuq+vJwHtNTCkQ+BZ5nUeEHB3dnG
 bllLbxtlqEyzRX8lAEM6pWlQGwxHipuc9OtV+3e1o160qshpZvOq89RdfJgz7BfxTLzw9cIUFUO
 HL5rQfsxyquRjCQqgvKJ+FvPGxqLoHq8pXW5t+aJzBt3fUFkAH24rMRk5DtTAN8adbzh9/TtYiG
 06Y99Hmovgj7b4kVfGYysgsgsVx6abrLcc5/GFlM3virKBMnA1/tZAAI0L2hgdXsbvzUOG6MScq
 HtoR2nJ3LH2z0w77BfKER1XXxAjRfcHmTpiuE4nJ7oVR6YHutig63dUm/WmMI6mLPyfCbpRh
X-Authority-Analysis: v=2.4 cv=Vo8jA/2n c=1 sm=1 tr=0 ts=6883a156 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=w3-XvOWwJNVOjCSRI-QA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_04,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=999 adultscore=0 impostorscore=0 suspectscore=0
 phishscore=0 spamscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250132

On Wed, Jul 16, 2025 at 06:04:29PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The DW DP TX Controller is compliant with the DisplayPort Specification
> Version 1.4 with the following features:
> 
> * DisplayPort 1.4a
> * Main Link: 1/2/4 lanes
> * Main Link Support 1.62Gbps, 2.7Gbps, 5.4Gbps and 8.1Gbps
> * AUX channel 1Mbps
> * Single Stream Transport(SST)
> * Multistream Transport (MST)
> * Type-C support (alternate mode)
> * HDCP 2.2, HDCP 1.3
> * Supports up to 8/10 bits per color component
> * Supports RBG, YCbCr4:4:4, YCbCr4:2:2, YCbCr4:2:0
> * Pixel clock up to 594MHz
> * I2S, SPDIF audio interface
> 
> Add library with common helpers to make it can be shared with
> other SoC.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v5:
> - Use drm_dp_read_sink_count_cap instead of the private implementation.
> 
> Changes in v4:
> - Drop unnecessary header files
> - Switch to devm_drm_bridge_alloc
> 
> Changes in v3:
> - Rebase on drm-misc-next
> - Switch to common helpers to power up/down dp link
> - Only pass parameters to phy that should be set
> 
> Changes in v2:
> - Fix compile error when build as module
> - Add phy init
> - Only use one dw_dp_link_train_set
> - inline dw_dp_phy_update_vs_emph
> - Use dp_sdp
> - Check return value of drm_modeset_lock
> - Merge code in atomic_pre_enable/mode_fixup to atomic_check
> - Return NULL if can't find a supported output format
> - Fix max_link_rate from plat_data
> 
>  drivers/gpu/drm/bridge/synopsys/Kconfig  |    7 +
>  drivers/gpu/drm/bridge/synopsys/Makefile |    1 +
>  drivers/gpu/drm/bridge/synopsys/dw-dp.c  | 2044 ++++++++++++++++++++++
>  include/drm/bridge/dw_dp.h               |   20 +
>  4 files changed, 2072 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/synopsys/dw-dp.c
>  create mode 100644 include/drm/bridge/dw_dp.h
> +
> +static int dw_dp_link_parse(struct dw_dp *dp, struct drm_connector *connector)
> +{
> +	struct dw_dp_link *link = &dp->link;
> +	u8 dpcd;
> +	int ret;
> +
> +	dw_dp_link_reset(link);
> +
> +	ret = drm_dp_read_dpcd_caps(&dp->aux, link->dpcd);
> +	if (ret < 0)
> +		return ret;
> +
> +	drm_dp_read_desc(&dp->aux, &link->desc, drm_dp_is_branch(link->dpcd));
> +
> +	if (drm_dp_read_sink_count_cap(connector, link->dpcd, &link->desc)) {
> +		ret = drm_dp_read_sink_count(&dp->aux);
> +		if (ret < 0)
> +			return ret;
> +
> +		link->sink_count = ret;
> +
> +		/* Dongle connected, but no display */
> +		if (!link->sink_count)
> +			return -ENODEV;
> +	}
> +
> +	ret = drm_dp_dpcd_readb(&dp->aux, DP_DPRX_FEATURE_ENUMERATION_LIST, &dpcd);
> +	if (ret < 0)
> +		return ret;
> +
> +	link->vsc_sdp_supported = !!(dpcd & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED);


drm_dp_vsc_sdp_supported()

> +
> +	link->revision = link->dpcd[DP_DPCD_REV];
> +	link->rate = min_t(u32, min(dp->plat_data.max_link_rate,
> +				    dp->phy->attrs.max_link_rate * 100),
> +			   drm_dp_max_link_rate(link->dpcd));
> +	link->lanes = min_t(u8, phy_get_bus_width(dp->phy),
> +			    drm_dp_max_lane_count(link->dpcd));
> +
> +	link->caps.enhanced_framing = drm_dp_enhanced_frame_cap(link->dpcd);
> +	link->caps.tps3_supported = drm_dp_tps3_supported(link->dpcd);
> +	link->caps.tps4_supported = drm_dp_tps4_supported(link->dpcd);
> +	link->caps.fast_training = drm_dp_fast_training_cap(link->dpcd);
> +	link->caps.channel_coding = drm_dp_channel_coding_supported(link->dpcd);
> +	link->caps.ssc = !!(link->dpcd[DP_MAX_DOWNSPREAD] & DP_MAX_DOWNSPREAD_0_5);
> +
> +	return 0;
> +}
> +

-- 
With best wishes
Dmitry

