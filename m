Return-Path: <devicetree+bounces-75554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D101907B3A
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 20:24:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52AF41C20C14
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 18:24:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F182614AD1E;
	Thu, 13 Jun 2024 18:24:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relay05.th.seeweb.it (relay05.th.seeweb.it [5.144.164.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E429144D0C
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 18:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.144.164.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718303071; cv=none; b=Xzd4vr+jzSYsjtJWGsGBLgHklnUfYUBhXtLi8Cir67AYDKhxN3aGi35dEwPcjNF8EX6v9p0+HXMeSPtk/42aOXymNMRu+UfXYOVOXTpoWAf3kRj14DA4TxMBbM9+HFtEdr30hG/6wdpYRVzCXTBZJeNTPINzVIz/tG6Jvx0i/G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718303071; c=relaxed/simple;
	bh=FyhONvgPMFErEikD2z68HaPmcB+qkibRWuML8fkUFAM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gk3y5mO82nijt6Z/abkqc8mW477NkUGfQQ3evfDm6XWcH5Npp/9AGYafcVrjSlFWdny3tkAjh2FzyZ1vSOJ3tMsFY8zZ7K7DouqkIfZkhG+rL7XpaqnJBKCEGvSKPkqF39C92AY6iv51jDSH62vS7BhfuPcJ3zDcr+XiA0uOCLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org; spf=pass smtp.mailfrom=somainline.org; arc=none smtp.client-ip=5.144.164.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=somainline.org
Received: from SoMainline.org (94-211-6-86.cable.dynamic.v4.ziggo.nl [94.211.6.86])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 9DE433E9C7;
	Thu, 13 Jun 2024 20:24:27 +0200 (CEST)
Date: Thu, 13 Jun 2024 20:24:26 +0200
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
Subject: Re: [PATCH v2 6/8] drm/msm/dsi: parse vsync source from device tree
Message-ID: <wacf234ei535ruqhmrmbpt6fqtlsi57242gsackxzso6ri7jhc@wvldjncf44le>
References: <20240613-dpu-handle-te-signal-v2-0-67a0116b5366@linaro.org>
 <20240613-dpu-handle-te-signal-v2-6-67a0116b5366@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240613-dpu-handle-te-signal-v2-6-67a0116b5366@linaro.org>

On 2024-06-13 20:05:09, Dmitry Baryshkov wrote:
> Allow board's device tree to specify the vsync source (aka TE source).
> If the property is omitted, the display controller driver will use the
> default setting.

Well, that specific default handling is not really part of this patch, but
how a followup patch is going to respond when msm_dsi_get_te_source() returns
NULL. (Or how that followup patch is expected to deal with that - worth a
doc-comment?)

> 
> Reviewed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>

> ---
>  drivers/gpu/drm/msm/dsi/dsi.h         |  1 +
>  drivers/gpu/drm/msm/dsi/dsi_host.c    | 11 +++++++++++
>  drivers/gpu/drm/msm/dsi/dsi_manager.c |  5 +++++
>  drivers/gpu/drm/msm/msm_drv.h         |  6 ++++++
>  4 files changed, 23 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/dsi/dsi.h b/drivers/gpu/drm/msm/dsi/dsi.h
> index afc290408ba4..87496db203d6 100644
> --- a/drivers/gpu/drm/msm/dsi/dsi.h
> +++ b/drivers/gpu/drm/msm/dsi/dsi.h
> @@ -37,6 +37,7 @@ struct msm_dsi {
>  
>  	struct mipi_dsi_host *host;
>  	struct msm_dsi_phy *phy;
> +	const char *te_source;
>  
>  	struct drm_bridge *next_bridge;
>  
> diff --git a/drivers/gpu/drm/msm/dsi/dsi_host.c b/drivers/gpu/drm/msm/dsi/dsi_host.c
> index c4d72562c95a..c26ad0fed54d 100644
> --- a/drivers/gpu/drm/msm/dsi/dsi_host.c
> +++ b/drivers/gpu/drm/msm/dsi/dsi_host.c
> @@ -1786,9 +1786,11 @@ static int dsi_populate_dsc_params(struct msm_dsi_host *msm_host, struct drm_dsc
>  
>  static int dsi_host_parse_dt(struct msm_dsi_host *msm_host)
>  {
> +	struct msm_dsi *msm_dsi = platform_get_drvdata(msm_host->pdev);
>  	struct device *dev = &msm_host->pdev->dev;
>  	struct device_node *np = dev->of_node;
>  	struct device_node *endpoint;
> +	const char *te_source;
>  	int ret = 0;
>  
>  	/*
> @@ -1811,6 +1813,15 @@ static int dsi_host_parse_dt(struct msm_dsi_host *msm_host)
>  		goto err;
>  	}
>  
> +	ret = of_property_read_string(endpoint, "qcom,te-source", &te_source);
> +	if (ret && ret != -EINVAL) {
> +		DRM_DEV_ERROR(dev, "%s: invalid TE source configuration %d\n",
> +			__func__, ret);
> +		goto err;
> +	}
> +	if (!ret)
> +		msm_dsi->te_source = devm_kstrdup(dev, te_source, GFP_KERNEL);
> +
>  	if (of_property_read_bool(np, "syscon-sfpb")) {
>  		msm_host->sfpb = syscon_regmap_lookup_by_phandle(np,
>  					"syscon-sfpb");
> diff --git a/drivers/gpu/drm/msm/dsi/dsi_manager.c b/drivers/gpu/drm/msm/dsi/dsi_manager.c
> index 5b3f3068fd92..a210b7c9e5ca 100644
> --- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
> +++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
> @@ -603,3 +603,8 @@ bool msm_dsi_is_master_dsi(struct msm_dsi *msm_dsi)
>  {
>  	return IS_MASTER_DSI_LINK(msm_dsi->id);
>  }
> +
> +const char *msm_dsi_get_te_source(struct msm_dsi *msm_dsi)
> +{
> +	return msm_dsi->te_source;
> +}
> diff --git a/drivers/gpu/drm/msm/msm_drv.h b/drivers/gpu/drm/msm/msm_drv.h
> index 912ebaa5df84..afd98dffea99 100644
> --- a/drivers/gpu/drm/msm/msm_drv.h
> +++ b/drivers/gpu/drm/msm/msm_drv.h
> @@ -330,6 +330,7 @@ bool msm_dsi_is_bonded_dsi(struct msm_dsi *msm_dsi);
>  bool msm_dsi_is_master_dsi(struct msm_dsi *msm_dsi);
>  bool msm_dsi_wide_bus_enabled(struct msm_dsi *msm_dsi);
>  struct drm_dsc_config *msm_dsi_get_dsc_config(struct msm_dsi *msm_dsi);
> +const char *msm_dsi_get_te_source(struct msm_dsi *msm_dsi);
>  #else
>  static inline void __init msm_dsi_register(void)
>  {
> @@ -367,6 +368,11 @@ static inline struct drm_dsc_config *msm_dsi_get_dsc_config(struct msm_dsi *msm_
>  {
>  	return NULL;
>  }
> +
> +static inline const char *msm_dsi_get_te_source(struct msm_dsi *msm_dsi)
> +{
> +	return NULL;
> +}
>  #endif
>  
>  #ifdef CONFIG_DRM_MSM_DP
> 
> -- 
> 2.39.2
> 

