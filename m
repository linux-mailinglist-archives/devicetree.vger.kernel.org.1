Return-Path: <devicetree+bounces-55722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 745C989629B
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 04:37:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1ABF28217E
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 02:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55EF23D76;
	Wed,  3 Apr 2024 02:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gFkVB1/I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB22A1C684
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 02:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712111855; cv=none; b=tqKAVu0gLYzP7aJjEmnjQGRSTsq++7xtwGo8ZoCZA9OphVJqBrxit1hJosq0FyUFn1hamu4iZGUfetZu6WMWlAvX5RIWCOEt33rIY+kOTtUpFVl4hPvdwUhxdkWjB4cq+1IiYIjIx7HBaKJg5UYEFKwPhOWOncAR2Qw7Fc4OVUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712111855; c=relaxed/simple;
	bh=jQ1fmTFs1Q5VDJglexJctfCkz2HSxRn+4cIpO6FgXg4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hJJiyl1OLiboI8nuvG2qCN+gIsT7/HqSJqtomkUanrmkgyvn0LLWQ9oWGd6biduCzc5WsePXbs1eDjQ2PKMUh4BHaCxcQAkOgacHpIGFvUYexUyDer+op9crCHmcdus9ED+xMyGMLZ1UAqxGrnrphb2qtUDx0OJzdU4qFJAfpbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gFkVB1/I; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2d718efedb2so87336401fa.0
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 19:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712111851; x=1712716651; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dwUhQJCTiwA6K703L8j80vU3/B/zOGBbqsDy8+0IuWQ=;
        b=gFkVB1/I8X86lhxUeUpMegXaRzvQj5NuqVoPtozRnFN2AGsF6LgNFv9lxbYnci55+m
         lnm1zZmPhCRLbe8sDu/k2ATrQRF0YunOlB3mOcBcFYeBHr72kznvDs16rwnEU5r0P4AM
         aJL99ztCBGtDv1wnq+8F93fePAe9pcA2kxFhvAJjyatajBHd7b7b8cXzINfkjXPiWBNa
         drke8/1rJ6+LM2hvD0OdgYqxkLNeOmwm9QBsQXKcrbtJg9sckr+ZzMr2GmiGe4wpiwoz
         OaYhBGu8QnhhRSEk97e+4UOM3syHBvrM/FD8Xy7yXr/JRq9+n2WeBqbwm425YqhriAiQ
         YbEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712111851; x=1712716651;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dwUhQJCTiwA6K703L8j80vU3/B/zOGBbqsDy8+0IuWQ=;
        b=UiXJWOo70K90QY9G5LFYCOMqKvhDu81/pVnpDQhk4E3jUbde2VaigbfcGwiLiXPQYJ
         cuI4FGWwX/sytM8Zpk9FnHQ5vH05XxfQZJkm4r/DDK9haZpaQOeluN6ZcC07z4eRV72y
         JePxRtyAHZeo6vpL+idf60YGkJFcevidoN/qsxk4aYPQ9uOucJDMoumK0Nk4wELFxn6b
         sBRlfHTpN5WM6T5iUVwCXkcRhVLyvbXOJw3ApxVBeXPVr7dzjHoWyWXLmnXKsu52rYa1
         M4yKh9B13MpJcWvqqyJkOTVLlaO8VATa4GEsRaEQQr0NAn5TGHfeOg79xCGL6A2j67lB
         cGWA==
X-Forwarded-Encrypted: i=1; AJvYcCWtOwstDv5b91h/jmv8USptyc8w7ryoWB/vcdG++3My18ixnIfQEtA7WrzpuacCPlYC13GzcaOn6/UtWSTs9m63AP5cfYFg7CcaPw==
X-Gm-Message-State: AOJu0YyQ3xgSfaGv0CO0oQQDUeIDZW2I+GRsRACqzUVAqmORTCUBHHGU
	ZYI5AnT+NADPiQk0FfWBfyL3x1vLZTEicIrwCGj7MH9ZAJ5OXS+Tsf+BTnSTryM=
X-Google-Smtp-Source: AGHT+IGvh9ZZDi1fZMUrq+ujIZU/O6PjrYcydFGaUVcC/oTRJabULftteEvCmvGhOG8/yyy0G0Usrw==
X-Received: by 2002:a2e:8456:0:b0:2d4:94eb:e9fe with SMTP id u22-20020a2e8456000000b002d494ebe9femr2305538ljh.21.1712111851000;
        Tue, 02 Apr 2024 19:37:31 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
        by smtp.gmail.com with ESMTPSA id t14-20020a2e9d0e000000b002d6cc01533esm1801932lji.36.2024.04.02.19.37.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 19:37:30 -0700 (PDT)
Date: Wed, 3 Apr 2024 05:37:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marijn Suijten <marijn.suijten@somainline.org>
Cc: Sumit Semwal <sumit.semwal@linaro.org>, 
	Caleb Connolly <caleb.connolly@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, 
	Caleb Connolly <caleb@connolly.tech>
Subject: Re: [PATCH v3 4/4] drm: panel: Add LG sw43408 panel driver
Message-ID: <pair66urg2ecqhob5gzzdtzuyofrmcf6rk7v2akggbotcpv7ld@bxhxftbd4xbn>
References: <20240402-lg-sw43408-panel-v3-0-144f17a11a56@linaro.org>
 <20240402-lg-sw43408-panel-v3-4-144f17a11a56@linaro.org>
 <3hh7nfqflj73422q47p6do7aiormxwspwkfg557epeqn2krtcc@dsufsohfaz4l>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3hh7nfqflj73422q47p6do7aiormxwspwkfg557epeqn2krtcc@dsufsohfaz4l>

On Tue, Apr 02, 2024 at 11:17:52PM +0200, Marijn Suijten wrote:
> On 2024-04-02 02:51:15, Dmitry Baryshkov wrote:
> > From: Sumit Semwal <sumit.semwal@linaro.org>
> > 
> > LG SW43408 is 1080x2160, 4-lane MIPI-DSI panel, used in some Pixel3
> > phones.
> 
> @60Hz?

With the current settings and timings I'm only getting 30 Hz. I have to
double the mode->clock to get 60.

> 
> > 
> > Signed-off-by: Sumit Semwal <sumit.semwal@linaro.org>
> > [vinod: Add DSC support]
> > Signed-off-by: Vinod Koul <vkoul@kernel.org>
> > [caleb: cleanup and support turning off the panel]
> > Signed-off-by: Caleb Connolly <caleb@connolly.tech>
> > [DB: partially rewrote the driver and fixed DSC programming]
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Some small nits but I think this deserves a:
> 
> Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
> 
> > ---
> >  MAINTAINERS                              |   8 +
> >  drivers/gpu/drm/panel/Kconfig            |  11 ++
> >  drivers/gpu/drm/panel/Makefile           |   1 +
> >  drivers/gpu/drm/panel/panel-lg-sw43408.c | 326 +++++++++++++++++++++++++++++++
> >  4 files changed, 346 insertions(+)
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index d36c19c1bf81..4cc43c16e07e 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -6789,6 +6789,14 @@ S:	Maintained
> >  F:	Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> >  F:	drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> >  
> > +DRM DRIVER FOR LG SW43408 PANELS
> > +M:	Sumit Semwal <sumit.semwal@linaro.org>
> > +M:	Caleb Connolly <caleb.connolly@linaro.org>
> > +S:	Maintained
> > +T:	git git://anongit.freedesktop.org/drm/drm-misc
> > +F:	Documentation/devicetree/bindings/display/panel/lg,sw43408.yaml
> > +F:	drivers/gpu/drm/panel/panel-lg-sw43408.c
> > +
> >  DRM DRIVER FOR LOGICVC DISPLAY CONTROLLER
> >  M:	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> >  S:	Supported
> > diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> > index 6dc451f58a3e..a55e9437c8cf 100644
> > --- a/drivers/gpu/drm/panel/Kconfig
> > +++ b/drivers/gpu/drm/panel/Kconfig
> > @@ -335,6 +335,17 @@ config DRM_PANEL_LG_LG4573
> >  	  Say Y here if you want to enable support for LG4573 RGB panel.
> >  	  To compile this driver as a module, choose M here.
> >  
> > +config DRM_PANEL_LG_SW43408
> > +	tristate "LG SW43408 panel"
> > +	depends on OF
> > +	depends on DRM_MIPI_DSI
> > +	depends on BACKLIGHT_CLASS_DEVICE
> > +	help
> > +	  Say Y here if you want to enable support for LG sw43408 panel.
> > +	  The panel has a 1080x2160 resolution and uses
> > +	  24 bit RGB per pixel. It provides a MIPI DSI interface to
> > +	  the host and has a built-in LED backlight.
> > +
> >  config DRM_PANEL_MAGNACHIP_D53E6EA8966
> >  	tristate "Magnachip D53E6EA8966 DSI panel"
> >  	depends on OF && SPI
> > diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> > index 24a02655d726..0b40b010e8e7 100644
> > --- a/drivers/gpu/drm/panel/Makefile
> > +++ b/drivers/gpu/drm/panel/Makefile
> > @@ -34,6 +34,7 @@ obj-$(CONFIG_DRM_PANEL_LEADTEK_LTK050H3146W) += panel-leadtek-ltk050h3146w.o
> >  obj-$(CONFIG_DRM_PANEL_LEADTEK_LTK500HD1829) += panel-leadtek-ltk500hd1829.o
> >  obj-$(CONFIG_DRM_PANEL_LG_LB035Q02) += panel-lg-lb035q02.o
> >  obj-$(CONFIG_DRM_PANEL_LG_LG4573) += panel-lg-lg4573.o
> > +obj-$(CONFIG_DRM_PANEL_LG_SW43408) += panel-lg-sw43408.o
> >  obj-$(CONFIG_DRM_PANEL_MAGNACHIP_D53E6EA8966) += panel-magnachip-d53e6ea8966.o
> >  obj-$(CONFIG_DRM_PANEL_NEC_NL8048HL11) += panel-nec-nl8048hl11.o
> >  obj-$(CONFIG_DRM_PANEL_NEWVISION_NV3051D) += panel-newvision-nv3051d.o
> > diff --git a/drivers/gpu/drm/panel/panel-lg-sw43408.c b/drivers/gpu/drm/panel/panel-lg-sw43408.c
> > new file mode 100644
> > index 000000000000..c7611bfa796b
> > --- /dev/null
> > +++ b/drivers/gpu/drm/panel/panel-lg-sw43408.c
> > @@ -0,0 +1,326 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright (C) 2019-2024 Linaro Ltd
> > + * Author: Sumit Semwal <sumit.semwal@linaro.org>
> > + *	 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > + */
> > +
> > +#include <linux/backlight.h>
> > +#include <linux/delay.h>
> > +#include <linux/gpio/consumer.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/regulator/consumer.h>
> > +
> > +#include <video/mipi_display.h>
> > +
> > +#include <drm/drm_mipi_dsi.h>
> > +#include <drm/drm_panel.h>
> > +#include <drm/drm_probe_helper.h>
> > +#include <drm/display/drm_dsc.h>
> > +#include <drm/display/drm_dsc_helper.h>
> > +
> > +#define NUM_SUPPLIES 2
> > +
> > +struct sw43408_panel {
> > +	struct drm_panel base;
> > +	struct mipi_dsi_device *link;
> > +
> > +	const struct drm_display_mode *mode;
> > +
> > +	struct regulator_bulk_data supplies[NUM_SUPPLIES];
> > +
> > +	struct gpio_desc *reset_gpio;
> > +
> > +	struct drm_dsc_config dsc;
> > +};
> > +
> > +static inline struct sw43408_panel *to_panel_info(struct drm_panel *panel)
> > +{
> > +	return container_of(panel, struct sw43408_panel, base);
> > +}
> > +
> > +static int sw43408_unprepare(struct drm_panel *panel)
> > +{
> > +	struct sw43408_panel *ctx = to_panel_info(panel);
> > +	int ret;
> > +
> > +	ret = mipi_dsi_dcs_set_display_off(ctx->link);
> > +	if (ret < 0)
> > +		dev_err(panel->dev, "set_display_off cmd failed ret = %d\n", ret);
> > +
> > +	ret = mipi_dsi_dcs_enter_sleep_mode(ctx->link);
> > +	if (ret < 0)
> > +		dev_err(panel->dev, "enter_sleep cmd failed ret = %d\n", ret);
> > +
> > +	msleep(100);
> > +
> > +	gpiod_set_value(ctx->reset_gpio, 1);
> > +
> > +	return regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
> > +}
> > +
> > +static int sw43408_program(struct drm_panel *panel)
> > +{
> > +	struct sw43408_panel *ctx = to_panel_info(panel);
> > +	struct drm_dsc_picture_parameter_set pps;
> > +
> > +	mipi_dsi_dcs_write_seq(ctx->link, MIPI_DCS_SET_GAMMA_CURVE, 0x02);
> > +
> > +	mipi_dsi_dcs_set_tear_on(ctx->link, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
> > +
> > +	mipi_dsi_dcs_write_seq(ctx->link, 0x53, 0x0c, 0x30);
> > +	mipi_dsi_dcs_write_seq(ctx->link, 0x55, 0x00, 0x70, 0xdf, 0x00, 0x70, 0xdf);
> > +	mipi_dsi_dcs_write_seq(ctx->link, 0xf7, 0x01, 0x49, 0x0c);
> > +
> > +	mipi_dsi_dcs_exit_sleep_mode(ctx->link);
> > +
> > +	msleep(135);
> > +
> > +	/* COMPRESSION_MODE moved after setting the PPS */
> > +
> > +	mipi_dsi_dcs_write_seq(ctx->link, 0xb0, 0xac);
> > +	mipi_dsi_dcs_write_seq(ctx->link, 0xe5,
> > +			       0x00, 0x3a, 0x00, 0x3a, 0x00, 0x0e, 0x10);
> > +	mipi_dsi_dcs_write_seq(ctx->link, 0xb5,
> > +			       0x75, 0x60, 0x2d, 0x5d, 0x80, 0x00, 0x0a, 0x0b,
> > +			       0x00, 0x05, 0x0b, 0x00, 0x80, 0x0d, 0x0e, 0x40,
> > +			       0x00, 0x0c, 0x00, 0x16, 0x00, 0xb8, 0x00, 0x80,
> > +			       0x0d, 0x0e, 0x40, 0x00, 0x0c, 0x00, 0x16, 0x00,
> > +			       0xb8, 0x00, 0x81, 0x00, 0x03, 0x03, 0x03, 0x01,
> > +			       0x01);
> > +	msleep(85);
> > +	mipi_dsi_dcs_write_seq(ctx->link, 0xcd,
> > +			       0x00, 0x00, 0x00, 0x19, 0x19, 0x19, 0x19, 0x19,
> > +			       0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19,
> > +			       0x16, 0x16);
> > +	mipi_dsi_dcs_write_seq(ctx->link, 0xcb, 0x80, 0x5c, 0x07, 0x03, 0x28);
> > +	mipi_dsi_dcs_write_seq(ctx->link, 0xc0, 0x02, 0x02, 0x0f);
> > +	mipi_dsi_dcs_write_seq(ctx->link, 0x55, 0x04, 0x61, 0xdb, 0x04, 0x70, 0xdb);
> > +	mipi_dsi_dcs_write_seq(ctx->link, 0xb0, 0xca);
> > +
> > +	mipi_dsi_dcs_set_display_on(ctx->link);
> > +
> > +	msleep(50);
> > +
> > +	ctx->link->mode_flags &= ~MIPI_DSI_MODE_LPM;
> > +
> > +	drm_dsc_pps_payload_pack(&pps, ctx->link->dsc);
> > +	mipi_dsi_picture_parameter_set(ctx->link, &pps);
> > +
> > +	/* This panel uses shifted PPS selectors:
> > +	 * 1 if pps_identifier is 0
> > +	 * 2 if pps_identifier is 1
> > +	 */
> > +	mipi_dsi_compression_mode_ext(ctx->link, true,
> > +				      MIPI_DSI_COMPRESSION_DSC, 1);
> 
> Let's be careful to watch the order of parameters here whichever way you fix it
> up in the patch that introduces this function.
> 
> > +
> > +	ctx->link->mode_flags |= MIPI_DSI_MODE_LPM;
> > +
> > +	return 0;
> > +}
> > +
> > +static int sw43408_prepare(struct drm_panel *panel)
> > +{
> > +	struct sw43408_panel *ctx = to_panel_info(panel);
> > +	int ret;
> > +
> > +	ret = regulator_bulk_enable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	usleep_range(5000, 6000);
> > +
> > +	gpiod_set_value(ctx->reset_gpio, 0);
> > +	usleep_range(9000, 10000);
> > +	gpiod_set_value(ctx->reset_gpio, 1);
> > +	usleep_range(1000, 2000);
> > +	gpiod_set_value(ctx->reset_gpio, 0);
> > +	usleep_range(9000, 10000);
> > +
> > +	ret = sw43408_program(panel);
> > +	if (ret)
> > +		goto poweroff;
> > +
> > +	return 0;
> > +
> > +poweroff:
> > +	gpiod_set_value(ctx->reset_gpio, 1);
> > +	regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
> > +	return ret;
> > +}
> > +
> > +static int sw43408_get_modes(struct drm_panel *panel,
> > +			      struct drm_connector *connector)
> > +{
> > +	struct sw43408_panel *ctx = to_panel_info(panel);
> > +
> > +	return drm_connector_helper_get_modes_fixed(connector, ctx->mode);
> > +}
> > +
> > +static int sw43408_backlight_update_status(struct backlight_device *bl)
> > +{
> > +	struct mipi_dsi_device *dsi = bl_get_data(bl);
> > +	uint16_t brightness = backlight_get_brightness(bl);
> > +
> > +	return mipi_dsi_dcs_set_display_brightness_large(dsi, brightness);
> > +}
> > +
> > +const struct backlight_ops sw43408_backlight_ops = {
> > +	.update_status = sw43408_backlight_update_status,
> > +};
> > +
> > +static int sw43408_backlight_init(struct sw43408_panel *ctx)
> > +{
> > +	struct device *dev = &ctx->link->dev;
> > +	const struct backlight_properties props = {
> > +		.type = BACKLIGHT_PLATFORM,
> > +		.brightness = 255,
> > +		.max_brightness = 255,
> > +	};
> > +
> > +	ctx->base.backlight = devm_backlight_device_register(dev, dev_name(dev), dev,
> > +							ctx->link,
> > +							&sw43408_backlight_ops,
> > +							&props);
> > +
> > +	if (IS_ERR(ctx->base.backlight))
> > +		return dev_err_probe(dev, PTR_ERR(ctx->base.backlight),
> > +				     "Failed to create backlight\n");
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct drm_panel_funcs sw43408_funcs = {
> > +	.unprepare = sw43408_unprepare,
> > +	.prepare = sw43408_prepare,
> > +	.get_modes = sw43408_get_modes,
> > +};
> > +
> > +static const struct drm_display_mode sw43408_default_mode = {
> > +	.clock = 152340,
> 
> Since this value is calculated from the values below, I prefer to just show the
> origin of the value:
> 
> 	.clock = (1080 + 20 + 32 + 20) * (2160 + 20 + 4 + 20) * 60 / 1000,

Sure

> 
> > +
> > +	.hdisplay = 1080,
> > +	.hsync_start = 1080 + 20,
> > +	.hsync_end = 1080 + 20 + 32,
> > +	.htotal = 1080 + 20 + 32 + 20,
> > +
> > +	.vdisplay = 2160,
> > +	.vsync_start = 2160 + 20,
> > +	.vsync_end = 2160 + 20 + 4,
> > +	.vtotal = 2160 + 20 + 4 + 20,
> > +
> > +	.width_mm = 62,
> > +	.height_mm = 124,
> > +
> > +	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
> > +};
> > +
> > +static const struct of_device_id sw43408_of_match[] = {
> > +	{ .compatible = "lg,sw43408", .data = &sw43408_default_mode },
> 
> Will you ever use multiple compatibles to select different modes?
> 
> For panels that support multiple modes (e.g. a lot of high-end sony devices
> with their 4k@120Hz screens) I'm still planning on adding an atomic_prepare() to
> drm_bridge and drm_panel to make it possible to program the DSC block and send
> DCS relative to the selected mode (and/or perform a fluent mode switch).

I think this got inherited from the initial implementation by Sumit.
Let's rewrite this too.

> 
> > +	{ /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, sw43408_of_match);
> > +
> > +static int sw43408_add(struct sw43408_panel *ctx)
> > +{
> > +	struct device *dev = &ctx->link->dev;
> > +	int ret;
> > +
> > +	ctx->supplies[0].supply = "vddi"; /* 1.88 V */
> > +	ctx->supplies[0].init_load_uA = 62000;
> > +	ctx->supplies[1].supply = "vpnl"; /* 3.0 V */
> > +	ctx->supplies[1].init_load_uA = 857000;
> > +
> > +	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ctx->supplies),
> > +				      ctx->supplies);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> > +	if (IS_ERR(ctx->reset_gpio)) {
> > +		dev_err(dev, "cannot get reset gpio %ld\n",
> > +			      PTR_ERR(ctx->reset_gpio));
> > +		return PTR_ERR(ctx->reset_gpio);
> > +	}
> > +
> > +	ret = sw43408_backlight_init(ctx);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	ctx->base.prepare_prev_first = true;
> > +
> > +	drm_panel_init(&ctx->base, dev, &sw43408_funcs, DRM_MODE_CONNECTOR_DSI);
> > +
> > +	drm_panel_add(&ctx->base);
> > +	return ret;
> > +}
> > +
> > +static int sw43408_probe(struct mipi_dsi_device *dsi)
> > +{
> > +	struct sw43408_panel *ctx;
> > +	int ret;
> > +
> > +	ctx = devm_kzalloc(&dsi->dev, sizeof(*ctx), GFP_KERNEL);
> > +	if (!ctx)
> > +		return -ENOMEM;
> > +
> > +	ctx->mode = of_device_get_match_data(&dsi->dev);
> > +	dsi->mode_flags = MIPI_DSI_MODE_LPM;
> > +	dsi->format = MIPI_DSI_FMT_RGB888;
> > +	dsi->lanes = 4;
> > +
> > +	ctx->link = dsi;
> > +	mipi_dsi_set_drvdata(dsi, ctx);
> > +
> > +	ret = sw43408_add(ctx);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	/* The panel is DSC panel only, set the dsc params */
> 
> Grammar?
> 
> > +	ctx->dsc.dsc_version_major = 0x1;
> > +	ctx->dsc.dsc_version_minor = 0x1;
> > +
> > +	/* slice_count * slice_width == width */
> > +	ctx->dsc.slice_height = 16;
> > +	ctx->dsc.slice_width = 540;
> > +	ctx->dsc.slice_count = 2;
> > +	ctx->dsc.bits_per_component = 8;
> > +	ctx->dsc.bits_per_pixel = 8 << 4;
> > +	ctx->dsc.block_pred_enable = true;
> > +
> > +	dsi->dsc = &ctx->dsc;
> > +
> > +	return mipi_dsi_attach(dsi);
> > +}
> > +
> > +static void sw43408_remove(struct mipi_dsi_device *dsi)
> > +{
> > +	struct sw43408_panel *ctx = mipi_dsi_get_drvdata(dsi);
> > +	int ret;
> > +
> > +	ret = sw43408_unprepare(&ctx->base);
> > +	if (ret < 0)
> > +		dev_err(&dsi->dev, "failed to unprepare panel: %d\n",
> > +			      ret);
> > +
> > +	ret = mipi_dsi_detach(dsi);
> > +	if (ret < 0)
> > +		dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", ret);
> > +
> > +	drm_panel_remove(&ctx->base);
> > +}
> > +
> > +static struct mipi_dsi_driver sw43408_driver = {
> > +	.driver = {
> > +		.name = "panel-lg-sw43408",
> > +		.of_match_table = sw43408_of_match,
> > +	},
> > +	.probe = sw43408_probe,
> > +	.remove = sw43408_remove,
> > +};
> > +module_mipi_dsi_driver(sw43408_driver);
> > +
> > +MODULE_AUTHOR("Sumit Semwal <sumit.semwal@linaro.org>");
> > +MODULE_DESCRIPTION("LG SW436408 MIPI-DSI LED panel");
> > +MODULE_LICENSE("GPL");
> > 
> > -- 
> > 2.39.2
> > 

-- 
With best wishes
Dmitry

