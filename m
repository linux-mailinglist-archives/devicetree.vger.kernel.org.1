Return-Path: <devicetree+bounces-78739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 525B5913408
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 14:48:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 739501C213C3
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 12:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05DD0155A4E;
	Sat, 22 Jun 2024 12:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jldh+qU5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13F6155332
	for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 12:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719060494; cv=none; b=FB9PJbJWdHsmm6N/HdfMnoBz4jl0eigcSS7dFgC09K0jCHfkRunpMPV3E2cohXbpj5GbLD2Xxhx2EYNU1eJMI8lhovhb6pbxsSb5DacoKpjWsIOOJ1Q+ieIvQAjvhe1xU/OvYC1EX1SuUj7xpKFIzaoEigBEuoHoV47G3CHIpSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719060494; c=relaxed/simple;
	bh=KLCgkGvxQQObDNE0tZPyDFWipoGL33A5pTK/r40Ftys=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UIDZBCHyH/RnQleXzucvWPVWgTHHXoIdJeuChKCA2KYPlpWmvP27HfuEd9aGwIU+HSwR+1cpg1KEXwMEeoFls+F93JHdZYWA7i/v6BNrsVGTwtdNGeDyVYIKEXyJBMNjMkTLccQ5c5P0pKe1MpoEqesx0caBFlgmLGaaZoR5yeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jldh+qU5; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ebeefb9a7fso32666381fa.0
        for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 05:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719060490; x=1719665290; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J4NrzrquMu2wm+RaIJw1sglld6u4UvhjbmFh93smTfA=;
        b=Jldh+qU5s3WDNNs5wjW9+xHvGWQO6BFXNEKONnp0gngyYCmBYUu0b5Ty5XpMOy3yAY
         IXGDtxm/VVADgTk03sy9htALWVSHufNBUmc2DZh0i4EOuy/hfbEF8IXVwin+usxVHG9u
         tn/l029GRbq1dD8+QcvAJtsN2Yzax2BpD0XcvQIPs3smavVb0cjf7aXZ6yTWA0hOrS3i
         Vjm4pQ1ljcuQXab3NILAMOhcJolr1f/8LNzs11gzsUafiiNsEil7KOO8Gbcuf7/CiSwq
         IuqFsDyEsWTsq5310eUHOpyoTsrXcHMlRyLAa7WJ9TxmWcvqqA3UdjX2h4CjhL5flhmI
         Lk+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719060490; x=1719665290;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J4NrzrquMu2wm+RaIJw1sglld6u4UvhjbmFh93smTfA=;
        b=U6VQmtbrhP/X7LGgGSGgbMjvmNjsQINjBICXyop/u4kMFzYSpypS5m5Rl5+QQJE2cL
         VrGZeBYOwurrzFBxKbiSePcDi6+SuYZo5XIbSJyHvaQ9IfCwjgJm69SCC9T9CrSdctRV
         ItW99thA9eL+qoqQKFz3MeiYRzhpYCKDACiqbq93pt2gp4s1zFwFWYbDKYPe6KMM29qk
         XshuoN17tPPWt8mRy+fW8qMbgyOgVsY8G5PwFO0v7E+wz4/7H0MqXbo7SX4/EFzm0hUY
         8NVci1+3nsO98O8V93O/O8plIZo4uhWwjqBTnjAtcCW0yp2PJ19DJmSkoLjhHDHFWypw
         +OpA==
X-Forwarded-Encrypted: i=1; AJvYcCUwBfHWidfKrR/qvvCkCqc9rHzkACzg5fqVIYbH0Q1LwIaJi/wAvttxpZxmwv/srPBat/4JaX8m1tOJiSuwDbOXCSNXP5RIX3mAQw==
X-Gm-Message-State: AOJu0YzgDRveZEvO6sjwwj6I95VgU+iXzkLCo65Avla0dM5rdOHXvDj1
	+E0X7ep64WPFpoYnj+G1p7CHz9eoz7q4tl7lzD6kvpI3AWXOsycj+p0j7+hKQes=
X-Google-Smtp-Source: AGHT+IHUtcMthGyb2HAUJ4dSJgS1RvVhsTp9d+IwnhEYCqcGykisBn3lTkmOciLbVOJPHTGKWoptCw==
X-Received: by 2002:a2e:998e:0:b0:2ec:4d5b:3d03 with SMTP id 38308e7fff4ca-2ec579845dbmr6014601fa.31.1719060489910;
        Sat, 22 Jun 2024 05:48:09 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec50860130sm3380151fa.140.2024.06.22.05.48.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Jun 2024 05:48:09 -0700 (PDT)
Date: Sat, 22 Jun 2024 15:48:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marijn Suijten <marijn.suijten@somainline.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 5/8] drm/msm/dpu: rework vsync_source handling
Message-ID: <zxnlq4vc7w2j6jzwyuyvg65qguexs75y5urn3xub5wlqdm2hlu@ntfkwwvbplax>
References: <20240613-dpu-handle-te-signal-v2-0-67a0116b5366@linaro.org>
 <20240613-dpu-handle-te-signal-v2-5-67a0116b5366@linaro.org>
 <flxejwpqw75thyeu5ycnlichh37l4ltuied36jjzvgifury7lp@gjjcbohuhfa3>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <flxejwpqw75thyeu5ycnlichh37l4ltuied36jjzvgifury7lp@gjjcbohuhfa3>

On Thu, Jun 13, 2024 at 08:21:59PM GMT, Marijn Suijten wrote:
> Maybe retitle this to something that more closely resembles "remove unset
> is_te_using_watchdog_timer field"?

Well, it really moves vsync_source selection to
_dpu_kms_initialize_dsi(), it doesn't just drop the
is_te_using_watchdog_timer.

> 
> On 2024-06-13 20:05:08, Dmitry Baryshkov wrote:
> > The struct msm_display_info has is_te_using_watchdog_timer field which
> > is neither used anywhere nor is flexible enough to specify different
> 
> Well, it's "used", but not "set" (to anything other than the zero-initialized
> default). s/used/set?

ack

> 
> > sources. Replace it with the field specifying the vsync source using
> > enum dpu_vsync_source.
> > 
> > Reviewed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Patch itself is fine, just think the title could be clearer:
> 
> Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
> 
> > ---
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c | 5 +----
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h | 5 ++---
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c     | 2 ++
> >  3 files changed, 5 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> > index bd37a56b4d03..b147f8814a18 100644
> > --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> > +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> > @@ -743,10 +743,7 @@ static void _dpu_encoder_update_vsync_source(struct dpu_encoder_virt *dpu_enc,
> >  		vsync_cfg.pp_count = dpu_enc->num_phys_encs;
> >  		vsync_cfg.frame_rate = drm_mode_vrefresh(&dpu_enc->base.crtc->state->adjusted_mode);
> >  
> > -		if (disp_info->is_te_using_watchdog_timer)
> > -			vsync_cfg.vsync_source = DPU_VSYNC_SOURCE_WD_TIMER_0;
> > -		else
> > -			vsync_cfg.vsync_source = DPU_VSYNC_SOURCE_GPIO_0;
> > +		vsync_cfg.vsync_source = disp_info->vsync_source;
> >  
> >  		hw_mdptop->ops.setup_vsync_source(hw_mdptop, &vsync_cfg);
> >  
> > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h
> > index 76be77e30954..cb59bd4436f4 100644
> > --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h
> > +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h
> > @@ -26,15 +26,14 @@
> >   * @h_tile_instance:    Controller instance used per tile. Number of elements is
> >   *                      based on num_of_h_tiles
> >   * @is_cmd_mode		Boolean to indicate if the CMD mode is requested
> > - * @is_te_using_watchdog_timer:  Boolean to indicate watchdog TE is
> > - *				 used instead of panel TE in cmd mode panels
> > + * @vsync_source:	Source of the TE signal for DSI CMD devices
> >   */
> >  struct msm_display_info {
> >  	enum dpu_intf_type intf_type;
> >  	uint32_t num_of_h_tiles;
> >  	uint32_t h_tile_instance[MAX_H_TILES_PER_DISPLAY];
> >  	bool is_cmd_mode;
> > -	bool is_te_using_watchdog_timer;
> > +	enum dpu_vsync_source vsync_source;
> >  };
> >  
> >  /**
> > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> > index 1955848b1b78..e9991f3756d4 100644
> > --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> > +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> > @@ -543,6 +543,8 @@ static int _dpu_kms_initialize_dsi(struct drm_device *dev,
> >  
> >  		info.is_cmd_mode = msm_dsi_is_cmd_mode(priv->dsi[i]);
> >  
> > +		info.vsync_source = DPU_VSYNC_SOURCE_GPIO_0;
> > +
> >  		encoder = dpu_encoder_init(dev, DRM_MODE_ENCODER_DSI, &info);
> >  		if (IS_ERR(encoder)) {
> >  			DPU_ERROR("encoder init failed for dsi display\n");
> > 
> > -- 
> > 2.39.2
> > 

-- 
With best wishes
Dmitry

