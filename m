Return-Path: <devicetree+bounces-127896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 888AB9E69E0
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 10:14:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C666B1884384
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 09:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD0CD1EC00A;
	Fri,  6 Dec 2024 09:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SZodUlpF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB12A1DF96F
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 09:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733476466; cv=none; b=BOfkB58WhGQ0V9rBHoQtZnUrrtFOllQyWyq9WTDKD0VWdsKhLTlbC03qVGgzIMPOBuX1V2sRDmTVKQcZG1P7+72Ksakwb1jXn0y7EFe2YUmohd+L21xLyDsfPa3EdZLE4H2KKIPQwZlzVhGQbJadtAI67oE0P4tLiY3vH9/epNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733476466; c=relaxed/simple;
	bh=+76EGiJeWs6t+QU/vQpduD+P6yD8IWzccXu/rvCpnpE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=enh4SzqCcc27dY0nlVBvnt43AuwzHnyFV1W2dfNYB3+l8ABMMpNHGyHJeyPPm1IXKhOZmhYMdcTIAYXK+ne5Hy1zLuisZtePXIji5srFw/2RDGPqXYa8DZ0ZrcXBHOMfOMYBaJ7CuT/SEC8sKX3JQIn9Gdxg2Lwyjq4jva9lERk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SZodUlpF; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ffb5b131d0so17708981fa.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 01:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733476462; x=1734081262; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Nntj0vr3sSuMkDDvLjAvt9OkCo7KS9A001W3Zyy1XKs=;
        b=SZodUlpFtFLz+kaTjRjPNcugndstSIxV1fdRP9Fm2PAoIlpiwr5IzlIIDlliZ19LKq
         +FGzXqih1iHUcLSMW42X/fuDfMIXKzL0bGqIx0ZaG+egdaFllkNy3APj7S2SPdOnMscA
         BRplilCS/TVLBNMFgkfl31BxIpcIevhMKR7WSZjdOvclWttZmz/dKrF7bfjf+JVU1WD2
         BW0qikUBVNmt4pIIkWBvwC8gAOe2MGDY3b95shij+NuT6h7oZLv5zK/yyvxEEZsuRedE
         YeWLmHWDchN5u12Hr793wbxvJ1nF+QOPo+N7AnYED01VagCyjb9JfuekkQI8m1V5sGS3
         4Ywg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733476462; x=1734081262;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nntj0vr3sSuMkDDvLjAvt9OkCo7KS9A001W3Zyy1XKs=;
        b=E8+VoKdNnpXFKhRftWwflhhBvMC8E67OZ7ov0m6ucK+Ny5E3Mbb5kcfUyg5TKWx2Bk
         b6ZBidOAbICSJfeH2IsM/4a2d55VCTLaCmXybC43toM/7/Ktn/MT7RwTlOmzjrZLC2AV
         GWXRTW80V+5Pq/z0fjJKO38fX5EzaOnHBRayJE52c7rwJ5PY1bjWG673u7Fy2DrX1m7u
         5qkJjTxOA4uHAp0bKd8fS4L21gLzoO1N0eUIrTQvcv8VAOvf/K0zdVqBCNhmwLsrjWIz
         7XKKp7x+BwVK0VPCb5FP/KY1TAvXmJJ8RLxX01oRhOKiwwGKDSPEsOQfcrqItEG3VFQ5
         lqpA==
X-Forwarded-Encrypted: i=1; AJvYcCUku5BCb/oeUtRdEGfSTXhwfghzHKW8vIvcSEQDQ8SwSaOnqUo4NGuagGjXchdIDP+/JhjS6OKJLule@vger.kernel.org
X-Gm-Message-State: AOJu0YzMz9Vsw/dl0EpXQi/Om0ruw/XXryaocjCmrimLGW3hXNK0Dyix
	hDjclWAtDqIaf3zbK2gBZL1DJYxiq8Iw/BIORkwNDGWaLV8lJy7Y7toJ2jYo8Ac=
X-Gm-Gg: ASbGnctMAcdAtsebsDmz9ZKRCdWL2xtegSpYwmJcWBhfcwW2ugp+4IVqsNPH8puCl7Z
	Vg+XZuf4P5dXENlzzrme2Us2xohUeEu4uAR69q0aYHmYM7kUbiH7FR7pX6Zrilf5nYeeSUCDZGB
	dsch5XVi5+vruhCv8C/ClfIR3l/4ABdEM7ueqN1o/nllFVrIDyhLgPhTo3Vu/93+Lk13Rww3BkC
	bYhh2i1MV9GldAe+qHkGR40nPAa20pK13RpFnnA7haDnr9X9Y403Rt4DOC852Bgmtaqb0PIXs9R
	hWdPJx1KQvUa118h5k6boolXGIsS7A==
X-Google-Smtp-Source: AGHT+IGeULY30Ge8vUZIm0lr+henqDGul8jwzbkSBs8yjUR7FgUITuGkZXPcAseJRkhVj5nlhBQZqQ==
X-Received: by 2002:a2e:9a0e:0:b0:2ff:d0c4:5ffe with SMTP id 38308e7fff4ca-3002f8c4d83mr7019641fa.16.1733476461886;
        Fri, 06 Dec 2024 01:14:21 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30020e20581sm4050831fa.77.2024.12.06.01.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 01:14:20 -0800 (PST)
Date: Fri, 6 Dec 2024 11:14:18 +0200
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
Subject: Re: [PATCH 11/45] drm/msm/dp: split dp_ctrl_off() into stream and
 link parts
Message-ID: <iplgkmgma3li3jirsxlwr6mrbaepcfhqg2kuz44utvm56vwgpb@4ayjjqehmgw2>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-11-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-11-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:31:42PM -0800, Abhinav Kumar wrote:
> Split dp_ctrl_off() into stream and link parts so that for MST
> cases we can control the link and pixel parts separately.

Please start by describing the problem.

> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c    | 29 +++--------------------------
>  drivers/gpu/drm/msm/dp/dp_ctrl.h    |  2 +-
>  drivers/gpu/drm/msm/dp/dp_display.c |  4 +++-
>  3 files changed, 7 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> index 118f5ed83e464f9f27f813eb39624f9c3189f5ac..485339eb998cc6c8c1e8ab0a88b5c5d6ef300a1f 100644
> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> @@ -1739,7 +1739,8 @@ static int msm_dp_ctrl_process_phy_test_request(struct msm_dp_ctrl_private *ctrl
>  	 * running. Add the global reset just before disabling the
>  	 * link clocks and core clocks.
>  	 */
> -	msm_dp_ctrl_off(&ctrl->msm_dp_ctrl);
> +	msm_dp_ctrl_stream_clk_off(&ctrl->msm_dp_ctrl);
> +	msm_dp_ctrl_off_link(&ctrl->msm_dp_ctrl);

Huh? What happened with the rest of the msm_dp_ctrl_off() code sequence?
It got dropped, but the commit message tells nothing about it.

>  
>  	ret = msm_dp_ctrl_on_link(&ctrl->msm_dp_ctrl);
>  	if (ret) {
> @@ -2042,7 +2043,7 @@ int msm_dp_ctrl_on_stream(struct msm_dp_ctrl *msm_dp_ctrl, struct msm_dp_panel *
>  	return ret;
>  }
>  
> -static void msm_dp_ctrl_stream_clk_off(struct msm_dp_ctrl *msm_dp_ctrl)
> +void msm_dp_ctrl_stream_clk_off(struct msm_dp_ctrl *msm_dp_ctrl)
>  {
>  	struct msm_dp_ctrl_private *ctrl;
>  
> @@ -2110,30 +2111,6 @@ void msm_dp_ctrl_off_link(struct msm_dp_ctrl *msm_dp_ctrl)
>  		phy, phy->init_count, phy->power_count);
>  }
>  
> -void msm_dp_ctrl_off(struct msm_dp_ctrl *msm_dp_ctrl)
> -{
> -	struct msm_dp_ctrl_private *ctrl;
> -	struct phy *phy;
> -
> -	ctrl = container_of(msm_dp_ctrl, struct msm_dp_ctrl_private, msm_dp_ctrl);
> -	phy = ctrl->phy;
> -
> -	msm_dp_catalog_panel_disable_vsc_sdp(ctrl->catalog);
> -
> -	msm_dp_catalog_ctrl_mainlink_ctrl(ctrl->catalog, false);
> -
> -	msm_dp_catalog_ctrl_reset(ctrl->catalog);
> -
> -	msm_dp_ctrl_stream_clk_off(msm_dp_ctrl);
> -
> -	dev_pm_opp_set_rate(ctrl->dev, 0);
> -	msm_dp_ctrl_link_clk_disable(&ctrl->msm_dp_ctrl);
> -
> -	phy_power_off(phy);
> -	drm_dbg_dp(ctrl->drm_dev, "phy=%p init=%d power_on=%d\n",
> -			phy, phy->init_count, phy->power_count);
> -}
> -
>  irqreturn_t msm_dp_ctrl_isr(struct msm_dp_ctrl *msm_dp_ctrl)
>  {
>  	struct msm_dp_ctrl_private *ctrl;
> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.h b/drivers/gpu/drm/msm/dp/dp_ctrl.h
> index 547155ffa50fbe2f3a1f2c2e1ee17420daf0f3da..887cf5a866f07cb9038887a0634d3e1a0375879c 100644
> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.h
> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.h
> @@ -22,7 +22,7 @@ int msm_dp_ctrl_on_stream(struct msm_dp_ctrl *msm_dp_ctrl, struct msm_dp_panel *
>  int msm_dp_ctrl_prepare_stream_on(struct msm_dp_ctrl *dp_ctrl, bool force_link_train);
>  void msm_dp_ctrl_off_link_stream(struct msm_dp_ctrl *msm_dp_ctrl);
>  void msm_dp_ctrl_off_link(struct msm_dp_ctrl *msm_dp_ctrl);
> -void msm_dp_ctrl_off(struct msm_dp_ctrl *msm_dp_ctrl);
> +void msm_dp_ctrl_stream_clk_off(struct msm_dp_ctrl *msm_dp_ctrl);
>  void msm_dp_ctrl_push_idle(struct msm_dp_ctrl *msm_dp_ctrl);
>  irqreturn_t msm_dp_ctrl_isr(struct msm_dp_ctrl *msm_dp_ctrl);
>  void msm_dp_ctrl_handle_sink_request(struct msm_dp_ctrl *msm_dp_ctrl);
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index c059f749c1f204deac9dfb0c56f537f5545d9acb..b0458bbc89e934ca33ed5af3f2a8ebca30b50824 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -911,7 +911,9 @@ static int msm_dp_display_disable(struct msm_dp_display_private *dp)
>  	if (dp->link->sink_count == 0)
>  		msm_dp_ctrl_psm_config(dp->ctrl);
>  
> -	msm_dp_ctrl_off(dp->ctrl);
> +	msm_dp_ctrl_stream_clk_off(dp->ctrl);
> +
> +	msm_dp_ctrl_off_link(dp->ctrl);
>  
>  	/* re-init the PHY so that we can listen to Dongle disconnect */
>  	if (dp->link->sink_count == 0)
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

