Return-Path: <devicetree+bounces-75553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 06553907B2D
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 20:22:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 95E26B2301B
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 18:22:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA96114C586;
	Thu, 13 Jun 2024 18:22:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from m-r2.th.seeweb.it (m-r2.th.seeweb.it [5.144.164.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480521304AB
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 18:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.144.164.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718302924; cv=none; b=bKOB/WDEzQB9Q3aI3RjwQ7ScWYt0a7FwBiNMR7ShO+5QxCAtCgcR4P7y5g969bFMpC8m9Wfkgr3ETm1vvuj8v7m3etHqEFpt3uLtZjh3eZeocYQe7kUaTsyPjj5JQP8s1UQulYjHuEamIAbM6Bqv8qtB+T7ipX3YzyT6s0Lffec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718302924; c=relaxed/simple;
	bh=axhE42B1nxQx4xbPpiCGOzD9X2DmAsH9f8VfIPAT2n8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V/7zPc3wy0RWZacrBR4aBC2cnLdfY+29zw2z5vQC6K1su3rEGQHoYb048GVdnE641pbEuyEtW752sOsnoy7ElnqnFUxyp3FHhM29tPHKCFennMptmGmbcz+z/BY2LAxuS7sM9lM9G35GJIx2PGo37Nmj8sXC9onyJFgDH9R2xJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org; spf=pass smtp.mailfrom=somainline.org; arc=none smtp.client-ip=5.144.164.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=somainline.org
Received: from SoMainline.org (94-211-6-86.cable.dynamic.v4.ziggo.nl [94.211.6.86])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r2.th.seeweb.it (Postfix) with ESMTPSA id E801C3E9D4;
	Thu, 13 Jun 2024 20:22:00 +0200 (CEST)
Date: Thu, 13 Jun 2024 20:21:59 +0200
From: Marijn Suijten <marijn.suijten@somainline.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 5/8] drm/msm/dpu: rework vsync_source handling
Message-ID: <flxejwpqw75thyeu5ycnlichh37l4ltuied36jjzvgifury7lp@gjjcbohuhfa3>
References: <20240613-dpu-handle-te-signal-v2-0-67a0116b5366@linaro.org>
 <20240613-dpu-handle-te-signal-v2-5-67a0116b5366@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240613-dpu-handle-te-signal-v2-5-67a0116b5366@linaro.org>

Maybe retitle this to something that more closely resembles "remove unset
is_te_using_watchdog_timer field"?

On 2024-06-13 20:05:08, Dmitry Baryshkov wrote:
> The struct msm_display_info has is_te_using_watchdog_timer field which
> is neither used anywhere nor is flexible enough to specify different

Well, it's "used", but not "set" (to anything other than the zero-initialized
default). s/used/set?

> sources. Replace it with the field specifying the vsync source using
> enum dpu_vsync_source.
> 
> Reviewed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Patch itself is fine, just think the title could be clearer:

Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>

> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c | 5 +----
>  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h | 5 ++---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c     | 2 ++
>  3 files changed, 5 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> index bd37a56b4d03..b147f8814a18 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> @@ -743,10 +743,7 @@ static void _dpu_encoder_update_vsync_source(struct dpu_encoder_virt *dpu_enc,
>  		vsync_cfg.pp_count = dpu_enc->num_phys_encs;
>  		vsync_cfg.frame_rate = drm_mode_vrefresh(&dpu_enc->base.crtc->state->adjusted_mode);
>  
> -		if (disp_info->is_te_using_watchdog_timer)
> -			vsync_cfg.vsync_source = DPU_VSYNC_SOURCE_WD_TIMER_0;
> -		else
> -			vsync_cfg.vsync_source = DPU_VSYNC_SOURCE_GPIO_0;
> +		vsync_cfg.vsync_source = disp_info->vsync_source;
>  
>  		hw_mdptop->ops.setup_vsync_source(hw_mdptop, &vsync_cfg);
>  
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h
> index 76be77e30954..cb59bd4436f4 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h
> @@ -26,15 +26,14 @@
>   * @h_tile_instance:    Controller instance used per tile. Number of elements is
>   *                      based on num_of_h_tiles
>   * @is_cmd_mode		Boolean to indicate if the CMD mode is requested
> - * @is_te_using_watchdog_timer:  Boolean to indicate watchdog TE is
> - *				 used instead of panel TE in cmd mode panels
> + * @vsync_source:	Source of the TE signal for DSI CMD devices
>   */
>  struct msm_display_info {
>  	enum dpu_intf_type intf_type;
>  	uint32_t num_of_h_tiles;
>  	uint32_t h_tile_instance[MAX_H_TILES_PER_DISPLAY];
>  	bool is_cmd_mode;
> -	bool is_te_using_watchdog_timer;
> +	enum dpu_vsync_source vsync_source;
>  };
>  
>  /**
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> index 1955848b1b78..e9991f3756d4 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> @@ -543,6 +543,8 @@ static int _dpu_kms_initialize_dsi(struct drm_device *dev,
>  
>  		info.is_cmd_mode = msm_dsi_is_cmd_mode(priv->dsi[i]);
>  
> +		info.vsync_source = DPU_VSYNC_SOURCE_GPIO_0;
> +
>  		encoder = dpu_encoder_init(dev, DRM_MODE_ENCODER_DSI, &info);
>  		if (IS_ERR(encoder)) {
>  			DPU_ERROR("encoder init failed for dsi display\n");
> 
> -- 
> 2.39.2
> 

