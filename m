Return-Path: <devicetree+bounces-149524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A508BA3FB5A
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:33:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C131D167467
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:25:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 770DD1D54F7;
	Fri, 21 Feb 2025 16:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uONGNCj4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A420D286298
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 16:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740155138; cv=none; b=AJ7ltXPyS1JY+mBYW4LEfgCX5RnL/BqgLHbgnQho65UE/xwc9KbBn+rY+QPDtgwCDikeSm7NlJxnbwTePPQXmq/HKHHSdbr+Zau6e/u1R3bKeo91PZ70fhwTfTBOd166r99s9PZXuWY+nnjfXJUxi+/ejKzAr75OaLxCXOTwh3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740155138; c=relaxed/simple;
	bh=aEE25AXlSTLbdefl+4KfStMhcPWUHROG4MtJ6YdtyXY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=atkKSw0mL/z7/30GhjnpGxIGHi7fFm6rmagXVLs7J0AkGC8gCseID7Ppq9W5UO1t3pjYmx6yV+WXtqVkz/ddTbUr/EzlSvUofywbs8PxFEgmNhES88vmxE+CkVQPO7sKEsreD/wUzA3FPIOM0+fU4ONycGf393LTBQz2/e5f7X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uONGNCj4; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-307325f2436so21908821fa.0
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:25:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740155135; x=1740759935; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zVZWunDIG7iJIj75JUGRirS9XvGJ484MyBZ0PrGNwBE=;
        b=uONGNCj41ac2B8P2mvmzdd/ARnUsLyuqie839y0HjM89WmcNlBr16G2aZA/btRb7tw
         h0SfzYAAeMvjPt955MDOG+fmtYepuTJ4xDgQO92LLZTe7IqVQVGmQy0fZHZ38Ij71CD/
         xrTNV1xAAHXo6wpQWZ7ZeSgenWUA2a5x/HEESjaAkUhed2f2QuvvUOVIf3YajAOHFsjw
         JO9Cpd024V4kHLIEHI2f6Y9ualY9+NfwnMDbFmgsEoMoOcs5a1l9HyVqRl8236QQI43I
         A5B5Bh2T/uB1g8HFmkX6EWg8SsCkfOBd2dWVsLc3VaCMFAUURGgJp7HYEnWOYztM4od8
         81QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740155135; x=1740759935;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zVZWunDIG7iJIj75JUGRirS9XvGJ484MyBZ0PrGNwBE=;
        b=QYqUxMS6xGRakRcA9u1P33+9sUSUZAMed5o1drwe1sXDVeY7nuInZwopadeA/d+9Sk
         3gqKL2rfhDE8eBLLQVtCc07w5uMaOD0lMBSKIQOAWmsfXiN349SHF1zd8zCpg+fciqiM
         vwDwYTDmmdGpJtYXLcPHuvwKHZpdhSU5bvpFbK+2UqWmKPzvtRKIsagrEOqGHEzqES4x
         bk0mQJAFyiKPaMubQoqu4s+TN7F3oQaGLfM+areLlnt2GayiHMJaqIyOTHJWTYz/Dhe9
         xzJACePOcO5HScpEw2Syj16emKA7FpbCy7Uf6esJo0RZGZt6zR4Wn0aAiStwDYZyV3g5
         VWyA==
X-Forwarded-Encrypted: i=1; AJvYcCWeeXc2OeuxuYE2lQ4GWc9UBv+g5Zb2kgLq6H+uocT9pgAWOlz3crcqfvhsSkFgO7FLxJcxYVS+7Q38@vger.kernel.org
X-Gm-Message-State: AOJu0YxI39o0CRmROlcUr7L4R2NIXb/onWnzCHVbl+Vqt0KfoktSp2n9
	aKafr5TSqpqdvwPyrkw7ox7ojVuEZfwLSPtA7HbxLyml5t/5Qj64vg7uleuQYLE=
X-Gm-Gg: ASbGncuL63aAVDCaESTL7MstQNNz9SZjXv/1L5Y5YdhXmjOSEv4nv5O+NpvmtjRm7Up
	DaEjLEPMlo0yVDBMCsKJK9P05lwF5TYz4EUICIVWEtkTKCUd6tMZr2VzwWK7BA6niHJLyoCR7Nw
	iL1KAuCVcNEtFxy2SMx2sl0Or+iQ2dhjzP/f8hn4PPllNSpNJdK3jHWJl7+8a+iMMo4+R7lwXXq
	xNwPlqkqfJeBBsGV160IOKuMr7bmc24U09oSdzuZdroHyKE/jgQ5Ci2UKbyX+nYGjPYXgOZR0iE
	5prlrYKjDLFtB6rAka8RTzBK/lfx0cfa6U447znhcWtcz8ox28HYGi30c4TQMyXrNoS9QbO8mdh
	n3LWH5Q==
X-Google-Smtp-Source: AGHT+IGwPCQwlJ8n3fHSVoLxs5y3AVSJq/S4VL0YsBEmcH8zygS1KlxAOHXc2+k8N/cIbIZteGkAQQ==
X-Received: by 2002:a2e:300e:0:b0:309:214a:6b16 with SMTP id 38308e7fff4ca-30a598f6c81mr12214571fa.22.1740155134665;
        Fri, 21 Feb 2025 08:25:34 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3091011ed8bsm29249061fa.56.2025.02.21.08.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 08:25:33 -0800 (PST)
Date: Fri, 21 Feb 2025 18:25:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>, Rob Clark <robdclark@chromium.org>
Subject: Re: [PATCH v3 18/21] drm/msm/dpu: Implement 10-bit color alpha for
 v12.0 DPU
Message-ID: <4y2nj6qxbbp7etuweoyarcg7vpbyemparzclj7ulb46rxk7k3s@s6wjrjebuc3g>
References: <20250221-b4-sm8750-display-v3-0-3ea95b1630ea@linaro.org>
 <20250221-b4-sm8750-display-v3-18-3ea95b1630ea@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250221-b4-sm8750-display-v3-18-3ea95b1630ea@linaro.org>

On Fri, Feb 21, 2025 at 04:24:28PM +0100, Krzysztof Kozlowski wrote:
> v12.0 DPU on SM8750 comes with 10-bit color alpha.  Add register
> differences and new implementations of setup_alpha_out,
> setup_border_color and so one for this.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v3:
> 1. New patch, split from previous big DPU v12.0.
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c  | 20 +++++---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c | 84 +++++++++++++++++++++++++++++--
>  2 files changed, 94 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
> index b9fe3a7343d54f6f8b5aad7982928d5fc728bd61..7a35939ece180c15898b2eaa2f1f451767c741ae 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
> @@ -319,15 +319,21 @@ static bool dpu_crtc_get_scanout_position(struct drm_crtc *crtc,
>  	return true;
>  }
>  
> -static void _dpu_crtc_setup_blend_cfg(struct dpu_crtc_mixer *mixer,
> -		struct dpu_plane_state *pstate, const struct msm_format *format)
> +static void _dpu_crtc_setup_blend_cfg(const struct dpu_hw_ctl *ctl,
> +				      struct dpu_crtc_mixer *mixer,
> +				      struct dpu_plane_state *pstate,
> +				      const struct msm_format *format)
>  {
>  	struct dpu_hw_mixer *lm = mixer->hw_lm;
>  	uint32_t blend_op;
> -	uint32_t fg_alpha, bg_alpha;
> +	uint32_t fg_alpha, bg_alpha, max_alpha;
>  
>  	fg_alpha = pstate->base.alpha >> 8;
> -	bg_alpha = 0xff - fg_alpha;
> +	if (ctl->mdss_ver->core_major_ver < 12)
> +		max_alpha = 0xff;
> +	else
> +		max_alpha = 0x3ff;

So, CTL is passed only to get struct dpu_mdss_version? It can either be
passed directly or fetched via dpu_kms->catalog->mdss_ver

> +	bg_alpha = max_alpha - fg_alpha;
>  
>  	/* default to opaque blending */
>  	if (pstate->base.pixel_blend_mode == DRM_MODE_BLEND_PIXEL_NONE ||
> @@ -337,7 +343,7 @@ static void _dpu_crtc_setup_blend_cfg(struct dpu_crtc_mixer *mixer,
>  	} else if (pstate->base.pixel_blend_mode == DRM_MODE_BLEND_PREMULTI) {
>  		blend_op = DPU_BLEND_FG_ALPHA_FG_CONST |
>  			DPU_BLEND_BG_ALPHA_FG_PIXEL;
> -		if (fg_alpha != 0xff) {
> +		if (fg_alpha != max_alpha) {
>  			bg_alpha = fg_alpha;
>  			blend_op |= DPU_BLEND_BG_MOD_ALPHA |
>  				    DPU_BLEND_BG_INV_MOD_ALPHA;
> @@ -348,7 +354,7 @@ static void _dpu_crtc_setup_blend_cfg(struct dpu_crtc_mixer *mixer,
>  		/* coverage blending */
>  		blend_op = DPU_BLEND_FG_ALPHA_FG_PIXEL |
>  			DPU_BLEND_BG_ALPHA_FG_PIXEL;
> -		if (fg_alpha != 0xff) {
> +		if (fg_alpha != max_alpha) {
>  			bg_alpha = fg_alpha;
>  			blend_op |= DPU_BLEND_FG_MOD_ALPHA |
>  				    DPU_BLEND_FG_INV_MOD_ALPHA |
> @@ -482,7 +488,7 @@ static void _dpu_crtc_blend_setup_mixer(struct drm_crtc *crtc,
>  
>  		/* blend config update */
>  		for (lm_idx = 0; lm_idx < cstate->num_mixers; lm_idx++) {
> -			_dpu_crtc_setup_blend_cfg(mixer + lm_idx, pstate, format);
> +			_dpu_crtc_setup_blend_cfg(ctl, mixer + lm_idx, pstate, format);
>  
>  			if (bg_alpha_enable && !format->alpha_enable)
>  				mixer[lm_idx].mixer_op_mode = 0;
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c
> index 3bfb61cb83672dca4236bdbbbfb1e442223576d2..75bf3521b03c8e243ccfe1fc226aa71f23b296df 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c
> @@ -19,12 +19,20 @@
>  
>  /* These register are offset to mixer base + stage base */
>  #define LM_BLEND0_OP                     0x00
> +
> +/* <v12 DPU with offset to mixer base + stage base */
>  #define LM_BLEND0_CONST_ALPHA            0x04
>  #define LM_FG_COLOR_FILL_COLOR_0         0x08
>  #define LM_FG_COLOR_FILL_COLOR_1         0x0C

lowercase hex

>  #define LM_FG_COLOR_FILL_SIZE            0x10
>  #define LM_FG_COLOR_FILL_XY              0x14
>  
> +/* >= v12 DPU */
> +#define LM_BORDER_COLOR_0_V12		0x1C

lowercase hex

> +#define LM_BORDER_COLOR_1_V12		0x20
> +
> +/* >= v12 DPU with offset to mixer base + stage base */
> +#define LM_BLEND0_CONST_ALPHA_V12	0x08

This doesn't seem to be aligned properly

>  #define LM_BLEND0_FG_ALPHA               0x04
>  #define LM_BLEND0_BG_ALPHA               0x08
>  

-- 
With best wishes
Dmitry

