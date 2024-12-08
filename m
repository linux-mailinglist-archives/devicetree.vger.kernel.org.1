Return-Path: <devicetree+bounces-128286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B49869E84E3
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 13:00:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 015D0281365
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 12:00:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BF03140E50;
	Sun,  8 Dec 2024 12:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cD/dmayR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6535D13C9A4
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 12:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733659242; cv=none; b=uzKS62bBlr18HFhi9cZoFyFyTyzaE9DBf0rz0qd8nKKq3IZgd8KGvbLG/l6AD2aucSl6yqDYnfC8Hw90XeXjnnhsRNOsfOlQOJRZFsYD/0oNnkCm7yyH9rg6Rw7t1pURRdwfHA+7q/0qpzLMJPTma5lVdUPveL9eYaxfttPCQz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733659242; c=relaxed/simple;
	bh=jWEVwdC7IM3E6ZVjKzgSy1gMvLr3I9xboOzdFIxUATw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s2VdXgBAyyiL9L6DOZzJ8bV7s+k/+wqw+Cdbs1/q4VmVP6G+Cji1FEj6jRkcaErW/oUfpF7w8994LbulDxp3G0U27MElfpXuLSgTyHa7SttKzGfnkg/HORXLRcjTbyJOB4wb/ibrgtIAuGQiiEAMGwpIwWsmLtpY3rB+w2fwskE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cD/dmayR; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30039432861so17465471fa.2
        for <devicetree@vger.kernel.org>; Sun, 08 Dec 2024 04:00:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733659238; x=1734264038; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IZQDqZh24CIlU2q7DysLNqODQ6Kiip1cX4ZxRIqPVaA=;
        b=cD/dmayR7SOWiTH+jd5UhZ1gL/EMDQsOyqsrh3rTUvfOB8IdD4Stk2/5zey0Eh3eVJ
         0tJOoH0berIZiYx8l9g1TqGr0mAiACvPpmDD5S5LlqnhxzvhKH8b54gjlB4Yt8xrmHs6
         t5TX8FkiJ7NPKAZVtUFzxLcgsZYMniTkBmsKiyKnKQEevkMJCk9N57ce/pg+hoscWOEC
         qDFcqIlgV6gjSB2Z6uT27FkKVU5ApfmYuKs+Qjc4FbRCLiPOWKUtH8f4iyJTVHYD94cJ
         adIR1pRiFHYZT2bgJiCho7nmlrcW/J8q9MQ1Iw7qWoQmwsT2QGUPT6b3GgAU2Hn+75KX
         /NFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733659238; x=1734264038;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IZQDqZh24CIlU2q7DysLNqODQ6Kiip1cX4ZxRIqPVaA=;
        b=kYA7vCJJsQPA7PAg6+JBz9GVBdu1DGIPTVVZ2iLc6weDI+2nn4N0jpOZtJKuo/TopB
         Mco3ROJ24iIZS1gqSokKuoqIPmMJvR5okER67KIaHhquGlTeee894GdPu5Zu6pufAnJK
         p6dZ6mS1G/qF/j/+M9pr332rhPKiGCqOLIGeMyZ293vKt82K22luvMR8BC8gtLXHHFX+
         eVKeSXDDYzsrpCh8xHCT+IgUypSgMlKZ4kaGnQL3/+9hBwTBDAg9S+Ey2spFXGve8MEJ
         ENs5Esel1y3CQ2IaKl8XuS7wR7+Cfn+wMo3/knbTwlOy8PqNzSOlRhcOD5R8z5Dq1Kt1
         OM1g==
X-Forwarded-Encrypted: i=1; AJvYcCWivDt63heTYhihuzhF/UtKt7GLE+/YGtEOXi24JyxplTnDQQZRDNSn2ApfqzSirg/PVGd/h0uGjhDN@vger.kernel.org
X-Gm-Message-State: AOJu0YwHXFGwpbhIqLdS5VNfP6oGmRqko/UXQQHKaeTA74BXr/I/ZG7c
	MLFpD84q7gh7ssPZBOQtGq+W4/D1CiHMljaLk/9KftGqirY4s187yUyOYQlY9IE=
X-Gm-Gg: ASbGncvs4t/5y/wk0BxJxgrPbSpfNr7hDL4Rnn2MdqumuJe+1oXcGvcGh0m8RwTRsM2
	G/n9vXNolABBYEgMQCsuuQhbRySufHFAtOz3VrFyxamydntFDQKFse+dmafjmhLSeMHC4Or+cOB
	xCJD9vi4Prn/zTzkCMH5rH1GSmRK3cKmk/LITgeLR4Kn6o6fHNRimXS745x1tTVjER7l6CnS1rP
	/ROXI6CjCvKeojETsrsCvoykoSwL/xb+cHp1Plx1xwelDDiLWqPY3mQwS6xl9HQMEdvw/wU6SEf
	vplX0RFO3xI/GP1ZZv/TqXeYugnPLQ==
X-Google-Smtp-Source: AGHT+IFtuMd2CLZMp/J0k4uDOw6R2C77JANZoosZcIAaqEzW6+8T96FmwIKt4fcpD8nXNf+JBXuB1Q==
X-Received: by 2002:a2e:bccb:0:b0:2ff:cfbb:c893 with SMTP id 38308e7fff4ca-3002f688d90mr36234661fa.6.1733659238447;
        Sun, 08 Dec 2024 04:00:38 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3022397e845sm144661fa.66.2024.12.08.04.00.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 04:00:37 -0800 (PST)
Date: Sun, 8 Dec 2024 14:00:34 +0200
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
Subject: Re: [PATCH 43/45] drm/msm/dp: populate the max_streams for sa8775
 mst controller
Message-ID: <5hmhxnqp3ix636jdsxqgmdkrzvsduax4ft5uec35qduuwif2rz@pwbm6hchctrw>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-43-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-43-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:32:14PM -0800, Abhinav Kumar wrote:
> Populate the max_streams for DP controllers to indicate MST support.
> 
> If the pixel clock handle for the second stream fails, treat it as
> SST case rather than a complete failure.

Could you possibly clarify:
- Are there MSM DP controllers which do not support MST?
- Are there MSM DP controller which support more than 2 streams?

It might be easier to to set max_streams statically rather than setting
it via the descs.

> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c    |  9 +++++++++
>  drivers/gpu/drm/msm/dp/dp_ctrl.h    |  2 ++
>  drivers/gpu/drm/msm/dp/dp_display.c | 13 ++++++++++---
>  3 files changed, 21 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> index d4915a962f97b3d2a347456e197265a5dc043eb0..0e5ebcdab00936cf0ce6e35514f2932158530cc0 100644
> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> @@ -2438,6 +2438,15 @@ static int msm_dp_ctrl_clk_init(struct msm_dp_ctrl *msm_dp_ctrl)
>  	return 0;
>  }
>  
> +int msm_dp_ctrl_get_stream_cnt(struct msm_dp_ctrl *msm_dp_ctrl)
> +{
> +	struct msm_dp_ctrl_private *ctrl;
> +
> +	ctrl = container_of(msm_dp_ctrl, struct msm_dp_ctrl_private, msm_dp_ctrl);
> +
> +	return ctrl->num_pixel_clks;
> +}
> +
>  struct msm_dp_ctrl *msm_dp_ctrl_get(struct device *dev, struct msm_dp_link *link,
>  			struct msm_dp_panel *panel,	struct drm_dp_aux *aux,
>  			struct msm_dp_catalog *catalog,
> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.h b/drivers/gpu/drm/msm/dp/dp_ctrl.h
> index 9ad7022d6217572395d69294c3cc4d4dbaddf0ac..f72a499809ec01a9cc5bb79762bc2604820426a1 100644
> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.h
> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.h
> @@ -54,4 +54,6 @@ void msm_dp_ctrl_set_mst_channel_info(struct msm_dp_ctrl *msm_dp_ctrl,
>  				      u32 start_slot, u32 tot_slots);
>  void msm_dp_ctrl_push_vcpf(struct msm_dp_ctrl *dp_ctrl, struct msm_dp_panel *msm_dp_panel);
>  
> +int msm_dp_ctrl_get_stream_cnt(struct msm_dp_ctrl *dp_ctrl);
> +
>  #endif /* _DP_CTRL_H_ */
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index 528cda1453a85f5f8dd37bb0d2366548016c88e4..db563af19461089dbcaccce0d03fd03d5aa567aa 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -126,6 +126,7 @@ struct msm_dp_desc {
>  	unsigned int id;
>  	bool wide_bus_supported;
>  	const unsigned int *intf_map;
> +	unsigned int max_streams;
>  };
>  
>  /* to be kept in sync with enum dpu_intf of dpu_hw_mdss.h */
> @@ -149,10 +150,10 @@ static const unsigned int stream_intf_map_sa_8775p[][DP_STREAM_MAX] = {
>  };
>  
>  static const struct msm_dp_desc msm_dp_desc_sa8775p[] = {
> -	{ .io_start = 0x0af54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true,
> +	{ .io_start = 0x0af54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true, .max_streams = 2,
>  	  .intf_map = stream_intf_map_sa_8775p[MSM_DP_CONTROLLER_0],
>  	},
> -	{ .io_start = 0x0af5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true,
> +	{ .io_start = 0x0af5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true, .max_streams = 2,
>  	  .intf_map = stream_intf_map_sa_8775p[MSM_DP_CONTROLLER_1],
>  	},
>  	{ .io_start = 0x22154000, .id = MSM_DP_CONTROLLER_2, .wide_bus_supported = true },
> @@ -1481,7 +1482,10 @@ int msm_dp_get_mst_max_stream(const struct msm_dp *dp_display)
>  
>  	dp_priv = container_of(dp_display, struct msm_dp_display_private, msm_dp_display);
>  
> -	return dp_priv->max_stream;
> +	if (dp_priv->max_stream == msm_dp_ctrl_get_stream_cnt(dp_priv->ctrl))
> +		return dp_priv->max_stream;
> +	else
> +		return DEFAULT_STREAM_COUNT;
>  }
>  
>  int msm_dp_mst_bridge_init(struct msm_dp *dp_display, struct drm_encoder *encoder)
> @@ -1517,6 +1521,9 @@ static int msm_dp_display_probe(struct platform_device *pdev)
>  
>  	dp->max_stream = DEFAULT_STREAM_COUNT;
>  
> +	if (desc->max_streams > DEFAULT_STREAM_COUNT)
> +		dp->max_stream = desc->max_streams;
> +
>  	dp->intf_map = desc->intf_map;
>  
>  	rc = msm_dp_init_sub_modules(dp);
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

