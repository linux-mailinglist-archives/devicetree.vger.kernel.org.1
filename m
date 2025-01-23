Return-Path: <devicetree+bounces-140562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A39A1A421
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 13:25:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E39C18859F9
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 12:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31B2720E6F2;
	Thu, 23 Jan 2025 12:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="fT0z0cBL"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB7020E035;
	Thu, 23 Jan 2025 12:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737635155; cv=none; b=GWEcPPRy0jEA/U0g055VbhM4veOpZKZSU6lt+Y9N6mJSOhCT49KPK7G9eKBuKQMmyT0EEjz5zg9/aDL+nUAcmLgVzWsitR2JAFxJbTxAa6LpnJwgzBZHYYaDbD/LQquvGc6TxReGFKBlXA19YX8TqfYepmivPCjmGw9L0iRaRD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737635155; c=relaxed/simple;
	bh=Y9y2JiSrLOPvXTWHcZparjJwT3r8iLZ2GoulTbz9w5s=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Hw6uJ1kIzi+3TaPwAl2dC5yGNas2IzFcnahWFbEJKV2RngULv6pi4qVtrCJny6b+7iMxXRr5f8Gz1tSqcoYwu/gOGIl239S4uH935LwGYudF2phqM72cqnSv/jWLcQ0myJeKZSFyqKYhjiYG2Dh5M3W4aH77Yw4UwP9d9WsGLeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=fT0z0cBL; arc=none smtp.client-ip=192.198.163.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1737635153; x=1769171153;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=Y9y2JiSrLOPvXTWHcZparjJwT3r8iLZ2GoulTbz9w5s=;
  b=fT0z0cBLgc3YJECpU0RWf+GQ4FvIoEQDS7c/Pkom5/mWNc7bWJmpFITp
   7k19EB24TcHB3ZMOLUixk3RKfpSkT4i+i+ds7d3CGG+8Cdb6ZmQ59TizR
   9dwjn0exjYCdy8y9Faq4dJla7Jcmq8IjiCSd63tdo9ulg8oR6MEjRlwax
   BeDhHi9ooIyDlfM2Ov2s/1R5T2QWPQch9nI0V18ZK1jXg3WbhicBGQqRn
   do/DtaVDExfhmw4XeyH2nyfRQAdwI6FhLMQ92BFjst0NoWCXV83m4uLWL
   Px2PSycHEpQCjPSs6bIiJhK51fU/uf3T19dounh2yssnGEW7EG+k676C1
   w==;
X-CSE-ConnectionGUID: p4ZNdg5+RYGF6PDHPi8KRw==
X-CSE-MsgGUID: kwB1ei+GR3eTuiSemJZcpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="37336131"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; 
   d="scan'208";a="37336131"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jan 2025 04:25:41 -0800
X-CSE-ConnectionGUID: LAR+3lOGQqq3l5CRJiaT5Q==
X-CSE-MsgGUID: tzHN9lx5QzuLvdBtxS/HRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208";a="111462249"
Received: from unknown (HELO localhost) ([10.237.66.160])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jan 2025 04:25:33 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Damon Ding <damon.ding@rock-chips.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 rfoss@kernel.org, vkoul@kernel.org, sebastian.reichel@collabora.com,
 cristian.ciocaltea@collabora.com, l.stach@pengutronix.de,
 dmitry.baryshkov@linaro.org, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Damon Ding
 <damon.ding@rock-chips.com>
Subject: Re: [PATCH v6 01/14] drm/rockchip: analogix_dp: Replace DRM_...()
 functions with drm_...()
In-Reply-To: <20250123100747.1841357-2-damon.ding@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-2-damon.ding@rock-chips.com>
Date: Thu, 23 Jan 2025 14:25:29 +0200
Message-ID: <87ikq5n2di.fsf@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Thu, 23 Jan 2025, Damon Ding <damon.ding@rock-chips.com> wrote:
> According to the comments in include/drm/drm_print.h, the DRM_...()
> functions are deprecated in favor of drm_...() or dev_...() functions.
>
> Use drm_err()/drm_dbg_core()/drm_dbg_kms() instead of
> DRM_DEV_ERROR()/DRM_ERROR()/DRM_DEV_DEBUG()/DRM_DEBUG_KMS().
>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>
> ---
>
> Changes in v6:
> - Use drm_...() uniformly rather than mixing drm_...() and dev_..()
> - Pass 'dp' in drm_...() rather than 'dp->drm_dev'
> ---
>  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 29 ++++++++++---------
>  1 file changed, 15 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index 0844175c37c5..dd33d7540e4b 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -100,13 +100,13 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
>  
>  	ret = clk_prepare_enable(dp->pclk);
>  	if (ret < 0) {
> -		DRM_DEV_ERROR(dp->dev, "failed to enable pclk %d\n", ret);
> +		drm_err(dp, "failed to enable pclk %d\n", ret);

Please don't do this.

You're supposed to pass struct drm_device to drm_err() and friends. Not
some random struct pointer that just happens to have a ->dev member.

The drm_* macros may change at any time to actually expect the correct
type.

BR,
Jani.


>  		return ret;
>  	}
>  
>  	ret = rockchip_dp_pre_init(dp);
>  	if (ret < 0) {
> -		DRM_DEV_ERROR(dp->dev, "failed to dp pre init %d\n", ret);
> +		drm_err(dp, "failed to dp pre init %d\n", ret);
>  		clk_disable_unprepare(dp->pclk);
>  		return ret;
>  	}
> @@ -126,12 +126,13 @@ static int rockchip_dp_powerdown(struct analogix_dp_plat_data *plat_data)
>  static int rockchip_dp_get_modes(struct analogix_dp_plat_data *plat_data,
>  				 struct drm_connector *connector)
>  {
> +	struct rockchip_dp_device *dp = pdata_encoder_to_dp(plat_data);
>  	struct drm_display_info *di = &connector->display_info;
>  	/* VOP couldn't output YUV video format for eDP rightly */
>  	u32 mask = DRM_COLOR_FORMAT_YCBCR444 | DRM_COLOR_FORMAT_YCBCR422;
>  
>  	if ((di->color_formats & mask)) {
> -		DRM_DEBUG_KMS("Swapping display color format from YUV to RGB\n");
> +		drm_dbg_kms(dp, "Swapping display color format from YUV to RGB\n");
>  		di->color_formats &= ~mask;
>  		di->color_formats |= DRM_COLOR_FORMAT_RGB444;
>  		di->bpc = 8;
> @@ -201,17 +202,17 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
>  	else
>  		val = dp->data->lcdsel_big;
>  
> -	DRM_DEV_DEBUG(dp->dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
> +	drm_dbg_core(dp, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
>  
>  	ret = clk_prepare_enable(dp->grfclk);
>  	if (ret < 0) {
> -		DRM_DEV_ERROR(dp->dev, "failed to enable grfclk %d\n", ret);
> +		drm_err(dp, "failed to enable grfclk %d\n", ret);
>  		return;
>  	}
>  
>  	ret = regmap_write(dp->grf, dp->data->lcdsel_grf_reg, val);
>  	if (ret != 0)
> -		DRM_DEV_ERROR(dp->dev, "Could not write to GRF: %d\n", ret);
> +		drm_err(dp, "Could not write to GRF: %d\n", ret);
>  
>  	clk_disable_unprepare(dp->grfclk);
>  }
> @@ -236,7 +237,7 @@ static void rockchip_dp_drm_encoder_disable(struct drm_encoder *encoder,
>  
>  	ret = rockchip_drm_wait_vact_end(crtc, PSR_WAIT_LINE_FLAG_TIMEOUT_MS);
>  	if (ret)
> -		DRM_DEV_ERROR(dp->dev, "line flag irq timed out\n");
> +		drm_err(dp, "line flag irq timed out\n");
>  }
>  
>  static int
> @@ -277,7 +278,7 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
>  
>  	dp->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
>  	if (IS_ERR(dp->grf)) {
> -		DRM_DEV_ERROR(dev, "failed to get rockchip,grf property\n");
> +		drm_err(dp, "failed to get rockchip,grf property\n");
>  		return PTR_ERR(dp->grf);
>  	}
>  
> @@ -287,19 +288,19 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
>  	} else if (PTR_ERR(dp->grfclk) == -EPROBE_DEFER) {
>  		return -EPROBE_DEFER;
>  	} else if (IS_ERR(dp->grfclk)) {
> -		DRM_DEV_ERROR(dev, "failed to get grf clock\n");
> +		drm_err(dp, "failed to get grf clock\n");
>  		return PTR_ERR(dp->grfclk);
>  	}
>  
>  	dp->pclk = devm_clk_get(dev, "pclk");
>  	if (IS_ERR(dp->pclk)) {
> -		DRM_DEV_ERROR(dev, "failed to get pclk property\n");
> +		drm_err(dp, "failed to get pclk property\n");
>  		return PTR_ERR(dp->pclk);
>  	}
>  
>  	dp->rst = devm_reset_control_get(dev, "dp");
>  	if (IS_ERR(dp->rst)) {
> -		DRM_DEV_ERROR(dev, "failed to get dp reset control\n");
> +		drm_err(dp, "failed to get dp reset control\n");
>  		return PTR_ERR(dp->rst);
>  	}
>  
> @@ -315,12 +316,12 @@ static int rockchip_dp_drm_create_encoder(struct rockchip_dp_device *dp)
>  
>  	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev,
>  							     dev->of_node);
> -	DRM_DEBUG_KMS("possible_crtcs = 0x%x\n", encoder->possible_crtcs);
> +	drm_dbg_kms(dp, "possible_crtcs = 0x%x\n", encoder->possible_crtcs);
>  
>  	ret = drm_simple_encoder_init(drm_dev, encoder,
>  				      DRM_MODE_ENCODER_TMDS);
>  	if (ret) {
> -		DRM_ERROR("failed to initialize encoder with drm\n");
> +		drm_err(dp, "failed to initialize encoder with drm\n");
>  		return ret;
>  	}
>  
> @@ -340,7 +341,7 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
>  
>  	ret = rockchip_dp_drm_create_encoder(dp);
>  	if (ret) {
> -		DRM_ERROR("failed to create drm encoder\n");
> +		drm_err(dp, "failed to create drm encoder\n");
>  		return ret;
>  	}

-- 
Jani Nikula, Intel

