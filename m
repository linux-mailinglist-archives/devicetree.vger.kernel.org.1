Return-Path: <devicetree+bounces-112917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7B39A3DF4
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 14:15:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 129081F24300
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 12:15:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA30517578;
	Fri, 18 Oct 2024 12:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qacFLmdb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3B02CA5B
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 12:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729253709; cv=none; b=Ay9eF+KGTda2MVrLIXlhePITJF5RdYLJctGW3Om50Q0k2EgvB62pFyk0OJZmFPZzmjeR9yEYvUsJtV70Uo/+NHpYnfFsUdKQWWta2rCu6HLAxix7ViCXdrDFLEtessRxtPDMFqG9GrHP6zH84fteChBo8nKvLxDfE9V4I3VHXMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729253709; c=relaxed/simple;
	bh=now3J6G/3UbZHE/WU7lQXQuwfG3tyrUmFgArj673/oY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L4/sFMdeCsG1oJI7IAK9kE63Lb/tExkaWPTFZUOlMrLPfN6DOrcUroVxGbzbhFh7sPuM9nalsxxv2usiP/+rn4edS6FSRhpmD+AtXFcnzxT/TiockySrZ2yRA/sTl9EYzmEZibrSatTwY+PtzzNxExwl47xVdrac1K5+EGt0a2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qacFLmdb; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fb5740a03bso24289341fa.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 05:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729253706; x=1729858506; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QjL3pHhlawZmked9cDer2cCqaq7RfeznftLlGVpNcgU=;
        b=qacFLmdbv3M6lPk1Zl4m0BJwqmNpjCKaMDd3Ujga13csVqAa7MZAOxazsyLuFSSGZU
         xP6D7Uh3dKSYB4vhd7freRCHBXWAnUfbU39dRFY2BQGntuJAoNUqSpWZJ7b+Zm3cg1qh
         FG0ZZNZ+75u583IfvhaUh15Bvlh+9AenoozSNDn0Rv7Beve9fT+URw9MxOPrtaf3c1ao
         Do0+yLpIT1Bd+Vt7Uh/96t6e2C7SB0YJq0zryCXHf7o1CfjVeKp92DshMRxSeC2eOmvz
         uAFvJJ6LIPEfeLzJpetX/HG76mb1B96d5YNR4qs39RGGKbCwGRLtAb/0Cr8WPNxZiNX8
         qwNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729253706; x=1729858506;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QjL3pHhlawZmked9cDer2cCqaq7RfeznftLlGVpNcgU=;
        b=PcWD0dCUlJyqSCkgxaqgArl/ZKDlMfAxuz1sFbRNjcqq1bRYblJf3ueVwDKZ8knoXQ
         N1MSS/wg7Tbqi+LNW7qvTGWMk7IBT1Y+e6Cnd8Og8UywPlKA1DDjga6eU8q/AMPoanB8
         1GElPT3UAjM3D787YErhA4r1b7JBIiOAbe8bwXviwIj4Z+d5nltjurIHioG8uvH49+nc
         UNOW0Dz4yFZDLJczpCK0FcvkGj8eAyvHd3KekgnocpgFX/FF0vxcmy5ScW5AlJ5SVQAR
         0BBqGcleryn4WlYVP0CmDO8xP0QvFMowXyG3oFqxxxCcQIg35QHLyyRz61sMU3WL7ev2
         f/rw==
X-Gm-Message-State: AOJu0YyDs5B8F/MaBEHnvAYh7HYhf/alXmBAa7ugOZDJIyCsnlOMLYaj
	AlXBc0JFvOQQkkGgKE7aUSWB3rPz5c2bnjnon/fH9sPFtEQA3ZGRixmVEK4GNPE=
X-Google-Smtp-Source: AGHT+IF5eDKvPUdoitD+7fdWywacF4U/7oQTrEfnwaNWZvVwt8eJAqa0dkV02VzR/63JN4AWDeU6JA==
X-Received: by 2002:a05:651c:b13:b0:2fb:569a:553d with SMTP id 38308e7fff4ca-2fb8323b1fdmr11544041fa.42.1729253705640;
        Fri, 18 Oct 2024 05:15:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb809f9b62sm2015311fa.96.2024.10.18.05.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 05:15:04 -0700 (PDT)
Date: Fri, 18 Oct 2024 15:15:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, marex@denx.de, stefan@agner.ch
Subject: Re: [PATCH 5/5] drm: lcdif: Use drm_bridge_connector
Message-ID: <7isauhmti3vtyseanqveizlhrwmg2iade6kixhhx27edfk4bbm@yj4mekgbvpj4>
References: <20241018064813.2750016-1-victor.liu@nxp.com>
 <20241018064813.2750016-6-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241018064813.2750016-6-victor.liu@nxp.com>

On Fri, Oct 18, 2024 at 02:48:13PM +0800, Liu Ying wrote:
> Initialize a connector by calling drm_bridge_connector_init() for
> each encoder so that down stream bridge drivers don't need to create
> connectors any more.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
>  drivers/gpu/drm/mxsfb/Kconfig     |  1 +
>  drivers/gpu/drm/mxsfb/lcdif_drv.c | 17 ++++++++++++++++-
>  2 files changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mxsfb/Kconfig b/drivers/gpu/drm/mxsfb/Kconfig
> index 264e74f45554..06c95e556380 100644
> --- a/drivers/gpu/drm/mxsfb/Kconfig
> +++ b/drivers/gpu/drm/mxsfb/Kconfig
> @@ -27,6 +27,7 @@ config DRM_IMX_LCDIF
>  	depends on DRM && OF
>  	depends on COMMON_CLK
>  	depends on ARCH_MXC || COMPILE_TEST
> +	select DRM_BRIDGE_CONNECTOR
>  	select DRM_CLIENT_SELECTION

Missing `select DRM_DISPLAY_HELPER`. LGTM otherwise.

>  	select DRM_MXS
>  	select DRM_KMS_HELPER
> diff --git a/drivers/gpu/drm/mxsfb/lcdif_drv.c b/drivers/gpu/drm/mxsfb/lcdif_drv.c
> index 58ccad9c425d..d4521da6675e 100644
> --- a/drivers/gpu/drm/mxsfb/lcdif_drv.c
> +++ b/drivers/gpu/drm/mxsfb/lcdif_drv.c
> @@ -16,7 +16,9 @@
>  
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_bridge.h>
> +#include <drm/drm_bridge_connector.h>
>  #include <drm/drm_client_setup.h>
> +#include <drm/drm_connector.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_encoder.h>
>  #include <drm/drm_fbdev_dma.h>
> @@ -56,6 +58,7 @@ static int lcdif_attach_bridge(struct lcdif_drm_private *lcdif)
>  		struct device_node *remote;
>  		struct of_endpoint of_ep;
>  		struct drm_encoder *encoder;
> +		struct drm_connector *connector;
>  
>  		remote = of_graph_get_remote_port_parent(ep);
>  		if (!of_device_is_available(remote)) {
> @@ -97,13 +100,25 @@ static int lcdif_attach_bridge(struct lcdif_drm_private *lcdif)
>  			return ret;
>  		}
>  
> -		ret = drm_bridge_attach(encoder, bridge, NULL, 0);
> +		ret = drm_bridge_attach(encoder, bridge, NULL,
> +					DRM_BRIDGE_ATTACH_NO_CONNECTOR);
>  		if (ret) {
>  			of_node_put(ep);
>  			return dev_err_probe(dev, ret,
>  					     "Failed to attach bridge for endpoint%u\n",
>  					     of_ep.id);
>  		}
> +
> +		connector = drm_bridge_connector_init(lcdif->drm, encoder);
> +		if (IS_ERR(connector)) {
> +			ret = PTR_ERR(connector);
> +			dev_err(dev, "Failed to initialize bridge connector: %d\n",
> +				ret);
> +			of_node_put(ep);
> +			return ret;
> +		}
> +
> +		drm_connector_attach_encoder(connector, encoder);
>  	}
>  
>  	return 0;
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

