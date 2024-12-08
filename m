Return-Path: <devicetree+bounces-128279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8647E9E84BC
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 12:44:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51DB81884A1D
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 11:44:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FEFA14600C;
	Sun,  8 Dec 2024 11:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R0Fp0xEg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738A41411EB
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 11:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733658275; cv=none; b=og0hPU0M7lG6JQSuUJQnQ4bCBrxDx+KLKM4QxlYBEhXh/aHRlf1E8Qyo8Fpy3UPQcSIYkQJB9/BfFTzArXg5Uek2UJm+CVF8G/DPbZiN57GhoiVp17am936VfITGeWMUr6Dhm4l5+ERRcHAl5icBk6+QYc9qwM1bYabNZJq/aUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733658275; c=relaxed/simple;
	bh=ciRVCY2cAnV5xx5DcSY2B4TIHyF1IaTnE6dFk05xxDU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j6Bk7A5T1v3gC/UIZUQmRspCSVs+xxie/BedZ1AV2dxmk7vZX1SPlkWx/Jb9v/KlltMukg4/WsijncwShqbG5rk5mmdbjhm9AX37IDTtd2uUSxjx6XyEsY1+dXdIIKbV2pnHM7jw2X3GosUGp3lT/BrkThKkNUUhRzAP//bH8b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R0Fp0xEg; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30020d33d05so30905691fa.0
        for <devicetree@vger.kernel.org>; Sun, 08 Dec 2024 03:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733658272; x=1734263072; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eWB3sye8cWIxHYXqy1h9WuTO1cA5DNUjc+3vEKAXYac=;
        b=R0Fp0xEghX77K66f13VKVKiKaQk4yg4MGbbc6LD8lKuZeuxvDpjKdlschjt+89AxoS
         M9ZfHgP4A8ohbWxLcUWJEi6hcoyXfhtTqz3qcEj7lvTApMPDsyc7MyQI7rkALOXsIxcW
         g15WprL9ea2Yrdt8RIHxHYgVrGFmiNHXLs/Pg+BezO8LFVUabdH50sOMTZMFnmkYDNGC
         UjSt9N0ZgiS5qCYtgdNa6vHDcgGIL2uHojby4Ivs1jbsXN6216+pSg+FehNPCcowxmkJ
         U9GRaYj0fLPWGu+odg+vrAnz8Pu9Zd6ffvtH8cbPWDp5M028h24JghBzIAIWAEJXZORs
         36tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733658272; x=1734263072;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eWB3sye8cWIxHYXqy1h9WuTO1cA5DNUjc+3vEKAXYac=;
        b=CW4sbYo8qxvf4aIe+yCmutCoKe3KqLMcE8HR4c3ZG094Xicbe9dyP4usYDbzIgPQl5
         lBFRiSW/c7Vm8VSZdwgRPyMh8rLpU9BSpttfq6Ba8dqOq2XZ3uDtYZ6BmBxmPq30TXPk
         BdmlMaAQoP0Xl2g58IRFJ55L12vuL4/Tfxv5GHh66iZDRurG1H6SxpD+yNVxfNGk5Hk3
         IqgGzHE6KlhWCYhbhFqNFfK9d2g1ZFdt3iFWeWGC0Ho3MbQZezVa/IvuioriZYA2dDS6
         MgljWqBhjVuKOuqNqyBin6x3G/xv57kmzbEbaIlXz/b7+CWvejjfZElv0pIoj8vwoTgl
         9ReQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAPmYABrfeGGCZwuauEao5d4mQ9GJaJRc3ue0ZW50sS3b/zPMeoCVnOC0yaMDVXIZj3MMTAuv53ctm@vger.kernel.org
X-Gm-Message-State: AOJu0YxkTxRHuXhF3KEWUA/eCBs8qtv0Mkq50dlJVO4u9eHVIMgHBRV/
	CgoEvLE9ECNkF1C5zI2Rlu5IX2TVM0aj7WcPUaZCF7ieKkUZmk7FQAITn4SzAzE=
X-Gm-Gg: ASbGncu4SQv5d1jDMAy0DzaZ6WH73Dd3gAe9B+aJDqIB5oCSISsln51rVaFBOIVOWfz
	ng5AS5PQalPchpHVxppCtzL6kFH2rTKpPzv59q9VgGMKPvugefIV+DaC+cyxf/YkCdkO5kCvnVa
	A6LPYJY8+SWWwZP+jyf1CG0/2/9M6OZLA/XvGAkG/YWGsnTzkwpxdfnmbaGgo0UVFoLMUJ5I2qB
	iD2nWcPf8AvLH1nqptOruPfc9hdERJs+iKt9WMlnD5xQQpXHtpI+zZUTGHXpSxINWkWvimUg6Tt
	6JJPYw32TjZ4HdKQSudZ5AhzPMNU5A==
X-Google-Smtp-Source: AGHT+IF9OLSj0xMfFrYE07UenkQPdpJOUslvuXVUW/CXO34qS9IIktGa66/ZoTzyAzDfoEFHUCLSFw==
X-Received: by 2002:a05:651c:1614:b0:302:1d85:1045 with SMTP id 38308e7fff4ca-3021d851207mr5037341fa.20.1733658271617;
        Sun, 08 Dec 2024 03:44:31 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30020e6fbcfsm10100841fa.121.2024.12.08.03.44.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 03:44:30 -0800 (PST)
Date: Sun, 8 Dec 2024 13:44:27 +0200
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
Subject: Re: [PATCH 23/45] drm/msm/dp: always program MST_FIFO_CONSTANT_FILL
 for MST
Message-ID: <lks6otgplrjldckvce6a3jrofefm7q3kp5swab6y5hk22iz6f3@lp2pg7kzzhoq>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-23-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-23-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:31:54PM -0800, Abhinav Kumar wrote:
> As required by the hardware programming guide, always program
> the MST_FIFO_CONSTANT_FILL for MST use-cases.
> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_catalog.c | 24 ++++++++++++++++++++++++
>  drivers/gpu/drm/msm/dp/dp_catalog.h |  1 +
>  drivers/gpu/drm/msm/dp/dp_ctrl.c    |  3 +++
>  3 files changed, 28 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_catalog.c b/drivers/gpu/drm/msm/dp/dp_catalog.c
> index 4826a698979ce7c37112812299879411c5743fa9..3cfa9fd0c6f5e664a65e6d9b74e5c9f22ad711f2 100644
> --- a/drivers/gpu/drm/msm/dp/dp_catalog.c
> +++ b/drivers/gpu/drm/msm/dp/dp_catalog.c
> @@ -1009,6 +1009,30 @@ int msm_dp_catalog_panel_timing_cfg(struct msm_dp_catalog *msm_dp_catalog, u32 t
>  	return 0;
>  }
>  
> +int msm_dp_catalog_mst_async_fifo(struct msm_dp_catalog *msm_dp_catalog)
> +{
> +	struct msm_dp_catalog_private *catalog = container_of(msm_dp_catalog,
> +							      struct msm_dp_catalog_private,
> +							      msm_dp_catalog);
> +
> +	u32 reg;
> +
> +	if (msm_dp_catalog->stream_id == DP_STREAM_0)
> +		reg = msm_dp_read_p0(catalog, MMSS_DP_ASYNC_FIFO_CONFIG);
> +	else
> +		reg = msm_dp_read_p1(catalog, MMSS_DP_ASYNC_FIFO_CONFIG);
> +
> +	/* enable MST_FIFO_CONSTANT_FILL */
> +	reg |= BIT(0);

#define

> +
> +	if (msm_dp_catalog->stream_id == DP_STREAM_0)
> +		msm_dp_write_p0(catalog, MMSS_DP_ASYNC_FIFO_CONFIG, reg);
> +	else
> +		msm_dp_write_p1(catalog, MMSS_DP_ASYNC_FIFO_CONFIG, reg);
> +
> +	return 0;
> +}
> +
>  static void msm_dp_catalog_panel_send_vsc_sdp(struct msm_dp_catalog *msm_dp_catalog, struct dp_sdp *vsc_sdp)
>  {
>  	struct msm_dp_catalog_private *catalog;
> diff --git a/drivers/gpu/drm/msm/dp/dp_catalog.h b/drivers/gpu/drm/msm/dp/dp_catalog.h
> index 323858c587f85996d296156c7b8b201cdb7b7eb4..0025ecc0adb2f351c44f10af82332a6622749416 100644
> --- a/drivers/gpu/drm/msm/dp/dp_catalog.h
> +++ b/drivers/gpu/drm/msm/dp/dp_catalog.h
> @@ -150,5 +150,6 @@ void msm_dp_catalog_mst_channel_alloc(struct msm_dp_catalog *ctrl,
>  				      u32 ch, u32 ch_start_slot, u32 tot_slot_cnt);
>  void msm_dp_catalog_ctrl_update_rg(struct msm_dp_catalog *ctrl, u32 stream,
>  				   u32 x_int, u32 y_frac_enum);
> +int msm_dp_catalog_mst_async_fifo(struct msm_dp_catalog *dp_catalog);
>  
>  #endif /* _DP_CATALOG_H_ */
> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> index 2288c379283c721a01c81302f8d307d0b3c76527..d4915a962f97b3d2a347456e197265a5dc043eb0 100644
> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> @@ -236,6 +236,9 @@ static void msm_dp_ctrl_configure_source_params(struct msm_dp_ctrl_private *ctrl
>  	cc = msm_dp_link_get_colorimetry_config(ctrl->link);
>  	msm_dp_catalog_ctrl_config_misc(ctrl->catalog, cc, tb);
>  	msm_dp_panel_timing_cfg(msm_dp_panel);
> +
> +	if (ctrl->mst_active)
> +		msm_dp_catalog_mst_async_fifo(ctrl->catalog);

Should it be disabled further on in a non-MST case?

>  }
>  
>  /*
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

