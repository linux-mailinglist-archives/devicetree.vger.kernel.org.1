Return-Path: <devicetree+bounces-16015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 550887EC806
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 17:00:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 788171C208FC
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 16:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A55E72EAE4;
	Wed, 15 Nov 2023 16:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VuwPto+1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76D1433D3
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:00:29 +0000 (UTC)
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36DE4181
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:00:26 -0800 (PST)
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-da041ffef81so7564126276.0
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:00:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700064025; x=1700668825; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2saDbyHxjODfWF9JCHAE6d3IjsRBAEN9a6Xrszmv96o=;
        b=VuwPto+1rsOQlFMC/9eWNXHp17jqJ2+V0crelLYu48FoOybqox3jvg1KxdqdRMg9mo
         IzGMUjy4BZQ+xB46y4k0x2eSNleh1SXIs09xbSUlhAQzWyoD9wiwVHpmdHgW8dtymNtG
         y2pmNpeZj/FmyF4uE89JTGZWJSzCIZ2AvPS1/a3PD2z4ZI8t8daDZb1vEIbLAWmxgzLT
         WRuCFZMl6A4RmCBEWeFv81G2Be+4q2S2IJEYzh4D+u4ytVyZOcizIrFIRy7KiP4KkW0e
         qguP0YHWfHm+e818XRc56kFBX0LcGCRfItbED4mLZiLpqqvULcE5OlgZ53+ehF8g3QVI
         fZYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700064025; x=1700668825;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2saDbyHxjODfWF9JCHAE6d3IjsRBAEN9a6Xrszmv96o=;
        b=TcOob4kwvt03l2Sci/M+td6S8wcl7PTBUZ+p+PWJVk/MqHDvNFMJ6q5IhO/Gm/ls5J
         ilkq1WWfQzI9iDo4x5bTMQo/JsqrVnsZpMwQQ+ap5DPRYI5KDrew/bYffibatBYlHJwx
         02Xx0eJk9unB6FNlMDEojJaAuIBgW07Y9MTrSevlOQ48wuFKB9cTuraVUYXqJDjsd32l
         6kHF58gs208w7gOUN6aMpTFeZyWgHlcvGSvVGPKSEB+BSEQxXrN8xWQxAGPsJ84oSqHE
         ZO8IfhTKUdjgP1RoYKqSwAU0Q9aUZfnFzRYUSZmzPPvTIED7JJOnrovuTmNW+2Tn1djV
         aCcQ==
X-Gm-Message-State: AOJu0YzMWZB/bXtuO6PDY+hGJkz2PDf9ph+8SNR3p0eJczMtRCh3Y6T1
	71dw7zK10Ac1Vc8Coed2b+IrvYPpCN4Qtnl8f027caBfKe1FU7nAnWs=
X-Google-Smtp-Source: AGHT+IHyGfXxsgIUFA87Us564YGuUM9Tw00Zqw1elNIOhFyDdqqm3I8Kb07cpwpiQ/Ii3UDho21Y4FxAgwRq6Anhyf0=
X-Received: by 2002:a25:db90:0:b0:d7f:1749:9e59 with SMTP id
 g138-20020a25db90000000b00d7f17499e59mr13731329ybf.11.1700064025267; Wed, 15
 Nov 2023 08:00:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
 <20231025103957.3776-6-keith.zhao@starfivetech.com> <6db09f77-31e8-4f2e-a987-e3745d0e8c24@linaro.org>
 <a35be64b-cac2-4033-a846-afc9f2d9a0a9@starfivetech.com> <CAA8EJpokvvycFEp8Ke6wkiFf8KwOmk-SCB4pm6E0U6Qjpj6BMA@mail.gmail.com>
 <b14264a1-cf6a-4a1e-8d19-3df8fc5a10d1@starfivetech.com>
In-Reply-To: <b14264a1-cf6a-4a1e-8d19-3df8fc5a10d1@starfivetech.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 15 Nov 2023 18:00:12 +0200
Message-ID: <CAA8EJprTbYeD5jrs95pbJrSixCJ=FTn0mdNQcFSX7P5PkU4-BA@mail.gmail.com>
Subject: Re: [PATCH v2 5/6] drm/vs: Add KMS crtc&plane
To: Keith Zhao <keith.zhao@starfivetech.com>
Cc: Emil Renner Berthing <kernel@esmil.dk>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, Sumit Semwal <sumit.semwal@linaro.org>, 
	Shengyang Chen <shengyang.chen@starfivetech.com>, 
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Albert Ou <aou@eecs.berkeley.edu>, Maxime Ripard <mripard@kernel.org>, 
	Jagan Teki <jagan@edgeble.ai>, 
	"linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Bjorn Andersson <andersson@kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"christian.koenig@amd.com" <christian.koenig@amd.com>, Jack Zhu <jack.zhu@starfivetech.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Shawn Guo <shawnguo@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 15 Nov 2023 at 15:30, Keith Zhao <keith.zhao@starfivetech.com> wrote:
>
>
>
> On 2023/11/14 18:59, Dmitry Baryshkov wrote:
> > On Tue, 14 Nov 2023 at 12:42, Keith Zhao <keith.zhao@starfivetech.com> wrote:
> >>
> >>
> >>
> >> On 2023/10/26 3:28, Dmitry Baryshkov wrote:
> >> > On 25/10/2023 13:39, Keith Zhao wrote:
> >> >> add 2 crtcs and 8 planes in vs-drm
> >> >>
> >> >> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> >> >> ---
> >> >>   drivers/gpu/drm/verisilicon/Makefile   |    8 +-
> >> >>   drivers/gpu/drm/verisilicon/vs_crtc.c  |  257 ++++
> >> >>   drivers/gpu/drm/verisilicon/vs_crtc.h  |   43 +
> >> >>   drivers/gpu/drm/verisilicon/vs_dc.c    | 1002 ++++++++++++
> >> >>   drivers/gpu/drm/verisilicon/vs_dc.h    |   80 +
> >> >>   drivers/gpu/drm/verisilicon/vs_dc_hw.c | 1959 ++++++++++++++++++++++++
> >> >>   drivers/gpu/drm/verisilicon/vs_dc_hw.h |  492 ++++++
> >> >>   drivers/gpu/drm/verisilicon/vs_drv.c   |    2 +
> >> >>   drivers/gpu/drm/verisilicon/vs_plane.c |  526 +++++++
> >> >>   drivers/gpu/drm/verisilicon/vs_plane.h |   58 +
> >> >>   drivers/gpu/drm/verisilicon/vs_type.h  |   69 +
> >> >>   11 files changed, 4494 insertions(+), 2 deletions(-)
> >> >>   create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.c
> >> >>   create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.h
> >> >>   create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.c
> >> >>   create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.h
> >> >>   create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_hw.c
> >> >>   create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_hw.h
> >> >>   create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.c
> >> >>   create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.h
> >> >>   create mode 100644 drivers/gpu/drm/verisilicon/vs_type.h
> >> >>
> >> >> diff --git a/drivers/gpu/drm/verisilicon/Makefile b/drivers/gpu/drm/verisilicon/Makefile
> >> >> index 7d3be305b..1d48016ca 100644
> >> >> --- a/drivers/gpu/drm/verisilicon/Makefile
> >> >> +++ b/drivers/gpu/drm/verisilicon/Makefile
> >> >> @@ -1,7 +1,11 @@
> >> >>   # SPDX-License-Identifier: GPL-2.0
> >> >>
> >> >> -vs_drm-objs := vs_drv.o \
> >> >> -            vs_modeset.o
> >> >> +vs_drm-objs := vs_dc_hw.o \
> >> >> +            vs_dc.o \
> >> >> +            vs_crtc.o \
> >> >> +            vs_drv.o \
> >> >> +            vs_modeset.o \
> >> >> +            vs_plane.o
> >> >>
> >> >>   obj-$(CONFIG_DRM_VERISILICON) += vs_drm.o
> >> >>
> >> >> diff --git a/drivers/gpu/drm/verisilicon/vs_crtc.c b/drivers/gpu/drm/verisilicon/vs_crtc.c
> >> >> new file mode 100644
> >> >> index 000000000..8a658ea77
> >> >> --- /dev/null
> >> >> +++ b/drivers/gpu/drm/verisilicon/vs_crtc.c
> >> >> @@ -0,0 +1,257 @@
> >> >> +// SPDX-License-Identifier: GPL-2.0
> >> >> +/*
> >> >> + * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
> >> >> + *
> >> >> + */
> >> >> +
> >> >> +#include <linux/clk.h>
> >> >> +#include <linux/debugfs.h>
> >> >> +#include <linux/media-bus-format.h>
> >> >> +
> >> >> +#include <drm/drm_atomic_helper.h>
> >> >> +#include <drm/drm_atomic.h>
> >> >> +#include <drm/drm_crtc.h>
> >> >> +#include <drm/drm_gem_atomic_helper.h>
> >> >> +#include <drm/drm_vblank.h>
> >> >> +#include <drm/vs_drm.h>
> >> >> +
> >> >> +#include "vs_crtc.h"
> >> >> +#include "vs_dc.h"
> >> >> +#include "vs_drv.h"
> >> >> +
> >> >> +static void vs_crtc_reset(struct drm_crtc *crtc)
> >> >> +{
> >> >> +    struct vs_crtc_state *state;
> >> >> +
> >> >> +    if (crtc->state) {
> >> >> +            __drm_atomic_helper_crtc_destroy_state(crtc->state);
> >> >> +
> >> >> +            state = to_vs_crtc_state(crtc->state);
> >> >> +            kfree(state);
> >> >> +            crtc->state = NULL;
> >> >> +    }
> >> >
> >> > You can call your crtc_destroy_state function directly here.
> >> >
> >> >> +
> >> >> +    state = kzalloc(sizeof(*state), GFP_KERNEL);
> >> >> +    if (!state)
> >> >> +            return;
> >> >> +
> >> >> +    __drm_atomic_helper_crtc_reset(crtc, &state->base);
> >> >> +}
> >> >> +
> >> >> +static struct drm_crtc_state *
> >> >> +vs_crtc_atomic_duplicate_state(struct drm_crtc *crtc)
> >> >> +{
> >> >> +    struct vs_crtc_state *ori_state;
> >> >
> >> > It might be a matter of taste, but it is usually old_state.
> >> >
> >> >> +    struct vs_crtc_state *state;
> >> >> +
> >> >> +    if (!crtc->state)
> >> >> +            return NULL;
> >> >> +
> >> >> +    ori_state = to_vs_crtc_state(crtc->state);
> >> >> +    state = kzalloc(sizeof(*state), GFP_KERNEL);
> >> >> +    if (!state)
> >> >> +            return NULL;
> >> >> +
> >> >> +    __drm_atomic_helper_crtc_duplicate_state(crtc, &state->base);
> >> >> +
> >> >> +    state->output_fmt = ori_state->output_fmt;
> >> >> +    state->encoder_type = ori_state->encoder_type;
> >> >> +    state->bpp = ori_state->bpp;
> >> >> +    state->underflow = ori_state->underflow;
> >> >
> >> > Can you use kmemdup instead?
> >> >
> >> >> +
> >> >> +    return &state->base;
> >> >> +}
> >> >> +
> >> >> +static void vs_crtc_atomic_destroy_state(struct drm_crtc *crtc,
> >> >> +                                     struct drm_crtc_state *state)
> >> >> +{
> >> >> +    __drm_atomic_helper_crtc_destroy_state(state);
> >> >> +    kfree(to_vs_crtc_state(state));
> >> >> +}
> >> >> +
> >> >> +static int vs_crtc_enable_vblank(struct drm_crtc *crtc)
> >> >> +{
> >> >> +    struct vs_crtc *vs_crtc = to_vs_crtc(crtc);
> >> >> +    struct vs_dc *dc = dev_get_drvdata(vs_crtc->dev);
> >> >> +
> >> >> +    vs_dc_enable_vblank(dc, true);
> >> >> +
> >> >> +    return 0;
> >> >> +}
> >> >> +
> >> >> +static void vs_crtc_disable_vblank(struct drm_crtc *crtc)
> >> >> +{
> >> >> +    struct vs_crtc *vs_crtc = to_vs_crtc(crtc);
> >> >> +    struct vs_dc *dc = dev_get_drvdata(vs_crtc->dev);
> >> >> +
> >> >> +    vs_dc_enable_vblank(dc, false);
> >> >> +}
> >> >> +
> >> >> +static const struct drm_crtc_funcs vs_crtc_funcs = {
> >> >> +    .set_config             = drm_atomic_helper_set_config,
> >> >> +    .page_flip              = drm_atomic_helper_page_flip,
> >> >
> >> > destroy is required, see drm_mode_config_cleanup()
> >>
> >> hi Dmitry:
> >> if define destroy in drm_crtc_funcs,
> >> it will make __drmm_crtc_init_with_planes unhappy
> >
> > Ack, I missed that you have been using drmm_crtc_init. BTW, I checked
> > your code, you should be able to switch drm
> > drmm_crtc_alloc_with_planes().
> >
> yes
> I done the replace and it can work well.
>
> >>
> >> see:
> >> __printf(6, 0)
> >> static int __drmm_crtc_init_with_planes(struct drm_device *dev,
> >>                                         struct drm_crtc *crtc,
> >>                                         struct drm_plane *primary,
> >>                                         struct drm_plane *cursor,
> >>                                         const struct drm_crtc_funcs *funcs,
> >>                                         const char *name,
> >>                                         va_list args)
> >> {
> >>         int ret;
> >>
> >>         drm_WARN_ON(dev, funcs && funcs->destroy);
> >>
> >> ........
> >> }
> >>
> >> It should not need to be defined here, I think
> >>
> >> >
> >> >> +    .reset                  = vs_crtc_reset,
> >> >> +    .atomic_duplicate_state = vs_crtc_atomic_duplicate_state,
> >> >> +    .atomic_destroy_state   = vs_crtc_atomic_destroy_state,
> >> >
> >> > please consider adding atomic_print_state to output driver-specific bits.
> >> >
> >> >> +    .enable_vblank          = vs_crtc_enable_vblank,
> >> >> +    .disable_vblank         = vs_crtc_disable_vblank,
> >> >> +};
> >> >> +
> >> >> +static u8 cal_pixel_bits(u32 bus_format)
> >> >
> >> > This looks like a generic helper code, which can go to a common place.
> I don't know if I understand correctly
> Here I remove static
> Add 2 lines in vs_drv.h
>
> /* vs_crtc.c */
> u8 cal_pixel_bits(u32 bus_format);
>
> to make it common

I mean, move it to a generic location, like include/media/

>
> >> >
> >> >> +{
> >> >> +    u8 bpp;
> >> >> +
> >> >> +    switch (bus_format) {
> >> >> +    case MEDIA_BUS_FMT_RGB565_1X16:
> >> >> +    case MEDIA_BUS_FMT_UYVY8_1X16:
> >> >> +            bpp = 16;
> >> >> +            break;
> >> >> +    case MEDIA_BUS_FMT_RGB666_1X18:
> >> >> +    case MEDIA_BUS_FMT_RGB666_1X24_CPADHI:
> >> >> +            bpp = 18;
> >> >> +            break;
> >> >> +    case MEDIA_BUS_FMT_UYVY10_1X20:
> >> >> +            bpp = 20;
> >> >> +            break;
> >> >> +    case MEDIA_BUS_FMT_BGR888_1X24:
> >> >> +    case MEDIA_BUS_FMT_UYYVYY8_0_5X24:
> >> >> +    case MEDIA_BUS_FMT_YUV8_1X24:
> >> >> +            bpp = 24;
> >> >> +            break;
> >> >> +    case MEDIA_BUS_FMT_RGB101010_1X30:
> >> >> +    case MEDIA_BUS_FMT_UYYVYY10_0_5X30:
> >> >> +    case MEDIA_BUS_FMT_YUV10_1X30:
> >> >> +            bpp = 30;
> >> >> +            break;
> >> >> +    default:
> >> >> +            bpp = 24;
> >> >> +            break;
> >> >> +    }
> >> >> +
> >> >> +    return bpp;
> >> >> +}
> >> >> +

[skipped]

> >> >> +struct vs_crtc *vs_crtc_create(struct drm_device *drm_dev,
> >> >> +                           struct vs_dc_info *info)
> >> >> +{
> >> >> +    struct vs_crtc *crtc;
> >> >> +    int ret;
> >> >> +
> >> >> +    if (!info)
> >> >> +            return NULL;
> >> >> +
> >> >> +    crtc = drmm_kzalloc(drm_dev, sizeof(*crtc), GFP_KERNEL);
> >> >> +    if (!crtc)
> >> >> +            return NULL;
> >> >> +
> >> >> +    ret = drmm_crtc_init_with_planes(drm_dev, &crtc->base,
> >> >> +                                     NULL, NULL, &vs_crtc_funcs,
> >> >> +                                     info->name ? info->name : NULL);
> >> >
> >> > It might be better to add drmm_crtc_init() helper.
>         drmm_crtc_alloc_with_planes used:
>         ...
>         struct vs_crtc *crtc;
>         int ret;
>
>         if (!info)
>                 return NULL;
>
>         crtc = drmm_crtc_alloc_with_planes(drm_dev, struct vs_crtc, base,
>                                                NULL, NULL,
>                                                &vs_crtc_funcs, info->name ? info->name : NULL);
>         ...

Ack.

>
> >> >
> >> >> +    if (ret)
> >> >> +            return NULL;
> >> >> +
> >> >> +    drm_crtc_helper_add(&crtc->base, &vs_crtc_helper_funcs);
> >> >> +
> >> >> +    if (info->gamma_size) {
> >> >> +            ret = drm_mode_crtc_set_gamma_size(&crtc->base,
> >> >> +                                               info->gamma_size);
> >> >> +            if (ret)
> >> >> +                    return NULL;
> >> >> +
> >> >> +            drm_crtc_enable_color_mgmt(&crtc->base, 0, false,
> >> >> +                                       info->gamma_size);
> >> >> +    }
> >> >> +
> >> >> +    crtc->max_bpc = info->max_bpc;
> >> >> +    crtc->color_formats = info->color_formats;
> >> >> +    return crtc;
> >> >> +}

> >> >> +const struct component_ops dc_component_ops = {
> >> >> +    .bind = dc_bind,
> >> >> +    .unbind = dc_unbind,
> >> >> +};
> >> >> +
> >> >> +static const struct of_device_id dc_driver_dt_match[] = {
> >> >> +    { .compatible = "starfive,jh7110-dc8200", },
> >> >> +    {},
> >> >> +};
> >> >> +MODULE_DEVICE_TABLE(of, dc_driver_dt_match);
> >> >> +
> >> >> +static int dc_probe(struct platform_device *pdev)
> >> >> +{
> >> >> +    struct device *dev = &pdev->dev;
> >> >> +    struct vs_dc *dc;
> >> >> +    int irq, ret, i;
> >> >> +
> >> >> +    dc = devm_kzalloc(dev, sizeof(*dc), GFP_KERNEL);
> >> >> +    if (!dc)
> >> >> +            return -ENOMEM;
> >> >> +
> >> >> +    dc->hw.hi_base = devm_platform_ioremap_resource(pdev, 0);
> >> >> +    if (IS_ERR(dc->hw.hi_base))
> >> >> +            return PTR_ERR(dc->hw.hi_base);
> >> >> +
> >> >> +    dc->hw.reg_base = devm_platform_ioremap_resource(pdev, 1);
> >> >> +    if (IS_ERR(dc->hw.reg_base))
> >> >> +            return PTR_ERR(dc->hw.reg_base);
> >> >> +
> >> >> +    dc->nclks = ARRAY_SIZE(dc->clk_vout);
> >> >> +    for (i = 0; i < dc->nclks; ++i)
> >> >> +            dc->clk_vout[i].id = vout_clocks[i];
> >> >> +    ret = devm_clk_bulk_get(dev, dc->nclks, dc->clk_vout);
> >> >> +    if (ret) {
> >> >> +            dev_err(dev, "Failed to get clk controls\n");
> >> >> +            return ret;
> >> >> +    }
> >> >> +
> >> >> +    dc->nrsts = ARRAY_SIZE(dc->rst_vout);
> >> >> +    for (i = 0; i < dc->nrsts; ++i)
> >> >> +            dc->rst_vout[i].id = vout_resets[i];
> >> >> +    ret = devm_reset_control_bulk_get_shared(dev, dc->nrsts,
> >> >> +                                             dc->rst_vout);
> >> >> +    if (ret) {
> >> >> +            dev_err(dev, "Failed to get reset controls\n");
> >> >> +            return ret;
> >> >> +    }
> >> >> +
> >> >> +    irq = platform_get_irq(pdev, 0);
> >> >> +
> >> >> +    ret = devm_request_irq(dev, irq, dc_isr, 0, dev_name(dev), dc);
> >> >
> >> > Are you ready to handle the IRQ at this point?
> Do you have some good suggestions?
> Are there any hidden dangers in doing so?


If your driver is not ready, stray interrupt can crash your driver.
For pm_runtime-enabled devices it is even more important: the
interrupt handled might try accessing device which is powered off.

> Hope to get good opinions

The usual suggestion is: request the interrupt when your data is fully
set up. Or request_irq with IRQF_NO_AUTOEN and then enable_irq() /
disable_irq() as required.

>
> >> >
> >> >> +    if (ret < 0) {
> >> >> +            dev_err(dev, "Failed to install irq:%u.\n", irq);
> >> >> +            return ret;
> >> >> +    }
> >> >> +
> >> >> +    dev_set_drvdata(dev, dc);
> >> >> +
> >> >> +    return component_add(dev, &dc_component_ops);
> >> >> +}
> >> >> +

[skipped]

> >> >> +static int vs_plane_atomic_get_property(struct drm_plane *plane,
> >> >> +                                    const struct drm_plane_state *state,
> >> >> +                                    struct drm_property *property,
> >> >> +                                    uint64_t *val)
> >> >> +{
> >> >> +    struct vs_plane *vs_plane = to_vs_plane(plane);
> >> >> +    const struct vs_plane_state *vs_plane_state =
> >> >> +            container_of(state, const struct vs_plane_state, base);
> >> >> +
> >> >> +    if (property == vs_plane->degamma_mode)
> >> >> +            *val = vs_plane_state->degamma;
> >> >> +    else if (property == vs_plane->watermark_prop)
> >> >> +            *val = (vs_plane_state->watermark) ?
> >> >> +                                    vs_plane_state->watermark->base.id : 0;
> >> >> +    else if (property == vs_plane->color_mgmt_prop)
> >> >> +            *val = (vs_plane_state->color_mgmt) ?
> >> >> +                                    vs_plane_state->color_mgmt->base.id : 0;
> >> >
> >> > degamma and color management should use standard properties.
>
> hello Dmitry:
> There is a question that troubles me
>
> drm_plane include such standard properties.
> {
>         struct drm_property *alpha_property;
>         struct drm_property *zpos_property;
>         struct drm_property *rotation_property;
>         struct drm_property *blend_mode_property;
>         struct drm_property *color_encoding_property;
>         struct drm_property *color_range_property;
>         struct drm_property *scaling_filter_property;
> }
>
> it doesn't include degamma and color management properties

Which is because they are not standardised yet.

>
> >> >
> >> >> +    else if (property == vs_plane->roi_prop)
> >> >> +            *val = (vs_plane_state->roi) ?
> >> >> +                                    vs_plane_state->roi->base.id : 0;
> >> >> +    else
> >> >> +            return -EINVAL;
> >> >> +
> >> >> +    return 0;
> >> >> +}
> >> >> +
> >> >> +static bool vs_format_mod_supported(struct drm_plane *plane,
> >> >> +                                u32 format,
> >> >> +                                u64 modifier)
> >> >> +{
> >> >> +    int i;
> >> >> +
> >> >> +    /* We always have to allow these modifiers:
> >> >> +     * 1. Core DRM checks for LINEAR support if userspace does not provide modifiers.
> >> >> +     * 2. Not passing any modifiers is the same as explicitly passing INVALID.
> >> >> +     */
> >> >> +    if (modifier == DRM_FORMAT_MOD_LINEAR)
> >> >> +            return true;
> >> >> +
> >> >> +    /* Check that the modifier is on the list of the plane's supported modifiers. */
> >> >> +    for (i = 0; i < plane->modifier_count; i++) {
> >> >> +            if (modifier == plane->modifiers[i])
> >> >> +                    break;
> >> >> +    }
> >> >> +
> >> >> +    if (i == plane->modifier_count)
> >> >> +            return false;
> >> >> +
> >> >> +    return true;
> >> >> +}
> >> >> +
> >> >> +const struct drm_plane_funcs vs_plane_funcs = {
> >> >> +    .update_plane           = drm_atomic_helper_update_plane,
> >> >> +    .disable_plane          = drm_atomic_helper_disable_plane,
> >> >> +    .reset                  = vs_plane_reset,
> >> >> +    .atomic_duplicate_state = vs_plane_atomic_duplicate_state,
> >> >> +    .atomic_destroy_state   = vs_plane_atomic_destroy_state,
> >> >> +    .atomic_set_property    = vs_plane_atomic_set_property,
> >> >> +    .atomic_get_property    = vs_plane_atomic_get_property,
> >> >> +    .format_mod_supported   = vs_format_mod_supported,
> >> >> +};
> >> >> +
> >> >> +static unsigned char vs_get_plane_number(struct drm_framebuffer *fb)
> >> >> +{
> >> >> +    const struct drm_format_info *info;
> >> >> +
> >> >> +    if (!fb)
> >> >> +            return 0;
> >> >> +
> >> >> +    info = drm_format_info(fb->format->format);
> >> >> +    if (!info || info->num_planes > DRM_FORMAT_MAX_PLANES)
> >> >> +            return 0;
> >> >> +
> >> >> +    return info->num_planes;
> >> >> +}
> >> >> +
> >> >> +static int vs_plane_atomic_check(struct drm_plane *plane,
> >> >> +                             struct drm_atomic_state *state)
> >> >> +{
> >> >> +    struct drm_plane_state *new_plane_state = drm_atomic_get_new_plane_state(state,
> >> >> +                                                                             plane);
> >> >> +    unsigned char i, num_planes;
> >> >> +    struct drm_framebuffer *fb = new_plane_state->fb;
> >> >> +    struct drm_crtc *crtc = new_plane_state->crtc;
> >> >> +    struct vs_crtc *vs_crtc = to_vs_crtc(crtc);
> >> >> +    struct vs_dc *dc = dev_get_drvdata(vs_crtc->dev);
> >> >> +    struct vs_plane_state *plane_state = to_vs_plane_state(new_plane_state);
> >> >> +
> >> >> +    if (!crtc || !fb)
> >> >> +            return 0;
> >> >> +
> >> >> +    num_planes = vs_get_plane_number(fb);
> >> >> +
> >> >> +    for (i = 0; i < num_planes; i++) {
> >> >> +            dma_addr_t dma_addr;
> >> >> +
> >> >> +            dma_addr = drm_fb_dma_get_gem_addr(fb, new_plane_state, i);
> >> >> +            plane_state->dma_addr[i] = dma_addr;
> >> >> +    }
> >> >> +
> >> >> +    return vs_dc_check_plane(dc, plane, state);
> >> >> +}
> >> >> +
> >> >> +static int vs_cursor_plane_atomic_check(struct drm_plane *plane,
> >> >> +                                    struct drm_atomic_state *state)
> >> >> +{
> >> >> +    struct drm_plane_state *new_plane_state = drm_atomic_get_new_plane_state(state,
> >> >> +                                                                      plane);
> >> >> +    unsigned char i, num_planes;
> >> >> +    struct drm_framebuffer *fb = new_plane_state->fb;
> >> >> +    struct drm_crtc *crtc = new_plane_state->crtc;
> >> >> +    struct vs_crtc *vs_crtc = to_vs_crtc(crtc);
> >> >> +    struct vs_dc *dc = dev_get_drvdata(vs_crtc->dev);
> >> >> +    struct vs_plane_state *plane_state = to_vs_plane_state(new_plane_state);
> >> >> +
> >> >> +    if (!crtc || !fb)
> >> >> +            return 0;
> >> >> +
> >> >> +    num_planes = vs_get_plane_number(fb);
> >> >> +
> >> >> +    for (i = 0; i < num_planes; i++) {
> >> >> +            dma_addr_t dma_addr;
> >> >> +
> >> >> +            dma_addr = drm_fb_dma_get_gem_addr(fb, new_plane_state, i);
> >> >> +            plane_state->dma_addr[i] = dma_addr;
> >> >> +    }
> >> >> +
> >> >> +    return vs_dc_check_cursor_plane(dc, plane, state);
> >> >> +}
> >> >> +
> >> >> +static void vs_plane_atomic_update(struct drm_plane *plane,
> >> >> +                               struct drm_atomic_state *state)
> >> >> +{
> >> >> +    struct drm_plane_state *new_state = drm_atomic_get_new_plane_state(state,
> >> >> +                                                                      plane);
> >> >
> >> > New line after the equal sign will be better.
> >> >
> >> >> +    struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
> >> >> +                                                                      plane);
> >> >> +
> >> >> +    unsigned char i, num_planes;
> >> >> +    struct drm_framebuffer *fb;
> >> >> +    struct vs_plane *vs_plane = to_vs_plane(plane);
> >> >> +    struct vs_crtc *vs_crtc = to_vs_crtc(new_state->crtc);
> >> >> +    struct vs_plane_state *plane_state = to_vs_plane_state(new_state);
> >> >> +    struct vs_dc *dc = dev_get_drvdata(vs_crtc->dev);
> >> >> +
> >> >> +    if (!new_state->fb || !new_state->crtc)
> >> >> +            return;
> >> >
> >> > if (!new_state->visible) ?
>
> no matter what value it is ? the driver will handle it
> in func
>
> static void update_fb(struct vs_plane *plane, u8 display_id,
>                       struct dc_hw_fb *fb, struct drm_plane_state *state)
> {
>         struct vs_plane_state *plane_state = to_vs_plane_state(state);
>         struct drm_framebuffer *drm_fb = state->fb;
>         struct drm_rect *src = &state->src;
>
> .......
>         fb->enable = state->visible;
> .......
> }
>
> so no need add "if (!new_state->visible)" i think

I mean instead of fb&&crtc check. Otherwise you are duplicating checks
in drm_atomic_helper_check_plane_state(). And with the pixel_source
being on their way this condition becomes legacy.

>
> >> >
> >> >> +
> >> >> +    fb = new_state->fb;
> >> >> +
> >> >> +    drm_fb_dma_sync_non_coherent(fb->dev, old_state, new_state);
> >> >> +
> >> >> +    num_planes = vs_get_plane_number(fb);
> >> >> +
> >> >> +    for (i = 0; i < num_planes; i++) {
> >> >> +            dma_addr_t dma_addr;
> >> >> +
> >> >> +            dma_addr = drm_fb_dma_get_gem_addr(fb, new_state, i);
> >> >> +            plane_state->dma_addr[i] = dma_addr;
> >> >> +    }
> >> >> +
> >> >> +    plane_state->status.src = drm_plane_state_src(new_state);
> >> >> +    plane_state->status.dest = drm_plane_state_dest(new_state);
> >> >> +
> >> >> +    vs_dc_update_plane(dc, vs_plane, plane, state);
> >> >> +}
> >> >> +


-- 
With best wishes
Dmitry

