Return-Path: <devicetree+bounces-140566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF37DA1A430
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 13:28:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 369EB7A0438
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 12:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AE7320E70B;
	Thu, 23 Jan 2025 12:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="AEVEWwfp"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA6020E6F2;
	Thu, 23 Jan 2025 12:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737635281; cv=none; b=Zta/MX6ePW1+OxLHv6kH/cGi9ZG244gLU6Io8baX6XEqMg0R4z0fbPgDHZiAjy97YL28lTnYpxKHG/YYkzjLluqyZVhsNZ0SrEer/TyZGzNaAmgxfNOt/lfrR5uZxb/BhKfH3ndVg8bnzKeSw52kL66t4xdM+CSufAabD+9dsd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737635281; c=relaxed/simple;
	bh=87QOxN9grVOib/hH+LM5POuv8keCENLQWQeF7hQcDdE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ryqcGYy5dLfZTMsb8L5zlyaqpGtNyroJ1m7SncTDAS//k8OzRM6/0gf9+u79tFUgGlce8PTZFo/TybOa2GGzR7AxMZycQBjAWm1JsO1o7moOvH8z2REAGSt66Q62JD7yJW8ZzKlNSya77wrZybPobzpoQe6pbFne3D4FE7YUWLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=AEVEWwfp; arc=none smtp.client-ip=198.175.65.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1737635279; x=1769171279;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=87QOxN9grVOib/hH+LM5POuv8keCENLQWQeF7hQcDdE=;
  b=AEVEWwfp/ovlUfR+pTfrJGbE2afVGtJv2OuXDkex8i1PKaOdmVgbsW5K
   wIoy2Gzqk7b4zmWp6hA/iBu8vZ0pkai2NgMdiaPXsal31XfizZu/d8YjM
   bbb9yrbrS2+samRg4thJBS5zCF09pb4jqhMaG6PqYKYVOgM7uDCSXKXNP
   V/Te/16N7uHgNaKOaHIwlJTVJ5RUi0O08BQ97rbtH4EB+a0+Dgbma1cr5
   GMXEz3xJUFWm7Ug7SgYQWWcrzBzdrbPMHhNsNnIEFCNTwttYMV8YEAVOX
   kF5uSU2GESjM3molqiXE3Zn2uxW/953AIBQfqqh4fUWSR9uKp/7FHX+ln
   g==;
X-CSE-ConnectionGUID: /WK1rJAeSGKKC1EDhc6o+A==
X-CSE-MsgGUID: J9ZpZDP0ToGZ6XXzYMWpRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="38010312"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; 
   d="scan'208";a="38010312"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jan 2025 04:27:58 -0800
X-CSE-ConnectionGUID: 1EnuViEfSL+CW2HULfQNsw==
X-CSE-MsgGUID: NwuHjsrQSyazuHsNRTEbDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; 
   d="scan'208";a="112440338"
Received: from unknown (HELO localhost) ([10.237.66.160])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jan 2025 04:27:53 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Damon Ding <damon.ding@rock-chips.com>, Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org,
 sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com,
 l.stach@pengutronix.de, dmitry.baryshkov@linaro.org,
 andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com,
 kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 05/20] drm/rockchip: analogix_dp: Replace DRM_...()
 functions with drm_...() or dev_...()
In-Reply-To: <a8bee693-cbde-469d-abcf-363311cfd904@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-6-damon.ding@rock-chips.com>
 <40b09942.533e.19449c023a1.Coremail.andyshrk@163.com>
 <a8bee693-cbde-469d-abcf-363311cfd904@rock-chips.com>
Date: Thu, 23 Jan 2025 14:27:50 +0200
Message-ID: <87ed0tn29l.fsf@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Wed, 22 Jan 2025, Damon Ding <damon.ding@rock-chips.com> wrote:
> Hi Andy,
>
> On 2025/1/9 14:28, Andy Yan wrote:
>> 
>> Hi Damon,
>> 
>> At 2025-01-09 11:27:10, "Damon Ding" <damon.ding@rock-chips.com> wrote:
>>> According to the comments in include/drm/drm_print.h, the DRM_...()
>>> functions are deprecated in favor of drm_...() or dev_...() functions.
>>>
>>> Use drm_err()/drm_dbg_core()/drm_dbg_kms() instead of
>>> DRM_DEV_ERROR()/DRM_ERROR()/DRM_DEV_DEBUG()/DRM_DEBUG_KMS() after
>>> rockchip_dp_bind() is called, and replace DRM_DEV_ERROR() with dev_err()
>>> before calling it.
>>>
>>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>> ---
>>> .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 29 ++++++++++---------
>>> 1 file changed, 15 insertions(+), 14 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>>> index 546d13f19f9b..8114c3238609 100644
>>> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>>> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>>> @@ -100,13 +100,13 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
>>>
>>> 	ret = clk_prepare_enable(dp->pclk);
>>> 	if (ret < 0) {
>>> -		DRM_DEV_ERROR(dp->dev, "failed to enable pclk %d\n", ret);
>>> +		drm_err(dp->drm_dev, "failed to enable pclk %d\n", ret);
>> 
>>                 You just need to pass dp here:
>>                  drm_err(dp, "failed to enable pclk %d\n", ret);
>> 
>
> I see. It is really better to pass dp instead of dp->drm_dev. I will 
> update all relevant logs in the next version.

No, this was bad review feedback. You're absolutely expected to pass
struct drm_device to drm_err() and friends.

BR,
Jani.


>
>>> 		return ret;
>>> 	}
>>>
>>> 	ret = rockchip_dp_pre_init(dp);
>>> 	if (ret < 0) {
>>> -		DRM_DEV_ERROR(dp->dev, "failed to dp pre init %d\n", ret);
>>> +		drm_err(dp->drm_dev, "failed to dp pre init %d\n", ret);
>>> 		clk_disable_unprepare(dp->pclk);
>>> 		return ret;
>>> 	}
>>> @@ -126,12 +126,13 @@ static int rockchip_dp_powerdown(struct analogix_dp_plat_data *plat_data)
>>> static int rockchip_dp_get_modes(struct analogix_dp_plat_data *plat_data,
>>> 				 struct drm_connector *connector)
>>> {
>>> +	struct rockchip_dp_device *dp = pdata_encoder_to_dp(plat_data);
>>> 	struct drm_display_info *di = &connector->display_info;
>>> 	/* VOP couldn't output YUV video format for eDP rightly */
>>> 	u32 mask = DRM_COLOR_FORMAT_YCBCR444 | DRM_COLOR_FORMAT_YCBCR422;
>>>
>>> 	if ((di->color_formats & mask)) {
>>> -		DRM_DEBUG_KMS("Swapping display color format from YUV to RGB\n");
>>> +		drm_dbg_kms(dp->drm_dev, "Swapping display color format from YUV to RGB\n");
>>> 		di->color_formats &= ~mask;
>>> 		di->color_formats |= DRM_COLOR_FORMAT_RGB444;
>>> 		di->bpc = 8;
>>> @@ -201,17 +202,17 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
>>> 	else
>>> 		val = dp->data->lcdsel_big;
>>>
>>> -	DRM_DEV_DEBUG(dp->dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
>>> +	drm_dbg_core(dp->drm_dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
>>>
>>> 	ret = clk_prepare_enable(dp->grfclk);
>>> 	if (ret < 0) {
>>> -		DRM_DEV_ERROR(dp->dev, "failed to enable grfclk %d\n", ret);
>>> +		drm_err(dp->drm_dev, "failed to enable grfclk %d\n", ret);
>>> 		return;
>>> 	}
>>>
>>> 	ret = regmap_write(dp->grf, dp->data->lcdsel_grf_reg, val);
>>> 	if (ret != 0)
>>> -		DRM_DEV_ERROR(dp->dev, "Could not write to GRF: %d\n", ret);
>>> +		drm_err(dp->drm_dev, "Could not write to GRF: %d\n", ret);
>>>
>>> 	clk_disable_unprepare(dp->grfclk);
>>> }
>>> @@ -236,7 +237,7 @@ static void rockchip_dp_drm_encoder_disable(struct drm_encoder *encoder,
>>>
>>> 	ret = rockchip_drm_wait_vact_end(crtc, PSR_WAIT_LINE_FLAG_TIMEOUT_MS);
>>> 	if (ret)
>>> -		DRM_DEV_ERROR(dp->dev, "line flag irq timed out\n");
>>> +		drm_err(dp->drm_dev, "line flag irq timed out\n");
>>> }
>>>
>>> static int
>>> @@ -277,7 +278,7 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
>>>
>>> 	dp->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
>>> 	if (IS_ERR(dp->grf)) {
>>> -		DRM_DEV_ERROR(dev, "failed to get rockchip,grf property\n");
>>> +		dev_err(dev, "failed to get rockchip,grf property\n");
>>> 		return PTR_ERR(dp->grf);
>>> 	}
>>>
>>> @@ -287,19 +288,19 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
>>> 	} else if (PTR_ERR(dp->grfclk) == -EPROBE_DEFER) {
>>> 		return -EPROBE_DEFER;
>>> 	} else if (IS_ERR(dp->grfclk)) {
>>> -		DRM_DEV_ERROR(dev, "failed to get grf clock\n");
>>> +		dev_err(dev, "failed to get grf clock\n");
>>> 		return PTR_ERR(dp->grfclk);
>>> 	}
>>>
>>> 	dp->pclk = devm_clk_get(dev, "pclk");
>>> 	if (IS_ERR(dp->pclk)) {
>>> -		DRM_DEV_ERROR(dev, "failed to get pclk property\n");
>>> +		dev_err(dev, "failed to get pclk property\n");
>>> 		return PTR_ERR(dp->pclk);
>>> 	}
>>>
>>> 	dp->rst = devm_reset_control_get(dev, "dp");
>>> 	if (IS_ERR(dp->rst)) {
>>> -		DRM_DEV_ERROR(dev, "failed to get dp reset control\n");
>>> +		dev_err(dev, "failed to get dp reset control\n");
>>> 		return PTR_ERR(dp->rst);
>>> 	}
>>>
>>> @@ -315,12 +316,12 @@ static int rockchip_dp_drm_create_encoder(struct rockchip_dp_device *dp)
>>>
>>> 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev,
>>> 							     dev->of_node);
>>> -	DRM_DEBUG_KMS("possible_crtcs = 0x%x\n", encoder->possible_crtcs);
>>> +	drm_dbg_kms(drm_dev, "possible_crtcs = 0x%x\n", encoder->possible_crtcs);
>>>
>>> 	ret = drm_simple_encoder_init(drm_dev, encoder,
>>> 				      DRM_MODE_ENCODER_TMDS);
>>> 	if (ret) {
>>> -		DRM_ERROR("failed to initialize encoder with drm\n");
>>> +		drm_err(drm_dev, "failed to initialize encoder with drm\n");
>>> 		return ret;
>>> 	}
>>>
>>> @@ -340,7 +341,7 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
>>>
>>> 	ret = rockchip_dp_drm_create_encoder(dp);
>>> 	if (ret) {
>>> -		DRM_ERROR("failed to create drm encoder\n");
>>> +		drm_err(drm_dev, "failed to create drm encoder\n");
>>> 		return ret;
>>> 	}
>>>
>>> -- 
>>> 2.34.1
>>>
>
> Best regards,
> Damon

-- 
Jani Nikula, Intel

