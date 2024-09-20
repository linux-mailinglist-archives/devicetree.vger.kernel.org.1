Return-Path: <devicetree+bounces-104183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE3D97D81F
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 18:15:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B5BB1C22E59
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 16:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED1AF17E008;
	Fri, 20 Sep 2024 16:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aRMT7T43"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE3117CA12
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 16:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726848938; cv=none; b=fyV1d8W0zZSti6qUZMTieytTObhW3lTlNBRZZcZUJn6u2B+w9Ggk/CXdtvoIwGPUdR53vc7zj12ykT/B6AW8wJSZrR6fKgdQmkca1+5XU/28Te3tdbpf3W4ks20FYdZdSkHzesP5n+7MbSQFdserH1nlk651siMuhZS5tEoMS2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726848938; c=relaxed/simple;
	bh=fwvgc0THKy30OkB1WygzlAFbBEAQ+F5qEbA4OYcOz/A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BNrQkA8oPqTaUqHx9Qy/cgM7wNvW1GJzCgtJsBntxZasveyZcMD57G75PDxwhqWoPq+0AGR8tIvh5YaZ0LThqO4cuJHqQhYSD30oXCb7Gb1Yf8xu4AnpD0fY/NhDVZcPz1aDmW8TWCJmLIl5UnMXdI1lMji48ENqO+yMwBRS7n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aRMT7T43; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2f758f84dfbso18336771fa.0
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 09:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726848934; x=1727453734; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OphryypYhfPdy6rBIHDWj5NDLRZZ7WPbVgTSeJ1lao0=;
        b=aRMT7T43G9UA+T1N0gM5yb2G//C9zNXyEixuPjqQUXTKK15X4/Fdgs2pluSB6srcJP
         fIS4X18vJYIZ3PZLxUGJW3P8VkzfOgK2J0k+7Jaf4seRAGohAl2yR13Zd//Qt7dNgcT8
         xwH7bMJBklVEvf2wOk5TIbJKFUD91qAgajz0hIEyb8uW37jt3Nj/AQ1M3NWfsB4IdtNh
         3CaOryTz83zAhYIVXVXc7TjRKW3dYVv7n+MzIqRPQPUACVmyzrZix7pOcQRureZPCLA+
         TLc1HOXrWjZIikQV8wx1FT1/y9ijAxBPp6+Rt6l4//nM7eRJ+77JBwAqZOyAHdkzC6ec
         vO9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726848934; x=1727453734;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OphryypYhfPdy6rBIHDWj5NDLRZZ7WPbVgTSeJ1lao0=;
        b=PzU04yeiZ7/y/tqiHeyUb45bLi9Tl4Oyb6y5QyMcZqdkH/uWEPc0tNXfkNl8kRiYQu
         /yWqtsEuTwlh3s0sTigiSrQ7CaJ9CvzhaYfM9MS8g4cV2h8WRjr6dXJtN47Q9x5z6NR4
         busxc1hepLvEzfvGjGgQ7UUCerGkW6tMsyTSnXzvTewHtCZZsjHagP/1ffQ6wA6EiVjf
         ySMldPqPyIBjCm8XGMwToVHbd7DybvwNDJgvjiz7uQCN1vhHxH5PeMbvsOC8z5fJIMF5
         9nroAITTbg5+xZzSAvk80ETQXmotL+CyikQeIPYF+x/s5NwIle1WK+D3K59TJPMIa1pS
         MjMg==
X-Forwarded-Encrypted: i=1; AJvYcCWqkT5xKfZNQqlzF6Co+M5Oyf+NzdQIz+wmsIWIx1wMnwlAb6fZzaDYiprVB55cHAt04/qnn9wAOui4@vger.kernel.org
X-Gm-Message-State: AOJu0YzyFrFERtXt/yMowKOwEiOW0Oz/EynNQcqpKkvt1ettxBgBFBL1
	UX0vUv3uUynGFWk4PNTOLAGtzUZZxeTp85TBKy9cumc8GzYE8y9wB7b8Jasxd4Y=
X-Google-Smtp-Source: AGHT+IEGHGUdUWQyazsMFQmJdp2djSmBtEZyN6StbnToxoxWrnrCaZOygmkknGml8O6B+Ei/Yiy7tA==
X-Received: by 2002:a2e:4a19:0:b0:2f7:586d:e5d9 with SMTP id 38308e7fff4ca-2f7cb31ac60mr19530151fa.16.1726848934007;
        Fri, 20 Sep 2024 09:15:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f79d3002e2sm20270461fa.31.2024.09.20.09.15.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 09:15:32 -0700 (PDT)
Date: Fri, 20 Sep 2024 19:15:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manikandan Muralidharan <manikandan.m@microchip.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux@armlinux.org.uk, nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, 
	claudiu.beznea@tuxon.dev, dharma.b@microchip.com, arnd@arndb.de, 
	hari.prasathge@microchip.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 2/4] drm/bridge: add Microchip DSI controller support
 for sam9x7 SoC series
Message-ID: <pjc75xbvdn4n7tqzjx33st2lf6bzryrs7zixahbv7j4fi5xa7j@xujs6wx7qeqs>
References: <20240918103119.385597-1-manikandan.m@microchip.com>
 <20240918103119.385597-3-manikandan.m@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240918103119.385597-3-manikandan.m@microchip.com>

On Wed, Sep 18, 2024 at 04:01:17PM GMT, Manikandan Muralidharan wrote:
> Add the Microchip's DSI controller wrapper driver that uses
> the Synopsys DesignWare MIPI DSI host controller bridge.
> 
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
> ---
> changes in v4:
> - Fixed issues reported by kernel test robot
> - replaced syscon_regmap_lookup_by_phandle with
> syscon_regmap_lookup_by_compatible
> 
> changes in v3:
> - make remove callback return void
> 
> changes in v2:
> - use static const with global variables
> - replace dev_err with dev_err_probe
> - move clk_prepare_enable to simplify the error path
> - use FIELD_PREP calls
> - remove unused macros and unused functions
> - rename function name with mchp_ suffix
> - add suspend and resume pm calls to handle pllref_clk
> ---
>  drivers/gpu/drm/bridge/Kconfig            |   8 +
>  drivers/gpu/drm/bridge/Makefile           |   1 +
>  drivers/gpu/drm/bridge/dw-mipi-dsi-mchp.c | 545 ++++++++++++++++++++++
>  3 files changed, 554 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/dw-mipi-dsi-mchp.c
> 
> diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
> index 683cb33805b2..317246509601 100644
> --- a/drivers/gpu/drm/bridge/Kconfig
> +++ b/drivers/gpu/drm/bridge/Kconfig
> @@ -196,6 +196,14 @@ config DRM_MICROCHIP_LVDS_SERIALIZER
>  	help
>  	  Support for Microchip's LVDS serializer.
>  
> +config DRM_MICROCHIP_DW_MIPI_DSI
> +	tristate "Microchip specific extensions for Synopsys DW MIPI DSI"
> +	depends on DRM_ATMEL_HLCDC
> +	select DRM_DW_MIPI_DSI
> +	help
> +	  This selects support for Microchip's SoC specific extensions
> +	  for the Synopsys DesignWare dsi driver.
> +
>  config DRM_NWL_MIPI_DSI
>  	tristate "Northwest Logic MIPI DSI Host controller"
>  	depends on DRM
> diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
> index 3daf803ce80b..32e4233e6b5e 100644
> --- a/drivers/gpu/drm/bridge/Makefile
> +++ b/drivers/gpu/drm/bridge/Makefile
> @@ -14,6 +14,7 @@ obj-$(CONFIG_DRM_LONTIUM_LT9611UXC) += lontium-lt9611uxc.o
>  obj-$(CONFIG_DRM_LVDS_CODEC) += lvds-codec.o
>  obj-$(CONFIG_DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW) += megachips-stdpxxxx-ge-b850v3-fw.o
>  obj-$(CONFIG_DRM_MICROCHIP_LVDS_SERIALIZER) += microchip-lvds.o
> +obj-$(CONFIG_DRM_MICROCHIP_DW_MIPI_DSI) += dw-mipi-dsi-mchp.o
>  obj-$(CONFIG_DRM_NXP_PTN3460) += nxp-ptn3460.o
>  obj-$(CONFIG_DRM_PARADE_PS8622) += parade-ps8622.o
>  obj-$(CONFIG_DRM_PARADE_PS8640) += parade-ps8640.o
> diff --git a/drivers/gpu/drm/bridge/dw-mipi-dsi-mchp.c b/drivers/gpu/drm/bridge/dw-mipi-dsi-mchp.c
> new file mode 100644
> index 000000000000..35cfca1ff000
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/dw-mipi-dsi-mchp.c
> @@ -0,0 +1,545 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2024 Microchip Technology Inc. and its subsidiaries
> + *
> + * Author: Manikandan Muralidharan <manikandan.m@microchip.com>
> + *
> + */
> +

[...]

> +
> +static int dw_mipi_dsi_mchp_get_lane_mbps(void *priv_data,
> +					  const struct drm_display_mode *mode,
> +					  unsigned long mode_flags, u32 lanes,
> +					  u32 format, unsigned int *lane_mbps)
> +{
> +	struct dw_mipi_dsi_mchp *dsi = priv_data;
> +	unsigned long best_freq, fvco_min, fvco_max, fin, fout;
> +	unsigned long min_delta = ULONG_MAX, delta;
> +	unsigned int target_mbps = 0, mpclk, desired_mbps;
> +	unsigned int max_mbps = dppa_map[ARRAY_SIZE(dppa_map) - 1].max_mbps;
> +	unsigned int min_prediv, max_prediv;
> +	unsigned int _fbdiv, best_fbdiv, _prediv, best_prediv;
> +	int bpp;
> +	u64 freq_factor;

This function is significantly overlapping with dw_mipi_dsi_get_lane_mbps().
Please extract a common helper and add it to dw-mipi-dsi.c. Other than
that, LGTM.

> +
> +	dsi->format = format;
> +	bpp = mipi_dsi_pixel_format_to_bpp(dsi->format);
> +	if (bpp < 0) {
> +		dev_err(dsi->dev,
> +			"failed to get bpp for pixel format %d\n",
> +			dsi->format);
> +		return bpp;
> +	}
> +
-- 
With best wishes
Dmitry

