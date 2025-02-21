Return-Path: <devicetree+bounces-149526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE12AA3FB58
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:32:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E2B41899DCB
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE15A1E1C36;
	Fri, 21 Feb 2025 16:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WH0rQvea"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77C41D5166
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 16:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740155183; cv=none; b=mki/Sj62JLRyNlQymzq1IGxUnfNgHNFBcPj8+Q1KXvy1fj8MZSDSm/ssR/jRoSfwzl9fQs4FO8cOgvK2PKVl1OUh4MinlLwgXMAaY8ha36jq2zPsXpLsHgyq2qYAgL7YcSawK7m/ghP7HofKd9TdSjd59Pgzn5Lxn8JEG8405ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740155183; c=relaxed/simple;
	bh=sUJGDV0444vBYzd10XMCRP2yozVGS5BHshZAiO3ClcU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YcffgRAmr+1awbcGJAJckWTWL/0FG60alPHv3Ccmw1WpYbYBM0p+OuZ2q5SjsLvd+fMWcbtH4Zgf4R9errlE0ONKTfF7oGrihIiP6r3HGLt9cG/vB56S8zYyoJeFTjxkmYt65hh8SnI2iQI6HXNE6hHBY/vuGTqVM+WDnu6XH68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WH0rQvea; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-543e47e93a3so2611618e87.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740155180; x=1740759980; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xjL5HnyHIkjOW/V091xA7OYPeED0xOIXslkPMlUBUug=;
        b=WH0rQveaqBoIBU8Y+UcS00X+xyibjRIPzhiLQnFS2+lnsZiUm7flhIFJoObLlei5q3
         IjdQ5HWZbIoc2R2GjZCCJtqLoFEZ9AMIXPwz7VK8EJZBRoafwBcIQbnpfDQR9cD8W+qz
         +rffsymLzxC9+uFObFdq+/i60sNPSm2BAoZ+kaIPklnZXSSuSXE0Ugg6JZkUJDKZJyDR
         Uu9V+jbTjKRBvbhIgecfyXg+fk2QSOyj+0LkU75rLC4iil9iB8bUcLONHQtuid92xCQD
         fkWqdqx/gflamomxA8D87anYSJpXF9j+BnmLEwyd2mhmM/F5yI8bCVN3yEQkZi3EatKl
         GTRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740155180; x=1740759980;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xjL5HnyHIkjOW/V091xA7OYPeED0xOIXslkPMlUBUug=;
        b=nI+zIyaMwWtKBBZWpSZ6r+yJiZlcRoGYiuYNCGuhvzA/OjvgPYfBLmDQA/xCmGhCsK
         nOKsMvtU2sZyDvxSvAZxqlmRSLdt9dd8Y3rywchvJt9wRsDWqEBduPtVDXveBQGyrRms
         6jTy8qIzHB5HefVYT2QVSjdMpSgVvczsN40ZJLt5rOPLQUGgGbbsVVMpmdYVhijYNio1
         Kl+jfmi7JwMtcR8s02A/7/x68EtP6RG5jWwfnfPXk7OOVLznAd2BlHWpiM838SLPqy93
         YO5sNweXbev8tz3zf8q1LhTJLgoq69f3XjLumOCqofgVaJmcdC8pGpUFX1VIGbc5BxZw
         102g==
X-Forwarded-Encrypted: i=1; AJvYcCX1v6w3SbyO5NFHFz1/xB2lLbHhPNGo0lFfKVbi1Sh+c0yJ+K4mJSa8L3HsldK5yxtAt0b2fXCFMUos@vger.kernel.org
X-Gm-Message-State: AOJu0YzRQ6qgMTTr3mzTpGwcoNVUT8M4TOgkEW2fgPxPtPr76zRhrRyk
	6N8w+UzIfTFB3+HJUBcfthreTEiUrE3qhzN9NvFWFqHWPXnNQUGxvjsgI1kFR0Q=
X-Gm-Gg: ASbGncvo9YdbRqX6k/+c2S6qPVRaOYOMtiwzo1xYaNDmKiv1lwTyY40ahk0Xa6Cegwe
	w+eGP+unLB+Wd7FZ83/stiIjZRxPxjDbcQQ4duxJGnU+Q7BKrMIMBy1srhSt03J3oglUjlTJJvK
	lsLY8QlmQ7kofE59du5HKC5/y3Hg7e53hKSO9a1Ub7wQFn8r/i8eL7mhwSWfqvcwU3lWRL5msgG
	cYfyq3jAPV42US0T3F3qELKCB8HQoC6rf8RKuCFzw/6OTdHufuxxTu2VSQNVkGLHohWK4o0U5yk
	GHTfCb8+7R3LhWAz31ktL7wwwcrTVFVaFOjkxgLdv8nRJDdz71zYE8C5ukXqhTKAlUwjQHt4OzQ
	Iw/bElw==
X-Google-Smtp-Source: AGHT+IGFPBqQwJN5a48M/xNQBTDNxvZTEjIAW3PFsBL+6h3O4OdEk1slnuoUOVeOHEYt968uLpwuBg==
X-Received: by 2002:a05:6512:31cf:b0:545:a5e:b4ef with SMTP id 2adb3069b0e04-5483913ae13mr1829559e87.16.1740155179895;
        Fri, 21 Feb 2025 08:26:19 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30921a593f6sm25579171fa.65.2025.02.21.08.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 08:26:18 -0800 (PST)
Date: Fri, 21 Feb 2025 18:26:16 +0200
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
Subject: Re: [PATCH v3 19/21] drm/msm/dpu: Implement CTL_PIPE_ACTIVE for
 v12.0 DPU
Message-ID: <5rlcxx7pcu32hz3r4qufqcq2jzk2z4g2ep7reecpm2kksttwyi@66p2u4nwfzx6>
References: <20250221-b4-sm8750-display-v3-0-3ea95b1630ea@linaro.org>
 <20250221-b4-sm8750-display-v3-19-3ea95b1630ea@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250221-b4-sm8750-display-v3-19-3ea95b1630ea@linaro.org>

On Fri, Feb 21, 2025 at 04:24:29PM +0100, Krzysztof Kozlowski wrote:
> v12.0 DPU on SM8750 comes with new CTL_PIPE_ACTIVE register for
> selective activation of pipes, which replaces earlier
> dpu_hw_ctl_setup_blendstage() code path for newer devices.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v3:
> 1. New patch, split from previous big DPU v12.0.
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c    |  9 +++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c |  3 +++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c  | 29 +++++++++++++++++++++++++++--
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h  |  8 ++++++++
>  4 files changed, 47 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Minot nit below

> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
> index 43a254cf57da571e2ec8aad38028477652f9283c..3e0bdd1100ebb0d302a852ceeaf8af86835e69a1 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
> @@ -40,6 +40,7 @@
>  #define   CTL_INTF_FLUSH                0x110
>  #define   CTL_CDM_FLUSH                0x114
>  #define   CTL_PERIPH_FLUSH              0x128
> +#define   CTL_PIPE_ACTIVE               0x12C

lowercase hex, please.

>  #define   CTL_INTF_MASTER               0x134
>  #define   CTL_DSPP_n_FLUSH(n)           ((0x13C) + ((n) * 4))
>  

-- 
With best wishes
Dmitry

