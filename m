Return-Path: <devicetree+bounces-21843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B2180559E
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 14:14:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E4DBD1F20E38
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 13:14:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0F525C913;
	Tue,  5 Dec 2023 13:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v5loOkE0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AB5FD4B
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 05:14:30 -0800 (PST)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-5d8e816f77eso20031937b3.0
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 05:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701782069; x=1702386869; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RP6DoGJILfqmy1XRBZpJUGL68RBYKtscZDmXA9WTIyQ=;
        b=v5loOkE0uN7F/gZGGVUqgv+yppnaNdKFzeNP2VXzba9TygENtiiRalniusrrE82f5b
         f2rB8lGsWhE7sLlHlPS4WpReDpAoNOg+UYcR5v+cd46Y+qqu8LPlz/clKunazx8sGTXk
         bppzeY8RR8mrPi4yF4xjl4SFls7yQivdA9fmdXsVDKBBOIRfyVbi5ILAVFe8qFAmXKwx
         85VNQNcHKBeu/kXZFhEJpCbIWoUC7r9r3UDMKkbgPHJV43x6R9zf6zjvqG1swhOEY5BB
         W613q8y54vkrlz5sMHRSp1aCpWFZFVeOCalNEKYadx6LoImZ11UwxhLRCZXFD7shoLc7
         z4rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701782069; x=1702386869;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RP6DoGJILfqmy1XRBZpJUGL68RBYKtscZDmXA9WTIyQ=;
        b=AuMZUURTqo4+eO3xSVShKJsUDKUoOfRfg3MZB6gI4qTGzEfly9z8RthVo3RuiMJ2mb
         psQM1EWyzJYsb2vG5o3j2CjS9OOFJHomCJhkN+Ik1E0Vt3AHE3x+EpuobG+SY6/tZLAo
         UhafBYEc1WMUQrZyEyNjK7H5PARHuHZYcEUcsykrsUpx+KwrkJVKv7hrRfprHrC/FE6c
         EFMUGjNUzPPqBppeJBWVOBLfM6KqzwmEUCHx6TiO0jS9rUYNhLklGJpej8HBgDfRalBx
         kIbKBM4LJeXa50nPlYQxBOZsN1JC7o10r6z9TtpkEc/5uHKG3KiPkT88zxvpiGakUOS8
         SDSg==
X-Gm-Message-State: AOJu0Yzi2m4EisH/FZMY+WMWT0LTi63GcjRTySAWGNpn+nmEsAzjoN11
	HElStmr/6AMRBp9SvQCY72U2JVaVynkEW77x/YJZTQ==
X-Google-Smtp-Source: AGHT+IHbSJqNsFEXveuMibmZBNRZsuf+9DC72phNshumYLwBucPL5ttq33PeU+/+iNM375ASYoUA54K2ADr/+cMlMyI=
X-Received: by 2002:a81:f011:0:b0:5d7:1940:b39d with SMTP id
 p17-20020a81f011000000b005d71940b39dmr4692636ywm.105.1701782069416; Tue, 05
 Dec 2023 05:14:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231204123315.28456-1-keith.zhao@starfivetech.com> <20231204123315.28456-7-keith.zhao@starfivetech.com>
In-Reply-To: <20231204123315.28456-7-keith.zhao@starfivetech.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 5 Dec 2023 15:14:18 +0200
Message-ID: <CAA8EJpqbQKjTeEdOpwNy7P+dJK-nnZzZYefyzoG+JWKVgsS=rw@mail.gmail.com>
Subject: Re: [v3 6/6] drm/vs: simple encoder
To: Keith Zhao <keith.zhao@starfivetech.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	aou@eecs.berkeley.edu, suijingfeng@loongson.cn, tzimmermann@suse.de, 
	paul.walmsley@sifive.com, mripard@kernel.org, xingyu.wu@starfivetech.com, 
	jack.zhu@starfivetech.com, palmer@dabbelt.com, 
	krzysztof.kozlowski+dt@linaro.org, william.qiu@starfivetech.com, 
	shengyang.chen@starfivetech.com, changhuang.liang@starfivetech.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 4 Dec 2023 at 14:33, Keith Zhao <keith.zhao@starfivetech.com> wrote:
>
> add simple encoder for dsi bridge

This doesn't look like a proper commit message.

>
> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> ---
>  drivers/gpu/drm/verisilicon/Makefile        |   4 +-
>  drivers/gpu/drm/verisilicon/vs_drv.c        |   2 +
>  drivers/gpu/drm/verisilicon/vs_simple_enc.c | 195 ++++++++++++++++++++
>  drivers/gpu/drm/verisilicon/vs_simple_enc.h |  23 +++
>  4 files changed, 223 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_simple_enc.c
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_simple_enc.h
>
> diff --git a/drivers/gpu/drm/verisilicon/Makefile b/drivers/gpu/drm/verisilicon/Makefile
> index 71fadafcee13..cd5d0a90bcfe 100644
> --- a/drivers/gpu/drm/verisilicon/Makefile
> +++ b/drivers/gpu/drm/verisilicon/Makefile
> @@ -5,6 +5,8 @@ vs_drm-objs := vs_dc_hw.o \
>                 vs_crtc.o \
>                 vs_drv.o \
>                 vs_modeset.o \
> -               vs_plane.o
> +               vs_plane.o \
> +               vs_simple_enc.o
> +
>  vs_drm-$(CONFIG_DRM_VERISILICON_STARFIVE_HDMI) += starfive_hdmi.o
>  obj-$(CONFIG_DRM_VERISILICON) += vs_drm.o
> diff --git a/drivers/gpu/drm/verisilicon/vs_drv.c b/drivers/gpu/drm/verisilicon/vs_drv.c
> index d7e5199fe293..946f137ab124 100644
> --- a/drivers/gpu/drm/verisilicon/vs_drv.c
> +++ b/drivers/gpu/drm/verisilicon/vs_drv.c
> @@ -23,6 +23,7 @@
>  #include "vs_drv.h"
>  #include "vs_modeset.h"
>  #include "vs_dc.h"
> +#include "vs_simple_enc.h"
>
>  #define DRV_NAME       "verisilicon"
>  #define DRV_DESC       "Verisilicon DRM driver"
> @@ -217,6 +218,7 @@ static struct platform_driver *drm_sub_drivers[] = {
>  #ifdef CONFIG_DRM_VERISILICON_STARFIVE_HDMI
>         &starfive_hdmi_driver,
>  #endif
> +       &simple_encoder_driver,
>  };
>
>  static struct component_match *vs_drm_match_add(struct device *dev)
> diff --git a/drivers/gpu/drm/verisilicon/vs_simple_enc.c b/drivers/gpu/drm/verisilicon/vs_simple_enc.c
> new file mode 100644
> index 000000000000..c5a8d82bc469
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/vs_simple_enc.c
> @@ -0,0 +1,195 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2020 VeriSilicon Holdings Co., Ltd.
> + */
> +#include <linux/component.h>
> +#include <linux/of_device.h>
> +#include <linux/module.h>
> +
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_bridge.h>
> +#include <drm/drm_crtc_helper.h>
> +#include <drm/drm_of.h>
> +#include <linux/regmap.h>
> +#include <linux/media-bus-format.h>
> +#include <linux/mfd/syscon.h>
> +
> +#include "vs_crtc.h"
> +#include "vs_simple_enc.h"
> +
> +static const struct simple_encoder_priv dsi_priv = {

Please use proper prefix for all the struct and function names.
vs_simple_encoder sounds better. Or vs_dsi_encoder.

> +       .encoder_type = DRM_MODE_ENCODER_DSI
> +};
> +
> +static inline struct simple_encoder *to_simple_encoder(struct drm_encoder *enc)
> +{
> +       return container_of(enc, struct simple_encoder, encoder);
> +}
> +
> +static int encoder_parse_dt(struct device *dev)
> +{
> +       struct simple_encoder *simple = dev_get_drvdata(dev);
> +       unsigned int args[2];
> +
> +       simple->dss_regmap = syscon_regmap_lookup_by_phandle_args(dev->of_node,
> +                                                                 "starfive,syscon",
> +                                                                 2, args);
> +
> +       if (IS_ERR(simple->dss_regmap)) {
> +               return dev_err_probe(dev, PTR_ERR(simple->dss_regmap),
> +                                    "getting the regmap failed\n");
> +       }
> +
> +       simple->offset = args[0];
> +       simple->mask = args[1];
> +
> +       return 0;
> +}
> +
> +void encoder_atomic_enable(struct drm_encoder *encoder,
> +                          struct drm_atomic_state *state)
> +{
> +       struct simple_encoder *simple = to_simple_encoder(encoder);
> +
> +       regmap_update_bits(simple->dss_regmap, simple->offset, simple->mask,
> +                          simple->mask);
> +}
> +
> +int encoder_atomic_check(struct drm_encoder *encoder,
> +                        struct drm_crtc_state *crtc_state,
> +                        struct drm_connector_state *conn_state)
> +{
> +       struct vs_crtc_state *vs_crtc_state = to_vs_crtc_state(crtc_state);
> +       struct drm_connector *connector = conn_state->connector;
> +       int ret = 0;
> +
> +       struct drm_bridge *first_bridge = drm_bridge_chain_get_first_bridge(encoder);
> +       struct drm_bridge_state *bridge_state = ERR_PTR(-EINVAL);
> +
> +       vs_crtc_state->encoder_type = encoder->encoder_type;
> +
> +       if (first_bridge && first_bridge->funcs->atomic_duplicate_state)
> +               bridge_state = drm_atomic_get_bridge_state(crtc_state->state, first_bridge);

Please don't poke into others' playground. This should go into your
DSI bridge's atomic_check() instead.

> +
> +       if (IS_ERR(bridge_state)) {
> +               if (connector->display_info.num_bus_formats)
> +                       vs_crtc_state->output_fmt = connector->display_info.bus_formats[0];
> +               else
> +                       vs_crtc_state->output_fmt = MEDIA_BUS_FMT_FIXED;
> +       } else {
> +               vs_crtc_state->output_fmt = bridge_state->input_bus_cfg.format;
> +       }
> +
> +       switch (vs_crtc_state->output_fmt) {
> +       case MEDIA_BUS_FMT_FIXED:
> +       case MEDIA_BUS_FMT_RGB565_1X16:
> +       case MEDIA_BUS_FMT_RGB666_1X18:
> +       case MEDIA_BUS_FMT_RGB888_1X24:
> +       case MEDIA_BUS_FMT_RGB666_1X24_CPADHI:
> +       case MEDIA_BUS_FMT_RGB101010_1X30:
> +       case MEDIA_BUS_FMT_UYYVYY8_0_5X24:
> +       case MEDIA_BUS_FMT_UYVY8_1X16:
> +       case MEDIA_BUS_FMT_YUV8_1X24:
> +       case MEDIA_BUS_FMT_UYYVYY10_0_5X30:
> +       case MEDIA_BUS_FMT_UYVY10_1X20:
> +       case MEDIA_BUS_FMT_YUV10_1X30:
> +               ret = 0;
> +               break;
> +       default:
> +               ret = -EINVAL;
> +               break;
> +       }
> +
> +       /* If MEDIA_BUS_FMT_FIXED, set it to default value */
> +       if (vs_crtc_state->output_fmt == MEDIA_BUS_FMT_FIXED)
> +               vs_crtc_state->output_fmt = MEDIA_BUS_FMT_RGB888_1X24;
> +
> +       return ret;
> +}
> +
> +static const struct drm_encoder_helper_funcs encoder_helper_funcs = {
> +       .atomic_check = encoder_atomic_check,
> +       .atomic_enable = encoder_atomic_enable,
> +};
> +
> +static int encoder_bind(struct device *dev, struct device *master, void *data)
> +{
> +       struct drm_device *drm_dev = data;
> +       struct simple_encoder *simple = dev_get_drvdata(dev);
> +       struct drm_encoder *encoder;
> +       struct drm_bridge *bridge;
> +       int ret;
> +
> +       encoder = &simple->encoder;
> +
> +       ret = drmm_encoder_init(drm_dev, encoder, NULL, simple->priv->encoder_type, NULL);
> +       if (ret)
> +               return ret;
> +
> +       drm_encoder_helper_add(encoder, &encoder_helper_funcs);
> +
> +       encoder->possible_crtcs =
> +                       drm_of_find_possible_crtcs(drm_dev, dev->of_node);
> +
> +       /* output port is port1*/
> +       bridge = devm_drm_of_get_bridge(dev, dev->of_node, 1, 0);
> +       if (IS_ERR(bridge))
> +               return 0;
> +
> +       return drm_bridge_attach(encoder, bridge, NULL, 0);
> +}
> +
> +static const struct component_ops encoder_component_ops = {
> +       .bind = encoder_bind,
> +};
> +
> +static const struct of_device_id simple_encoder_dt_match[] = {
> +       { .compatible = "starfive,dsi-encoder", .data = &dsi_priv},
> +       {},
> +};
> +MODULE_DEVICE_TABLE(of, simple_encoder_dt_match);
> +
> +static int encoder_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct simple_encoder *simple;
> +       int ret;
> +
> +       simple = devm_kzalloc(dev, sizeof(*simple), GFP_KERNEL);
> +       if (!simple)
> +               return -ENOMEM;
> +
> +       simple->priv = of_device_get_match_data(dev);
> +
> +       simple->dev = dev;
> +
> +       dev_set_drvdata(dev, simple);
> +
> +       ret = encoder_parse_dt(dev);
> +       if (ret)
> +               return ret;
> +
> +       return component_add(dev, &encoder_component_ops);
> +}
> +
> +static int encoder_remove(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +
> +       component_del(dev, &encoder_component_ops);
> +       dev_set_drvdata(dev, NULL);
> +
> +       return 0;
> +}
> +
> +struct platform_driver simple_encoder_driver = {
> +       .probe = encoder_probe,
> +       .remove = encoder_remove,
> +       .driver = {
> +               .name = "vs-simple-encoder",
> +               .of_match_table = of_match_ptr(simple_encoder_dt_match),
> +       },
> +};
> +
> +MODULE_DESCRIPTION("Simple Encoder Driver");
> +MODULE_LICENSE("GPL");
> diff --git a/drivers/gpu/drm/verisilicon/vs_simple_enc.h b/drivers/gpu/drm/verisilicon/vs_simple_enc.h
> new file mode 100644
> index 000000000000..fb33ca9e18d6
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/vs_simple_enc.h
> @@ -0,0 +1,23 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2022 VeriSilicon Holdings Co., Ltd.
> + */
> +
> +#ifndef __VS_SIMPLE_ENC_H_
> +#define __VS_SIMPLE_ENC_H_
> +
> +struct simple_encoder_priv {
> +       unsigned char encoder_type;
> +};
> +
> +struct simple_encoder {
> +       struct drm_encoder encoder;
> +       struct device *dev;
> +       const struct simple_encoder_priv *priv;
> +       struct regmap *dss_regmap;
> +       unsigned int offset;
> +       unsigned int mask;
> +};
> +
> +extern struct platform_driver simple_encoder_driver;
> +#endif /* __VS_SIMPLE_ENC_H_ */
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

