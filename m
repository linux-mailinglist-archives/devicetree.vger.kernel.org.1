Return-Path: <devicetree+bounces-127895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB519E69D4
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 10:11:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 172F5281BB7
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 09:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED6FE1E493F;
	Fri,  6 Dec 2024 09:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QJQOadGi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8C51D9A48
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 09:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733476296; cv=none; b=hXeOqKaHB2Xpw8j2mEP9LIARGiF3i0lhjNOvLvutHLh+62NZpncq2rkUIUz1bCZMleeTV4De8yS5+6GZ6SZPNTUBWB3T6Rq1ewaMQIgJbisvOdE2VRAeoc1NPKSqrd6jNw3a14VxoyQ27mGJGSNJfhPSbvxCSC5iwsyMVJqppZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733476296; c=relaxed/simple;
	bh=6M08CRkQabxHBoAsSW3P1gq61tbOPrB76R21u7g+EHs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ilqflUVBlmfyqrCUWD6hFfHjZId8Lc9hzDpAmMMWkvPM2FdQSR7fb7XT/nfcxUoIP5DD8G29DO7AThZREY07Vbtz4mz3LkGP/112vF/80EBgSYvCvUKsxqbSb9vRMnqSwLDiA+qhyMQm1qrC/2xKuTPJYzjQI8pQryVqIzwR48U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QJQOadGi; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53df80eeeedso1918669e87.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 01:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733476292; x=1734081092; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=T8gpX618iMkRwGuO0MNBjOsaC1WUlIK8H0NQRZoPtiI=;
        b=QJQOadGi/4h+Cehd4XhKLjGl/DDeBB0WANpIdgUiWbC0Nce7j+hrsq5k6rNDvNYWVM
         PDzgMBaWn9/A3EiZKrA1fjJhohc9wSIol856z479jSMZnx8ztGTPxakMi6367jqP1bA4
         4g3Gp+Z8oF8ApyjSNQaRnGVDHfqzyHcLiioP4Dmq5AiUvDV+jtyNu+ffznyjvn3TfcQb
         UvvoftmJ6EgkLigJk4VyDX8ICKdEU/iop/z2PEqr1Wr51w3c3UH/Ks90PKRJemLxrooX
         uGnlVjrU53V9Xr2OIbmK755FG1trJrm8fVzpPg0wmo1AQpcXDQc1m8CPJtwAZSBgBloa
         +arQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733476292; x=1734081092;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T8gpX618iMkRwGuO0MNBjOsaC1WUlIK8H0NQRZoPtiI=;
        b=C8mRtBWk+4+wPYhLGzgRsCbLzGaHfYtHgQHA5RjtTdf6wkzDVdOm7eVBV18IQYRjlH
         xNatmPjsoxrJTEOWAai134Ax9iLvO04leLVnDPko+yaAh+56howVXUmUtDlh2vuayC11
         LiT7HFcjdFiPvGxusAScP/9RreDBGgDOA2gcfM7MIvJLLb92t1nOCmNztfPwVsJo5T8+
         PeBTrvRVaWkhk0LRXMkZsZ9wDba4W/t3r3BLspuHhen08l9EZ4uZgt4uH22v7Moc4UqC
         aLGbBMpWWhxfi+QbyWbnVHh5hO2GecuYT2O3aFtagH72YUxD+ZUbY10WrX7bci/T7pqv
         tWNg==
X-Forwarded-Encrypted: i=1; AJvYcCVSN56zP/8OQS6nuc1RaKsidM7DIhhqvXPtDy/aADNWHx3Dvu22HY/XLqSekYss51LEXldZte+G5gLf@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk4cORSDaADq6HNUkjty8C+DtFZyzRazRjv8t7FJUzb5QRDPIj
	umqfMviYdZ8c4qeipR/JMk+rJwIutHHzo6mmcLZL6c34FZKGs7XRHeSCTcRGw0ZN21NQkXtY642
	D
X-Gm-Gg: ASbGnct3v7Q3/8G2k3D1iHBYXo8d+V0eCYpTL55sfb9NRsm5ImKLtNjKTlHokEbjRlx
	rjjlb9b52butOUfh42ww9UAIzUhqkVA5pkQVVteEhuW37AIfnhN2/r2/cJzNaMzfwLKGl9llgf+
	RABbWvZpIB1iivbIcUzIbxyGDYvCX4jF46TZv5ICUrE9szK+MAhTVi/+HbqaaZIYepwH9KQe5Fm
	LmMCrM+f2rX/lQj0lgaVbX/wWpXfjxfWK0THxhfm0V8hbz+R6hGCybAdUfpxJI/WnovAREZl3oK
	i5jV9aHsL8N5HnRwastDAfp4DAogVA==
X-Google-Smtp-Source: AGHT+IGNi8p6tF7mI10HM7W5wGLN6DaQZ+XRjtGNfF7C+qKH+cNm/VA+lU/O/GtzKadPV+/qvj5+wQ==
X-Received: by 2002:a05:6512:2316:b0:53d:f712:53ce with SMTP id 2adb3069b0e04-53e2c2b18f8mr560342e87.7.1733476292070;
        Fri, 06 Dec 2024 01:11:32 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e229c1ef2sm442949e87.186.2024.12.06.01.11.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 01:11:30 -0800 (PST)
Date: Fri, 6 Dec 2024 11:11:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Stephen Boyd <swboyd@chromium.org>, 
	Chandan Uddaraju <chandanu@codeaurora.org>, Guenter Roeck <groeck@chromium.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vara Reddy <quic_varar@quicinc.com>, Rob Clark <robdclark@chromium.org>, 
	Tanmay Shah <tanmay@codeaurora.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 10/45] drm/msm/dp: move the pixel clock control to its
 own API
Message-ID: <mqreu34au5g6yfogb2ijv7f2yx76fqoba2n3kljioagrfe2ilz@skoljluurawr>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-10-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-10-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:31:41PM -0800, Abhinav Kumar wrote:
> Enable/Disable of DP pixel clock happens in multiple code paths
> leading to code duplication. Move it into individual helpers so that
> the helpers can be called wherever necessary.
> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c | 76 ++++++++++++++++++++++------------------
>  1 file changed, 41 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> index 0bed85b5c8e8133ffa8c74d5de22668905396d09..118f5ed83e464f9f27f813eb39624f9c3189f5ac 100644
> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> @@ -1698,6 +1698,30 @@ static bool msm_dp_ctrl_send_phy_test_pattern(struct msm_dp_ctrl_private *ctrl)
>  	return success;
>  }
>  
> +static int msm_dp_ctrl_stream_clk_on(struct msm_dp_ctrl_private *ctrl, unsigned long pixel_rate)
> +{
> +	int ret;
> +
> +	ret = clk_set_rate(ctrl->pixel_clk, pixel_rate * 1000);
> +	if (ret) {
> +		DRM_ERROR("Failed to set pixel clock rate. ret=%d\n", ret);
> +		return ret;
> +	}
> +
> +	if (ctrl->stream_clks_on) {
> +		drm_dbg_dp(ctrl->drm_dev, "pixel clks already enabled\n");
> +	} else {
> +		ret = clk_prepare_enable(ctrl->pixel_clk);
> +		if (ret) {
> +			DRM_ERROR("Failed to start pixel clocks. ret=%d\n", ret);
> +			return ret;
> +		}
> +		ctrl->stream_clks_on = true;
> +	}
> +
> +	return ret;
> +}
> +
>  static int msm_dp_ctrl_process_phy_test_request(struct msm_dp_ctrl_private *ctrl,
>  						struct msm_dp_panel *msm_dp_panel)
>  {
> @@ -1724,22 +1748,7 @@ static int msm_dp_ctrl_process_phy_test_request(struct msm_dp_ctrl_private *ctrl
>  	}
>  
>  	pixel_rate = msm_dp_panel->msm_dp_mode.drm_mode.clock;
> -	ret = clk_set_rate(ctrl->pixel_clk, pixel_rate * 1000);
> -	if (ret) {
> -		DRM_ERROR("Failed to set pixel clock rate. ret=%d\n", ret);
> -		return ret;
> -	}
> -
> -	if (ctrl->stream_clks_on) {
> -		drm_dbg_dp(ctrl->drm_dev, "pixel clks already enabled\n");
> -	} else {
> -		ret = clk_prepare_enable(ctrl->pixel_clk);
> -		if (ret) {
> -			DRM_ERROR("Failed to start pixel clocks. ret=%d\n", ret);
> -			return ret;
> -		}
> -		ctrl->stream_clks_on = true;
> -	}
> +	ret = msm_dp_ctrl_stream_clk_on(ctrl, pixel_rate);
>  
>  	msm_dp_ctrl_send_phy_test_pattern(ctrl);
>  
> @@ -1999,21 +2008,10 @@ int msm_dp_ctrl_on_stream(struct msm_dp_ctrl *msm_dp_ctrl, struct msm_dp_panel *
>  
>  	drm_dbg_dp(ctrl->drm_dev, "pixel_rate=%lu\n", pixel_rate);
>  
> -	ret = clk_set_rate(ctrl->pixel_clk, pixel_rate * 1000);
> +	ret = msm_dp_ctrl_stream_clk_on(ctrl, pixel_rate);
>  	if (ret) {
> -		DRM_ERROR("Failed to set pixel clock rate. ret=%d\n", ret);
> -		goto end;
> -	}
> -
> -	if (ctrl->stream_clks_on) {
> -		drm_dbg_dp(ctrl->drm_dev, "pixel clks already enabled\n");
> -	} else {
> -		ret = clk_prepare_enable(ctrl->pixel_clk);
> -		if (ret) {
> -			DRM_ERROR("Failed to start pixel clocks. ret=%d\n", ret);
> -			goto end;
> -		}
> -		ctrl->stream_clks_on = true;
> +		DRM_ERROR("failed to enable stream pixel clk\n");
> +		return ret;
>  	}
>  
>  	/*
> @@ -2041,10 +2039,21 @@ int msm_dp_ctrl_on_stream(struct msm_dp_ctrl *msm_dp_ctrl, struct msm_dp_panel *
>  	drm_dbg_dp(ctrl->drm_dev,
>  		"mainlink %s\n", mainlink_ready ? "READY" : "NOT READY");
>  
> -end:
>  	return ret;
>  }
>  
> +static void msm_dp_ctrl_stream_clk_off(struct msm_dp_ctrl *msm_dp_ctrl)

At least this should come right after msm_dp_ctrl_stream_clk_on().

> +{
> +	struct msm_dp_ctrl_private *ctrl;
> +
> +	ctrl = container_of(msm_dp_ctrl, struct msm_dp_ctrl_private, msm_dp_ctrl);
> +
> +	if (ctrl->stream_clks_on) {
> +		clk_disable_unprepare(ctrl->pixel_clk);
> +		ctrl->stream_clks_on = false;
> +	}
> +}
> +
>  void msm_dp_ctrl_clear_vsc_sdp_pkt(struct msm_dp_ctrl *msm_dp_ctrl, struct msm_dp_panel *dp_panel)
>  {
>  	struct msm_dp_ctrl_private *ctrl;
> @@ -2115,10 +2124,7 @@ void msm_dp_ctrl_off(struct msm_dp_ctrl *msm_dp_ctrl)
>  
>  	msm_dp_catalog_ctrl_reset(ctrl->catalog);
>  
> -	if (ctrl->stream_clks_on) {
> -		clk_disable_unprepare(ctrl->pixel_clk);
> -		ctrl->stream_clks_on = false;
> -	}
> +	msm_dp_ctrl_stream_clk_off(msm_dp_ctrl);
>  
>  	dev_pm_opp_set_rate(ctrl->dev, 0);
>  	msm_dp_ctrl_link_clk_disable(&ctrl->msm_dp_ctrl);
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

